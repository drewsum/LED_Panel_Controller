
#include <time.h>
#include <stdio.h>

#include "misc_i2c_devices.h"

#include "pin_macros.h"
#include "error_handler.h"
#include "ds1683_time_of_flight.h"
#include "rtcc.h"
#include "ds3231_rtc.h"

// this function initializes the logic board ETC counter
void platformETCInitialize(void) {
 
    DS1683TimeOfFlightInitialize(PLATFORM_ETC_ADDR, &error_handler.flags.platform_etc);
    
}

// this function returns elapsed time in seconds (w/ 0.25 second granularity) for logic board from I2C elapsed time counter
double platformGetETC(void) {
 
    volatile double ret_value = DS1683GetETC(PLATFORM_ETC_ADDR, &error_handler.flags.platform_etc);
    return ret_value;
    
}

// this function returns the number of power cycles for the logic board from I2C elapsed time counter
uint32_t platformGetPowerCycles(void) {
 
    return (uint32_t) DS1683GetEventCount(PLATFORM_ETC_ADDR, &error_handler.flags.platform_etc);
    
}

// this function prints config status for misc I2C devices
void miscI2CDevicesPrintStatus(void) {
 
    if (nETC_CONFIG_PIN == LOW) DS1683PrintStatus(PLATFORM_ETC_ADDR, &error_handler.flags.platform_etc);
    
    if (nBACKUP_RTC_CONFIG_PIN == LOW) DS3231PrintStatus(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    
}

// This function sets up the backup RTC to act as a fail safe to count while input power is removed
void backupRTCInitialize(void) {
 
    DS3231MRTCInitialize(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    
}

// This function stashes the current date and time saved in the internal RTCC into the backup RTC
void backupRTCStashTime(void) {
 
    DS3231MRTCStoreTime(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc, getRTCTimeStruct());
    
}

// This function recovers the time from the backup RTC and stores it into the internal RTCC
void backupRTCRestoreTime(void) {

    struct tm read_time = DS3231MRTCReadTime(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    rtccWriteTime(read_time.tm_hour, read_time.tm_min, read_time.tm_sec);
    rtccWriteWeekday(read_time.tm_wday);
    rtccWriteDate(read_time.tm_mon + 1, read_time.tm_mday, read_time.tm_year + 1900);
    
}
