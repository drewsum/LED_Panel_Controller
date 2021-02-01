EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 10 34
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
$Comp
L power:GND #PWR?
U 1 1 5F6895F9
P 5510 5050
F 0 "#PWR?" H 5510 4800 50  0001 C CNN
F 1 "GND" H 5510 4900 50  0000 C CNN
F 2 "" H 5510 5050 50  0001 C CNN
F 3 "" H 5510 5050 50  0001 C CNN
	1    5510 5050
	1    0    0    -1  
$EndComp
Text GLabel 6810 4750 2    50   Output ~ 0
PIC32MZ_SOSC_EC
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F689608
P 6560 4980
AR Path="/5BAAE1F3/5F689608" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5F689608" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5F689608" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5F689608" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5F689608" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5F689608" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5F689608" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5F689608" Ref="R?"  Part="1" 
AR Path="/5E697952/5F689608" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5F689608" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5F689608" Ref="R?"  Part="1" 
F 0 "R?" H 6500 4980 50  0000 R CNN
F 1 "10k" V 6560 4980 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6560 4980 50  0001 C CNN
F 3 "" H 6560 4980 50  0001 C CNN
F 4 "0402" H 6630 5060 50  0000 L CNN "display_footprint"
F 5 "1%" H 6630 4980 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6630 4910 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 6560 4980 50  0001 C CNN "Digi-Key PN"
	1    6560 4980
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F689612
P 6560 5130
AR Path="/5CB7A8BC/5F689612" Ref="#PWR?"  Part="1" 
AR Path="/5E01BCC3/5F689612" Ref="#PWR?"  Part="1" 
AR Path="/5E697952/5F689612" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2F15/5F689612" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/5F689612" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6560 4880 50  0001 C CNN
F 1 "GND" H 6560 4980 50  0000 C CNN
F 2 "" H 6560 5130 50  0001 C CNN
F 3 "" H 6560 5130 50  0001 C CNN
	1    6560 5130
	1    0    0    -1  
$EndComp
Wire Wire Line
	6810 4750 6560 4750
Wire Wire Line
	6560 4750 6560 4830
Connection ~ 6560 4750
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F689623
P 6110 4750
AR Path="/5BAAE2B6/5F689623" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5F689623" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5F689623" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5F689623" Ref="R?"  Part="1" 
AR Path="/5CAD2DA3/5F689623" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/5F689623" Ref="R?"  Part="1" 
AR Path="/5E697952/5F689623" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/5F689623" Ref="R?"  Part="1" 
AR Path="/5F5829C2/5F689623" Ref="R?"  Part="1" 
F 0 "R?" V 6070 4610 50  0000 R CNN
F 1 "100" V 6110 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6110 4750 50  0001 C CNN
F 3 "" H 6110 4750 50  0001 C CNN
F 4 "0402" V 6210 4750 50  0001 C CNN "display_footprint"
F 5 "1%" V 6310 4750 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 6410 4750 50  0001 C CNN "Wattage"
F 7 "" H 6410 5150 60  0001 C CNN "Digi-Key PN"
	1    6110 4750
	0    -1   1    0   
$EndComp
Wire Wire Line
	5960 4750 5810 4750
Wire Wire Line
	6260 4750 6560 4750
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F68968E
P 5040 3850
AR Path="/5CAD2D97/5F68968E" Ref="L?"  Part="1" 
AR Path="/5E01BCC3/5F68968E" Ref="L?"  Part="1" 
AR Path="/5E697952/5F68968E" Ref="L?"  Part="1" 
AR Path="/5EAE2F15/5F68968E" Ref="L?"  Part="1" 
AR Path="/5F5829C2/5F68968E" Ref="L?"  Part="1" 
F 0 "L?" V 4890 3875 50  0000 C CNN
F 1 "600R 0.5A" V 5190 3850 50  0000 C CNN
F 2 "Inductors_SMD:L_0402" V 4970 3850 50  0001 C CNN
F 3 "~" H 5040 3850 50  0001 C CNN
F 4 "490-5441-1-ND" H -3150 760 50  0001 C CNN "Digi-Key PN"
	1    5040 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	5190 3850 5510 3850
Connection ~ 5510 3850
Wire Wire Line
	4530 3770 4530 3850
Wire Wire Line
	4530 3850 4890 3850
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5F68969F
P 5510 3780
F 0 "#FLG?" H 5510 3855 50  0001 C CNN
F 1 "PWR_FLAG" H 5510 3930 50  0000 C CNN
F 2 "" H 5510 3780 50  0001 C CNN
F 3 "~" H 5510 3780 50  0001 C CNN
	1    5510 3780
	1    0    0    -1  
$EndComp
Wire Wire Line
	5510 3780 5510 3850
$Comp
L power:+3.3V #PWR?
U 1 1 5F6896AA
P 4530 3770
F 0 "#PWR?" H 4530 3620 50  0001 C CNN
F 1 "+3.3V" H 4530 3910 50  0000 C CNN
F 2 "" H 4530 3770 50  0001 C CNN
F 3 "" H 4530 3770 50  0001 C CNN
	1    4530 3770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:ECS-327KE X?
U 1 1 5F691017
P 5510 4750
F 0 "X?" H 5310 5000 50  0000 L CNN
F 1 "ECS-327KE" H 5560 4500 50  0000 L CNN
F 2 "Custom Footprints Library:ECS-327KE" H 6210 4400 50  0001 C CNN
F 3 "" H 5410 4750 50  0001 C CNN
F 4 "XC1751CT-ND" H 5510 4750 50  0001 C CNN "Digi-Key PN"
	1    5510 4750
	1    0    0    -1  
$EndComp
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
L Custom_Library:C_Custom C?
U 1 1 5FE5042F
P 6120 2030
AR Path="/5F5829B3/5FE5042F" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5FE5042F" Ref="C?"  Part="1" 
F 0 "C?" H 6145 2130 50  0000 L CNN
F 1 "0.1uF" H 6145 1930 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6158 1880 50  0001 C CNN
F 3 "" H 6145 2130 50  0001 C CNN
F 4 "0402" H 5970 2130 50  0000 R CNN "display_footprint"
F 5 "50V" H 5970 2030 50  0000 R CNN "Voltage"
F 6 "X7R" H 5970 1930 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 2210 -4850 50  0001 C CNN "Digi-Key PN"
	1    6120 2030
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FE50439
P 6820 2030
AR Path="/5CB7718D/5FE50439" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FE50439" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5FE50439" Ref="C?"  Part="1" 
AR Path="/5A557C58/5FE50439" Ref="C?"  Part="1" 
AR Path="/5CB25152/5FE50439" Ref="C?"  Part="1" 
AR Path="/5E697934/5FE50439" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5FE50439" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5FE50439" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5FE50439" Ref="C?"  Part="1" 
F 0 "C?" H 6845 2130 50  0000 L CNN
F 1 "10uF" H 6845 1930 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6858 1880 50  0001 C CNN
F 3 "" H 6845 2130 50  0001 C CNN
F 4 "0402" H 6670 2130 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6670 2030 50  0000 R CNN "Voltage"
F 6 "X5R" H 6670 1930 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6820 2030 50  0001 C CNN "Digi-Key PN"
	1    6820 2030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE51ED9
P 6120 2180
F 0 "#PWR?" H 6120 1930 50  0001 C CNN
F 1 "GND" H 6120 2030 50  0000 C CNN
F 2 "" H 6120 2180 50  0001 C CNN
F 3 "" H 6120 2180 50  0001 C CNN
	1    6120 2180
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE52135
P 6820 2180
F 0 "#PWR?" H 6820 1930 50  0001 C CNN
F 1 "GND" H 6820 2030 50  0000 C CNN
F 2 "" H 6820 2180 50  0001 C CNN
F 3 "" H 6820 2180 50  0001 C CNN
	1    6820 2180
	1    0    0    -1  
$EndComp
Wire Wire Line
	5510 1800 5510 2400
Wire Wire Line
	5510 3850 5510 4450
Text GLabel 1680 2700 0    50   Input ~ 0
POS3P3_PGOOD
Wire Wire Line
	6120 1880 6120 1800
Wire Wire Line
	6120 1800 5510 1800
Wire Wire Line
	6120 1800 6820 1800
Wire Wire Line
	6820 1800 6820 1880
Connection ~ 6120 1800
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FE559D0
P 6120 4080
AR Path="/5F5829B3/5FE559D0" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5FE559D0" Ref="C?"  Part="1" 
F 0 "C?" H 6145 4180 50  0000 L CNN
F 1 "0.1uF" H 6145 3980 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6158 3930 50  0001 C CNN
F 3 "" H 6145 4180 50  0001 C CNN
F 4 "0402" H 5970 4180 50  0000 R CNN "display_footprint"
F 5 "50V" H 5970 4080 50  0000 R CNN "Voltage"
F 6 "X7R" H 5970 3980 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 2210 -2800 50  0001 C CNN "Digi-Key PN"
	1    6120 4080
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FE55B54
P 6820 4080
AR Path="/5CB7718D/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5A557C58/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5CB25152/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5E697934/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5FE55B54" Ref="C?"  Part="1" 
AR Path="/5F5829C2/5FE55B54" Ref="C?"  Part="1" 
F 0 "C?" H 6845 4180 50  0000 L CNN
F 1 "10uF" H 6845 3980 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6858 3930 50  0001 C CNN
F 3 "" H 6845 4180 50  0001 C CNN
F 4 "0402" H 6670 4180 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6670 4080 50  0000 R CNN "Voltage"
F 6 "X5R" H 6670 3980 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6820 4080 50  0001 C CNN "Digi-Key PN"
	1    6820 4080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE55B5E
P 6120 4230
F 0 "#PWR?" H 6120 3980 50  0001 C CNN
F 1 "GND" H 6120 4080 50  0000 C CNN
F 2 "" H 6120 4230 50  0001 C CNN
F 3 "" H 6120 4230 50  0001 C CNN
	1    6120 4230
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FE55B68
P 6820 4230
F 0 "#PWR?" H 6820 3980 50  0001 C CNN
F 1 "GND" H 6820 4080 50  0000 C CNN
F 2 "" H 6820 4230 50  0001 C CNN
F 3 "" H 6820 4230 50  0001 C CNN
	1    6820 4230
	1    0    0    -1  
$EndComp
Wire Wire Line
	6120 3930 6120 3850
Wire Wire Line
	6120 3850 5510 3850
Wire Wire Line
	6120 3850 6820 3850
Wire Wire Line
	6820 3850 6820 3930
Connection ~ 6120 3850
$Comp
L Custom_Library:C_Custom C?
U 1 1 601DF015
P 1870 2010
AR Path="/5BAAE1F3/601DF015" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/601DF015" Ref="C?"  Part="1" 
AR Path="/5BE48F98/601DF015" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/601DF015" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/601DF015" Ref="C?"  Part="1" 
AR Path="/5E6AF016/601DF015" Ref="C?"  Part="1" 
AR Path="/5EAE4AE4/601DF015" Ref="C?"  Part="1" 
AR Path="/5F582E50/601DF015" Ref="C?"  Part="1" 
AR Path="/5F5829C2/601DF015" Ref="C?"  Part="1" 
F 0 "C?" H 1895 2110 50  0000 L CNN
F 1 "0.1uF" H 1895 1910 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1908 1860 50  0001 C CNN
F 3 "" H 1895 2110 50  0001 C CNN
F 4 "490-10701-1-ND" H 2295 2510 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 1720 2110 50  0000 R CNN "display_footprint"
F 6 "50V" H 1720 2010 50  0000 R CNN "Voltage"
F 7 "X7R" H 1720 1910 50  0000 R CNN "Dielectric"
	1    1870 2010
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601DF01B
P 1870 1860
AR Path="/5F582E50/601DF01B" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601DF01B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1870 1710 50  0001 C CNN
F 1 "+3.3V" H 1870 2000 50  0000 C CNN
F 2 "" H 1870 1860 50  0001 C CNN
F 3 "" H 1870 1860 50  0001 C CNN
	1    1870 1860
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601DF021
P 1870 2160
AR Path="/5F582E50/601DF021" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601DF021" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1870 1910 50  0001 C CNN
F 1 "GND" H 1870 2010 50  0000 C CNN
F 2 "" H 1870 2160 50  0001 C CNN
F 3 "" H 1870 2160 50  0001 C CNN
	1    1870 2160
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601DF027
P 1980 2600
AR Path="/5F582E50/601DF027" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601DF027" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1980 2450 50  0001 C CNN
F 1 "+3.3V" H 1980 2740 50  0000 C CNN
F 2 "" H 1980 2600 50  0001 C CNN
F 3 "" H 1980 2600 50  0001 C CNN
	1    1980 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601DF02D
P 1980 2800
AR Path="/5F582E50/601DF02D" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601DF02D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1980 2550 50  0001 C CNN
F 1 "GND" H 1980 2650 50  0000 C CNN
F 2 "" H 1980 2800 50  0001 C CNN
F 3 "" H 1980 2800 50  0001 C CNN
	1    1980 2800
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_BUF U?
U 1 1 601DFA25
P 1980 2700
F 0 "U?" H 2040 2850 50  0000 L CNN
F 1 "74LVC1G97" H 2040 2550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2030 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 2030 2700 50  0001 C CNN
	1    1980 2700
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601E190B
P 2810 2930
AR Path="/5BAAE1F3/601E190B" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/601E190B" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/601E190B" Ref="R?"  Part="1" 
AR Path="/5BB844FD/601E190B" Ref="R?"  Part="1" 
AR Path="/5BF346B3/601E190B" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/601E190B" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/601E190B" Ref="R?"  Part="1" 
AR Path="/5E01BCC3/601E190B" Ref="R?"  Part="1" 
AR Path="/5E697952/601E190B" Ref="R?"  Part="1" 
AR Path="/5EAE2F15/601E190B" Ref="R?"  Part="1" 
AR Path="/5F5829C2/601E190B" Ref="R?"  Part="1" 
F 0 "R?" H 2750 2930 50  0000 R CNN
F 1 "10k" V 2810 2930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2810 2930 50  0001 C CNN
F 3 "" H 2810 2930 50  0001 C CNN
F 4 "0402" H 2880 3010 50  0000 L CNN "display_footprint"
F 5 "1%" H 2880 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2880 2860 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 2810 2930 50  0001 C CNN "Digi-Key PN"
	1    2810 2930
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601E2D03
P 2810 3080
AR Path="/5F582E50/601E2D03" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601E2D03" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2810 2830 50  0001 C CNN
F 1 "GND" H 2810 2930 50  0000 C CNN
F 2 "" H 2810 3080 50  0001 C CNN
F 3 "" H 2810 3080 50  0001 C CNN
	1    2810 3080
	1    0    0    -1  
$EndComp
Wire Wire Line
	2810 2780 2810 2700
Wire Wire Line
	2810 2700 2230 2700
Text GLabel 2890 2700 2    50   Output ~ 0
PIC32MZ_CLK_EN
Wire Wire Line
	2890 2700 2810 2700
Connection ~ 2810 2700
Text GLabel 5210 2700 0    50   Input ~ 0
PIC32MZ_CLK_EN
Text GLabel 5210 4750 0    50   Input ~ 0
PIC32MZ_CLK_EN
$EndSCHEMATC
