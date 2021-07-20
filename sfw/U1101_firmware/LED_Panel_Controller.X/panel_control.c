
#include <xc.h>

#include <stdio.h>

#include "pin_macros.h"
#include "terminal_control.h"
#include "error_handler.h"

// this function sets up PMP, DMA, and multiplexing timers
void LEDPanelInitialize() {
 
    Nop();
    
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
    
    
}


// this function disables the +5V power supply and stops multiplexing
void LEDPanelTeardown() {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    
    // disable +5V power supply
    POS5_RUN_PIN = LOW;
    printf("    +5V Power Supply Disabled\r\n");
    
    
    terminalTextAttributesReset();
    
}