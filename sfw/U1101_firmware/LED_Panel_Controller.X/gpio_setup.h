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

#ifndef _GPIO_SETUP_H    /* Guard against multiple inclusion */
#define _GPIO_SETUP_H

#include <xc.h>

#include "device_control.h"

#define TRIS_INPUT          1
#define TRIS_OUTPUT         0

#define LAT_HIGH            1
#define LAT_LOW             0

#define ODC_ENABLE          1
#define ODC_DISABLE         0

#define ANALOG_ENABLE       1
#define ANALOG_DISABLE      0

// These macros map PPS binary settings to respective inputs and outputs
// PPS INPUTS, from table 12-2
#define  RPD2_PPS_INPUT  0b0000
#define  RPG8_PPS_INPUT  0b0001
#define  RPF4_PPS_INPUT  0b0010
#define  RPD10_PPS_INPUT 0b0011
#define  RPF1_PPS_INPUT  0b0100
#define  RPB9_PPS_INPUT  0b0101
#define  RPB10_PPS_INPUT 0b0110
#define  RPC14_PPS_INPUT 0b0111
#define  RPB5_PPS_INPUT  0b1000
#define  RPC1_PPS_INPUT  0b1010
#define  RPD14_PPS_INPUT 0b1011
#define  RPG1_PPS_INPUT  0b1100
#define  RPA14_PPS_INPUT 0b1101
#define  RPD6_PPS_INPUT  0b1110
#define  RPD3_PPS_INPUT    0b0000
#define  RPG7_PPS_INPUT    0b0001
#define  RPF5_PPS_INPUT    0b0010
#define  RPD11_PPS_INPUT   0b0011
#define  RPF0_PPS_INPUT    0b0100
#define  RPB1_PPS_INPUT    0b0101
#define  RPE5_PPS_INPUT    0b0110
#define  RPC13_PPS_INPUT   0b0111
#define  RPB3_PPS_INPUT    0b1000
#define  RPC4_PPS_INPUT    0b1010
#define  RPD15_PPS_INPUT   0b1011
#define  RPG0_PPS_INPUT    0b1100
#define  RPA15_PPS_INPUT   0b1101
#define  RPD7_PPS_INPUT    0b1110
#define  RPD9_PPS_INPUT    0b0000
#define  RPG6_PPS_INPUT    0b0001
#define  RPB8_PPS_INPUT    0b0010
#define  RPB15_PPS_INPUT   0b0011
#define  RPD4_PPS_INPUT    0b0100
#define  RPB0_PPS_INPUT    0b0101
#define  RPE3_PPS_INPUT    0b0110
#define  RPB7_PPS_INPUT    0b0111
#define  RPF12_PPS_INPUT   0b1001
#define  RPD12_PPS_INPUT   0b1010
#define  RPF8_PPS_INPUT    0b1011
#define  RPC3_PPS_INPUT    0b1100
#define  RPE9_PPS_INPUT    0b1101
#define  RPD1_PPS_INPUT    0b0000
#define  RPG9_PPS_INPUT    0b0001
#define  RPB14_PPS_INPUT   0b0010
#define  RPD0_PPS_INPUT    0b0011
#define  RPB6_PPS_INPUT    0b0101
#define  RPD5_PPS_INPUT    0b0110
#define  RPB2_PPS_INPUT    0b0111
#define  RPF3_PPS_INPUT    0b1000
#define  RPF13_PPS_INPUT   0b1001
#define  NO_CONNECT_PPS_INPUT  0b1010
#define  RPF2_PPS_INPUT    0b1011
#define  RPC2_PPS_INPUT    0b1100
#define  RPE8_PPS_INPUT    0b1101

// PPS OUTPUTS, from table 12-3
#define  NO_CONNECT_PPS_OUTPUT     0b0000
#define  U3TX_PPS_OUTPUT       0b0001
#define  U4RTS_PPS_OUTPUT      0b0010
#define  SDO1_PPS_OUTPUT       0b0101
#define  SDO2_PPS_OUTPUT       0b0110
#define  SDO3_PPS_OUTPUT       0b0111
#define  SDO5_PPS_OUTPUT       0b1001
#define  SS6_PPS_OUTPUT        0b1010
#define  OC3_PPS_OUTPUT        0b1011
#define  OC6_PPS_OUTPUT        0b1100
#define  REFCLKO4_PPS_OUTPUT       0b1101
#define  C2OUT_PPS_OUTPUT      0b1110
#define  C1TX_PPS_OUTPUT       0b1111
#define  U1TX_PPS_OUTPUT       0b0001
#define  U2RTS_PPS_OUTPUT      0b0010
#define  U5TX_PPS_OUTPUT       0b0011
#define  U6RTS_PPS_OUTPUT      0b0100
#define  SDO1_PPS_OUTPUT       0b0101
#define  SDO2_PPS_OUTPUT       0b0110
#define  SDO3_PPS_OUTPUT       0b0111
#define  SDO4_PPS_OUTPUT       0b1000
#define  SDO5_PPS_OUTPUT       0b1001
#define  OC4_PPS_OUTPUT        0b1011
#define  OC7_PPS_OUTPUT        0b1100
#define  REFCLKO1_PPS_OUTPUT       0b1111
#define  U3RTS_PPS_OUTPUT      0b0001
#define  U4TX_PPS_OUTPUT       0b0010
#define  U6TX_PPS_OUTPUT       0b0100
#define  SS1_PPS_OUTPUT        0b0101
#define  SS3_PPS_OUTPUT        0b0111
#define  SS4_PPS_OUTPUT        0b1000
#define  SS5_PPS_OUTPUT        0b1001
#define  SDO6_PPS_OUTPUT       0b1010
#define  OC5_PPS_OUTPUT        0b1011
#define  OC8_PPS_OUTPUT        0b1100
#define  C1OUT_PPS_OUTPUT      0b1110
#define  REFCLKO3_PPS_OUTPUT       0b1111
#define  U1RTS_PPS_OUTPUT      0b0001
#define  U2TX_PPS_OUTPUT       0b0010
#define  U5RTS_PPS_OUTPUT      0b0011
#define  U6TX_PPS_OUTPUT       0b0100
#define  SS2_PPS_OUTPUT        0b0110
#define  SDO4_PPS_OUTPUT       0b1000
#define  SDO6_PPS_OUTPUT       0b1010
#define  OC2_PPS_OUTPUT        0b1011
#define  OC1_PPS_OUTPUT        0b1100
#define  OC9_PPS_OUTPUT        0b1101
#define  C2TX_PPS_OUTPUT       0b1111

typedef enum {
 
    gpio_port_a,
    gpio_port_b,
    gpio_port_c,
    gpio_port_d,
    gpio_port_e,
    gpio_port_f,
    gpio_port_g,
    gpio_port_h,
    gpio_port_j,
    gpio_port_k,
    
} port_name_t;

// this function allows for a more convenient way to setup pins
void gpioPinSetup(port_name_t port_name,
        uint8_t pin_number,
        uint8_t tris_setting,
        uint8_t lat_setting,
        uint8_t open_drain_setting,
        uint8_t analog_setting);

// initializes all GPIO ports on microcontroller
void gpioInitialize (void);

// initializes port A GPIO pins
void portAGPIOInitialize (void);

// initializes port B GPIO pins
void portBGPIOInitialize (void);

// initializes port C GPIO pins
void portCGPIOInitialize (void);

// initializes port D GPIO pins
void portDGPIOInitialize (void);

// initializes port E GPIO pins
void portEGPIOInitialize (void);

// initializes port F GPIO pins
void portFGPIOInitialize (void);

// initializes port G GPIO pins
void portGGPIOInitialize (void);

#endif /* _GPIO_SETUP_H */

/* *****************************************************************************
 End of File
 */