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

#ifndef _SPI_FLASH_H    /* Guard against multiple inclusion */
#define _SPI_FLASH_H

#include <sys/attribs.h>

#include <xc.h>

#include "panel_control.h"

// This flag signifies that a SPI flash read operation has completed
// Used for standard operation state machine
uint8_t SPI_Read_Finished_Flag;

// indexes ebi sram array as we read the flash chip
uint32_t sram_addr_index;

// Function to initialize SPI
void spiFlashInit(void);

// Function to set GPIO pins for ~CE and ~WP
void spiFlashGPIOSet(uint8_t input_chip_select);

// Function to reset GPIO pins for ~CE and ~WP
void spiFlashGPIOReset(void);

// Function to print status
void printSPIFlashStatus(void);

// SPI3 Fault interrupt service routine
void __ISR(_SPI3_FAULT_VECTOR, ipl1SRS) spi3FaultISR(void);

// Function to write single byte to transmit FIFO
void SPI3_writeByte(uint8_t write_byte);

// Function to read single byte from receive FIFO
uint8_t SPI3_readByte(void);

// This function erases q spi flash chip
void SPI_FLASH_chipErase(uint8_t chip_select);

// This function reads from a spi flash chip
void SPI_FLASH_beginRead(uint8_t chip_select);

// This function writes to a spi flash chip
void SPI_FLASH_beginWrite(uint8_t chip_select);

// This function enables write enable
void SPI_Flash_writeEnable(uint8_t chip_select);

// This function programs the status register in the chip passed as a parameter
// It sets all bits in the status register to 0, which disables block protection
// The write enable functions must be called beforehand
void SPI_Flash_blockProtectionDisable(uint8_t chip_select);

// this function gets the MFG ID and Device ID from SPI Flash
void SPI_Flash_readID(uint8_t chip_select, uint8_t* read_mfg_id, uint8_t* read_dev_id);

// this function erases 4 kB sector, starting at the passed address
void SPI_flash_eraseSector(uint8_t chip_select, uint32_t start_address);

///////////////////////////////////////////////////////////////////////////////////////////
// APPLICATION SPECIFIC


// this function disables write protection on all external flash chips
void externalFlashInitialize(void);

// this function erases one image worth of external flash memory, beginning at the passed address
// (this erases 16384 bytes = 16kB, so four complete flash sectors
// start address must be mod 16384
void externalFlashEraseImageSlot(uint8_t chip_select, uint32_t start_address);

// this function copies contents of panel_direct_data_scratchpad to an image slot
// this function is blocking - REALLY blocking
// start address must be mod 16384
void externalFlashWriteImageSlot(uint8_t chip_select, uint32_t start_address);

// this function copies contents of spi flash slot into panel_direct_data_scratchpad
// this function is blocking - REALLY blocking
// start address must be mod 16384
void externalFlashReadImageSlot(uint8_t chip_select, uint32_t start_address);

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



#endif /* _SPI_FLASH_H */

/* *****************************************************************************
 End of File
 */
