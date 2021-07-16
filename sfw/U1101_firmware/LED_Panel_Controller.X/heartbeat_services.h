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

#ifndef _HEARTBEAT_SERVICES_H    /* Guard against multiple inclusion */
#define _HEARTBEAT_SERVICES_H

#include "xc.h"

#include "heartbeat_timer.h"

// API Variables
volatile uint32_t device_on_time_counter;

// This function executes actions every call of the heartbeat timer, and is used as an easy interface to do some action every second
void heartbeatServices(void);

#endif /* _HEARTBEAT_SERVICES_H */

/* *****************************************************************************
 End of File
 */