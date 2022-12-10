/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _IMAGE_MANAGEMENT_H    /* Guard against multiple inclusion */
#define _IMAGE_MANAGEMENT_H

#include <xc.h>

#include "spi_flash.h"


// this keeps track of what display mode we're currently in
enum display_mode_t{

    idle_display_mode,
    usb_stream_display_mode,
    slot_slideshow_display_mode,
    slot_shuffle_display_mode,
    void_display_mode
    
} display_mode;

// this keeps track of the highest slot number in use
uint32_t maximum_slot_in_use;

// this keeps track of the active slot to be displayed when in spi flash slideshow mode
uint32_t active_slideshow_slot;

// this keeps track of the delay between slots to be displayed, when in spi flash slideshow mode
uint32_t slot_slideshow_delay = 10;
uint32_t slot_slideshow_start_device_on_time;

// this flag is set when we want to update the image in the buffer from main
// it's set in heartbeat services and cleared within the slideshow callback, externalStorageSlotSlideshowCallback()
uint32_t update_slot_slideshow = 0;

// this flag is used to fill the frame buffer with random data for void mode
uint32_t update_buffer_void_mode;

// this function starts the spi flash slideshow functionality
void externalStorageBeginSlotSlideshow(uint32_t starting_slot);

// this function updates the image in the buffer during slideshow functionality
// meant to be a callback from main
void externalStorageSlotSlideshowCallback(uint32_t active_slot);

// this function stops the slot slideshow
void externalStorageSlotEndSlideshow(void);

// this function is called within main to fill the panel buffer with random data in void mode
void voidModeFillBuffer(void);

// this function updates the mode LEDs based on the current display_mode setting
void updateDisplayModeLEDs(void);

// this function clears all mode LEDs
void clearDisplayModeLEDs(void);

#endif /* _IMAGE_MANAGEMENT_H */

/* *****************************************************************************
 End of File
 */
