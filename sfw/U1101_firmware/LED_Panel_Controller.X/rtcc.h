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

#ifndef _RTCC_H    /* Guard against multiple inclusion */
#define _RTCC_H

#include <xc.h>
#include <time.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "32mz_interrupt_control.h"

#include "pin_macros.h"

// This is a typedef for the day of the week
typedef enum {
    
    Sunday      = 0,
    Monday      = 1,
    Tuesday     = 2,
    Wednesday   = 3,
    Thursday    = 4,
    Friday      = 5,
    Saturday    = 6
    
} weekday_t;

// This typedef simply maps month number to month name
typedef enum {
    
    January = 1,
    February = 2,
    March = 3,
    April = 4,
    May = 5,
    June = 6,
    July = 7,
    August = 8,
    September = 9,
    October = 10,
    November = 11,
    December = 12
    
} month_t;

// This structure is a shadow register copy of the data within the RTCC, but is 
// conglomerated into binary instead of BCD (as the hdw RTCC encodes stuff in BCD)
// year includes the leading 2000
struct rtcc_shadow_t {
    
    uint8_t month;
    uint8_t day;
    uint16_t year;
    weekday_t weekday;
    uint8_t hours;
    uint8_t minutes;
    uint8_t seconds;
    
} volatile __attribute__((coherent)) rtcc_shadow;

// This function unlocks the RTCC for writing
void rtccUnlock(void);

// This function locks the RTCC so that time and date registers are not modifiable
void rtccLock(void);

// This function initializes the RTCC on reset
void rtccInitialize(void);

// This function clears all values in the RTCC
void rtccClear(void);

// This function writes the date to the RTCC
void rtccWriteDate(uint8_t month, uint8_t day, uint16_t year);

// This function writes the time to the RTCC
void rtccWriteTime(uint8_t hour, uint8_t minute, uint8_t second);

// This function writes weekday to the RTCC
void rtccWriteWeekday(weekday_t weekday);

// this function writes the passed unix time into the RTCC
void rtccWriteUnixTime(uint32_t input_unix_time);

// This function returns a string of the day of the week, given the RTCC value encoding this
char * getDayOfWeek(uint8_t day_of_week_enum);

// This function prints the current time and date to stdout
void printTimeAndDate(void);

// Real Time Clock-Calendar interrupt service routine
void __ISR(_RTCC_VECTOR, ipl3SRS) rtccISR(void);

// this function returns the raw 10 bit value of the RTC calibration setting
uint16_t getRTCCCalibration(void);

// this function sets the RTCC calibration from raw 10 bit value
void setRTCCCalibration(uint16_t input_cal);

// this function returns the contents of the RTC shadow register as a time.h tm struct
struct tm getRTCTimeStruct(void);

// this function prints debug info about the RTCC setings
void printRTCCStatus(void);

#endif /* _RTCC_H */

/* *****************************************************************************
 End of File
 */