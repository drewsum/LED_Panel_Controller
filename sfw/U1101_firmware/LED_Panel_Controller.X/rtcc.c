
#include <stdio.h>

#include <time.h>

#include "rtcc.h"

#include "device_control.h"
#include "32mz_interrupt_control.h"
#include "terminal_control.h"

// This function unlocks the RTCC for writing
void rtccUnlock(void) {
 
    // Example 29-3 in PIC32 reference manual
    
    // disable global interrupts
    disableGlobalInterrupts();
    
    // unlock device
    // deviceUnlock();     // may have to explicitly write SYSKEY values instead
    // write key1 to SYSKEY per datasheet
    SYSKEY = 0xAA996655;
    // write key2 to SYSKEY per datasheet
    SYSKEY = 0x556699AA;
    
    
    // Suspend any DMA transactions
    DMACONbits.SUSPEND = 1;
    while (DMACONbits.DMABUSY);
    
    // set RTCWREN in RTCCONSET
    // MUST BE ONE INSTRUCTION, SO _SET REGISTER MACRO IS USED
    RTCCONSET = 0x8;
    
    // re-enable interrupts
    enableGlobalInterrupts();
    
    // re-enable the DMA controller
    DMACONbits.SUSPEND = 0;
    
}

// This function locks the RTCC so that time and date registers are not modifiable
void rtccLock(void) {
 
    // Inverse of Example 29-3 in PIC32 reference manual
    
    // disable global interrupts
    disableGlobalInterrupts();
    
    // unlock device
    deviceUnlock();     // may have to explicitly write SYSKEY values instead
    
    // Suspend any DMA transactions
    DMACONbits.SUSPEND = 1;
    while (DMACONbits.DMABUSY);
    
    // clear RTCWREN in RTCCONSET
    // MUST BE ONE INSTRUCTION, SO _CLR REGISTER MACRO IS USED
    RTCCONCLR = 0x8;
    
    // re-enable interrupts
    enableGlobalInterrupts();
    
    // re-enable the DMA controller
    DMACONbits.SUSPEND = 0;
    
    // lock the device
    deviceLock();
    
}

// This function initializes the RTCC on reset
void rtccInitialize(void) {
    
    // configure RTCC for writing
    rtccUnlock();
    
    // Disable RTCC for setup
    RTCCONbits.ON = 0;
    
    // continue RTCC in idle mode
    RTCCONbits.SIDL = 0;
    
    // Set clock source as SOSC
    RTCCONbits.RTCCLKSEL = 0b01;
    
    // clear seconds value per reference manual
    RTCTIMEbits.SEC01 = 0;
    RTCTIMEbits.SEC10 = 0;
    
    // Disable RTCC clock
    RTCCONbits.RTCCLKON = 0;
    
    // Disable output pin
    RTCCONbits.RTCOE = 0;
    
    // Disable alarm (seconds IRQ)
    RTCALRMbits.ALRMEN = 0;
    
    while (RTCALRM & 0x1000); // wait ALRMSYNC to be off
    RTCALRMCLR = 0xCFFF; // clear ALRMEN, CHIME, AMASK, ARPT;
    
    // Program random stuff into alarm registers
    ALRMTIME = 0x76543210;
    ALRMDATE = 0x76543210;
    
    // Enable continuous rollover of alarm
    RTCALRMbits.CHIME = 1;
    
    // Setup alarm to trigger every second
    RTCALRMbits.AMASK = 0b0001;
    
    // Setup RTCC interrupts
    setInterruptPriority(Real_Time_Clock, 3);
    setInterruptSubpriority(Real_Time_Clock, 0);
    clearInterruptFlag(Real_Time_Clock);
    enableInterrupt(Real_Time_Clock);
    
    // Enable RTCC clock
    RTCCONbits.RTCCLKON = 1;
    
    // Unlock RTCC
    rtccUnlock();
    
    // Enable RTCC
    RTCCONbits.ON = 1;
    
    // Enable alarm (seconds IRQ)
    RTCALRMbits.ALRMEN = 1;
    
    // Lock RTCC
    rtccLock();
    
}

// This function clears all values in the RTCC
void rtccClear(void) {
 
    // configure RTCC for writing
    rtccUnlock();
    
    // Turn off RTCC
    RTCCONbits.ON = 0;
    
    // wait for RTCC to turn off
    // while (RTCCONbits.RTCCLKON);
    
    // Write 0's everywhere
    RTCTIME = 0x00000000;
    RTCDATEbits.DAY01 = 1;
    RTCDATEbits.DAY10 = 0;
    RTCDATEbits.MONTH01 = 1;
    RTCDATEbits.MONTH10 = 0;
    RTCDATEbits.WDAY01 = 0;
    RTCDATEbits.YEAR01 = 0;
    RTCDATEbits.YEAR10 = 0;
    
    // Copy values from RTCC into ram shadow register
    rtcc_shadow.weekday     = RTCDATEbits.WDAY01;
    rtcc_shadow.day         = (RTCDATEbits.DAY10 * 10) + RTCDATEbits.DAY01;
    rtcc_shadow.month       = (RTCDATEbits.MONTH10 * 10) + RTCDATEbits.MONTH01;
    rtcc_shadow.year        = (RTCDATEbits.YEAR10 * 10) + RTCDATEbits.YEAR01 + 2000;
    rtcc_shadow.hours       = (RTCTIMEbits.HR10 * 10) + RTCTIMEbits.HR01;
    rtcc_shadow.minutes     = (RTCTIMEbits.MIN10 * 10) + RTCTIMEbits.MIN01;
    rtcc_shadow.seconds     = (RTCTIMEbits.SEC10 * 10) + RTCTIMEbits.SEC01;
    
    // Turn on RTCC
    RTCCONbits.ON = 1;
    
    // wait for RTCC to turn on
    // while (RTCCONbits.RTCCLKON == 0);
    
    // lock RTCC
    rtccLock();
    
}

// This function writes the date to the RTCC
void rtccWriteDate(uint8_t month, uint8_t day, uint16_t year) {
 
    // configure RTCC for writing
    rtccUnlock();
    
    // Turn off RTCC
    RTCCONbits.ON = 0;
    
    // wait for RTCC to turn off
    // while (RTCCONbits.RTCCLKON);
    
    // Set month
    RTCDATEbits.MONTH10 = (month / 10) % 10;
    RTCDATEbits.MONTH01 = month % 10;
    
    // Set day
    RTCDATEbits.DAY10 = (day / 10) % 10;
    RTCDATEbits.DAY01 = day % 10;
    
    // Set year
    year -= 2000;
    RTCDATEbits.YEAR10 = (year / 10) % 10;
    RTCDATEbits.YEAR01 = year % 10;
    
    // Copy values from RTCC into ram shadow register
    rtcc_shadow.weekday     = RTCDATEbits.WDAY01;
    rtcc_shadow.day         = (RTCDATEbits.DAY10 * 10) + RTCDATEbits.DAY01;
    rtcc_shadow.month       = (RTCDATEbits.MONTH10 * 10) + RTCDATEbits.MONTH01;
    rtcc_shadow.year        = (RTCDATEbits.YEAR10 * 10) + RTCDATEbits.YEAR01 + 2000;
    rtcc_shadow.hours       = (RTCTIMEbits.HR10 * 10) + RTCTIMEbits.HR01;
    rtcc_shadow.minutes     = (RTCTIMEbits.MIN10 * 10) + RTCTIMEbits.MIN01;
    rtcc_shadow.seconds     = (RTCTIMEbits.SEC10 * 10) + RTCTIMEbits.SEC01;
    
    // Turn on RTCC
    RTCCONbits.ON = 1;
    
    // wait for RTCC to turn on
    // while (RTCCONbits.RTCCLKON == 0);
    
    // lock RTCC
    rtccLock();
    
}

// This function writes the time to the RTCC
void rtccWriteTime(uint8_t hour, uint8_t minute, uint8_t second) {
    
    // configure RTCC for writing
    rtccUnlock();
    
    // Turn off RTCC
    RTCCONbits.ON = 0;
    
    // wait for RTCC to turn off
    // while (RTCCONbits.RTCCLKON);
    
    // Set hour
    RTCTIMEbits.HR10 = (hour / 10) % 10;
    RTCTIMEbits.HR01 = hour % 10;
    
    // Set minute
    RTCTIMEbits.MIN10 = (minute / 10) % 10;
    RTCTIMEbits.MIN01 = minute % 10;
    
    // Set second
    RTCTIMEbits.SEC10 = (second / 10) % 10;
    RTCTIMEbits.SEC01 = second % 10;
    
    // Copy values from RTCC into ram shadow register
    rtcc_shadow.weekday     = RTCDATEbits.WDAY01;
    rtcc_shadow.day         = (RTCDATEbits.DAY10 * 10) + RTCDATEbits.DAY01;
    rtcc_shadow.month       = (RTCDATEbits.MONTH10 * 10) + RTCDATEbits.MONTH01;
    rtcc_shadow.year        = (RTCDATEbits.YEAR10 * 10) + RTCDATEbits.YEAR01 + 2000;
    rtcc_shadow.hours       = (RTCTIMEbits.HR10 * 10) + RTCTIMEbits.HR01;
    rtcc_shadow.minutes     = (RTCTIMEbits.MIN10 * 10) + RTCTIMEbits.MIN01;
    rtcc_shadow.seconds     = (RTCTIMEbits.SEC10 * 10) + RTCTIMEbits.SEC01;
    
    // Turn on RTCC
    RTCCONbits.ON = 1;
    
    // wait for RTCC to turn on
    // while (RTCCONbits.RTCCLKON == 0);
    
    // lock RTCC
    rtccLock();
    
}

// This function writes weekday to the RTCC
void rtccWriteWeekday(weekday_t weekday) {
 
    // configure RTCC for writing
    rtccUnlock();
    
    // Turn off RTCC
    RTCCONbits.ON = 0;
    
    // wait for RTCC to turn off
    // while (RTCCONbits.RTCCLKON);
    
    // Set weekday
    RTCDATEbits.WDAY01 = weekday;
    
    // Copy values from RTCC into ram shadow register
    rtcc_shadow.weekday     = RTCDATEbits.WDAY01;
    rtcc_shadow.day         = (RTCDATEbits.DAY10 * 10) + RTCDATEbits.DAY01;
    rtcc_shadow.month       = (RTCDATEbits.MONTH10 * 10) + RTCDATEbits.MONTH01;
    rtcc_shadow.year        = (RTCDATEbits.YEAR10 * 10) + RTCDATEbits.YEAR01 + 2000;
    rtcc_shadow.hours       = (RTCTIMEbits.HR10 * 10) + RTCTIMEbits.HR01;
    rtcc_shadow.minutes     = (RTCTIMEbits.MIN10 * 10) + RTCTIMEbits.MIN01;
    rtcc_shadow.seconds     = (RTCTIMEbits.SEC10 * 10) + RTCTIMEbits.SEC01;
    
    // Turn on RTCC
    RTCCONbits.ON = 1;
    
    // wait for RTCC to turn on
    // while (RTCCONbits.RTCCLKON == 0);
    
    // lock RTCC
    rtccLock();
    
    
}

// this function writes the passed unix time into the RTCC
void rtccWriteUnixTime(uint32_t input_unix_time) {
    
    // this structure holds the conversion from unix time
    struct tm *converted_time_s;
    time_t unix_time = (time_t) input_unix_time;
    
    // convert from unix into structure
    converted_time_s = gmtime(&unix_time);
    
    // write back conversion into RTCC
    rtccWriteDate(converted_time_s->tm_mon + 1, converted_time_s->tm_mday, converted_time_s->tm_year + 1900);
    rtccWriteTime(converted_time_s->tm_hour, converted_time_s->tm_min, converted_time_s->tm_sec);
    rtccWriteWeekday(converted_time_s->tm_wday);
    
}

// This function returns a string of the day of the week, given the RTCC value encoding this
char * getDayOfWeek(uint8_t day_of_week_enum) {

    switch (day_of_week_enum) {
    
        case 0:
            return "Sunday";
            break;
            
        case 1:
            return "Monday";
            break;
            
        case 2:
            return "Tuesday";
            break;
            
        case 3:
            return "Wednesday";
            break;
            
        case 4:
            return "Thursday";
            break;
            
        case 5:
            return "Friday";
            break;
            
        case 6:
            return "Saturday";
            break;
            
        default:
            return "error";
            break;
        
    }
    
}

// This function prints the current time and date to stdout
void printTimeAndDate(void) {
    
    printf("Time: %02u:%02u:%02u    ",
            rtcc_shadow.hours,
            rtcc_shadow.minutes,
            rtcc_shadow.seconds);
    
    printf("Date: %s, %02u/%02u/%04u\r\n",
            getDayOfWeek(rtcc_shadow.weekday),
            rtcc_shadow.month,
            rtcc_shadow.day,
            rtcc_shadow.year
            );
    
}

// Real Time Clock-Calendar interrupt service routine
void __ISR(_RTCC_VECTOR, ipl3SRS) rtccISR(void) {
 
    // Wait for sync to go low, signifying we can do an RTCC read
    while (RTCCONbits.RTCSYNC == 1);
    
    // Copy values from RTCC into ram shadow register
    rtcc_shadow.weekday     = RTCDATEbits.WDAY01;
    rtcc_shadow.day         = (RTCDATEbits.DAY10 * 10) + RTCDATEbits.DAY01;
    rtcc_shadow.month       = (RTCDATEbits.MONTH10 * 10) + RTCDATEbits.MONTH01;
    rtcc_shadow.year        = (RTCDATEbits.YEAR10 * 10) + RTCDATEbits.YEAR01 + 2000;
    rtcc_shadow.hours       = (RTCTIMEbits.HR10 * 10) + RTCTIMEbits.HR01;
    rtcc_shadow.minutes     = (RTCTIMEbits.MIN10 * 10) + RTCTIMEbits.MIN01;
    rtcc_shadow.seconds     = (RTCTIMEbits.SEC10 * 10) + RTCTIMEbits.SEC01;
    
    // Clear IRQ flag
    clearInterruptFlag(Real_Time_Clock);
    
}

// this function returns the raw 10 bit value of the RTC calibration setting
uint16_t getRTCCCalibration(void) {

    return RTCCONbits.CAL;
    
}


// this function sets the RTCC calibration from raw 10 bit value
void setRTCCCalibration(uint16_t input_cal) {
    
    // mask
    input_cal = input_cal & 0x3FF;
    
    // literally copied from RTC ref manual
    if(RTCCON & 0x8000)
    { // RTCC is ON
    
        unsigned int t0, t1;
    
        do
        {

            t0 = RTCTIME;
            t1 = RTCTIME;

        } while (t0 != t1); // read valid time value

        if((t0 & 0xFF) == 00)

        { // we're at second 00, wait auto-adjust to be performed

            while (!(RTCCON & 0x2)); // wait until second half...

        }
    
    }
    
    // set calibration
    RTCCONbits.CAL = input_cal;
    
}

// this function returns the contents of the RTC shadow register as a time.h tm struct
struct tm getRTCTimeStruct(void) {
 
    // create a return structure to build
    struct tm return_time;
    
    // copy all time variables from RTCC shadow registers into return time structure
    return_time.tm_wday = rtcc_shadow.weekday;
    return_time.tm_mday = rtcc_shadow.day;
    return_time.tm_mon = rtcc_shadow.month - 1;         // month, 0 indexed
    return_time.tm_year = rtcc_shadow.year + 100;       // years since 1900
    return_time.tm_sec = rtcc_shadow.seconds;
    return_time.tm_min = rtcc_shadow.minutes;
    return_time.tm_hour = rtcc_shadow.hours;
    
    // send back to function caller
    return return_time;
    
}

// this function prints debug info about the RTCC setings
void printRTCCStatus(void) {
 
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Real Time Clock and Calendar Module Status:\n\r");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Current system time and date:\r\n        ");
    printTimeAndDate();
    
    // Print if RTCC is on
    if (RTCCONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC Enable: %s\n\r",
            RTCCONbits.ON ? "On" : "Off");
    
    // prints stop in idle status
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC stop in idle: %s\n\r",
            RTCCONbits.SIDL ? "Enabled" : "Disabled");
    
    printf("    RTCC Calibration bits: 0x%08X\r\n", RTCCONbits.CAL);
    
    printf("    RTCC Clock Source: %s\n\r",
            RTCCONbits.RTCCLKSEL ? "SOSC" : "LPRC (INTOSC)");
    
    // print RTC output selection
    printf("    RTC output selection: ");
    switch (RTCCONbits.RTCOUTSEL) {
        case 0b00:
            printf("Alarm Pulse is presented on the RTCC pin when the alarm interrupt is triggered\n\r");
            break;
        case 0b01:
            printf("Seconds Clock is presented on the RTCC pin\n\r");
            break;
        case 0b10:
            printf("RTCC Clock is presented on the RTCC pin\n\r");
            break;
        case 0b11:
            printf("reserved\n\r");
            break;
    }
    
    // Print if RTCC clock is on
    if (RTCCONbits.RTCCLKON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC Clock is %s\n\r",
            RTCCONbits.RTCCLKON ? "actively running" : "not actively running");
    
    // Print RTCC write enable
    if (RTCCONbits.RTCWREN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC control registers %s\n\r",
            RTCCONbits.RTCWREN ? "can be written to" : "cannot be written to (at time of printing)");
    
    // Print RTCC sync enable
    if (!RTCCONbits.RTCSYNC) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC value registers %s\n\r",
            !RTCCONbits.RTCSYNC ? "can be read" : "cannot be read (data is changing)");
    
    // prints RTCC output status
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC output is %s\n\r",
            RTCCONbits.RTCOE ? "Enabled" : "Disabled");
    
    // Print RTCC alarm enable
    if (RTCALRMbits.ALRMEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC Alarm is %s\n\r",
            RTCALRMbits.ALRMEN ? "enabled" : "disabled");
    
    // Print RTCC chime enable
    if (RTCALRMbits.CHIME) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC Alarm chime is %s\n\r",
            RTCALRMbits.CHIME ? "enabled" : "disabled");
    
    // Print RTCC PIV
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC Alarm pulse is %d\n\r",
            RTCALRMbits.PIV);
    
    // Print RTCC sync enable
    if (!RTCALRMbits.ALRMSYNC) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTCC alarm value registers %s\n\r",
            !RTCALRMbits.ALRMSYNC ? "can be read" : "cannot be read (data is changing)");
    
    // print RTC alarm mask
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    RTC alarm mask: ");
    switch (RTCALRMbits.AMASK) {
        case 0b0000: 
            printf("Every half-second\r\n");
            break;
        case 0b0001: 
            printf("Every second\r\n");
            break;
        case 0b0010: 
            printf("Every 10 seconds\r\n");
            break;
        case 0b0011: 
            printf("Every minute\r\n");
            break;
        case 0b0100: 
            printf("Every 10 minutes\r\n");
            break;
        case 0b0101: 
            printf("Every hour\r\n");
            break;
        case 0b0110: 
            printf("Once a day\r\n");
            break;
        case 0b0111: 
            printf("Once a week\r\n");
            break;
        case 0b1000: 
            printf("Once a month\r\n");
            break;
        case 0b1001: 
            printf("Once a year (except when configured for February 29, once every four years)\r\n");
            break;
    }
    
    // print alarm repeat
    printf("    RTCC Alarm repeat value is %d\n\r",
            RTCALRMbits.ARPT);
    
    // print alarm settings
    printf("    RTCC Hardware Alarm values:\r\n");
        printf("        Time: %02u:%02u:%02u",
            (ALRMTIMEbits.HR10 * 10) + ALRMTIMEbits.HR01,
            (ALRMTIMEbits.MIN10 * 10) + ALRMTIMEbits.MIN01,
            (ALRMTIMEbits.SEC10 * 10) + ALRMTIMEbits.SEC01);
    
    printf("        Date: %s, %02u/%02u\r\n",
            getDayOfWeek(ALRMDATEbits.WDAY01),
            (ALRMDATEbits.MONTH10 * 10) + ALRMDATEbits.MONTH01,
            (ALRMDATEbits.DAY10 * 10) + ALRMDATEbits.DAY01);
    
    terminalTextAttributesReset();
    
}