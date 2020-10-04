EESchema Schematic File Version 4
LIBS:LED_Panel_Controller-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 10 34
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
L Oscillator:ASE-xxxMHz X?
U 1 1 5E015C3C
P 5510 2700
F 0 "X?" H 5310 2950 50  0000 L CNN
F 1 "ASE-8.000MHz" H 5560 2450 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASE-4Pin_3.2x2.5mm" H 6210 2350 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 5410 2700 50  0001 C CNN
F 4 "	535-9558-1-ND" H 5510 2700 50  0001 C CNN "Digi-Key PN"
	1    5510 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E01A3D9
P 5510 3000
F 0 "#PWR?" H 5510 2750 50  0001 C CNN
F 1 "GND" H 5510 2850 50  0000 C CNN
F 2 "" H 5510 3000 50  0001 C CNN
F 3 "" H 5510 3000 50  0001 C CNN
	1    5510 3000
	1    0    0    -1  
$EndComp
Text GLabel 6810 2700 2    50   Output ~ 0
PIC32MZ_POSC_EC
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E021EF5
P 6560 2930
AR Path="/5BAAE1F3/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5E697952/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5E021EF5" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5E021EF5" Ref="R?"  Part="1" 
F 0 "R?" H 6500 2930 50  0000 R CNN
F 1 "10k" V 6560 2930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6560 2930 50  0001 C CNN
F 3 "" H 6560 2930 50  0001 C CNN
F 4 "0402" H 6630 3010 50  0000 L CNN "display_footprint"
F 5 "1%" H 6630 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6630 2860 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 6560 2930 50  0001 C CNN "Digi-Key PN"
	1    6560 2930
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E021EFB
P 6560 3080
AR Path="/5CB7A8BC/5E021EFB" Ref="#PWR?"  Part="1" 
AR Path="/5E01BCC3/5E021EFB" Ref="#PWR?"  Part="1" 
AR Path="/5E697952/5E021EFB" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2F15/5E021EFB" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/5E021EFB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6560 2830 50  0001 C CNN
F 1 "GND" H 6560 2930 50  0000 C CNN
F 2 "" H 6560 3080 50  0001 C CNN
F 3 "" H 6560 3080 50  0001 C CNN
	1    6560 3080
	1    0    0    -1  
$EndComp
Wire Wire Line
	6810 2700 6560 2700
Wire Wire Line
	6560 2700 6560 2780
Connection ~ 6560 2700
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E024C29
P 6110 2700
AR Path="/5BAAE2B6/5E024C29" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5E024C29" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5E024C29" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E024C29" Ref="R?"  Part="1" 
AR Path="/5CAD2DA3/5E024C29" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5E024C29" Ref="R?"  Part="1" 
AR Path="/5E697952/5E024C29" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5E024C29" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5E024C29" Ref="R?"  Part="1" 
F 0 "R?" V 6070 2560 50  0000 R CNN
F 1 "100" V 6110 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6110 2700 50  0001 C CNN
F 3 "" H 6110 2700 50  0001 C CNN
F 4 "0402" V 6210 2700 50  0001 C CNN "display_footprint"
F 5 "1%" V 6310 2700 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 6410 2700 50  0001 C CNN "Wattage"
F 7 "" H 6410 3100 60  0001 C CNN "Digi-Key PN"
	1    6110 2700
	0    -1   1    0   
$EndComp
Wire Wire Line
	5960 2700 5810 2700
Wire Wire Line
	6260 2700 6560 2700
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E0269C4
P 4960 2930
AR Path="/5BAAE1F3/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5E697952/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5E0269C4" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5E0269C4" Ref="R?"  Part="1" 
F 0 "R?" H 4900 2930 50  0000 R CNN
F 1 "10k" V 4960 2930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4960 2930 50  0001 C CNN
F 3 "" H 4960 2930 50  0001 C CNN
F 4 "0402" H 5030 3010 50  0000 L CNN "display_footprint"
F 5 "1%" H 5030 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5030 2860 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4960 2930 50  0001 C CNN "Digi-Key PN"
	1    4960 2930
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0269CA
P 4960 3080
AR Path="/5CB7A8BC/5E0269CA" Ref="#PWR?"  Part="1" 
AR Path="/5E01BCC3/5E0269CA" Ref="#PWR?"  Part="1" 
AR Path="/5E697952/5E0269CA" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2F15/5E0269CA" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/5E0269CA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4960 2830 50  0001 C CNN
F 1 "GND" H 4960 2930 50  0000 C CNN
F 2 "" H 4960 3080 50  0001 C CNN
F 3 "" H 4960 3080 50  0001 C CNN
	1    4960 3080
	1    0    0    -1  
$EndComp
Wire Wire Line
	5210 2700 4960 2700
Wire Wire Line
	4960 2700 4960 2780
Connection ~ 4960 2700
Wire Wire Line
	4660 2700 4960 2700
Text GLabel 4660 2700 0    50   Input ~ 0
PIC32MZ_POSC_EC_Enable
$Comp
L power:GND #PWR?
U 1 1 5E03ADCE
P 6400 2300
AR Path="/5CB25152/5E03ADCE" Ref="#PWR?"  Part="1" 
AR Path="/5E01BCC3/5E03ADCE" Ref="#PWR?"  Part="1" 
AR Path="/5E697952/5E03ADCE" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2F15/5E03ADCE" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/5E03ADCE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 2050 50  0001 C CNN
F 1 "GND" H 6400 2150 50  0000 C CNN
F 2 "" H 6400 2300 50  0000 C CNN
F 3 "" H 6400 2300 50  0000 C CNN
	1    6400 2300
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E03ADD8
P 6080 2070
AR Path="/5CB25152/5E03ADD8" Ref="C?"  Part="1" 
AR Path="/5E01BCC3/5E03ADD8" Ref="C?"  Part="1" 
AR Path="/5E697952/5E03ADD8" Ref="C?"  Part="1" 
AR Path="/5EAE2F15/5E03ADD8" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5E03ADD8" Ref="C?"  Part="1" 
F 0 "C?" H 6105 2170 50  0000 L CNN
F 1 "0.1uF" H 6105 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6118 1920 50  0001 C CNN
F 3 "" H 6105 2170 50  0001 C CNN
F 4 "0402" H 5930 2170 50  0000 R CNN "display_footprint"
F 5 "50V" H 5930 2070 50  0000 R CNN "Voltage"
F 6 "X7R" H 5930 1970 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 2170 -4810 50  0001 C CNN "Digi-Key PN"
	1    6080 2070
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E03ADE2
P 6720 2070
AR Path="/5CB25152/5E03ADE2" Ref="C?"  Part="1" 
AR Path="/5E01BCC3/5E03ADE2" Ref="C?"  Part="1" 
AR Path="/5E697952/5E03ADE2" Ref="C?"  Part="1" 
AR Path="/5EAE2F15/5E03ADE2" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5E03ADE2" Ref="C?"  Part="1" 
F 0 "C?" H 6745 2170 50  0000 L CNN
F 1 "1nF" H 6745 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6758 1920 50  0001 C CNN
F 3 "" H 6745 2170 50  0001 C CNN
F 4 "0402" H 6570 2170 50  0001 R CNN "display_footprint"
F 5 "50V" H 6570 2070 50  0001 R CNN "Voltage"
F 6 "X7R" H 6570 1970 50  0001 R CNN "Dielectric"
F 7 "399-1032-1-ND" H 2170 -4810 50  0001 C CNN "Digi-Key PN"
	1    6720 2070
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E03ADEC
P 6400 2070
AR Path="/5CB25152/5E03ADEC" Ref="C?"  Part="1" 
AR Path="/5E01BCC3/5E03ADEC" Ref="C?"  Part="1" 
AR Path="/5E697952/5E03ADEC" Ref="C?"  Part="1" 
AR Path="/5EAE2F15/5E03ADEC" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5E03ADEC" Ref="C?"  Part="1" 
F 0 "C?" H 6425 2170 50  0000 L CNN
F 1 "10nF" H 6425 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6438 1920 50  0001 C CNN
F 3 "" H 6425 2170 50  0001 C CNN
F 4 "0402" H 6250 2170 50  0001 R CNN "display_footprint"
F 5 "50V" H 6250 2070 50  0001 R CNN "Voltage"
F 6 "X7R" H 6250 1970 50  0001 R CNN "Dielectric"
F 7 "490-13295-1-ND" H 2170 -4810 50  0001 C CNN "Digi-Key PN"
	1    6400 2070
	1    0    0    -1  
$EndComp
Wire Wire Line
	6080 1880 6080 1920
Connection ~ 6400 1880
Wire Wire Line
	6720 1880 6720 1920
Wire Wire Line
	6080 1880 6400 1880
Wire Wire Line
	6080 2260 6080 2220
Connection ~ 6400 2260
Wire Wire Line
	6720 2260 6720 2220
Wire Wire Line
	6080 2260 6400 2260
Wire Wire Line
	6400 2220 6400 2260
Wire Wire Line
	6400 1880 6720 1880
Wire Wire Line
	6400 1880 6400 1920
Wire Wire Line
	6400 2260 6720 2260
Wire Wire Line
	6400 2260 6400 2300
$Comp
L Device:Ferrite_Bead L?
U 1 1 5E053473
P 5040 1800
AR Path="/5CAD2D97/5E053473" Ref="L?"  Part="1" 
AR Path="/5E01BCC3/5E053473" Ref="L?"  Part="1" 
AR Path="/5E697952/5E053473" Ref="L?"  Part="1" 
AR Path="/5EAE2F15/5E053473" Ref="L?"  Part="1" 
AR Path="/5F5829C2/5E053473" Ref="L?"  Part="1" 
F 0 "L?" V 4890 1825 50  0000 C CNN
F 1 "600R 0.5A" V 5190 1800 50  0000 C CNN
F 2 "Inductors_SMD:L_0402" V 4970 1800 50  0001 C CNN
F 3 "~" H 5040 1800 50  0001 C CNN
F 4 "490-5441-1-ND" H -3150 -1290 50  0001 C CNN "Digi-Key PN"
	1    5040 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5190 1800 5510 1800
Wire Wire Line
	5510 1800 5510 2400
Wire Wire Line
	5510 1800 6400 1800
Wire Wire Line
	6400 1800 6400 1880
Connection ~ 5510 1800
Wire Wire Line
	4530 1720 4530 1800
Wire Wire Line
	4530 1800 4890 1800
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E43F288
P 5510 1730
F 0 "#FLG?" H 5510 1805 50  0001 C CNN
F 1 "PWR_FLAG" H 5510 1880 50  0000 C CNN
F 2 "" H 5510 1730 50  0001 C CNN
F 3 "~" H 5510 1730 50  0001 C CNN
	1    5510 1730
	1    0    0    -1  
$EndComp
Wire Wire Line
	5510 1730 5510 1800
$Comp
L power:+3.3V #PWR?
U 1 1 5E6E8CA9
P 4530 1720
F 0 "#PWR?" H 4530 1570 50  0001 C CNN
F 1 "+3.3V" H 4530 1860 50  0000 C CNN
F 2 "" H 4530 1720 50  0001 C CNN
F 3 "" H 4530 1720 50  0001 C CNN
	1    4530 1720
	1    0    0    -1  
$EndComp
Text GLabel 2680 5130 0    50   Input ~ 0
PIC32MZ_REFCLK1
$Comp
L Custom_Library:R_Custom R?
U 1 1 5EC05874
P 2760 5360
AR Path="/5BAAE1F3/5EC05874" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5EC05874" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5EC05874" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5EC05874" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5EC05874" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5EC05874" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5EC05874" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5EC05874" Ref="R?"  Part="1" 
AR Path="/5E697952/5EC05874" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5EC05874" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5EC05874" Ref="R?"  Part="1" 
F 0 "R?" H 2700 5360 50  0000 R CNN
F 1 "10k" V 2760 5360 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2760 5360 50  0001 C CNN
F 3 "" H 2760 5360 50  0001 C CNN
F 4 "0402" H 2830 5440 50  0000 L CNN "display_footprint"
F 5 "1%" H 2830 5360 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2830 5290 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 2760 5360 50  0001 C CNN "Digi-Key PN"
	1    2760 5360
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC063B5
P 2760 5510
F 0 "#PWR?" H 2760 5260 50  0001 C CNN
F 1 "GND" H 2760 5360 50  0000 C CNN
F 2 "" H 2760 5510 50  0001 C CNN
F 3 "" H 2760 5510 50  0001 C CNN
	1    2760 5510
	1    0    0    -1  
$EndComp
Wire Wire Line
	2760 5210 2760 5130
Wire Wire Line
	2760 5130 2680 5130
$Comp
L Custom_Library:TP TP?
U 1 1 5EC0AF1F
P 2840 5130
AR Path="/5C1D5CD8/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5CB6F1ED/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5E939CFF/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5E9E0E87/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5EAE2D66/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5EAE2F15/5EC0AF1F" Ref="TP?"  Part="1" 
AR Path="/5F5829C2/5EC0AF1F" Ref="TP?"  Part="1" 
F 0 "TP?" V 2840 5280 50  0000 L CNN
F 1 "TP" H 2840 5280 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 2840 5130 60  0001 C CNN
F 3 "" H 2840 5130 60  0000 C CNN
	1    2840 5130
	0    1    1    0   
$EndComp
Wire Wire Line
	2840 5130 2760 5130
Connection ~ 2760 5130
$EndSCHEMATC
