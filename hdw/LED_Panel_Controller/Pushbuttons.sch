EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 21 34
Title "LED Panel Controller"
Date "2020-12-23"
Rev "A"
Comp "Drew Maatman, Logan Wedel"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Touch:AT42QT1010-TSHR U?
U 1 1 5DF3B23F
P 4720 1710
AR Path="/5E28CFDF/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E36CE18/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E3C80C8/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E3C97B4/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5F58356B/5DF3B23F" Ref="U?"  Part="1" 
F 0 "U?" H 4620 2035 50  0000 R CNN
F 1 "AT42QT1010-TSHR" H 4620 1960 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 4770 1460 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-9541-AT42-QTouch-BSW-AT42QT1010_Datasheet.pdf" H 4990 2260 50  0001 C CNN
F 4 "AT42QT1010-TSHRCT-ND" H 4720 1710 50  0001 C CNN "Digi-Key PN"
F 5 "PUSH" H 4530 1450 50  0000 C CNN "Configuration"
	1    4720 1710
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3B249
P 4720 2010
AR Path="/5E28CFDF/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5DF3B249" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4720 1760 50  0001 C CNN
F 1 "GND" H 4720 1860 50  0000 C CNN
F 2 "" H 4720 2010 50  0001 C CNN
F 3 "" H 4720 2010 50  0001 C CNN
	1    4720 2010
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E53F844
P 4000 1810
AR Path="/5C1D5CD8/5E53F844" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E53F844" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5E53F844" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5E53F844" Ref="C?"  Part="1" 
AR Path="/5D739492/5E53F844" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5E53F844" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5E53F844" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5E53F844" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5E53F844" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/5E53F844" Ref="C?"  Part="1" 
AR Path="/5F58356B/5E53F844" Ref="C?"  Part="1" 
F 0 "C?" V 3810 1810 50  0000 C CNN
F 1 "10nF" V 3710 1810 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4038 1660 50  0001 C CNN
F 3 "" H 4025 1910 50  0001 C CNN
F 4 "490-13295-1-ND" H -790 -410 50  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3610 1810 50  0000 C CNN "display_footprint"
F 6 "50V" V 3510 1810 50  0000 C CNN "Voltage"
F 7 "X7R" V 3410 1810 50  0000 C CNN "Dielectric"
F 8 "PUSH" V 3310 1810 50  0000 C CNN "Configuration"
	1    4000 1810
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 1810 4320 1810
Wire Wire Line
	3350 1610 3430 1610
Wire Wire Line
	3850 1810 3680 1810
Wire Wire Line
	3680 1810 3680 1610
Connection ~ 3680 1610
Wire Wire Line
	3680 1610 4320 1610
$Comp
L Custom_Library:Cap_Touch SW?
U 1 1 5E53F848
P 2740 1610
AR Path="/5E28CFDF/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E36CE18/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E3C80C8/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E3C97B4/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5EAE4AB6/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5F58356B/5E53F848" Ref="SW?"  Part="1" 
F 0 "SW?" V 2740 1760 50  0000 L CNN
F 1 "Cap_Touch" H 2740 1760 50  0001 C CNN
F 2 "Custom Footprints Library:Capacitive_Touch_Pad" H 2740 1610 60  0001 C CNN
F 3 "" H 2740 1610 60  0000 C CNN
	1    2740 1610
	0    -1   1    0   
$EndComp
Wire Wire Line
	2740 1610 2970 1610
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E53F84B
P 5570 2100
AR Path="/5D6B2673/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5D784813/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5D739492/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5F58356B/5E53F84B" Ref="R?"  Part="1" 
F 0 "R?" H 5670 2260 50  0000 L CNN
F 1 "10k" V 5570 2030 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5570 2100 50  0001 C CNN
F 3 "" H 5570 2100 50  0001 C CNN
F 4 "0402" H 5670 2170 50  0000 L CNN "display_footprint"
F 5 "1%" H 5670 2070 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5670 1970 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5870 2500 60  0001 C CNN "Digi-Key PN"
F 8 "PUSH" H 5670 1880 50  0000 L CNN "Configuration"
	1    5570 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3B28E
P 5570 2250
AR Path="/5D6B2673/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5DF3B28E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5570 2000 50  0001 C CNN
F 1 "GND" H 5575 2077 50  0000 C CNN
F 2 "" H 5570 2250 50  0001 C CNN
F 3 "" H 5570 2250 50  0001 C CNN
	1    5570 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5570 1950 5570 1810
Wire Wire Line
	5570 1810 5120 1810
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DF3B29D
P 6190 1810
AR Path="/5C3165D8/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5C26E09A/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5D739492/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5F58356B/5DF3B29D" Ref="R?"  Part="1" 
F 0 "R?" V 6090 1810 50  0000 C CNN
F 1 "10k" V 6190 1810 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6190 1810 50  0001 C CNN
F 3 "" H 6190 1810 50  0001 C CNN
F 4 "0402" V 6290 1810 50  0000 C CNN "display_footprint"
F 5 "1%" V 6390 1810 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 6490 1810 50  0000 C CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 6190 1810 50  0001 C CNN "Digi-Key PN"
F 8 "PUSH" V 6580 1810 50  0000 C CNN "Configuration"
	1    6190 1810
	0    1    -1   0   
$EndComp
Wire Wire Line
	6040 1810 5570 1810
Connection ~ 5570 1810
$Comp
L power:GND #PWR?
U 1 1 5E53F853
P 6450 2250
AR Path="/5D6B2673/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F853" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 2000 50  0001 C CNN
F 1 "GND" H 6455 2077 50  0000 C CNN
F 2 "" H 6450 2250 50  0001 C CNN
F 3 "" H 6450 2250 50  0001 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1950 6450 1810
Wire Wire Line
	6450 1810 6340 1810
Wire Wire Line
	6690 1810 6450 1810
Connection ~ 6450 1810
$Comp
L power:GND #PWR?
U 1 1 5E53F854
P 6990 1910
AR Path="/5D6B2673/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F854" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6990 1660 50  0001 C CNN
F 1 "GND" H 6995 1737 50  0000 C CNN
F 2 "" H 6990 1910 50  0001 C CNN
F 3 "" H 6990 1910 50  0001 C CNN
	1    6990 1910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E53F859
P 7220 2420
AR Path="/5D6B2673/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F859" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7220 2170 50  0001 C CNN
F 1 "GND" H 7225 2247 50  0000 C CNN
F 2 "" H 7220 2420 50  0001 C CNN
F 3 "" H 7220 2420 50  0001 C CNN
	1    7220 2420
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E53F857
P 7220 2270
AR Path="/5C1D5CD8/5E53F857" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E53F857" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5E53F857" Ref="C?"  Part="1" 
AR Path="/5D739492/5E53F857" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5E53F857" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5E53F857" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5E53F857" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5E53F857" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/5E53F857" Ref="C?"  Part="1" 
AR Path="/5F58356B/5E53F857" Ref="C?"  Part="1" 
F 0 "C?" H 7245 2370 50  0000 L CNN
F 1 "0.1uF" H 7245 2170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7258 2120 50  0001 C CNN
F 3 "" H 7245 2370 50  0001 C CNN
F 4 "0402" H 7070 2370 50  0000 R CNN "display_footprint"
F 5 "50V" H 7070 2270 50  0000 R CNN "Voltage"
F 6 "X7R" H 7070 2170 50  0000 R CNN "Dielectric"
F 7 "PUSH" H 7070 2090 50  0000 R CNN "Configuration"
	1    7220 2270
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EC0ECD1
P 6990 1710
F 0 "#PWR?" H 6990 1560 50  0001 C CNN
F 1 "+3.3V" H 6990 1850 50  0000 C CNN
F 2 "" H 6990 1710 50  0001 C CNN
F 3 "" H 6990 1710 50  0001 C CNN
	1    6990 1710
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EC0F3F3
P 7220 2120
F 0 "#PWR?" H 7220 1970 50  0001 C CNN
F 1 "+3.3V" H 7220 2260 50  0000 C CNN
F 2 "" H 7220 2120 50  0001 C CNN
F 3 "" H 7220 2120 50  0001 C CNN
	1    7220 2120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EC24C8F
P 6450 2100
AR Path="/5CB7718D/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5A557C58/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5CB25152/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5E697934/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/5EC24C8F" Ref="C?"  Part="1" 
AR Path="/5F58356B/5EC24C8F" Ref="C?"  Part="1" 
F 0 "C?" H 6475 2200 50  0000 L CNN
F 1 "10uF" H 6475 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6488 1950 50  0001 C CNN
F 3 "" H 6475 2200 50  0001 C CNN
F 4 "0402" H 6300 2200 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6300 2100 50  0000 R CNN "Voltage"
F 6 "X5R" H 6300 2000 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6450 2100 50  0001 C CNN "Digi-Key PN"
F 8 "PUSH" H 6300 1920 50  0000 R CNN "Configuration"
	1    6450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C0B19
P 4720 1410
F 0 "#PWR?" H 4720 1260 50  0001 C CNN
F 1 "+3.3V" H 4720 1550 50  0000 C CNN
F 2 "" H 4720 1410 50  0001 C CNN
F 3 "" H 4720 1410 50  0001 C CNN
	1    4720 1410
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C11EE
P 5120 1610
F 0 "#PWR?" H 5120 1460 50  0001 C CNN
F 1 "+3.3V" V 5120 1750 50  0000 L CNN
F 2 "" H 5120 1610 50  0001 C CNN
F 3 "" H 5120 1610 50  0001 C CNN
	1    5120 1610
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5C49AB
P 4930 2690
AR Path="/5D6B2673/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5F5C49AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4930 2440 50  0001 C CNN
F 1 "GND" H 4935 2517 50  0000 C CNN
F 2 "" H 4930 2690 50  0001 C CNN
F 3 "" H 4930 2690 50  0001 C CNN
	1    4930 2690
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C49BB
P 4930 2390
F 0 "#PWR?" H 4930 2240 50  0001 C CNN
F 1 "+3.3V" H 4930 2530 50  0000 C CNN
F 2 "" H 4930 2390 50  0001 C CNN
F 3 "" H 4930 2390 50  0001 C CNN
	1    4930 2390
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_BUF U?
U 1 1 5FE93E3C
P 6990 1810
F 0 "U?" H 7050 1960 50  0000 L CNN
F 1 "74LVC1G97" H 6430 1960 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7040 1810 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 7040 1810 50  0001 C CNN
F 4 "PUSH" H 7150 1730 50  0000 C CNN "Configuration"
	1    6990 1810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE95584
P 7680 2100
AR Path="/5D6B2673/5FE95584" Ref="R?"  Part="1" 
AR Path="/5D784813/5FE95584" Ref="R?"  Part="1" 
AR Path="/5D739492/5FE95584" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5FE95584" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5FE95584" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5FE95584" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5FE95584" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5FE95584" Ref="R?"  Part="1" 
AR Path="/5F58356B/5FE95584" Ref="R?"  Part="1" 
F 0 "R?" H 7780 2260 50  0000 L CNN
F 1 "10k" V 7680 2030 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7680 2100 50  0001 C CNN
F 3 "" H 7680 2100 50  0001 C CNN
F 4 "0402" H 7780 2170 50  0000 L CNN "display_footprint"
F 5 "1%" H 7780 2070 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7780 1970 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7980 2500 60  0001 C CNN "Digi-Key PN"
	1    7680 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE959BA
P 7680 2250
AR Path="/5D6B2673/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5FE959BA" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5FE959BA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7680 2000 50  0001 C CNN
F 1 "GND" H 7685 2077 50  0000 C CNN
F 2 "" H 7680 2250 50  0001 C CNN
F 3 "" H 7680 2250 50  0001 C CNN
	1    7680 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7680 1950 7680 1810
Wire Wire Line
	7680 1810 7240 1810
Text GLabel 7760 1810 2    50   Output ~ 0
Cap_Touch_Power
Wire Wire Line
	7760 1810 7680 1810
Connection ~ 7680 1810
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F5C49B5
P 4930 2540
AR Path="/5C1D5CD8/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5C26E09A/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5D739492/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5E36CE18/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/5F5C49B5" Ref="C?"  Part="1" 
AR Path="/5F58356B/5F5C49B5" Ref="C?"  Part="1" 
F 0 "C?" H 4955 2640 50  0000 L CNN
F 1 "0.1uF" H 4955 2440 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4968 2390 50  0001 C CNN
F 3 "" H 4955 2640 50  0001 C CNN
F 4 "0402" H 4780 2640 50  0000 R CNN "display_footprint"
F 5 "50V" H 4780 2540 50  0000 R CNN "Voltage"
F 6 "X7R" H 4780 2440 50  0000 R CNN "Dielectric"
F 7 "PUSH" H 4790 2720 50  0000 R CNN "Configuration"
	1    4930 2540
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602436A2
P 3200 1890
AR Path="/5C3165D8/602436A2" Ref="R?"  Part="1" 
AR Path="/5C26E09A/602436A2" Ref="R?"  Part="1" 
AR Path="/5D739492/602436A2" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/602436A2" Ref="R?"  Part="1" 
AR Path="/5E36CE18/602436A2" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/602436A2" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/602436A2" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/602436A2" Ref="R?"  Part="1" 
AR Path="/5F58356B/602436A2" Ref="R?"  Part="1" 
AR Path="/5F582AA0/602436A2" Ref="R?"  Part="1" 
F 0 "R?" V 3100 1890 50  0000 C CNN
F 1 "1k" V 3200 1890 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 1890 50  0001 C CNN
F 3 "" H 3200 1890 50  0001 C CNN
F 4 "0402" V 3300 1890 50  0000 C CNN "display_footprint"
F 5 "1%" V 3400 1890 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 3500 1890 50  0000 C CNN "Wattage"
F 7 "PUSH" V 3590 1890 50  0000 C CNN "Configuration"
	1    3200 1890
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 1890 3430 1890
Wire Wire Line
	3430 1890 3430 1610
Connection ~ 3430 1610
Wire Wire Line
	3430 1610 3680 1610
Wire Wire Line
	3050 1890 2970 1890
Wire Wire Line
	2970 1890 2970 1610
Connection ~ 2970 1610
Wire Wire Line
	2970 1610 3050 1610
$Comp
L Custom_Library:R_Custom R?
U 1 1 60246661
P 3200 1610
AR Path="/5C3165D8/60246661" Ref="R?"  Part="1" 
AR Path="/5C26E09A/60246661" Ref="R?"  Part="1" 
AR Path="/5D739492/60246661" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60246661" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60246661" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60246661" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60246661" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60246661" Ref="R?"  Part="1" 
AR Path="/5F58356B/60246661" Ref="R?"  Part="1" 
AR Path="/5F582AA0/60246661" Ref="R?"  Part="1" 
F 0 "R?" V 3100 1610 50  0000 C CNN
F 1 "1k" V 3200 1610 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 1610 50  0001 C CNN
F 3 "" H 3200 1610 50  0001 C CNN
F 4 "0402" V 3300 1610 50  0000 C CNN "display_footprint"
F 5 "1%" V 3400 1610 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 3500 1610 50  0000 C CNN "Wattage"
F 7 "PUSH" V 3590 1610 50  0000 C CNN "Configuration"
	1    3200 1610
	0    1    -1   0   
$EndComp
$Comp
L Sensor_Touch:AT42QT1010-TSHR U?
U 1 1 60251928
P 4720 3710
AR Path="/5E28CFDF/60251928" Ref="U?"  Part="1" 
AR Path="/5E36CE18/60251928" Ref="U?"  Part="1" 
AR Path="/5E3C80C8/60251928" Ref="U?"  Part="1" 
AR Path="/5E3C97B4/60251928" Ref="U?"  Part="1" 
AR Path="/5EAE4AB6/60251928" Ref="U?"  Part="1" 
AR Path="/5F58356B/60251928" Ref="U?"  Part="1" 
F 0 "U?" H 4620 4035 50  0000 R CNN
F 1 "AT42QT1010-TSHR" H 4620 3960 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 4770 3460 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-9541-AT42-QTouch-BSW-AT42QT1010_Datasheet.pdf" H 4990 4260 50  0001 C CNN
F 4 "AT42QT1010-TSHRCT-ND" H 4720 3710 50  0001 C CNN "Digi-Key PN"
F 5 "PUSH" H 4530 3450 50  0000 C CNN "Configuration"
	1    4720 3710
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251AD4
P 4720 4010
AR Path="/5E28CFDF/60251AD4" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251AD4" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251AD4" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251AD4" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251AD4" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251AD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4720 3760 50  0001 C CNN
F 1 "GND" H 4720 3860 50  0000 C CNN
F 2 "" H 4720 4010 50  0001 C CNN
F 3 "" H 4720 4010 50  0001 C CNN
	1    4720 4010
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60251AE3
P 4000 3810
AR Path="/5C1D5CD8/60251AE3" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/60251AE3" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/60251AE3" Ref="C?"  Part="1" 
AR Path="/5C26E09A/60251AE3" Ref="C?"  Part="1" 
AR Path="/5D739492/60251AE3" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/60251AE3" Ref="C?"  Part="1" 
AR Path="/5E36CE18/60251AE3" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/60251AE3" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/60251AE3" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/60251AE3" Ref="C?"  Part="1" 
AR Path="/5F58356B/60251AE3" Ref="C?"  Part="1" 
F 0 "C?" V 3810 3810 50  0000 C CNN
F 1 "10nF" V 3710 3810 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4038 3660 50  0001 C CNN
F 3 "" H 4025 3910 50  0001 C CNN
F 4 "490-13295-1-ND" H -790 1590 50  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3610 3810 50  0000 C CNN "display_footprint"
F 6 "50V" V 3510 3810 50  0000 C CNN "Voltage"
F 7 "X7R" V 3410 3810 50  0000 C CNN "Dielectric"
F 8 "PUSH" V 3310 3810 50  0000 C CNN "Configuration"
	1    4000 3810
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 3810 4320 3810
Wire Wire Line
	3350 3610 3430 3610
Wire Wire Line
	3850 3810 3680 3810
Wire Wire Line
	3680 3810 3680 3610
Connection ~ 3680 3610
Wire Wire Line
	3680 3610 4320 3610
$Comp
L Custom_Library:Cap_Touch SW?
U 1 1 60251AF3
P 2740 3610
AR Path="/5E28CFDF/60251AF3" Ref="SW?"  Part="1" 
AR Path="/5E36CE18/60251AF3" Ref="SW?"  Part="1" 
AR Path="/5E3C80C8/60251AF3" Ref="SW?"  Part="1" 
AR Path="/5E3C97B4/60251AF3" Ref="SW?"  Part="1" 
AR Path="/5EAE4AB6/60251AF3" Ref="SW?"  Part="1" 
AR Path="/5F58356B/60251AF3" Ref="SW?"  Part="1" 
F 0 "SW?" V 2740 3760 50  0000 L CNN
F 1 "Cap_Touch" H 2740 3760 50  0001 C CNN
F 2 "Custom Footprints Library:Capacitive_Touch_Pad" H 2740 3610 60  0001 C CNN
F 3 "" H 2740 3610 60  0000 C CNN
	1    2740 3610
	0    -1   1    0   
$EndComp
Wire Wire Line
	2740 3610 2970 3610
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251B03
P 5570 4100
AR Path="/5D6B2673/60251B03" Ref="R?"  Part="1" 
AR Path="/5D784813/60251B03" Ref="R?"  Part="1" 
AR Path="/5D739492/60251B03" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60251B03" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60251B03" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60251B03" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60251B03" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60251B03" Ref="R?"  Part="1" 
AR Path="/5F58356B/60251B03" Ref="R?"  Part="1" 
F 0 "R?" H 5670 4260 50  0000 L CNN
F 1 "10k" V 5570 4030 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5570 4100 50  0001 C CNN
F 3 "" H 5570 4100 50  0001 C CNN
F 4 "0402" H 5670 4170 50  0000 L CNN "display_footprint"
F 5 "1%" H 5670 4070 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5670 3970 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5870 4500 60  0001 C CNN "Digi-Key PN"
F 8 "PUSH" H 5670 3880 50  0000 L CNN "Configuration"
	1    5570 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251B0D
P 5570 4250
AR Path="/5D6B2673/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251B0D" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251B0D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5570 4000 50  0001 C CNN
F 1 "GND" H 5575 4077 50  0000 C CNN
F 2 "" H 5570 4250 50  0001 C CNN
F 3 "" H 5570 4250 50  0001 C CNN
	1    5570 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5570 3950 5570 3810
Wire Wire Line
	5570 3810 5120 3810
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251B1E
P 6190 3810
AR Path="/5C3165D8/60251B1E" Ref="R?"  Part="1" 
AR Path="/5C26E09A/60251B1E" Ref="R?"  Part="1" 
AR Path="/5D739492/60251B1E" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60251B1E" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60251B1E" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60251B1E" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60251B1E" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60251B1E" Ref="R?"  Part="1" 
AR Path="/5F58356B/60251B1E" Ref="R?"  Part="1" 
F 0 "R?" V 6090 3810 50  0000 C CNN
F 1 "10k" V 6190 3810 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6190 3810 50  0001 C CNN
F 3 "" H 6190 3810 50  0001 C CNN
F 4 "0402" V 6290 3810 50  0000 C CNN "display_footprint"
F 5 "1%" V 6390 3810 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 6490 3810 50  0000 C CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 6190 3810 50  0001 C CNN "Digi-Key PN"
F 8 "PUSH" V 6580 3810 50  0000 C CNN "Configuration"
	1    6190 3810
	0    1    -1   0   
$EndComp
Wire Wire Line
	6040 3810 5570 3810
Connection ~ 5570 3810
$Comp
L power:GND #PWR?
U 1 1 60251B2A
P 6450 4250
AR Path="/5D6B2673/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251B2A" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251B2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 4000 50  0001 C CNN
F 1 "GND" H 6455 4077 50  0000 C CNN
F 2 "" H 6450 4250 50  0001 C CNN
F 3 "" H 6450 4250 50  0001 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3950 6450 3810
Wire Wire Line
	6450 3810 6340 3810
Wire Wire Line
	6690 3810 6450 3810
Connection ~ 6450 3810
$Comp
L power:GND #PWR?
U 1 1 60251B38
P 6990 3910
AR Path="/5D6B2673/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251B38" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251B38" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6990 3660 50  0001 C CNN
F 1 "GND" H 6995 3737 50  0000 C CNN
F 2 "" H 6990 3910 50  0001 C CNN
F 3 "" H 6990 3910 50  0001 C CNN
	1    6990 3910
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251B42
P 7220 4420
AR Path="/5D6B2673/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251B42" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251B42" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7220 4170 50  0001 C CNN
F 1 "GND" H 7225 4247 50  0000 C CNN
F 2 "" H 7220 4420 50  0001 C CNN
F 3 "" H 7220 4420 50  0001 C CNN
	1    7220 4420
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60251B50
P 7220 4270
AR Path="/5C1D5CD8/60251B50" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/60251B50" Ref="C?"  Part="1" 
AR Path="/5C26E09A/60251B50" Ref="C?"  Part="1" 
AR Path="/5D739492/60251B50" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/60251B50" Ref="C?"  Part="1" 
AR Path="/5E36CE18/60251B50" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/60251B50" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/60251B50" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/60251B50" Ref="C?"  Part="1" 
AR Path="/5F58356B/60251B50" Ref="C?"  Part="1" 
F 0 "C?" H 7245 4370 50  0000 L CNN
F 1 "0.1uF" H 7245 4170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7258 4120 50  0001 C CNN
F 3 "" H 7245 4370 50  0001 C CNN
F 4 "0402" H 7070 4370 50  0000 R CNN "display_footprint"
F 5 "50V" H 7070 4270 50  0000 R CNN "Voltage"
F 6 "X7R" H 7070 4170 50  0000 R CNN "Dielectric"
F 7 "PUSH" H 7070 4090 50  0000 R CNN "Configuration"
	1    7220 4270
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60251B5A
P 6990 3710
F 0 "#PWR?" H 6990 3560 50  0001 C CNN
F 1 "+3.3V" H 6990 3850 50  0000 C CNN
F 2 "" H 6990 3710 50  0001 C CNN
F 3 "" H 6990 3710 50  0001 C CNN
	1    6990 3710
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60251B64
P 7220 4120
F 0 "#PWR?" H 7220 3970 50  0001 C CNN
F 1 "+3.3V" H 7220 4260 50  0000 C CNN
F 2 "" H 7220 4120 50  0001 C CNN
F 3 "" H 7220 4120 50  0001 C CNN
	1    7220 4120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60251B73
P 6450 4100
AR Path="/5CB7718D/60251B73" Ref="C?"  Part="1" 
AR Path="/5E0DC082/60251B73" Ref="C?"  Part="1" 
AR Path="/5E0F9110/60251B73" Ref="C?"  Part="1" 
AR Path="/5A557C58/60251B73" Ref="C?"  Part="1" 
AR Path="/5CB25152/60251B73" Ref="C?"  Part="1" 
AR Path="/5E697934/60251B73" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/60251B73" Ref="C?"  Part="1" 
AR Path="/5EAE3021/60251B73" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/60251B73" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/60251B73" Ref="C?"  Part="1" 
AR Path="/5F58356B/60251B73" Ref="C?"  Part="1" 
F 0 "C?" H 6475 4200 50  0000 L CNN
F 1 "10uF" H 6475 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6488 3950 50  0001 C CNN
F 3 "" H 6475 4200 50  0001 C CNN
F 4 "0402" H 6300 4200 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6300 4100 50  0000 R CNN "Voltage"
F 6 "X5R" H 6300 4000 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6450 4100 50  0001 C CNN "Digi-Key PN"
F 8 "PUSH" H 6300 3920 50  0000 R CNN "Configuration"
	1    6450 4100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60251B7D
P 4720 3410
F 0 "#PWR?" H 4720 3260 50  0001 C CNN
F 1 "+3.3V" H 4720 3550 50  0000 C CNN
F 2 "" H 4720 3410 50  0001 C CNN
F 3 "" H 4720 3410 50  0001 C CNN
	1    4720 3410
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60251B87
P 5120 3610
F 0 "#PWR?" H 5120 3460 50  0001 C CNN
F 1 "+3.3V" V 5120 3750 50  0000 L CNN
F 2 "" H 5120 3610 50  0001 C CNN
F 3 "" H 5120 3610 50  0001 C CNN
	1    5120 3610
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251B91
P 4930 4690
AR Path="/5D6B2673/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251B91" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251B91" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4930 4440 50  0001 C CNN
F 1 "GND" H 4935 4517 50  0000 C CNN
F 2 "" H 4930 4690 50  0001 C CNN
F 3 "" H 4930 4690 50  0001 C CNN
	1    4930 4690
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60251B9B
P 4930 4390
F 0 "#PWR?" H 4930 4240 50  0001 C CNN
F 1 "+3.3V" H 4930 4530 50  0000 C CNN
F 2 "" H 4930 4390 50  0001 C CNN
F 3 "" H 4930 4390 50  0001 C CNN
	1    4930 4390
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_BUF U?
U 1 1 60251BA6
P 6990 3810
F 0 "U?" H 7050 3960 50  0000 L CNN
F 1 "74LVC1G97" H 6430 3960 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 7040 3810 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 7040 3810 50  0001 C CNN
F 4 "PUSH" H 7150 3730 50  0000 C CNN "Configuration"
	1    6990 3810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251BB4
P 7680 4100
AR Path="/5D6B2673/60251BB4" Ref="R?"  Part="1" 
AR Path="/5D784813/60251BB4" Ref="R?"  Part="1" 
AR Path="/5D739492/60251BB4" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60251BB4" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60251BB4" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60251BB4" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60251BB4" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60251BB4" Ref="R?"  Part="1" 
AR Path="/5F58356B/60251BB4" Ref="R?"  Part="1" 
F 0 "R?" H 7780 4260 50  0000 L CNN
F 1 "10k" V 7680 4030 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7680 4100 50  0001 C CNN
F 3 "" H 7680 4100 50  0001 C CNN
F 4 "0402" H 7780 4170 50  0000 L CNN "display_footprint"
F 5 "1%" H 7780 4070 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7780 3970 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7980 4500 60  0001 C CNN "Digi-Key PN"
	1    7680 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251BBE
P 7680 4250
AR Path="/5D6B2673/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/60251BBE" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/60251BBE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7680 4000 50  0001 C CNN
F 1 "GND" H 7685 4077 50  0000 C CNN
F 2 "" H 7680 4250 50  0001 C CNN
F 3 "" H 7680 4250 50  0001 C CNN
	1    7680 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7680 3950 7680 3810
Wire Wire Line
	7680 3810 7240 3810
Text GLabel 7760 3810 2    50   Output ~ 0
Cap_Touch_Mode
Wire Wire Line
	7760 3810 7680 3810
Connection ~ 7680 3810
$Comp
L Custom_Library:C_Custom C?
U 1 1 60251BD1
P 4930 4540
AR Path="/5C1D5CD8/60251BD1" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/60251BD1" Ref="C?"  Part="1" 
AR Path="/5C26E09A/60251BD1" Ref="C?"  Part="1" 
AR Path="/5D739492/60251BD1" Ref="C?"  Part="1" 
AR Path="/5E28CFDF/60251BD1" Ref="C?"  Part="1" 
AR Path="/5E36CE18/60251BD1" Ref="C?"  Part="1" 
AR Path="/5E3C80C8/60251BD1" Ref="C?"  Part="1" 
AR Path="/5E3C97B4/60251BD1" Ref="C?"  Part="1" 
AR Path="/5EAE4AB6/60251BD1" Ref="C?"  Part="1" 
AR Path="/5F58356B/60251BD1" Ref="C?"  Part="1" 
F 0 "C?" H 4955 4640 50  0000 L CNN
F 1 "0.1uF" H 4955 4440 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4968 4390 50  0001 C CNN
F 3 "" H 4955 4640 50  0001 C CNN
F 4 "0402" H 4780 4640 50  0000 R CNN "display_footprint"
F 5 "50V" H 4780 4540 50  0000 R CNN "Voltage"
F 6 "X7R" H 4780 4440 50  0000 R CNN "Dielectric"
F 7 "PUSH" H 4790 4720 50  0000 R CNN "Configuration"
	1    4930 4540
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251BDF
P 3200 3890
AR Path="/5C3165D8/60251BDF" Ref="R?"  Part="1" 
AR Path="/5C26E09A/60251BDF" Ref="R?"  Part="1" 
AR Path="/5D739492/60251BDF" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60251BDF" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60251BDF" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60251BDF" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60251BDF" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60251BDF" Ref="R?"  Part="1" 
AR Path="/5F58356B/60251BDF" Ref="R?"  Part="1" 
AR Path="/5F582AA0/60251BDF" Ref="R?"  Part="1" 
F 0 "R?" V 3100 3890 50  0000 C CNN
F 1 "1k" V 3200 3890 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 3890 50  0001 C CNN
F 3 "" H 3200 3890 50  0001 C CNN
F 4 "0402" V 3300 3890 50  0000 C CNN "display_footprint"
F 5 "1%" V 3400 3890 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 3500 3890 50  0000 C CNN "Wattage"
F 7 "PUSH" V 3590 3890 50  0000 C CNN "Configuration"
	1    3200 3890
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3890 3430 3890
Wire Wire Line
	3430 3890 3430 3610
Connection ~ 3430 3610
Wire Wire Line
	3430 3610 3680 3610
Wire Wire Line
	3050 3890 2970 3890
Wire Wire Line
	2970 3890 2970 3610
Connection ~ 2970 3610
Wire Wire Line
	2970 3610 3050 3610
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251BF5
P 3200 3610
AR Path="/5C3165D8/60251BF5" Ref="R?"  Part="1" 
AR Path="/5C26E09A/60251BF5" Ref="R?"  Part="1" 
AR Path="/5D739492/60251BF5" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/60251BF5" Ref="R?"  Part="1" 
AR Path="/5E36CE18/60251BF5" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/60251BF5" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/60251BF5" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/60251BF5" Ref="R?"  Part="1" 
AR Path="/5F58356B/60251BF5" Ref="R?"  Part="1" 
AR Path="/5F582AA0/60251BF5" Ref="R?"  Part="1" 
F 0 "R?" V 3100 3610 50  0000 C CNN
F 1 "1k" V 3200 3610 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 3610 50  0001 C CNN
F 3 "" H 3200 3610 50  0001 C CNN
F 4 "0402" V 3300 3610 50  0000 C CNN "display_footprint"
F 5 "1%" V 3400 3610 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 3500 3610 50  0000 C CNN "Wattage"
F 7 "PUSH" V 3590 3610 50  0000 C CNN "Configuration"
	1    3200 3610
	0    1    -1   0   
$EndComp
$EndSCHEMATC
