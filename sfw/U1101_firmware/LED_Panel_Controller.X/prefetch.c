
#include <xc.h>
#include <stdio.h>

#include "prefetch.h"
#include "32mz_interrupt_control.h"
#include "error_handler.h"
#include "terminal_control.h"

// This function initializes the prefetch module
void prefetchInitialize(void) {

    // configure prefetch module SEC interrupt
    disableInterrupt(Prefetch_Module_SEC_Event);
    setInterruptPriority(Prefetch_Module_SEC_Event, 4);
    setInterruptSubpriority(Prefetch_Module_SEC_Event, 2);
    clearInterruptFlag(Prefetch_Module_SEC_Event);
    
    // Enable prefetch SEC interrupt
    PRECONbits.PFMSECEN = 1;
    
    // Set prefetch module access time to two wait states
    PRECONbits.PFMWS = 0b010;
    
    // Enable predictive prefetch for CPU instructions only
    PRECONbits.PREFEN = 0b01;
    
    // Enable prefetch SEC interrupt
    enableInterrupt(Prefetch_Module_SEC_Event);
    
}

// This is the prefetch SEC event interrupt service routine
void __ISR(_PREFETCH_VECTOR, ipl4SRS) prefetchSECEventISR(void) {

    // Reset SEC event counter
    PRESTATbits.PFMSECCNT = PRECONbits.PFMSECEN;
    
    // Set error handler flag high
    error_handler.flags.prefetch_module_SEC = 1;
    
    // Clear interrupt flag
    clearInterruptFlag(Prefetch_Module_SEC_Event);
    
}

// This function prints the status of the prefetch module
void printPrefetchStatus(void) {
 
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Prefetch Module Status:\n\r");
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Prefetch Module enable Status: ");
    
    switch (PRECONbits.PREFEN) {
     
        case 0b00:
            terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Predictive prefetch disabled\n\r");
            break;
            
        case 0b01:
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Enable predictive prefetch for CPU instructions only\n\r");
            break;
            
        case 0b10:
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Enable predictive prefetch for CPU instructions and CPU data\n\r");
            break;
            
        case 0b11:
            terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
            printf("Enable predictive prefetch for any address\n\r");
            break;
            
    }
    
    // Print if interrupt is enabled
    if (PRECONbits.PFMSECEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Prefetch SEC Interrupt %s\n\r",
            PRECONbits.PFMSECEN ? "Enabled" : "Disabled");
    
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PFM access times set to %d wait states\n\r", PRECONbits.PFMWS);
    
    // Print if interrupt is enabled
    if (PRECONbits.PFMSECEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Prefetch SEC Interrupt %s\n\r",
            PRECONbits.PFMSECEN ? "Enabled" : "Disabled");
    
    // Print if DED error occured
    if (PRESTATbits.PFMDED) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Prefetch Double-bit Error %s\n\r",
            PRESTATbits.PFMDED ? "Detected" : "Not Detected");
    
    // Print if SEC error occured
    if (PRESTATbits.PFMSEC) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Prefetch Single-bit Error %s\n\r",
            PRESTATbits.PFMSEC ? "Corrected" : "Not Detected");
    
    terminalTextAttributesReset();
    
}
