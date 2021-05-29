EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 34
Title "LED Panel Controller"
Date "2021-03-31"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3020 6000 0    40   Input ~ 0
~PIC32MZ_MCLR
$Comp
L power:GND #PWR01101
U 1 1 5CB14B21
P 2910 5580
F 0 "#PWR01101" H 2910 5330 50  0001 C CNN
F 1 "GND" H 2910 5430 50  0000 C CNN
F 2 "" H 2910 5580 50  0001 C CNN
F 3 "" H 2910 5580 50  0001 C CNN
	1    2910 5580
	1    0    0    -1  
$EndComp
Wire Wire Line
	2910 5580 2910 5500
Wire Wire Line
	2910 5500 3020 5500
NoConn ~ 3020 5400
NoConn ~ 3020 5600
NoConn ~ 3020 5700
Text GLabel 9130 4500 2    50   Output ~ 0
I2C_SCL
Text GLabel 9130 4400 2    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	7020 4400 8240 4400
Wire Wire Line
	7020 4500 8830 4500
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DAD1
P 8830 4170
AR Path="/5BB27BA3/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E9E0EA5/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5E9E0E87/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE4A89/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5EAE2F23/5EB7DAD1" Ref="R?"  Part="1" 
AR Path="/5F5829D3/5EB7DAD1" Ref="R1102"  Part="1" 
F 0 "R1102" H 8750 4170 50  0000 R CNN
F 1 "10k" V 8830 4170 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8830 4170 50  0001 C CNN
F 3 "" H 8830 4170 50  0001 C CNN
F 4 "0402" H 8930 4250 50  0000 L CNN "display_footprint"
F 5 "1%" H 8930 4170 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8940 4090 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8830 4170 50  0001 C CNN "Digi-Key PN"
	1    8830 4170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01107
U 1 1 5EB7DAD7
P 8830 4020
F 0 "#PWR01107" H 8830 3870 50  0001 C CNN
F 1 "+3.3V" H 8830 4160 50  0000 C CNN
F 2 "" H 8830 4020 50  0001 C CNN
F 3 "" H 8830 4020 50  0001 C CNN
	1    8830 4020
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DEAB
P 8240 4170
AR Path="/5BB27BA3/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E0F9110/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E9E0EA5/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5E9E0E87/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE4A89/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5EAE2F23/5EB7DEAB" Ref="R?"  Part="1" 
AR Path="/5F5829D3/5EB7DEAB" Ref="R1101"  Part="1" 
F 0 "R1101" H 8160 4170 50  0000 R CNN
F 1 "10k" V 8240 4170 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8240 4170 50  0001 C CNN
F 3 "" H 8240 4170 50  0001 C CNN
F 4 "0402" H 8340 4250 50  0000 L CNN "display_footprint"
F 5 "1%" H 8340 4170 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8350 4090 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8240 4170 50  0001 C CNN "Digi-Key PN"
	1    8240 4170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01106
U 1 1 5EB7DEB5
P 8240 4020
F 0 "#PWR01106" H 8240 3870 50  0001 C CNN
F 1 "+3.3V" H 8240 4160 50  0000 C CNN
F 2 "" H 8240 4020 50  0001 C CNN
F 3 "" H 8240 4020 50  0001 C CNN
	1    8240 4020
	1    0    0    -1  
$EndComp
Wire Wire Line
	8240 4320 8240 4400
Connection ~ 8240 4400
Wire Wire Line
	8240 4400 9130 4400
Wire Wire Line
	8830 4320 8830 4500
Connection ~ 8830 4500
Wire Wire Line
	8830 4500 9130 4500
Text GLabel 3020 4900 0    50   Output ~ 0
PIC32MZ_REFCLK1
Text GLabel 7020 1600 2    50   Output ~ 0
PIC32MZ_UART_TX
Text GLabel 7020 1500 2    50   Input ~ 0
PIC32MZ_UART_RX
Text GLabel 3020 3250 0    50   Input ~ 0
PIC32MZ_ICSPCLK
Text GLabel 3020 3350 0    50   BiDi ~ 0
PIC32MZ_ICSPDAT
Text GLabel 3020 4800 0    50   Input ~ 0
PIC32MZ_POSC_EC
Text GLabel 3020 5000 0    50   Input ~ 0
PIC32MZ_SOSC_EC
Text GLabel 7020 2000 2    50   Output ~ 0
WIFI_SPI_SCK
Text GLabel 7020 2100 2    50   Output ~ 0
WIFI_SPI_MOSI
Text GLabel 7020 2500 2    50   Input ~ 0
WIFI_SPI_MISO
$Comp
L Custom_Library:GNDA_MZ #PWR01103
U 1 1 5FFB96A6
P 4370 6330
F 0 "#PWR01103" H 4370 6080 50  0001 C CNN
F 1 "GNDA_MZ" H 4370 6180 50  0000 C CNN
F 2 "" H 4370 6330 50  0001 C CNN
F 3 "" H 4370 6330 50  0001 C CNN
	1    4370 6330
	1    0    0    -1  
$EndComp
Wire Wire Line
	4370 6330 4370 6250
$Comp
L Custom_Library:+3.3VA_MZ #PWR01102
U 1 1 5FFB9C17
P 4370 970
F 0 "#PWR01102" H 4370 820 50  0001 C CNN
F 1 "+3.3VA_MZ" H 4370 1110 50  0000 C CNN
F 2 "" H 4370 970 50  0001 C CNN
F 3 "" H 4370 970 50  0001 C CNN
	1    4370 970 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4370 970  4370 1050
Wire Wire Line
	5170 1050 5170 1010
Wire Wire Line
	5170 1010 5070 1010
Wire Wire Line
	4570 1010 4570 1050
Wire Wire Line
	4670 1050 4670 1010
Connection ~ 4670 1010
Wire Wire Line
	4670 1010 4570 1010
Wire Wire Line
	4770 1050 4770 1010
Connection ~ 4770 1010
Wire Wire Line
	4770 1010 4670 1010
Wire Wire Line
	4870 1050 4870 1010
Connection ~ 4870 1010
Wire Wire Line
	4870 1010 4770 1010
Wire Wire Line
	4970 1050 4970 1010
Connection ~ 4970 1010
Wire Wire Line
	4970 1010 4870 1010
Wire Wire Line
	5070 1050 5070 1010
Connection ~ 5070 1010
Wire Wire Line
	5070 1010 4970 1010
$Comp
L power:+3.3V #PWR01104
U 1 1 5FFBDFF7
P 4870 970
F 0 "#PWR01104" H 4870 820 50  0001 C CNN
F 1 "+3.3V" H 4870 1110 50  0000 C CNN
F 2 "" H 4870 970 50  0001 C CNN
F 3 "" H 4870 970 50  0001 C CNN
	1    4870 970 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4870 970  4870 1010
Wire Wire Line
	5270 6250 5270 6290
Wire Wire Line
	5270 6290 5170 6290
Wire Wire Line
	4670 6290 4670 6250
Wire Wire Line
	4770 6250 4770 6290
Connection ~ 4770 6290
Wire Wire Line
	4770 6290 4670 6290
Wire Wire Line
	4870 6250 4870 6290
Connection ~ 4870 6290
Wire Wire Line
	4870 6290 4770 6290
Wire Wire Line
	4970 6250 4970 6290
Connection ~ 4970 6290
Wire Wire Line
	4970 6290 4870 6290
Wire Wire Line
	5070 6250 5070 6290
Connection ~ 5070 6290
Wire Wire Line
	5070 6290 5020 6290
Wire Wire Line
	5170 6250 5170 6290
Connection ~ 5170 6290
Wire Wire Line
	5170 6290 5070 6290
Wire Wire Line
	5270 6290 5370 6290
Wire Wire Line
	5370 6290 5370 6250
Connection ~ 5270 6290
Wire Wire Line
	5020 6290 5020 6330
Connection ~ 5020 6290
Wire Wire Line
	5020 6290 4970 6290
$Comp
L power:GND #PWR01105
U 1 1 5FFC1E1C
P 5020 6330
F 0 "#PWR01105" H 5020 6080 50  0001 C CNN
F 1 "GND" H 5020 6180 50  0000 C CNN
F 2 "" H 5020 6330 50  0001 C CNN
F 3 "" H 5020 6330 50  0001 C CNN
	1    5020 6330
	1    0    0    -1  
$EndComp
Text Notes 9720 4450 0    50   ~ 0
SDA5
Text Notes 1010 3300 0    50   ~ 0
ICSP2CLK
Text Notes 1010 4850 0    50   ~ 0
POSC
Text Notes 1010 4950 0    50   ~ 0
REFCLKO1
Text Notes 1010 5050 0    50   ~ 0
SOSC
Text GLabel 3020 4500 0    40   Output ~ 0
~SD_SPI_CS
Text GLabel 7020 4100 2    50   Output ~ 0
SD_SPI_MOSI
Text GLabel 7020 4800 2    50   Output ~ 0
SD_SPI_SCK
Text GLabel 3020 4400 0    50   Input ~ 0
SD_SPI_MISO
Text GLabel 3020 4700 0    40   Input ~ 0
~SD_CARD_DET
Text GLabel 3020 4050 0    50   Output ~ 0
FLASH_SPI_SCK
Text GLabel 3020 3650 0    50   Output ~ 0
FLASH_SPI_MOSI
Text GLabel 3020 3550 0    50   Input ~ 0
FLASH_SPI_MISO
Text Notes 9720 1550 0    50   ~ 0
U1RX
Text Notes 9720 1650 0    50   ~ 0
U1TX
Text GLabel 7020 3100 2    50   Output ~ 0
G1_POS3P3
Text GLabel 7020 3000 2    50   Output ~ 0
G0_POS3P3
Text GLabel 7020 3300 2    50   Output ~ 0
B1_POS3P3
Text GLabel 7020 2900 2    50   Output ~ 0
R1_POS3P3
Text GLabel 7020 3200 2    50   Output ~ 0
B0_POS3P3
Text GLabel 7020 2800 2    50   Output ~ 0
R0_POS3P3
Text Notes 9720 2850 0    50   ~ 0
PMD0
Text Notes 9720 2950 0    50   ~ 0
PMD1
Text Notes 9720 3050 0    50   ~ 0
PMD2
Text Notes 9720 3150 0    50   ~ 0
PMD3
Text Notes 9720 3250 0    50   ~ 0
PMD4
Text Notes 9720 3350 0    50   ~ 0
PMD5
Text GLabel 3020 3150 0    50   Output ~ 0
Panel_LAT_POS3P3
Text GLabel 7020 5500 2    50   Output ~ 0
Panel_Dim_PWM
Text GLabel 3020 4600 0    50   Output ~ 0
Panel_CLK_POS3P3
Text GLabel 3020 2850 0    50   Output ~ 0
Row_C_POS3P3
Text GLabel 3020 3050 0    50   Output ~ 0
Row_E_POS3P3
Text GLabel 3020 2950 0    50   Output ~ 0
Row_D_POS3P3
Text GLabel 3020 2750 0    50   Output ~ 0
Row_B_POS3P3
Text GLabel 3020 2650 0    50   Output ~ 0
Row_A_POS3P3
Text Notes 1010 4650 0    50   ~ 0
PMWR
Text Notes 1010 3400 0    50   ~ 0
ICSP2DAT
Text Notes 9720 4550 0    50   ~ 0
SCL5
Text Notes 9720 3550 0    50   ~ 0
PMD7
Text Notes 9720 3450 0    50   ~ 0
PMD6
NoConn ~ 7020 3500
NoConn ~ 7020 3400
Text Notes 7120 3480 0    50   ~ 0
DNC these two pins - unused PMP bits can't be disabled
Text Notes 9720 5550 0    50   ~ 0
OC3
Text Notes 1010 4100 0    50   ~ 0
SCK3
Text Notes 1010 3700 0    50   ~ 0
SDO3
Text Notes 1010 3600 0    50   ~ 0
SDI3
Text Notes 9720 2050 0    50   ~ 0
SCK4
Text Notes 9720 2150 0    50   ~ 0
SDO4
Text Notes 9720 2550 0    50   ~ 0
SDI4
Text Notes 9720 4850 0    50   ~ 0
SCK5
Text Notes 1010 4450 0    50   ~ 0
SDI5
Text Notes 9720 4150 0    50   ~ 0
SDO5
Text GLabel 3020 3750 0    50   Input ~ 0
POS12_PGOOD
Text GLabel 3020 3850 0    50   Input ~ 0
POS5_PGOOD
Text GLabel 7020 4600 2    50   Output ~ 0
PGOOD_LED_SHDN
Text GLabel 7020 4700 2    50   Input ~ 0
POS3P3_PGOOD
Text GLabel 3020 4150 0    50   Input ~ 0
VBAT_PGOOD
Text GLabel 7020 4200 2    50   Input ~ 0
POS5_USB_PGOOD
Text GLabel 7020 1900 2    50   Output ~ 0
Heartbeat_LED
Text GLabel 3020 2400 0    50   Output ~ 0
Reset_LED
Text GLabel 3020 2300 0    50   Output ~ 0
Error_LED
Text GLabel 7020 1300 2    50   Output ~ 0
CPU_Trap_LED
Text GLabel 7020 3600 2    50   Input ~ 0
VBAT_ADC
Text GLabel 7020 5100 2    50   Output ~ 0
USB_Stream_Mode_LED
Text GLabel 7020 5600 2    50   Output ~ 0
Prog1_Mode_LED
Text GLabel 7020 5900 2    50   Output ~ 0
Prog4_Mode_LED
Text GLabel 7020 5200 2    50   Output ~ 0
Flash_Slideshow_Mode_LED
Text GLabel 7020 5700 2    50   Output ~ 0
Prog2_Mode_LED
Text GLabel 7020 5800 2    50   Output ~ 0
Prog3_Mode_LED
Text GLabel 7020 3700 2    50   Output ~ 0
Void_Mode_LED
Text GLabel 3020 1300 0    40   Output ~ 0
~FLASH_SPI_CE0
Text GLabel 3020 1400 0    40   Output ~ 0
~FLASH_SPI_CE1
Text GLabel 3020 1500 0    40   Output ~ 0
~FLASH_SPI_CE2
Text GLabel 3020 1600 0    40   Output ~ 0
~FLASH_SPI_CE3
Text GLabel 3020 1700 0    40   Output ~ 0
~FLASH_SPI_CE4
Text GLabel 3020 1800 0    40   Output ~ 0
~FLASH_SPI_CE5
Text GLabel 3020 1900 0    40   Output ~ 0
~FLASH_SPI_CE6
Text GLabel 3020 2000 0    40   Output ~ 0
~FLASH_SPI_CE7
Text GLabel 3020 3450 0    50   Output ~ 0
MLVDS_Stream_Mode_LED
Text Notes 9720 1950 0    50   ~ 0
OC5
Text Notes 9720 3650 0    50   ~ 0
AN25
Text GLabel 7020 5300 2    50   Input ~ 0
Cap_Touch_Power
Text GLabel 7020 5400 2    50   Input ~ 0
Cap_Touch_Mode
Text Notes 9720 2450 0    50   ~ 0
INT3
Text Notes 9720 5350 0    50   ~ 0
INT2
Text Notes 9720 5450 0    50   ~ 0
INT4
Text GLabel 3020 3950 0    50   Output ~ 0
POS5_RUN
Text GLabel 7020 1400 2    40   Output ~ 0
~Panel_OE_POS3P3
$Comp
L Custom_Library:PIC32MZ2048EFG100_IPF U1101
U 1 1 605C2FEE
P 5020 3650
F 0 "U1101" H 6820 1150 50  0000 R CNN
F 1 "PIC32MZ2048EFG100_IPF" H 5020 4250 50  0000 C CNN
F 2 "Housings_QFP:TQFP-100_14x14mm_Pitch0.5mm" H 5020 3650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001320E.pdf" H 5020 3650 50  0001 C CNN
F 4 "PIC32MZ2048EFG100-I/PF-ND" H 5020 3650 50  0001 C CNN "Digi-Key PN"
	1    5020 3650
	1    0    0    -1  
$EndComp
Text GLabel 7020 4000 2    40   Input ~ 0
~Telemetry_Config
Text GLabel 3020 2100 0    40   Input ~ 0
~ETC_Config
Text GLabel 3020 2200 0    40   Input ~ 0
~WIFI_Config
Text GLabel 3020 5100 0    40   Input ~ 0
~BACKUP_RTC_Config
Text GLabel 7020 6000 2    40   Input ~ 0
~SPI_FLASH_Config
$EndSCHEMATC
