
#include "32mz_interrupt_control.h"

#include <stdio.h>

#include "terminal_control.h"

#include "pin_macros.h"

// this function initializes the capacitive pushbutton interrupts
void capTouchPushbuttonsInitialize(void) {
    
    // INT2, INT3 polarity is rising edge
    INTCONbits.INT2EP = 1;
    INTCONbits.INT4EP = 1;
    
    // power button
    disableInterrupt(External_Interrupt_2);
    setInterruptPriority(External_Interrupt_2, 7);
    setInterruptSubpriority(External_Interrupt_2, 1);
    clearInterruptFlag(External_Interrupt_2);
    enableInterrupt(External_Interrupt_2);
    
    // function button
    disableInterrupt(External_Interrupt_4);
    setInterruptPriority(External_Interrupt_4, 7);
    setInterruptSubpriority(External_Interrupt_4, 1);
    clearInterruptFlag(External_Interrupt_4);
    enableInterrupt(External_Interrupt_4);
    
}

// this is the cap touch power toggle button interrupt service routine
void __ISR(_EXTERNAL_2_VECTOR, IPL7SRS) powerCapTouchPushbuttonISR(void) {
    
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("User pressed power button\r\n");
    terminalTextAttributesReset();
    
    // we're currently off, need to turn on
    if (POS5_PGOOD_PIN == LOW) {
        
        LEDPanelSetup();
        
    }
    
    // we're currently on, need to turn off
    else {
        LEDPanelTeardown();
    }
    
    clearInterruptFlag(External_Interrupt_2);
    
}

// this is the cap touch mode toggle button interrupt service routine
void __ISR(_EXTERNAL_4_VECTOR, IPL7SRS) modeCapTouchPushbuttonISR(void) {
    
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("User pressed mode button\r\n");
    terminalTextAttributesReset();
    
    clearInterruptFlag(External_Interrupt_4);
    
}