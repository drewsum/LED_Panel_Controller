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

#ifndef _EXTERNAL_STORAGE_MANAGEMENT_H    /* Guard against multiple inclusion */
#define _EXTERNAL_STORAGE_MANAGEMENT_H

#include <xc.h>

#include "spi_flash.h"


// this array keeps track of which external storage image slots are in use
uint8_t external_storage_slot_in_use[512];

// this function recovers the ext_str_manager.slot_in_use_bytes[] array from external I2C EEPROM into RAM
void externalStorageManagerRestoreSlotsInUse(void);

// this function appends a new image from the scratchpad onto the end of the list of image slots in use
// this is done without having to pass the target slot
uint32_t externaStorageAppendImageSlot(void);

// this function prints which slots are currently filled
void externalStoragePrintUsedImageSlots(void);

// this function abstracts slot writing across all flash chips, so instead of 
// passing chip_select and start_address, the same can be accomplished by
// "slot number"
// can pass slot as between 0 and 511 (512 total slots)
void externalStorageWriteImageSlot(uint32_t slot);

// this function abstracts slot reading across all flash chips, so instead of 
// passing chip_select and start_address, the same can be accomplished by
// "slot number"
// can pass slot as between 0 and 511 (512 total slots)
void externalStorageReadImageSlot(uint32_t slot);

// this function erases all external storage
// use with caution
void externalStorageEraseAll(void);




#endif /* _EXTERNAL_STORAGE_MANAGEMENT_H */

/* *****************************************************************************
 End of File
 */
