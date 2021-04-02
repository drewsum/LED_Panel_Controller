EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 29 34
Title "LED Panel Controller"
Date "2021-03-31"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02911
U 1 1 6078625D
P 6080 4050
F 0 "#PWR02911" H 6080 3800 50  0001 C CNN
F 1 "GND" H 6080 3900 50  0000 C CNN
F 2 "" H 6080 4050 50  0001 C CNN
F 3 "" H 6080 4050 50  0001 C CNN
	1    6080 4050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2908
U 1 1 60786266
P 6750 3130
F 0 "R2908" H 6690 3130 50  0000 R CNN
F 1 "10k" V 6750 3130 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6750 3130 50  0001 C CNN
F 3 "" H 6750 3130 50  0001 C CNN
F 4 "0402" H 6830 3210 50  0000 L CNN "display_footprint"
F 5 "1%" H 6830 3130 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6830 3050 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7050 3530 60  0001 C CNN "Digi-Key PN"
	1    6750 3130
	1    0    0    1   
$EndComp
$Comp
L Custom_Library:R_Custom R2902
U 1 1 6078627A
P 3420 3450
F 0 "R2902" V 3380 3580 50  0000 L CNN
F 1 "10" V 3420 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3420 3450 50  0001 C CNN
F 3 "" H 3420 3450 50  0001 C CNN
F 4 "0402" V 3520 3450 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3450 50  0001 C CNN "Wattage"
F 7 "SPI_FLASH" V 3270 3450 50  0000 C CNN "Configuration"
F 8 "RMCF0402FT10R0CT-ND" H 3420 3450 50  0001 C CNN "Digi-Key PN"
	1    3420 3450
	0    1    1    0   
$EndComp
Wire Wire Line
	3930 3280 3930 3650
Wire Wire Line
	3930 3650 5680 3650
Connection ~ 3930 3650
Text GLabel 7280 3450 2    50   Output ~ 0
FLASH_SPI_MISO
Text GLabel 3270 3550 0    50   Input ~ 0
FLASH_SPI_SCK
Text GLabel 3270 3650 0    40   Input ~ 0
~FLASH_SPI_CE5
Text GLabel 3270 3450 0    50   Input ~ 0
FLASH_SPI_MOSI
Wire Wire Line
	3570 3650 3930 3650
$Comp
L power:+3.3V #PWR02906
U 1 1 60786283
P 3930 2980
F 0 "#PWR02906" H 3930 2830 50  0001 C CNN
F 1 "+3.3V" H 3930 3120 50  0000 C CNN
F 2 "" H 3930 2980 50  0001 C CNN
F 3 "" H 3930 2980 50  0001 C CNN
	1    3930 2980
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02910
U 1 1 60786288
P 6080 3250
F 0 "#PWR02910" H 6080 3100 50  0001 C CNN
F 1 "+3.3V" H 6080 3390 50  0000 C CNN
F 2 "" H 6080 3250 50  0001 C CNN
F 3 "" H 6080 3250 50  0001 C CNN
	1    6080 3250
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60786293
P 2010 6900
AR Path="/5BAAE16C/60786293" Ref="C?"  Part="1" 
AR Path="/5BB181D8/60786293" Ref="C?"  Part="1" 
AR Path="/5BB2595E/60786293" Ref="C?"  Part="1" 
AR Path="/5F583577/60786293" Ref="C?"  Part="1" 
AR Path="/5F5835A4/60786293" Ref="C2901"  Part="1" 
F 0 "C2901" H 2035 7000 50  0000 L CNN
F 1 "0.1uF" H 2035 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2048 6750 50  0001 C CNN
F 3 "" H 2035 7000 50  0001 C CNN
F 4 "0402" H 1860 7000 50  0000 R CNN "display_footprint"
F 5 "50V" H 1860 6900 50  0000 R CNN "Voltage"
F 6 "X7R" H 1860 6800 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 2435 7400 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 2340 6900 50  0000 C CNN "Configuration"
	1    2010 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02901
U 1 1 60786297
P 1670 6220
F 0 "#PWR02901" H 1670 6070 50  0001 C CNN
F 1 "+3.3V" H 1670 6360 50  0000 C CNN
F 2 "" H 1670 6220 50  0001 C CNN
F 3 "" H 1670 6220 50  0001 C CNN
	1    1670 6220
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02903
U 1 1 607862A0
P 2010 6750
F 0 "#PWR02903" H 2010 6600 50  0001 C CNN
F 1 "+3.3V" H 2010 6890 50  0000 C CNN
F 2 "" H 2010 6750 50  0001 C CNN
F 3 "" H 2010 6750 50  0001 C CNN
	1    2010 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02904
U 1 1 607862A3
P 2010 7050
F 0 "#PWR02904" H 2010 6800 50  0001 C CNN
F 1 "GND" H 2010 6900 50  0000 C CNN
F 2 "" H 2010 7050 50  0001 C CNN
F 3 "" H 2010 7050 50  0001 C CNN
	1    2010 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02902
U 1 1 607862AA
P 1670 6420
F 0 "#PWR02902" H 1670 6170 50  0001 C CNN
F 1 "GND" H 1670 6270 50  0000 C CNN
F 2 "" H 1670 6420 50  0001 C CNN
F 3 "" H 1670 6420 50  0001 C CNN
	1    1670 6420
	1    0    0    -1  
$EndComp
Text GLabel 1370 6320 0    40   Input ~ 0
~FLASH_SPI_CE5
$Comp
L power:+3.3V #PWR?
U 1 1 607862B3
P 2410 5560
AR Path="/5BB844FD/607862B3" Ref="#PWR?"  Part="1" 
AR Path="/5BF346B3/607862B3" Ref="#PWR?"  Part="1" 
AR Path="/5BB2595E/607862B3" Ref="#PWR?"  Part="1" 
AR Path="/5F583577/607862B3" Ref="#PWR?"  Part="1" 
AR Path="/5F5835A4/607862B3" Ref="#PWR02905"  Part="1" 
F 0 "#PWR02905" H 2410 5410 50  0001 C CNN
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
L Device:LED D?
U 1 1 607862BD
P 2410 6010
AR Path="/5BB844FD/607862BD" Ref="D?"  Part="1" 
AR Path="/5BF346B3/607862BD" Ref="D?"  Part="1" 
AR Path="/5BB2595E/607862BD" Ref="D?"  Part="1" 
AR Path="/5F583577/607862BD" Ref="D?"  Part="1" 
AR Path="/5F5835A4/607862BD" Ref="D2901"  Part="1" 
F 0 "D2901" V 2520 6120 50  0000 L CNN
F 1 "Green" V 2420 6120 50  0000 L CNN
F 2 "LEDs:LED_0402" H 2410 6010 50  0001 C CNN
F 3 "~" H 2410 6010 50  0001 C CNN
F 4 "1497-1219-1-ND" H -2600 3010 50  0001 C CNN "Digi-Key PN"
F 5 "SPI_FLASH" V 2320 6120 50  0000 L CNN "Configuration"
	1    2410 6010
	0    -1   -1   0   
$EndComp
$Comp
L Memory_Flash:SST25VF080B-50-4x-S2Ax U2902
U 1 1 607862F6
P 6080 3650
F 0 "U2902" H 5830 4000 50  0000 C CNN
F 1 "SST25VF080B" H 6630 4000 50  0000 R CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 6080 2950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005045C.pdf" H 6030 4200 50  0001 C CNN
F 4 "SST25VF080B-50-4I-S2AE-T" H 6080 3650 50  0001 C CNN "Digi-Key PN"
F 5 "SPI_FLASH" H 6080 3020 50  0000 C CNN "Configuration"
	1    6080 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02912
U 1 1 60786302
P 6210 4550
F 0 "#PWR02912" H 6210 4400 50  0001 C CNN
F 1 "+3.3V" H 6210 4690 50  0000 C CNN
F 2 "" H 6210 4550 50  0001 C CNN
F 3 "" H 6210 4550 50  0001 C CNN
	1    6210 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02913
U 1 1 60786307
P 6210 4850
F 0 "#PWR02913" H 6210 4600 50  0001 C CNN
F 1 "GND" H 6210 4700 50  0000 C CNN
F 2 "" H 6210 4850 50  0001 C CNN
F 3 "" H 6210 4850 50  0001 C CNN
	1    6210 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02909
U 1 1 5F69329F
P 5600 2980
F 0 "#PWR02909" H 5600 2830 50  0001 C CNN
F 1 "+3.3V" H 5600 3120 50  0000 C CNN
F 2 "" H 5600 2980 50  0001 C CNN
F 3 "" H 5600 2980 50  0001 C CNN
	1    5600 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	5680 3750 5600 3750
Wire Wire Line
	5600 3750 5600 2980
Wire Wire Line
	5680 3850 5600 3850
Wire Wire Line
	5600 3850 5600 3750
Connection ~ 5600 3750
$Comp
L Custom_Library:R_Custom R2906
U 1 1 60786316
P 4500 3130
F 0 "R2906" H 4440 3130 50  0000 R CNN
F 1 "10k" V 4500 3130 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4500 3130 50  0001 C CNN
F 3 "" H 4500 3130 50  0001 C CNN
F 4 "0402" H 4580 3210 50  0000 L CNN "display_footprint"
F 5 "1%" H 4580 3130 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4580 3050 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4800 3530 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 4580 2970 50  0000 L CNN "Configuration"
	1    4500 3130
	1    0    0    1   
$EndComp
$Comp
L Custom_Library:R_Custom R2903
U 1 1 60786324
P 3420 3550
F 0 "R2903" V 3380 3680 50  0000 L CNN
F 1 "10" V 3420 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3420 3550 50  0001 C CNN
F 3 "" H 3420 3550 50  0001 C CNN
F 4 "0402" V 3520 3550 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3550 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3550 50  0001 C CNN "Wattage"
F 7 "SPI_FLASH" H 3420 3550 50  0001 C CNN "Configuration"
F 8 "RMCF0402FT10R0CT-ND" H 3420 3550 50  0001 C CNN "Digi-Key PN"
	1    3420 3550
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R2904
U 1 1 6078632C
P 3420 3650
F 0 "R2904" V 3380 3780 50  0000 L CNN
F 1 "10" V 3420 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3420 3650 50  0001 C CNN
F 3 "" H 3420 3650 50  0001 C CNN
F 4 "0402" V 3520 3650 50  0001 C CNN "display_footprint"
F 5 "1%" V 3620 3650 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 3720 3650 50  0001 C CNN "Wattage"
F 7 "SPI_FLASH" H 3420 3650 50  0001 C CNN "Configuration"
F 8 "RMCF0402FT10R0CT-ND" H 3420 3650 50  0001 C CNN "Digi-Key PN"
	1    3420 3650
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R2909
U 1 1 60786332
P 7130 3450
F 0 "R2909" V 7090 3580 50  0000 L CNN
F 1 "10" V 7130 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7130 3450 50  0001 C CNN
F 3 "" H 7130 3450 50  0001 C CNN
F 4 "0402" V 7230 3450 50  0001 C CNN "display_footprint"
F 5 "1%" V 7330 3450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7430 3450 50  0001 C CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 7130 3450 50  0001 C CNN "Digi-Key PN"
	1    7130 3450
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_BUF U2901
U 1 1 60786342
P 1670 6320
F 0 "U2901" H 1730 6470 50  0000 L CNN
F 1 "74LVC1G97" H 1730 6170 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1720 6320 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 1720 6320 50  0001 C CNN
F 4 "SPI_FLASH" H 1370 6470 50  0000 C CNN "Configuration"
F 5 "1727-1772-1-ND" H 1670 6320 50  0001 C CNN "Digi-Key PN"
	1    1670 6320
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2907
U 1 1 60786356
P 5150 3130
F 0 "R2907" H 5090 3130 50  0000 R CNN
F 1 "10k" V 5150 3130 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 5150 3130 50  0001 C CNN
F 3 "" H 5150 3130 50  0001 C CNN
F 4 "0402" H 5230 3210 50  0000 L CNN "display_footprint"
F 5 "1%" H 5230 3130 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5230 3050 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5450 3530 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 5230 2970 50  0000 L CNN "Configuration"
	1    5150 3130
	1    0    0    1   
$EndComp
$Comp
L Custom_Library:R_Custom R2905
U 1 1 60786361
P 3930 3130
F 0 "R2905" H 3870 3130 50  0000 R CNN
F 1 "10k" V 3930 3130 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3930 3130 50  0001 C CNN
F 3 "" H 3930 3130 50  0001 C CNN
F 4 "0402" H 4010 3210 50  0000 L CNN "display_footprint"
F 5 "1%" H 4010 3130 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4010 3050 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4230 3530 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 4010 2970 50  0000 L CNN "Configuration"
	1    3930 3130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2901
U 1 1 60786364
P 2410 5710
F 0 "R2901" H 2350 5710 50  0000 R CNN
F 1 "1k" V 2410 5710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2410 5710 50  0001 C CNN
F 3 "" H 2410 5710 50  0001 C CNN
F 4 "0402" H 2490 5790 50  0000 L CNN "display_footprint"
F 5 "1%" H 2490 5710 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2490 5630 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 2710 6110 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 2490 5550 50  0000 L CNN "Configuration"
	1    2410 5710
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60269564
P 6210 4700
AR Path="/5BAAE16C/60269564" Ref="C?"  Part="1" 
AR Path="/5BB181D8/60269564" Ref="C?"  Part="1" 
AR Path="/5BB2595E/60269564" Ref="C?"  Part="1" 
AR Path="/5F583577/60269564" Ref="C?"  Part="1" 
AR Path="/5F5835A4/60269564" Ref="C2902"  Part="1" 
F 0 "C2902" H 6235 4800 50  0000 L CNN
F 1 "0.1uF" H 6235 4600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6248 4550 50  0001 C CNN
F 3 "" H 6235 4800 50  0001 C CNN
F 4 "0402" H 6060 4800 50  0000 R CNN "display_footprint"
F 5 "50V" H 6060 4700 50  0000 R CNN "Voltage"
F 6 "X7R" H 6060 4600 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 6635 5200 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 6540 4700 50  0000 C CNN "Configuration"
	1    6210 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 3450 5150 3450
Wire Wire Line
	3570 3550 4500 3550
$Comp
L power:+3.3V #PWR0118
U 1 1 6069578E
P 5150 2980
F 0 "#PWR0118" H 5150 2830 50  0001 C CNN
F 1 "+3.3V" H 5150 3120 50  0000 C CNN
F 2 "" H 5150 2980 50  0001 C CNN
F 3 "" H 5150 2980 50  0001 C CNN
	1    5150 2980
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0119
U 1 1 60695CEE
P 4500 2980
F 0 "#PWR0119" H 4500 2830 50  0001 C CNN
F 1 "+3.3V" H 4500 3120 50  0000 C CNN
F 2 "" H 4500 2980 50  0001 C CNN
F 3 "" H 4500 2980 50  0001 C CNN
	1    4500 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3280 4500 3550
Connection ~ 4500 3550
Wire Wire Line
	4500 3550 5680 3550
Wire Wire Line
	5150 3280 5150 3450
Connection ~ 5150 3450
Wire Wire Line
	5150 3450 5680 3450
Wire Wire Line
	6480 3450 6750 3450
$Comp
L power:+3.3V #PWR0120
U 1 1 60696E84
P 6750 2980
F 0 "#PWR0120" H 6750 2830 50  0001 C CNN
F 1 "+3.3V" H 6750 3120 50  0000 C CNN
F 2 "" H 6750 2980 50  0001 C CNN
F 3 "" H 6750 2980 50  0001 C CNN
	1    6750 2980
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3280 6750 3450
Connection ~ 6750 3450
Wire Wire Line
	6750 3450 6980 3450
$EndSCHEMATC
