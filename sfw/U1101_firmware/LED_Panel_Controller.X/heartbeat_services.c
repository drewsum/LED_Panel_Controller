
#include "heartbeat_services.h"

#include "main.h"
#include "error_handler.h"
#include "temperature_sensors.h"
#include "power_monitors.h"
#include "telemetry.h"
#include "device_control.h"
#include "terminal_control.h"
#include "pin_macros.h"

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
    
}