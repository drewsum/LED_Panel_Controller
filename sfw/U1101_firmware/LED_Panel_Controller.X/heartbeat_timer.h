/* ************************************************************************** */
/** Heartbeat Timer

  @Company
 Marquette Senior Design E44 2018-2019

  @File Name
    heartbeat_timer.h

  @Summary
 Provides functions for the heartbeat timer, a hardware timer triggering an interrupt every second
 Uses timer 1

 */
/* ************************************************************************** */

#ifndef _HEARTBEAT_TIMER_H    /* Guard against multiple inclusion */
#define _HEARTBEAT_TIMER_H

#include <xc.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "32mz_interrupt_control.h"

#include "pin_macros.h"

// This flag is set when we want to clear the watchdog timer
volatile __attribute__((coherent)) uint8_t wdt_clear_request = 0;

// this enum is used to fade the heartbeat LED on and off
// heartbeat_led_ticks is used to fad eLED on and off
// heartbeat_ticks is used to time code requiring a 100Hz time base
enum heartbeat_dir_t {
    heartbeat_inhale,
    heartbeat_exhale
} heartbeat_dir = heartbeat_inhale;
volatile uint32_t heartbeat_on_time = 0;

// used to time various recurring function calls/heartbeat services
// increments from 0 to 99 at 100Hz
volatile uint32_t heartbeat_systick = 0;

// API Functions
// This function initializes the heartbeat timer
void heartbeatTimerInitialize(void);

// This function starts the heartbeat timer
void heartbeatTimerStart(void);

// This function stops the heartbeat timer
void heartbeatTimerStop(void);

// Heartbeat timer interrupt service routine
void __ISR(_TIMER_1_VECTOR, IPL6SRS) hearbeatTimerISR(void);

#endif /* _HEARTBEAT_TIMER_H */

/* *****************************************************************************
 End of File
 */