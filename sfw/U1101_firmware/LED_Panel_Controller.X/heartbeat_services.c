
#include "heartbeat_services.h"

#include "main.h"
#include "error_handler.h"
#include "temperature_sensors.h"
#include "power_monitors.h"
#include "telemetry.h"
#include "device_control.h"
#include "terminal_control.h"
#include "pin_macros.h"
#include "image_management.h"

#include <stdio.h>

// This function executes actions every call of the heartbeat timer, and is used as an easy interface to do some action every second
void heartbeatServices(void) {
 
    if (live_telemetry_enable) {

        // get new telemetry data every 200ms
        if ((heartbeat_systick + 5) % 20 == 0) temp_sense_data_request = 1;

        // get new telemetry data every 200ms
        if ((heartbeat_systick + 10) % 20 == 0) power_monitor_data_request = 1;
        
        /* Trigger an ADC conversion scan */
        if ((heartbeat_systick + 15) % 20 == 0) ADCCON3bits.GSWTRG = 1;
        
        // print new telemetry to terminal every second
        if (heartbeat_systick % 100 == 0) live_telemetry_print_request = 1;
        
    }
        
    // Update error LEDs based on error handler status
    update_error_leds_flag = 1;
    
    // Increment on time counter
    if (heartbeat_systick % 100 == 0) device_on_time_counter++;
    
    // this if statement is what controls if we're loading new data from external SPI flash
    // when in slot slideshow mode
    if (display_mode == slot_slideshow_display_mode && update_slot_slideshow == 0 && heartbeat_systick % 100 == 0) {
        
        // figure out if we need to load a new image from spi flash when in slideshow mode
        if ((device_on_time_counter - slot_slideshow_start_device_on_time)%slot_slideshow_delay == 0) {

            active_slideshow_slot++;

            if (active_slideshow_slot > maximum_slot_in_use) active_slideshow_slot = 0;

            update_slot_slideshow = 1;

        }
    
    }
    
    // this else if statement is what triggers loading new random numbers into the
    // panel frame buffer in void mode
    else if (display_mode == void_display_mode && heartbeat_systick % 5 == 0) {
     
        update_buffer_void_mode = 1;
        
    }
    
    
}