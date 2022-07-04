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

    idle,
    slot_slideshow
    
} display_mode;



#endif /* _IMAGE_MANAGEMENT_H */

/* *****************************************************************************
 End of File
 */
