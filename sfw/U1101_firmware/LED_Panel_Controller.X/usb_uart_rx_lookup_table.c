
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include <math.h>

#include "usb_uart_rx_lookup_table.h"
#include "usb_uart.h"
#include "uthash.h"

#include "main.h"
#include "terminal_control.h"
#include "device_control.h"
#include "cause_of_reset.h"
#include "prefetch.h"
#include "error_handler.h"
#include "heartbeat_services.h"
#include "pin_macros.h"
#include "telemetry.h"
#include "adc.h"
#include "adc_channels.h"
#include "misc_i2c_devices.h"
#include "pgood_monitor.h"
#include "rtcc.h"
#include "spi_flash.h"
#include "image_management.h"

#include "panel_control.h"

usb_uart_command_function_t helpCommandFunction(char * input_str) {

    terminalTextAttributesReset();
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Supported Commands:\n\r");
    
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // iterate over usb_uart_commands hash table and print the name of all commands and their help messages
    usb_uart_command_t  *current_command, *temp;
    HASH_ITER(hh, usb_uart_commands, current_command, temp) {
            
        printf("    %s: %s\r\n", current_command->command_name, current_command->command_help_message);
        
    }
    
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\r\nHelp messages and neutral responses appear in yellow\n\r");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("System parameters and affirmative responses appear in green\n\r");
    terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Measurement responses appear in cyan\n\r");
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Urgent/interrupt messages appear in magenta\n\r");
    terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Errors and negative responses appear in red\n\r");
    terminalTextAttributesReset();
    printf("User input appears in white\n\r");
         
    
}

usb_uart_command_function_t resetCommand(char * input_str) {
 
    deviceReset();
    
}

usb_uart_command_function_t clearCommand(char * input_str) {

    terminalClearScreen();
    terminalSetCursorHome();
    
}

usb_uart_command_function_t idnCommand(char * input_str) {
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("%s by Drew Maatman, %s, FW version %s\r\n", 
            PROJECT_NAME_STR, 
            PROJECT_DATE_STR, 
            FIRMWARE_VERSION_STR);
    terminalTextAttributesReset();
}

usb_uart_command_function_t repositoryCommand(char * input_str) {
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Project Git repository is hosted at: https://github.com/drewsum/LED_Panel_Controller\r\n");
    terminalTextAttributesReset();    
}

usb_uart_command_function_t hostStatusCommand(char * input_str) {

    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Host Firmware Version: %s\r\n", FIRMWARE_VERSION_STR);
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Host Device IDs:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // Print serial number
    printf("    PIC32MZ Serial Number retrieved from Flash: %s\n\r",
                getStringSerialNumber());
        
    // Print device ID
    printf("    Device ID retrieved from Flash: %s (0x%X)\n\r", 
        getDeviceIDString(getDeviceID()), 
        getDeviceID());

        // Print revision ID
    printf("    Revision ID retrieved from Flash: %s (0x%X)\n\r", 
        getRevisionIDString(getRevisionID()), 
        getRevisionID());

    terminalTextAttributesReset();
    
    printWatchdogStatus();
    printDeadmanStatus();
    printPrefetchStatus();

    // Print cause of reset
    if (    reset_cause == Undefined ||
            reset_cause == Primary_Config_Registers_Error ||
            reset_cause == Primary_Secondary_Config_Registers_Error ||
            reset_cause == Config_Mismatch ||
            reset_cause == DMT_Reset ||
            reset_cause == WDT_Reset ||
            reset_cause == Software_Reset ||
            reset_cause == External_Reset ||
            reset_cause == BOR_Reset) {
    
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        
    }
    
    printf("Cause of most recent device reset: %s\r\n", getResetCauseString(reset_cause));
    terminalTextAttributesReset();

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Up time since last device reset: %s\n\r",
            getStringSecondsAsTime(device_on_time_counter));
    terminalTextAttributesReset();

}

usb_uart_command_function_t peripheralStatusCommand(char * input_str) {
 
    // Snipe out received arguments
    char rx_peripheral_name[32];
    sscanf(input_str, "Peripheral Status? %[^\t\n\r]", rx_peripheral_name);

    // Determine the rail we're enabling or disabling
    if (strcmp(rx_peripheral_name, "Interrupts") == 0) {
        printInterruptStatus();
    }
    else if (strcmp(rx_peripheral_name, "Clocks") == 0) {
        printClockStatus(SYSCLK_INT);
    }
    else if (strcmp(rx_peripheral_name, "PMD") == 0) {
        printPMDStatus();
    }
    else if (strcmp(rx_peripheral_name, "WDT") == 0) {
        printWatchdogStatus();
    }
    else if (strcmp(rx_peripheral_name, "DMT") == 0) {
        printDeadmanStatus();
    }
    else if (strcmp(rx_peripheral_name, "Prefetch") == 0) {
       printPrefetchStatus();
    }
    else if (strcmp(rx_peripheral_name, "DMA") == 0) {
        printDMAStatus();
    }
    else if (strcmp(rx_peripheral_name, "ADC Channels") == 0) {
        printADCChannelStatus();
    }
    else if (strcmp(rx_peripheral_name, "ADC") == 0) {
        printADCStatus();
    }
    else if (strcmp(rx_peripheral_name, "RTCC") == 0) {
        printRTCCStatus();
    }
    else if (strcmp(rx_peripheral_name, "I2C Master") == 0) {    
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("I2C Bus Master Controller Status:\r\n");
        printI2CMasterStatus();
    }
    else if (strcomp(rx_peripheral_name, "Timer ") == 0) {
        uint32_t read_timer_number;
        sscanf(rx_peripheral_name, "Timer %u", &read_timer_number);
        if (read_timer_number < 1 || read_timer_number > 9) {
            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Please enter a timer number between 1 and 9, user entered %u\r\n", read_timer_number);
            terminalTextAttributesReset();
        }
        else {
            printTimerStatus((uint8_t) read_timer_number);
        }
    }
    else if (strcmp(rx_peripheral_name, "PMP") == 0) {
        printPMPStatus();
    }
    else if (strcmp(rx_peripheral_name, "SPI Flash") == 0) {
        printSPIFlashStatus();
    }
    else {
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a peripheral to view status. Received %s as peripheral name\r\n", rx_peripheral_name);
        printf("Peripherals that can be monitored include:\r\n"
                "   Interrupts\r\n"
                "   Clocks\r\n"
                "   PMD\r\n"
                "   WDT\r\n"
                "   DMT\r\n"
                "   ADC\r\n"
                "   ADC Channels\r\n"
                "   Prefetch\r\n"
                "   DMA\r\n"
                "   I2C Master\r\n"
                "   RTCC\r\n"
                "   PMP\r\n"
                "   SPI Flash\r\n"
                "   Timer <x> (x = 1-9)\r\n");
        terminalTextAttributesReset();
        return;
    }

}

usb_uart_command_function_t errorStatusCommand(char * input_str) {
 
    // Print error handler status
    printErrorHandlerStatus();

    // Print help message
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\rCall 'Clear Errors' command to clear any errors that have been set\n\r");
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t clearErrorsCommand(char * input_str) {
 
    // Zero out all error handler flags
    clearErrorHandler();

    // Update error LEDs based on error handler status
    update_error_leds_flag = 1;

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Error Handler flags cleared\n\r");
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t platformStatusCommand(char * input_str) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Platform Revision: %s\r\n", PLATFORM_REVISION_STR);
    
    printPGOODStatus();

    if (nETC_CONFIG_PIN == LOW) {
        double tof_temp = platformGetETC();
        uint32_t tof_temp_int = (uint32_t) floor(tof_temp);
        uint32_t power_cycle_temp = platformGetPowerCycles();

        // first print stuff for logic board
        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
         terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("\r\nPlatform Elapsed Time Data:\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        printf("    Platform Elapsed Time is %s\r\n", getStringSecondsAsTime(tof_temp_int));
        printf("    Platform has power cycled %u times\r\n", power_cycle_temp);

    }
    
    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("\r\nI2C Bus Slave Device Status:\r\n");
    terminalTextAttributesReset();
    if (nTELEMETRY_CONFIG_PIN == LOW) {
        printTemperatureSensorStatus();
        printPowerMonitorStatus();
    }

    miscI2CDevicesPrintStatus();
    
}

usb_uart_command_function_t liveTelemetryCommand(char * input_str) {
 
    terminalTextAttributesReset();
    
    if (live_telemetry_enable == 0) {
        terminalClearScreen();
        terminalSetCursorHome();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Enabling Live Telemetry\n\r");
        live_telemetry_enable = 1;
        // Disable pushbuttons
    }
    else {
        terminalClearScreen();
        terminalSetCursorHome();
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Disabling Live Telemetry\n\r");
        live_telemetry_enable = 0;
    }
    
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t timeAndDateCommand(char * input_str) {
 
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Current system time and date:\r\n   ");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printTimeAndDate();
    terminalTextAttributesReset();
    
}

usb_uart_command_function_t setRTCCCommand(char * input_str) {

    // Snipe out received arguments
    char rtcc_args[64];
    sscanf(input_str, "Set RTCC: %[^\t\n\r]", rtcc_args);
    
    // only do these things if we actually have arguments for this command
    if (rtcc_args[0]) {

        if(strcomp(rtcc_args, "Date: ") == 0) {

            // Snipe out received string
            uint32_t read_month, read_day, read_year;
            sscanf(rtcc_args, "Date: %02u/%02u/%04u", &read_month, &read_day, &read_year);

            // Write received data into RTCC
            if (read_year >= 2000) {

                rtccWriteDate((uint8_t) read_month, (uint8_t) read_day, (uint16_t) read_year);

                // print out what we just did
                terminalTextAttributesReset();
                terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Set RTCC date as %02u/%02u/%04u\r\n", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year);
                terminalTextAttributesReset();

            }

            // return error if year < 2000
            else {

                terminalTextAttributesReset();
                terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Enter a valid date after 01/01/2000. User entered %02u/%02u/%04u\r\n", read_month, read_day, read_year);
                terminalTextAttributesReset();

            }

        }

        else if(strcomp(rtcc_args, "Time: ") == 0) {

            // Snipe out received string
            uint32_t read_hour, read_minute, read_second;
            sscanf(rtcc_args, "Time: %02u:%02u:%02u", &read_hour, &read_minute, &read_second);

            if (read_hour < 24 && read_minute < 60 && read_second < 60) {
                rtccWriteTime((uint8_t) read_hour, (uint8_t) read_minute, (uint8_t) read_second);
            }
            
            // print out what we just did
            terminalTextAttributesReset();
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Set RTCC time as %02u:%02u:%02u\r\n", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
            terminalTextAttributesReset();

        }

        else if (strcomp(rtcc_args, "Weekday: ") == 0) {

            char read_weekday[16];
            uint8_t read_weekday_enum;
            sscanf(rtcc_args, "Weekday: %s", &read_weekday);

            if (strcmp(read_weekday, "Sunday") == 0) read_weekday_enum = 0;
            else if (strcmp(read_weekday, "Monday") == 0) read_weekday_enum = 1;
            else if (strcmp(read_weekday, "Tuesday") == 0) read_weekday_enum = 2;
            else if (strcmp(read_weekday, "Wednesday") == 0) read_weekday_enum = 3;
            else if (strcmp(read_weekday, "Thursday") == 0) read_weekday_enum = 4;
            else if (strcmp(read_weekday, "Friday") == 0) read_weekday_enum = 5;
            else if (strcmp(read_weekday, "Saturday") == 0) read_weekday_enum = 6;
            else read_weekday_enum = 255;

            if (read_weekday_enum != 255) {

                // print out what we just did
                terminalTextAttributesReset();
                terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
                rtccWriteWeekday(read_weekday_enum);
                printf("Set RTCC weekday as %s\r\n", getDayOfWeek(rtcc_shadow.weekday));
                terminalTextAttributesReset();

            }

            else {

                terminalTextAttributesReset();
                terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Please enter a valid day of the weekday. Input is case sensitive, user entered %s\r\n", read_weekday);
                terminalTextAttributesReset();

            }

        }

        else if (strcomp(rtcc_args, "Unix Time: ") == 0) {

            // Snipe out received string
            uint32_t read_unix_time, read_offset;
            sscanf(rtcc_args, "Unix Time: %lu, %d", &read_unix_time, &read_offset);

            // remove timezone from unix time (this converts from UTC to local time)
            read_offset *= 3600;                // convert from hours to seconds
            read_unix_time += read_offset;      // add or remove these seconds to read unix time

            // write unix time into RTCC
            rtccWriteUnixTime(read_unix_time);

            // print out what we just did
            terminalTextAttributesReset();
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Set RTCC time as %02u:%02u:%02u\r\n", rtcc_shadow.hours, rtcc_shadow.minutes, rtcc_shadow.seconds);
            printf("Set RTCC date as %02u/%02u/%04u\r\n", rtcc_shadow.month, rtcc_shadow.day, rtcc_shadow.year);
            printf("Set RTCC weekday as %s\r\n", getDayOfWeek(rtcc_shadow.weekday));
            terminalTextAttributesReset();

        }

        else {
     
            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Please enter an RTCC parameter to set, as well as what that parameter should be set to\r\n");
            printf("Available parameters are:\r\n");
            printf("    Date: <mm>/<dd>/<yyyy>: Sets the RTCC date \r\n");
            printf("    Time: <hh>:<mm>:<ss>: Sets the RTCC time. (Must be 24 hr time)\r\n");
            printf("    Weekday: <weekday>: Sets the RTCC weekday\r\n");
            printf("    Unix Time: <decimal unix time>, <hour offset from UTC to local time>: sets the RTCC to the supplied UNIX time with hour offset from UTC\r\n");
            terminalTextAttributesReset();

        }
        
        // Save time from internal RTCC into external backup RTC
        backupRTCStashTime();
        
    }
        
    else {
     
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter an RTCC parameter to set, as well as what that parameter should be set to\r\n");
        printf("Available parameters are:\r\n");
        printf("    Date: <mm>/<dd>/<yyyy>: Sets the RTCC date \r\n");
        printf("    Time: <hh>:<mm>:<ss>: Sets the RTCC time. (Must be 24 hr time)\r\n");
        printf("    Weekday: <weekday>: Sets the RTCC weekday\r\n");
        printf("    Unix Time: <decimal unix time>, <hour offset from UTC to local time>: sets the RTCC to the supplied UNIX time with hour offset from UTC\r\n");
        terminalTextAttributesReset();
        
    }
    
}

usb_uart_command_function_t setPanelPowerCommand(char * input_str) {
    
    // Snipe out received arguments
    char read_string[32];
    sscanf(input_str, "Set Panel Power: %[^\t\n\r]", read_string);
    
    if (strcmp(read_string, "On") == 0) {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Setting up LED Panel\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        LEDPanelSetup();

        terminalTextAttributesReset();
        
    }
    
    else if (strcmp(read_string, "Off") == 0) {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("Turning off LED Panel\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
        LEDPanelTeardown();
        
        terminalTextAttributesReset();
        
    }
    
    else {
     
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter 'On' or 'Off'\r\n");
        terminalTextAttributesReset();
        
    }
    
    
}

usb_uart_command_function_t printPanelDirectDataContentsCommand(char * input_str) {
    
    panelDirectDataBufferPrint();
    
}

// Set panel brightness
usb_uart_command_function_t setPanelBrightnessCommand(char * input_str) {

    uint32_t set_brightness;
    sscanf(input_str, "Set Panel Brightness: %u", &set_brightness);

    if (set_brightness > 100 || set_brightness < 0) {

        terminalTextAttributesReset();
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a brightness between 0%% and 100%%, user entered %u%%\n\r", set_brightness);
        terminalTextAttributesReset();


    }

    else {

        panelPWMSetBrightness((uint8_t) set_brightness);

        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Set Panel Brightness to %u%%\n\r", set_brightness);
        terminalTextAttributesReset();

    }

}

usb_uart_command_function_t fillPanelScratchpadCommand(char * input_str) {
 
    
    char * rx_data_str;
    rx_data_str = (char *) malloc(2050);
    uint32_t starting_address;
    sscanf(input_str, "Fill Panel Scratchpad: %u, %2048c", &starting_address, rx_data_str);
    
    uint32_t index;
    for (index = 0; index < 2048; index++) {
        panel_direct_data_scratchpad[starting_address + index] = (uint8_t) rx_data_str[index] - 14;
    }
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Received data into scratchpad\r\n");
    terminalTextAttributesReset();
    
    free(rx_data_str);
    
}

usb_uart_command_function_t printPanelScratchpadContentsCommand(char * input_str) {
    
    panelScratchpadPrint();
    
}

usb_uart_command_function_t copyPanelScratchpadCommand(char * input_str) {
 
    panelDataCopyScratchpad();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Copied image from scratchpad to buffer\r\n");
    terminalTextAttributesReset();
    
    
}

usb_uart_command_function_t writeStratchpadExternalFlashCommand(char * input_str) {
 
    
    uint32_t target_slot;
    sscanf(input_str, "Write Scratchpad to Slot: %u", &target_slot);
    
    if (target_slot >= 512) {

        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a target slot between 0 and 511, user entered %u\n\r", target_slot);
        terminalTextAttributesReset();

    }
    
    else if (external_storage_slot_in_use[target_slot] == 1) {
        
        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Slot %u is currently in use, either append an image to next available slot or erase all slots\n\r", target_slot);
        terminalTextAttributesReset();
        
    }

    else {
        externalStorageWriteImageSlot(target_slot);

        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Transfer from Scratchpad to External Image Slot %u complete\n\r", target_slot);
        terminalTextAttributesReset();
    }    
    
}

usb_uart_command_function_t readStratchpadExternalFlashCommand(char * input_str) {
    
    uint32_t target_slot;
    sscanf(input_str, "Read Slot to Scratchpad: %u", &target_slot);
    
    if (target_slot >= 512) {

        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a target slot between 0 and 511, user entered %u\n\r", target_slot);
        terminalTextAttributesReset();

    }
    
    else if (external_storage_slot_in_use[target_slot] == 0) {
        
        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Slot %u is currently unfilled, please read from another slot\n\r", target_slot);
        terminalTextAttributesReset();
        
    }
    
    else {
        externalStorageReadImageSlot(target_slot);

        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Transfer from Image Slot %u to Scratchpad complete\n\r", target_slot);
        terminalTextAttributesReset();
    }
    
}

usb_uart_command_function_t readBufferExternalFlashCommand(char * input_str) {
    
    uint32_t target_slot;
    sscanf(input_str, "Read Slot to Buffer: %u", &target_slot);
    
    if (target_slot >= 512) {

        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Please enter a target slot between 0 and 511, user entered %u\n\r", target_slot);
        terminalTextAttributesReset();

    }
    
    else if (external_storage_slot_in_use[target_slot] == 0) {
        
        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Slot %u is currently not filled, please read from another slot\n\r", target_slot);
        terminalTextAttributesReset();
        
    }
    
    else {
        
        externalStorageReadImageSlot(target_slot);
        panelDataCopyScratchpad();
        
        terminalTextAttributesReset();
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Transfer from Image Slot %u to Buffer complete\n\r", target_slot);
        terminalTextAttributesReset();
    }
    
}

usb_uart_command_function_t eraseAllExternalStorageCommand(char * input_str) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Erasing All External Storage\n\r");
    
    externalStorageEraseAllSlots();
    
    maximum_slot_in_use = 0;
    
    printf("External storage erased\r\n");
    terminalTextAttributesReset();
    
    
}

usb_uart_command_function_t appendScratchpadToImageSlotCommand(char * input_str) {
 
    // first, write scratchpad data into slot and record which slot it was written to
    uint32_t slot_written = externaStorageAppendImageSlot();
    
    #warning "add catch here to determine if we're out of space"

    maximum_slot_in_use = slot_written;
    
    // print what we did
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Scratchpad written to external storage image slot %u\n\r", slot_written);
    terminalTextAttributesReset();
    
    
    
}


usb_uart_command_function_t printImageSlotsInUseCommand(char * input_str) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Maximum detected filled slot is %u\n\r", maximum_slot_in_use);
    terminalTextAttributesReset();
    
    
    externalStoragePrintUsedImageSlots();
    
}

usb_uart_command_function_t slotSlideshowBeginCommand(char * input_str) {
 
    display_mode = slot_slideshow_display_mode;
    
    externalStorageBeginSlotSlideshow(0);
    
}

usb_uart_command_function_t slotSlideshowEndCommand(char * input_str) {
 
    display_mode = idle_display_mode;
    
    externalStorageSlotEndSlideshow();
    
}

usb_uart_command_function_t slotSlideshowDelayTime(char * input_str) {
 
    uint32_t read_delay;
    sscanf(input_str, "Set Slot Slideshow Delay: %u", &read_delay);
    
    slot_slideshow_delay = read_delay;
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Set slot slideshow delay to %u\n\r", slot_slideshow_delay);
    terminalTextAttributesReset();
    
    
}


// This function must be called to set up the usb_uart_commands hash table
// Entries into this hash table are "usb_uart serial commands"
void usbUartHashTableInitialize(void) {
    
    usbUartAddCommand("Help", 
            "Prints help message for all supported serial commands", 
            helpCommandFunction);
    usbUartAddCommand("Reset", 
            "Executes an MCU software reset", 
            resetCommand);
    usbUartAddCommand("Clear Screen", 
            "Clears the serial port terminal", 
            clearCommand);
    usbUartAddCommand("*IDN?", 
            "Prints identification string", 
            idnCommand);
    usbUartAddCommand("Repository?",
            "Prints project Git repo location",
            repositoryCommand);
    usbUartAddCommand("Host Status?",
            "Prints status of MCU host device (IDs, WDT, DMT, Prefetch, Cause of Reset, up time)", 
            hostStatusCommand);
    usbUartAddCommand("Peripheral Status?",
            "\b\b <peripheral_name>: Prints status of passed host peripheral. Available peripherals:\r\n"
            "       Interrupts\r\n"
            "       Clocks\r\n"
            "       PMD\r\n"
            "       WDT\r\n"
            "       DMT\r\n"
            "       Prefetch\r\n"
            "       DMA\r\n"
            "       ADC\r\n"
            "       ADC Channels\r\n"
            "       I2C Master\r\n"
            "       RTCC\r\n"
            "       PMP\r\n"
            "       SPI Flash\r\n"
            "       Timer <x> (x = 1-9)",
            peripheralStatusCommand);
    usbUartAddCommand("Error Status?",
            "Prints the status of various error handler flags",
            errorStatusCommand);
    usbUartAddCommand("Clear Errors",
            "Clears all error handler flags",
            clearErrorsCommand);
    usbUartAddCommand("Platform Status?",
        "Prints current state of surrounding circuitry, including PGOOD, time of flight, I2C slaves",
        platformStatusCommand);
    if (nTELEMETRY_CONFIG_PIN == LOW) {
        usbUartAddCommand("Live Telemetry",
                "Toggles live updates of system level telemetry",
                liveTelemetryCommand);
    }
    if (nBACKUP_RTC_CONFIG_PIN == LOW) {
        usbUartAddCommand("Time and Date?",
                "Prints the current system time and date",
                timeAndDateCommand);
        usbUartAddCommand("Set RTCC:",
                "\b\b <parameter>: <parameter args>: sets a time parameter within the Real Time Clock and Calendar. Available parameters:\r\n"
                "       Date: <mm>/<dd>/<yyyy>: Sets the RTCC date \r\n"
                "       Time: <hh>:<mm>:<ss>: Sets the RTCC time. (Must be 24 hr time)\r\n"
                "       Weekday: <weekday>: Sets the RTCC weekday\r\n"
                "       Unix Time: <decimal unix time>, <hour offset from UTC to local time>: sets the RTCC to the supplied UNIX time with hour offset from UTC",
                setRTCCCommand);
    }
    usbUartAddCommand("Set Panel Power: ",
            "\b\b<Panel State>: Turns LED Panel on and off manually",
            setPanelPowerCommand);
    usbUartAddCommand("Print Panel Direct Data Buffer",
            "Prints the contents of the raw data being shifted into the panel",
            printPanelDirectDataContentsCommand);
    usbUartAddCommand("Set Panel Brightness: ",
            "\b\b<Brightness Value>: Sets percent brightness of LED panel",
            setPanelBrightnessCommand);
    usbUartAddCommand("Fill Panel Scratchpad: ",
            "\b\b<Starting_Address>, <data>: Fills internal panel data scratchpad (meant for use with scripts)",
            fillPanelScratchpadCommand);
    usbUartAddCommand("Print Panel Scratchpad",
            "Prints the contents of the raw data in the panel data scratchpad",
            printPanelScratchpadContentsCommand);
    usbUartAddCommand("Copy Panel Scratchpad to Buffer",
            "Moves data from the scratchpad into the panel direct data buffer",
            copyPanelScratchpadCommand);
    if (nSPI_FLASH_CONFIG_PIN == LOW) {
        usbUartAddCommand("Write Scratchpad to Slot: ",
                "\b\b<Target Slot>: Copies data in image scratchpad to external storage (SPI Flash)",
                writeStratchpadExternalFlashCommand);
        usbUartAddCommand("Read Slot to Scratchpad: ",
                "\b\b<Target Slot>: Copies data in external storage (SPI Flash) to image scratchpad",
                readStratchpadExternalFlashCommand);
        usbUartAddCommand("Read Slot to Buffer: ",
                "\b\b<Target Slot>: Copies data in external storage (SPI Flash) to image scratchpad, then copies scratchpad to buffer",
            readBufferExternalFlashCommand);
        usbUartAddCommand("Erase All Slots",
                "Clears the contents of all external flash/image slots",
                eraseAllExternalStorageCommand);
        usbUartAddCommand("Print Filled Slots",
                "Prints which external storage image slots are currently filled",
                printImageSlotsInUseCommand);
        usbUartAddCommand("Append Scratchpad to Slot",
                "Copies scratchpad image data to next available external storage image slot",
                appendScratchpadToImageSlotCommand);
        usbUartAddCommand("Begin Slot Slideshow",
                "Displays contents in external SPI Flash at a routine interval",
                slotSlideshowBeginCommand);
        usbUartAddCommand("End Slot Slideshow",
                "Suspends displaying contents of SPI Flash",
                slotSlideshowEndCommand);
        usbUartAddCommand("Set Slot Slideshow Delay: ",
                "\b\b<delay_seconds>: Sets the delay time between external images in slots displayed. Default is 10",
                slotSlideshowDelayTime);
    }
}
