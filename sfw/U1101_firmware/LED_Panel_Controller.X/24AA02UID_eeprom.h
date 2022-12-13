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

#ifndef _24AA02UID_EEPROM_H    /* Guard against multiple inclusion */
#define _24AA02UID_EEPROM_H

#include <xc.h>

#define _24AA02UID_SERIAL_NUM_REG               0xFC
#define _24AA02UID_MFG_CODE_REG                 0xFA
#define _24AA02UID_DEV_CODE_REG                 0xFB


// write a single byte at address
void _24AA02UIDWriteByte(uint8_t device_addr, uint8_t write_addr, uint8_t write_byte, volatile uint8_t *device_error_handler_flag);

// write up to 8 bytes at address, NO MORE
void _24AA02UIDWritePage(uint8_t device_addr, uint8_t write_addr, uint8_t length, uint8_t * page_data, volatile uint8_t *device_error_handler_flag);

// read a single byte
uint8_t _24AA02UIDRandomRead(uint8_t device_addr, uint8_t read_addr, volatile uint8_t *device_error_handler_flag);

// read multiple bytes, beginning at start address
void _24AA02UIDSequentialRead(uint8_t device_addr, uint8_t read_addr, uint8_t length, uint8_t * read_bytes, volatile uint8_t *device_error_handler_flag);

// this function prints configuration status to stdio for the passed device address
void _24AA02UIDprintStatus(uint8_t device_addr, volatile uint8_t *device_error_handler_flag);


#endif /* _24AA02UID_EEPROM_H */

/* *****************************************************************************
 End of File
 */
