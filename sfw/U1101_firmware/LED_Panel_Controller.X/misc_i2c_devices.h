/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _MISC_I2C_DEVICES_H    /* Guard against multiple inclusion */
#define _MISC_I2C_DEVICES_H


#include <xc.h>
#include <time.h>

#include "plib_i2c.h"

#include "ds1683_time_of_flight.h"
// #include "ds3231_rtc.h"

// misc device I2C addresses
#define PLATFORM_ETC_ADDR           0x6B
#define BACKUP_RTC_ADDR             0x68
#define _24AA02UID_EEPROM_ADDR      0x50

// this function initializes the logic board ETC counter
void platformETCInitialize(void);

// this function returns elapsed time in seconds (w/ 0.25 second granularity) for logic board from I2C elapsed time counter
double platformGetETC(void);

// this function returns the number of power cycles for the logic board from I2C elapsed time counter
uint32_t platformGetPowerCycles(void);

// this function prints config status for misc I2C devices
void miscI2CDevicesPrintStatus(void);

// This function sets up the backup RTC to act as a fail safe to count while input power is removed
void backupRTCInitialize(void);

// This function stashes the current date and time saved in the internal RTCC into the backup RTC
void backupRTCStashTime(void);

// This function recovers the time from the backup RTC and stores it into the internal RTCC
void backupRTCRestoreTime(void);

#endif /* _MISC_I2C_DEVICES_H */

/* *****************************************************************************
 End of File
 */