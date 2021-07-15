/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#include <xc.h>
#include <stdio.h>
#include <string.h>

#include "device_control.h"
#include "terminal_control.h"

// private function prototype

// this function sets up the PLL
void PLLInitialize(void);

// this function sets up reference clock 1
void REFCLK1Initialize(void);

// this function sets up reference clock 2
void REFCLK2Initialize(void);

// this function sets up reference clock 3
void REFCLK3Initialize(void);

// this function sets up reference clock 4
void REFCLK4Initialize(void);

// this function sets up peripheral bus clock 1
void PBCLK1Initialize(void);

// this function sets up peripheral bus clock 2
void PBCLK2Initialize(void);

// this function sets up peripheral bus clock 3
void PBCLK3Initialize(void);

// this function sets up peripheral bus clock 4
void PBCLK4Initialize(void);

// this function sets up peripheral bus clock 5
void PBCLK5Initialize(void);

// this function sets up peripheral bus clock 7
void PBCLK7Initialize(void);

// this function sets up peripheral bus clock 8
void PBCLK8Initialize(void);

// Unlock system function
// This function unlocks the device so that device parameters can be changed
// and the microcontroller can be reset
inline void deviceUnlock(void) {
    
     // force a lock
    SYSKEY = 0x00000000;
    // write key1 to SYSKEY per datasheet
    SYSKEY = 0xAA996655;
    // write key2 to SYSKEY per datasheet
    SYSKEY = 0x556699AA;
    
}


// Lock system function
// This function re-locks the system so that important device parameters may 
// not be changed
inline void deviceLock(void) {
    
     // write an invalid key to force lock
    SYSKEY = 0x00000000;
    
}

// Rest device function
// This function resets the microcontroller
void deviceReset(void) {
    
    // disable interrupts
    disableGlobalInterrupts();
    
    // unlock the device
    deviceUnlock();
    
    // Arm reset
    RSWRSTSET = 1;
    
    // read RSWRST register to trigger reset
    unsigned int dummy = RSWRST;
    
}

// This function is a software delay that simply counts loops while decrementing
// the argument
inline void softwareDelay(uint32_t inputDelay) {
 
    while (inputDelay > 0) {
        
        Nop();
        inputDelay--;
        
    }
    
}

// This function initializes the oscillator and PLL
// This sets up a SYSCLK of 200 MHz
// REFCLK1: Disabled
// REFCLK2: Disabled
// REFCLK3: Disabled
// REFCLK4: Disabled
// PBCLK1: 66.6 MHz
// PBCLK2: 66.6 MHz
// PBCLK3: 12.5 MHz
// PBCLK4: 66.6 MHz
// PBCLK5: 66.6 MHz
// PBCLK7: 200 MHz
// PBCLK8: 66.6M Hz
void clockInitialize(void) {
 
    // unlock the device
    deviceUnlock();
    
    // unlock clock and PLL settings
    OSCCONbits.CLKLOCK = 0;
    
    // Initialize peripheral bus clocks
    PBCLK1Initialize();
    PBCLK2Initialize();
    PBCLK3Initialize();
    PBCLK4Initialize();
    PBCLK5Initialize();
    PBCLK7Initialize();
    PBCLK8Initialize();

    // Initialize reference clocks
    REFCLK1Initialize();
    REFCLK2Initialize();
    REFCLK3Initialize();
    REFCLK4Initialize();

    // set the FRC divider to 1
    // This sets FRCDIV frequency to 8 MHz
    OSCCONbits.FRCDIV = 0b000;
    
    // Set new clock source as External Clock (POSC)
    OSCCONbits.NOSC = 0b010;
    
    // Initiate clock switch
    OSCCONbits.OSWEN = 1;
    
    // wait for switch to complete
    while (OSCCONbits.OSWEN == 1);
    
    // Initialize the PLL
    PLLInitialize();
    
    // wait for PLL to stabilize
    while (CLKSTATbits.SPDIVRDY == 0);
    
    // Set new clock source as SPLL
    OSCCONbits.NOSC = 0b001;
    
    // Initiate clock switch
    OSCCONbits.OSWEN = 1;
    
    // wait for switch to complete
    while (OSCCONbits.OSWEN == 1);
    
    // set PWM to alternate clock source, datasheet table 18-1
    CFGCONbits.OCACLK = 1;
    
    // lock clock and PLL settings
    OSCCONbits.CLKLOCK = 1;
    
    // re-lock the device
    deviceLock();
    
}

// this function sets up the PLL
void PLLInitialize(void) {
 
    // Set PLL input range as 5-10 MHz
    SPLLCONbits.PLLRANGE = 0b001;
    
    // Set the input to the PLL as POSC
    SPLLCONbits.PLLICLK = 0;
    
    // Set PLL input divider to 2
    SPLLCONbits.PLLIDIV = 0b001;
    
    // Set PLL multiplier to 100
    SPLLCONbits.PLLMULT = 0b1100011; // (99 in binary, 0b0000000 => PLL X 1)
    
    // Set PLL output divider to 3
    SPLLCONbits.PLLODIV = 0b010;
    
}

// this function sets up reference clock 1
void REFCLK1Initialize(void) {
 
    // Set REFCLK1 divider to 200
    REFO1CONbits.RODIV = 100;
    
    // source for REFCLK1 is SPLL
    REFO1CONbits.ROSEL = 0b0111;
    
    // enable REFCLK1
    REFO1CONbits.ON = 1;
    
    // Disable REFCLK1 in Idle mode
    REFO1CONbits.SIDL = 1;
    
    // enable output of REFCLK1 onto output pin
    REFO1CONbits.OE = 1;
    
    // Disable REFCLK1 in sleep
    REFO1CONbits.RSLP = 0;
    
}

// this function sets up reference clock 2
void REFCLK2Initialize(void) {
 
    // Set REFCLK2 divider to 1
    REFO2CONbits.RODIV = 0b000000000000000;
    
    // Disable REFCLK2
    REFO2CONbits.ON = 0;
    
    // Disable REFCLK2 in Idle mode
    REFO2CONbits.SIDL = 1;
    
    // Disable output of REFCLK2 onto output pin
    REFO2CONbits.OE = 0;
    
    // Disable REFCLK2 in sleep
    REFO2CONbits.RSLP = 0;
    
}

// this function sets up reference clock 3
void REFCLK3Initialize(void) {
 
    // Set REFCLK3 divider to 1
    REFO3CONbits.RODIV = 0b000000000000000;
    
    // Disable REFCLK3
    REFO3CONbits.ON = 0;
    
    // Disable REFCLK3 in Idle mode
    REFO3CONbits.SIDL = 1;
    
    // Disable output of REFCLK3 onto output pin
    REFO3CONbits.OE = 0;
    
    // Disable REFCLK3 in sleep
    REFO3CONbits.RSLP = 0;
    
}

// this function sets up reference clock 4
void REFCLK4Initialize(void) {
 
    // Set REFCLK4 divider to 1
    REFO4CONbits.RODIV = 0b000000000000000;
    
    // Disable REFCLK4
    REFO4CONbits.ON = 0;
    
    // Disable REFCLK4 in Idle mode
    REFO4CONbits.SIDL = 1;
    
    // Disable output of REFCLK4 onto output pin
    REFO4CONbits.OE = 0;
    
    // Disable REFCLK4 in sleep
    REFO4CONbits.RSLP = 0;
    
}

// this function sets up peripheral bus clock 1
void PBCLK1Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB1DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK1 divider to 3
    PB1DIVbits.PBDIV = 0b0000010;
    
    // wait for divisor to be ready for change
    while (PB1DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK1
    // (PBCLK1 cannot be turned off so the ON bit is hardwired 1 in silicon)
    
}

// this function sets up peripheral bus clock 2
void PBCLK2Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB2DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK2 divider to 3
    PB2DIVbits.PBDIV = 0b0000010;
    
    // wait for divisor to be ready for change
    while (PB2DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK2
    PB2DIVbits.ON = 1;
    
}

// this function sets up peripheral bus clock 3
void PBCLK3Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB3DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK3 divider to 16
    PB3DIVbits.PBDIV = 0b0001111;
    
    // wait for divisor to be ready for change
    while (PB3DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK3
    PB3DIVbits.ON = 1;
    
}

// this function sets up peripheral bus clock 4
void PBCLK4Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB4DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK4 divider to 3
    PB4DIVbits.PBDIV = 0b0000010;
    
    // wait for divisor to be ready for change
    while (PB4DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK4
    PB4DIVbits.ON = 1;
    
}

// this function sets up peripheral bus clock 5
void PBCLK5Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB5DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK5 divider to 3
    PB5DIVbits.PBDIV = 0b0000010;
    
    // wait for divisor to be ready for change
    while (PB5DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK5
    PB5DIVbits.ON = 1;
    
}

// this function sets up peripheral bus clock 7
void PBCLK7Initialize(void) {

    // wait for divisor to be ready for change
    while (PB7DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK7 divider to 1
    PB7DIVbits.PBDIV = 0b0000000;
    
    // wait for divisor to be ready for change
    while (PB7DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK7
    PB7DIVbits.ON = 1;
    
}

// this function sets up peripheral bus clock 8
void PBCLK8Initialize(void) {
 
    // wait for divisor to be ready for change
    while (PB8DIVbits.PBDIVRDY == 0);
    
    // Set PBCLK8 divider to 3
    PB8DIVbits.PBDIV = 0b00000010;
    
    // wait for divisor to be ready for change
    while (PB8DIVbits.PBDIVRDY == 0);
    
    // Enable PBCLK8
    PB8DIVbits.ON = 1;
    
}

// This function returns a formatted string of the clock setting
char * stringFromClockSetting(uint32_t clock_integer) {
    
    static char return_string[20];
    
    if (clock_integer >= 1000000) {
     
        sprintf(return_string, "%.2f MHz", clock_integer / 1000000.0);
        
    }
    
    else if (clock_integer >= 1000) {
     
        sprintf(return_string, "%.2f kHz", clock_integer / 1000.0);
        
    }
    
    else if (clock_integer > 0) {
     
        sprintf(return_string, "%.2f Hz", (float) clock_integer);
        
    }
    
    else if (clock_integer == 0) {
     
        sprintf(return_string, "Disabled");
        
    }
    
    return return_string;
    
}


// This function unlocks peripheral pin select
// THIS CAN ONLY BE CALLED ONCE PER DEVICE RESET!!!
void PPSUnlock(void) {

    // Unlock device
    deviceUnlock();
    
    // Unlock PPS
    CFGCONbits.IOLOCK = 0;
    
    // Lock device
    deviceLock();
    
}

// This function locks peripheral pin select
void PPSLock(void) {
    
    // Unlock device
    deviceUnlock();
    
    // Lock PPS
    CFGCONbits.IOLOCK = 1;
    
    // Lock device
    deviceLock();
    
}

// This function unlocks peripheral module disable
void PMDUnlock(void) {
    
    // Unlock device
    deviceUnlock();
    
    // Unlock PMD
    CFGCONbits.PMDLOCK = 0;
    
    // Lock device
    deviceLock();
    
}

// This function locks peripheral module disable
void PMDLock(void) {
    
    // Unlock device
    deviceUnlock();
    
    // Lock PMD
    CFGCONbits.PMDLOCK = 1;
    
    // Lock device
    deviceLock();
    
}

// This function returns a string containing the device's serial number
char * getStringSerialNumber(void) {
 
    static char return_string[20];
    
    sprintf(return_string, "0x%X%X",
        *((uint32_t *)(0xBFC54024)),
        *((uint32_t *)(0xBFC54020)));
    
    return return_string;
    
}

// This function returns a 32 bit device ID
uint32_t getDeviceID(void) {
 
    return *((uint32_t *)(0xBF800020)) & 0x0FFFFFFF;
    
}

// This function returns a string with the part number of the device from the device ID
char * getDeviceIDString(uint32_t device_ID) {
 
    switch (device_ID) {
     
        case 0x7201053:
            return "PIC32MZ0512EFE064";
            break;
            
        case 0x7206053:
            return "PIC32MZ0512EFF064";
            break;
            
        case 0x722E053:
            return "PIC32MZ0512EFK064";
            break;
            
        case 0x7202053:
            return "PIC32MZ1024EFE064";
            break;
            
        case 0x7207053:
            return "PIC32MZ1024EFF064";
            break;
            
        case 0x722F053:
            return "PIC32MZ1024EFK064";
            break;
            
        case 0x7203053:
            return "PIC32MZ1024EFG064";
            break;
            
        case 0x7208053:
            return "PIC32MZ1024EFH064";
            break;
            
        case 0x7230053:
            return "PIC32MZ1024EFM064";
            break;
            
        case 0x7204053:
            return "PIC32MZ2048EFG064";
            break;
            
        case 0x7209053:
            return "PIC32MZ2048EFH064";
            break;
            
        case 0x7231053:
            return "PIC32MZ2048EFM064";
            break;
            
        case 0x720B053:
            return "PIC32MZ0512EFE100";
            break;
            
        case 0x7210053:
            return "PIC32MZ0512EFF100";
            break;
            
        case 0x7238053:
            return "PIC32MZ0512EFK100";
            break;
            
        case 0x720C053:
            return "PIC32MZ1024EFE100";
            break;
            
        case 0x7211053:
            return "PIC32MZ1024EFF100";
            break;
            
        case 0x7239053:
            return "PIC32MZ1024EFK100";
            break;
            
        case 0x720D053:
            return "PIC32MZ1024EFG100";
            break;
            
        case 0x7212053:
            return "PIC32MZ1024EFH100";
            break;
            
        case 0x723A053:
            return "PIC32MZ1024EFM100";
            break;
            
        case 0x720E053:
            return "PIC32MZ2048EFG100";
            break;
            
        case 0x7213053:
            return "PIC32MZ2048EFH100";
            break;
            
        case 0x723B053:
            return "PIC32MZ2048EFM100";
            break;
            
        case 0x7215053:
            return "PIC32MZ0512EFE124";
            break;
            
        case 0x721A053:
            return "PIC32MZ0512EFF124";
            break;
            
        case 0x7242053:
            return "PIC32MZ0512EFK124";
            break;
            
        case 0x7216053:
            return "PIC32MZ1024EFE124";
            break;
            
        case 0x721B053:
            return "PIC32MZ1024EFF124";
            break;
            
        case 0x7243053:
            return "PIC32MZ1024EFK124";
            break;
            
        case 0x7217053:
            return "PIC32MZ1024EFG124";
            break;
            
        case 0x721C053:
            return "PIC32MZ1024EFH124";
            break;
            
        case 0x7244053:
            return "PIC32MZ1024EFM124";
            break;
            
        case 0x7218053:
            return "PIC32MZ2048EFG124";
            break;
            
        case 0x721D053:
            return "PIC32MZ2048EFH124";
            break;
            
        case 0x7245053:
            return "PIC32MZ2048EFM124";
            break;
            
        case 0x721F053:
            return "PIC32MZ0512EFE144";
            break;
            
        case 0x7224053:
            return "PIC32MZ0512EFF144";
            break;
            
        case 0x724C053:
            return "PIC32MZ0512EFK144";
            break;
            
        case 0x7220053:
            return "PIC32MZ1024EFE144";
            break;
            
        case 0x7225053:
            return "PIC32MZ1024EFF144";
            break;
            
        case 0x724D053:
            return "PIC32MZ1024EFK144";
            break;
            
        case 0x7221053:
            return "PIC32MZ1024EFG144";
            break;
            
        case 0x7226053:
            return "PIC32MZ1024EFH144";
            break;
            
        case 0x724E053:
            return "PIC32MZ1024EFM144";
            break;
            
        case 0x7222053:
            return "PIC32MZ2048EFG144";
            break;
            
        case 0x7227053:
            return "PIC32MZ2048EFH144";
            break;
            
        case 0x724F053:
            return "PIC32MZ2048EFM144";
            break;
            
        default:
            return "Undefined";
            break;
        
    }
    
}

// This function returns an 8 bit revision ID
uint8_t getRevisionID(void) {
 
    return *((uint32_t *)(0xBF800020)) & 0xF0000000 >> 28;
    
}

// This function returns a string with the revision ID
char * getRevisionIDString(uint8_t revision_ID) {
 
    switch (revision_ID) {
    
        case 0x1:
            return "A1";
            break;
            
        case 0x3:
            return "A3";
            break;
            
        case 0x6:
            return "B2";
            break;
            
        default:
            return "Undefined";
            break;
        
    }
    
}

// This function prints clock settings, requires a given input sysclk
void printClockStatus(uint32_t input_sysclk) {

    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    
    // Print table heading
    printf("System Clock Settings:\n\r");

    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    // Print SYSCLK setting
    printf("    SYSCLK (System Clock) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk));
    
    // Print current oscillator configuration
    printf("\n\r    Current Oscillator Selections is: ");
    switch (OSCCONbits.COSC) {
     
        case 0b000:
            printf("Internal Fast RC (FRC) Oscillator divided by FRCDIV<2:0> bits (FRCDIV)\n\r");
            break;
            
        case 0b001:
            printf("System PLL (SPLL)\n\r");
            break;
            
        case 0b010:
            printf("Primary Oscillator (POSC) (HS or EC)\n\r");
            break;
            
        case 0b100:
            printf("Secondary Oscillator (SOSC)\n\r");
            break;
            
        case 0b101:
            printf("Internal Low-Power RC (LPRC) Oscillator\n\r");
            break;
            
        case 0b110:
            terminalTextAttributes(RED_COLOR, BLACK_COLOR, BOLD_FONT);
            printf("Back-up Fast RC (BFRC) Oscillator\n\r");
            terminalTextAttributesReset();
            
            break;
            
        case 0b111:
            printf("Internal Fast RC (FRC) Oscillator divided by FRCDIV<2:0> bits (FRCDIV)\n\r");
            break;
        
    }
    
    // Print dream mode status
    if (OSCCONbits.DRMEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    Dream Mode %s\n\r", OSCCONbits.DRMEN ? "Enabled" : "Disabled");
    
    // Print boot PLL status
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    Boot PLL Input Divider is set to: %d\n\r", (DEVCFG2bits.FPLLIDIV + 1));
    printf("    Boot PLL Multiplier is set to: %d\n\r", (DEVCFG2bits.FPLLMULT + 1));
    printf("    Boot PLL Output Divider is set to: %d\n\r", (1 << DEVCFG2bits.FPLLODIV));

    // Print operational PLL status
    printf("\n\r    Operational PLL Input Divider is set to: %d\n\r", (SPLLCONbits.PLLIDIV + 1));
    printf("    Operational PLL Multiplier is set to: %d\n\r", (SPLLCONbits.PLLMULT + 1));
    printf("    Operational PLL Output Divider is set to: %d\n\r", (1 << SPLLCONbits.PLLODIV));

    // print PLL input clock source
    printf("\n\r    SPLL Clock Source set to: %s\n\r", SPLLCONbits.PLLICLK ? "FRC" : "POSC");
    
    // print PLL input frequency range
    // Print current oscillator configuration
    printf("    SPLL Input Frequency Range Selection: ");
    switch (SPLLCONbits.PLLRANGE) {
        case 0b101:
            printf("34-64 MHz\r\n\r\n");
            break;
        case 0b100: 
            printf("21-42 MHz\r\n\r\n");
            break;
        case 0b011: 
            printf("13-26 MHz\r\n\r\n");
            break;
        case 0b010: 
            printf("8-16 MHz\r\n\r\n");
            break;
        case 0b001:
            printf("5-10 MHz\r\n");
            break;
        case 0b000:
            printf("Bypass\r\n\r\n");
            break;
    }
    
    // Determine refclk1
    if (REFO1CONbits.ON == 0) {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("\n\r    REFCLK1 (Reference Clock 1) Disabled\n\r");
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("\n\r    REFCLK1 (Reference Clock 1) is set to: %s\n\r",
                stringFromClockSetting(input_sysclk / (2 * REFO1CONbits.RODIV)));
        
    }
    
    // Determine refclk2
    if (REFO2CONbits.ON == 0) {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK2 (Reference Clock 2) Disabled\n\r");
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK2 (Reference Clock 2) is set to: %s\n\r",
                stringFromClockSetting(input_sysclk / (2 * REFO2CONbits.RODIV)));
        
    }
    
    // Determine refclk3
    if (REFO3CONbits.ON == 0) {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK3 (Reference Clock 3) Disabled\n\r");
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK3 (Reference Clock 3) is set to: %s\n\r",
                stringFromClockSetting(input_sysclk / (2 * REFO3CONbits.RODIV)));
        
    }
    
    // Determine refclk4
    if (REFO4CONbits.ON == 0) {
     
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK4 (Reference Clock 4) Disabled\n\r");
        
    }
    
    else {
     
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    REFCLK4 (Reference Clock 4) is set to: %s\n\r",
                stringFromClockSetting(input_sysclk / (2 * REFO4CONbits.RODIV)));
        
    }
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    // Determine PBCLK1 (Cannot be disabled)
    printf("\n\r    PBCLK1 (Peripheral Bus Clock 1) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB1DIVbits.PBDIV + 1)));
    
    // Determine PBCLK2
    if (PB2DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK2 (Peripheral Bus Clock 2) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB2DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK2 (Peripheral Bus Clock 2) is disabled\r\n");
    }
    
    
    // Determine PBCLK3
    if (PB3DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK3 (Peripheral Bus Clock 3) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB3DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK3 (Peripheral Bus Clock 3) is disabled\r\n");
    }
    
    // Determine PBCLK2
    if (PB4DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK4 (Peripheral Bus Clock 4) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB4DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK4 (Peripheral Bus Clock 4) is disabled\r\n");
    }

    // Determine PBCLK5
    if (PB5DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK5 (Peripheral Bus Clock 5) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB5DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK5 (Peripheral Bus Clock 5) is disabled\r\n");
    }
    
    // Determine PBCLK7
    if (PB7DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK7 (Peripheral Bus Clock 7) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB7DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK7 (Peripheral Bus Clock 7) is disabled\r\n");
    }
    
    // Determine PBCLK2
    if (PB8DIVbits.ON) {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK8 (Peripheral Bus Clock 8) is set to: %s\n\r",
            stringFromClockSetting(input_sysclk / (PB8DIVbits.PBDIV + 1)));
    }
    else {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PBCLK8 (Peripheral Bus Clock 8) is disabled\r\n");
    }
    
    // Print clock lock status
    if (OSCCONbits.CLKLOCK) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    Clock Settings: %s\n\r", OSCCONbits.CLKLOCK ? "Locked" : "Unlocked");
    
    // Print clock failure status
    if (OSCCONbits.CF) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    Clock Fail: %s\n\r", OSCCONbits.CF ? "Detected" : "Not Detected");
    
    // Print Sleep Mode status
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    WAIT instruction enters: %s Mode\n\r", OSCCONbits.SLPEN ? "Sleep" : "Idle");
    
    // Print status of oscillators that are ready
    if (CLKSTATbits.LPRCRDY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("\n\r    LPRC Oscillator Status: %s\n\r", CLKSTATbits.LPRCRDY ? "Ready" : "Not Ready");
    if (CLKSTATbits.SOSCRDY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    SOSC Oscillator Status: %s\n\r", CLKSTATbits.SOSCRDY ? "Ready" : "Not Ready");
    if (CLKSTATbits.POSCRDY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    POSC Oscillator Status: %s\n\r", CLKSTATbits.POSCRDY ? "Ready" : "Not Ready");
    if (CLKSTATbits.DIVSPLLRDY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    SPLL Oscillator Status: %s\n\r", CLKSTATbits.DIVSPLLRDY ? "Ready" : "Not Ready");
    if (CLKSTATbits.FRCRDY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    FRC Oscillator Status: %s\n\r", CLKSTATbits.FRCRDY ? "Ready" : "Not Ready");

    terminalTextAttributesReset();

}

// This function initializes the random number generator
void RNGInitialize(void) {
 
    // Enable ring oscillator bias correction mode
    RNGCONbits.TRNGMODE = 1;
    
    // Change numbers continously
    RNGCONbits.CONT = 1;
    
    // Enable both TRNG and PRNG
    RNGCONbits.TRNGEN = 1;
    RNGCONbits.PRNGEN = 1;
    
    // Load seed
    RNGCONbits.LOAD = 1;
    
}

// this function prints status for the passed timer. Pass timer 1-9
void printTimerStatus(uint8_t timer_number) {

    // kick out if passed an invalid timer
    if (timer_number < 0 || timer_number > 9) return;
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Timer %u Status:\r\n", timer_number);
    
    // determine what to print based on timer number
    switch (timer_number) {
        
        case 1:
            if (T1CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Enable: %s\n\r", T1CONbits.ON ? "On" : "Off");
            
            if (T1CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Stop in Idle: %s\n\r", T1CONbits.SIDL ? "True" : "False");
            
            if (T1CONbits.TWDIS) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Async. Write: %s\n\r", T1CONbits.TWDIS ? "Enabled" : "Disabled");
            
            if (T1CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Gating: %s\n\r", T1CONbits.TGATE ? "Enabled" : "Disabled");
            
            if (T1CONbits.TSYNC) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Sync: %s\n\r", T1CONbits.TSYNC ? "Enabled" : "Disabled");
            
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 1 Clock Source: %s\n\r", T1CONbits.TCS ? "External Clock on T1CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 1 Timer Value: %u\r\n", TMR1);
            printf("    Timer 1 Period: %u\r\n", PR1);
            
            printf("    Timer 1 Prescalar: ");
            switch (T1CONbits.TCKPS) {
                case 0b11: 
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b10:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b01:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b00:
                    printf("1:1 prescale value\r\n");
                    break;
            }
            break;
        
        case 2:
            if (T2CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 2 Enable: %s\n\r", T2CONbits.ON ? "On" : "Off");
            
            if (T2CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 2 Stop in Idle: %s\n\r", T2CONbits.SIDL ? "True" : "False");
            
            if (T2CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 2 Gating: %s\n\r", T2CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 2 32 bit mode: %s\n\r", T2CONbits.T32 ? "Enabled" : "Disabled");
            printf("    Timer 2 Clock Source: %s\n\r", T2CONbits.TCS ? "External Clock on T2CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 2 Timer Value: %u\r\n", TMR2);
            printf("    Timer 2 Period: %u\r\n", PR2);
            
            printf("    Timer 2 Prescalar: ");
            switch (T2CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 3:
            if (T3CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 3 Enable: %s\n\r", T3CONbits.ON ? "On" : "Off");
            
            if (T3CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 3 Stop in Idle: %s\n\r", T3CONbits.SIDL ? "True" : "False");
            
            if (T3CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 3 Gating: %s\n\r", T3CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 3 Clock Source: %s\n\r", T3CONbits.TCS ? "External Clock on T3CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 3 Timer Value: %u\r\n", TMR3);
            printf("    Timer 3 Period: %u\r\n", PR3);
            
            printf("    Timer 3 Prescalar: ");
            switch (T3CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 4:
            if (T4CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 4 Enable: %s\n\r", T4CONbits.ON ? "On" : "Off");
            
            if (T4CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 4 Stop in Idle: %s\n\r", T4CONbits.SIDL ? "True" : "False");
            
            if (T4CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 4 Gating: %s\n\r", T4CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 4 32 bit mode: %s\n\r", T4CONbits.T32 ? "Enabled" : "Disabled");
            printf("    Timer 4 Clock Source: %s\n\r", T4CONbits.TCS ? "External Clock on T4CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 4 Timer Value: %u\r\n", TMR4);
            printf("    Timer 4 Period: %u\r\n", PR4);
            
            printf("    Timer 4 Prescalar: ");
            switch (T4CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 5:
            if (T5CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 5 Enable: %s\n\r", T5CONbits.ON ? "On" : "Off");
            
            if (T5CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 5 Stop in Idle: %s\n\r", T5CONbits.SIDL ? "True" : "False");
            
            if (T5CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 5 Gating: %s\n\r", T5CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 5 Clock Source: %s\n\r", T5CONbits.TCS ? "External Clock on T5CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 5 Timer Value: %u\r\n", TMR5);
            printf("    Timer 5 Period: %u\r\n", PR5);
            
            printf("    Timer 5 Prescalar: ");
            switch (T5CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 6:
            if (T6CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 6 Enable: %s\n\r", T6CONbits.ON ? "On" : "Off");
            
            if (T6CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 6 Stop in Idle: %s\n\r", T6CONbits.SIDL ? "True" : "False");
            
            if (T6CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 6 Gating: %s\n\r", T6CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 6 32 bit mode: %s\n\r", T6CONbits.T32 ? "Enabled" : "Disabled");
            printf("    Timer 6 Clock Source: %s\n\r", T6CONbits.TCS ? "External Clock on T6CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 6 Timer Value: %u\r\n", TMR6);
            printf("    Timer 6 Period: %u\r\n", PR6);
            
            printf("    Timer 6 Prescalar: ");
            switch (T6CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 7:
            if (T7CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 7 Enable: %s\n\r", T7CONbits.ON ? "On" : "Off");
            
            if (T7CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 7 Stop in Idle: %s\n\r", T7CONbits.SIDL ? "True" : "False");
            
            if (T7CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 7 Gating: %s\n\r", T7CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 7 Clock Source: %s\n\r", T7CONbits.TCS ? "External Clock on T7CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 7 Timer Value: %u\r\n", TMR7);
            printf("    Timer 7 Period: %u\r\n", PR7);
            
            printf("    Timer 7 Prescalar: ");
            switch (T7CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 8:
            if (T8CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 8 Enable: %s\n\r", T8CONbits.ON ? "On" : "Off");
            
            if (T8CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 8 Stop in Idle: %s\n\r", T8CONbits.SIDL ? "True" : "False");
            
            if (T8CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 8 Gating: %s\n\r", T8CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 8 32 bit mode: %s\n\r", T8CONbits.T32 ? "Enabled" : "Disabled");
            printf("    Timer 8 Clock Source: %s\n\r", T8CONbits.TCS ? "External Clock on T8CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 8 Timer Value: %u\r\n", TMR8);
            printf("    Timer 8 Period: %u\r\n", PR8);
            
            printf("    Timer 8 Prescalar: ");
            switch (T8CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
            
        case 9:
            if (T9CONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 9 Enable: %s\n\r", T9CONbits.ON ? "On" : "Off");
            
            if (T9CONbits.SIDL) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 9 Stop in Idle: %s\n\r", T9CONbits.SIDL ? "True" : "False");
            
            if (T9CONbits.TGATE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 9 Gating: %s\n\r", T9CONbits.TGATE ? "Enabled" : "Disabled");
        
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("    Timer 9 Clock Source: %s\n\r", T9CONbits.TCS ? "External Clock on T9CKI pin" : "Peripheral Bus Clock 3");
            printf("    Timer 9 Timer Value: %u\r\n", TMR9);
            printf("    Timer 9 Period: %u\r\n", PR9);
            
            printf("    Timer 9 Prescalar: ");
            switch (T9CONbits.TCKPS) {
                case 0b111:
                    printf("1:256 prescale value\r\n");
                    break;
                case 0b110:
                    printf("1:64 prescale value\r\n");
                    break;
                case 0b101:
                    printf("1:32 prescale value\r\n");
                    break;
                case 0b100:
                    printf("1:16 prescale value\r\n");
                    break;
                case 0b011:
                    printf("1:8 prescale value\r\n");
                    break;
                case 0b010:
                    printf("1:4 prescale value\r\n");
                    break;
                case 0b001:
                    printf("1:2 prescale value\r\n");
                    break;
                case 0b000:
                    printf("1:1 prescale value\r\n");
                    break;
                    
            }
            break;
        
    }
    
    terminalTextAttributesReset();
    
}

// this function prints status of all DMA channels
void printDMAStatus(void) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Direct Memory Access Controller Status:\r\n");
    
    if (DMACONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Controller: %s\n\r", DMACONbits.ON ? "On" : "Off");
    if (DMACONbits.SUSPEND) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA is currently %s\n\r", DMACONbits.SUSPEND ? "Suspended" : "Not Suspended");
    if (DMACONbits.DMABUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA is currently %s\n\r", DMACONbits.DMABUSY ? "Busy" : "not Busy");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Last DMA error detected (if detected) was a DMA %s\r\n", DMASTATbits.RDWR ? "Read" : "Write");
    printf("    DMA Channel active if error was detected: %s\r\n", DMASTATbits.DMACH);
    printf("    Last DMA access address if/when error occurred: 0x%08X\r\n", DMAADDR);
    
    if (DCRCCONbits.CRCEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA CRC is currently %s\n\r", DCRCCONbits.CRCEN ? "enabled" : "disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA CRC Byte Order: ");
    switch (DCRCCONbits.BYTO) {
        case 0b11:
            printf("Endian byte swap on half-word boundaries (i.e., source half-word order with reverse source byte order"
                    "per half-word)\r\n");
            break;
        case 0b10:
            printf("Swap half-words on word boundaries (i.e., reverse source half-word order with source byte order per"
                    "half-word)\r\n");
            break;
        case 0b01:
            printf("Endian byte swap on word boundaries (i.e., reverse source byte order)\r\n");
            break;
        case 0b00:
            printf("No swapping (i.e., source byte order)\r\n");
            break;
    }
    printf("    CRC Write Byte Order: %s\r\n", DCRCCONbits.WBO ? 
        "Source data is written to the destination re-ordered as defined by BYTO<1:0>" : 
        "Source data is written to the destination unaltered");
    printf("    CRC bit order: %s\r\n", DCRCCONbits.BITO ? "LSb first" : "MSb first");
    printf("    CRC polynomial length: %u\r\n", DCRCCONbits.PLEN);
    printf("    CRC append mode: %s\r\n", DCRCCONbits.CRCAPP ? "back to source" : "write to destination");
    printf("    CRC Data: 0x%08X\r\n", DCRCDATA);
    printf("    CRC XOR: 0x%08x\r\n", DCRCXOR);
    
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 0
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 0 Status:\r\n");
    if (DCH0CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0: %s\n\r", DCH0CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 0 Pattern Match Bits: 0x%02X\r\n", DCH0CONbits.CHPIGN);
    if (DCH0CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Busy: %s\n\r", DCH0CONbits.CHBUSY ? "True" : "False");
    if (DCH0CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Pattern Match: %s\n\r", DCH0CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Pattern Length: %s\n\r", DCH0CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 0 Force Events: %s\n\r", DCH0CONbits.CHAED ? "True" : "False");
    if (DCH0CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Chain Enable: %s\n\r", DCH0CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH0CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Automatic Enable: %s\n\r", DCH0CONbits.CHAEN ? "True" : "False");
    if (DCH0CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Event Detect: %s\n\r", DCH0CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Priority: %u\n\r", DCH0CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 0 Start IRQ: %u\r\n", DCH0ECONbits.CHSIRQ);
    printf("    DMA Channel 0 Abort IRQ: %u\r\n", DCH0ECONbits.CHAIRQ);
    if (DCH0ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Pattern Match: %s\n\r", DCH0ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH0ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Start IRQ Enable: %s\n\r", DCH0ECONbits.SIRQEN ? "True" : "False");
    if (DCH0ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Abort IRQ Enable: %s\n\r", DCH0ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH0INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Source Done IRQ: %s, %s\n\r", DCH0INTbits.CHSDIE ? "Enabled" : "Disabled", DCH0INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Source Half Empty IRQ: %s, %s\n\r", DCH0INTbits.CHSHIE ? "Enabled" : "Disabled", DCH0INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Destination Done IRQ: %s, %s\n\r", DCH0INTbits.CHDDIE ? "Enabled" : "Disabled", DCH0INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Destination Half Full IRQ: %s, %s\n\r", DCH0INTbits.CHDHIE ? "Enabled" : "Disabled", DCH0INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Block Transfer Complete IRQ: %s, %s\n\r", DCH0INTbits.CHBCIE ? "Enabled" : "Disabled", DCH0INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Cell Transfer Complete IRQ: %s, %s\n\r", DCH0INTbits.CHCCIE ? "Enabled" : "Disabled", DCH0INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Transfer Abort IRQ: %s, %s\n\r", DCH0INTbits.CHTAIE ? "Enabled" : "Disabled", DCH0INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH0INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Address Error IRQ: %s, %s\n\r", DCH0INTbits.CHERIE ? "Enabled" : "Disabled", DCH0INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 0 Source Start: 0x%08X\r\n", DCH0SSA);
    printf("    DMA Channel 0 Source Size: 0x%08X\r\n", DCH0SSIZ);
    printf("    DMA Channel 0 Source Pointer: 0x%08X\r\n", DCH0SPTR);
    printf("    DMA Channel 0 Destination Start: 0x%08X\r\n", DCH0DSA);
    printf("    DMA Channel 0 Destination Size: 0x%08X\r\n", DCH0DSIZ);
    printf("    DMA Channel 0 Destination Pointer: 0x%08X\r\n", DCH0DPTR);
    printf("    DMA Channel 0 Cell Size: 0x%08X\r\n", DCH0CSIZ);
    printf("    DMA Channel 0 Cell Pointer: 0x%08X\r\n", DCH0CPTR);
    printf("    DMA Channel 0 Pattern Match: 0x%04X\r\n", DCH0DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 1
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 1 Status:\r\n");
    if (DCH1CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1: %s\n\r", DCH1CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 1 Pattern Match Bits: 0x%02X\r\n", DCH1CONbits.CHPIGN);
    if (DCH1CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Busy: %s\n\r", DCH1CONbits.CHBUSY ? "True" : "False");
    if (DCH1CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Pattern Match: %s\n\r", DCH1CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Pattern Length: %s\n\r", DCH1CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 1 Force Events: %s\n\r", DCH1CONbits.CHAED ? "True" : "False");
    if (DCH1CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Chain Enable: %s\n\r", DCH1CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH1CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Automatic Enable: %s\n\r", DCH1CONbits.CHAEN ? "True" : "False");
    if (DCH1CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Event Detect: %s\n\r", DCH1CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Priority: %u\n\r", DCH1CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 1 Start IRQ: %u\r\n", DCH1ECONbits.CHSIRQ);
    printf("    DMA Channel 1 Abort IRQ: %u\r\n", DCH1ECONbits.CHAIRQ);
    if (DCH1ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Pattern Match: %s\n\r", DCH1ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH1ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Start IRQ Enable: %s\n\r", DCH1ECONbits.SIRQEN ? "True" : "False");
    if (DCH1ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Abort IRQ Enable: %s\n\r", DCH1ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH1INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Source Done IRQ: %s, %s\n\r", DCH1INTbits.CHSDIE ? "Enabled" : "Disabled", DCH1INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Source Half Empty IRQ: %s, %s\n\r", DCH1INTbits.CHSHIE ? "Enabled" : "Disabled", DCH1INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Destination Done IRQ: %s, %s\n\r", DCH1INTbits.CHDDIE ? "Enabled" : "Disabled", DCH1INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Destination Half Full IRQ: %s, %s\n\r", DCH1INTbits.CHDHIE ? "Enabled" : "Disabled", DCH1INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Block Transfer Complete IRQ: %s, %s\n\r", DCH1INTbits.CHBCIE ? "Enabled" : "Disabled", DCH1INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Cell Transfer Complete IRQ: %s, %s\n\r", DCH1INTbits.CHCCIE ? "Enabled" : "Disabled", DCH1INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Transfer Abort IRQ: %s, %s\n\r", DCH1INTbits.CHTAIE ? "Enabled" : "Disabled", DCH1INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH1INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Address Error IRQ: %s, %s\n\r", DCH1INTbits.CHERIE ? "Enabled" : "Disabled", DCH1INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 1 Source Start: 0x%08X\r\n", DCH1SSA);
    printf("    DMA Channel 1 Source Size: 0x%08X\r\n", DCH1SSIZ);
    printf("    DMA Channel 1 Source Pointer: 0x%08X\r\n", DCH1SPTR);
    printf("    DMA Channel 1 Destination Start: 0x%08X\r\n", DCH1DSA);
    printf("    DMA Channel 1 Destination Size: 0x%08X\r\n", DCH1DSIZ);
    printf("    DMA Channel 1 Destination Pointer: 0x%08X\r\n", DCH1DPTR);
    printf("    DMA Channel 1 Cell Size: 0x%08X\r\n", DCH1CSIZ);
    printf("    DMA Channel 1 Cell Pointer: 0x%08X\r\n", DCH1CPTR);
    printf("    DMA Channel 1 Pattern Match: 0x%04X\r\n", DCH1DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 2
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 2 Status:\r\n");
    if (DCH2CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2: %s\n\r", DCH2CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 2 Pattern Match Bits: 0x%02X\r\n", DCH2CONbits.CHPIGN);
    if (DCH2CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Busy: %s\n\r", DCH2CONbits.CHBUSY ? "True" : "False");
    if (DCH2CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Pattern Match: %s\n\r", DCH2CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Pattern Length: %s\n\r", DCH2CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 2 Force Events: %s\n\r", DCH2CONbits.CHAED ? "True" : "False");
    if (DCH2CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Chain Enable: %s\n\r", DCH2CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH2CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Automatic Enable: %s\n\r", DCH2CONbits.CHAEN ? "True" : "False");
    if (DCH2CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Event Detect: %s\n\r", DCH2CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Priority: %u\n\r", DCH2CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 2 Start IRQ: %u\r\n", DCH2ECONbits.CHSIRQ);
    printf("    DMA Channel 2 Abort IRQ: %u\r\n", DCH2ECONbits.CHAIRQ);
    if (DCH2ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Pattern Match: %s\n\r", DCH2ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH2ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Start IRQ Enable: %s\n\r", DCH2ECONbits.SIRQEN ? "True" : "False");
    if (DCH2ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Abort IRQ Enable: %s\n\r", DCH2ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH2INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Source Done IRQ: %s, %s\n\r", DCH2INTbits.CHSDIE ? "Enabled" : "Disabled", DCH2INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Source Half Empty IRQ: %s, %s\n\r", DCH2INTbits.CHSHIE ? "Enabled" : "Disabled", DCH2INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Destination Done IRQ: %s, %s\n\r", DCH2INTbits.CHDDIE ? "Enabled" : "Disabled", DCH2INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Destination Half Full IRQ: %s, %s\n\r", DCH2INTbits.CHDHIE ? "Enabled" : "Disabled", DCH2INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Block Transfer Complete IRQ: %s, %s\n\r", DCH2INTbits.CHBCIE ? "Enabled" : "Disabled", DCH2INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Cell Transfer Complete IRQ: %s, %s\n\r", DCH2INTbits.CHCCIE ? "Enabled" : "Disabled", DCH2INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Transfer Abort IRQ: %s, %s\n\r", DCH2INTbits.CHTAIE ? "Enabled" : "Disabled", DCH2INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH2INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Address Error IRQ: %s, %s\n\r", DCH2INTbits.CHERIE ? "Enabled" : "Disabled", DCH2INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 2 Source Start: 0x%08X\r\n", DCH2SSA);
    printf("    DMA Channel 2 Source Size: 0x%08X\r\n", DCH2SSIZ);
    printf("    DMA Channel 2 Source Pointer: 0x%08X\r\n", DCH2SPTR);
    printf("    DMA Channel 2 Destination Start: 0x%08X\r\n", DCH2DSA);
    printf("    DMA Channel 2 Destination Size: 0x%08X\r\n", DCH2DSIZ);
    printf("    DMA Channel 2 Destination Pointer: 0x%08X\r\n", DCH2DPTR);
    printf("    DMA Channel 2 Cell Size: 0x%08X\r\n", DCH2CSIZ);
    printf("    DMA Channel 2 Cell Pointer: 0x%08X\r\n", DCH2CPTR);
    printf("    DMA Channel 2 Pattern Match: 0x%04X\r\n", DCH2DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 3
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 3 Status:\r\n");
    if (DCH3CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3: %s\n\r", DCH3CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 3 Pattern Match Bits: 0x%02X\r\n", DCH3CONbits.CHPIGN);
    if (DCH3CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Busy: %s\n\r", DCH3CONbits.CHBUSY ? "True" : "False");
    if (DCH3CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Pattern Match: %s\n\r", DCH3CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Pattern Length: %s\n\r", DCH3CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 3 Force Events: %s\n\r", DCH3CONbits.CHAED ? "True" : "False");
    if (DCH3CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Chain Enable: %s\n\r", DCH3CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH3CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Automatic Enable: %s\n\r", DCH3CONbits.CHAEN ? "True" : "False");
    if (DCH3CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Event Detect: %s\n\r", DCH3CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Priority: %u\n\r", DCH3CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 3 Start IRQ: %u\r\n", DCH3ECONbits.CHSIRQ);
    printf("    DMA Channel 3 Abort IRQ: %u\r\n", DCH3ECONbits.CHAIRQ);
    if (DCH3ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Pattern Match: %s\n\r", DCH3ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH3ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Start IRQ Enable: %s\n\r", DCH3ECONbits.SIRQEN ? "True" : "False");
    if (DCH3ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Abort IRQ Enable: %s\n\r", DCH3ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH3INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Source Done IRQ: %s, %s\n\r", DCH3INTbits.CHSDIE ? "Enabled" : "Disabled", DCH3INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Source Half Empty IRQ: %s, %s\n\r", DCH3INTbits.CHSHIE ? "Enabled" : "Disabled", DCH3INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Destination Done IRQ: %s, %s\n\r", DCH3INTbits.CHDDIE ? "Enabled" : "Disabled", DCH3INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Destination Half Full IRQ: %s, %s\n\r", DCH3INTbits.CHDHIE ? "Enabled" : "Disabled", DCH3INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Block Transfer Complete IRQ: %s, %s\n\r", DCH3INTbits.CHBCIE ? "Enabled" : "Disabled", DCH3INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Cell Transfer Complete IRQ: %s, %s\n\r", DCH3INTbits.CHCCIE ? "Enabled" : "Disabled", DCH3INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Transfer Abort IRQ: %s, %s\n\r", DCH3INTbits.CHTAIE ? "Enabled" : "Disabled", DCH3INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH3INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Address Error IRQ: %s, %s\n\r", DCH3INTbits.CHERIE ? "Enabled" : "Disabled", DCH3INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 3 Source Start: 0x%08X\r\n", DCH3SSA);
    printf("    DMA Channel 3 Source Size: 0x%08X\r\n", DCH3SSIZ);
    printf("    DMA Channel 3 Source Pointer: 0x%08X\r\n", DCH3SPTR);
    printf("    DMA Channel 3 Destination Start: 0x%08X\r\n", DCH3DSA);
    printf("    DMA Channel 3 Destination Size: 0x%08X\r\n", DCH3DSIZ);
    printf("    DMA Channel 3 Destination Pointer: 0x%08X\r\n", DCH3DPTR);
    printf("    DMA Channel 3 Cell Size: 0x%08X\r\n", DCH3CSIZ);
    printf("    DMA Channel 3 Cell Pointer: 0x%08X\r\n", DCH3CPTR);
    printf("    DMA Channel 3 Pattern Match: 0x%04X\r\n", DCH3DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 4
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 4 Status:\r\n");
    if (DCH4CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4: %s\n\r", DCH4CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 4 Pattern Match Bits: 0x%02X\r\n", DCH4CONbits.CHPIGN);
    if (DCH4CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Busy: %s\n\r", DCH4CONbits.CHBUSY ? "True" : "False");
    if (DCH4CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Pattern Match: %s\n\r", DCH4CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Pattern Length: %s\n\r", DCH4CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 4 Force Events: %s\n\r", DCH4CONbits.CHAED ? "True" : "False");
    if (DCH4CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Chain Enable: %s\n\r", DCH4CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH4CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Automatic Enable: %s\n\r", DCH4CONbits.CHAEN ? "True" : "False");
    if (DCH4CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Event Detect: %s\n\r", DCH4CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Priority: %u\n\r", DCH4CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 4 Start IRQ: %u\r\n", DCH4ECONbits.CHSIRQ);
    printf("    DMA Channel 4 Abort IRQ: %u\r\n", DCH4ECONbits.CHAIRQ);
    if (DCH4ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Pattern Match: %s\n\r", DCH4ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH4ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Start IRQ Enable: %s\n\r", DCH4ECONbits.SIRQEN ? "True" : "False");
    if (DCH4ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Abort IRQ Enable: %s\n\r", DCH4ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH4INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Source Done IRQ: %s, %s\n\r", DCH4INTbits.CHSDIE ? "Enabled" : "Disabled", DCH4INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Source Half Empty IRQ: %s, %s\n\r", DCH4INTbits.CHSHIE ? "Enabled" : "Disabled", DCH4INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Destination Done IRQ: %s, %s\n\r", DCH4INTbits.CHDDIE ? "Enabled" : "Disabled", DCH4INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Destination Half Full IRQ: %s, %s\n\r", DCH4INTbits.CHDHIE ? "Enabled" : "Disabled", DCH4INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Block Transfer Complete IRQ: %s, %s\n\r", DCH4INTbits.CHBCIE ? "Enabled" : "Disabled", DCH4INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Cell Transfer Complete IRQ: %s, %s\n\r", DCH4INTbits.CHCCIE ? "Enabled" : "Disabled", DCH4INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Transfer Abort IRQ: %s, %s\n\r", DCH4INTbits.CHTAIE ? "Enabled" : "Disabled", DCH4INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH4INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Address Error IRQ: %s, %s\n\r", DCH4INTbits.CHERIE ? "Enabled" : "Disabled", DCH4INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 4 Source Start: 0x%08X\r\n", DCH4SSA);
    printf("    DMA Channel 4 Source Size: 0x%08X\r\n", DCH4SSIZ);
    printf("    DMA Channel 4 Source Pointer: 0x%08X\r\n", DCH4SPTR);
    printf("    DMA Channel 4 Destination Start: 0x%08X\r\n", DCH4DSA);
    printf("    DMA Channel 4 Destination Size: 0x%08X\r\n", DCH4DSIZ);
    printf("    DMA Channel 4 Destination Pointer: 0x%08X\r\n", DCH4DPTR);
    printf("    DMA Channel 4 Cell Size: 0x%08X\r\n", DCH4CSIZ);
    printf("    DMA Channel 4 Cell Pointer: 0x%08X\r\n", DCH4CPTR);
    printf("    DMA Channel 4 Pattern Match: 0x%04X\r\n", DCH4DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 5
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 5 Status:\r\n");
    if (DCH5CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5: %s\n\r", DCH5CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 5 Pattern Match Bits: 0x%02X\r\n", DCH5CONbits.CHPIGN);
    if (DCH5CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Busy: %s\n\r", DCH5CONbits.CHBUSY ? "True" : "False");
    if (DCH5CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Pattern Match: %s\n\r", DCH5CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Pattern Length: %s\n\r", DCH5CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 5 Force Events: %s\n\r", DCH5CONbits.CHAED ? "True" : "False");
    if (DCH5CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Chain Enable: %s\n\r", DCH5CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH5CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Automatic Enable: %s\n\r", DCH5CONbits.CHAEN ? "True" : "False");
    if (DCH5CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Event Detect: %s\n\r", DCH5CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Priority: %u\n\r", DCH5CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 5 Start IRQ: %u\r\n", DCH5ECONbits.CHSIRQ);
    printf("    DMA Channel 5 Abort IRQ: %u\r\n", DCH5ECONbits.CHAIRQ);
    if (DCH5ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Pattern Match: %s\n\r", DCH5ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH5ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Start IRQ Enable: %s\n\r", DCH5ECONbits.SIRQEN ? "True" : "False");
    if (DCH5ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Abort IRQ Enable: %s\n\r", DCH5ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH5INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Source Done IRQ: %s, %s\n\r", DCH5INTbits.CHSDIE ? "Enabled" : "Disabled", DCH5INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Source Half Empty IRQ: %s, %s\n\r", DCH5INTbits.CHSHIE ? "Enabled" : "Disabled", DCH5INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Destination Done IRQ: %s, %s\n\r", DCH5INTbits.CHDDIE ? "Enabled" : "Disabled", DCH5INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Destination Half Full IRQ: %s, %s\n\r", DCH5INTbits.CHDHIE ? "Enabled" : "Disabled", DCH5INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Block Transfer Complete IRQ: %s, %s\n\r", DCH5INTbits.CHBCIE ? "Enabled" : "Disabled", DCH5INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Cell Transfer Complete IRQ: %s, %s\n\r", DCH5INTbits.CHCCIE ? "Enabled" : "Disabled", DCH5INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Transfer Abort IRQ: %s, %s\n\r", DCH5INTbits.CHTAIE ? "Enabled" : "Disabled", DCH5INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH5INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Address Error IRQ: %s, %s\n\r", DCH5INTbits.CHERIE ? "Enabled" : "Disabled", DCH5INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 5 Source Start: 0x%08X\r\n", DCH5SSA);
    printf("    DMA Channel 5 Source Size: 0x%08X\r\n", DCH5SSIZ);
    printf("    DMA Channel 5 Source Pointer: 0x%08X\r\n", DCH5SPTR);
    printf("    DMA Channel 5 Destination Start: 0x%08X\r\n", DCH5DSA);
    printf("    DMA Channel 5 Destination Size: 0x%08X\r\n", DCH5DSIZ);
    printf("    DMA Channel 5 Destination Pointer: 0x%08X\r\n", DCH5DPTR);
    printf("    DMA Channel 5 Cell Size: 0x%08X\r\n", DCH5CSIZ);
    printf("    DMA Channel 5 Cell Pointer: 0x%08X\r\n", DCH5CPTR);
    printf("    DMA Channel 5 Pattern Match: 0x%04X\r\n", DCH5DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 6
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 6 Status:\r\n");
    if (DCH6CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6: %s\n\r", DCH6CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 6 Pattern Match Bits: 0x%02X\r\n", DCH6CONbits.CHPIGN);
    if (DCH6CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Busy: %s\n\r", DCH6CONbits.CHBUSY ? "True" : "False");
    if (DCH6CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Pattern Match: %s\n\r", DCH6CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Pattern Length: %s\n\r", DCH6CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 6 Force Events: %s\n\r", DCH6CONbits.CHAED ? "True" : "False");
    if (DCH6CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Chain Enable: %s\n\r", DCH6CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH6CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Automatic Enable: %s\n\r", DCH6CONbits.CHAEN ? "True" : "False");
    if (DCH6CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Event Detect: %s\n\r", DCH6CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Priority: %u\n\r", DCH6CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 6 Start IRQ: %u\r\n", DCH6ECONbits.CHSIRQ);
    printf("    DMA Channel 6 Abort IRQ: %u\r\n", DCH6ECONbits.CHAIRQ);
    if (DCH6ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Pattern Match: %s\n\r", DCH6ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH6ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Start IRQ Enable: %s\n\r", DCH6ECONbits.SIRQEN ? "True" : "False");
    if (DCH6ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Abort IRQ Enable: %s\n\r", DCH6ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH6INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Source Done IRQ: %s, %s\n\r", DCH6INTbits.CHSDIE ? "Enabled" : "Disabled", DCH6INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Source Half Empty IRQ: %s, %s\n\r", DCH6INTbits.CHSHIE ? "Enabled" : "Disabled", DCH6INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Destination Done IRQ: %s, %s\n\r", DCH6INTbits.CHDDIE ? "Enabled" : "Disabled", DCH6INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Destination Half Full IRQ: %s, %s\n\r", DCH6INTbits.CHDHIE ? "Enabled" : "Disabled", DCH6INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Block Transfer Complete IRQ: %s, %s\n\r", DCH6INTbits.CHBCIE ? "Enabled" : "Disabled", DCH6INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Cell Transfer Complete IRQ: %s, %s\n\r", DCH6INTbits.CHCCIE ? "Enabled" : "Disabled", DCH6INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Transfer Abort IRQ: %s, %s\n\r", DCH6INTbits.CHTAIE ? "Enabled" : "Disabled", DCH6INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH6INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Address Error IRQ: %s, %s\n\r", DCH6INTbits.CHERIE ? "Enabled" : "Disabled", DCH6INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 6 Source Start: 0x%08X\r\n", DCH6SSA);
    printf("    DMA Channel 6 Source Size: 0x%08X\r\n", DCH6SSIZ);
    printf("    DMA Channel 6 Source Pointer: 0x%08X\r\n", DCH6SPTR);
    printf("    DMA Channel 6 Destination Start: 0x%08X\r\n", DCH6DSA);
    printf("    DMA Channel 6 Destination Size: 0x%08X\r\n", DCH6DSIZ);
    printf("    DMA Channel 6 Destination Pointer: 0x%08X\r\n", DCH6DPTR);
    printf("    DMA Channel 6 Cell Size: 0x%08X\r\n", DCH6CSIZ);
    printf("    DMA Channel 6 Cell Pointer: 0x%08X\r\n", DCH6CPTR);
    printf("    DMA Channel 6 Pattern Match: 0x%04X\r\n", DCH6DAT);
    
        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // print out stuff for DMA 7
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("DMA Channel 7 Status:\r\n");
    if (DCH7CONbits.CHEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7: %s\n\r", DCH7CONbits.CHEN ? "Enabled" : "Disabled");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel 7 Pattern Match Bits: 0x%02X\r\n", DCH7CONbits.CHPIGN);
    if (DCH7CONbits.CHBUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Busy: %s\n\r", DCH7CONbits.CHBUSY ? "True" : "False");
    if (DCH7CONbits.CHPIGNEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Pattern Match: %s\n\r", DCH7CONbits.CHPIGNEN ? "Enable" : "Disable");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Pattern Length: %s\n\r", DCH7CONbits.CHPATLEN ? "2 bytes" : "1 byte");
    printf("    DMA Channel 7 Force Events: %s\n\r", DCH7CONbits.CHAED ? "True" : "False");
    if (DCH7CONbits.CHCHN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Chain Enable: %s\n\r", DCH7CONbits.CHCHN ? "Enable" : "Disable");
    if (DCH7CONbits.CHAEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Automatic Enable: %s\n\r", DCH7CONbits.CHAEN ? "True" : "False");
    if (DCH7CONbits.CHEDET) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Event Detect: %s\n\r", DCH7CONbits.CHEDET ? "True" : "False");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Priority: %u\n\r", DCH7CONbits.CHPRI);
    // DCH0ECON
    printf("    DMA Channel 7 Start IRQ: %u\r\n", DCH7ECONbits.CHSIRQ);
    printf("    DMA Channel 7 Abort IRQ: %u\r\n", DCH7ECONbits.CHAIRQ);
    if (DCH7ECONbits.PATEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Pattern Match: %s\n\r", DCH7ECONbits.PATEN ? "Enable" : "Disable");
    if (DCH7ECONbits.SIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Start IRQ Enable: %s\n\r", DCH7ECONbits.SIRQEN ? "True" : "False");
    if (DCH7ECONbits.AIRQEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Abort IRQ Enable: %s\n\r", DCH7ECONbits.AIRQEN ? "True" : "False");
    // DCH0 INT register
    if (DCH7INTbits.CHSDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Source Done IRQ: %s, %s\n\r", DCH7INTbits.CHSDIE ? "Enabled" : "Disabled", DCH7INTbits.CHSDIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHSHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Source Half Empty IRQ: %s, %s\n\r", DCH7INTbits.CHSHIE ? "Enabled" : "Disabled", DCH7INTbits.CHSHIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHDDIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Destination Done IRQ: %s, %s\n\r", DCH7INTbits.CHDDIE ? "Enabled" : "Disabled", DCH7INTbits.CHDDIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHDHIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Destination Half Full IRQ: %s, %s\n\r", DCH7INTbits.CHDHIE ? "Enabled" : "Disabled", DCH7INTbits.CHDHIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHBCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Block Transfer Complete IRQ: %s, %s\n\r", DCH7INTbits.CHBCIE ? "Enabled" : "Disabled", DCH7INTbits.CHBCIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHCCIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Cell Transfer Complete IRQ: %s, %s\n\r", DCH7INTbits.CHCCIE ? "Enabled" : "Disabled", DCH7INTbits.CHCCIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHTAIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Transfer Abort IRQ: %s, %s\n\r", DCH7INTbits.CHTAIE ? "Enabled" : "Disabled", DCH7INTbits.CHTAIF ? "Triggered" : "Not Triggered");
    if (DCH7INTbits.CHERIE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Address Error IRQ: %s, %s\n\r", DCH7INTbits.CHERIE ? "Enabled" : "Disabled", DCH7INTbits.CHERIF ? "Triggered" : "Not Triggered");
    // Channel Addressing
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    DMA Channel 7 Source Start: 0x%08X\r\n", DCH7SSA);
    printf("    DMA Channel 7 Source Size: 0x%08X\r\n", DCH7SSIZ);
    printf("    DMA Channel 7 Source Pointer: 0x%08X\r\n", DCH7SPTR);
    printf("    DMA Channel 7 Destination Start: 0x%08X\r\n", DCH7DSA);
    printf("    DMA Channel 7 Destination Size: 0x%08X\r\n", DCH7DSIZ);
    printf("    DMA Channel 7 Destination Pointer: 0x%08X\r\n", DCH7DPTR);
    printf("    DMA Channel 7 Cell Size: 0x%08X\r\n", DCH7CSIZ);
    printf("    DMA Channel 7 Cell Pointer: 0x%08X\r\n", DCH7CPTR);
    printf("    DMA Channel 7 Pattern Match: 0x%04X\r\n", DCH7DAT);
    
    terminalTextAttributesReset();
    
}