
#include "generic_buffer_fills.h"

// this fills panel_direct_data_buffer with data for a white screen
void fillPanelBufferWhite(void) {
 
    int i;
    for (i = 0; i < PANEL_DIRECT_DATA_BUFFER_SIZE; i++) {
        panel_direct_data_buffer[i] = 0b00111111;       // all bits high - 0b00BBGGRR
    }
    
}