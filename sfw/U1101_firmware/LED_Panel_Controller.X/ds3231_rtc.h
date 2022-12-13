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

#ifndef _DS3231M_RTC_H    /* Guard against multiple inclusion */
#define _DS3231M_RTC_H


#include <xc.h>
#include <stdbool.h>
#include <time.h>

#include "plib_i2c.h"

// DS3231M register map
// from table 2 of datasheet
#define DS3231M_SECONDS_REG         0x00
#define DS3231M_MINUTES_REG         0x01
#define DS3231M_HOURS_REG           0x02
#define DS3231M_DAY_REG             0x03
#define DS3231M_DATE_REG            0x04
#define DS3231M_MONTH_CENT_REG      0x05
#define DS3231M_YEAR_REG            0x06
#define DS3231M_ALRM_1_SEC_REG      0x07
#define DS3231M_ALRM_1_MIN_REG      0x08
#define DS3231M_ALRM_1_HRS_REG      0x09
#define DS3231M_ALRM_1_DAY_REG      0x0A
#define DS3231M_ALRM_2_MIN_REG      0x0B
#define DS3231M_ALRM_2_HRS_REG      0x0C
#define DS3231M_ALRM_2_DAY_REG      0x0D
#define DS3231M_CONTROL_REG         0x0E
#define DS3231M_STATUS_REG          0x0F
#define DS3231M_AGING_REG           0x10
#define DS3231M_TEMP_MSB_REG        0x11
#define DS3231M_TEMP_LSB_REG        0x12

// From page 13 of datasheet
/*
 * nEOSC = 0 (enable oscillator when battery backed)
 * BBSQW = 0 (disable battery backed square wave)
 * CONV = 1 (Compensate for temperature internally)
 * INTCN = 0 (Disable output interrupts)
 * A2IE = 0 (Disable alarm 2 interrupt)
 * A1IE = 0 (Disable alarm 1 interrupt)
 * 
 */
#define DS3231M_CONTROL_DATA        0b00100000

// From page 15 of datasheet
/*
 * OSF = 0 (Enable oscillator)
 * EN32KHZ = 0 (disable 32kHz output)
 * 
 */
#define DS3231M_STATUS_DATA         0b00000000

// This function initializes an rtc at passed address. Also pass pointer to error handler flag for device
void DS3231MRTCInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

// This function reads temperature sensor data from the RTC
double DS3231MRTCGetTemperature(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

// This function stores the passed time into the RTC. Pass time as a time_t structure
void DS3231MRTCStoreTime(uint8_t device_address, volatile uint8_t *device_error_handler_flag, struct tm input_time);

// This function reads the time from the RTC
struct tm DS3231MRTCReadTime(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

// this function prints out status messages for the RTC
void DS3231PrintStatus(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

#endif /* _DS3231M_RTC_H */

/* *****************************************************************************
 End of File
 */