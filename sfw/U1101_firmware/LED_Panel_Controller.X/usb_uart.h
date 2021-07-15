/* ************************************************************************** */
/** USB UART

  @Company
 Marquette Senior Design E44 2018-2019

  @File Name
    usb_uart.h

  @Summary
 Allows USB debugging over UART3 to a USB virtual COM port

 */
/* ************************************************************************** */

#ifndef _USB_UART_H    /* Guard against multiple inclusion */
#define _USB_UART_H

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "usb_uart_rx_lookup_table.h"

#include "uthash.h"


// Sizes of TX and RX ring buffers
#define USB_UART_TX_BUFFER_SIZE 16384
#define USB_UART_RX_BUFFER_SIZE 1024

// these macros are used to switch which UART module is used for USB_UART,
// since this is project configurable
// These map to UART SFRs
// They must all map to the same UART module
// Some macros are also used to map to interrupts
// Make sure UART modules have signals properly routed to pins using PPS

// REGISTER MAPPINGS
#define USB_UART_MODE_BITFIELD          U1MODEbits
#define USB_UART_STA_BITFIELD           U1STAbits
#define USB_UART_TX_REG                 U1TXREG
#define USB_UART_RX_REG                 U1RXREG
#define USB_UART_BRG_REG                U1BRG

// INTERRUPT MAPPINGS
#define USB_UART_TX_INT_SOURCE          UART1_Transfer_Done
#define USB_UART_RX_INT_SOURCE          UART1_Receive_Done
#define USB_UART_FAULT_INT_SOURCE       UART1_Fault
#define USB_UART_FAULT_INT_VECTOR       _UART1_FAULT_VECTOR

// TX DMA MAPPINGS
#define USB_UART_TX_DMA_CON_BITFIELD    DCH0CONbits
#define USB_UART_TX_DMA_ECON_BITFIELD   DCH0ECONbits
#define USB_UART_TX_DMA_DAT_REG         DCH0DAT
#define USB_UART_TX_DMA_SSA_REG         DCH0SSA
#define USB_UART_TX_DMA_DSA_REG         DCH0DSA
#define USB_UART_TX_DMA_SSIZ_REG        DCH0SSIZ
#define USB_UART_TX_DMA_DSIZ_REG        DCH0DSIZ
#define USB_UART_TX_DMA_CSIZ_REG        DCH0CSIZ
#define USB_UART_TX_DMA_INT_BITFIELD    DCH0INTbits
#define USB_UART_TX_DMA_INT_SOURCE      DMA_Channel_0
#define USB_UART_TX_DMA_INT_VECTOR      _DMA0_VECTOR
#define USB_UART_TX_DMA_INTCLR_REG      DCH0INTCLR

// RX DMA MAPPINGS
#define USB_UART_RX_DMA_CON_BITFIELD    DCH1CONbits
#define USB_UART_RX_DMA_ECON_BITFIELD   DCH1ECONbits
#define USB_UART_RX_DMA_DAT_REG         DCH1DAT
#define USB_UART_RX_DMA_SSA_REG         DCH1SSA
#define USB_UART_RX_DMA_DSA_REG         DCH1DSA
#define USB_UART_RX_DMA_SSIZ_REG        DCH1SSIZ
#define USB_UART_RX_DMA_DSIZ_REG        DCH1DSIZ
#define USB_UART_RX_DMA_CSIZ_REG        DCH1CSIZ
#define USB_UART_RX_DMA_INT_BITFIELD    DCH1INTbits
#define USB_UART_RX_DMA_INT_SOURCE      DMA_Channel_1
#define USB_UART_RX_DMA_INT_VECTOR      _DMA1_VECTOR
#define USB_UART_RX_DMA_INTCLR_REG      DCH1INTCLR

// this flag is set when we need to parse a received string
volatile __attribute__((coherent))  uint8_t usb_uart_rx_ready = 0;

// This is the outgoing TX USB UART buffer
char __attribute__((coherent)) usb_uart_tx_buffer[USB_UART_TX_BUFFER_SIZE];

// This is the incoming RX USB UART buffer
char __attribute__((coherent)) usb_uart_rx_buffer[USB_UART_RX_BUFFER_SIZE];

// This variable keeps track of how many bytes are used up in usb_uart_tx_buffer[]
volatile uint32_t usb_uart_tx_buffer_head = 0;

// this is a typedef for a function call based on usb uart command
typedef void (*usb_uart_command_function_t)(char *);

// this structure is the model for each usb uart command, and makes them hashable with UTHASH
// the command_name stirng is what you type to call the command over a serial port
// the command_help_message is the string that's printed to show what the command does when the help command is called
// the function func is the function called when this command is received
typedef struct usb_uart_command_s {
  
    char command_name[32];
    char command_help_message[512];
    usb_uart_command_function_t func;
    UT_hash_handle hh;
    
} usb_uart_command_t ;

// This structure is what holds the hash table. This is the initialization
// of the usb_uart commands hash table.
// DON'T TOUCH THIS!!!
usb_uart_command_t *usb_uart_commands = NULL;

// This function is used to setup DMA0 for UART transmit
void usbUartTrasmitDmaInitialize(void);

// This function is used to setup DMA1 for UART Receive
void usbUartReceiveDmaInitialize(void);

// This function initializes UART 3 for USB debugging
void usbUartInitialize(void);

// These are the USB UART Interrupt Service Routines
void __ISR(USB_UART_FAULT_INT_VECTOR, ipl1SRS) usbUartFaultISR(void);

// These are the USB UART DMA Interrupt Service Routines
void __ISR(_DMA0_VECTOR, IPL1SRS) usbUartTxDmaISR(void);
void __ISR(_DMA1_VECTOR, IPL2SRS) usbUartRxDmaISR(void);

// this function adds a usb_uart command to the usb_uart_commands hash table
void usbUartHashTableAdd(char * input_cmd_name, char * input_cmd_help_message, usb_uart_command_function_t input_cmd_func);

// This function is what interprets strings sent over USB Virtual COM Port
void usbUartRxLUTInterface(char * cmd_string);

// Print help message, prints out list of all commands
void usbUartPrintHelpMessage(void);

// This function returns a string of a large number of seconds in a human readable format
char * getStringSecondsAsTime(uint32_t input_seconds);

// This function compares the "needle" string parameter to see if it is the 
// beginning of the "haystack" string variable
// Returns 0 for success, 1 for failure
uint8_t strcomp(const char * haystack, const char * needle);

// this function allows for blocking when printing over UART. it returns 1
// if the uart is currently sending characters
uint8_t usbUartCheckIfBusy(void);

#endif /* _USB_UART_H */

/* *****************************************************************************
 End of File
 */