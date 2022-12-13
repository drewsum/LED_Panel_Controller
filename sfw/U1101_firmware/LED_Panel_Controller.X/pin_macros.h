
#ifndef _PIN_MACROS_H    /* Guard against multiple inclusion */
#define _PIN_MACROS_H

#include <xc.h>

#define HIGH    1
#define LOW     0

// These pin macros allow for easier manipulation of GPIO with matching
// signal names from the hardware schematic

// Port A
#define nFLASH_SPI_CE0_PIN              LATAbits.LATA0
#define nFLASH_SPI_CE1_PIN              LATAbits.LATA1
#define nFLASH_SPI_CE2_PIN              LATAbits.LATA2
#define nFLASH_SPI_CE3_PIN              LATAbits.LATA3
#define nFLASH_SPI_CE4_PIN              LATAbits.LATA4
#define nFLASH_SPI_CE5_PIN              LATAbits.LATA5
#define nFLASH_SPI_CE6_PIN              LATAbits.LATA6
#define nFLASH_SPI_CE7_PIN              LATAbits.LATA7
#define nETC_CONFIG_PIN                 PORTAbits.RA9
#define nMLVDS_CONFIG_PIN               PORTAbits.RA10
#define ERROR_LED_PIN                   LATAbits.LATA14
#define RESET_LED_PIN                   LATAbits.LATA15

// Port B
#define ROW_A_PIN                       LATBbits.LATB0
#define ROW_B_PIN                       LATBbits.LATB1
#define ROW_C_PIN                       LATBbits.LATB2
#define ROW_D_PIN                       LATBbits.LATB3
#define ROW_E_PIN                       LATBbits.LATB4
#define PANEL_LAT_PIN                   LATBbits.LATB5
#define MLVDS_STREAM_MODE_LED_PIN       LATBbits.LATB8
#define POS12_PGOOD_PIN                 PORTBbits.RB11
#define POS5_PGOOD_PIN                  PORTBbits.RB12
#define POS5_RUN_PIN                    LATBbits.LATB13
#define VBAT_PGOOD_PIN                  PORTBbits.RB15

// Port C
#define nSD_SPI_CS_PIN                  LATCbits.LATC2
#define nSD_CARD_DET_PIN                PORTCbits.RC4
#define nBACKUP_RTC_CONFIG_PIN          PORTCbits.RC15

// Port D
#define CPU_TRAP_LED_PIN                LATDbits.LATD0
#define nPANEL_OE_PIN                   LATDbits.LATD1
#define HEARTBEAT_LED_PIN               LATDbits.LATD9

// Port E
#define VOID_MODE_LED_PIN               PORTEbits.RE9

// Port F
#define nTELEMETRY_CONFIG_PIN           PORTFbits.RF0
#define POS5_USB_PGOOD_PIN              PORTFbits.RF2
#define PGOOD_LED_SHDN_PIN              LATFbits.LATF8
#define POS3P3_PGOOD_PIN                PORTFbits.RF12

// Port G
#define USB_STREAM_MODE_LED_PIN         LATGbits.LATG0
#define FLASH_SLIDESHOW_MODE_LED_PIN    LATGbits.LATG1
#define PROG1_MODE_LED_PIN              LATGbits.LATG9
#define PROG2_MODE_LED_PIN              LATGbits.LATG12
#define PROG3_MODE_LED_PIN              LATGbits.LATG13
#define PROG4_MODE_LED_PIN              LATGbits.LATG14
#define nSPI_FLASH_CONFIG_PIN           PORTGbits.RG15

#endif /* _PIN_MACROS_H */

/* *****************************************************************************
 End of File
 */
