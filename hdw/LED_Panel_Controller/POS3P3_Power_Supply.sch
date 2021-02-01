EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 34
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
L Custom_Library:C_Custom C?
U 1 1 5E2AA96A
P 4550 2970
AR Path="/5BB27BA3/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5BB27B84/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5BB27B24/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA96A" Ref="C?"  Part="1" 
AR Path="/5F581B64/5E2AA96A" Ref="C?"  Part="1" 
F 0 "C?" H 4575 3070 50  0000 L CNN
F 1 "0.1uF" H 4575 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4588 2820 50  0001 C CNN
F 3 "" H 4575 3070 50  0001 C CNN
F 4 "0402" H 4400 3070 50  0000 R CNN "display_footprint"
F 5 "50V" H 4400 2970 50  0000 R CNN "Voltage"
F 6 "X7R" H 4400 2870 50  0000 R CNN "Dielectric"
F 7 "" H 4975 3470 60  0001 C CNN "Digi-Key PN"
	1    4550 2970
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2AA96B
P 4550 3120
AR Path="/5CB7718D/5E2AA96B" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E2AA96B" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E2AA96B" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA96B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E2AA96B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 2870 50  0001 C CNN
F 1 "GND" H 4550 2970 50  0000 C CNN
F 2 "" H 4550 3120 50  0001 C CNN
F 3 "" H 4550 3120 50  0001 C CNN
	1    4550 3120
	1    0    0    -1  
$EndComp
Wire Wire Line
	4890 2740 4550 2740
Wire Wire Line
	4550 2740 4550 2820
Wire Wire Line
	4890 2640 4550 2640
Wire Wire Line
	4550 2740 4550 2640
Connection ~ 4550 2740
$Comp
L power:GND #PWR?
U 1 1 5C288B4E
P 5390 5120
AR Path="/5CB7718D/5C288B4E" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5C288B4E" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5C288B4E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5C288B4E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5C288B4E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5390 4870 50  0001 C CNN
F 1 "GND" H 5390 4970 50  0000 C CNN
F 2 "" H 5390 5120 50  0001 C CNN
F 3 "" H 5390 5120 50  0001 C CNN
	1    5390 5120
	1    0    0    -1  
$EndComp
Wire Wire Line
	5390 5120 5390 5080
Wire Wire Line
	5390 5080 5490 5080
Wire Wire Line
	5490 5080 5490 5040
Connection ~ 5390 5080
Wire Wire Line
	5390 5080 5390 5040
Wire Wire Line
	5390 5080 5290 5080
Wire Wire Line
	5290 5080 5290 5040
$Comp
L power:GND #PWR?
U 1 1 5C28E698
P 4810 4920
AR Path="/5CB7718D/5C28E698" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5C28E698" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5C28E698" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5C28E698" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5C28E698" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4810 4670 50  0001 C CNN
F 1 "GND" H 4810 4770 50  0000 C CNN
F 2 "" H 4810 4920 50  0001 C CNN
F 3 "" H 4810 4920 50  0001 C CNN
	1    4810 4920
	1    0    0    -1  
$EndComp
Wire Wire Line
	4810 4920 4810 4840
Wire Wire Line
	4810 4640 4890 4640
Wire Wire Line
	4890 4840 4810 4840
Connection ~ 4810 4840
Wire Wire Line
	4810 4840 4810 4640
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C28FDD2
P 6920 3280
AR Path="/5C1E3A0B/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5C28FDD2" Ref="C?"  Part="1" 
AR Path="/5F581B64/5C28FDD2" Ref="C?"  Part="1" 
F 0 "C?" H 6945 3380 50  0000 L CNN
F 1 "100uF" H 6945 3180 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6958 3130 50  0001 C CNN
F 3 "" H 6945 3380 50  0001 C CNN
F 4 "1206" H 6770 3380 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6770 3280 50  0000 R CNN "Voltage"
F 6 "X5R" H 6770 3180 50  0000 R CNN "Dielectric"
F 7 "587-1963-1-ND" H 6920 3280 50  0001 C CNN "Digi-Key PN"
	1    6920 3280
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2AA97D
P 4190 4770
AR Path="/5C1D5CD8/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5C1D5CCA/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA97D" Ref="C?"  Part="1" 
AR Path="/5F581B64/5E2AA97D" Ref="C?"  Part="1" 
F 0 "C?" H 4215 4870 50  0000 L CNN
F 1 "10nF" H 4215 4670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4228 4620 50  0001 C CNN
F 3 "" H 4215 4870 50  0001 C CNN
F 4 "" H 4040 4870 50  0000 R CNN "display_footprint"
F 5 "50V" H 4040 4770 50  0000 R CNN "Voltage"
F 6 "X7R" H 4040 4670 50  0000 R CNN "Dielectric"
F 7 "490-13295-1-ND" H 270 550 50  0001 C CNN "Digi-Key PN"
	1    4190 4770
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C294444
P 4190 4920
AR Path="/5CB7718D/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5C294444" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4190 4670 50  0001 C CNN
F 1 "GND" H 4190 4770 50  0000 C CNN
F 2 "" H 4190 4920 50  0001 C CNN
F 3 "" H 4190 4920 50  0001 C CNN
	1    4190 4920
	1    0    0    -1  
$EndComp
Wire Wire Line
	4190 4620 4190 4440
Wire Wire Line
	4190 4440 4890 4440
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2959E0
P 8220 3810
AR Path="/5BB27BA3/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5F581B64/5C2959E0" Ref="R?"  Part="1" 
F 0 "R?" H 8140 3810 50  0000 R CNN
F 1 "562k" V 8220 3810 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8220 3810 50  0001 C CNN
F 3 "" H 8220 3810 50  0001 C CNN
F 4 "0402" H 8320 3890 50  0000 L CNN "display_footprint"
F 5 "1%" H 8320 3810 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8330 3730 50  0000 L CNN "Wattage"
F 7 "" H 8220 3810 50  0001 C CNN "Digi-Key PN"
	1    8220 3810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2AA981
P 8220 4720
AR Path="/5BB27BA3/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA981" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E2AA981" Ref="R?"  Part="1" 
F 0 "R?" H 8140 4720 50  0000 R CNN
F 1 "180k" V 8220 4720 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8220 4720 50  0001 C CNN
F 3 "" H 8220 4720 50  0001 C CNN
F 4 "0402" H 8320 4800 50  0000 L CNN "display_footprint"
F 5 "1%" H 8320 4720 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8330 4640 50  0000 L CNN "Wattage"
F 7 "" H 8220 4720 50  0001 C CNN "Digi-Key PN"
	1    8220 4720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2AA982
P 8220 4870
AR Path="/5CB7718D/5E2AA982" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E2AA982" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E2AA982" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA982" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E2AA982" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8220 4620 50  0001 C CNN
F 1 "GND" H 8220 4720 50  0000 C CNN
F 2 "" H 8220 4870 50  0001 C CNN
F 3 "" H 8220 4870 50  0001 C CNN
	1    8220 4870
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C298A57
P 6920 3430
AR Path="/5CB7718D/5C298A57" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5C298A57" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5C298A57" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5C298A57" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5C298A57" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6920 3180 50  0001 C CNN
F 1 "GND" H 6920 3280 50  0000 C CNN
F 2 "" H 6920 3430 50  0001 C CNN
F 3 "" H 6920 3430 50  0001 C CNN
	1    6920 3430
	1    0    0    -1  
$EndComp
Wire Wire Line
	6920 3130 6920 3040
$Comp
L Custom_Library:TP TP?
U 1 1 5C3650A7
P 8220 2960
AR Path="/5C1D5CD8/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5C1E3A08/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5D779AE1/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5CB7718D/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5E0DC082/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5E0F263A/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5EAE2D8A/5C3650A7" Ref="TP?"  Part="1" 
AR Path="/5F581B64/5C3650A7" Ref="TP?"  Part="1" 
F 0 "TP?" H 8220 3110 50  0000 C CNN
F 1 "TP" H 8220 3110 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 8220 2960 60  0001 C CNN
F 3 "" H 8220 2960 60  0000 C CNN
	1    8220 2960
	1    0    0    -1  
$EndComp
Wire Wire Line
	5890 3040 6180 3040
Text GLabel 7290 2560 1    50   UnSpc ~ 0
POS3P3_SNS+
Text GLabel 7750 2560 1    50   UnSpc ~ 0
POS3P3_SNS-
Wire Wire Line
	6480 3040 6920 3040
Wire Wire Line
	8220 3040 8220 3660
Wire Wire Line
	8220 2960 8220 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5E08F4A3
P 5890 3440
AR Path="/5CB7718D/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E08F4A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5890 3290 50  0001 C CNN
F 1 "+3.3V" V 5890 3580 50  0000 L CNN
F 2 "" H 5890 3440 50  0001 C CNN
F 3 "" H 5890 3440 50  0001 C CNN
	1    5890 3440
	0    1    1    0   
$EndComp
Connection ~ 8220 3040
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E2AA9B3
P 8670 3270
AR Path="/5BB27BA3/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5BB27B84/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5BB27B24/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA9B3" Ref="C?"  Part="1" 
AR Path="/5F581B64/5E2AA9B3" Ref="C?"  Part="1" 
F 0 "C?" H 8695 3370 50  0000 L CNN
F 1 "0.1uF" H 8695 3170 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8708 3120 50  0001 C CNN
F 3 "" H 8695 3370 50  0001 C CNN
F 4 "0402" H 8520 3370 50  0000 R CNN "display_footprint"
F 5 "50V" H 8520 3270 50  0000 R CNN "Voltage"
F 6 "X7R" H 8520 3170 50  0000 R CNN "Dielectric"
F 7 "" H 9095 3770 60  0001 C CNN "Digi-Key PN"
	1    8670 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2AA9B5
P 8670 3420
AR Path="/5CB7718D/5E2AA9B5" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E2AA9B5" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E2AA9B5" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA9B5" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E2AA9B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8670 3170 50  0001 C CNN
F 1 "GND" H 8670 3270 50  0000 C CNN
F 2 "" H 8670 3420 50  0001 C CNN
F 3 "" H 8670 3420 50  0001 C CNN
	1    8670 3420
	1    0    0    -1  
$EndComp
Wire Wire Line
	8670 3120 8670 3040
Wire Wire Line
	8670 3040 8220 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5DEA6B71
P 8670 2960
AR Path="/5CB7718D/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5DEA6B71" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8670 2810 50  0001 C CNN
F 1 "+3.3V" H 8670 3100 50  0000 C CNN
F 2 "" H 8670 2960 50  0001 C CNN
F 3 "" H 8670 2960 50  0001 C CNN
	1    8670 2960
	1    0    0    -1  
$EndComp
Wire Wire Line
	8670 2960 8670 3040
Connection ~ 8670 3040
Text GLabel 4890 3440 0    50   Input ~ 0
POS3P3_RUN
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2B5758
P 7290 2710
AR Path="/5CB0BC26/5E2B5758" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E2B5758" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E2B5758" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E2B5758" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E2B5758" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E2B5758" Ref="R?"  Part="1" 
F 0 "R?" V 7190 2710 50  0000 C CNN
F 1 "10" V 7290 2710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7290 2710 50  0001 C CNN
F 3 "" H 7290 2710 50  0001 C CNN
F 4 "0402" V 7390 2710 50  0001 C CNN "display_footprint"
F 5 "1%" V 7490 2710 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7590 2710 50  0001 C CNN "Wattage"
F 7 "Telemetry" V 7390 2710 50  0000 C CNN "Configuration"
	1    7290 2710
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2B5762
P 7750 2710
AR Path="/5CB0BC26/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E2B5762" Ref="R?"  Part="1" 
F 0 "R?" V 7650 2710 50  0000 C CNN
F 1 "10" V 7750 2710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7750 2710 50  0001 C CNN
F 3 "" H 7750 2710 50  0001 C CNN
F 4 "0402" V 7850 2710 50  0001 C CNN "display_footprint"
F 5 "1%" V 7950 2710 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8050 2710 50  0001 C CNN "Wattage"
F 7 "Telemetry" V 7850 2710 50  0000 C CNN "Configuration"
	1    7750 2710
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7670 3040 7750 3040
Wire Wire Line
	7290 2860 7290 3040
Wire Wire Line
	7290 3040 7370 3040
Connection ~ 7750 3040
Wire Wire Line
	7750 3040 8220 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5E434D63
P 9060 2960
AR Path="/5CB7718D/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E434D63" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9060 2810 50  0001 C CNN
F 1 "+3.3V" H 9060 3100 50  0000 C CNN
F 2 "" H 9060 2960 50  0001 C CNN
F 3 "" H 9060 2960 50  0001 C CNN
	1    9060 2960
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E4352D6
P 9060 2960
F 0 "#FLG?" H 9060 3035 50  0001 C CNN
F 1 "PWR_FLAG" H 9060 3110 50  0000 C CNN
F 2 "" H 9060 2960 50  0001 C CNN
F 3 "~" H 9060 2960 50  0001 C CNN
	1    9060 2960
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:ZXMS6004FFTA Q?
U 1 1 5EB3BE62
P 5020 7210
F 0 "Q?" H 5220 7285 50  0000 L CNN
F 1 "ZXMS6004FFTA" H 5220 7210 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5220 7135 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ZXMS6004FF.pdf" H 5020 7210 50  0001 L CNN
F 4 "ZXMS6004FFCT-ND" H 5020 7210 50  0001 C CNN "Digi-Key PN"
	1    5020 7210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB3CD64
P 5120 7410
F 0 "#PWR?" H 5120 7160 50  0001 C CNN
F 1 "GND" H 5120 7260 50  0000 C CNN
F 2 "" H 5120 7410 50  0001 C CNN
F 3 "" H 5120 7410 50  0001 C CNN
	1    5120 7410
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5EB3E1B6
P 5120 7010
F 0 "#PWR?" H 5120 6860 50  0001 C CNN
F 1 "+3.3V" H 5120 7150 50  0000 C CNN
F 2 "" H 5120 7010 50  0001 C CNN
F 3 "" H 5120 7010 50  0001 C CNN
	1    5120 7010
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS214NW Q?
U 1 1 5EB3F7A8
P 4290 7490
F 0 "Q?" H 4490 7565 50  0000 L CNN
F 1 "BSS214NW" H 4490 7490 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 4490 7415 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/Infineon-BSS214NW-DS-v02_02-en.pdf?fileId=db3a30431b3e89eb011b695aebc01bde" H 4290 7490 50  0001 L CNN
F 4 "BSS214NWH6327XTSA1CT-ND" H 4290 7490 50  0001 C CNN "Digi-Key PN"
	1    4290 7490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EB40BA6
P 4390 7690
F 0 "#PWR?" H 4390 7440 50  0001 C CNN
F 1 "GND" H 4390 7540 50  0000 C CNN
F 2 "" H 4390 7690 50  0001 C CNN
F 3 "" H 4390 7690 50  0001 C CNN
	1    4390 7690
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB41C61
P 4390 6980
AR Path="/5BB27BA3/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5EB41C61" Ref="R?"  Part="1" 
AR Path="/5F581B64/5EB41C61" Ref="R?"  Part="1" 
F 0 "R?" H 4310 6980 50  0000 R CNN
F 1 "10k" V 4390 6980 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4390 6980 50  0001 C CNN
F 3 "" H 4390 6980 50  0001 C CNN
F 4 "0402" H 4490 7060 50  0000 L CNN "display_footprint"
F 5 "1%" H 4490 6980 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4500 6900 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4690 7380 60  0001 C CNN "Digi-Key PN"
	1    4390 6980
	1    0    0    -1  
$EndComp
Wire Wire Line
	4390 7130 4390 7210
Wire Wire Line
	4820 7210 4390 7210
Connection ~ 4390 7210
Wire Wire Line
	4390 7210 4390 7290
$Comp
L power:GND #PWR?
U 1 1 5EB47981
P 3680 7130
F 0 "#PWR?" H 3680 6880 50  0001 C CNN
F 1 "GND" H 3680 6980 50  0000 C CNN
F 2 "" H 3680 7130 50  0001 C CNN
F 3 "" H 3680 7130 50  0001 C CNN
	1    3680 7130
	1    0    0    -1  
$EndComp
Wire Wire Line
	4390 6830 4390 6750
Wire Wire Line
	4390 6750 3680 6750
Wire Wire Line
	3680 6750 3680 6830
$Comp
L Diode:BAT48JFILM D?
U 1 1 5EB4A7A8
P 3680 6520
F 0 "D?" V 3750 6400 50  0000 R CNN
F 1 "BAT48JFILM" V 3650 6400 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 3680 6345 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/bat48.pdf" H 3680 6520 50  0001 C CNN
F 4 "497-5711-1-ND" H 3680 6520 50  0001 C CNN "Digi-Key PN"
	1    3680 6520
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3680 6670 3680 6750
Connection ~ 3680 6750
$Comp
L power:+3.3V #PWR?
U 1 1 5EB4C2CE
P 3680 6370
F 0 "#PWR?" H 3680 6220 50  0001 C CNN
F 1 "+3.3V" H 3680 6510 50  0000 C CNN
F 2 "" H 3680 6370 50  0001 C CNN
F 3 "" H 3680 6370 50  0001 C CNN
	1    3680 6370
	1    0    0    -1  
$EndComp
Text GLabel 2280 6700 2    50   Output ~ 0
POS3P3_RUN
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EB895CA
P 2130 6700
AR Path="/5EAE2D66/5EB895CA" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5EB895CA" Ref="R?"  Part="1" 
AR Path="/5F581B64/5EB895CA" Ref="R?"  Part="1" 
F 0 "R?" V 2030 6700 50  0000 C CNN
F 1 "10" V 2130 6700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2130 6700 50  0001 C CNN
F 3 "" H 2130 6700 50  0001 C CNN
F 4 "" H 2430 7100 60  0001 C CNN "Digi-Key PN"
F 5 "0402" V 2230 6700 50  0000 C CNN "display_footprint"
F 6 "1%" V 2330 6700 50  0000 C CNN "Tolerance"
F 7 "1/16W" V 2430 6700 50  0000 C CNN "Wattage"
	1    2130 6700
	0    1    1    0   
$EndComp
Text GLabel 1980 6700 0    50   Input ~ 0
POS12_PGOOD
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EBB9A75
P 3680 6980
AR Path="/5CB7718D/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5A557C58/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5CB25152/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5E697934/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5EBB9A75" Ref="C?"  Part="1" 
AR Path="/5F581B64/5EBB9A75" Ref="C?"  Part="1" 
F 0 "C?" H 3705 7080 50  0000 L CNN
F 1 "10uF" H 3705 6880 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3718 6830 50  0001 C CNN
F 3 "" H 3705 7080 50  0001 C CNN
F 4 "0402" H 3530 7080 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3530 6980 50  0000 R CNN "Voltage"
F 6 "X5R" H 3530 6880 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 3680 6980 50  0001 C CNN "Digi-Key PN"
	1    3680 6980
	1    0    0    -1  
$EndComp
Wire Wire Line
	8220 3960 8220 4240
Wire Wire Line
	7290 3040 6920 3040
Connection ~ 7290 3040
Connection ~ 6920 3040
Wire Wire Line
	5890 4240 8220 4240
Connection ~ 8220 4240
Wire Wire Line
	8220 4240 8220 4570
Wire Wire Line
	2770 2570 2770 2640
Connection ~ 2770 2640
$Comp
L power:+3.3V #PWR?
U 1 1 5DEA7247
P 2770 3660
AR Path="/5CB7718D/5DEA7247" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5DEA7247" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5DEA7247" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5DEA7247" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5DEA7247" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2770 3510 50  0001 C CNN
F 1 "+3.3V" H 2770 3800 50  0000 C CNN
F 2 "" H 2770 3660 50  0001 C CNN
F 3 "" H 2770 3660 50  0001 C CNN
	1    2770 3660
	1    0    0    -1  
$EndComp
Wire Wire Line
	2690 4240 2770 4240
Text GLabel 2690 4240 0    50   Output ~ 0
POS3P3_PGOOD
Wire Wire Line
	2770 4240 2770 3960
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2AA97B
P 2770 3810
AR Path="/5BB27BA3/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA97B" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E2AA97B" Ref="R?"  Part="1" 
F 0 "R?" H 2690 3810 50  0000 R CNN
F 1 "10k" V 2770 3810 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2770 3810 50  0001 C CNN
F 3 "" H 2770 3810 50  0001 C CNN
F 4 "0402" H 2870 3890 50  0000 L CNN "display_footprint"
F 5 "1%" H 2870 3810 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2880 3730 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 3070 4210 60  0001 C CNN "Digi-Key PN"
	1    2770 3810
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5E2AA972
P 2770 2570
AR Path="/5CB7718D/5E2AA972" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E2AA972" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E2AA972" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA972" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E2AA972" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2770 2420 50  0001 C CNN
F 1 "+12V" H 2770 2710 50  0000 C CNN
F 2 "" H 2770 2570 50  0001 C CNN
F 3 "" H 2770 2570 50  0001 C CNN
	1    2770 2570
	1    0    0    -1  
$EndComp
Wire Wire Line
	2770 2640 2770 2820
$Comp
L power:GND #PWR?
U 1 1 5E2AA970
P 2770 3120
AR Path="/5CB7718D/5E2AA970" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E2AA970" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E2AA970" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E2AA970" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E2AA970" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2770 2870 50  0001 C CNN
F 1 "GND" H 2770 2970 50  0000 C CNN
F 2 "" H 2770 3120 50  0001 C CNN
F 3 "" H 2770 3120 50  0001 C CNN
	1    2770 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C2703C2
P 2770 2970
AR Path="/5CB7718D/5C2703C2" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5C2703C2" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5C2703C2" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5C2703C2" Ref="C?"  Part="1" 
AR Path="/5F581B64/5C2703C2" Ref="C?"  Part="1" 
F 0 "C?" H 2795 3070 50  0000 L CNN
F 1 "10uF" H 2795 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2808 2820 50  0001 C CNN
F 3 "" H 2795 3070 50  0001 C CNN
F 4 "1206" H 2620 3070 50  0000 R CNN "display_footprint"
F 5 "25V" H 2620 2970 50  0000 R CNN "Voltage"
F 6 "X7R" H 2620 2870 50  0000 R CNN "Dielectric"
F 7 "1276-7031-1-ND" H 3195 3470 60  0001 C CNN "Digi-Key PN"
	1    2770 2970
	1    0    0    -1  
$EndComp
Connection ~ 4550 2640
Wire Wire Line
	2770 2640 4550 2640
Connection ~ 2770 4240
Wire Wire Line
	4890 4240 2770 4240
Text GLabel 4090 7490 0    50   Input ~ 0
POS3P3_RUN
$Comp
L Custom_Library:TPS62130 U?
U 1 1 6019E970
P 5390 3740
AR Path="/5F581BA3/6019E970" Ref="U?"  Part="1" 
AR Path="/5F581B64/6019E970" Ref="U?"  Part="1" 
F 0 "U?" H 5390 4990 50  0000 C CNN
F 1 "TPS62130" H 5390 3740 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 5390 3740 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps62130.pdf" H 5390 3740 50  0001 C CNN
F 4 "296-37878-1-ND" H 5290 3740 50  0001 C CNN "Digi-Key PN"
	1    5390 3740
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:L_Custom L?
U 1 1 601A324F
P 6330 3040
AR Path="/5F581BA3/601A324F" Ref="L?"  Part="1" 
AR Path="/5F581B64/601A324F" Ref="L?"  Part="1" 
F 0 "L?" V 6280 3040 50  0000 C CNN
F 1 "2.2uH" V 6405 3040 50  0000 C CNN
F 2 "" H 6330 3040 50  0001 C CNN
F 3 "" H 6330 3040 50  0001 C CNN
F 4 "IHLP2020" V 6480 3040 50  0000 C CNN "display_footprint"
F 5 "6.7A" V 6580 3040 50  0000 C CNN "Ampacity"
F 6 "20%" V 6680 3040 50  0000 C CNN "Tolerance"
F 7 "541-1236-1-ND" H 6330 3040 50  0001 C CNN "Digi-Key PN"
	1    6330 3040
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601AAF61
P 7520 3410
AR Path="/5EAE2EF2/601AAF61" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/601AAF61" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/601AAF61" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/601AAF61" Ref="R?"  Part="1" 
AR Path="/5F581B41/601AAF61" Ref="R?"  Part="1" 
AR Path="/5F581B64/601AAF61" Ref="R?"  Part="1" 
F 0 "R?" V 7420 3410 50  0000 C CNN
F 1 "0" V 7520 3410 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7520 3410 50  0001 C CNN
F 3 "" H 7520 3410 50  0001 C CNN
F 4 "0402" V 7620 3410 50  0001 C CNN "display_footprint"
F 5 "1%" V 7720 3410 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7820 3410 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7620 3410 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7520 3410 50  0001 C CNN "Digi-Key PN"
	1    7520 3410
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601AAF6C
P 7520 3710
AR Path="/5EAE2EF2/601AAF6C" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/601AAF6C" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/601AAF6C" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/601AAF6C" Ref="R?"  Part="1" 
AR Path="/5F581B41/601AAF6C" Ref="R?"  Part="1" 
AR Path="/5F581B64/601AAF6C" Ref="R?"  Part="1" 
F 0 "R?" V 7420 3710 50  0000 C CNN
F 1 "0" V 7520 3710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7520 3710 50  0001 C CNN
F 3 "" H 7520 3710 50  0001 C CNN
F 4 "0402" V 7620 3710 50  0001 C CNN "display_footprint"
F 5 "1%" V 7720 3710 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7820 3710 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7620 3710 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7520 3710 50  0001 C CNN "Digi-Key PN"
	1    7520 3710
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601AAF77
P 7520 4010
AR Path="/5EAE2EF2/601AAF77" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/601AAF77" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/601AAF77" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/601AAF77" Ref="R?"  Part="1" 
AR Path="/5F581B41/601AAF77" Ref="R?"  Part="1" 
AR Path="/5F581B64/601AAF77" Ref="R?"  Part="1" 
F 0 "R?" V 7420 4010 50  0000 C CNN
F 1 "0" V 7520 4010 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7520 4010 50  0001 C CNN
F 3 "" H 7520 4010 50  0001 C CNN
F 4 "0402" V 7620 4010 50  0001 C CNN "display_footprint"
F 5 "1%" V 7720 4010 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7820 4010 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7620 4010 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7520 4010 50  0001 C CNN "Digi-Key PN"
	1    7520 4010
	0    -1   1    0   
$EndComp
Wire Wire Line
	7670 4010 7750 4010
Wire Wire Line
	7750 4010 7750 3710
Wire Wire Line
	7290 4010 7370 4010
Wire Wire Line
	7370 3710 7290 3710
Connection ~ 7290 3710
Wire Wire Line
	7290 3710 7290 4010
Wire Wire Line
	7670 3710 7750 3710
Connection ~ 7750 3710
Wire Wire Line
	7750 3710 7750 3410
Wire Wire Line
	7670 3410 7750 3410
Connection ~ 7750 3410
Wire Wire Line
	7370 3410 7290 3410
Connection ~ 7290 3410
Wire Wire Line
	7290 3410 7290 3710
Wire Wire Line
	7750 2860 7750 3040
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E06F7D6
P 7520 3040
AR Path="/5CB6F1ED/5E06F7D6" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E06F7D6" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E06F7D6" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E06F7D6" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E06F7D6" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E06F7D6" Ref="R?"  Part="1" 
F 0 "R?" V 7420 3040 50  0000 C CNN
F 1 "0.02" V 7520 3040 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 7520 3040 50  0001 C CNN
F 3 "" H 7520 3040 50  0001 C CNN
F 4 "P16010CT-ND" H 7820 3440 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 7620 3040 50  0000 C CNN "display_footprint"
F 6 "1%" V 7720 3040 50  0000 C CNN "Tolerance"
F 7 "1W" V 7820 3040 50  0000 C CNN "Wattage"
F 8 "Telemetry" V 7350 3040 50  0000 C CNN "Configuration"
	1    7520 3040
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7290 3040 7290 3410
Wire Wire Line
	7750 3040 7750 3410
$EndSCHEMATC
