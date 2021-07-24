
#include "generic_buffer_fills.h"

// this fills panel_direct_data_buffer with data for a white screen
void fillPanelBufferWhite(void) {
 
    int i;
    for (i = 0; i < PANEL_DIRECT_DATA_BUFFER_SIZE; i++) {
        panel_direct_data_buffer[i] = 0b00111111;       // all bits high - 0b00BBGGRR
    }
    
}

// this fills panel_direct_data_buffer with an RGB column pattern
void fillPanelBufferRGBStripes(void) {
 
    int i;
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