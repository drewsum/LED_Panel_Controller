
#include <xc.h>
#include <stdio.h>
#include <string.h>

#include "terminal_control.h"
#include "spi_flash.h"
#include "32mz_interrupt_control.h"
#include "error_handler.h"
#include "pin_macros.h"
#include "panel_control.h"
#include "device_control.h"


// Function to initialize SPI
void spiFlashInit(void)
{
    
    // Disable SPI3 Fault interrupt
    disableInterrupt(SPI3_Fault);
    setInterruptPriority(SPI3_Fault, 1);
    setInterruptSubpriority(SPI3_Fault, 2);
    clearInterruptFlag(SPI3_Fault);
           
    // Turn off module before configuration
    SPI3CONbits.ON = 0;         
    SPI3BUF = 0;                
    SPI3CONbits.ENHBUF = 0;     // Disable enhanced buffer
    SPI3BRG = 3;                // Baud Rate configuration: PBCLK2 = 66.67MHz
    #warning "speed this up eventually"
    SPI3STATbits.SPIROV = 0;
    SPI3CONbits.MSTEN = 1;      // Master mode
    
    // Configure SPI3 registers
    SPI3CONbits.FRMEN = 0;      // Framed SPI support is disabled
    SPI3CONbits.MSSEN = 0;      // Disable slave select SPI support
    SPI3CONbits.FRMSYPW = 0;    // Set frame sync pulse as one word length wide <1> or one clock wide <0>
    SPI3CONbits.MCLKSEL = 0;    // PBCLK is used
    SPI3CONbits.SIDL = 1;       // stop operation in IDLE mode
    SPI3CONbits.DISSDO = 0;     // SDO3 pin is controlled by module
    SPI3CONbits.MODE16 = 0;     // 16 bit mode disabled
    SPI3CONbits.MODE32 = 0;     // 32 bit mode disabled
    SPI3CONbits.SMP = 1;        // Input data sampled at the end of data output time
    SPI3CONbits.CKE = 1;        // Output data changes on clock falling edge
    SPI3CONbits.SSEN = 0;       // Slave Select pin is controlled by PORT 
    SPI3CONbits.CKP = 0;        // Idle state for clock is low, active state is high
    SPI3CONbits.DISSDI = 0;     // SDI3 pin is controlled by module
    SPI3CONbits.STXISEL = 0b01; // Interrupt is generated when buffer is empty
    SPI3CONbits.SRXISEL = 0b01; // Interrupt is generated when buffer is not empty
    SPI3CON2bits.AUDEN = 0;     // Disable audio mode
    // SPI3CON2bits.SPITUREN = 1;  // Transmit underrun triggers a fault interrupt
    SPI3CON2bits.SPITUREN = 0;  // Transmit underrun does not trigger a fault interrupt
    SPI3CON2bits.SPIROVEN = 0;  // Receive overflow doesn't cause an fault interrupt
    
    SPI3CON2bits.IGNROV = 1;    // Receive overflow does not stop SPI operation
    SPI3CON2bits.IGNTUR = 1;    // Transfer overflow does not stop SPI operation
    
    // Configure bits for Framed Mode ONLY
    SPI3CONbits.FRMSYNC = 0;  
    SPI3CONbits.FRMPOL = 0;  
    SPI3CONbits.FRMCNT = 0;   
    SPI3CONbits.SPIFE = 0;
    
    // Turn on module after configuration
    SPI3CONbits.ON = 1;
    
    enableInterrupt(SPI3_Fault);
    
    spiFlashGPIOReset();
    
}

// Function to set GPIO pins for ~CE and ~WP
void spiFlashGPIOSet(uint8_t input_chip_select) {
    
    switch(input_chip_select) {
        case 0:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 0;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;
            
            break;
            
        case 1:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 0;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
            
        case 2:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 0;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
            
        case 3:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 0;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
            
        case 4:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 0;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
            
        case 5:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 0;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
            
        case 6:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 0;
            nFLASH_SPI_CE7_PIN = 1;

            break;
        
        case 7:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 0;

            break;
     
        default:
            // ~CE Pins
            nFLASH_SPI_CE0_PIN = 1;
            nFLASH_SPI_CE1_PIN = 1;
            nFLASH_SPI_CE2_PIN = 1;
            nFLASH_SPI_CE3_PIN = 1;
            nFLASH_SPI_CE4_PIN = 1;
            nFLASH_SPI_CE5_PIN = 1;
            nFLASH_SPI_CE6_PIN = 1;
            nFLASH_SPI_CE7_PIN = 1;

            break;
    }
    
}

// Function to reset GPIO pins for ~CE and ~WP
void spiFlashGPIOReset(void) {
    
    // ~CE Pins
    nFLASH_SPI_CE0_PIN = 1;
    nFLASH_SPI_CE1_PIN = 1;
    nFLASH_SPI_CE2_PIN = 1;
    nFLASH_SPI_CE3_PIN = 1;
    nFLASH_SPI_CE4_PIN = 1;
    nFLASH_SPI_CE5_PIN = 1;
    nFLASH_SPI_CE6_PIN = 1;
    nFLASH_SPI_CE7_PIN = 1;
    
}

// Function to print status
void printSPIFlashStatus(void) {
    
    terminalTextAttributesReset();
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("SPI Flash Status:\n\r");
    
    if (SPI3CONbits.FRMEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    SPI Frame Support %s\n\r",
            SPI3CONbits.FRMEN ? "Enabled" : "Disabled");

    if (SPI3CONbits.MSSEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Slave Select Support %s\n\r",
            SPI3CONbits.MSSEN ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.FRMSYPW) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Frame Sync Pulse Width %s\n\r",
            SPI3CONbits.FRMSYPW ? "Word" : "Clock");
    
    if (SPI3CONbits.MCLKSEL) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Master Clock Select %s\n\r",
            SPI3CONbits.MCLKSEL ? "MCLK" : "PBCLK");
    
    if (SPI3CONbits.ENHBUF) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Enhanced Buffer Support %s\n\r",
            SPI3CONbits.ENHBUF ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.SIDL) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Stop in Idle Mode %s\n\r",
            SPI3CONbits.SIDL ? "Discontinue" : "Continue");
        
    if (SPI3CONbits.DISSDO) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Module SDOx Pin Control %s\n\r",
            SPI3CONbits.DISSDO ? "Disabled" : "Enabled");
    
    if (SPI3CONbits.MODE16) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    16 Bit Communication %s\n\r",
            SPI3CONbits.MODE16 ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.MODE32) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    32 Bit Communication %s\n\r",
            SPI3CONbits.MODE32 ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.SMP) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Input Sample Phase %s\n\r",
            SPI3CONbits.SMP ? "End of Data" : "Middle of Data");
    
    if (SPI3CONbits.CKE) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Clock Edge Select %s\n\r",
            SPI3CONbits.CKE ? "Falling Edge" : "Rising Edge");
    
    if (SPI3CONbits.SSEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Slave Select Enable %s\n\r",
            SPI3CONbits.SSEN ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.CKP) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Clock Polarity %s\n\r",
            SPI3CONbits.CKP ? "Inverted" : "Standard");
    
    if (SPI3CONbits.MSTEN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Master Mode Enable %s\n\r",
            SPI3CONbits.MSTEN ? "Enabled" : "Disabled");
    
    if (SPI3CONbits.DISSDI) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Module SDIx Pin Control %s\n\r",
            SPI3CONbits.DISSDI ? "Disabled" : "Enabled");
    
    printf("\n\r    Transmit Buffer Interrupt: ");
    
    switch (SPI3CONbits.STXISEL) {
     
        case 0b00:
            printf("When transmit operations are complete\n\r");
            break;
            
        case 0b01:
            printf("When buffer is completely empty\n\r");
            break;
            
        case 0b10:
            printf("When buffer is less than half empty\n\r");
            break;
    
        case 0b11:
            printf("When the buffer is not full\n\r");
            break;
            
    }
    
    
    printf("    Receive Buffer Interrupt: ");
    
    switch (SPI3CONbits.SRXISEL) {
     
        case 0b00:
            printf("When last word in receive buffer is read\n\r");
            break;
            
        case 0b01:
            printf("When buffer is not empty\n\r");
            break;
            
        case 0b10:
            printf("When buffer is at least half full\n\r");
            break;
    
        case 0b11:
            printf("When buffer is full\n\r");
            break;
            
    }
    
    printf("\n\r    SPIBRG: %d\n\r", SPI3BRG);
    
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Data for SPI Flash Installed:\n\r");
    terminalTextAttributesReset();
    
    #warning "this will have to be adjusted if number of spi flash chips is configurable"
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    uint8_t read_mfg_id, read_dev_id;
    
    uint8_t active_chip;
    for (active_chip = 0; active_chip < 8; active_chip++) {
        SPI_Flash_readID(active_chip, &read_mfg_id, &read_dev_id);
        printf("SPI Flash Chip %d: MFG ID = 0x%02X, DEV ID = 0x%02X\r\n", 
                active_chip, read_mfg_id, read_dev_id);
    }
    
    terminalTextAttributesReset();
}

// SPI3 Fault interrupt service routine
void __ISR(_SPI3_FAULT_VECTOR, ipl1SRS) spi3FaultISR(void) {
    
    // Record a SPI error
    error_handler.flags.flash_spi = 1;

    // Disable SPI interrupts
    disableInterrupt(SPI3_Transfer_Done);
    disableInterrupt(SPI3_Receive_Done);
    
    // Clear interrupt flag after ISR
    clearInterruptFlag(SPI3_Fault);
}

// Function to write single byte to transmit FIFO
inline void SPI3_writeByte(uint8_t write_byte) {
    
    SPI3BUF = write_byte;
    while(SPI3STATbits.SPIBUSY);
    SPI3BUF;    // dummy read
    
}


// Function to read single byte from receive FIFO
inline uint8_t SPI3_readByte(void) {
    
    SPI3BUF = 0xFF;
    while(SPI3STATbits.SPIBUSY);
    return SPI3BUF;
    
}

// This function erases a spi flash chip
void SPI_FLASH_chipErase(uint8_t chip_select) {
    
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    disableInterrupt(SPI3_Transfer_Done);
    
    // Write chip erase opcode to SPI3
    SPI3_writeByte(0x60);
    
    // Clear CS and WP signals
    spiFlashGPIOReset();
    
    softwareDelay(2500000);
    
}

// This function enables write enable
void SPI_Flash_writeEnable(uint8_t chip_select){
    
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    // Send write enable opcode
    SPI3_writeByte(0x06);
    
    // Clear CE and WP signals
    spiFlashGPIOReset();
    
    softwareDelay(30000);
    
}

// This function programs the status register in the chip passed as a parameter
// It sets all bits in the status register to 0, which disables block protection
// The write enable functions must be called beforehand
void SPI_Flash_blockProtectionDisable(uint8_t chip_select) {
 
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    // Send status register opcode
    SPI3_writeByte(0x01);
    // Write all zeros to status register
    SPI3_writeByte(0x00);
    
    // Clear CE and WP signals
    spiFlashGPIOReset();
    
    softwareDelay(30000);
    
}

// this function gets the MFG ID and Device ID from SPI Flash
void SPI_Flash_readID(uint8_t chip_select, uint8_t* read_mfg_id, uint8_t* read_dev_id) {
    
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    // Send read id register opcode
    SPI3_writeByte(0x90);
    
    // Send three bytes for address
    SPI3_writeByte(0x00);
    SPI3_writeByte(0x00);
    SPI3_writeByte(0x00);
    
    // read mfg id
    *read_mfg_id = SPI3_readByte();
    
    // read device id
    *read_dev_id = SPI3_readByte();

    // Clear CE and WP signals
    spiFlashGPIOReset();
    
    // softwareDelay(30000);
    
    clearInterruptFlag(SPI3_Transfer_Done);
    clearInterruptFlag(SPI3_Receive_Done);
    
}

// this function erases 4 kB sector, starting at the passed address
void SPI_flash_eraseSector(uint8_t chip_select, uint32_t start_address) {
    
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    uint8_t addr_msb = (uint8_t) (start_address >> 16) & 0xFF;
    uint8_t addr_mb = (uint8_t) (start_address >> 8) & 0xFF;
    uint8_t addr_lsb = (uint8_t) start_address & 0xFF;
    
    // Send sector erase opcode
    SPI3_writeByte(0x20);
    
    // send address of 4kB sector to erase
    SPI3_writeByte(addr_msb);
    SPI3_writeByte(addr_mb);
    SPI3_writeByte(addr_lsb);
    
    // Clear CE and WP signals
    spiFlashGPIOReset();
    
    softwareDelay(1200000);
    
}


///////////////////////////////////////////////////////////////////////////////////////////
// APPLICATION SPECIFIC


// this function disables write protection on all external flash chips
void externalFlashInitialize(void) {
 
    #warning "if number of external flash is configurable, this will need to change"
    uint8_t active_chip;
    for (active_chip = 0; active_chip < 8; active_chip++) {
        SPI_Flash_writeEnable(active_chip);
        SPI_Flash_blockProtectionDisable(active_chip);
    }
    
    
}

// this function erases one image worth of external flash memory, beginning at the passed address
// (this erases 16384 bytes = 16kB, so four complete flash sectors
void externalFlashEraseImageSlot(uint8_t chip_select, uint32_t start_address) {
    
    SPI_flash_eraseSector(chip_select, start_address);
    SPI_flash_eraseSector(chip_select, start_address + 4096);
    SPI_flash_eraseSector(chip_select, start_address + 8192);
    SPI_flash_eraseSector(chip_select, start_address + 12288);
    
}

// this function copies contents of panel_direct_data_scratchpad to an image slot
// this function is blocking - REALLY blocking
// start address must be mod 16384
void externalFlashWriteImageSlot(uint8_t chip_select, uint32_t start_address) {
    
    SPI_Flash_writeEnable(chip_select);
    
    SPI_Flash_blockProtectionDisable(chip_select);
    
    SPI_Flash_writeEnable(chip_select);
    
    // erase four 4kB sectors, starting at start_address
    externalFlashEraseImageSlot(chip_select, start_address);
    
    SPI_Flash_writeEnable(chip_select);
    
    // Set CS and WP signals
    spiFlashGPIOSet(chip_select);
    
    uint32_t current_data_write_address = 0;
    
    uint8_t addr_msb = (uint8_t) (start_address >> 16) & 0xFF;
    uint8_t addr_mb = (uint8_t) (start_address >> 8) & 0xFF;
    uint8_t addr_lsb = (uint8_t) start_address & 0xFF;
    
    // Send AAI programming opcode
    SPI3_writeByte(0xAD);
    
    // write the address we want to start at
    SPI3_writeByte(addr_msb);
    SPI3_writeByte(addr_mb);
    SPI3_writeByte(addr_lsb);
    
    // Send first byte of data to be programmed
    SPI3_writeByte(panel_direct_data_scratchpad[current_data_write_address]);
    current_data_write_address++;
    
    // send second byte
    SPI3_writeByte(panel_direct_data_scratchpad[current_data_write_address]);
    current_data_write_address++;
    
    // reset CS signal
    spiFlashGPIOReset();
    
    softwareDelay(1000);
    
    // loop through this until all data to be written has been sent
    while (current_data_write_address < 16384) {
     
        // Set CS and WP signals
        spiFlashGPIOSet(chip_select);
        
        // Send AAI programming opcode
        SPI3_writeByte(0xAD);
        
        // Send first byte of data to be programmed
        SPI3_writeByte(panel_direct_data_scratchpad[current_data_write_address]);
        current_data_write_address++;

        // send second byte
        SPI3_writeByte(panel_direct_data_scratchpad[current_data_write_address]);
        current_data_write_address++;
        
        // reset CS signal
        spiFlashGPIOReset();
        
        softwareDelay(1000);
        
    }
    
     // Toggle CE
    spiFlashGPIOSet(chip_select);

    // Send Write Disable opcode
    SPI3_writeByte(0x04);
    spiFlashGPIOReset();
    softwareDelay(2000);
    
    spiFlashGPIOSet(chip_select);
    
    // Send read status register opcode
    SPI3_writeByte(0x05);
    
    // Send garbage data to read back status register, we're not doing anything with this though
    SPI3_writeByte(0x00);
    
    spiFlashGPIOReset();
    
}

// this function copies contents of spi flash slot into panel_direct_data_scratchpad
// this function is blocking - REALLY blocking
// start address must be mod 16384
void externalFlashReadImageSlot(uint8_t chip_select, uint32_t start_address) {
 
    spiFlashGPIOSet(chip_select);
    
    uint32_t current_data_read_address;
    
    uint8_t addr_msb = (uint8_t) (start_address >> 16) & 0xFF;
    uint8_t addr_mb = (uint8_t) (start_address >> 8) & 0xFF;
    uint8_t addr_lsb = (uint8_t) start_address & 0xFF;
    
    // Write chip read opcode to SPI3 (0x0B for high speed read, 0x03 for standard read))
    SPI3_writeByte(0x03);
    
    // write the address we want to start at
    SPI3_writeByte(addr_msb);
    SPI3_writeByte(addr_mb);
    SPI3_writeByte(addr_lsb);
    
    // loop through this until all data to be read has been received
    for (current_data_read_address = 0; current_data_read_address < 16384; current_data_read_address++) {
     
        panel_direct_data_scratchpad[current_data_read_address] = SPI3_readByte();
        
    }
    
    spiFlashGPIOReset();
    
}

// this function returns 1 if a slot at passed address is filled/contains image data
// returns 0 if all contents of slot at 0xFF (erased state)
uint8_t externalFlashCheckIfSlotFilled(uint8_t chip_select, uint32_t start_address) {
 
    spiFlashGPIOSet(chip_select);
    
    uint32_t current_data_read_address;
    
    uint8_t addr_msb = (uint8_t) (start_address >> 16) & 0xFF;
    uint8_t addr_mb = (uint8_t) (start_address >> 8) & 0xFF;
    uint8_t addr_lsb = (uint8_t) start_address & 0xFF;
    
    // Write chip read opcode to SPI3 (0x0B for high speed read, 0x03 for standard read))
    SPI3_writeByte(0x03);
    
    // write the address we want to start at
    SPI3_writeByte(addr_msb);
    SPI3_writeByte(addr_mb);
    SPI3_writeByte(addr_lsb);
    
    // loop through this until all data to be read has been received
    for (current_data_read_address = 0; current_data_read_address < 16384; current_data_read_address++) {
     
        // read all contents of slot sequentially
        uint8_t read_val = SPI3_readByte();
        
        if (read_val != 0xFF) {
         
            spiFlashGPIOReset();
            return 1;
            
        }
        
    }
    
    spiFlashGPIOReset();
    return 0;
    
}