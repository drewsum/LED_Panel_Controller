/* ************************************************************************** */
/** Analog to Digital Converter

  @Company
 Marquette Senior Design E44 2018-2019

  @File Name
    adc.h

  @Summary
 Gives APIs for controlling ADC and measuring application channels

 */
/* ************************************************************************** */

#ifndef _ADC_H    /* Guard against multiple inclusion */
#define _ADC_H

#include <xc.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "adc_channels.h"

// ADC constants macros
#define ADC_VOLTS_PER_LSB           0.000805861

// This is an ADC result scaling factor calculated using the internal reference voltage
volatile double adc_cal_gain = 1.0;

// This function initializes the ADC modules
void ADCInitialize(void);

// this is the ADC fault interrupt service routine
void __ISR(_ADC_FAULT_VECTOR, IPL3SRS) ADCFaultISR(void);

// This function prints the status of the ADC
void printADCStatus(void);

#endif /* _ADC_H */

/* *****************************************************************************
 End of File
 */