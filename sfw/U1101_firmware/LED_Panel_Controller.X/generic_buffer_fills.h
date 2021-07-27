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

#ifndef _GENERIC_BUFFER_FILLS_H    /* Guard against multiple inclusion */
#define _GENERIC_BUFFER_FILLS_H

#include "panel_control.h"

// this fills panel_direct_data_buffer with data for a white screen
void fillPanelBufferWhite(void);

// this fills panel_direct_data_buffer with an RGB column pattern
void fillPanelBufferRGBStripes(void);

// this fills panel_direct_data_buffer with a randomized pixel pattern
void fillPanelBufferRand(void);

#endif /* _GENERIC_BUFFER_FILLS_H */

/* *****************************************************************************
 End of File
 */
