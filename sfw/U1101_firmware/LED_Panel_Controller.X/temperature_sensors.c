
#include "temperature_sensors.h"

#include <stdio.h>

#include "pin_macros.h"
#include "telemetry.h"
#include "terminal_control.h"
#include "error_handler.h"
#include "misc_i2c_devices.h"
#include "ds3231_rtc.h"


// This function initializes all temperature sensors in the project, if available
void tempSensorsInitialize(void) {
 
    MCP9804TempSensorInitialize(POS12_TEMP_SNS_ADDR, &error_handler.flags.pos12_temp);
    MCP9804TempSensorInitialize(POS3P3_TEMP_SNS_ADDR, &error_handler.flags.pos3p3_temp);
    MCP9804TempSensorInitialize(POS5_TEMP_SNS_ADDR, &error_handler.flags.pos5_temp);
    MCP9804TempSensorInitialize(USB_TEMP_SNS_ADDR, &error_handler.flags.usb_temp);
    MCP9804TempSensorInitialize(AMB_TEMP_SNS_ADDR, &error_handler.flags.amb_temp);
    
}

// this function gets temperature data for all temperature sensors
void tempSensorsRetrieveData(void) {

    telemetry.pos12.temperature         = MCP9804GetTemperature(POS12_TEMP_SNS_ADDR, &error_handler.flags.pos12_temp);
    telemetry.pos3p3.temperature        = MCP9804GetTemperature(POS3P3_TEMP_SNS_ADDR, &error_handler.flags.pos3p3_temp);
    telemetry.pos5.temperature          = MCP9804GetTemperature(POS5_TEMP_SNS_ADDR, &error_handler.flags.pos5_temp);
    telemetry.usb.temperature           = MCP9804GetTemperature(USB_TEMP_SNS_ADDR, &error_handler.flags.usb_temp);
    telemetry.ambient_temperature       = MCP9804GetTemperature(AMB_TEMP_SNS_ADDR, &error_handler.flags.amb_temp);
    
    if (nBACKUP_RTC_CONFIG_PIN == LOW) telemetry.backup_rtc_temperature    = DS3231MRTCGetTemperature(BACKUP_RTC_ADDR, &error_handler.flags.backup_rtc);
    
    temp_sense_data_request = 0;
    
}

// this function prints out the status for all temperature sensors
void printTemperatureSensorStatus(void) {
    // print config data for all temp sensors
    
    MCP9804printStatus(POS12_TEMP_SNS_ADDR, &error_handler.flags.pos12_temp);
    MCP9804printStatus(POS3P3_TEMP_SNS_ADDR, &error_handler.flags.pos3p3_temp);
    MCP9804printStatus(POS5_TEMP_SNS_ADDR, &error_handler.flags.pos5_temp);
    MCP9804printStatus(USB_TEMP_SNS_ADDR, &error_handler.flags.usb_temp);
    MCP9804printStatus(AMB_TEMP_SNS_ADDR, &error_handler.flags.amb_temp);
    
}