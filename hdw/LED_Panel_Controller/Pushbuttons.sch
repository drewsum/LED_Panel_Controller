EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 21 33
Title "Pulse Oximeter"
Date "2020-08-01"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Sensor_Touch:AT42QT1010-TSHR U?
U 1 1 5DF3B23F
P 4720 2360
AR Path="/5E28CFDF/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E36CE18/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E3C80C8/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5E3C97B4/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B23F" Ref="U?"  Part="1" 
AR Path="/5F58356B/5DF3B23F" Ref="U?"  Part="1" 
F 0 "U?" H 4620 2685 50  0000 R CNN
F 1 "AT42QT1010-TSHR" H 4620 2610 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 4770 2110 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-9541-AT42-QTouch-BSW-AT42QT1010_Datasheet.pdf" H 4990 2910 50  0001 C CNN
F 4 "AT42QT1010-TSHRCT-ND" H 4720 2360 50  0001 C CNN "Digi-Key PN"
	1    4720 2360
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3B249
P 4720 2660
AR Path="/5E28CFDF/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B249" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5DF3B249" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4720 2410 50  0001 C CNN
F 1 "GND" H 4720 2510 50  0000 C CNN
F 2 "" H 4720 2660 50  0001 C CNN
F 3 "" H 4720 2660 50  0001 C CNN
	1    4720 2660
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E53F844
P 4000 2460
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
F 0 "C?" V 3476 2460 50  0000 C CNN
F 1 "10nF" V 3567 2460 50  0000 C CNN
F 2 "Capacitors_SMD:C_0402" H 4038 2310 50  0001 C CNN
F 3 "" H 4025 2560 50  0001 C CNN
F 4 "490-13295-1-ND" H -790 240 50  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3658 2460 50  0000 C CNN "display_footprint"
F 6 "50V" V 3749 2460 50  0000 C CNN "Voltage"
F 7 "X7R" V 3840 2460 50  0000 C CNN "Dielectric"
	1    4000 2460
	0    1    -1   0   
$EndComp
Wire Wire Line
	4150 2460 4320 2460
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DF3B266
P 3200 2260
AR Path="/5C3165D8/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5C26E09A/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5D739492/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B266" Ref="R?"  Part="1" 
AR Path="/5F58356B/5DF3B266" Ref="R?"  Part="1" 
F 0 "R?" V 3100 2260 50  0000 C CNN
F 1 "499" V 3200 2260 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3200 2260 50  0001 C CNN
F 3 "" H 3200 2260 50  0001 C CNN
F 4 "" H 3500 2660 60  0001 C CNN "Digi-Key PN"
F 5 "0402" V 3300 2260 50  0000 C CNN "display_footprint"
F 6 "1%" V 3400 2260 50  0000 C CNN "Tolerance"
F 7 "1/16W" V 3500 2260 50  0000 C CNN "Wattage"
	1    3200 2260
	0    -1   1    0   
$EndComp
Wire Wire Line
	3350 2260 3680 2260
Wire Wire Line
	3850 2460 3680 2460
Wire Wire Line
	3680 2460 3680 2260
Connection ~ 3680 2260
Wire Wire Line
	3680 2260 4320 2260
$Comp
L Custom_Library:Cap_Touch SW?
U 1 1 5E53F848
P 2740 2260
AR Path="/5E28CFDF/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E36CE18/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E3C80C8/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5E3C97B4/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5EAE4AB6/5E53F848" Ref="SW?"  Part="1" 
AR Path="/5F58356B/5E53F848" Ref="SW?"  Part="1" 
F 0 "SW?" V 2740 2410 50  0000 L CNN
F 1 "Cap_Touch" H 2740 2410 50  0001 C CNN
F 2 "Custom Footprints Library:Capacitive_Touch_Pad" H 2740 2260 60  0001 C CNN
F 3 "" H 2740 2260 60  0000 C CNN
	1    2740 2260
	0    -1   1    0   
$EndComp
Wire Wire Line
	2740 2260 3050 2260
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E53F84B
P 5570 2750
AR Path="/5D6B2673/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5D784813/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5D739492/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5E53F84B" Ref="R?"  Part="1" 
AR Path="/5F58356B/5E53F84B" Ref="R?"  Part="1" 
F 0 "R?" H 5670 2910 50  0000 L CNN
F 1 "10k" V 5570 2680 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5570 2750 50  0001 C CNN
F 3 "" H 5570 2750 50  0001 C CNN
F 4 "0402" H 5670 2820 50  0000 L CNN "display_footprint"
F 5 "1%" H 5670 2720 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5670 2620 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5870 3150 60  0001 C CNN "Digi-Key PN"
	1    5570 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DF3B28E
P 5570 2900
AR Path="/5D6B2673/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B28E" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5DF3B28E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5570 2650 50  0001 C CNN
F 1 "GND" H 5575 2727 50  0000 C CNN
F 2 "" H 5570 2900 50  0001 C CNN
F 3 "" H 5570 2900 50  0001 C CNN
	1    5570 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5570 2600 5570 2460
Wire Wire Line
	5570 2460 5120 2460
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DF3B29D
P 6190 2460
AR Path="/5C3165D8/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5C26E09A/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5D739492/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5DF3B29D" Ref="R?"  Part="1" 
AR Path="/5F58356B/5DF3B29D" Ref="R?"  Part="1" 
F 0 "R?" V 6090 2460 50  0000 C CNN
F 1 "10k" V 6190 2460 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6190 2460 50  0001 C CNN
F 3 "" H 6190 2460 50  0001 C CNN
F 4 "0402" V 6290 2460 50  0000 C CNN "display_footprint"
F 5 "1%" V 6390 2460 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 6490 2460 50  0000 C CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 6190 2460 50  0001 C CNN "Digi-Key PN"
	1    6190 2460
	0    1    -1   0   
$EndComp
Wire Wire Line
	6040 2460 5570 2460
Connection ~ 5570 2460
$Comp
L power:GND #PWR?
U 1 1 5E53F853
P 6450 2900
AR Path="/5D6B2673/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F853" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F853" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 2650 50  0001 C CNN
F 1 "GND" H 6455 2727 50  0000 C CNN
F 2 "" H 6450 2900 50  0001 C CNN
F 3 "" H 6450 2900 50  0001 C CNN
	1    6450 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2600 6450 2460
Wire Wire Line
	6450 2460 6340 2460
Wire Wire Line
	6690 2460 6450 2460
Connection ~ 6450 2460
$Comp
L power:GND #PWR?
U 1 1 5E53F854
P 6990 2560
AR Path="/5D6B2673/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F854" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F854" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6990 2310 50  0001 C CNN
F 1 "GND" H 6995 2387 50  0000 C CNN
F 2 "" H 6990 2560 50  0001 C CNN
F 3 "" H 6990 2560 50  0001 C CNN
	1    6990 2560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E53F859
P 7220 3070
AR Path="/5D6B2673/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5E53F859" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5E53F859" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7220 2820 50  0001 C CNN
F 1 "GND" H 7225 2897 50  0000 C CNN
F 2 "" H 7220 3070 50  0001 C CNN
F 3 "" H 7220 3070 50  0001 C CNN
	1    7220 3070
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E53F857
P 7220 2920
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
F 0 "C?" H 7245 3020 50  0000 L CNN
F 1 "0.1uF" H 7245 2820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7258 2770 50  0001 C CNN
F 3 "" H 7245 3020 50  0001 C CNN
F 4 "" H 7645 3420 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 7070 3020 50  0000 R CNN "display_footprint"
F 6 "50V" H 7070 2920 50  0000 R CNN "Voltage"
F 7 "X7R" H 7070 2820 50  0000 R CNN "Dielectric"
	1    7220 2920
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G17_Power U?
U 1 1 5EC0E32F
P 6990 2460
AR Path="/5EAE4A89/5EC0E32F" Ref="U?"  Part="1" 
AR Path="/5EAE4AB6/5EC0E32F" Ref="U?"  Part="1" 
AR Path="/5F58356B/5EC0E32F" Ref="U?"  Part="1" 
F 0 "U?" H 7130 2610 50  0000 L CNN
F 1 "74LVC1G17" H 7130 2700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 6990 2460 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 7090 2610 50  0001 C CNN
F 4 "296-11934-1-ND" H 6990 2460 50  0001 C CNN "Digi-Key PN"
	1    6990 2460
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EC0ECD1
P 6990 2360
F 0 "#PWR?" H 6990 2210 50  0001 C CNN
F 1 "+3.3V" H 6990 2500 50  0000 C CNN
F 2 "" H 6990 2360 50  0001 C CNN
F 3 "" H 6990 2360 50  0001 C CNN
	1    6990 2360
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EC0F3F3
P 7220 2770
F 0 "#PWR?" H 7220 2620 50  0001 C CNN
F 1 "+3.3V" H 7220 2910 50  0000 C CNN
F 2 "" H 7220 2770 50  0001 C CNN
F 3 "" H 7220 2770 50  0001 C CNN
	1    7220 2770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EC24C8F
P 6450 2750
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
F 0 "C?" H 6475 2850 50  0000 L CNN
F 1 "10uF" H 6475 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6488 2600 50  0001 C CNN
F 3 "" H 6475 2850 50  0001 C CNN
F 4 "0402" H 6300 2850 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6300 2750 50  0000 R CNN "Voltage"
F 6 "X5R" H 6300 2650 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6450 2750 50  0001 C CNN "Digi-Key PN"
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C0B19
P 4720 2060
F 0 "#PWR?" H 4720 1910 50  0001 C CNN
F 1 "+3.3V" H 4720 2200 50  0000 C CNN
F 2 "" H 4720 2060 50  0001 C CNN
F 3 "" H 4720 2060 50  0001 C CNN
	1    4720 2060
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C11EE
P 5120 2260
F 0 "#PWR?" H 5120 2110 50  0001 C CNN
F 1 "+3.3V" V 5120 2400 50  0000 L CNN
F 2 "" H 5120 2260 50  0001 C CNN
F 3 "" H 5120 2260 50  0001 C CNN
	1    5120 2260
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5C49AB
P 5130 3070
AR Path="/5D6B2673/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5D784813/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5D739492/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E28CFDF/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E36CE18/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E3C80C8/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5E3C97B4/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5EAE4AB6/5F5C49AB" Ref="#PWR?"  Part="1" 
AR Path="/5F58356B/5F5C49AB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5130 2820 50  0001 C CNN
F 1 "GND" H 5135 2897 50  0000 C CNN
F 2 "" H 5130 3070 50  0001 C CNN
F 3 "" H 5130 3070 50  0001 C CNN
	1    5130 3070
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F5C49B5
P 5130 2920
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
F 0 "C?" H 5155 3020 50  0000 L CNN
F 1 "0.1uF" H 5155 2820 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5168 2770 50  0001 C CNN
F 3 "" H 5155 3020 50  0001 C CNN
F 4 "" H 5555 3420 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 4980 3020 50  0000 R CNN "display_footprint"
F 6 "50V" H 4980 2920 50  0000 R CNN "Voltage"
F 7 "X7R" H 4980 2820 50  0000 R CNN "Dielectric"
	1    5130 2920
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5C49BB
P 5130 2770
F 0 "#PWR?" H 5130 2620 50  0001 C CNN
F 1 "+3.3V" H 5130 2910 50  0000 C CNN
F 2 "" H 5130 2770 50  0001 C CNN
F 3 "" H 5130 2770 50  0001 C CNN
	1    5130 2770
	1    0    0    -1  
$EndComp
$EndSCHEMATC
