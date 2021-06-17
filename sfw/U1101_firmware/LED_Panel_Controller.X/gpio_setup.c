
#include <xc.h>

#include "gpio_setup.h"

// initializes port A GPIO pins
void portAGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_a, 0, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 1, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 2, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 3, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 4, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 5, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 6, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 7, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 9, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 10, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 14, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_a, 15, TRIS_OUTPUT, LAT_HIGH, ODC_ENABLE, ANALOG_DISABLE);
    
}

// initializes port B GPIO pins
void portBGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_b, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 2, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 4, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 5, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 6, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 7, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 8, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 9, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RB9 to SDI3
    gpioPinSetup(gpio_port_b, 10, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RB10 to SDO3
    gpioPinSetup(gpio_port_b, 11, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 12, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 14, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_b, 15, TRIS_INPUT , LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);

}

// initializes port C GPIO pins
void portCGPIOInitialize (void) {

    gpioPinSetup(gpio_port_c, 1, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RC1 to SDI5
    gpioPinSetup(gpio_port_c, 2, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_c, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_c, 4, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_c, 12, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_c, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RC13 to REFCLK1
    gpioPinSetup(gpio_port_c, 14, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_c, 15, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port D GPIO pins
void portDGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_d, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 1, TRIS_OUTPUT, LAT_HIGH, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 2, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RD2 to U1RX
    gpioPinSetup(gpio_port_d, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RD3 to U1TX
    gpioPinSetup(gpio_port_d, 4, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 5, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 9, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RD9 to OC5
    gpioPinSetup(gpio_port_d, 10, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 11, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 12, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RD12 to SS4
    gpioPinSetup(gpio_port_d, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 14, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_d, 15, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RD15 to SDI4
    
}

// initializes port E GPIO pins
void portEGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_e, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 2, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 4, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 5, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 6, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 7, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_e, 8, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_ENABLE);
    gpioPinSetup(gpio_port_e, 9, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port F GPIO pins
void portFGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_f, 0, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RF1 to SDO5
    gpioPinSetup(gpio_port_f, 2, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 3, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 4, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 5, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 8, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 12, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_f, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}

// initializes port G GPIO pins
void portGGPIOInitialize (void) {
    
    gpioPinSetup(gpio_port_g, 0, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 1, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 6, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RG1 to INT2
    gpioPinSetup(gpio_port_g, 7, TRIS_INPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RG1 to INT4
    gpioPinSetup(gpio_port_g, 8, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    #warning "unfinished PPS" // assign RG8 to OC3    
    gpioPinSetup(gpio_port_g, 9, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 12, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 13, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 14, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    gpioPinSetup(gpio_port_g, 15, TRIS_OUTPUT, LAT_LOW, ODC_DISABLE, ANALOG_DISABLE);
    
}


// don't change these
// this function allows for a more convenient way to setup pins
void gpioPinSetup(port_name_t port_name, 
    uint8_t pin_number,
    uint8_t tris_setting,
    uint8_t lat_setting,
    uint8_t open_drain_setting,
    uint8_t analog_setting) {

    #ifdef LATA
    if (port_name == gpio_port_a) {
        // set LAT for this pin
        LATACLR = (1 << pin_number);
        LATASET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCACLR = (1 << pin_number);
        ODCASET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELA
        ANSELACLR = (1 << pin_number);
        ANSELASET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISACLR = (1 << pin_number);
        TRISASET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATB
    if (port_name == gpio_port_b) {
        // set LAT for this pin
        LATBCLR = (1 << pin_number);
        LATBSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCBCLR = (1 << pin_number);
        ODCBSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELB
        ANSELBCLR = (1 << pin_number);
        ANSELBSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISBCLR = (1 << pin_number);
        TRISBSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATC
    if (port_name == gpio_port_c) {
        // set LAT for this pin
        LATCCLR = (1 << pin_number);
        LATCSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCCCLR = (1 << pin_number);
        ODCCSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELC
        ANSELCCLR = (1 << pin_number);
        ANSELCSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISCCLR = (1 << pin_number);
        TRISCSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATD
    if (port_name == gpio_port_d) {
        // set LAT for this pin
        LATDCLR = (1 << pin_number);
        LATDSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCDCLR = (1 << pin_number);
        ODCDSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELD
        ANSELDCLR = (1 << pin_number);
        ANSELDSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISDCLR = (1 << pin_number);
        TRISDSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATE
    if (port_name == gpio_port_e) {
        // set LAT for this pin
        LATECLR = (1 << pin_number);
        LATESET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCECLR = (1 << pin_number);
        ODCESET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELE
        ANSELECLR = (1 << pin_number);
        ANSELESET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISECLR = (1 << pin_number);
        TRISESET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATF
    if (port_name == gpio_port_f) {
        // set LAT for this pin
        LATFCLR = (1 << pin_number);
        LATFSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCFCLR = (1 << pin_number);
        ODCFSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELF
        ANSELFCLR = (1 << pin_number);
        ANSELFSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISFCLR = (1 << pin_number);
        TRISFSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATG
    if (port_name == gpio_port_g) {
        // set LAT for this pin
        LATGCLR = (1 << pin_number);
        LATGSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCGCLR = (1 << pin_number);
        ODCGSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELG
        ANSELGCLR = (1 << pin_number);
        ANSELGSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISGCLR = (1 << pin_number);
        TRISGSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATH
    if (port_name == gpio_port_h) {
        // set LAT for this pin
        LATHCLR = (1 << pin_number);
        LATHSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCHCLR = (1 << pin_number);
        ODCHSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELH
        ANSELHCLR = (1 << pin_number);
        ANSELHSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISHCLR = (1 << pin_number);
        TRISHSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATJ
    if (port_name == gpio_port_j) {
        // set LAT for this pin
        LATJCLR = (1 << pin_number);
        LATJSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCJCLR = (1 << pin_number);
        ODCJSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELJ
        ANSELJCLR = (1 << pin_number);
        ANSELJSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISJCLR = (1 << pin_number);
        TRISJSET = (tris_setting << pin_number);
    }
    #endif

    #ifdef LATK
    if (port_name == gpio_port_k) {
        // set LAT for this pin
        LATKCLR = (1 << pin_number);
        LATKSET = (lat_setting << pin_number);
        // set ODC for this pin
        ODCKCLR = (1 << pin_number);
        ODCKSET = (open_drain_setting << pin_number);
        // set ANSEL for this pin
        #ifdef ANSELK
        ANSELKCLR = (1 << pin_number);
        ANSELKSET = (analog_setting << pin_number);
        #endif
        // Set TRIS for this pin
        TRISKCLR = (1 << pin_number);
        TRISKSET = (tris_setting << pin_number);
    }
    #endif

}

// initializes GPIO ports on microcontroller
void gpioInitialize (void) {
    
    // Unlock peripheral pin select
    PPSUnlock();
    
    portAGPIOInitialize();
    portBGPIOInitialize();
    portCGPIOInitialize();
    portDGPIOInitialize();
    portEGPIOInitialize();
    portFGPIOInitialize();
    portGGPIOInitialize();
    
    // Lock PPS
    PPSLock();
    
}
