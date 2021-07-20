
#include "ds3231_rtc.h"

#include <stdio.h>
#include <time.h>

#include "plib_i2c.h"

#include "error_handler.h"
#include "device_control.h"
#include "terminal_control.h"



// This function initializes aN rtc at passed address. Also pass pointer to error handler flag for device
void DS3231MRTCInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
    
    // Write config data to config register on input temp sensor
    uint8_t output_data_array[2];
    output_data_array[0] = DS3231M_CONTROL_REG;
    output_data_array[1] = DS3231M_CONTROL_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    
    // Write config data to config register on input temp sensor
    output_data_array[0] = DS3231M_STATUS_REG;
    output_data_array[1] = DS3231M_STATUS_DATA;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// This function reads temperature sensor data from the RTC
double DS3231MRTCGetTemperature(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
 
    // Check to see if we're starting up into a broken I2C state machine
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    uint8_t data_reg_pointer[1];
    uint8_t readBytes[2];
    data_reg_pointer[0] = DS3231M_TEMP_MSB_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    if (i2cMasterObj.state == I2C_STATE_IDLE) {
        // convert received data to volts
        // from section 8.6.3.2 of datasheet
        return (double) (readBytes[0] * 1.0) + ((readBytes[1] >> 6) * 0.25);
    }
    else {
        *device_error_handler_flag = 1;
        return 0.0;
    }
    
    
}

// This function stores the passed time into the RTC. Pass time as a time_t structure
void DS3231MRTCStoreTime(uint8_t device_address, volatile uint8_t *device_error_handler_flag, struct tm input_time) {
 
    // save passed time into variables for writing into RTC
    // First, convert time elements into BCD and shift into format for RTC
    uint8_t write_seconds_01    = input_time.tm_sec % 10;
    uint8_t write_seconds_10    = (input_time.tm_sec / 10) % 10;
    uint8_t write_seconds       = (write_seconds_10 << 4) | write_seconds_01;
    uint8_t write_minutes_01    = input_time.tm_min % 10;
    uint8_t write_minutes_10    = (input_time.tm_min / 10) % 10;
    uint8_t write_minutes       = (write_minutes_10 << 4) | write_minutes_01;
    uint8_t write_hours_01      = input_time.tm_hour % 10;
    uint8_t write_hours_10      = (input_time.tm_hour / 10) % 10;
    uint8_t write_hours         = (write_hours_10 << 4) | write_hours_01;
    
    // Now do the same with date
    uint8_t write_day           = input_time.tm_wday + 1;       // 1 indexed, unlike time.c
    uint8_t write_date_01       = input_time.tm_mday % 10;
    uint8_t write_date_10       = (input_time.tm_mday / 10) % 10;
    uint8_t write_date          = (write_date_10 << 4) | write_date_01;
    uint8_t write_month_01      = (input_time.tm_mon + 1) % 10;     // time.c encodes month 0 indexed
    uint8_t write_month_10      = ((input_time.tm_mon + 1) / 10) % 10;      // time.c encodes month as 0 indexed
    uint8_t write_month         = (write_month_10 << 4) | write_month_01;
    uint8_t write_year_01       = (input_time.tm_year - 100) % 10;      // time.c encodes year as year since 1900
    uint8_t write_year_10       = ((input_time.tm_year - 100) / 10) % 10;      // time.c encodes year as year since 1900
    uint8_t write_year          = (write_year_10 << 4) | write_year_01;
    
    // Now shit all this stuff out to the RTC itself over I2C bus
    // Seconds
    uint8_t output_data_array[2];
    output_data_array[0] = DS3231M_SECONDS_REG;
    output_data_array[1] = write_seconds;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // Minutes
    output_data_array[0] = DS3231M_MINUTES_REG;
    output_data_array[1] = write_minutes;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // hours
    output_data_array[0] = DS3231M_HOURS_REG;
    output_data_array[1] = write_hours;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // weekday
    output_data_array[0] = DS3231M_DAY_REG;
    output_data_array[1] = write_day;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // date
    output_data_array[0] = DS3231M_DATE_REG;
    output_data_array[1] = write_date;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // month
    output_data_array[0] = DS3231M_MONTH_CENT_REG;
    output_data_array[1] = write_month;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // year
    output_data_array[0] = DS3231M_YEAR_REG;
    output_data_array[1] = write_year;
    if(!I2CMaster_Write(device_address, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// This function reads the time from the RTC
struct tm DS3231MRTCReadTime(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
    
    struct tm return_time;
    uint8_t data_reg_pointer[1];
    uint8_t readBytes[1];
    
    // read seconds
    data_reg_pointer[0] = DS3231M_SECONDS_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_seconds_01 = readBytes[0] & 0x0F;
    uint8_t read_seconds_10 = (readBytes[0] >> 4) & 0x07;
    return_time.tm_sec = read_seconds_01 + (read_seconds_10 * 10);
    
    // read minutes
    data_reg_pointer[0] = DS3231M_MINUTES_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_minutes_01 = readBytes[0] & 0x0F;
    uint8_t read_minutes_10 = (readBytes[0] >> 4) & 0x07;
    return_time.tm_min = read_minutes_01 + (read_minutes_10 * 10);
    
    // read hours
    data_reg_pointer[0] = DS3231M_HOURS_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_hours_01 = readBytes[0] & 0x0F;
    uint8_t read_hours_10 = (readBytes[0] >> 4) & 0x03;
    return_time.tm_hour = read_hours_01 + (read_hours_10 * 10);
    
    // read weekday
    data_reg_pointer[0] = DS3231M_DAY_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    return_time.tm_wday = readBytes[0] - 1;
    
    // read date
    data_reg_pointer[0] = DS3231M_DATE_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_date_01 = readBytes[0] & 0x0F;
    uint8_t read_date_10 = (readBytes[0] >> 4) & 0x03;
    return_time.tm_mday = read_date_01 + (read_date_10 * 10);
    
    // read month
    data_reg_pointer[0] = DS3231M_MONTH_CENT_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_month_01 = readBytes[0] & 0x0F;
    uint8_t read_month_10 = (readBytes[0] >> 4) & 0x01;
    return_time.tm_mon = read_month_01 + (read_month_10 * 10) - 1;
    
    // read year
    data_reg_pointer[0] = DS3231M_YEAR_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_year_01 = readBytes[0] & 0x0F;
    uint8_t read_year_10 = (readBytes[0] >> 4) & 0x0F;
    return_time.tm_year = read_year_01 + (read_year_10 * 10) + 100;
    
    // send return time structure back to function call
    return return_time;
    
}

// this function prints out status messages for the RTC
void DS3231PrintStatus(uint8_t device_address, volatile uint8_t *device_error_handler_flag) {
    
    // Check to see if we're starting up into a broken I2C state machine
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    // read control register
    uint8_t data_reg_pointer[1];
    uint8_t readBytes[1];
    data_reg_pointer[0] = DS3231M_CONTROL_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_nEOSC = (readBytes[0] >> 7) & 0b1;
    uint8_t read_bbsqw = (readBytes[0] >> 6) & 0b1;
    uint8_t read_conv = (readBytes[0] >> 5) & 0b1;
    uint8_t read_rs = (readBytes[0] >> 3) & 0b11;
    uint8_t read_intcn = (readBytes[0] >> 2) & 0b1;
    uint8_t read_a2ie = (readBytes[0] >> 1) & 0b1;
    uint8_t read_a1ie = (readBytes[0] >> 0) & 0b1;
    
    // read status register
    data_reg_pointer[0] = DS3231M_STATUS_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    uint8_t read_osf = (readBytes[0] >> 7) & 0b1;
    uint8_t read_en32khz = (readBytes[0] >> 3) & 0b1;
    uint8_t read_bsy = (readBytes[0] >> 2) & 0b1;
    uint8_t read_a2f = (readBytes[0] >> 1) & 0b1;
    uint8_t read_a1f = (readBytes[0] >> 0) & 0b1;
    
    // read aging offset
    data_reg_pointer[0] = DS3231M_AGING_REG;
    if(!I2CMaster_WriteRead(device_address, &data_reg_pointer[0], 1, readBytes, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    int8_t read_aging = readBytes[0];
    
    // print all this stuff out
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DS3231 Real Time Clock, located at 0x%02X\r\n", device_address);
    if (read_nEOSC) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Internal oscillator is %s\r\n", read_nEOSC ? "disabled" : "enabled");
    if (read_bbsqw) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Battery Backed Square Wave is %s\r\n", read_bbsqw ? "enabled" : "disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Square Wave Output Frequency: ");
    switch (read_rs) {
        case 0b00: 
            printf("1Hz\r\n");
            break;
        case 0b01: 
            printf("1.024kHz\r\n");
            break;
        case 0b10: 
            printf("4.096kHz\r\n");
            break;
        case 0b11: 
            printf("8.192kHz\r\n");
            break;
    }
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    nINT/SQW pin is used for is %s\r\n", read_intcn ? "alarm interrupt output" : "square wave output");
    if (read_a2ie) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Alarm 2 is %s\r\n", read_a2ie ? "enabled" : "disabled");
    if (read_a1ie) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Alarm 1 is %s\r\n", read_a1ie ? "enabled" : "disabled");
    if (read_a2f) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Alarm 2 is %s\r\n", read_a2f ? "triggered" : "not triggered");
    if (read_a1f) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Alarm 1 is %s\r\n", read_a1f ? "triggered" : "not triggered");
    if (read_osf) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Oscillator fault has %s\r\n", read_osf ? "occurred" : "not occurred");
    if (read_en32khz) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    32kHz output pin %s\r\n", read_en32khz ? "enabled" : "disabled");
    if (read_bsy) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Internal temperature sensor ADC is currently %s\r\n", read_bsy ? "converting" : "not converting");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Aging compensation set to %d\r\n", read_aging);
    terminalTextAttributesReset();
}