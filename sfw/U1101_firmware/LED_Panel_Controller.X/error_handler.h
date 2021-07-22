/* ************************************************************************** */
/** Error Handler

  @Company
 Marquette Senior Design E44 2018-2019

  @File Name
    error_handler.h

  @Summary
 Provides functions and variables/structures for recording and reporting errors
 during runtime

 */
/* ************************************************************************** */

#ifndef _ERROR_HANDLER_H    /* Guard against multiple inclusion */
#define _ERROR_HANDLER_H

#include <xc.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

// set this flag high to update the error LEDs the next loop through main()
volatile __attribute__((coherent))  uint8_t update_error_leds_flag;

#define ERROR_HANDLER_NUM_FLAGS  29

// Error handler structure
// Follow the convention in XC32 user's guide section 8.6.2
// Each flag indicates if the described error has occurred
// This is used for controlling status LEDs and USB debugging
// Access a flag like any C structure
 volatile union error_handler_u {
    
    struct {

        uint8_t configuration_error;    // error in device configuration at boot
        uint8_t USB_general_error;    // Error with USB debugging interface
        uint8_t USB_framing_error;    // usb uart framing error
        uint8_t USB_parity_error;    // usb uart parity error
        uint8_t USB_overrun_error;    // RX overrun error
        uint8_t USB_tx_dma_error;    // Error with usb uart tx dma
        uint8_t USB_rx_dma_error;    // Error with usb uart rx dma
        uint8_t DMT_error;    // Deadman timer error
        uint8_t system_bus_protection_violation;    // System bus protection event occurred
        uint8_t prefetch_module_SEC;    // Prefetch module recorded an SEC event
        uint8_t clock_failure;
        uint8_t WDT_timeout;
        uint8_t DMT_timeout;
        uint8_t vdd_brownout;
        uint8_t i2c_bus_collision;
        uint8_t ADC_configuration_error;
        uint8_t ADC_reference_fault;
        uint8_t pos12_temp;
        uint8_t pos3p3_temp;
        uint8_t pos5_temp;
        uint8_t usb_temp;
        uint8_t amb_temp;
        uint8_t pos12_mon;
        uint8_t pos3p3_mon;
        uint8_t pos5_mon;
        uint8_t usb_mon;
        uint8_t platform_etc;
        uint8_t backup_rtc;
        uint8_t pos5_pgood;
        uint8_t parallel_master_port;
        
    } flags;

    uint8_t flag_array[ERROR_HANDLER_NUM_FLAGS];
    
} error_handler __attribute__((persistent)) __attribute__((coherent));
    
// this array holds the names of error handler flags
const char *  error_handler_flag_names[] = {

    "Configuration",
    "USB General",
    "USB Framing",
    "USB Parity",
    "USB Overrun",
    "USB TX DMA",
    "USB RX DMA",
    "Deadman Timer",
    "System Bus Protection Violation",
    "Prefetch Module SEC",
    "Clock Failure",
    "Watchdog Timer Timeout",
    "Deadman Timer Timeout",
    "MCU VDD Brownout",
    "I2C Bus Collision",
    "ADC configuration error",
    "ADC reference fault",
    "+12V Input Temperature Sensor",
    "+3.3V Supply Temperature Sensor",
    "+5V Supply Temperature Sensor",
    "USB Port Temperature Sensor",
    "Ambient Temperature Sensor",
    "+12V Input Power Monitor",
    "+3.3V Supply Power Monitor",
    "+5V Supply Power Monitor",
    "USB Port Power Monitor",
    "Platform Elapsed Time Counter",
    "Backup RTC",
    "+5V Supply Regulation",
    "Parallel Master Port"
    
};


// This function initializes the error handler structure to detect fault conditions
void errorHandlerInitialize(void);

// System Bus Protection Violation interrupt service routine
void __ISR(_SYSTEM_BUS_PROTECTION_VECTOR, ipl1SRS) systemBusProtectionISR(void);

// This function is called when a general exception occurs
void __attribute__((nomips16)) _general_exception_handler(void);

// This function is called when a TRB exception occurs
void __attribute__((nomips16)) _simple_tlb_refill_exception_handler(void);

// This function is called when a cache error occurs
void __attribute__((nomips16)) _cache_err_exception_handler(void);

// This function is called when a bootstrap exception occurs
void __attribute__((nomips16)) _bootstrap_exception_handler(void);

// This function prints the status of the error handler flags
void printErrorHandlerStatus(void);

// This function clears the error handler flags
void clearErrorHandler(void);

// This function updates the error LEDs based on the error handler state
void updateErrorLEDs(void);

// This function prints short strings during a CPU exception
void exceptionPrint(char *input_string);

// this function checks for clock failures and records them into the error handler
void clockFailCheck(void);

#endif /* _ERROR_HANDLER_H */

/* *****************************************************************************
 End of File
 */