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

#ifndef _PANEL_CONTROL_H    /* Guard against multiple inclusion */
#define _PANEL_CONTROL_H

// this function sets up PMP, DMA, and multiplexing timers
void LEDPanelInitialize();

// this function enables the +5V power supply, clears the PMP buffer, and begins multiplexing
void LEDPanelSetup();

// this function disables the +5V power supply and stops multiplexing
void LEDPanelTeardown();

#endif /* _PANEL_CONTROL_H */

/* *****************************************************************************
 End of File
 */
