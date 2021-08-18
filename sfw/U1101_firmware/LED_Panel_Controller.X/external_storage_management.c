
#include <stdio.h>

#include "external_storage_management.h"
#include "misc_i2c_devices.h"
#include "terminal_control.h"
#include "watchdog_timer.h"

// this function writes the ext_str_manager.slot_in_use_bytes[] array into external I2C EEPROM
void externalStorageManagerBackupSlotsInUse(void) {
 
    // write all contents of ext_str_manager.slot_in_use_bytes[] into external flash
    // this must be done 8 bytes at a time since I2C EEPROM is really stupid
    uint32_t slot_write_index;
    for (slot_write_index = 0; slot_write_index < 512; slot_write_index += 1) {
     
        Nop();
        #warning "add code to record into EEPROM here"
        
    }
    
}

// this function recovers the ext_str_manager.slot_in_use_bytes[] array from external I2C EEPROM into RAM
void externalStorageManagerRestoreSlotsInUse(void) {
 
    Nop();
    #warning "implement this with new EEPROM you clown"
    
}

// this function appends a new image from the scratchpad onto the end of the list of image slots in use
// this is done without having to pass the target slot
// returns the slot added
uint32_t externaStorageAppendImageSlot(void) {
 
    uint32_t slot_write_index;
    for (slot_write_index = 0; slot_write_index < 512; slot_write_index += 1) {
     
        if (ext_str_manager.slot_in_use[slot_write_index] == false) {
         
            // write image currently in scratchpad into next available slot
            externalStorageWriteImageSlot(slot_write_index);
            
            // update variables of interest, stash in EEPROM
            ext_str_manager.slot_in_use[slot_write_index] = true;
            externalStorageManagerBackupSlotsInUse();
         
            return slot_write_index;
        }
        
    }
    
}

// this function prints which slots are currently filled
void externalStoragePrintUsedImageSlots(void) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Image slots currently in use:\n\r");
    
    uint32_t slot_index;
    for (slot_index = 0; slot_index < 512; slot_index += 1) {
     
        if (ext_str_manager.slot_in_use[slot_index]) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("   Slot %03u in use: %s\n\r", slot_index, ext_str_manager.slot_in_use[slot_index] ? "T" : "F");
        while(usbUartCheckIfBusy());
        kickTheDog();
        
    }
    
    terminalTextAttributesReset();
    
}

// this function abstracts slot writing across all flash chips, so instead of 
// passing chip_select and start_address, the same can be accomplished by
// "slot number"
void externalStorageWriteImageSlot(uint32_t slot) {
 
    // each flash chip can store 64 images
    // With 8 spi flash chips, that's 512 images total
    // (512 slots)
    if (slot >= 512) return;
    
    
    // determine active_chip_select and active_start_address from slot number
    uint32_t active_chip_select, active_start_address;
    active_chip_select = slot / 64;
    active_start_address = (slot % 64) * 16384;
    
    // write data to target slot
    externalFlashWriteImageSlot(active_chip_select, active_start_address);
    
    
}

// this function abstracts slot reading across all flash chips, so instead of 
// passing chip_select and start_address, the same can be accomplished by
// "slot number"
void externalStorageReadImageSlot(uint32_t slot) {
    
    // each flash chip can store 64 images
    // With 8 spi flash chips, that's 512 images total
    // (512 slots)
    if (slot >= 512) return;
    
    // determine active_chip_select and active_start_address from slot number
    uint32_t active_chip_select, active_start_address;
    active_chip_select = slot / 64;
    active_start_address = (slot % 64) * 16384;
    
    externalFlashReadImageSlot(active_chip_select, active_start_address);
    
}

// this function erases all external storage
// use with caution
void externalStorageEraseAll(void) {
 
    uint8_t chip_select;
    for (chip_select = 0; chip_select < 8; chip_select++) {
        
        SPI_Flash_writeEnable(chip_select);

        SPI_Flash_blockProtectionDisable(chip_select);

        SPI_Flash_writeEnable(chip_select);

        // erase entire chip
        SPI_FLASH_chipErase(chip_select);
    
    }
}