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

#ifndef _MCP9804_TEMP_SENSOR_H    /* Guard against multiple inclusion */
#define _MCP9804_TEMP_SENSOR_H

#include <xc.h>
#include <stdbool.h>

#include "plib_i2c.h"

// MCP9804 register pointers
// from register 5-1 of MCP9804 datasheet
#define MCP9804_CONFIG_REG          0b0001
#define MCP9804_TUPPER_REG          0b0010
#define MCP9804_TLOWER_REG          0b0011
#define MCP9804_TCRIT_REG           0b0100
#define MCP9804_TA_REG              0b0101
#define MCP9804_MANF_ID_REG         0b0110
#define MCP9804_DEV_ID_REG          0b0111
#define MCP9804_RES_REG             0b1000

// these macros hold hardcoded config data for the sensors
#define MCP9804_CONFIG_LSB          0
#define MCP9804_CONFIG_MSB          0

// This function initializes a temperature sensor at passed address. Also pass pointer to error handler flag for device
void MCP9804TempSensorInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

// this function converts the ray two byte data return from MCP9804 to a double representing temperature
double MCP9804BytesToFloat(uint8_t input_array[2]);

// this function gets data over I2C from the given I2C address and returns the converted temperature
double MCP9804GetTemperature(uint8_t input_address, volatile uint8_t *device_error_handler_flag);

// this function prints configuration status to stdio for the passed device address
void MCP9804printStatus(uint8_t input_address, volatile uint8_t *device_error_handler_flag);

#endif /* _MCP9804_TEMP_SENSOR_H */

/* *****************************************************************************
 End of File
 */