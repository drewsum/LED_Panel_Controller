
#include <stdio.h>

#include "image_management.h"
#include "misc_i2c_devices.h"
#include "terminal_control.h"
#include "watchdog_timer.h"
#include "heartbeat_services.h"
#include "panel_control.h"
#include "generic_buffer_fills.h"


// this function starts the spi flash slideshow functionality
void externalStorageBeginSlotSlideshow(uint32_t starting_slot) {
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Beginning slot slideshow\n\r");
    terminalTextAttributesReset();
    
    #warning "might want to remove this once this is a little more automated with pushbutton"
    LEDPanelSetup();
    
    // copy image data for starting_slot from external spi flash into scratchpad, then into buffer
    externalStorageReadImageSlot(starting_slot);
    panelDataCopyScratchpad();
    

    // print stuff
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Transfer from Image Slot %u to Buffer complete\n\r", starting_slot);
    terminalTextAttributesReset();
    
    // save starting slot as the slow we're currently displaying
    active_slideshow_slot = starting_slot;
    
    slot_slideshow_start_device_on_time = device_on_time_counter;
    
    
}

// this function updates the image in the buffer during slideshow functionality
// meant to be a callback from main
void externalStorageSlotSlideshowCallback(uint32_t active_slot) {
 
    // copy image data for starting_slot from external spi flash into scratchpad, then into buffer
    externalStorageReadImageSlot(active_slot);
    panelDataCopyScratchpad();

    // print stuff
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Transfer from Image Slot %u to Buffer complete\n\r", active_slot);
    terminalTextAttributesReset();
 
    update_slot_slideshow = 0;
    
}

// this function stops the slot slideshow
void externalStorageSlotEndSlideshow(void) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("Ending slot slideshow\n\r");
    terminalTextAttributesReset();
    
    update_slot_slideshow = 0;
    
    LEDPanelTeardown();
    
}

// this function is called within main to fill the panel buffer with random data in void mode
void voidModeFillBuffer(void) {
 
    fillPanelBufferRand();
    
    update_buffer_void_mode = 0;
    
}