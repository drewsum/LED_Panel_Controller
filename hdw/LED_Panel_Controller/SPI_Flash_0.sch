EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 23 34
Title "Electronic Display Logic Board"
Date "2018-12-15"
Rev "A"
Comp "Marquette University Senior Design 2018/2019 Group E44"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5BB4E0E3
P 6080 4050
F 0 "#PWR?" H 6080 3800 50  0001 C CNN
F 1 "GND" H 6080 3900 50  0000 C CNN
F 2 "" H 6080 4050 50  0001 C CNN
F 3 "" H 6080 4050 50  0001 C CNN
	1    6080 4050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB4E3FC
P 5150 3930
F 0 "R?" H 5090 3930 50  0000 R CNN
F 1 "10k" V 5150 3930 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5150 3930 50  0001 C CNN
F 3 "" H 5150 3930 50  0001 C CNN
F 4 "0603" H 5230 4010 50  0000 L CNN "display_footprint"
F 5 "1%" H 5230 3930 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5230 3850 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT10K0CT-ND" H 5450 4330 60  0001 C CNN "Digi-Key PN"
	1    5150 3930
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB4EBA3
P 3930 3130
F 0 "R?" H 3870 3130 50  0000 R CNN
F 1 "10k" V 3930 3130 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3930 3130 50  0001 C CNN
F 3 "" H 3930 3130 50  0001 C CNN
F 4 "0603" H 4010 3210 50  0000 L CNN "display_footprint"
F 5 "1%" H 4010 3130 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4010 3050 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT10K0CT-ND" H 4230 3530 60  0001 C CNN "Digi-Key PN"
	1    3930 3130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB4EDD1
P 6750 3850
F 0 "R?" H 6690 3850 50  0000 R CNN
F 1 "10k" V 6750 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6750 3850 50  0001 C CNN
F 3 "" H 6750 3850 50  0001 C CNN
F 4 "0603" H 6830 3930 50  0000 L CNN "display_footprint"
F 5 "1%" H 6830 3850 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6830 3770 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT10K0CT-ND" H 7050 4250 60  0001 C CNN "Digi-Key PN"
	1    6750 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BB4EE63
P 5150 4080
F 0 "#PWR?" H 5150 3830 50  0001 C CNN
F 1 "GND" H 5150 3930 50  0000 C CNN
F 2 "" H 5150 4080 50  0001 C CNN
F 3 "" H 5150 4080 50  0001 C CNN
	1    5150 4080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BB4EE7C
P 6750 4000
F 0 "#PWR?" H 6750 3750 50  0001 C CNN
F 1 "GND" H 6750 3850 50  0000 C CNN
F 2 "" H 6750 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB4F53B
P 3420 3450
F 0 "R?" V 3380 3580 50  0000 L CNN
F 1 "10" V 3420 3450 50  0000 C CNN
F 2 "" H 3420 3450 50  0001 C CNN
F 3 "" H 3420 3450 50  0001 C CNN
F 4 "0402" V 3520 3450 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3450 50  0001 C CNN "Wattage"
	1    3420 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3450 5150 3780
Connection ~ 5150 3450
Wire Wire Line
	5150 3450 5680 3450
Wire Wire Line
	3930 3280 3930 3650
Wire Wire Line
	3930 3650 5680 3650
Connection ~ 3930 3650
Wire Wire Line
	6980 3450 6750 3450
Wire Wire Line
	6750 3700 6750 3450
Connection ~ 6750 3450
Wire Wire Line
	6750 3450 6480 3450
Text GLabel 7280 3450 2    50   Output ~ 0
FLASH_SPI_MISO
Text GLabel 3270 3550 0    50   Input ~ 0
FLASH_SPI_SCK
Text GLabel 3270 3650 0    40   Input ~ 0
~FLASH_SPI_CE1
Text GLabel 3270 3450 0    50   Input ~ 0
FLASH_SPI_MOSI
Wire Wire Line
	3570 3650 3930 3650
$Comp
L power:+3.3V #PWR?
U 1 1 5BDF3D33
P 3930 2980
F 0 "#PWR?" H 3930 2830 50  0001 C CNN
F 1 "+3.3V" H 3930 3120 50  0000 C CNN
F 2 "" H 3930 2980 50  0001 C CNN
F 3 "" H 3930 2980 50  0001 C CNN
	1    3930 2980
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BDF3DF4
P 6080 3250
F 0 "#PWR?" H 6080 3100 50  0001 C CNN
F 1 "+3.3V" H 6080 3390 50  0000 C CNN
F 2 "" H 6080 3250 50  0001 C CNN
F 3 "" H 6080 3250 50  0001 C CNN
	1    6080 3250
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C15F697
P 2010 6900
AR Path="/5BAAE16C/5C15F697" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5C15F697" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5C15F697" Ref="C?"  Part="1" 
AR Path="/5F583577/5C15F697" Ref="C?"  Part="1" 
F 0 "C?" H 2035 7000 50  0000 L CNN
F 1 "0.1uF" H 2035 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2048 6750 50  0001 C CNN
F 3 "" H 2035 7000 50  0001 C CNN
F 4 "0603" H 1860 7000 50  0000 R CNN "display_footprint"
F 5 "50V" H 1860 6900 50  0000 R CNN "Voltage"
F 6 "X7R" H 1860 6800 50  0000 R CNN "Dielectric"
F 7 "311-1344-1-ND" H 2435 7400 60  0001 C CNN "Digi-Key PN"
	1    2010 6900
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G07_Power U?
U 1 1 5C161AE1
P 1670 6320
F 0 "U?" H 1770 6420 50  0000 L CNN
F 1 "74LVC1G07" H 1770 6220 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 1670 6320 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 1670 6320 50  0001 C CNN
F 4 "296-8486-1-ND" H 1670 6320 50  0001 C CNN "Digi-Key PN"
	1    1670 6320
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5C161B83
P 1670 6220
F 0 "#PWR?" H 1670 6070 50  0001 C CNN
F 1 "+3.3V" H 1670 6360 50  0000 C CNN
F 2 "" H 1670 6220 50  0001 C CNN
F 3 "" H 1670 6220 50  0001 C CNN
	1    1670 6220
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5C161BE9
P 2010 6750
F 0 "#PWR?" H 2010 6600 50  0001 C CNN
F 1 "+3.3V" H 2010 6890 50  0000 C CNN
F 2 "" H 2010 6750 50  0001 C CNN
F 3 "" H 2010 6750 50  0001 C CNN
	1    2010 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C161C44
P 2010 7050
F 0 "#PWR?" H 2010 6800 50  0001 C CNN
F 1 "GND" H 2010 6900 50  0000 C CNN
F 2 "" H 2010 7050 50  0001 C CNN
F 3 "" H 2010 7050 50  0001 C CNN
	1    2010 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C161C9F
P 1670 6420
F 0 "#PWR?" H 1670 6170 50  0001 C CNN
F 1 "GND" H 1670 6270 50  0000 C CNN
F 2 "" H 1670 6420 50  0001 C CNN
F 3 "" H 1670 6420 50  0001 C CNN
	1    1670 6420
	1    0    0    -1  
$EndComp
Text GLabel 1370 6320 0    40   Input ~ 0
~FLASH_SPI_CE1
$Comp
L power:+3.3V #PWR?
U 1 1 5C166A81
P 2410 5560
AR Path="/5BB844FD/5C166A81" Ref="#PWR?"  Part="1" 
AR Path="/5BF346B3/5C166A81" Ref="#PWR?"  Part="1" 
AR Path="/5BB2595E/5C166A81" Ref="#PWR?"  Part="1" 
AR Path="/5F583577/5C166A81" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2410 5410 50  0001 C CNN
F 1 "+3.3V" H 2410 5700 50  0000 C CNN
F 2 "" H 2410 5560 50  0001 C CNN
F 3 "" H 2410 5560 50  0001 C CNN
	1    2410 5560
	1    0    0    -1  
$EndComp
Wire Wire Line
	1920 6320 2410 6320
Wire Wire Line
	2410 6320 2410 6160
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C166A8D
P 2410 5710
AR Path="/5BAAE1F3/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5BB2595E/5C166A8D" Ref="R?"  Part="1" 
AR Path="/5F583577/5C166A8D" Ref="R?"  Part="1" 
F 0 "R?" H 2350 5710 50  0000 R CNN
F 1 "1k" V 2410 5710 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2410 5710 50  0001 C CNN
F 3 "" H 2410 5710 50  0001 C CNN
F 4 "0603" H 2480 5790 50  0000 L CNN "display_footprint"
F 5 "1%" H 2480 5710 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2480 5640 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT1K00CT-ND" H 2710 6110 60  0001 C CNN "Digi-Key PN"
	1    2410 5710
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C166A95
P 2410 6010
AR Path="/5BB844FD/5C166A95" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5C166A95" Ref="D?"  Part="1" 
AR Path="/5BB2595E/5C166A95" Ref="D?"  Part="1" 
AR Path="/5F583577/5C166A95" Ref="D?"  Part="1" 
F 0 "D?" V 2440 5890 50  0000 R CNN
F 1 "Green" V 2357 5893 50  0000 R CNN
F 2 "LEDs:LED_0603" H 2410 6010 50  0001 C CNN
F 3 "~" H 2410 6010 50  0001 C CNN
F 4 "160-1446-1-ND" H -2600 3010 50  0001 C CNN "Digi-Key PN"
	1    2410 6010
	0    -1   -1   0   
$EndComp
$Comp
L Memory_Flash:SST25VF080B-50-4x-S2Ax U?
U 1 1 5F6879D5
P 6080 3650
F 0 "U?" H 5830 4000 50  0000 C CNN
F 1 "SST25VF080B-50-4I-S2AF" H 6630 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 6080 2950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005045C.pdf" H 6030 4200 50  0001 C CNN
F 4 "SST25VF080B-50-4I-S2AF-TCT-ND" H 6080 3650 50  0001 C CNN "Digi-Key PN"
	1    6080 3650
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F68928C
P 6210 4700
AR Path="/5BAAE16C/5F68928C" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F68928C" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F68928C" Ref="C?"  Part="1" 
AR Path="/5F583577/5F68928C" Ref="C?"  Part="1" 
F 0 "C?" H 6235 4800 50  0000 L CNN
F 1 "0.1uF" H 6235 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6248 4550 50  0001 C CNN
F 3 "" H 6235 4800 50  0001 C CNN
F 4 "0603" H 6060 4800 50  0000 R CNN "display_footprint"
F 5 "50V" H 6060 4700 50  0000 R CNN "Voltage"
F 6 "X7R" H 6060 4600 50  0000 R CNN "Dielectric"
F 7 "311-1344-1-ND" H 6635 5200 60  0001 C CNN "Digi-Key PN"
	1    6210 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F689292
P 6210 4550
F 0 "#PWR?" H 6210 4400 50  0001 C CNN
F 1 "+3.3V" H 6210 4690 50  0000 C CNN
F 2 "" H 6210 4550 50  0001 C CNN
F 3 "" H 6210 4550 50  0001 C CNN
	1    6210 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F689298
P 6210 4850
F 0 "#PWR?" H 6210 4600 50  0001 C CNN
F 1 "GND" H 6210 4700 50  0000 C CNN
F 2 "" H 6210 4850 50  0001 C CNN
F 3 "" H 6210 4850 50  0001 C CNN
	1    6210 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F69329F
P 5600 3250
F 0 "#PWR?" H 5600 3100 50  0001 C CNN
F 1 "+3.3V" H 5600 3390 50  0000 C CNN
F 2 "" H 5600 3250 50  0001 C CNN
F 3 "" H 5600 3250 50  0001 C CNN
	1    5600 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5680 3750 5600 3750
Wire Wire Line
	5600 3750 5600 3250
Wire Wire Line
	5680 3850 5600 3850
Wire Wire Line
	5600 3850 5600 3750
Connection ~ 5600 3750
Wire Wire Line
	3570 3550 4500 3550
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F697048
P 4500 3930
F 0 "R?" H 4440 3930 50  0000 R CNN
F 1 "10k" V 4500 3930 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4500 3930 50  0001 C CNN
F 3 "" H 4500 3930 50  0001 C CNN
F 4 "0603" H 4580 4010 50  0000 L CNN "display_footprint"
F 5 "1%" H 4580 3930 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4580 3850 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT10K0CT-ND" H 4800 4330 60  0001 C CNN "Digi-Key PN"
	1    4500 3930
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F697052
P 4500 4080
F 0 "#PWR?" H 4500 3830 50  0001 C CNN
F 1 "GND" H 4500 3930 50  0000 C CNN
F 2 "" H 4500 4080 50  0001 C CNN
F 3 "" H 4500 4080 50  0001 C CNN
	1    4500 4080
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 3450 5150 3450
Wire Wire Line
	4500 3550 4500 3780
Connection ~ 4500 3550
Wire Wire Line
	4500 3550 5680 3550
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F7379BB
P 3420 3550
F 0 "R?" V 3380 3680 50  0000 L CNN
F 1 "10" V 3420 3550 50  0000 C CNN
F 2 "" H 3420 3550 50  0001 C CNN
F 3 "" H 3420 3550 50  0001 C CNN
F 4 "0402" V 3520 3550 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3550 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3550 50  0001 C CNN "Wattage"
	1    3420 3550
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F737B74
P 3420 3650
F 0 "R?" V 3380 3780 50  0000 L CNN
F 1 "10" V 3420 3650 50  0000 C CNN
F 2 "" H 3420 3650 50  0001 C CNN
F 3 "" H 3420 3650 50  0001 C CNN
F 4 "0402" V 3520 3650 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3650 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3650 50  0001 C CNN "Wattage"
	1    3420 3650
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F737D15
P 7130 3450
F 0 "R?" V 7090 3580 50  0000 L CNN
F 1 "10" V 7130 3450 50  0000 C CNN
F 2 "" H 7130 3450 50  0001 C CNN
F 3 "" H 7130 3450 50  0001 C CNN
F 4 "0402" V 7230 3450 50  0001 C CNN "display_footprint"
F 5 "1%" V 7330 3450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7430 3450 50  0001 C CNN "Wattage"
	1    7130 3450
	0    -1   1    0   
$EndComp
$EndSCHEMATC
