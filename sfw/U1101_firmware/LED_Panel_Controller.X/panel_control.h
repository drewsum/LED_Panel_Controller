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

// this is the raw output data that is fed into the shift registers in the 64x64 LED panel
// meant for HUB75-E interface
// 1byte * 64 cols * 32 rows * 8 color_frames = 16,384 bytes
uint8_t panel_direct_data_array[16384];

// this structure holds variables needed for drawing images on the panel
// PMP and DMA handle shifting data into panel for 64 columms
// code must set the row
// Since pixels can only draw RGB colors, 8 color_frames can be drawn to
// get better color resolution
struct panel_data_vars_t {
    
    uint8_t current_row;            // which row is currently selected (0 to 32)
    uint8_t current_color_frame;    // which color frame is currently being drawn (0 to 7)
    
} panel_data_vars;

// this function sets up PMP for use with an 8 bit LCD
void PMPInitialize(void);


// This ISR is triggered when a PMP error occurs
void __ISR(_PMP_ERROR_VECTOR, IPL1SRS) pmpErrorISR(void);

// this function prints status for parallel master port
void printPMPStatus(void);

// this function sets up PMP, DMA, and multiplexing timers
void LEDPanelInitialize(void);

// this function enables the +5V power supply, clears the PMP buffer, and begins multiplexing
void LEDPanelSetup(void);

// this function disables the +5V power supply and stops multiplexing
void LEDPanelTeardown(void);

#endif /* _PANEL_CONTROL_H */

/* *****************************************************************************
 End of File
 */
