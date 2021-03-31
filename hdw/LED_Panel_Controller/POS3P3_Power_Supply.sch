EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 4 34
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
L Custom_Library:L_Custom L?
U 1 1 5C26EF0D
P 6330 3040
AR Path="/5CB7718D/5C26EF0D" Ref="L?"  Part="1" 
AR Path="/5E0DC082/5C26EF0D" Ref="L?"  Part="1" 
AR Path="/5E0F263A/5C26EF0D" Ref="L?"  Part="1" 
AR Path="/5EAE2D8A/5C26EF0D" Ref="L?"  Part="1" 
AR Path="/5F581B64/5C26EF0D" Ref="L401"  Part="1" 
F 0 "L401" V 6280 3040 50  0000 C CNN
F 1 "3.3uH" V 6405 3040 50  0000 C CNN
F 2 "Inductors_SMD:L_Vishay_IHLP-1212" H 6330 3040 50  0001 C CNN
F 3 "" H 6330 3040 50  0001 C CNN
F 4 "541-2567-1-ND" H 6330 3040 50  0001 C CNN "Digi-Key PN"
F 5 "IHLP1212" V 6480 3040 50  0000 C CNN "display_footprint"
F 6 "2.7A" V 6580 3040 50  0000 C CNN "Ampacity"
F 7 "20%" V 6680 3040 50  0000 C CNN "Tolerance"
	1    6330 3040
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 607862D9
P 4550 2970
AR Path="/5BB27BA3/607862D9" Ref="C?"  Part="1" 
AR Path="/5BB27B84/607862D9" Ref="C?"  Part="1" 
AR Path="/5BB27B24/607862D9" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/607862D9" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/607862D9" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/607862D9" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/607862D9" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/607862D9" Ref="C?"  Part="1" 
AR Path="/5D779AE1/607862D9" Ref="C?"  Part="1" 
AR Path="/5CB7718D/607862D9" Ref="C?"  Part="1" 
AR Path="/5E0DC082/607862D9" Ref="C?"  Part="1" 
AR Path="/5E0F263A/607862D9" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/607862D9" Ref="C?"  Part="1" 
AR Path="/5F581B64/607862D9" Ref="C405"  Part="1" 
F 0 "C405" H 4575 3070 50  0000 L CNN
F 1 "0.1uF" H 4575 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4588 2820 50  0001 C CNN
F 3 "" H 4575 3070 50  0001 C CNN
F 4 "0402" H 4400 3070 50  0000 R CNN "display_footprint"
F 5 "50V" H 4400 2970 50  0000 R CNN "Voltage"
F 6 "X7R" H 4400 2870 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 4550 2970 50  0001 C CNN "Digi-Key PN"
	1    4550 2970
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607862DA
P 4550 3120
AR Path="/5CB7718D/607862DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862DA" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862DA" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862DA" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862DA" Ref="#PWR0413"  Part="1" 
F 0 "#PWR0413" H 4550 2870 50  0001 C CNN
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
U 1 1 607862C0
P 5390 5120
AR Path="/5CB7718D/607862C0" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862C0" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862C0" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862C0" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862C0" Ref="#PWR0417"  Part="1" 
F 0 "#PWR0417" H 5390 4870 50  0001 C CNN
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
AR Path="/5F581B64/5C28E698" Ref="#PWR0414"  Part="1" 
F 0 "#PWR0414" H 4810 4670 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5C294444
P 4190 4920
AR Path="/5CB7718D/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5C294444" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5C294444" Ref="#PWR0412"  Part="1" 
F 0 "#PWR0412" H 4190 4670 50  0001 C CNN
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
U 1 1 607862DF
P 8710 4720
AR Path="/5BB27BA3/607862DF" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/607862DF" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/607862DF" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/607862DF" Ref="R?"  Part="1" 
AR Path="/5D779AE1/607862DF" Ref="R?"  Part="1" 
AR Path="/5CB7718D/607862DF" Ref="R?"  Part="1" 
AR Path="/5E0DC082/607862DF" Ref="R?"  Part="1" 
AR Path="/5E0F263A/607862DF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/607862DF" Ref="R?"  Part="1" 
AR Path="/5F581B64/607862DF" Ref="R413"  Part="1" 
F 0 "R413" H 8630 4720 50  0000 R CNN
F 1 "180k" V 8710 4720 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8710 4720 50  0001 C CNN
F 3 "" H 8710 4720 50  0001 C CNN
F 4 "0402" H 8810 4800 50  0000 L CNN "display_footprint"
F 5 "1%" H 8810 4720 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8820 4640 50  0000 L CNN "Wattage"
F 7 "DNP" H 8530 4800 50  0000 C CNN "Configuration"
F 8 "RMCF0402FT180KCT-ND" H 8710 4720 50  0001 C CNN "Digi-Key PN"
	1    8710 4720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607862E0
P 8710 4870
AR Path="/5CB7718D/607862E0" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862E0" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862E0" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862E0" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862E0" Ref="#PWR0422"  Part="1" 
F 0 "#PWR0422" H 8710 4620 50  0001 C CNN
F 1 "GND" H 8710 4720 50  0000 C CNN
F 2 "" H 8710 4870 50  0001 C CNN
F 3 "" H 8710 4870 50  0001 C CNN
	1    8710 4870
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 607862C3
P 7410 3430
AR Path="/5CB7718D/607862C3" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862C3" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862C3" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862C3" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862C3" Ref="#PWR0420"  Part="1" 
F 0 "#PWR0420" H 7410 3180 50  0001 C CNN
F 1 "GND" H 7410 3280 50  0000 C CNN
F 2 "" H 7410 3430 50  0001 C CNN
F 3 "" H 7410 3430 50  0001 C CNN
	1    7410 3430
	1    0    0    -1  
$EndComp
Wire Wire Line
	7410 3130 7410 3040
$Comp
L Custom_Library:TP TP?
U 1 1 607862C4
P 8710 2960
AR Path="/5C1D5CD8/607862C4" Ref="TP?"  Part="1" 
AR Path="/5C1D5C9E/607862C4" Ref="TP?"  Part="1" 
AR Path="/5C1E3A08/607862C4" Ref="TP?"  Part="1" 
AR Path="/5D779AE1/607862C4" Ref="TP?"  Part="1" 
AR Path="/5CB7718D/607862C4" Ref="TP?"  Part="1" 
AR Path="/5E0DC082/607862C4" Ref="TP?"  Part="1" 
AR Path="/5E0F263A/607862C4" Ref="TP?"  Part="1" 
AR Path="/5EAE2D8A/607862C4" Ref="TP?"  Part="1" 
AR Path="/5F581B64/607862C4" Ref="TP401"  Part="1" 
F 0 "TP401" H 8710 3110 50  0000 C CNN
F 1 "TP" H 8710 3110 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 8710 2960 60  0001 C CNN
F 3 "" H 8710 2960 60  0000 C CNN
	1    8710 2960
	1    0    0    -1  
$EndComp
Wire Wire Line
	5890 3040 6180 3040
$Comp
L Custom_Library:R_Custom R?
U 1 1 607862C6
P 8010 3040
AR Path="/5CB6F1ED/607862C6" Ref="R?"  Part="1" 
AR Path="/5CB7718D/607862C6" Ref="R?"  Part="1" 
AR Path="/5E0DC082/607862C6" Ref="R?"  Part="1" 
AR Path="/5E0F263A/607862C6" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/607862C6" Ref="R?"  Part="1" 
AR Path="/5F581B64/607862C6" Ref="R407"  Part="1" 
F 0 "R407" V 7910 3040 50  0000 C CNN
F 1 "0.02" V 8010 3040 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 8010 3040 50  0001 C CNN
F 3 "" H 8010 3040 50  0001 C CNN
F 4 "P16010CT-ND" H 8310 3440 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 8110 3040 50  0000 C CNN "display_footprint"
F 6 "1%" V 8210 3040 50  0000 C CNN "Tolerance"
F 7 "1W" V 8310 3040 50  0000 C CNN "Wattage"
F 8 "Telemetry" V 7840 3040 50  0000 C CNN "Configuration"
	1    8010 3040
	0    -1   -1   0   
$EndComp
Text GLabel 7780 2560 1    50   UnSpc ~ 0
POS3P3_SNS+
Text GLabel 8240 2560 1    50   UnSpc ~ 0
POS3P3_SNS-
Wire Wire Line
	8710 3040 8710 3660
Wire Wire Line
	8710 2960 8710 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5E08F4A3
P 5890 3440
AR Path="/5CB7718D/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E08F4A3" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E08F4A3" Ref="#PWR0418"  Part="1" 
F 0 "#PWR0418" H 5890 3290 50  0001 C CNN
F 1 "+3.3V" V 5890 3580 50  0000 L CNN
F 2 "" H 5890 3440 50  0001 C CNN
F 3 "" H 5890 3440 50  0001 C CNN
	1    5890 3440
	0    1    1    0   
$EndComp
Connection ~ 8710 3040
Wire Wire Line
	9160 3040 8710 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5DEA6B71
P 9160 2960
AR Path="/5CB7718D/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5DEA6B71" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5DEA6B71" Ref="#PWR0423"  Part="1" 
F 0 "#PWR0423" H 9160 2810 50  0001 C CNN
F 1 "+3.3V" H 9160 3100 50  0000 C CNN
F 2 "" H 9160 2960 50  0001 C CNN
F 3 "" H 9160 2960 50  0001 C CNN
	1    9160 2960
	1    0    0    -1  
$EndComp
Wire Wire Line
	9160 2960 9160 3040
Text GLabel 4890 3440 0    50   Input ~ 0
POS3P3_RUN
$Comp
L Custom_Library:R_Custom R?
U 1 1 607862F3
P 7780 2710
AR Path="/5CB0BC26/607862F3" Ref="R?"  Part="1" 
AR Path="/5E1352F5/607862F3" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/607862F3" Ref="R?"  Part="1" 
AR Path="/5CB7718D/607862F3" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/607862F3" Ref="R?"  Part="1" 
AR Path="/5F581B64/607862F3" Ref="R406"  Part="1" 
F 0 "R406" V 7680 2710 50  0000 C CNN
F 1 "10" V 7780 2710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7780 2710 50  0001 C CNN
F 3 "" H 7780 2710 50  0001 C CNN
F 4 "0402" V 7880 2710 50  0001 C CNN "display_footprint"
F 5 "1%" V 7980 2710 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8080 2710 50  0001 C CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 7780 2710 50  0001 C CNN "Digi-Key PN"
F 8 "Telemetry" V 7880 2710 50  0000 C CNN "Configuration"
	1    7780 2710
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E2B5762
P 8240 2710
AR Path="/5CB0BC26/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5E2B5762" Ref="R?"  Part="1" 
AR Path="/5F581B64/5E2B5762" Ref="R411"  Part="1" 
F 0 "R411" V 8140 2710 50  0000 C CNN
F 1 "10" V 8240 2710 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8240 2710 50  0001 C CNN
F 3 "" H 8240 2710 50  0001 C CNN
F 4 "0402" V 8340 2710 50  0001 C CNN "display_footprint"
F 5 "1%" V 8440 2710 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8540 2710 50  0001 C CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 8240 2710 50  0001 C CNN "Digi-Key PN"
F 8 "Telemetry" V 8340 2710 50  0000 C CNN "Configuration"
	1    8240 2710
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7780 2860 7780 3040
Wire Wire Line
	7780 3040 7860 3040
Wire Wire Line
	8240 2860 8240 3040
$Comp
L power:+3.3V #PWR?
U 1 1 5E434D63
P 9550 2960
AR Path="/5CB7718D/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5E434D63" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5E434D63" Ref="#PWR0424"  Part="1" 
F 0 "#PWR0424" H 9550 2810 50  0001 C CNN
F 1 "+3.3V" H 9550 3100 50  0000 C CNN
F 2 "" H 9550 2960 50  0001 C CNN
F 3 "" H 9550 2960 50  0001 C CNN
	1    9550 2960
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0401
U 1 1 5E4352D6
P 9550 2960
F 0 "#FLG0401" H 9550 3035 50  0001 C CNN
F 1 "PWR_FLAG" H 9550 3110 50  0000 C CNN
F 2 "" H 9550 2960 50  0001 C CNN
F 3 "~" H 9550 2960 50  0001 C CNN
	1    9550 2960
	1    0    0    -1  
$EndComp
Text GLabel 1990 6470 2    50   Output ~ 0
POS3P3_RUN
Text GLabel 1690 6470 0    50   Input ~ 0
POS12_PGOOD
$Comp
L Custom_Library:TPS62150 U402
U 1 1 5EB8DB31
P 5390 3740
F 0 "U402" H 5390 4990 50  0000 C CNN
F 1 "TPS62152" H 5390 3740 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 5390 3740 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps62150.pdf?&ts=1589125931316" H 5390 3740 50  0001 C CNN
F 4 "296-43621-1-ND" H 5390 3740 50  0001 C CNN "Digi-Key PN"
	1    5390 3740
	1    0    0    -1  
$EndComp
Wire Wire Line
	8710 3960 8710 4240
Wire Wire Line
	7780 3040 7410 3040
Connection ~ 7780 3040
Connection ~ 7410 3040
Connection ~ 8710 4240
Wire Wire Line
	8710 4240 8710 4570
Wire Wire Line
	2770 2570 2770 2640
Connection ~ 2770 2640
$Comp
L power:+3.3V #PWR?
U 1 1 607862C5
P 2770 3660
AR Path="/5CB7718D/607862C5" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862C5" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862C5" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862C5" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862C5" Ref="#PWR0408"  Part="1" 
F 0 "#PWR0408" H 2770 3510 50  0001 C CNN
F 1 "+3.3V" H 2770 3800 50  0000 C CNN
F 2 "" H 2770 3660 50  0001 C CNN
F 3 "" H 2770 3660 50  0001 C CNN
	1    2770 3660
	1    0    0    -1  
$EndComp
Wire Wire Line
	2690 4240 2770 4240
Text GLabel 1580 4290 0    50   Output ~ 0
POS3P3_PGOOD
Wire Wire Line
	2770 4240 2770 3960
$Comp
L Custom_Library:R_Custom R?
U 1 1 607862DD
P 2770 3810
AR Path="/5BB27BA3/607862DD" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/607862DD" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/607862DD" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/607862DD" Ref="R?"  Part="1" 
AR Path="/5D779AE1/607862DD" Ref="R?"  Part="1" 
AR Path="/5CB7718D/607862DD" Ref="R?"  Part="1" 
AR Path="/5E0DC082/607862DD" Ref="R?"  Part="1" 
AR Path="/5E0F263A/607862DD" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/607862DD" Ref="R?"  Part="1" 
AR Path="/5F581B64/607862DD" Ref="R403"  Part="1" 
F 0 "R403" H 2690 3810 50  0000 R CNN
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
U 1 1 607862DC
P 2770 2570
AR Path="/5CB7718D/607862DC" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/607862DC" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/607862DC" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/607862DC" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/607862DC" Ref="#PWR0406"  Part="1" 
F 0 "#PWR0406" H 2770 2420 50  0001 C CNN
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
AR Path="/5F581B64/5E2AA970" Ref="#PWR0407"  Part="1" 
F 0 "#PWR0407" H 2770 2870 50  0001 C CNN
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
AR Path="/5F581B64/5C2703C2" Ref="C402"  Part="1" 
F 0 "C402" H 2795 3070 50  0000 L CNN
F 1 "10uF" H 2795 2870 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2808 2820 50  0001 C CNN
F 3 "" H 2795 3070 50  0001 C CNN
F 4 "1206" H 2620 3070 50  0000 R CNN "display_footprint"
F 5 "25V" H 2620 2970 50  0000 R CNN "Voltage"
F 6 "X5R" H 2620 2870 50  0000 R CNN "Dielectric"
F 7 "399-8153-1-ND" H 3195 3470 60  0001 C CNN "Digi-Key PN"
	1    2770 2970
	1    0    0    -1  
$EndComp
Connection ~ 4550 2640
Wire Wire Line
	2770 2640 4550 2640
Connection ~ 2770 4240
Wire Wire Line
	4890 4240 2770 4240
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE28635
P 1840 6470
AR Path="/5EAE2EF2/5FE28635" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/5FE28635" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FE28635" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FE28635" Ref="R402"  Part="1" 
F 0 "R402" V 1740 6470 50  0000 C CNN
F 1 "0" V 1840 6470 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1840 6470 50  0001 C CNN
F 3 "" H 1840 6470 50  0001 C CNN
F 4 "0402" V 1940 6470 50  0000 C CNN "display_footprint"
F 5 "1%" V 2040 6470 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 2140 6470 50  0000 C CNN "Wattage"
F 7 "RMCF0402ZT0R00CT-ND" H 1840 6470 50  0001 C CNN "Digi-Key PN"
	1    1840 6470
	0    -1   1    0   
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
AR Path="/5F581B64/5E2AA97D" Ref="C404"  Part="1" 
F 0 "C404" H 4215 4870 50  0000 L CNN
F 1 "10nF" H 4215 4670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4228 4620 50  0001 C CNN
F 3 "" H 4215 4870 50  0001 C CNN
F 4 "0402" H 4040 4870 50  0000 R CNN "display_footprint"
F 5 "50V" H 4040 4770 50  0000 R CNN "Voltage"
F 6 "X7R" H 4040 4670 50  0000 R CNN "Dielectric"
F 7 "399-3066-1-ND" H 4190 4770 50  0001 C CNN "Digi-Key PN"
	1    4190 4770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_AND U401
U 1 1 60786338
P 2390 4290
F 0 "U401" H 2450 4440 50  0000 L CNN
F 1 "74LVC1G97" H 2580 4530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2440 4290 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 2440 4290 50  0001 C CNN
F 4 "1727-1772-1-ND" H 2390 4290 50  0001 C CNN "Digi-Key PN"
	1    2390 4290
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE85653
P 1820 4520
AR Path="/5BB27BA3/5FE85653" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5FE85653" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5FE85653" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5FE85653" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5FE85653" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5FE85653" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5FE85653" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5FE85653" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FE85653" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FE85653" Ref="R401"  Part="1" 
F 0 "R401" H 1740 4520 50  0000 R CNN
F 1 "10k" V 1820 4520 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1820 4520 50  0001 C CNN
F 3 "" H 1820 4520 50  0001 C CNN
F 4 "0402" H 1920 4600 50  0000 L CNN "display_footprint"
F 5 "1%" H 1920 4520 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 1930 4440 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 2120 4920 60  0001 C CNN "Digi-Key PN"
	1    1820 4520
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE866F2
P 2390 4190
AR Path="/5CB7718D/5FE866F2" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE866F2" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE866F2" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE866F2" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE866F2" Ref="#PWR0402"  Part="1" 
F 0 "#PWR0402" H 2390 4040 50  0001 C CNN
F 1 "+3.3V" H 2390 4330 50  0000 C CNN
F 2 "" H 2390 4190 50  0001 C CNN
F 3 "" H 2390 4190 50  0001 C CNN
	1    2390 4190
	1    0    0    -1  
$EndComp
Wire Wire Line
	2140 4290 1820 4290
Wire Wire Line
	1820 4290 1820 4370
Wire Wire Line
	1820 4290 1580 4290
Connection ~ 1820 4290
$Comp
L power:GND #PWR?
U 1 1 6078633B
P 2390 4390
AR Path="/5CB7718D/6078633B" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/6078633B" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/6078633B" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/6078633B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/6078633B" Ref="#PWR0403"  Part="1" 
F 0 "#PWR0403" H 2390 4140 50  0001 C CNN
F 1 "GND" H 2390 4240 50  0000 C CNN
F 2 "" H 2390 4390 50  0001 C CNN
F 3 "" H 2390 4390 50  0001 C CNN
	1    2390 4390
	1    0    0    -1  
$EndComp
Text GLabel 2690 4340 2    50   Input ~ 0
POS3P3_RUN
$Comp
L power:GND #PWR?
U 1 1 6078633C
P 1820 4670
AR Path="/5CB7718D/6078633C" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/6078633C" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/6078633C" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/6078633C" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/6078633C" Ref="#PWR0401"  Part="1" 
F 0 "#PWR0401" H 1820 4420 50  0001 C CNN
F 1 "GND" H 1820 4520 50  0000 C CNN
F 2 "" H 1820 4670 50  0001 C CNN
F 3 "" H 1820 4670 50  0001 C CNN
	1    1820 4670
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FE89983
P 2640 4860
AR Path="/5BB27BA3/5FE89983" Ref="C?"  Part="1" 
AR Path="/5BB27B84/5FE89983" Ref="C?"  Part="1" 
AR Path="/5BB27B24/5FE89983" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/5FE89983" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/5FE89983" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/5FE89983" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5FE89983" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5FE89983" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5FE89983" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5FE89983" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FE89983" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5FE89983" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5FE89983" Ref="C?"  Part="1" 
AR Path="/5F581B64/5FE89983" Ref="C401"  Part="1" 
F 0 "C401" H 2665 4960 50  0000 L CNN
F 1 "0.1uF" H 2665 4760 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2678 4710 50  0001 C CNN
F 3 "" H 2665 4960 50  0001 C CNN
F 4 "0402" H 2490 4960 50  0000 R CNN "display_footprint"
F 5 "50V" H 2490 4860 50  0000 R CNN "Voltage"
F 6 "X7R" H 2490 4760 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 2640 4860 50  0001 C CNN "Digi-Key PN"
	1    2640 4860
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6078633E
P 2640 5010
AR Path="/5CB7718D/6078633E" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/6078633E" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/6078633E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/6078633E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/6078633E" Ref="#PWR0405"  Part="1" 
F 0 "#PWR0405" H 2640 4760 50  0001 C CNN
F 1 "GND" H 2640 4860 50  0000 C CNN
F 2 "" H 2640 5010 50  0001 C CNN
F 3 "" H 2640 5010 50  0001 C CNN
	1    2640 5010
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE89E72
P 2640 4710
AR Path="/5CB7718D/5FE89E72" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE89E72" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE89E72" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE89E72" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE89E72" Ref="#PWR0404"  Part="1" 
F 0 "#PWR0404" H 2640 4560 50  0001 C CNN
F 1 "+3.3V" H 2640 4850 50  0000 C CNN
F 2 "" H 2640 4710 50  0001 C CNN
F 3 "" H 2640 4710 50  0001 C CNN
	1    2640 4710
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C2959E0
P 8710 3810
AR Path="/5BB27BA3/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5C2959E0" Ref="R?"  Part="1" 
AR Path="/5F581B64/5C2959E0" Ref="R412"  Part="1" 
F 0 "R412" H 8630 3810 50  0000 R CNN
F 1 "562k" V 8710 3810 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8710 3810 50  0001 C CNN
F 3 "" H 8710 3810 50  0001 C CNN
F 4 "0402" H 8810 3890 50  0000 L CNN "display_footprint"
F 5 "1%" H 8810 3810 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8820 3730 50  0000 L CNN "Wattage"
F 7 "DNP" H 8530 3890 50  0000 C CNN "Configuration"
F 8 "RMCF0402FT562KCT-ND" H 8710 3810 50  0001 C CNN "Digi-Key PN"
	1    8710 3810
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60786340
P 7410 4720
AR Path="/5EAE2EF2/60786340" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/60786340" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60786340" Ref="R?"  Part="1" 
AR Path="/5F581B64/60786340" Ref="R405"  Part="1" 
F 0 "R405" H 7510 4720 50  0000 L CNN
F 1 "0" V 7400 4740 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 7410 4720 50  0001 C CNN
F 3 "" H 7410 4720 50  0001 C CNN
F 4 "0402" H 7310 4810 50  0000 R CNN "display_footprint"
F 5 "1%" H 7310 4720 50  0000 R CNN "Tolerance"
F 6 "1/16W" H 7310 4620 50  0000 R CNN "Wattage"
F 7 "RMCF0402ZT0R00CT-ND" H 7410 4720 50  0001 C CNN "Digi-Key PN"
	1    7410 4720
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60786341
P 7410 4870
AR Path="/5CB7718D/60786341" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/60786341" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/60786341" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/60786341" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/60786341" Ref="#PWR0421"  Part="1" 
F 0 "#PWR0421" H 7410 4620 50  0001 C CNN
F 1 "GND" H 7410 4720 50  0000 C CNN
F 2 "" H 7410 4870 50  0001 C CNN
F 3 "" H 7410 4870 50  0001 C CNN
	1    7410 4870
	1    0    0    -1  
$EndComp
Wire Wire Line
	7410 4570 7410 4240
Connection ~ 7410 4240
Wire Wire Line
	7410 4240 8710 4240
Text Notes 6730 4120 0    50   ~ 0
Fixed VOUT = +3.3V
$Comp
L Custom_Library:R_Custom R?
U 1 1 60786335
P 8010 3450
AR Path="/5EAE2EF2/60786335" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/60786335" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60786335" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/60786335" Ref="R?"  Part="1" 
AR Path="/5F581B64/60786335" Ref="R408"  Part="1" 
F 0 "R408" V 7910 3450 50  0000 C CNN
F 1 "0" V 8010 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8010 3450 50  0001 C CNN
F 3 "" H 8010 3450 50  0001 C CNN
F 4 "0402" V 8110 3450 50  0001 C CNN "display_footprint"
F 5 "1%" V 8210 3450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8310 3450 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 8110 3450 50  0000 C CNN "Configuration"
F 8 "RMCF0402ZT0R00CT-ND" H 8010 3450 50  0001 C CNN "Digi-Key PN"
	1    8010 3450
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60786336
P 8010 3750
AR Path="/5EAE2EF2/60786336" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/60786336" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60786336" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/60786336" Ref="R?"  Part="1" 
AR Path="/5F581B64/60786336" Ref="R409"  Part="1" 
F 0 "R409" V 7910 3750 50  0000 C CNN
F 1 "0" V 8010 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8010 3750 50  0001 C CNN
F 3 "" H 8010 3750 50  0001 C CNN
F 4 "0402" V 8110 3750 50  0001 C CNN "display_footprint"
F 5 "1%" V 8210 3750 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8310 3750 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 8110 3750 50  0000 C CNN "Configuration"
F 8 "RMCF0402ZT0R00CT-ND" H 8010 3750 50  0001 C CNN "Digi-Key PN"
	1    8010 3750
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60786337
P 8010 4050
AR Path="/5EAE2EF2/60786337" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/60786337" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60786337" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/60786337" Ref="R?"  Part="1" 
AR Path="/5F581B64/60786337" Ref="R410"  Part="1" 
F 0 "R410" V 7910 4050 50  0000 C CNN
F 1 "0" V 8010 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8010 4050 50  0001 C CNN
F 3 "" H 8010 4050 50  0001 C CNN
F 4 "0402" V 8110 4050 50  0001 C CNN "display_footprint"
F 5 "1%" V 8210 4050 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8310 4050 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 8110 4050 50  0000 C CNN "Configuration"
F 8 "RMCF0402ZT0R00CT-ND" H 8010 4050 50  0001 C CNN "Digi-Key PN"
	1    8010 4050
	0    -1   1    0   
$EndComp
Wire Wire Line
	8160 4050 8240 4050
Wire Wire Line
	8240 4050 8240 3750
Wire Wire Line
	7780 4050 7860 4050
Wire Wire Line
	7860 3750 7780 3750
Connection ~ 7780 3750
Wire Wire Line
	7780 3750 7780 4050
Wire Wire Line
	8160 3750 8240 3750
Connection ~ 8240 3750
Wire Wire Line
	8240 3750 8240 3450
Wire Wire Line
	8160 3450 8240 3450
Wire Wire Line
	7860 3450 7780 3450
Connection ~ 7780 3450
Wire Wire Line
	7780 3450 7780 3750
Wire Wire Line
	7780 3040 7780 3450
Wire Wire Line
	6480 3040 6820 3040
Wire Wire Line
	5890 4240 7410 4240
$Comp
L Custom_Library:C_Custom C?
U 1 1 60786349
P 7410 3280
AR Path="/5CB7718D/60786349" Ref="C?"  Part="1" 
AR Path="/5E0DC082/60786349" Ref="C?"  Part="1" 
AR Path="/5E0F263A/60786349" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/60786349" Ref="C?"  Part="1" 
AR Path="/5F581B64/60786349" Ref="C407"  Part="1" 
F 0 "C407" H 7435 3380 50  0000 L CNN
F 1 "10uF" H 7435 3180 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 7448 3130 50  0001 C CNN
F 3 "" H 7435 3380 50  0001 C CNN
F 4 "1206" H 7260 3380 50  0000 R CNN "display_footprint"
F 5 "25V" H 7260 3280 50  0000 R CNN "Voltage"
F 6 "X5R" H 7260 3180 50  0000 R CNN "Dielectric"
F 7 "399-8153-1-ND" H 7835 3780 60  0001 C CNN "Digi-Key PN"
	1    7410 3280
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FEA02E3
P 6820 3280
AR Path="/5CB7718D/5FEA02E3" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FEA02E3" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5FEA02E3" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5FEA02E3" Ref="C?"  Part="1" 
AR Path="/5F581B64/5FEA02E3" Ref="C406"  Part="1" 
F 0 "C406" H 6845 3380 50  0000 L CNN
F 1 "10uF" H 6845 3180 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 6858 3130 50  0001 C CNN
F 3 "" H 6845 3380 50  0001 C CNN
F 4 "1206" H 6670 3380 50  0000 R CNN "display_footprint"
F 5 "25V" H 6670 3280 50  0000 R CNN "Voltage"
F 6 "X5R" H 6670 3180 50  0000 R CNN "Dielectric"
F 7 "399-8153-1-ND" H 7245 3780 60  0001 C CNN "Digi-Key PN"
	1    6820 3280
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FEA0AC9
P 6820 3430
AR Path="/5CB7718D/5FEA0AC9" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FEA0AC9" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FEA0AC9" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FEA0AC9" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FEA0AC9" Ref="#PWR0419"  Part="1" 
F 0 "#PWR0419" H 6820 3180 50  0001 C CNN
F 1 "GND" H 6820 3280 50  0000 C CNN
F 2 "" H 6820 3430 50  0001 C CNN
F 3 "" H 6820 3430 50  0001 C CNN
	1    6820 3430
	1    0    0    -1  
$EndComp
Wire Wire Line
	6820 3130 6820 3040
Connection ~ 6820 3040
Wire Wire Line
	6820 3040 7410 3040
Wire Wire Line
	8160 3040 8240 3040
Wire Wire Line
	8240 3040 8240 3450
Connection ~ 8240 3040
Wire Wire Line
	8240 3040 8710 3040
Connection ~ 8240 3450
$Comp
L Custom_Library:ZXMS6004FFTA Q?
U 1 1 605CBAE2
P 4810 7090
AR Path="/5F581BA3/605CBAE2" Ref="Q?"  Part="1" 
AR Path="/5F581B64/605CBAE2" Ref="Q402"  Part="1" 
F 0 "Q402" H 5010 7165 50  0000 L CNN
F 1 "ZXMS6004FFTA" H 5010 7090 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5010 7015 50  0001 L CIN
F 3 "https://www.diodes.com/assets/Datasheets/ZXMS6004FF.pdf" H 4810 7090 50  0001 L CNN
F 4 "ZXMS6004FFCT-ND" H 4810 7090 50  0001 C CNN "Digi-Key PN"
	1    4810 7090
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605CBAE8
P 4910 7290
AR Path="/5F581BA3/605CBAE8" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/605CBAE8" Ref="#PWR0416"  Part="1" 
F 0 "#PWR0416" H 4910 7040 50  0001 C CNN
F 1 "GND" H 4910 7140 50  0000 C CNN
F 2 "" H 4910 7290 50  0001 C CNN
F 3 "" H 4910 7290 50  0001 C CNN
	1    4910 7290
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS214NW Q?
U 1 1 605CBAEF
P 4080 7370
AR Path="/5F581BA3/605CBAEF" Ref="Q?"  Part="1" 
AR Path="/5F581B64/605CBAEF" Ref="Q401"  Part="1" 
F 0 "Q401" H 4280 7445 50  0000 L CNN
F 1 "BSS214NW" H 4280 7370 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 4280 7295 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/Infineon-BSS214NW-DS-v02_02-en.pdf?fileId=db3a30431b3e89eb011b695aebc01bde" H 4080 7370 50  0001 L CNN
F 4 "BSS214NWH6327XTSA1CT-ND" H 4080 7370 50  0001 C CNN "Digi-Key PN"
	1    4080 7370
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605CBAF5
P 4180 7570
AR Path="/5F581BA3/605CBAF5" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/605CBAF5" Ref="#PWR0411"  Part="1" 
F 0 "#PWR0411" H 4180 7320 50  0001 C CNN
F 1 "GND" H 4180 7420 50  0000 C CNN
F 2 "" H 4180 7570 50  0001 C CNN
F 3 "" H 4180 7570 50  0001 C CNN
	1    4180 7570
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 605CBAFF
P 4180 6860
AR Path="/5BB27BA3/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5D779AE1/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5CB7718D/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5E0DC082/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5E0F263A/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/605CBAFF" Ref="R?"  Part="1" 
AR Path="/5F581B64/605CBAFF" Ref="R404"  Part="1" 
AR Path="/5F581BA3/605CBAFF" Ref="R?"  Part="1" 
F 0 "R404" H 4100 6860 50  0000 R CNN
F 1 "10k" V 4180 6860 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4180 6860 50  0001 C CNN
F 3 "" H 4180 6860 50  0001 C CNN
F 4 "0402" H 4280 6940 50  0000 L CNN "display_footprint"
F 5 "1%" H 4280 6860 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4290 6780 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4480 7260 60  0001 C CNN "Digi-Key PN"
	1    4180 6860
	1    0    0    -1  
$EndComp
Wire Wire Line
	4180 7010 4180 7090
Wire Wire Line
	4610 7090 4180 7090
Connection ~ 4180 7090
Wire Wire Line
	4180 7090 4180 7170
$Comp
L power:GND #PWR?
U 1 1 605CBB09
P 3470 7010
AR Path="/5F581BA3/605CBB09" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/605CBB09" Ref="#PWR0410"  Part="1" 
F 0 "#PWR0410" H 3470 6760 50  0001 C CNN
F 1 "GND" H 3470 6860 50  0000 C CNN
F 2 "" H 3470 7010 50  0001 C CNN
F 3 "" H 3470 7010 50  0001 C CNN
	1    3470 7010
	1    0    0    -1  
$EndComp
Wire Wire Line
	4180 6710 4180 6630
Wire Wire Line
	4180 6630 3470 6630
Wire Wire Line
	3470 6630 3470 6710
$Comp
L Diode:BAT48JFILM D?
U 1 1 605CBB13
P 3470 6400
AR Path="/5F581BA3/605CBB13" Ref="D?"  Part="1" 
AR Path="/5F581B64/605CBB13" Ref="D401"  Part="1" 
F 0 "D401" V 3540 6280 50  0000 R CNN
F 1 "BAT48JFILM" V 3440 6280 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 3470 6225 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/bat48.pdf" H 3470 6400 50  0001 C CNN
F 4 "497-5711-1-ND" H 3470 6400 50  0001 C CNN "Digi-Key PN"
	1    3470 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3470 6550 3470 6630
Connection ~ 3470 6630
$Comp
L power:+3.3V #PWR?
U 1 1 605CBB1B
P 3470 6250
AR Path="/5F581BA3/605CBB1B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/605CBB1B" Ref="#PWR0409"  Part="1" 
F 0 "#PWR0409" H 3470 6100 50  0001 C CNN
F 1 "+3.3V" H 3470 6390 50  0000 C CNN
F 2 "" H 3470 6250 50  0001 C CNN
F 3 "" H 3470 6250 50  0001 C CNN
	1    3470 6250
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 605CBB25
P 3470 6860
AR Path="/5CB7718D/605CBB25" Ref="C?"  Part="1" 
AR Path="/5E0DC082/605CBB25" Ref="C?"  Part="1" 
AR Path="/5E0F9110/605CBB25" Ref="C?"  Part="1" 
AR Path="/5A557C58/605CBB25" Ref="C?"  Part="1" 
AR Path="/5CB25152/605CBB25" Ref="C?"  Part="1" 
AR Path="/5E697934/605CBB25" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/605CBB25" Ref="C?"  Part="1" 
AR Path="/5EAE3021/605CBB25" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/605CBB25" Ref="C?"  Part="1" 
AR Path="/5F581B64/605CBB25" Ref="C403"  Part="1" 
AR Path="/5F581BA3/605CBB25" Ref="C?"  Part="1" 
F 0 "C403" H 3495 6960 50  0000 L CNN
F 1 "10uF" H 3495 6760 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3508 6710 50  0001 C CNN
F 3 "" H 3495 6960 50  0001 C CNN
F 4 "0402" H 3320 6960 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3320 6860 50  0000 R CNN "Voltage"
F 6 "X5R" H 3320 6760 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 3470 6860 50  0001 C CNN "Digi-Key PN"
	1    3470 6860
	1    0    0    -1  
$EndComp
Text GLabel 3880 7370 0    50   Input ~ 0
POS3P3_RUN
$Comp
L power:+3.3V #PWR?
U 1 1 605CEE41
P 4910 6890
AR Path="/5F581BA3/605CEE41" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/605CEE41" Ref="#PWR0415"  Part="1" 
F 0 "#PWR0415" H 4910 6740 50  0001 C CNN
F 1 "+3.3V" H 4910 7030 50  0000 C CNN
F 2 "" H 4910 6890 50  0001 C CNN
F 3 "" H 4910 6890 50  0001 C CNN
	1    4910 6890
	1    0    0    -1  
$EndComp
$EndSCHEMATC
