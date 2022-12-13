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

#ifndef _DS1683_TIME_OF_FLIGHT_H    /* Guard against multiple inclusion */
#define _DS1683_TIME_OF_FLIGHT_H

#include <xc.h>
#include <stdbool.h>

#include "plib_i2c.h"

#define DS1683_COMMAND_REG          0x00
#define DS1683_STATUS_REG           0x01
#define DS1683_PWE_0_REG            0x02
#define DS1683_PWE_1_REG            0x03
#define DS1683_PWE_2_REG            0x04
#define DS1683_PWE_3_REG            0x05
#define DS1683_EVENT_0_REG          0x08
#define DS1683_EVENT_1_REG          0x09
#define DS1683_ETC_0_REG            0x0A
#define DS1683_ETC_1_REG            0x0B
#define DS1683_ETC_2_REG            0x0C
#define DS1683_ETC_3_REG            0x0D
#define DS1683_EVENT_ALRM_0_REG     0x10
#define DS1683_EVENT_ALRM_1_REG     0x11
#define DS1683_ETC_ALRM_0_REG       0x12
#define DS1683_ETC_ALRM_1_REG       0x13
#define DS1683_ETC_ALRM_2_REG       0x14
#define DS1683_ETC_ALRM_3_REG       0x15
#define DS1683_CONFIG_REG           0x16
#define DS1683_PWV_0_REG            0x1A
#define DS1683_PWV_1_REG            0x1B
#define DS1683_PWV_2_REG            0x1C
#define DS1683_PWV_3_REG            0x1D
#define DS1683_USR_MEM_0_REG        0x20
#define DS1683_USR_MEM_1_REG        0x21
#define DS1683_USR_MEM_2_REG        0x22
#define DS1683_USR_MEM_3_REG        0x23
#define DS1683_USR_MEM_4_REG        0x24
#define DS1683_USR_MEM_5_REG        0x25
#define DS1683_USR_MEM_6_REG        0x26
#define DS1683_USR_MEM_7_REG        0x27
#define DS1683_USR_MEM_8_REG        0x28
#define DS1683_USR_MEM_9_REG        0x29
#define DS1683_USR_MEM_A_REG        0x2A
#define DS1683_USR_MEM_B_REG        0x2B
#define DS1683_USR_MEM_C_REG        0x2C
#define DS1683_USR_MEM_D_REG        0x2D
#define DS1683_USR_MEM_E_REG        0x2E
#define DS1683_USR_MEM_F_REG        0x2F

// The macros set the following configuration bits of the CONFIGURATION register to disable alram functionality
/*
 * ETC ALRM EN = 0  (Disable ETC alarm)
 * EVENT ALRM EN = 0    (Disable EVENT alarm)
 * ALRM POL = 0 (Default alarm state is low)
 *  
 */
#define DS1683_CONFIG_DATA          0b00000000

// This function initializes a time of flight counter at passed address. Also pass pointer to error handler flag for device
void DS1683TimeOfFlightInitialize(uint8_t device_address, volatile uint8_t *device_error_handler_flag);


// This function gets the time of flight from counter at passed address. Also pass pointer to error handler flag for device
// returns on time in seconds with 0.25 second resolution
double DS1683GetETC(uint8_t device_address, volatile uint8_t *device_error_handler_flag);

// This function gets the event count from counter at passed address. Also pass pointer to error handler flag for device
uint32_t DS1683GetEventCount(uint8_t device_address, volatile uint8_t *device_error_handler_flag);



#endif /* _DS1683_TIME_OF_FLIGHT_H */

/* *****************************************************************************
 End of File
 */