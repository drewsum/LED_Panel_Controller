#include <xc.h>

#include "splash_screen.h"

#include "panel_control.h"

// fill ram buffer with Splash Screen function
void fillPanelBufferSplashScreen(void) {
 
    uint32_t address_index;
    
    for (address_index = 0; address_index < sizeof(splash_screen_array); address_index++) {
    
        panel_direct_data_buffer[address_index] = splash_screen_array[address_index];
        
    }
    
}