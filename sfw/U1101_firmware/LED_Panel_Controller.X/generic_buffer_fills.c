
#include <xc.h>

#include "generic_buffer_fills.h"

#include "device_control.h"

// this fills panel_direct_data_buffer with data for a white screen
void fillPanelBufferWhite(void) {
 
    unsigned int i;
    for (i = 0; i < PANEL_DIRECT_DATA_BUFFER_SIZE; i++) {
        panel_direct_data_buffer[i] = 0b00111111;       // all bits high - 0b00BBGGRR
    }
    
}

// this fills panel_direct_data_buffer with an RGB column pattern
void fillPanelBufferRGBStripes(void) {
 
    unsigned int i;
    for (i = 0; i < PANEL_DIRECT_DATA_BUFFER_SIZE; i++) {
        
        // black column
        if (i % 4 == 0) {
         
            panel_direct_data_buffer[i] = 0;
            
        }
        
        // red column
        else if ((i + 3) % 4 == 0) {
         
            panel_direct_data_buffer[i] = 0b00000011;
            
        }
        
        // green column
        else if ((i + 2) % 4 == 0) {
         
            panel_direct_data_buffer[i] = 0b00001100;
            
        }
        
        // blue column
        else if ((i + 1) % 4 == 0) {
         
            panel_direct_data_buffer[i] = 0b00110000;
            
        }
        
    }
    
}

// this fills panel_direct_data_buffer with a randomized pixel pattern
void fillPanelBufferRand(void) {
    
    // Load a new seed
    RNGCONbits.LOAD = 1;
    
    unsigned int i;
    for (i = 0; i < PANEL_DIRECT_DATA_BUFFER_SIZE / 4; i++) {
        panel_direct_data_buffer[i] = (uint8_t) RNGNUMGEN1;       // random number in each byte
    }
    
    
}