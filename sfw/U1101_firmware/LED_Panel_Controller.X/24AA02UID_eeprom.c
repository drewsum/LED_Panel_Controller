
#include "24AA02UID_eeprom.h"

#include <stdio.h>

#include "plib_i2c.h"

#include "error_handler.h"
#include "device_control.h"
#include "terminal_control.h"

// write a single byte at address
void _24AA02UIDWriteByte(uint8_t device_addr, 
        uint8_t write_addr, 
        uint8_t write_byte, 
        volatile uint8_t *device_error_handler_flag) {
    
    uint8_t output_data_array[2];
    output_data_array[0] = write_addr;
    output_data_array[1] = write_byte;
    if(!I2CMaster_Write(device_addr, output_data_array, 2)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// write up to 8 bytes at address, NO MORE
void _24AA02UIDWritePage(uint8_t device_addr, 
        uint8_t write_addr, 
        uint8_t length,
        uint8_t * page_data,
        volatile uint8_t *device_error_handler_flag) {
    
    uint8_t output_data_array[length + 1];

    int i;
    for (i = 0; i < length; i++) output_data_array[i+1] = page_data[i];
    
    if(!I2CMaster_Write(device_addr, output_data_array, length + 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// read a single byte
uint8_t _24AA02UIDRandomRead(uint8_t device_addr, 
        uint8_t read_addr, 
        volatile uint8_t *device_error_handler_flag) {
    
    uint8_t data_reg_pointer[1];
    uint8_t temp[1];
    data_reg_pointer[0] = read_addr;
    if(!I2CMaster_WriteRead(device_addr, data_reg_pointer, 1, temp, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    return temp[0];
    
}

// read multiple bytes, beginning at start address
void _24AA02UIDSequentialRead(uint8_t device_addr,
        uint8_t read_addr,
        uint8_t length,
        uint8_t * read_bytes,
        volatile uint8_t *device_error_handler_flag) {
 
    uint8_t data_reg_pointer[1];
    data_reg_pointer[0] = read_addr;
    if(!I2CMaster_WriteRead(device_addr, data_reg_pointer, 1, read_bytes, length)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
}

// this function prints configuration status to stdio for the passed device address
void _24AA02UIDprintStatus(uint8_t device_addr, volatile uint8_t *device_error_handler_flag) {
    
    // first, get manufacturer ID
    uint8_t data_reg_pointer[1];
    uint8_t temp[4];
    data_reg_pointer[0] = _24AA02UID_MFG_CODE_REG;
    if(!I2CMaster_WriteRead(device_addr, data_reg_pointer, 1, temp, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    uint8_t read_mfg_id = temp[0];
    
    // Get device code
    data_reg_pointer[0] = _24AA02UID_DEV_CODE_REG;
    if(!I2CMaster_WriteRead(device_addr, data_reg_pointer, 1, temp, 1)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    uint8_t read_dev_code = temp[0];
    
    // Get serial number
    data_reg_pointer[0] = _24AA02UID_SERIAL_NUM_REG;
    if(!I2CMaster_WriteRead(device_addr, data_reg_pointer, 1, temp, 4)) {
        *device_error_handler_flag = 1;
    }
    while(i2cMasterObj.state != I2C_STATE_IDLE);
    
    uint32_t read_serial_num = (temp[0] << 24) | (temp[1] << 16) | (temp[2] << 8) | temp[0];
    
    // print read data out
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("24AA02UID I2C EEPROM, located at 0x%02X\r\n", device_addr);
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Manufacturer ID: 0x%02X\r\n", read_mfg_id);
    printf("    Device Code: 0x%02X\r\n", read_dev_code);
    printf("    Device Serial Number: 0x%08X\r\n", read_serial_num);
    terminalTextAttributesReset();
    
}
