
#include <xc.h>
#include <stdio.h>
#include <string.h>

#include "power_saving.h"
#include "terminal_control.h"

#include "device_control.h"
#include "pin_macros.h"

// This function disables unused peripherals on startup for power savings
// THIS FUNCTION CAN ONLY BE CALLED ONCE DUE TO PMD LOCKOUT AFTER ONE WRITE SESSION
void PMDInitialize(void) {

    // Unlock PMD
    PMDUnlock();
    /* If a PMD bit is set (1), that peripheral is disabled */
    
    // Enable ADC
    PMD1bits.ADCMD = 0;
 
    // Disable comparator voltage reference
    PMD1bits.CVRMD = 1;
    
    // Disable both comparators
    PMD2bits.CMP1MD = 1;
    PMD2bits.CMP2MD = 1;
    
    // Disable all input capture modules
    PMD3bits.IC1MD = 1;
    PMD3bits.IC2MD = 1;
    PMD3bits.IC3MD = 1;
    PMD3bits.IC4MD = 1;
    PMD3bits.IC5MD = 1;
    PMD3bits.IC6MD = 1;
    PMD3bits.IC7MD = 1;
    PMD3bits.IC8MD = 1;
    PMD3bits.IC9MD = 1;
    
    // Disable all output compare modules, except module 3 and 5
    PMD3bits.OC1MD = 1;
    PMD3bits.OC2MD = 1;
    PMD3bits.OC3MD = 0;
    PMD3bits.OC4MD = 1;
    PMD3bits.OC5MD = 0;
    PMD3bits.OC6MD = 1;
    PMD3bits.OC7MD = 1;
    PMD3bits.OC8MD = 1;
    PMD3bits.OC9MD = 1;
    
    // Enable all used hardware timers
    PMD4bits.T1MD = 0;
    PMD4bits.T2MD = 0;
    PMD4bits.T3MD = 0;
    PMD4bits.T4MD = 0;
    PMD4bits.T5MD = 0;
    PMD4bits.T6MD = 0;
    PMD4bits.T7MD = 0;
    PMD4bits.T8MD = 0;
    PMD4bits.T9MD = 0;
    
    // Enable UART1, disable others
    PMD5bits.U1MD = 0;
    PMD5bits.U2MD = 1;
    PMD5bits.U3MD = 1;
    PMD5bits.U4MD = 1;
    PMD5bits.U5MD = 1;
    PMD5bits.U6MD = 1;
    
    // Disable all SPI Modules
    PMD5bits.SPI1MD = 1;
    PMD5bits.SPI2MD = 1;
    PMD5bits.SPI3MD = 0;                
    PMD5bits.SPI4MD = 0;
    #ifdef SPI5CON
    PMD5bits.SPI5MD = 0;
    #endif
    #ifdef SPI6CON
    PMD5bits.SPI6MD = 1;
    #endif
    
    // Disable all I2C Modules besides I2C5
    PMD5bits.I2C1MD = 1;
    #ifdef I2C2CON
    PMD5bits.I2C2MD = 1;
    #endif
    PMD5bits.I2C3MD = 1;
    PMD5bits.I2C4MD = 1;
    PMD5bits.I2C5MD = 0;
    
    // Disable USB Module (UART 1 is used for USB debug)
    PMD5bits.USBMD = 1;
    
    // enable real time clock/calendar
    PMD6bits.RTCCMD = 0;
    
    // Enable all reference clocks, per device errata
    PMD6bits.REFO1MD = 0;
    PMD6bits.REFO2MD = 0;
    PMD6bits.REFO3MD = 0;
    PMD6bits.REFO4MD = 0;
    
    // Enable peripheral master port
    PMD6bits.PMPMD = 0;
    
    // Disable external bus interface (EBI)
    #ifdef EBICS0
    PMD6bits.EBIMD = 1;
    #endif
    
    // Disable serial quad interface
    PMD6bits.SQI1MD = 1;
    
    // disable ethernet module
    PMD6bits.ETHMD = 1;
    
    // Enable DMA
    PMD7bits.DMAMD = 0;
    
    // Enable random number generator
    PMD7bits.RNGMD = 0;
    
    // Lock PMD
    PMDLock();
    
}


// This function prints the status of PMD settings
void printPMDStatus(void) {

    terminalTextAttributesReset();    
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Peripheral Module Disable Status:\n\r");
    
    // ADC
    if (PMD1bits.ADCMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   ADC Enabled:                              %s\n\r", PMD1bits.ADCMD ? "F" : "T");
    
    // CVREF
    if (PMD1bits.CVRMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Comparator Voltage Reference Enabled:     %s\n\r", PMD1bits.CVRMD ? "F" : "T");
    
    // Comparators
    if (PMD2bits.CMP1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Comparator 1 Enabled:                     %s\n\r", PMD2bits.CMP1MD ? "F" : "T");
    if (PMD2bits.CMP2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Comparator 2 Enabled:                     %s\n\r", PMD2bits.CMP2MD ? "F" : "T");
    
    // Input Capture Modules:
    if (PMD3bits.IC1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Input Capture 1 Enabled:                  %s\n\r", PMD3bits.IC1MD ? "F" : "T");
    if (PMD3bits.IC2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Input Capture 2 Enabled:                  %s\n\r", PMD3bits.IC2MD ? "F" : "T");
    if (PMD3bits.IC3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Input Capture 3 Enabled:                  %s\n\r", PMD3bits.IC3MD ? "F" : "T");
    if (PMD3bits.IC4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Input Capture 4 Enabled:                  %s\n\r", PMD3bits.IC4MD ? "F" : "T");
    if (PMD3bits.IC5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Input Capture 5 Enabled:                  %s\n\r", PMD3bits.IC5MD ? "F" : "T");
    if (PMD3bits.IC6MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Input Capture 6 Enabled:                  %s\n\r", PMD3bits.IC6MD ? "F" : "T");
    if (PMD3bits.IC7MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Input Capture 7 Enabled:                  %s\n\r", PMD3bits.IC7MD ? "F" : "T");
    if (PMD3bits.IC8MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Input Capture 8 Enabled:                  %s\n\r", PMD3bits.IC8MD ? "F" : "T");
    if (PMD3bits.IC9MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Input Capture 9 Enabled:                  %s\n\r", PMD3bits.IC9MD ? "F" : "T");
    
    // Output Compare Modules
    if (PMD3bits.OC1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Output Compare 1 Enabled:                 %s\n\r", PMD3bits.OC1MD ? "F" : "T");
    if (PMD3bits.OC2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Output Compare 2 Enabled:                 %s\n\r", PMD3bits.OC2MD ? "F" : "T");
    if (PMD3bits.OC3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Output Compare 3 Enabled:                 %s\n\r", PMD3bits.OC3MD ? "F" : "T");
    if (PMD3bits.OC4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Output Compare 4 Enabled:                 %s\n\r", PMD3bits.OC4MD ? "F" : "T");
    if (PMD3bits.OC5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Output Compare 5 Enabled:                 %s\n\r", PMD3bits.OC5MD ? "F" : "T");
    if (PMD3bits.OC6MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Output Compare 6 Enabled:                 %s\n\r", PMD3bits.OC6MD ? "F" : "T");
    if (PMD3bits.OC7MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Output Compare 7 Enabled:                 %s\n\r", PMD3bits.OC7MD ? "F" : "T");
    if (PMD3bits.OC8MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Output Compare 8 Enabled:                 %s\n\r", PMD3bits.OC8MD ? "F" : "T");
    if (PMD3bits.OC9MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Output Compare 9 Enabled:                 %s\n\r", PMD3bits.OC9MD ? "F" : "T");
    
    // Timers
    if (PMD4bits.T1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Timer 1 Enabled:                          %s\n\r", PMD4bits.T1MD ? "F" : "T");
    if (PMD4bits.T2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Timer 2 Enabled:                          %s\n\r", PMD4bits.T2MD ? "F" : "T");
    if (PMD4bits.T3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Timer 3 Enabled:                          %s\n\r", PMD4bits.T3MD ? "F" : "T");
    if (PMD4bits.T4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Timer 4 Enabled:                          %s\n\r", PMD4bits.T4MD ? "F" : "T");
    if (PMD4bits.T5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Timer 5 Enabled:                          %s\n\r", PMD4bits.T5MD ? "F" : "T");
    if (PMD4bits.T6MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Timer 6 Enabled:                          %s\n\r", PMD4bits.T6MD ? "F" : "T");
    if (PMD4bits.T7MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Timer 7 Enabled:                          %s\n\r", PMD4bits.T7MD ? "F" : "T");
    if (PMD4bits.T8MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Timer 8 Enabled:                          %s\n\r", PMD4bits.T8MD ? "F" : "T");
    if (PMD4bits.T9MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Timer 9 Enabled:                          %s\n\r", PMD4bits.T9MD ? "F" : "T");
    
    // UART Modules
    if (PMD5bits.U1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   UART 1 Enabled:                           %s\n\r", PMD5bits.U1MD ? "F" : "T");
    if (PMD5bits.U2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   UART 2 Enabled:                           %s\n\r", PMD5bits.U2MD ? "F" : "T");
    if (PMD5bits.U3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   UART 3 Enabled:                           %s\n\r", PMD5bits.U3MD ? "F" : "T");
    if (PMD5bits.U4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   UART 4 Enabled:                           %s\n\r", PMD5bits.U4MD ? "F" : "T");
    if (PMD5bits.U5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   UART 5 Enabled:                           %s\n\r", PMD5bits.U5MD ? "F" : "T");
    if (PMD5bits.U6MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   UART 6 Enabled:                           %s\n\r", PMD5bits.U6MD ? "F" : "T");
    
    // SPI Modules
    if (PMD5bits.SPI1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   SPI 1 Enabled:                            %s\n\r", PMD5bits.SPI1MD ? "F" : "T");
    if (PMD5bits.SPI2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   SPI 2 Enabled:                            %s\n\r", PMD5bits.SPI2MD ? "F" : "T");
    if (PMD5bits.SPI3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   SPI 3 Enabled:                            %s\n\r", PMD5bits.SPI3MD ? "F" : "T");
    if (PMD5bits.SPI4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   SPI 4 Enabled:                            %s\n\r", PMD5bits.SPI4MD ? "F" : "T");
    #ifdef SPI5CON
    if (PMD5bits.SPI5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   SPI 5 Enabled:                            %s\n\r", PMD5bits.SPI5MD ? "F" : "T");
    #endif
    #ifdef SPI6CON
    if (PMD5bits.SPI6MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   SPI 6 Enabled:                            %s\n\r", PMD5bits.SPI6MD ? "F" : "T");
    #endif
    
    // I2C Modules
    if (PMD5bits.I2C1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   I2C 1 Enabled:                            %s\n\r", PMD5bits.I2C1MD ? "F" : "T");
    #ifdef I2C2CON
    if (PMD5bits.I2C2MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   I2C 2 Enabled:                            %s\n\r", PMD5bits.I2C2MD ? "F" : "T");
    #endif
    if (PMD5bits.I2C3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   I2C 3 Enabled:                            %s\n\r", PMD5bits.I2C3MD ? "F" : "T");
    if (PMD5bits.I2C3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   I2C 4 Enabled:                            %s\n\r", PMD5bits.I2C4MD ? "F" : "T");
    if (PMD5bits.I2C5MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   I2C 5 Enabled:                            %s\n\r", PMD5bits.I2C5MD ? "F" : "T");
    
    // USB Module
    if (PMD5bits.USBMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   USB Enabled:                              %s\n\r", PMD5bits.USBMD ? "F" : "T");
    
    // RTCC
    if (PMD6bits.RTCCMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Real Time Clock Enabled:                  %s\n\r", PMD6bits.RTCCMD ? "F" : "T");
    
    // REFCLKS
    if (PMD6bits.REFO1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Reference Clock 1 Enabled:                %s\n\r", PMD6bits.REFO1MD ? "F" : "T");
    if (PMD6bits.REFO1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Reference Clock 2 Enabled:                %s\n\r", PMD6bits.REFO2MD ? "F" : "T");
    if (PMD6bits.REFO3MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Reference Clock 3 Enabled:                %s\n\r", PMD6bits.REFO3MD ? "F" : "T");
    if (PMD6bits.REFO4MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Reference Clock 4 Enabled:                %s\n\r", PMD6bits.REFO4MD ? "F" : "T");
    
    // PMP
    if (PMD6bits.PMPMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Parallel Master Port Enabled:             %s\n\r", PMD6bits.PMPMD ? "F" : "T");
    
    // EBI
    #ifdef EBICS0
    if (PMD6bits.EBIMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   External Bus Interface Enabled:           %s\n\r", PMD6bits.EBIMD ? "F" : "T");
    #endif
    
    // SQI
    if (PMD6bits.SQI1MD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Serial Quad Interface Enabled:            %s\n\r", PMD6bits.SQI1MD ? "F" : "T");
    
    // Ethernet
    if (PMD6bits.ETHMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Ethernet Enabled:                         %s\n\r", PMD6bits.ETHMD ? "F" : "T");
    
    // DMA
    if (PMD7bits.DMAMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   Direct Memory Access Enabled:             %s\n\r", PMD7bits.DMAMD ? "F" : "T");
    
    // Random Number Generator
    if (PMD7bits.RNGMD) terminalTextAttributes(RED_COLOR, BLACK_COLOR, REVERSE_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
    printf("   Random Number Generator Enabled:          %s\n\r", PMD7bits.RNGMD ? "F" : "T");
    
    // PMD Locked?
    if (CFGCONbits.PMDLOCK) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("   PMD Locked:                               %s\n\r", CFGCONbits.PMDLOCK ? "T" : "F");
    
    terminalTextAttributesReset();
    
}

