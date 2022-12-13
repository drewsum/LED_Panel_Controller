
#include "32mz_interrupt_control.h"

#include <stdio.h>

#include "terminal_control.h"
#include "image_management.h"

#include "capacitive_pushbuttons.h"

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
    
    power_pushbutton_flag = 1;
    
    clearInterruptFlag(External_Interrupt_2);
    
}

// this is the cap touch mode toggle button interrupt service routine
void __ISR(_EXTERNAL_4_VECTOR, IPL7SRS) modeCapTouchPushbuttonISR(void) {
    
    terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("User pressed mode button\r\n");
    terminalTextAttributesReset();
    
    mode_pushbutton_flag = 1;
    
    clearInterruptFlag(External_Interrupt_4);
    
}


// this is the callback function for when the power pushbutton is pressed
void powerCapTouchPushbuttonCallback(void) {
 
    
    // we're currently off, need to turn on
    if (POS5_PGOOD_PIN == LOW) {
        
        LEDPanelSetup();
        fillPanelBufferBlack();
        display_mode = void_display_mode;
        
    }
    
    // we're currently on, need to turn off
    else {
        LEDPanelTeardown();
        update_slot_slideshow = 0;
        display_mode = idle_display_mode;
        clearDisplayModeLEDs();
        
    }
    
    power_pushbutton_flag = 0;
    
}

// this is the callback for when the mode pushbutton is pressed
void modeCapTouchPushbuttonCallback(void) {
    
    // only do something if we're operating
    if (display_mode != idle_display_mode) {
     
        // increment, decide if we need to wrap around
        display_mode++;
        if (display_mode == NumberOfSupportedDisplayModes) display_mode = 1;
        
        
        switch (display_mode) {
            
            case usb_stream_display_mode:
                fillPanelBufferBlack();
                
                terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Entered USB Stream Mode\r\n");
                terminalTextAttributesReset();
                break;
            
            case slot_slideshow_display_mode:
                fillPanelBufferBlack();
                
                externalStorageBeginSlotSlideshow(0);
                
                terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Entered Slot Slideshow Mode\r\n");
                terminalTextAttributesReset();
                break;
            
            case slot_shuffle_display_mode:
                fillPanelBufferBlack();
                
                RNGCONbits.LOAD = 1;
                externalStorageBeginSlotSlideshow((uint16_t) RNGNUMGEN1 % (maximum_slot_in_use + 1));
                terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Entered Slot Shuffle Mode\r\n");
                terminalTextAttributesReset();
                break;
            
            case void_display_mode:
                fillPanelBufferBlack();
                
                terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, NORMAL_FONT);
                printf("Entered Void Mode\r\n");
                terminalTextAttributesReset();
                break;

        }
        
    }
    
    else {
     
        terminalTextAttributesReset();
        terminalTextAttributes(YELLOW_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("Panel is not currently configured to be on\n\r");
        terminalTextAttributesReset();
        
    }
    
    mode_pushbutton_flag = 0;
    
}
