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

#ifndef _CAPACITIVE_PUSHBUTTONS_H    /* Guard against multiple inclusion */
#define _CAPACITIVE_PUSHBUTTONS_H

#include <xc.h>

#include <stdbool.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "32mz_interrupt_control.h"

// these flags are set by cap touch ISRs an cleared in the callback functions from main()
uint32_t power_pushbutton_flag, mode_pushbutton_flag;

// this function initializes the "Power" capacitive pushbutton interrupt
void capTouchPushbuttonsInitialize(void);

// this is the cap touch power toggle button interrupt service routine
void __ISR(_EXTERNAL_2_VECTOR, IPL7SRS) powerCapTouchPushbuttonISR(void);

// this is the cap touch mode toggle button interrupt service routine
void __ISR(_EXTERNAL_4_VECTOR, IPL7SRS) modeCapTouchPushbuttonISR(void);

// this is the callback function for when the power pushbutton is pressed
void powerCapTouchPushbuttonCallback(void);

// this is the callback for when the mode pushbutton is pressed
void modeCapTouchPushbuttonCallback(void);

#endif /* _CAPACITIVE_PUSHBUTTONS_H */

/* *****************************************************************************
 End of File
 */
