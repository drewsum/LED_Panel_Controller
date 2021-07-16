/*
 * File:   main.c
 * Author: Drew Maatman
 *
 * Created on June 11th, 2021
 * I bought a house
 * 
 */

#include <xc.h>
#include <stdio.h>
#include <stdbool.h>
#include <string.h>

#include "main.h"

// Core Drivers
#include "configuration.h"
#include "device_control.h"
#include "32mz_interrupt_control.h"
#include "heartbeat_timer.h"
#include "watchdog_timer.h"
#include "error_handler.h"
#include "prefetch.h"
#include "cause_of_reset.h"

// GPIO
#include "pin_macros.h"
#include "gpio_setup.h"

// Application
//#include "heartbeat_services.h"
//#include "power_saving.h"
//#include "telemetry.h"
//#include "user_interface.h"

// I2C
//#include "plib_i2c.h"
//#include "plib_i2c_master.h"
//#include "temperature_sensors.h"
//#include "power_monitors.h"
//#include "misc_i2c_devices.h"

// USB
#include "terminal_control.h"
#include "uthash.h"
#include "usb_uart.h"
#include "usb_uart_rx_lookup_table.h"

// ADC
//#include "adc.h"
//#include "adc_channels.h"

void main(void) {
    
    // Save the cause of the most recent device reset
    // This also checks for configuration errors
    reset_cause = getResetCause();
    
    // Clear the terminal
    terminalClearScreen();
    terminalSetCursorHome();
    
    // set serial terminal window name
    char *terminal_title_str;
    terminal_title_str = (char *) malloc(64);
    sprintf(terminal_title_str, "%s Serial Terminal", PROJECT_NAME_STR);
    terminalSetTitle(terminal_title_str);
    free(terminal_title_str);
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("%s\r\n", PROJECT_NAME_STR);
    printf("Host Firmware Version: %s, Platform Hardware Revision: %s\r\n", FIRMWARE_VERSION_STR, PLATFORM_REVISION_STR);
    printf("Created by Drew Maatman, %s\r\n", PROJECT_DATE_STR);
    terminalTextAttributesReset();
    
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
    
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        
    }
    
    // only clear persistent error flags if we've seen a POR... keep old values after other resets
    if (reset_cause == POR_Reset) {
        clearErrorHandler();
    }
#warning "telemetry"
//    live_telemetry_enable = 0;
//    live_telemetry_print_request = 0;
    
    printf("\r\nCause of most recent device reset: %s\r\n\r\n", getResetCauseString(reset_cause));
    terminalTextAttributesReset();
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Beginning Host Initialization:\r\n");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // setup GPIO pins
    gpioInitialize();
    printf("    GPIO Pins Initialized\n\r");
    
    // Disable global interrupts so clocks can be initialized properly
    disableGlobalInterrupts();
    
    // Initialize system clocks
    clockInitialize();
    printf("    Oscillators, Phase-Locked Loop, and System Clocks Initialized\n\r");
    
    // Configure interrupt controller
    interruptControllerInitialize();
    
    // Enable Global Interrupts
    enableGlobalInterrupts();
    printf("    Interrupt Controller Initialized, Global Interrupts Enabled\n\r");
    
    // Setup error handling
    errorHandlerInitialize();
    printf("    Error Handler Initialized\n\r");
    
    // Setup USB UART debugging
    usbUartInitialize();
    printf("    USB UART Initialized, DMA buffer method used\n\r");
    while(usbUartCheckIfBusy());
    
    // Setup prefetch module
    prefetchInitialize();
    printf("    CPU Instruction Prefetch Module Enabled\r\n");
    while(usbUartCheckIfBusy());
    
//    // Disable unused peripherals for power savings
//    PMDInitialize();
//    printf("    Unused Peripheral Modules Disabled\n\r");
//    while(usbUartCheckIfBusy());

    // Setup heartbeat timer
    heartbeatTimerInitialize();
    printf("    Heartbeat Timer Initialized\n\r");
    while(usbUartCheckIfBusy());
    
    // setup watchdog timer
    watchdogTimerInitialize();
    printf("    Watchdog Timer Initialized\n\r");
    while(usbUartCheckIfBusy());
    
//    // setup I2C
//    I2CMaster_Initialize();
//    printf("    I2C Bus Master Initialized\r\n");
//    while(usbUartCheckIfBusy());
//    
//    if (nTELEMETRY_CONFIG_PIN == LOW) {
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
//        printf("    Telemetry Configuration Detected\r\n");
//        while(usbUartCheckIfBusy());
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//        // setup I2C slaves
//        tempSensorsInitialize();
//        printf("    Temperature Sensors Initialized\r\n");
//        while(usbUartCheckIfBusy());
//        powerMonitorsInitialize();
//        printf("    Power Monitors Initialized\r\n");
//        while(usbUartCheckIfBusy());
//        // Enable ADC
//        ADCInitialize();
//        printf("    Analog to Digital Converter Initialized\n\r");
//        while(usbUartCheckIfBusy());
//    }
//    
//    else {
//        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
//        printf("    Telemetry Configuration Not Detected\r\n");
//        while(usbUartCheckIfBusy());
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    }
//    
//    if (nETC_CONFIG_PIN == LOW) {
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
//        printf("    Elapsed Time Configuration Detected\r\n");
//        while(usbUartCheckIfBusy());
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//        platformTOFInitialize();
//        printf("    Platform Elapsed Time Counter Initialized\r\n");
//        while(usbUartCheckIfBusy());
//    }
//    
//    else {
//        terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
//        printf("    Platform Elapsed Time Configuration Not Detected\r\n");
//        while(usbUartCheckIfBusy());
//        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    }
//    
//    // setup power pushbutton
//    powerCapTouchPushbuttonInitialize();
//    
//    // Disable reset LED
    RESET_LED_PIN = LOW;
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Reset LED Disabled, boot complete\r\n");
    while(usbUartCheckIfBusy());
    
    // Print end of boot message, reset terminal for user input
    terminalTextAttributesReset();
    terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\rType 'Help' for list of supported commands\n\r\n\r");
    terminalTextAttributesReset();
    
//    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("Entering IDLE mode\r\n");
//    terminalTextAttributesReset();
//    
//    // check to see if a clock fail has occurred and latch it
//    clockFailCheck();
//    
//    // wait for USB UART TX DMA to complete (flush TX buffer)
//    while (USB_UART_TX_DMA_CON_BITFIELD.CHBUSY);
//    
//    // get ready to wake up when user presses power button
//    ui_sleep_request = false;
//    ui_state_machine = sleep_state;
//    
//    lcdPowerDown();
//    
//    // stop WDT
//    kickTheDog();
//    WDTCONbits.ON = 0;
//    
//    // stop heartbeat timer
//    T1CONbits.ON = 0;
//    TMR1 = 0;
//    HEARTBEAT_LED_PIN = LOW;
//    
//    // turn off PGOOD LEDs
//    PGOOD_LED_SHDN_PIN = 1;
//    
//    // disable I2C in sleep
//    I2C5CONbits.SIDL = 1;
//    // disable ADC in sleep
//    ADCCON1bits.SIDL = 1;
//    // disable LCD PWM in sleep
//    OC3CONbits.SIDL = 0;
//    T2CONbits.SIDL = 1;
//    // enable USB UART in sleep
//    U1MODEbits.SIDL = 0;
//    
//    asm volatile ( "wait" ); // Put device into Idle mode
//    
//    // turn on PGOOD LEDs
//    PGOOD_LED_SHDN_PIN = 0;
//    
//    // this code executes on a wake from sleep (power pushbutton pressed, or serial commands received)
//    // start WDT
//    kickTheDog();
//    heartbeatTimerInitialize();
//    
//    // setup watchdog timer
//    watchdogTimerInitialize();
//    
    // endless loop
    while(1) {
//        
//         // get temperature sensor data
//        if (temp_sense_data_request) tempSensorsRetrieveData();
//
//        // get power monitor data
//        if (power_monitor_data_request) powerMonitorsGetData();
//        
        // clear the watchdog if we need to
        if (wdt_clear_request) {
            kickTheDog();
            wdt_clear_request = 0;
        }
        
        // parse received USB strings if we have a new one received
        if (usb_uart_rx_ready) {
            usbUartRxLUTInterface(usb_uart_rx_buffer);
            // Determine length of received string
            uint32_t length = strlen(usb_uart_rx_buffer);
        
            // clear rx buffer
            uint32_t index;
            for (index = 0; index < length; index++) {
                usb_uart_rx_buffer[index] = '\0';
            }
        }
        
//        if (live_telemetry_print_request && live_telemetry_enable) {
//
//            // Clear the terminal
//            //terminalClearScreen();
//            terminalSetCursorHome();
//            
//            terminalTextAttributesReset();
//            terminalTextAttributes(CYAN_COLOR, BLACK_COLOR, BOLD_FONT);
//            printf("Live system telemetry:\033[K\n\r\033[K");
//            
//            printCurrentTelemetry();
//            
//            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
//            printf("Call 'Live Telemetry' command to disable\033[K\n\r");
//            terminalTextAttributesReset();
//            
//            live_telemetry_print_request = 0;
//            
//        }
//        
        // check to see if a clock fail has occurred and latch it
        clockFailCheck();
        
        // update error LEDs if needed
        if (update_error_leds_flag) updateErrorLEDs();
        
//        // decide if we need to startup or shutdown
//        if (ui_wake_request) uiDeviceWakeup();
//        if (ui_sleep_request) uiDeviceSleep();
        
    }
    
}
