
#include <xc.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

// These macros are needed for switching between physical and virtual memory locations
#include <sys/kmem.h>

#include "32mz_interrupt_control.h"
#include "pin_macros.h"
#include "device_control.h"
#include "usb_uart.h"
#include "terminal_control.h"
#include "error_handler.h"

// Printable Variables from other header files
extern uint32_t device_on_time_counter;
// extern reset_cause_t reset_cause;

// This function is used to setup DMA0 for UART transmit
void usbUartTrasmitDmaInitialize(void) {
 
    // Set up DMA0 for USB UART Transmit
    // From reference manual example 31-2
    // Disable DMA0 interrupt
    disableInterrupt(USB_UART_TX_DMA_INT_SOURCE);
    clearInterruptFlag(USB_UART_TX_DMA_INT_SOURCE);
    
    // Enable DMA controller
    DMACONbits.ON = 0;
    // Disable DMA CRC
    DCRCCONbits.CRCEN = 0;
    // Turn off channel 0
    USB_UART_TX_DMA_CON_BITFIELD.CHEN = 0;
    // Set channel 0 priority to 2
    USB_UART_TX_DMA_CON_BITFIELD.CHPRI = 2;
    // Disable DMA chaining
    USB_UART_TX_DMA_CON_BITFIELD.CHCHN = 0;
    
    // Start interrupt request is UART 3 TX done
    USB_UART_TX_DMA_ECON_BITFIELD.CHSIRQ = USB_UART_TX_INT_SOURCE;
    // configure DMA0 to start on an IRQ matching CHSIRQ
    USB_UART_TX_DMA_ECON_BITFIELD.SIRQEN = 1;
    // configure DMA0 to abort on pattern match where data matched USB_UART_TX_DMA_DAT_REG
    USB_UART_TX_DMA_ECON_BITFIELD.PATEN = 1;
    // pattern is 1 byte long
    USB_UART_TX_DMA_CON_BITFIELD.CHPATLEN = 0;
    // Pattern value is a null ('\0'), end of string
    USB_UART_TX_DMA_DAT_REG = '\0';
    
    // Set DMA0 source location
    USB_UART_TX_DMA_SSA_REG = KVA_TO_PA((void *) &usb_uart_tx_buffer);
    // Set DMA0 destination location
    USB_UART_TX_DMA_DSA_REG = KVA_TO_PA((void*)&USB_UART_TX_REG);
    // Set source size to size of transmit buffer
    USB_UART_TX_DMA_SSIZ_REG = USB_UART_TX_BUFFER_SIZE;
    // Set destination size to 1, since USB_UART_TX_REG is one byte long
    USB_UART_TX_DMA_DSIZ_REG = 1;
    // 1 byte transferred per event (cell size = 1)
    USB_UART_TX_DMA_CSIZ_REG = 1;
    
    // clear existing events, disable all interrupts
    USB_UART_TX_DMA_INTCLR_REG = 0x00000000;
    // enable Block Complete and error interrupts
    USB_UART_TX_DMA_INT_BITFIELD.CHBCIF = 0;
    USB_UART_TX_DMA_INT_BITFIELD.CHBCIE = 1;
    USB_UART_TX_DMA_INT_BITFIELD.CHERIF = 0;
    USB_UART_TX_DMA_INT_BITFIELD.CHERIE = 1;
    
    // Set up DMA0 interrupts
    setInterruptPriority(USB_UART_TX_DMA_INT_SOURCE, 1);
    setInterruptSubpriority(USB_UART_TX_DMA_INT_SOURCE, 3);
    clearInterruptFlag(USB_UART_TX_DMA_INT_SOURCE);
    enableInterrupt(USB_UART_TX_DMA_INT_SOURCE);
    
    // Turn on DMA
    DMACONbits.ON = 1;
    
}

// This function is used to setup DMA1 for UART Receive
void usbUartReceiveDmaInitialize(void) {
 
    // Set up DMA1 for USB UART Transmit
    // From reference manual example 31-2
    // Disable DMA1 interrupt
    disableInterrupt(USB_UART_RX_DMA_INT_SOURCE);
    clearInterruptFlag(USB_UART_RX_DMA_INT_SOURCE);
    
    // Disable DMA controller
    DMACONbits.ON = 0;
    // Disable DMA CRC
    DCRCCONbits.CRCEN = 0;
    // Turn off channel 1
    USB_UART_RX_DMA_CON_BITFIELD.CHEN = 0;
    // Set channel 1 priority to 3
    USB_UART_RX_DMA_CON_BITFIELD.CHPRI = 3;
    // Disable DMA chaining
    USB_UART_RX_DMA_CON_BITFIELD.CHCHN = 0;
    
    // Start interrupt request is UART 3 RX done
    USB_UART_RX_DMA_ECON_BITFIELD.CHSIRQ = USB_UART_RX_INT_SOURCE;
    // configure DMA1 to start on an IRQ matching CHSIRQ
    USB_UART_RX_DMA_ECON_BITFIELD.SIRQEN = 1;
    // configure DMA1 to abort on pattern match where data matched USB_UART_RX_DMA_DAT_REG
    USB_UART_RX_DMA_ECON_BITFIELD.PATEN = 1;
    // pattern is 1 byte long
    USB_UART_RX_DMA_CON_BITFIELD.CHPATLEN = 0;
    // Pattern value is a carriage return ('\r'), end of string
    USB_UART_RX_DMA_DAT_REG = '\r';
    
    // Set DMA1 source location
    USB_UART_RX_DMA_SSA_REG = KVA_TO_PA((void *) &USB_UART_RX_REG);
    // Set DMA1 destination location
    USB_UART_RX_DMA_DSA_REG = KVA_TO_PA((void*) &usb_uart_rx_buffer[0]);
    // Set source size to size of USB_UART_RX_REG
    USB_UART_RX_DMA_SSIZ_REG = 1;
    // Set destination size to size of receive buffer
    USB_UART_RX_DMA_DSIZ_REG = USB_UART_RX_BUFFER_SIZE;
    // 1 byte transferred per event (cell size = 1)
    USB_UART_RX_DMA_CSIZ_REG = 1;
    
    // clear existing events, disable all interrupts
    USB_UART_RX_DMA_INTCLR_REG = 0x00000000;
    // enable Block Complete and error interrupts
    USB_UART_RX_DMA_INT_BITFIELD.CHBCIF = 0;
    USB_UART_RX_DMA_INT_BITFIELD.CHBCIE = 1;
    USB_UART_RX_DMA_INT_BITFIELD.CHERIF = 0;
    USB_UART_RX_DMA_INT_BITFIELD.CHERIE = 1;
    
    // Set up DMA1 interrupts
    setInterruptPriority(USB_UART_RX_DMA_INT_SOURCE, 2);
    setInterruptSubpriority(USB_UART_RX_DMA_INT_SOURCE, 3);
    clearInterruptFlag(USB_UART_RX_DMA_INT_SOURCE);
    enableInterrupt(USB_UART_RX_DMA_INT_SOURCE);
    
    // Enable channel for receiving data
    USB_UART_RX_DMA_CON_BITFIELD.CHEN = 1;
    // Set up to auto-enable on pattern match
    USB_UART_RX_DMA_CON_BITFIELD.CHAEN = 1;
    
    // Turn on DMA
    DMACONbits.ON = 1;
    
}

// This function initializes UART 6 for USB debugging
void usbUartInitialize(void) {
 
    // Disable UART 3 interrupts
    disableInterrupt(USB_UART_RX_INT_SOURCE);
    disableInterrupt(USB_UART_TX_INT_SOURCE);
    disableInterrupt(USB_UART_FAULT_INT_SOURCE);
    
    // Turn off UART 3 for configuration
    USB_UART_MODE_BITFIELD.ON = 0;
    
    // stop UART 3 operation in IDLE mode
    // USB_UART_MODE_BITFIELD.SIDL = 1;
    
    // Disable IrDA encoding
    USB_UART_MODE_BITFIELD.IREN = 0;
    
    // Disable CTS, RTS signals
    // (No flow control used)
    USB_UART_MODE_BITFIELD.UEN = 0b00;
    
    // Disable loopback
    USB_UART_MODE_BITFIELD.LPBACK = 0;
    
    // Disable auto-baud
    USB_UART_MODE_BITFIELD.ABAUD = 0;
    
    // RX idle state is logic high
    USB_UART_MODE_BITFIELD.RXINV = 0;
    
    // High speed baud rate setting
    USB_UART_MODE_BITFIELD.BRGH = 0;
    
    // 8 bit data length and no parity
    USB_UART_MODE_BITFIELD.PDSEL = 0b00;
    
    // 1 stop bit
    USB_UART_MODE_BITFIELD.STSEL = 0;
    
    // Disable addressing
    USB_UART_STA_BITFIELD.ADM_EN = 0;
    
    // Interrupt on every transmitted character
    USB_UART_STA_BITFIELD.UTXISEL = 0b01;
    
    // Idle transmit state is high
    USB_UART_STA_BITFIELD.UTXINV = 0;
    
    // Disable break
    USB_UART_STA_BITFIELD.UTXBRK = 0;
    
    // Interrupt on every character received
    USB_UART_STA_BITFIELD.URXISEL = 0b00;
    
    // Disable address detection
    USB_UART_STA_BITFIELD.ADDEN = 0;
    
    // Set baud rate to 115200 bps
    // From section 21.3 of PIC32MZ reference manual
    // Input CLK is PBCLK2 (84 MHz)
    // With PBCLK2 = 84 MHz, BRGH = 1, baud rate error is 0.16%
    USB_UART_BRG_REG = 35;
    
    // Set interrupt priorities
    setInterruptPriority(USB_UART_FAULT_INT_SOURCE, 1);
    
    // Set interrupt subpriorities
    setInterruptSubpriority(USB_UART_FAULT_INT_SOURCE, 1);
    
    // Clear all UART 3 Interrupts
    clearInterruptFlag(USB_UART_FAULT_INT_SOURCE);
    clearInterruptFlag(USB_UART_TX_INT_SOURCE);
    
    // clear receive errors
    USB_UART_STA_BITFIELD.FERR = 0;
    USB_UART_STA_BITFIELD.PERR = 0;
    USB_UART_STA_BITFIELD.OERR = 0;
    
    // Enable UART 3
    USB_UART_MODE_BITFIELD.ON = 1;
    
    // Enable transmitter
    USB_UART_STA_BITFIELD.UTXEN = 1;
    
    // Enable receiver
    USB_UART_STA_BITFIELD.URXEN = 1;
    
    // Enable receive and error interrupts
    enableInterrupt(USB_UART_FAULT_INT_SOURCE);
    
    // Setup DMA0 for USB UART Transmit
    usbUartTrasmitDmaInitialize();

    // Setup DMA1 for USB UART Receive
    usbUartReceiveDmaInitialize();
    
    // setup usb uart receive commands
    usbUartHashTableInitialize();
    
}

// This is the UAB UART fault interrupt service routine
void __ISR(USB_UART_FAULT_INT_VECTOR, ipl1SRS) usbUartFaultISR(void) {
    
    error_handler.flags.USB_general_error = 1;
    if (USB_UART_STA_BITFIELD.FERR) error_handler.flags.USB_framing_error = 1;
    if (USB_UART_STA_BITFIELD.OERR) error_handler.flags.USB_overrun_error = 1;
    if (USB_UART_STA_BITFIELD.PERR) error_handler.flags.USB_parity_error = 1;
    
    USB_UART_STA_BITFIELD.PERR = 0;
    USB_UART_STA_BITFIELD.FERR = 0;
    USB_UART_STA_BITFIELD.OERR = 0;
    
    // Clear fault interrupt flag
    clearInterruptFlag(USB_UART_FAULT_INT_SOURCE);
    
}

// These are the USB UART DMA Interrupt Service Routines
void __ISR(USB_UART_TX_DMA_INT_VECTOR, IPL1SRS) usbUartTxDmaISR(void) {
 
    // Determine source of DMA 0 interrupt
    // Channel block transfer complete interrupt flag (or pattern match)
    if (USB_UART_TX_DMA_INT_BITFIELD.CHBCIF) {
        
        // clear tx buffer
        uint32_t index;
        for (index = 0; index <= usb_uart_tx_buffer_head; index++) {
         
            usb_uart_tx_buffer[index] = '\0';
            
        }
        
        usb_uart_tx_buffer_head = 0;
        
    }
    
    // channel error
    else if (USB_UART_TX_DMA_INT_BITFIELD.CHERIF) {
        
        error_handler.flags.USB_tx_dma_error = 1;
        
    }
    
    // Clear DMA controller interrupt flags
    USB_UART_TX_DMA_INTCLR_REG=0x000000ff;
    
    // Clear interrupt flag
    clearInterruptFlag(USB_UART_TX_DMA_INT_SOURCE);
    
}

// These are the USB UART DMA Interrupt Service Routines
void __ISR(USB_UART_RX_DMA_INT_VECTOR, IPL2SRS) usbUartRxDmaISR(void) {
    
    // Determine source of DMA 1 interrupt
    // Channel block transfer complete interrupt flag (or pattern match)
    if (USB_UART_RX_DMA_INT_BITFIELD.CHBCIF) {
        
        // Clear interrupt flag
        clearInterruptFlag(USB_UART_RX_DMA_INT_SOURCE);

        usb_uart_rx_ready = 1;
        
    }
    
    // channel error
    else if (USB_UART_RX_DMA_INT_BITFIELD.CHERIF) {
        
        error_handler.flags.USB_rx_dma_error = 1;
        
    }
    
    // Clear DMA controller interrupt flags
    USB_UART_RX_DMA_INTCLR_REG=0x000000ff;
    
    // Clear interrupt flag
    clearInterruptFlag(USB_UART_RX_DMA_INT_SOURCE);
    
}

// This function redirects stdout to USB_UART output, allowing printf functionality
void _mon_putc (char c) {
    
    usb_uart_tx_buffer[usb_uart_tx_buffer_head] = c;
    usb_uart_tx_buffer_head++;
    
    if (USB_UART_STA_BITFIELD.UTXBF == 0 || usb_uart_tx_buffer_head == 1) {
        
        USB_UART_TX_DMA_CON_BITFIELD.CHEN = 1;
        USB_UART_TX_DMA_ECON_BITFIELD.CFORCE = 1;
    }
}

// this function adds a usb_uart command to the usb_uart_commands hash table
void usbUartAddCommand(char * input_cmd_name, char * input_cmd_help_message, usb_uart_command_function_t input_cmd_func) {

    // Add help command to hash string
    usb_uart_command_t *cmd = malloc(sizeof(usb_uart_command_t));
    strcpy(cmd->command_name, input_cmd_name);
    strcpy(cmd->command_help_message, input_cmd_help_message);
    cmd->func = (usb_uart_command_function_t) input_cmd_func;
    HASH_ADD_STR(usb_uart_commands, command_name, cmd);
    
}


// This function is what interprets strings sent over USB Virtual COM Port
void usbUartRxLUTInterface(char * cmd_string) {
    
    usb_uart_rx_ready = 0;
    
    // Remove trailing newlines and carriage returns
    strtok(cmd_string, "\n");
    strtok(cmd_string, "\r");
    
    // iterate over usb_uart_commands hash table to find a matching command to cmd_string
    usb_uart_command_t *current_command, *temp;
    HASH_ITER(hh, usb_uart_commands, current_command, temp) {
        
        // print help message if user has passed command with "-h" flag
        char help_flag_str[64];
        strcpy(help_flag_str, current_command->command_name);
        strcat(help_flag_str, " -h");
        if (strcmp(cmd_string, help_flag_str) == 0) {
            terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("%s: %s\r\n",
                    current_command->command_name,
                    current_command->command_help_message);
            terminalTextAttributesReset();
            break;
        }
        
        // if the current entry that we've found in the hash table matches cmd_string,
        // call the function pointed to by the current entry in the hash table
        else if (strcmp(cmd_string, current_command->command_name) == 0) {
         
            current_command->func(cmd_string);
            break;
            
        }
        
        else if (strcomp(cmd_string, current_command->command_name) == 0) {
         
            current_command->func(cmd_string);
            break;
            
        }
    }
    
}

// This function returns a string of a large number of seconds in a human readable format
char * getStringSecondsAsTime(uint32_t input_seconds) {
 
    uint32_t years, days, hours, minutes, seconds, remainder;
    static char return_string[80];
    
    // clear return string
    int i;
    for (i = 0; i < strlen(return_string); i++) {
     
        return_string[i] = '\0';
        
    }
    
    char buff[20];
    
    years = input_seconds / (60 * 60 * 24 * 365);
    input_seconds -= years * (60 * 60 * 24 * 365);
    days = input_seconds / (60 * 60 * 24);
    input_seconds -= days * (60 * 60 * 24);
    hours = input_seconds / (60 * 60);
    input_seconds -= hours * (60 * 60);
    minutes = input_seconds / 60;
    input_seconds -= minutes * 60;
    seconds = input_seconds;
    
    if (years > 0) {
        
        if (years == 1) {
         
            sprintf(buff, "%d year, ", years);
            
        }
        
        else {
         
            sprintf(buff, "%d years, ", years);
            
        }
        
        strcat(return_string, buff);
        
    }
    
    if (days > 0) {
     
        if (days == 1) {
         
            sprintf(buff, "%d day, ", days);
            
        }
        
        else {
         
            sprintf(buff, "%d days, ", days);
            
        }
        
        strcat(return_string, buff);
    }
    
    if (hours > 0) {
     
        if (hours == 1) {
         
            sprintf(buff, "%d hour, ", hours);
            
        }
        
        else {
         
            sprintf(buff, "%d hours, ", hours);
            
        }
        
        strcat(return_string, buff);
        
    }
    
    if (minutes > 0) {
     
        if (minutes == 1) {
         
            sprintf(buff, "%d minute, ", minutes);
            
        }
        
        else {
         
            sprintf(buff, "%d minutes, ", minutes);
            
        }
        
        strcat(return_string, buff);
        
    }
    
    if (seconds > 0) {
     
        if (seconds == 1) {
         
            sprintf(buff, "%d second", seconds);
            
        }
        
        else {
         
            sprintf(buff, "%d seconds", seconds);
            
        }
        
        strcat(return_string, buff);
        
    }
    
    return return_string;
    
}

// This function compares the "needle" string parameter to see if it is the 
// beginning of the "haystack" string variable
// Returns 0 for success, 1 for failure
uint8_t strcomp(const char * haystack, const char * needle) {
      
    while(*needle)
    {
        // if characters differ or end of second string is reached
        if (*needle != *haystack)
            return 1;

        // move to next pair of characters
        needle++;
        haystack++;
    }

    // return the ASCII difference after converting char* to unsigned char*
    // return *(const unsigned char*)needle - *(const unsigned char*)haystack;
    return 0;
        
}

// this function allows for blocking when printing over UART. it returns 1
// if the uart is currently sending characters
uint8_t usbUartCheckIfBusy(void) {
 
    return USB_UART_TX_DMA_CON_BITFIELD.CHBUSY;
    
}