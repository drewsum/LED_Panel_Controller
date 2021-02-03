EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 11 34
Title "LED Panel Controller"
Date "2020-12-23"
Rev "A"
Comp "Drew Maatman, Logan Wedel"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3300 5990 0    40   Input ~ 0
~PIC32MZ_MCLR
$Comp
L power:GND #PWR?
U 1 1 5CB14B21
P 3190 5570
F 0 "#PWR?" H 3190 5320 50  0001 C CNN
F 1 "GND" H 3190 5420 50  0000 C CNN
F 2 "" H 3190 5570 50  0001 C CNN
F 3 "" H 3190 5570 50  0001 C CNN
	1    3190 5570
	1    0    0    -1  
$EndComp
Wire Wire Line
	3190 5570 3190 5490
Wire Wire Line
	3190 5490 3300 5490
NoConn ~ 3300 5390
NoConn ~ 3300 5590
NoConn ~ 3300 5690
Text GLabel 9410 4490 2    50   Output ~ 0
I2C_SCL
Text GLabel 9410 4390 2    50   BiDi ~ 0
I2C_SDA
Wire Wire Line
	7300 4390 8520 4390
Wire Wire Line
	7300 4490 9110 4490
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DAD1
P 9110 4160
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
AR Path="/5F5829D3/5EB7DAD1" Ref="R?"  Part="1" 
F 0 "R?" H 9030 4160 50  0000 R CNN
F 1 "10k" V 9110 4160 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 9110 4160 50  0001 C CNN
F 3 "" H 9110 4160 50  0001 C CNN
F 4 "0402" H 9210 4240 50  0000 L CNN "display_footprint"
F 5 "1%" H 9210 4160 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 9220 4080 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 9110 4160 50  0001 C CNN "Digi-Key PN"
	1    9110 4160
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EB7DAD7
P 9110 4010
F 0 "#PWR?" H 9110 3860 50  0001 C CNN
F 1 "+3.3V" H 9110 4150 50  0000 C CNN
F 2 "" H 9110 4010 50  0001 C CNN
F 3 "" H 9110 4010 50  0001 C CNN
	1    9110 4010
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB7DEAB
P 8520 4160
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
AR Path="/5F5829D3/5EB7DEAB" Ref="R?"  Part="1" 
F 0 "R?" H 8440 4160 50  0000 R CNN
F 1 "10k" V 8520 4160 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8520 4160 50  0001 C CNN
F 3 "" H 8520 4160 50  0001 C CNN
F 4 "0402" H 8620 4240 50  0000 L CNN "display_footprint"
F 5 "1%" H 8620 4160 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8630 4080 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8520 4160 50  0001 C CNN "Digi-Key PN"
	1    8520 4160
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EB7DEB5
P 8520 4010
F 0 "#PWR?" H 8520 3860 50  0001 C CNN
F 1 "+3.3V" H 8520 4150 50  0000 C CNN
F 2 "" H 8520 4010 50  0001 C CNN
F 3 "" H 8520 4010 50  0001 C CNN
	1    8520 4010
	1    0    0    -1  
$EndComp
Wire Wire Line
	8520 4310 8520 4390
Connection ~ 8520 4390
Wire Wire Line
	8520 4390 9410 4390
Wire Wire Line
	9110 4310 9110 4490
Connection ~ 9110 4490
Wire Wire Line
	9110 4490 9410 4490
Text GLabel 3300 4890 0    50   Output ~ 0
PIC32MZ_REFCLK1
Text GLabel 7300 1590 2    50   Output ~ 0
PIC32MZ_UART_TX
Text GLabel 7300 1490 2    50   Input ~ 0
PIC32MZ_UART_RX
Text GLabel 3300 3240 0    50   Input ~ 0
PIC32MZ_ICSPCLK
Text GLabel 3300 3340 0    50   BiDi ~ 0
PIC32MZ_ICSPDAT
Text GLabel 3300 4790 0    50   Input ~ 0
PIC32MZ_POSC_EC
Text GLabel 3300 4990 0    50   Input ~ 0
PIC32MZ_SOSC
Text GLabel 7300 1690 2    40   Output ~ 0
~WIFI_RESET
Text GLabel 7300 1790 2    50   Output ~ 0
WIFI_WAKE
Text GLabel 7300 2190 2    50   Output ~ 0
WIFI_CHIP_EN
Text GLabel 7300 1990 2    50   Output ~ 0
WIFI_SPI_SCK
Text GLabel 7300 2290 2    40   Output ~ 0
~WIFI_SPI_SS
Text GLabel 7300 2090 2    50   Output ~ 0
WIFI_SPI_MOSI
Text GLabel 7300 2490 2    50   Input ~ 0
WIFI_SPI_MISO
Text GLabel 7300 2390 2    40   Input ~ 0
~WIFI_IRQN
$Comp
L Custom_Library:PIC32MZ2048EFG100_IPF U?
U 1 1 5FFB3C3D
P 5300 3640
F 0 "U?" H 7100 1140 50  0000 R CNN
F 1 "PIC32MZ2048EFG100-250_IPF" H 5300 4240 50  0000 C CNN
F 2 "Housings_QFP:TQFP-100_14x14mm_Pitch0.5mm" H 5300 3640 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/60001320E.pdf" H 5300 3640 50  0001 C CNN
F 4 "PIC32MZ2048EFH100-250I/PF-ND" H 5300 3640 50  0001 C CNN "Digi-Key PN"
	1    5300 3640
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:GNDA_MZ #PWR?
U 1 1 5FFB96A6
P 4650 6320
F 0 "#PWR?" H 4650 6070 50  0001 C CNN
F 1 "GNDA_MZ" H 4650 6170 50  0000 C CNN
F 2 "" H 4650 6320 50  0001 C CNN
F 3 "" H 4650 6320 50  0001 C CNN
	1    4650 6320
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6320 4650 6240
$Comp
L Custom_Library:+3.3VA_MZ #PWR?
U 1 1 5FFB9C17
P 4650 960
F 0 "#PWR?" H 4650 810 50  0001 C CNN
F 1 "+3.3VA_MZ" H 4650 1100 50  0000 C CNN
F 2 "" H 4650 960 50  0001 C CNN
F 3 "" H 4650 960 50  0001 C CNN
	1    4650 960 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 960  4650 1040
Wire Wire Line
	5450 1040 5450 1000
Wire Wire Line
	5450 1000 5350 1000
Wire Wire Line
	4850 1000 4850 1040
Wire Wire Line
	4950 1040 4950 1000
Connection ~ 4950 1000
Wire Wire Line
	4950 1000 4850 1000
Wire Wire Line
	5050 1040 5050 1000
Connection ~ 5050 1000
Wire Wire Line
	5050 1000 4950 1000
Wire Wire Line
	5150 1040 5150 1000
Connection ~ 5150 1000
Wire Wire Line
	5150 1000 5050 1000
Wire Wire Line
	5250 1040 5250 1000
Connection ~ 5250 1000
Wire Wire Line
	5250 1000 5150 1000
Wire Wire Line
	5350 1040 5350 1000
Connection ~ 5350 1000
Wire Wire Line
	5350 1000 5250 1000
$Comp
L power:+3.3V #PWR?
U 1 1 5FFBDFF7
P 5150 960
F 0 "#PWR?" H 5150 810 50  0001 C CNN
F 1 "+3.3V" H 5150 1100 50  0000 C CNN
F 2 "" H 5150 960 50  0001 C CNN
F 3 "" H 5150 960 50  0001 C CNN
	1    5150 960 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 960  5150 1000
Wire Wire Line
	5550 6240 5550 6280
Wire Wire Line
	5550 6280 5450 6280
Wire Wire Line
	4950 6280 4950 6240
Wire Wire Line
	5050 6240 5050 6280
Connection ~ 5050 6280
Wire Wire Line
	5050 6280 4950 6280
Wire Wire Line
	5150 6240 5150 6280
Connection ~ 5150 6280
Wire Wire Line
	5150 6280 5050 6280
Wire Wire Line
	5250 6240 5250 6280
Connection ~ 5250 6280
Wire Wire Line
	5250 6280 5150 6280
Wire Wire Line
	5350 6240 5350 6280
Connection ~ 5350 6280
Wire Wire Line
	5350 6280 5300 6280
Wire Wire Line
	5450 6240 5450 6280
Connection ~ 5450 6280
Wire Wire Line
	5450 6280 5350 6280
Wire Wire Line
	5550 6280 5650 6280
Wire Wire Line
	5650 6280 5650 6240
Connection ~ 5550 6280
Wire Wire Line
	5300 6280 5300 6320
Connection ~ 5300 6280
Wire Wire Line
	5300 6280 5250 6280
$Comp
L power:GND #PWR?
U 1 1 5FFC1E1C
P 5300 6320
F 0 "#PWR?" H 5300 6070 50  0001 C CNN
F 1 "GND" H 5300 6170 50  0000 C CNN
F 2 "" H 5300 6320 50  0001 C CNN
F 3 "" H 5300 6320 50  0001 C CNN
	1    5300 6320
	1    0    0    -1  
$EndComp
Text Notes 10000 4440 0    50   ~ 0
SDA5
Text Notes 1290 3290 0    50   ~ 0
ICSP2CLK
Text Notes 1290 4840 0    50   ~ 0
POSC
Text Notes 1290 4940 0    50   ~ 0
REFCLKO1
Text Notes 1290 5040 0    50   ~ 0
SOSC
Text GLabel 3300 4490 0    40   Output ~ 0
~SD_SPI_CS
Text GLabel 7300 4090 2    50   Output ~ 0
SD_SPI_MOSI
Text GLabel 7300 4790 2    50   Output ~ 0
SD_SPI_SCK
Text GLabel 3300 4390 0    50   Input ~ 0
SD_SPI_MISO
Text GLabel 3300 4690 0    40   Input ~ 0
~SD_CARD_DET
Text GLabel 3300 4040 0    50   Output ~ 0
FLASH_SPI_SCK
Text GLabel 3300 3640 0    50   Output ~ 0
FLASH_SPI_MOSI
Text GLabel 3300 3540 0    50   Input ~ 0
FLASH_SPI_MISO
Text Notes 10000 1540 0    50   ~ 0
U1RX
Text Notes 10000 1640 0    50   ~ 0
U1TX
Text GLabel 7300 3090 2    50   Output ~ 0
G1_POS3P3
Text GLabel 7300 2990 2    50   Output ~ 0
G0_POS3P3
Text GLabel 7300 3290 2    50   Output ~ 0
B1_POS3P3
Text GLabel 7300 2890 2    50   Output ~ 0
R1_POS3P3
Text GLabel 7300 3190 2    50   Output ~ 0
B0_POS3P3
Text GLabel 7300 2790 2    50   Output ~ 0
R0_POS3P3
Text Notes 10000 2840 0    50   ~ 0
PMD0
Text Notes 10000 2940 0    50   ~ 0
PMD1
Text Notes 10000 3040 0    50   ~ 0
PMD2
Text Notes 10000 3140 0    50   ~ 0
PMD3
Text Notes 10000 3240 0    50   ~ 0
PMD4
Text Notes 10000 3340 0    50   ~ 0
PMD5
Text GLabel 3300 3140 0    50   Output ~ 0
Panel_LAT_POS3P3
Text GLabel 7300 5490 2    40   Output ~ 0
~Panel_OE_POS3P3
Text GLabel 3300 4590 0    50   Output ~ 0
Panel_CLK_POS3P3
Text GLabel 3300 2840 0    50   Output ~ 0
Row_C_POS3P3
Text GLabel 3300 3040 0    50   Output ~ 0
Row_E_POS3P3
Text GLabel 3300 2940 0    50   Output ~ 0
Row_D_POS3P3
Text GLabel 3300 2740 0    50   Output ~ 0
Row_B_POS3P3
Text GLabel 3300 2640 0    50   Output ~ 0
Row_A_POS3P3
Text Notes 1290 4640 0    50   ~ 0
PMWR
Text Notes 1290 3390 0    50   ~ 0
ICSP2DAT
Text Notes 10000 4540 0    50   ~ 0
SCL5
Text Notes 10000 3540 0    50   ~ 0
PMD7
Text Notes 10000 3440 0    50   ~ 0
PMD6
NoConn ~ 7300 3490
NoConn ~ 7300 3390
Text Notes 7400 3470 0    50   ~ 0
DNC these two pins - unused PMP bits can't be disabled
Text Notes 10000 5540 0    50   ~ 0
OC3
Text Notes 1290 4090 0    50   ~ 0
SCK3
Text Notes 1290 3690 0    50   ~ 0
SDO3
Text Notes 1290 3590 0    50   ~ 0
SDI3
Text Notes 10000 2040 0    50   ~ 0
SCK4
Text Notes 10000 2140 0    50   ~ 0
SDO4
Text Notes 10000 2540 0    50   ~ 0
SDI4
Text Notes 10000 4840 0    50   ~ 0
SCK5
Text Notes 1290 4440 0    50   ~ 0
SDI5
Text Notes 10000 4140 0    50   ~ 0
SDO5
Text GLabel 3300 3740 0    50   Input ~ 0
POS12_PGOOD
Text GLabel 3300 3840 0    50   Input ~ 0
POS5_PGOOD
Text GLabel 7300 4590 2    50   Output ~ 0
PGOOD_LED_SHDN
Text GLabel 7300 4690 2    50   Input ~ 0
POS3P3_PGOOD
Text GLabel 3300 4140 0    50   Input ~ 0
VBAT_PGOOD
Text GLabel 7300 4190 2    50   Input ~ 0
POS5_USB_PGOOD
Text GLabel 7300 1890 2    50   Output ~ 0
Heartbeat_LED
Text GLabel 3300 2390 0    50   Output ~ 0
Reset_LED
Text GLabel 3300 2290 0    50   Output ~ 0
Error_LED
Text GLabel 7300 1290 2    50   Output ~ 0
CPU_Trap_LED
Text GLabel 7300 3590 2    50   Input ~ 0
VBAT_ADC
Text GLabel 7300 5090 2    50   Output ~ 0
USB_Stream_Mode_LED
Text GLabel 7300 5590 2    50   Output ~ 0
Prog1_Mode_LED
Text GLabel 7300 5890 2    50   Output ~ 0
Prog4_Mode_LED
Text GLabel 7300 5190 2    50   Output ~ 0
Flash_Slideshow_Mode_LED
Text GLabel 7300 5690 2    50   Output ~ 0
Prog2_Mode_LED
Text GLabel 7300 5990 2    50   Output ~ 0
Prog5_Mode_LED
Text GLabel 7300 5790 2    50   Output ~ 0
Prog3_Mode_LED
Text GLabel 7300 3690 2    50   Output ~ 0
Clock_Mode_LED
Text GLabel 3300 1290 0    40   Output ~ 0
~FLASH_SPI_CE0
Text GLabel 3300 1390 0    40   Output ~ 0
~FLASH_SPI_CE1
Text GLabel 3300 1490 0    40   Output ~ 0
~FLASH_SPI_CE2
Text GLabel 3300 1590 0    40   Output ~ 0
~FLASH_SPI_CE3
Text GLabel 3300 1690 0    40   Output ~ 0
~FLASH_SPI_CE4
Text GLabel 3300 1790 0    40   Output ~ 0
~FLASH_SPI_CE5
Text GLabel 3300 1890 0    40   Output ~ 0
~FLASH_SPI_CE6
Text GLabel 3300 1990 0    40   Output ~ 0
~FLASH_SPI_CE7
Text GLabel 3300 3440 0    50   Output ~ 0
WIFI_Stream_Mode_LED
Text Notes 10000 1940 0    50   ~ 0
OC5
Text Notes 10000 3640 0    50   ~ 0
AN25
Text GLabel 7300 5290 2    50   Input ~ 0
Cap_Touch_Power
Text GLabel 7300 5390 2    50   Input ~ 0
Cap_Touch_Mode
Text Notes 10000 2440 0    50   ~ 0
INT3
Text Notes 10000 5340 0    50   ~ 0
INT2
Text Notes 10000 5440 0    50   ~ 0
INT4
Text GLabel 3300 3940 0    50   Output ~ 0
POS5_RUN
$EndSCHEMATC
