
#include <xc.h>

#include <stdio.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

// These macros are needed for switching between physical and virtual memory locations
#include <sys/kmem.h>

#include "32mz_interrupt_control.h"

#include "pin_macros.h"
#include "terminal_control.h"
#include "error_handler.h"

#include "panel_control.h"


// this function sets up PMP for use
void PMPInitialize(void) {
 
    /* Configuration Example: Master mode 2, 16-bit data, partially multiplexed address/data, active-lo polarities. */
    /*
    IEC1CLR = 0x0004// Disable PMP interrupt
    PMCON = 0x0000;// Stop PMP module and clear control register?
    PMCONSET = 0x0B80;// Configure the addressing and polarities?
    PMMODE = 0x2A40;// Configure the mode
    PMAEN = 0xFF00;// Enable all address and Chip Select lines
    IPC7SET = 0x001C;// Set priority level = 7 and
    IPC7SET = 0x0003;// Set subpriority level = 3
    // Could have also done this in single
    // operation by assigning IPC7SET = 0x001F
    
    IEC1SET = 0x0004;// Enable PMP interrupts?
    PMCONSET = 0x8000;// Enable the PMP module
    */
    
    // disable interrupts
    disableInterrupt(Parallel_Master_Port);
    disableInterrupt(Parallel_Master_Port_Error);
    
    // Stop PMP module and clear control register?
    PMCON = 0x0000;
    
    // Enable Dual Buffer Mode
    // 1 = PMP uses separate registers for reads and writes
    // Reads: PMRADDR and PMRDIN
    // Writes: PMRWADDR and PMDOUT
    PMCONbits.DUALBUF = 1;
    
    // disable address muxing, per reference manual figure 13-45
    PMCONbits.ADRMUX = 0b00;
    
    // Enable ENB strobe
    PMCONbits.PTWREN = 1;
    
    // disable write/read strobe
    PMCONbits.PTRDEN = 0;
    
    // set chip select function as PMCS2/PMCS2A and PMCS1/PMCS1A function as address bits
    PMCONbits.CSF = 0b00;
    
    // Set PMCS2 as active high chip select
    PMCONbits.CS2P = 1;
    
    // active high ENB strobe
    PMCONbits.WRSP = 1;
    
    // Set read/write strobe polarity as READ/~WRITE
    PMCONbits.RDSP = 1;
    
    // Enable interrupt generation after every read and write cycle
    PMMODEbits.IRQM = 0b01;
    
    // Disable address incrementing
    PMMODEbits.INCM = 0b00;
    
    // 8 bit data bus (not 16 bits of data)
    PMMODEbits.MODE16 = 0;
    
    // THIS IS THE BIG KICKER
    // Set mode as Master mode 2 (PMCSx, PMRD, PMWR, PMA<x:0>, PMD<7:0> and PMD<8:15>(3))
    PMMODEbits.MODE = 0b10;
    
    // Set up PMP bus timing
    PMMODEbits.WAITB = 0b10;
    PMMODEbits.WAITM = 0b0011;
    PMMODEbits.WAITE = 0b10;
    
    // setup PMP pins
    // No address used
    PMAEN = 0x0000;
    
    enableInterrupt(Parallel_Master_Port_Error);
    
    // enable module
    PMCONbits.ON = 1;
    
}

// This ISR is triggered when a PMP error occurs
void __ISR(_PMP_ERROR_VECTOR, IPL1SRS) pmpErrorISR(void) {
    
    
    error_handler.flags.parallel_master_port = 1;
    
    clearInterruptFlag(Parallel_Master_Port_Error);
    
}

// this function prints status for parallel master port
void printPMPStatus(void) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Parallel Master Port Status:\r\n");
    
    if (PMCONbits.ON) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP On: %s\r\n", PMCONbits.ON ? "True" : "False");
    if (PMCONbits.DUALBUF) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Dual Buffer Mode: %s\r\n", PMCONbits.DUALBUF ? "Enabled" : "Disabled");
    if (PMCONbits.SIDL) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Stop in Idle: %s\r\n", PMCONbits.SIDL ? "True" : "False");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Address Multiplexing: ");
    switch (PMCONbits.ADRMUX) {
        case 0b11: 
            printf("Lower 8 bits of address are multiplexed on PMD<15:0> pins; upper 8 bits are not used\r\n");
            break;
        case 0b10:
            printf("All 16 bits of address are multiplexed on PMD<15:0> pins\r\n");
            break;
        case 0b01:
            printf("Lower 8 bits of address are multiplexed on PMD<7:0> pins, upper bits are on PMA<15:8>\r\n");
            break;
        case 0b00:
            printf("Address and data appear on separate pins\r\n");
            break;
    }
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffers: %s\r\n", PMCONbits.PMPTTL ? "TTL" : "Schmitt Trigger");
    
    if (PMCONbits.PTWREN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP WR or ENB Strobe: %s\r\n", PMCONbits.PTWREN ? "Enabled" : "Disabled");
    
    if (PMCONbits.PTRDEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP RD or RD/~WR Strobe: %s\r\n", PMCONbits.PTRDEN ? "Enabled" : "Disabled");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Chip Select Function: ");
    switch (PMCONbits.CSF) {
        case 0b11:
            printf("Reserved\r\n");
            break;
        case 0b10:
            printf("PMCS1 and PMCS2 function as Chip Select\r\n");
            break;
        case 0b01:
            printf("PMCS2 functions as Chip Select and PMCS1 functions as address bit 14\r\n");
            break;
        case 0b00:
            printf("PMCS1 and PMCS2 function as address bit 14 and address bit 15\r\n");
            break;
    }
    
    printf("    PMP Address Latch Polarity: %s\r\n", PMCONbits.ALP ? "Active-High" : "Active-Low");
    printf("    PMP Chip Select 2 Polarity: %s\r\n", PMCONbits.CS2P ? "Active-High" : "Active-Low");
    printf("    PMP Chip Select 1 Polarity: %s\r\n", PMCONbits.CS1P ? "Active-High" : "Active-Low");
    printf("    PMP WR or ENB Strobe Polarity: %s\r\n", PMCONbits.WRSP ? "Active-High" : "Active-Low");
    printf("    PMP RD or RD/~WR Strobe Polarity: %s\r\n", PMCONbits.RDSP ? "Active-High" : "Active-Low");
    
    
    if (PMMODEbits.BUSY) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Busy: %s\r\n", PMMODEbits.BUSY ? "True" : "False");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Interrupt Mode: ");
    switch (PMMODEbits.IRQM) {
        case 0b11:
            printf("Reserved, do not use\r\n");
            break;
        case 0b10:
            printf("Interrupt is generated when Read Buffer 3 is read or Write Buffer 3 is written (Buffered PSP mode)\r\n"
                    "or on a read or write operation when PMA<1:0> =11 (Addressable Slave mode only)\r\n");
            break;
        case 0b01:
            printf("Interrupt is generated at the end of the read/write cycle\r\n");
            break;
        case 0b00:
            printf("No Interrupt is generated\r\n");
            break;
    }
    
    printf("    PMP Increment Mode: ");
    switch (PMMODEbits.INCM) {
        case 0b11:
            printf("Slave mode read and write buffers auto-increment (MODE<1:0> = 00 only)\r\n");
            break;
        case 0b10:
            printf("Decrement ADDR<15:0> and ADDR<14> by 1 every read/write cycle(2)\r\n");
            break;
        case 0b01:
            printf("Increment ADDR<15:0> and ADDR<14> by 1 every read/write cycle(2)\r\n");
            break;
        case 0b00:
            printf("No increment or decrement of address\r\n");
            break;
    }
    
    printf("    PMP Data Bus Width: %s\r\n", PMMODEbits.MODE16 ? "16-bit" : "8-bit");
    
    printf("    PMP Mode: ");
    switch (PMMODEbits.MODE) {
        case 0b11:
            printf("Master mode 1 (PMCSx, PMRD/PMWR, PMENB, PMA<x:0>, and PMD<15:0>)(3)\r\n");
            break;
        case 0b10:
            printf("Master mode 2 (PMCSx, PMRD, PMWR, PMA<x:0>, and PMD<15:0>)(3)\r\n");
            break;
        case 0b01:
            printf("Enhanced Slave mode, control signals (PMRD, PMWR, PMCSx, PMD<7:0>, and PMA<1:0>)\r\n");
            break;
        case 0b00:
            printf("Legacy Parallel Slave Port, control signals (PMRD, PMWR, PMCSx, and PMD<7:0>)\r\n");
            break;
    }
    
    printf("    PMP Data Setup to Read/Write Strobe Wait States: %u\r\n", PMMODEbits.WAITB + 1);
    printf("    PMP Data Read/Write Strobe Wait States: %u\r\n", PMMODEbits.WAITM + 1);
    printf("    PMP Data Hold After Read/Write Strobe Wait States bits: %u for write, %u for read\r\n", 
            PMMODEbits.WAITE + 1, PMMODEbits.WAITE);
    
    // print enable for PMP address bits
    int8_t address_bit;
    for (address_bit = 15; address_bit >= 0; address_bit--) {
        if ((PMADDR >> address_bit) & 0b1) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PMP Address Bit %u: %s\r\n", address_bit, ((PMADDR >> address_bit) & 0b1) ? "Enabled" : "Disabled");
    }
    
    // print PMP data register
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Data Register: 0x%04X\r\n", PMDOUT);
    printf("    PMP Write Address Register: 0x%04X\r\n", PMWADDR);
    printf("    PMP Input Data Register: 0x%04X\r\n", PMDIN);
    printf("    PMP Read Address Register: 0x%04X\r\n", PMRADDR);
    printf("    PMP Read Data Register: 0x%04X\r\n", PMRDIN);
    
    // print pin enable for PMP address bits
    int8_t pin_bit;
    for (pin_bit = 15; pin_bit >= 0; pin_bit--) {
        if ((PMAEN >> pin_bit) & 0b1) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    PMP Address Pin %u: %s\r\n", pin_bit, ((PMAEN >> pin_bit) & 0b1) ? "Address" : "Port IO");
    }
    
    // print out PMP status bits
    if (PMSTATbits.IBF) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer: %s\r\n", PMSTATbits.IBF ? "Full" : "Not Full");
    if (PMSTATbits.IBOV) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer has %s\r\n", PMSTATbits.IBOV ? "Overflowed" : "Not Overflowed");
    if (PMSTATbits.IB0F) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer 0: %s\r\n", PMSTATbits.IB0F ? "Full" : "Not Full");
    if (PMSTATbits.IB1F) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer 1: %s\r\n", PMSTATbits.IB1F ? "Full" : "Not Full");
    if (PMSTATbits.IB2F) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer 2: %s\r\n", PMSTATbits.IB2F ? "Full" : "Not Full");
    if (PMSTATbits.IB3F) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Input Buffer 3: %s\r\n", PMSTATbits.IB3F ? "Full" : "Not Full");
    if (PMSTATbits.OBE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer: %s\r\n", PMSTATbits.OBE ? "Empty" : "Not Empty");
    if (PMSTATbits.OBUF) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer has %s\r\n", PMSTATbits.OBUF ? "Underflowed" : "Not Underflowed");
    if (PMSTATbits.OB0E) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer 0: %s\r\n", PMSTATbits.OB0E ? "Empty" : "Not Empty");
    if (PMSTATbits.OB1E) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer 1: %s\r\n", PMSTATbits.OB1E ? "Empty" : "Not Empty");
    if (PMSTATbits.OB2E) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer 2: %s\r\n", PMSTATbits.OB2E ? "Empty" : "Not Empty");
    if (PMSTATbits.OB3E) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PMP Output Buffer 3: %s\r\n", PMSTATbits.OB3E ? "Empty" : "Not Empty");
        
    terminalTextAttributesReset();
    
}

// this function sets up panel drive DMA
void panelDriveDMAInitialize(void) {
    
    // Set up DMA2 for PMP write
    // From reference manual example 31-2
    // Disable DMA0 interrupt
    disableInterrupt(DMA_Channel_2);
    clearInterruptFlag(DMA_Channel_2);
    
    // Enable DMA controller
    DMACONbits.ON = 0;
    // Disable DMA CRC
    DCRCCONbits.CRCEN = 0;
    // Turn off channel 2
    DCH2CONbits.CHEN = 0;
    // Set channel 2 priority to 3 (highest)
    DCH2CONbits.CHPRI = 3;
    // Disable DMA chaining
    DCH2CONbits.CHCHN = 0;
    
    // Start interrupt request is PMP TX done
    DCH2ECONbits.CHSIRQ = Parallel_Master_Port;
    // configure DMA0 to start on an IRQ matching CHSIRQ
    DCH2ECONbits.SIRQEN = 1;
    // no pattern abort
    DCH2ECONbits.PATEN = 0;
    
    // Set DMA0 source location
    DCH2SSA = KVA_TO_PA((void *) &panel_direct_data_buffer[0]);
    #warning "above line is a placeholder, this will need to be changed every row written"
    // Set DMA0 destination location
    DCH2DSA = KVA_TO_PA((void*)&PMDOUT);
    // Set source size to size of transmit buffer
    DCH2SSIZ = 64;
    // Set destination size to 1, since USB_UART_TX_REG is one byte long
    DCH2DSIZ = 1;
    // 64 bytes transferred per event (cell size = 64)
    DCH2CSIZ = 1;
    
    // clear existing events, disable all interrupts
    DCH2INTCLR = 0x00000000;
    // enable Block Complete and error interrupts
    DCH2INTbits.CHSDIF = 0;
    DCH2INTbits.CHSDIE = 1;
    DCH2INTbits.CHERIF = 0;
    DCH2INTbits.CHERIE = 1;
    
    // Set up DMA2 interrupts
    setInterruptPriority(DMA_Channel_2, 3);
    setInterruptSubpriority(DMA_Channel_2, 3);
    clearInterruptFlag(DMA_Channel_2);
    enableInterrupt(DMA_Channel_2);
    
    // Turn on DMA
    DMACONbits.ON = 1;
    
}

// This interrupt is triggered after shifting 64 bytes into panel
void __ISR(_DMA2_VECTOR, IPL3SRS) panelDriveDMAFinsihedISR(void) {
    
    // Determine source of DMA 2 interrupt
    // Channel block transfer complete interrupt flag
    if (DCH2INTbits.CHSDIF) {
        
        // latch data into LED panel
        PANEL_LAT_PIN = HIGH;
        
        // enable output drivers on LED panel
        nPANEL_OE_PIN = LOW;
        
        DCH2CONbits.CHEN = 0;
        
        // start on-time timer
        panelMultiplexingTimerStart();
        
    }
    
    // channel error
    else if (DCH2INTbits.CHERIF) {
        
        error_handler.flags.panel_DMA = 1;
        
    }
    
    // Clear DMA controller interrupt flags
    DCH2INTCLR=0x000000ff;
    
    // clear interrupt flag
    clearInterruptFlag(DMA_Channel_2);
}

// This function initializes Timer5 for panel multiplexing
void panelMultiplexingTimerInitialize(void) {
 
    // Disable Timer5 interrupt
    disableInterrupt(Timer5);
    setInterruptPriority(Timer5, 3);
    setInterruptSubpriority(Timer5, 3);
    clearInterruptFlag(Timer5);
    
    // Stop timer 5
    T5CONbits.ON = 0;
    
    // Stop timer 5 in idle
    T5CONbits.SIDL = 1;
    
    // Disable gated time accumulation
    T5CONbits.TGATE = 0;
    
    // Set timer 5 prescalar to 1
    T5CONbits.TCKPS = 0b000;
    
    // Set timer clock input as PBCLK3 (12.5MHz)
    T5CONbits.TCS = 0;
    
    // Clear timer 5
    TMR5 = 0x0000;
    
    // Set timer 5 period match to 2us (25 counts)
    PR5 = 25;
    
    // Enable timer5 interrupt
    enableInterrupt(Timer5);
    
}

// Function for multiplexing timer ISR
void __ISR(_TIMER_5_VECTOR, IPL3SRS) panelMultiplexingTimerISR(void) {
    
    // stop, clear on-time timer
    panelMultiplexingTimerStop();
    panelMultiplexingTimerClear();
    
    // get ready to shift another round of data in
    PANEL_LAT_PIN = LOW;

    // disable output drivers on LED panel
    nPANEL_OE_PIN = HIGH;
    
    // increment row
    panel_data_vars.current_row++;
    
    // Reset current_row counter
    if (panel_data_vars.current_row == 32) {
    
        panel_data_vars.current_row = 0;
        panel_data_vars.current_color_frame++;
        
    }
    
    // Reset current_PWM_frame counter
    if (panel_data_vars.current_color_frame == 8) {
    
        panel_data_vars.current_color_frame = 0;
        
    }
    
    // start DMA transactions at next location
    DCH2SSA = KVA_TO_PA((uint8_t *) &panel_direct_data_buffer[(panel_data_vars.current_row * 64) + 
            (panel_data_vars.current_color_frame * 2048)]);
    
    // clear and set row bits based on panel_data_vars.current_row
    LATBCLR = 0b11111;
    LATBSET = (panel_data_vars.current_row & 0b11111);
    
    // force DMA to start
    DCH2CONbits.CHEN = 1;
    DCH2ECONbits.CFORCE = 1;
    
    clearInterruptFlag(Timer5);
    
}

// Start muxing timer function
inline void panelMultiplexingTimerStart(void) {
    
    T5CONbits.ON = 1;
    
}

// Stop muxing timer function
inline void panelMultiplexingTimerStop(void) {
    
    T5CONbits.ON = 0;
    
}

// Clear muxing timer function
inline void panelMultiplexingTimerClear(void) {
    
    TMR5 = 0;
    
}

// this function sets up PMP, DMA, and multiplexing timers
void LEDPanelInitialize(void) {
 
    // set up hardware interface for clocking data into panel
    PMPInitialize();
    
    // set up DMA channel 2 to shove data into PMP
    panelDriveDMAInitialize();
    
    // set up panel on-time timer
    panelMultiplexingTimerInitialize();
    
}

// this function enables the +5V power supply, sets up PMP, sets up DMA, clears the PMP buffer, and begins multiplexing
void LEDPanelSetup() {
 
    // enable the +5V power supply, wait for it to come up
    // enable POX sensor logic rail, LED drive voltage
    POS5_RUN_PIN = HIGH;
    uint32_t timeout = 0xFFFFFF;
    while (POS5_PGOOD_PIN == LOW && timeout > 0) timeout--;
    if (POS5_PGOOD_PIN == LOW) {
        terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    Failed to enable +5V Power Supply\r\n");
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        error_handler.flags.pos5_pgood = 1;
        terminalTextAttributesReset();
        return;
    }
    else {
        terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    +5V Power Supply Enabled, Within Regulation\r\n");
        terminalTextAttributesReset();
    }
    
    // clear multiplexing variables
    panel_data_vars.current_row = 0;
    panel_data_vars.current_color_frame = 0;
    
    // get ready to shift another round of data in
    PANEL_LAT_PIN = LOW;

    // disable output drivers on LED panel
    nPANEL_OE_PIN = HIGH;
    
    // start DMA transactions at beginning of panel_direct_data_buffer
    DCH2SSA = KVA_TO_PA((void *) &panel_direct_data_buffer[0]);
    
    // start and force DMA
    DCH2CONbits.CHEN = 1;
    DCH2ECONbits.CFORCE = 1;
    
}


// this function disables the +5V power supply and stops multiplexing
void LEDPanelTeardown() {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // disable +5V power supply
    POS5_RUN_PIN = LOW;
    printf("    +5V Power Supply Disabled\r\n");
    
    // get ready to shift another round of data in
    PANEL_LAT_PIN = HIGH;

    // disable output drivers on LED panel
    nPANEL_OE_PIN = HIGH;
    
    // disable DMA
    DCH2CONbits.CHEN = 0;
    
    // turn off on-time timer
    panelMultiplexingTimerStop();
    panelMultiplexingTimerClear();
    
    terminalTextAttributesReset();
    
}

// This function prints the contents of the internal RAM buffer holding frame data
void panelDirectDataBufferPrint(void) {

    // print title of data table
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Contents of first kB of Internal Static Random Access Memory Buffer holding Display Data:\n\r");
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Starting    Lower Nibble\n\r");
    printf("    Address:    0    1    2    3    4    5    6    7    8    9    A    B    C    D    E    F\n\r");
    
    // Access address
    uint32_t loop_address;
    
    // wait for it
    for (loop_address = 0 ; loop_address < PANEL_DIRECT_DATA_BUFFER_SIZE / 64; loop_address += 16) {
        
        if (loop_address % 32 == 0) {
         
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            
        }
        
        else {
         
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, REVERSE_FONT);
            
        }
        
        printf("    0x%08X: 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X 0x%02X\n\r", loop_address,
               panel_direct_data_buffer[loop_address + 0],
               panel_direct_data_buffer[loop_address + 1], 
               panel_direct_data_buffer[loop_address + 2], 
               panel_direct_data_buffer[loop_address + 3], 
               panel_direct_data_buffer[loop_address + 4], 
               panel_direct_data_buffer[loop_address + 5], 
               panel_direct_data_buffer[loop_address + 6], 
               panel_direct_data_buffer[loop_address + 7], 
               panel_direct_data_buffer[loop_address + 8], 
               panel_direct_data_buffer[loop_address + 9], 
               panel_direct_data_buffer[loop_address + 0xA], 
               panel_direct_data_buffer[loop_address + 0xB], 
               panel_direct_data_buffer[loop_address + 0xC], 
               panel_direct_data_buffer[loop_address + 0xD], 
               panel_direct_data_buffer[loop_address + 0xE], 
               panel_direct_data_buffer[loop_address + 0xF]);
        
    }
    
    terminalTextAttributesReset();
    
    
}