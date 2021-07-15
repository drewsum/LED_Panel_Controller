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

#ifndef _USB_UART_RX_LOOKUP_TABLE_H    /* Guard against multiple inclusion */
#define _USB_UART_RX_LOOKUP_TABLE_H

#include <xc.h>
#include <stdio.h>

// This function must be called at boot to set up the usb_uart_commands hash table
void usbUartHashTableInitialize(void);

#endif /* _USB_UART_RX_LOOKUP_TABLE_H */

/* *****************************************************************************
 End of File
 */
