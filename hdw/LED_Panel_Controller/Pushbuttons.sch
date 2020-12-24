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
F 0 "C?" V 3476 1810 50  0000 C CNN
F 1 "10nF" V 3567 1810 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4038 1660 50  0001 C CNN
F 3 "" H 4025 1910 50  0001 C CNN
F 4 "490-13295-1-ND" H -790 -410 50  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3658 1810 50  0000 C CNN "display_footprint"
F 6 "50V" V 3749 1810 50  0000 C CNN "Voltage"
F 7 "X7R" V 3840 1810 50  0000 C CNN "Dielectric"
	1    4000 1810
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 1810 4320 1810
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DF3B266
P 3200 1610
AR Path="/5C3165D8/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5C26E09A/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5D739492/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5F58356B/5DF3B266" Ref="R?"  Part="1" 
F 0 "R?" V 3100 1610 50  0000 C CNN
F 1 "499" V 3200 1610 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 1610 50  0001 C CNN
F 3 "" H 3200 1610 50  0001 C CNN
F 4 "" H 3500 2010 60  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3300 1610 50  0000 C CNN "display_footprint"
F 6 "1%" V 3400 1610 50  0000 C CNN "Tolerance"
F 7 "1/16W" V 3500 1610 50  0000 C CNN "Wattage"
	1    3200 1610
	0    -1   1    0   
$EndComp
Wire Wire Line
	3350 1610 3680 1610
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
	2740 1610 3050 1610
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
F 4 "" H 7645 2770 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 7070 2370 50  0000 R CNN "display_footprint"
F 6 "50V" H 7070 2270 50  0000 R CNN "Voltage"
F 7 "X7R" H 7070 2170 50  0000 R CNN "Dielectric"
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
F 4 "" H 5355 3040 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 4780 2640 50  0000 R CNN "display_footprint"
F 6 "50V" H 4780 2540 50  0000 R CNN "Voltage"
F 7 "X7R" H 4780 2440 50  0000 R CNN "Dielectric"
	1    4930 2540
	1    0    0    -1  
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
$EndSCHEMATC
