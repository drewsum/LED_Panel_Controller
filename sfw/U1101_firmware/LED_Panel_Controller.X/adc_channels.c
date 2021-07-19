
#include "adc_channels.h"

#include <stdio.h>

#include "32mz_interrupt_control.h"
#include "telemetry.h"
#include "terminal_control.h"

/*
 * 
 * Used ADC channels: 
 * 
 * AN25 - VBAT ADC
 * AN43 - Internal VREF
 * AN44 - Die Temp
 * 
 * */

// this function sets up ADC channels
void adcChannelsInitialize(void) {
 
    /* Select ADC input mode for each channel*/
    ADCIMCON2bits.DIFF25 = 0; // Single ended mode
    ADCIMCON2bits.SIGN25 = 0; // unsigned data format
    ADCIMCON3bits.DIFF43 = 0; // Single ended mode
    ADCIMCON3bits.SIGN43 = 0; // unsigned data format
    ADCIMCON3bits.DIFF44 = 0; // Single ended mode
    ADCIMCON3bits.SIGN44 = 0; // unsigned data format
    
    /* Configure interrupt enables */
    ADCGIRQEN1bits.AGIEN25 = 1;     // enable data ready 25 IRQ
    ADCGIRQEN2bits.AGIEN43 = 1;     // enable data ready 43 IRQ
    ADCGIRQEN2bits.AGIEN44 = 1;     // enable data ready 44 IRQ
    
    // set IRQ priorities
    setInterruptPriority(ADC_Data_25, 1);
    setInterruptPriority(ADC_Data_43, 1);
    setInterruptPriority(ADC_Data_44, 1);
    
    // set IRQ subpriorities
    setInterruptSubpriority(ADC_Data_25, 1);
    setInterruptSubpriority(ADC_Data_43, 2);
    setInterruptSubpriority(ADC_Data_44, 3);
    
    /* Configure common scan */
    ADCCSS1bits.CSS25 = 1;          // Enable Channel 25 for common scan
    ADCCSS2bits.CSS43 = 1;          // Enable Channel 43 for common scan
    ADCCSS2bits.CSS44 = 1;          // Enable Channel 44 for common scan
    
    // clear interrupt flags
    clearInterruptFlag(ADC_Data_25);
    clearInterruptFlag(ADC_Data_43);
    clearInterruptFlag(ADC_Data_44);
    
    // enable data ready interrupts
    enableInterrupt(ADC_Data_25);
    enableInterrupt(ADC_Data_43);
    enableInterrupt(ADC_Data_44);
    
}

void __ISR(_ADC_DATA25_VECTOR, IPL1SRS) ADCData25ISR(void) {

    // check to see if data is actually ready
    if (ADCDSTAT1bits.ARDY25) {
        // copy ADC conversion result into telemetry
        telemetry.backup_battery_voltage = (double) ADCDATA25 * ADC_VOLTS_PER_LSB * adc_cal_gain * 5.8636;
        
    }
    
    // clear IRQ
    clearInterruptFlag(ADC_Data_25);
    
}

void __ISR(_ADC_DATA43_VECTOR, IPL1SRS) ADCData43ISR(void) {

    // check to see if data is actually ready
    if (ADCDSTAT2bits.ARDY43) {
        // copy ADC conversion result into telemetry
        telemetry.adc_vref_voltage = (double) ADCDATA43 * ADC_VOLTS_PER_LSB;
        // compensate for errors in the ADC, we know VREF is supposed to be 1.2V
        adc_cal_gain = (1.2 / telemetry.adc_vref_voltage);
        
    }
    
    // clear IRQ
    clearInterruptFlag(ADC_Data_43);
    
}

void __ISR(_ADC_DATA44_VECTOR, IPL1SRS) ADCData44ISR(void) {
    
    // check to see if data is actually ready
    if (ADCDSTAT2bits.ARDY44) {

        // copy ADC conversion result into telemetry
        telemetry.mcu_die_temp = (double) ((ADCDATA44 * ADC_VOLTS_PER_LSB * adc_cal_gain) - 0.7) / 0.005 + HOST_TEMP_OFFSET;
        
    }
    
    // clear IRQ
    clearInterruptFlag(ADC_Data_44);
    
}

#warning "find an efficient way of printing this"
// this function prints out ADC channel status
void printADCChannelStatus(void) {
 
    // print out presence of each analog input
    if (ADCSYSCFG0bits.AN0) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN0 is %s\n\r", ADCSYSCFG0bits.AN0 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN1) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN1 is %s\n\r", ADCSYSCFG0bits.AN1 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN2) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN2 is %s\n\r", ADCSYSCFG0bits.AN2 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 is %s\n\r", ADCSYSCFG0bits.AN3 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 is %s\n\r", ADCSYSCFG0bits.AN3 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN4) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN4 is %s\n\r", ADCSYSCFG0bits.AN4 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN5) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN5 is %s\n\r", ADCSYSCFG0bits.AN5 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN6) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN6 is %s\n\r", ADCSYSCFG0bits.AN6 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN7) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN7 is %s\n\r", ADCSYSCFG0bits.AN7 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN8) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN8 is %s\n\r", ADCSYSCFG0bits.AN8 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN9) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN9 is %s\n\r", ADCSYSCFG0bits.AN9 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN10) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN10 is %s\n\r", ADCSYSCFG0bits.AN10 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN11) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN11 is %s\n\r", ADCSYSCFG0bits.AN11 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN12) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN12 is %s\n\r", ADCSYSCFG0bits.AN12 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN13) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN13 is %s\n\r", ADCSYSCFG0bits.AN13 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN14) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN14 is %s\n\r", ADCSYSCFG0bits.AN14 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN15) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN15 is %s\n\r", ADCSYSCFG0bits.AN15 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN16) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN16 is %s\n\r", ADCSYSCFG0bits.AN16 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN17) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN17 is %s\n\r", ADCSYSCFG0bits.AN17 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN18) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN18 is %s\n\r", ADCSYSCFG0bits.AN18 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN19) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN19 is %s\n\r", ADCSYSCFG0bits.AN19 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN20) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN20 is %s\n\r", ADCSYSCFG0bits.AN20 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN21) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN21 is %s\n\r", ADCSYSCFG0bits.AN21 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN22) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN22 is %s\n\r", ADCSYSCFG0bits.AN22 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN23) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN23 is %s\n\r", ADCSYSCFG0bits.AN23 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN24) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN24 is %s\n\r", ADCSYSCFG0bits.AN24 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN25) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN25 is %s\n\r", ADCSYSCFG0bits.AN25 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN26) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN26 is %s\n\r", ADCSYSCFG0bits.AN26 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN27) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN27 is %s\n\r", ADCSYSCFG0bits.AN27 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN28) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN28 is %s\n\r", ADCSYSCFG0bits.AN28 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN29) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN29 is %s\n\r", ADCSYSCFG0bits.AN29 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN30) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN30 is %s\n\r", ADCSYSCFG0bits.AN30 ? "present" : "absent");
    if (ADCSYSCFG0bits.AN31) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN31 is %s\n\r", ADCSYSCFG0bits.AN31 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN32) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN32 is %s\n\r", ADCSYSCFG1bits.AN32 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN33) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN33 is %s\n\r", ADCSYSCFG1bits.AN33 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN34) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN34 is %s\n\r", ADCSYSCFG1bits.AN34 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN35) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN35 is %s\n\r", ADCSYSCFG1bits.AN35 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN36) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN36 is %s\n\r", ADCSYSCFG1bits.AN36 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN37) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN37 is %s\n\r", ADCSYSCFG1bits.AN37 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN38) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN38 is %s\n\r", ADCSYSCFG1bits.AN38 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN39) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN39 is %s\n\r", ADCSYSCFG1bits.AN39 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN40) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN40 is %s\n\r", ADCSYSCFG1bits.AN40 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN41) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN41 is %s\n\r", ADCSYSCFG1bits.AN41 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN42) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN42 is %s\n\r", ADCSYSCFG1bits.AN42 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN43) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN43 is %s\n\r", ADCSYSCFG1bits.AN43 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN44) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN44 is %s\n\r", ADCSYSCFG1bits.AN44 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN45) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN45 is %s\n\r", ADCSYSCFG1bits.AN45 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN46) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN46 is %s\n\r", ADCSYSCFG1bits.AN46 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN47) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN47 is %s\n\r", ADCSYSCFG1bits.AN47 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN48) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN48 is %s\n\r", ADCSYSCFG1bits.AN48 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN49) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN49 is %s\n\r", ADCSYSCFG1bits.AN49 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN50) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN50 is %s\n\r", ADCSYSCFG1bits.AN50 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN51) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN51 is %s\n\r", ADCSYSCFG1bits.AN51 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN52) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN52 is %s\n\r", ADCSYSCFG1bits.AN52 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN53) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN53 is %s\n\r", ADCSYSCFG1bits.AN53 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN54) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN54 is %s\n\r", ADCSYSCFG1bits.AN54 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN55) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN55 is %s\n\r", ADCSYSCFG1bits.AN55 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN56) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN56 is %s\n\r", ADCSYSCFG1bits.AN56 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN57) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN57 is %s\n\r", ADCSYSCFG1bits.AN57 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN58) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN58 is %s\n\r", ADCSYSCFG1bits.AN58 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN59) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN59 is %s\n\r", ADCSYSCFG1bits.AN59 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN60) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN60 is %s\n\r", ADCSYSCFG1bits.AN60 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN61) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN61 is %s\n\r", ADCSYSCFG1bits.AN61 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN62) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN62 is %s\n\r", ADCSYSCFG1bits.AN62 ? "present" : "absent");
    if (ADCSYSCFG1bits.AN63) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN63 is %s\n\r\n\r", ADCSYSCFG1bits.AN63 ? "present" : "absent");
    
    // print out common scan setting for each input
    if (ADCCSS1bits.CSS0) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN0 scan %s\n\r", ADCCSS1bits.CSS0 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS1) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN1 scan %s\n\r", ADCCSS1bits.CSS1 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS2) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN2 scan %s\n\r", ADCCSS1bits.CSS2 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 scan %s\n\r", ADCCSS1bits.CSS3 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 scan %s\n\r", ADCCSS1bits.CSS3 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS4) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN4 scan %s\n\r", ADCCSS1bits.CSS4 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS5) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN5 scan %s\n\r", ADCCSS1bits.CSS5 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS6) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN6 scan %s\n\r", ADCCSS1bits.CSS6 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS7) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN7 scan %s\n\r", ADCCSS1bits.CSS7 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS8) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN8 scan %s\n\r", ADCCSS1bits.CSS8 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS9) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN9 scan %s\n\r", ADCCSS1bits.CSS9 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS10) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN10 scan %s\n\r", ADCCSS1bits.CSS10 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS11) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN11 scan %s\n\r", ADCCSS1bits.CSS11 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS12) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN12 scan %s\n\r", ADCCSS1bits.CSS12 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS13) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN13 scan %s\n\r", ADCCSS1bits.CSS13 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS14) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN14 scan %s\n\r", ADCCSS1bits.CSS14 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS15) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN15 scan %s\n\r", ADCCSS1bits.CSS15 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS16) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN16 scan %s\n\r", ADCCSS1bits.CSS16 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS17) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN17 scan %s\n\r", ADCCSS1bits.CSS17 ? "enabled" : "disabled");
    if (ADCCSS1bits.CSS18) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN18 scan %s\n\r", ADCCSS1bits.CSS18 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS19) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN19 scan %s\n\r", ADCCSS1bits.CSS19 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS20) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN20 scan %s\n\r", ADCCSS1bits.CSS20 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS21) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN21 scan %s\n\r", ADCCSS1bits.CSS21 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS22) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN22 scan %s\n\r", ADCCSS1bits.CSS22 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS23) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN23 scan %s\n\r", ADCCSS1bits.CSS23 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS24) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN24 scan %s\n\r", ADCCSS1bits.CSS24 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS25) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN25 scan %s\n\r", ADCCSS1bits.CSS25 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS26) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN26 scan %s\n\r", ADCCSS1bits.CSS26 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS27) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN27 scan %s\n\r", ADCCSS1bits.CSS27 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS28) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN28 scan %s\n\r", ADCCSS1bits.CSS28 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS29) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN29 scan %s\n\r", ADCCSS1bits.CSS29 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS30) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN30 scan %s\n\r", ADCCSS1bits.CSS30 ? "enabled" : "disabled");
//    if (ADCCSS1bits.CSS31) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN31 scan %s\n\r", ADCCSS1bits.CSS31 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS32) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN32 scan %s\n\r", ADCCSS2bits.CSS32 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS33) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN33 scan %s\n\r", ADCCSS2bits.CSS33 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS34) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN34 scan %s\n\r", ADCCSS2bits.CSS34 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS35) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN35 scan %s\n\r", ADCCSS2bits.CSS35 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS36) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN36 scan %s\n\r", ADCCSS2bits.CSS36 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS37) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN37 scan %s\n\r", ADCCSS2bits.CSS37 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS38) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN38 scan %s\n\r", ADCCSS2bits.CSS38 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS39) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN39 scan %s\n\r", ADCCSS2bits.CSS39 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS40) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN40 scan %s\n\r", ADCCSS2bits.CSS40 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS41) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN41 scan %s\n\r", ADCCSS2bits.CSS41 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS42) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN42 scan %s\n\r", ADCCSS2bits.CSS42 ? "enabled" : "disabled");
    if (ADCCSS2bits.CSS43) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN43 scan %s\n\r", ADCCSS2bits.CSS43 ? "enabled" : "disabled");
    if (ADCCSS2bits.CSS44) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN44 scan %s\n\r\n\r", ADCCSS2bits.CSS44 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS45) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN45 scan %s\n\r", ADCCSS2bits.CSS45 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS46) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN46 scan %s\n\r", ADCCSS2bits.CSS46 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS47) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN47 scan %s\n\r", ADCCSS2bits.CSS47 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS48) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN48 scan %s\n\r", ADCCSS2bits.CSS48 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS49) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN49 scan %s\n\r", ADCCSS2bits.CSS49 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS50) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN50 scan %s\n\r", ADCCSS2bits.CSS50 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS51) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN51 scan %s\n\r", ADCCSS2bits.CSS51 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS52) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN52 scan %s\n\r", ADCCSS2bits.CSS52 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS53) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN53 scan %s\n\r", ADCCSS2bits.CSS53 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS54) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN54 scan %s\n\r", ADCCSS2bits.CSS54 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS55) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN55 scan %s\n\r", ADCCSS2bits.CSS55 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS56) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN56 scan %s\n\r", ADCCSS2bits.CSS56 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS57) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN57 scan %s\n\r", ADCCSS2bits.CSS57 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS58) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN58 scan %s\n\r", ADCCSS2bits.CSS58 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS59) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN59 scan %s\n\r", ADCCSS2bits.CSS59 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS60) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN60 scan %s\n\r", ADCCSS2bits.CSS60 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS61) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN61 scan %s\n\r", ADCCSS2bits.CSS61 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS62) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN62 scan %s\n\r", ADCCSS2bits.CSS62 ? "enabled" : "disabled");
//    if (ADCCSS2bits.CSS63) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN63 scan %s\n\r\n\r", ADCCSS2bits.CSS63 ? "enabled" : "disabled");

    
    // print out data ready IRQ setting for each input
    if (ADCCSS1bits.CSS0) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN0 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN0 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN1) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN1 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN1 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN2) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN2 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN2 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN3 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN3) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN3 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN3 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN4) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN4 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN4 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN5) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN5 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN5 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN6) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN6 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN6 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN7) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN7 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN7 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN8) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN8 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN8 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN9) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN9 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN9 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN10) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN10 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN10 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN11) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN11 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN11 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN12) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN12 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN12 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN13) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN13 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN13 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN14) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN14 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN14 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN15) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN15 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN15 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN16) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN16 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN16 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN17) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN17 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN17 ? "enabled" : "disabled");
    if (ADCGIRQEN1bits.AGIEN18) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN18 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN18 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN19) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN19 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN19 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN20) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN20 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN20 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN21) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN21 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN21 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN22) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN22 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN22 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN23) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN23 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN23 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN24) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN24 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN24 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN25) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN25 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN25 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN26) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN26 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN26 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN27) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN27 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN27 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN28) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN28 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN28 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN29) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN29 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN29 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN30) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN30 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN30 ? "enabled" : "disabled");
//    if (ADCGIRQEN1bits.AGIEN31) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN31 data interrupt %s\n\r", ADCGIRQEN1bits.AGIEN31 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN32) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN32 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN32 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN33) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN33 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN33 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN34) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN34 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN34 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN35) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN35 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN35 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN36) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN36 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN36 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN37) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN37 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN37 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN38) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN38 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN38 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN39) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN39 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN39 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN40) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN40 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN40 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN41) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN41 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN41 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN42) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN42 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN42 ? "enabled" : "disabled");
    if (ADCGIRQEN2bits.AGIEN43) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN43 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN43 ? "enabled" : "disabled");
    if (ADCGIRQEN2bits.AGIEN44) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    Channel AN44 data interrupt %s\n\r\n\r", ADCGIRQEN2bits.AGIEN44 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN45) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN45 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN45 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN46) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN46 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN46 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN47) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN47 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN47 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN48) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN48 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN48 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN49) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN49 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN49 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN50) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN50 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN50 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN51) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN51 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN51 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN52) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN52 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN52 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN53) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN53 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN53 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN54) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN54 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN54 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN55) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN55 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN55 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN56) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN56 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN56 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN57) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN57 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN57 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN58) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN58 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN58 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN59) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN59 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN59 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN60) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN60 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN60 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN61) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN61 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN61 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN62) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN62 data interrupt %s\n\r", ADCGIRQEN2bits.AGIEN62 ? "enabled" : "disabled");
//    if (ADCGIRQEN2bits.AGIEN63) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
//    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
//    printf("    Channel AN63 data interrupt %s\n\r\n\r", ADCGIRQEN2bits.AGIEN63 ? "enabled" : "disabled");
    
    terminalTextAttributesReset();
    
}