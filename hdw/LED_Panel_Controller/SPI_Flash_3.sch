EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 27 34
Title "LED Panel Controller"
Date "2021-03-24"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02711
U 1 1 6078625E
P 6080 4050
F 0 "#PWR02711" H 6080 3800 50  0001 C CNN
F 1 "GND" H 6080 3900 50  0000 C CNN
F 2 "" H 6080 4050 50  0001 C CNN
F 3 "" H 6080 4050 50  0001 C CNN
	1    6080 4050
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2708
U 1 1 60786267
P 6750 3850
F 0 "R2708" H 6690 3850 50  0000 R CNN
F 1 "10k" V 6750 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6750 3850 50  0001 C CNN
F 3 "" H 6750 3850 50  0001 C CNN
F 4 "0402" H 6830 3930 50  0000 L CNN "display_footprint"
F 5 "1%" H 6830 3850 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6830 3770 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7050 4250 60  0001 C CNN "Digi-Key PN"
	1    6750 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02708
U 1 1 60786270
P 5150 4080
F 0 "#PWR02708" H 5150 3830 50  0001 C CNN
F 1 "GND" H 5150 3930 50  0000 C CNN
F 2 "" H 5150 4080 50  0001 C CNN
F 3 "" H 5150 4080 50  0001 C CNN
	1    5150 4080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02714
U 1 1 60786275
P 6750 4000
F 0 "#PWR02714" H 6750 3750 50  0001 C CNN
F 1 "GND" H 6750 3850 50  0000 C CNN
F 2 "" H 6750 4000 50  0001 C CNN
F 3 "" H 6750 4000 50  0001 C CNN
	1    6750 4000
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2702
U 1 1 6078627E
P 3420 3450
F 0 "R2702" V 3380 3580 50  0000 L CNN
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
~FLASH_SPI_CE3
Text GLabel 3270 3450 0    50   Input ~ 0
FLASH_SPI_MOSI
Wire Wire Line
	3570 3650 3930 3650
$Comp
L power:+3.3V #PWR02706
U 1 1 60786281
P 3930 2980
F 0 "#PWR02706" H 3930 2830 50  0001 C CNN
F 1 "+3.3V" H 3930 3120 50  0000 C CNN
F 2 "" H 3930 2980 50  0001 C CNN
F 3 "" H 3930 2980 50  0001 C CNN
	1    3930 2980
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02710
U 1 1 6078628A
P 6080 3250
F 0 "#PWR02710" H 6080 3100 50  0001 C CNN
F 1 "+3.3V" H 6080 3390 50  0000 C CNN
F 2 "" H 6080 3250 50  0001 C CNN
F 3 "" H 6080 3250 50  0001 C CNN
	1    6080 3250
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6078628E
P 2010 6900
AR Path="/5BAAE16C/6078628E" Ref="C?"  Part="1" 
AR Path="/5BB181D8/6078628E" Ref="C?"  Part="1" 
AR Path="/5BB2595E/6078628E" Ref="C?"  Part="1" 
AR Path="/5F583577/6078628E" Ref="C?"  Part="1" 
AR Path="/5F583598/6078628E" Ref="C2701"  Part="1" 
F 0 "C2701" H 2035 7000 50  0000 L CNN
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
L power:+3.3V #PWR02701
U 1 1 6078629B
P 1670 6220
F 0 "#PWR02701" H 1670 6070 50  0001 C CNN
F 1 "+3.3V" H 1670 6360 50  0000 C CNN
F 2 "" H 1670 6220 50  0001 C CNN
F 3 "" H 1670 6220 50  0001 C CNN
	1    1670 6220
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02703
U 1 1 6078629F
P 2010 6750
F 0 "#PWR02703" H 2010 6600 50  0001 C CNN
F 1 "+3.3V" H 2010 6890 50  0000 C CNN
F 2 "" H 2010 6750 50  0001 C CNN
F 3 "" H 2010 6750 50  0001 C CNN
	1    2010 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02704
U 1 1 607862A4
P 2010 7050
F 0 "#PWR02704" H 2010 6800 50  0001 C CNN
F 1 "GND" H 2010 6900 50  0000 C CNN
F 2 "" H 2010 7050 50  0001 C CNN
F 3 "" H 2010 7050 50  0001 C CNN
	1    2010 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02702
U 1 1 607862AB
P 1670 6420
F 0 "#PWR02702" H 1670 6170 50  0001 C CNN
F 1 "GND" H 1670 6270 50  0000 C CNN
F 2 "" H 1670 6420 50  0001 C CNN
F 3 "" H 1670 6420 50  0001 C CNN
	1    1670 6420
	1    0    0    -1  
$EndComp
Text GLabel 1370 6320 0    40   Input ~ 0
~FLASH_SPI_CE3
$Comp
L power:+3.3V #PWR?
U 1 1 607862B2
P 2410 5560
AR Path="/5BB844FD/607862B2" Ref="#PWR?"  Part="1" 
AR Path="/5BF346B3/607862B2" Ref="#PWR?"  Part="1" 
AR Path="/5BB2595E/607862B2" Ref="#PWR?"  Part="1" 
AR Path="/5F583577/607862B2" Ref="#PWR?"  Part="1" 
AR Path="/5F583598/607862B2" Ref="#PWR02705"  Part="1" 
F 0 "#PWR02705" H 2410 5410 50  0001 C CNN
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
U 1 1 607862BB
P 2410 6010
AR Path="/5BB844FD/607862BB" Ref="D?"  Part="1" 
AR Path="/5BF346B3/607862BB" Ref="D?"  Part="1" 
AR Path="/5BB2595E/607862BB" Ref="D?"  Part="1" 
AR Path="/5F583577/607862BB" Ref="D?"  Part="1" 
AR Path="/5F583598/607862BB" Ref="D2701"  Part="1" 
F 0 "D2701" V 2520 6120 50  0000 L CNN
F 1 "Green" V 2420 6120 50  0000 L CNN
F 2 "LEDs:LED_0402" H 2410 6010 50  0001 C CNN
F 3 "~" H 2410 6010 50  0001 C CNN
F 4 "1497-1219-1-ND" H -2600 3010 50  0001 C CNN "Digi-Key PN"
F 5 "SPI_FLASH" V 2320 6120 50  0000 L CNN "Configuration"
	1    2410 6010
	0    -1   -1   0   
$EndComp
$Comp
L Memory_Flash:SST25VF080B-50-4x-S2Ax U2702
U 1 1 607862F9
P 6080 3650
F 0 "U2702" H 5830 4000 50  0000 C CNN
F 1 "SST25VF080B-50-4I-S2AF" H 6630 4000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.275x5.275mm_P1.27mm" H 6080 2950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005045C.pdf" H 6030 4200 50  0001 C CNN
F 4 "SST25VF080B-50-4I-S2AE-T" H 6080 3650 50  0001 C CNN "Digi-Key PN"
F 5 "SPI_FLASH" H 6080 3020 50  0000 C CNN "Configuration"
	1    6080 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02712
U 1 1 60786301
P 6210 4550
F 0 "#PWR02712" H 6210 4400 50  0001 C CNN
F 1 "+3.3V" H 6210 4690 50  0000 C CNN
F 2 "" H 6210 4550 50  0001 C CNN
F 3 "" H 6210 4550 50  0001 C CNN
	1    6210 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02713
U 1 1 60786309
P 6210 4850
F 0 "#PWR02713" H 6210 4600 50  0001 C CNN
F 1 "GND" H 6210 4700 50  0000 C CNN
F 2 "" H 6210 4850 50  0001 C CNN
F 3 "" H 6210 4850 50  0001 C CNN
	1    6210 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR02709
U 1 1 60786310
P 5600 3250
F 0 "#PWR02709" H 5600 3100 50  0001 C CNN
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
L Custom_Library:R_Custom R2706
U 1 1 60786312
P 4500 3930
F 0 "R2706" H 4440 3930 50  0000 R CNN
F 1 "10k" V 4500 3930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4500 3930 50  0001 C CNN
F 3 "" H 4500 3930 50  0001 C CNN
F 4 "0402" H 4580 4010 50  0000 L CNN "display_footprint"
F 5 "1%" H 4580 3930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4580 3850 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4800 4330 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 4580 3770 50  0000 L CNN "Configuration"
	1    4500 3930
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02707
U 1 1 6078631E
P 4500 4080
F 0 "#PWR02707" H 4500 3830 50  0001 C CNN
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
L Custom_Library:R_Custom R2703
U 1 1 60786320
P 3420 3550
F 0 "R2703" V 3380 3680 50  0000 L CNN
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
L Custom_Library:R_Custom R2704
U 1 1 6078632D
P 3420 3650
F 0 "R2704" V 3380 3780 50  0000 L CNN
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
L Custom_Library:R_Custom R2709
U 1 1 5F737D15
P 7130 3450
F 0 "R2709" V 7090 3580 50  0000 L CNN
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
L Custom_Library:74LVC1G97_Power_BUF U2701
U 1 1 60786344
P 1670 6320
F 0 "U2701" H 1730 6470 50  0000 L CNN
F 1 "74LVC1G97" H 1730 6170 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 1720 6320 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 1720 6320 50  0001 C CNN
F 4 "SPI_FLASH" H 1370 6470 50  0000 C CNN "Configuration"
F 5 "1727-1772-1-ND" H 1670 6320 50  0001 C CNN "Digi-Key PN"
	1    1670 6320
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2707
U 1 1 60786359
P 5150 3930
F 0 "R2707" H 5090 3930 50  0000 R CNN
F 1 "10k" V 5150 3930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 5150 3930 50  0001 C CNN
F 3 "" H 5150 3930 50  0001 C CNN
F 4 "0402" H 5230 4010 50  0000 L CNN "display_footprint"
F 5 "1%" H 5230 3930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5230 3850 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5450 4330 60  0001 C CNN "Digi-Key PN"
F 8 "SPI_FLASH" H 5230 3770 50  0000 L CNN "Configuration"
	1    5150 3930
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R2705
U 1 1 60263FB7
P 3930 3130
F 0 "R2705" H 3870 3130 50  0000 R CNN
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
L Custom_Library:R_Custom R2701
U 1 1 60786369
P 2410 5710
F 0 "R2701" H 2350 5710 50  0000 R CNN
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
U 1 1 6078636A
P 6210 4700
AR Path="/5BAAE16C/6078636A" Ref="C?"  Part="1" 
AR Path="/5BB181D8/6078636A" Ref="C?"  Part="1" 
AR Path="/5BB2595E/6078636A" Ref="C?"  Part="1" 
AR Path="/5F583577/6078636A" Ref="C?"  Part="1" 
AR Path="/5F583598/6078636A" Ref="C2702"  Part="1" 
F 0 "C2702" H 6235 4800 50  0000 L CNN
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
$EndSCHEMATC
