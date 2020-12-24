EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 31 34
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
L power:GND #PWR?
U 1 1 5BB6DBF5
P 5280 3150
AR Path="/5BAAE2B6/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5BB6DBF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5280 2900 50  0001 C CNN
F 1 "GND" H 5280 3000 50  0000 C CNN
F 2 "" H 5280 3150 50  0001 C CNN
F 3 "" H 5280 3150 50  0001 C CNN
	1    5280 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4780 2850 4720 2850
Wire Wire Line
	4720 2850 4720 2750
Wire Wire Line
	4720 2750 4780 2750
$Comp
L power:+5V #PWR?
U 1 1 5BF4791B
P 5280 1550
F 0 "#PWR?" H 5280 1400 50  0001 C CNN
F 1 "+5V" H 5280 1690 50  0000 C CNN
F 2 "" H 5280 1550 50  0001 C CNN
F 3 "" H 5280 1550 50  0001 C CNN
	1    5280 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BB6DC87
P 3100 1440
AR Path="/5BAAE2B6/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5BB6DC87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 1290 50  0001 C CNN
F 1 "+3.3V" H 3100 1580 50  0000 C CNN
F 2 "" H 3100 1440 50  0001 C CNN
F 3 "" H 3100 1440 50  0001 C CNN
	1    3100 1440
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB6DBFF
P 3100 1590
AR Path="/5BAAE2B6/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5F583BF6/5BB6DBFF" Ref="R?"  Part="1" 
F 0 "R?" H 3040 1590 50  0000 R CNN
F 1 "10K" V 3100 1590 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3100 1590 50  0001 C CNN
F 3 "" H 3100 1590 50  0001 C CNN
F 4 "0603" H 3170 1680 50  0001 L CNN "display_footprint"
F 5 "1%" H 3170 1590 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3170 1510 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3400 1990 60  0001 C CNN "Digi-Key PN"
	1    3100 1590
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4720 2750 3100 2750
Wire Wire Line
	3100 2750 3100 1740
Connection ~ 4720 2750
$Comp
L power:GND #PWR?
U 1 1 5CBF014C
P 5280 5550
AR Path="/5BAAE2B6/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5CBF014C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5280 5300 50  0001 C CNN
F 1 "GND" H 5280 5400 50  0000 C CNN
F 2 "" H 5280 5550 50  0001 C CNN
F 3 "" H 5280 5550 50  0001 C CNN
	1    5280 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4780 5250 4720 5250
Wire Wire Line
	4720 5250 4720 5150
Wire Wire Line
	4720 5150 4780 5150
$Comp
L power:+5V #PWR?
U 1 1 5CBF019C
P 5280 3950
F 0 "#PWR?" H 5280 3800 50  0001 C CNN
F 1 "+5V" H 5280 4090 50  0000 C CNN
F 2 "" H 5280 3950 50  0001 C CNN
F 3 "" H 5280 3950 50  0001 C CNN
	1    5280 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CBF01BB
P 3100 3840
AR Path="/5BAAE2B6/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5CBF01BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3100 3690 50  0001 C CNN
F 1 "+3.3V" H 3100 3980 50  0000 C CNN
F 2 "" H 3100 3840 50  0001 C CNN
F 3 "" H 3100 3840 50  0001 C CNN
	1    3100 3840
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5CBF01C9
P 3100 3990
AR Path="/5BAAE2B6/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5F583BF6/5CBF01C9" Ref="R?"  Part="1" 
F 0 "R?" H 3040 3990 50  0000 R CNN
F 1 "10K" V 3100 3990 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3100 3990 50  0001 C CNN
F 3 "" H 3100 3990 50  0001 C CNN
F 4 "0603" H 3170 4080 50  0001 L CNN "display_footprint"
F 5 "1%" H 3170 3990 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3170 3910 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3400 4390 60  0001 C CNN "Digi-Key PN"
	1    3100 3990
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4720 5150 3100 5150
Wire Wire Line
	3100 5150 3100 4140
Connection ~ 4720 5150
Text GLabel 2430 2750 0    40   Input ~ 0
~IO_Level_Shift_Enable
Wire Wire Line
	2430 2750 3100 2750
Connection ~ 3100 2750
Text GLabel 2430 5150 0    40   Input ~ 0
~IO_Level_Shift_Enable
Wire Wire Line
	2430 5150 3100 5150
Connection ~ 3100 5150
$Comp
L Custom_Library:74VHC541 U?
U 1 1 5E1A8051
P 5280 2350
F 0 "U?" H 4980 3000 50  0000 C CNN
F 1 "74VHC541" H 4980 1700 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-20-1EP_2.5x4.5mm_P0.5mm_EP1x2.9mm" H 5280 2350 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74VHC_VHCT541.pdf" H 5280 2350 50  0001 C CNN
F 4 "1727-7068-1-ND" H 5280 2350 50  0001 C CNN "Digi-Key PN"
	1    5280 2350
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74VHC541 U?
U 1 1 5E1A88E3
P 5280 4750
F 0 "U?" H 4980 5400 50  0000 C CNN
F 1 "74VHC541" H 4980 4100 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-20-1EP_2.5x4.5mm_P0.5mm_EP1x2.9mm" H 5280 4750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74VHC_VHCT541.pdf" H 5280 4750 50  0001 C CNN
F 4 "1727-7068-1-ND" H 5280 4750 50  0001 C CNN "Digi-Key PN"
	1    5280 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack08 RN?
U 1 1 5E1B6674
P 3920 3150
F 0 "RN?" H 4310 3060 50  0000 L CNN
F 1 "10k" H 4310 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 4395 3150 50  0001 C CNN
F 3 "~" H 3920 3150 50  0001 C CNN
F 4 "Y1103CT-ND" H 3920 3150 50  0001 C CNN "Digi-Key PN"
	1    3920 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3520 2950 3520 1850
Wire Wire Line
	3520 1850 4780 1850
Wire Wire Line
	3620 2950 3620 1950
Wire Wire Line
	3620 1950 4780 1950
Wire Wire Line
	3720 2950 3720 2050
Wire Wire Line
	3720 2050 4780 2050
Wire Wire Line
	3820 2950 3820 2150
Wire Wire Line
	3820 2150 4780 2150
Wire Wire Line
	3920 2950 3920 2250
Wire Wire Line
	3920 2250 4780 2250
Wire Wire Line
	4020 2950 4020 2350
Wire Wire Line
	4020 2350 4780 2350
Wire Wire Line
	4120 2950 4120 2450
Wire Wire Line
	4120 2450 4780 2450
Wire Wire Line
	4220 2950 4220 2550
Wire Wire Line
	4220 2550 4780 2550
$Comp
L power:GND #PWR?
U 1 1 5E1CF451
P 3870 3430
AR Path="/5BAAE2B6/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E1CF451" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3870 3180 50  0001 C CNN
F 1 "GND" H 3870 3280 50  0000 C CNN
F 2 "" H 3870 3430 50  0001 C CNN
F 3 "" H 3870 3430 50  0001 C CNN
	1    3870 3430
	1    0    0    -1  
$EndComp
Wire Wire Line
	3870 3430 3870 3390
Wire Wire Line
	3870 3390 3820 3390
Wire Wire Line
	3520 3390 3520 3350
Wire Wire Line
	3870 3390 3920 3390
Wire Wire Line
	4220 3390 4220 3350
Connection ~ 3870 3390
Wire Wire Line
	4120 3350 4120 3390
Connection ~ 4120 3390
Wire Wire Line
	4120 3390 4220 3390
Wire Wire Line
	4020 3350 4020 3390
Connection ~ 4020 3390
Wire Wire Line
	4020 3390 4120 3390
Wire Wire Line
	3920 3350 3920 3390
Connection ~ 3920 3390
Wire Wire Line
	3920 3390 4020 3390
Wire Wire Line
	3820 3350 3820 3390
Connection ~ 3820 3390
Wire Wire Line
	3820 3390 3720 3390
Wire Wire Line
	3720 3350 3720 3390
Connection ~ 3720 3390
Wire Wire Line
	3720 3390 3620 3390
Wire Wire Line
	3620 3350 3620 3390
Connection ~ 3620 3390
Wire Wire Line
	3620 3390 3520 3390
Wire Wire Line
	2730 4650 3920 4650
Wire Wire Line
	2730 4550 3820 4550
Wire Wire Line
	2730 4450 3720 4450
Wire Wire Line
	2730 4350 3620 4350
Wire Wire Line
	2730 4250 3520 4250
Wire Wire Line
	2730 4750 4020 4750
Wire Wire Line
	2730 4950 4220 4950
Wire Wire Line
	2730 4850 4120 4850
$Comp
L Device:R_Pack08 RN?
U 1 1 5E1EC35D
P 3920 5550
F 0 "RN?" H 4310 5460 50  0000 L CNN
F 1 "10k" H 4310 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 4395 5550 50  0001 C CNN
F 3 "~" H 3920 5550 50  0001 C CNN
F 4 "Y1103CT-ND" H 3920 5550 50  0001 C CNN "Digi-Key PN"
	1    3920 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3520 5350 3520 4250
Wire Wire Line
	3620 5350 3620 4350
Wire Wire Line
	3720 5350 3720 4450
Wire Wire Line
	3820 5350 3820 4550
Wire Wire Line
	3920 5350 3920 4650
Wire Wire Line
	4020 5350 4020 4750
Wire Wire Line
	4120 5350 4120 4850
Wire Wire Line
	4220 5350 4220 4950
$Comp
L power:GND #PWR?
U 1 1 5E1EC36B
P 3870 5830
AR Path="/5BAAE2B6/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E1EC36B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3870 5580 50  0001 C CNN
F 1 "GND" H 3870 5680 50  0000 C CNN
F 2 "" H 3870 5830 50  0001 C CNN
F 3 "" H 3870 5830 50  0001 C CNN
	1    3870 5830
	1    0    0    -1  
$EndComp
Wire Wire Line
	3870 5830 3870 5790
Wire Wire Line
	3870 5790 3820 5790
Wire Wire Line
	3520 5790 3520 5750
Wire Wire Line
	3870 5790 3920 5790
Wire Wire Line
	4220 5790 4220 5750
Connection ~ 3870 5790
Wire Wire Line
	4120 5750 4120 5790
Connection ~ 4120 5790
Wire Wire Line
	4120 5790 4220 5790
Wire Wire Line
	4020 5750 4020 5790
Connection ~ 4020 5790
Wire Wire Line
	4020 5790 4120 5790
Wire Wire Line
	3920 5750 3920 5790
Connection ~ 3920 5790
Wire Wire Line
	3920 5790 4020 5790
Wire Wire Line
	3820 5750 3820 5790
Connection ~ 3820 5790
Wire Wire Line
	3820 5790 3720 5790
Wire Wire Line
	3720 5750 3720 5790
Connection ~ 3720 5790
Wire Wire Line
	3720 5790 3620 5790
Wire Wire Line
	3620 5750 3620 5790
Connection ~ 3620 5790
Wire Wire Line
	3620 5790 3520 5790
Connection ~ 3520 4250
Wire Wire Line
	3520 4250 4780 4250
Connection ~ 3620 4350
Wire Wire Line
	3620 4350 4780 4350
Connection ~ 3720 4450
Wire Wire Line
	3720 4450 4780 4450
Connection ~ 3820 4550
Wire Wire Line
	3820 4550 4780 4550
Connection ~ 3920 4650
Wire Wire Line
	3920 4650 4780 4650
Connection ~ 4020 4750
Wire Wire Line
	4020 4750 4780 4750
Connection ~ 4120 4850
Wire Wire Line
	4120 4850 4780 4850
Connection ~ 4220 4950
Wire Wire Line
	4220 4950 4780 4950
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E51B189
P 5660 5890
AR Path="/5BAAE1F3/5E51B189" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5E51B189" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB8A16A/5E51B189" Ref="C?"  Part="1" 
AR Path="/5F583BF6/5E51B189" Ref="C?"  Part="1" 
F 0 "C?" H 5685 5990 50  0000 L CNN
F 1 "0.1uF" H 5685 5790 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5698 5740 50  0001 C CNN
F 3 "" H 5685 5990 50  0001 C CNN
F 4 "311-1344-1-ND" H 6085 6390 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 5510 5990 50  0000 R CNN "display_footprint"
F 6 "50V" H 5510 5890 50  0000 R CNN "Voltage"
F 7 "X7R" H 5510 5790 50  0000 R CNN "Dielectric"
	1    5660 5890
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E51B1A1
P 5660 6040
AR Path="/5CB7A8BC/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E51B1A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5660 5790 50  0001 C CNN
F 1 "GND" H 5660 5890 50  0000 C CNN
F 2 "" H 5660 6040 50  0001 C CNN
F 3 "" H 5660 6040 50  0001 C CNN
	1    5660 6040
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5234B3
P 5660 5740
F 0 "#PWR?" H 5660 5590 50  0001 C CNN
F 1 "+5V" H 5660 5880 50  0000 C CNN
F 2 "" H 5660 5740 50  0001 C CNN
F 3 "" H 5660 5740 50  0001 C CNN
	1    5660 5740
	1    0    0    -1  
$EndComp
Connection ~ 4020 2350
Wire Wire Line
	2730 2350 4020 2350
Connection ~ 3520 1850
Wire Wire Line
	2730 1850 3520 1850
Connection ~ 3620 1950
Wire Wire Line
	2730 1950 3620 1950
Connection ~ 3720 2050
Wire Wire Line
	2730 2050 3720 2050
Connection ~ 3820 2150
Wire Wire Line
	2730 2150 3820 2150
Connection ~ 3920 2250
Wire Wire Line
	2730 2250 3920 2250
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6D13E2
P 5660 3470
AR Path="/5BAAE1F3/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB8A16A/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5F583BF6/5F6D13E2" Ref="C?"  Part="1" 
F 0 "C?" H 5685 3570 50  0000 L CNN
F 1 "0.1uF" H 5685 3370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5698 3320 50  0001 C CNN
F 3 "" H 5685 3570 50  0001 C CNN
F 4 "311-1344-1-ND" H 6085 3970 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 5510 3570 50  0000 R CNN "display_footprint"
F 6 "50V" H 5510 3470 50  0000 R CNN "Voltage"
F 7 "X7R" H 5510 3370 50  0000 R CNN "Dielectric"
	1    5660 3470
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6D13EC
P 5660 3620
AR Path="/5CB7A8BC/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5F6D13EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5660 3370 50  0001 C CNN
F 1 "GND" H 5660 3470 50  0000 C CNN
F 2 "" H 5660 3620 50  0001 C CNN
F 3 "" H 5660 3620 50  0001 C CNN
	1    5660 3620
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F6D13F6
P 5660 3320
F 0 "#PWR?" H 5660 3170 50  0001 C CNN
F 1 "+5V" H 5660 3460 50  0000 C CNN
F 2 "" H 5660 3320 50  0001 C CNN
F 3 "" H 5660 3320 50  0001 C CNN
	1    5660 3320
	1    0    0    -1  
$EndComp
Text GLabel 7830 4250 2    50   Output ~ 0
Row_A_POS5
Text GLabel 7830 4350 2    50   Output ~ 0
Row_B_POS5
Text GLabel 7830 4550 2    50   Output ~ 0
Row_D_POS5
Text GLabel 7830 4650 2    50   Output ~ 0
Row_E_POS5
Text GLabel 7830 4450 2    50   Output ~ 0
Row_C_POS5
Text GLabel 7830 4750 2    50   Output ~ 0
Panel_CLK_POS5
Text GLabel 7830 4950 2    40   Output ~ 0
~Panel_OE_POS5
Text GLabel 7830 4850 2    50   Output ~ 0
Panel_LAT_POS5
Text GLabel 7830 2250 2    50   Output ~ 0
B0_POS5
Text GLabel 7830 1950 2    50   Output ~ 0
R1_POS5
Text GLabel 7830 2350 2    50   Output ~ 0
B1_POS5
Text GLabel 7830 2050 2    50   Output ~ 0
G0_POS5
Text GLabel 7830 2150 2    50   Output ~ 0
G1_POS5
$Comp
L Device:R_Pack08 RN?
U 1 1 5FEB8051
P 6640 3150
F 0 "RN?" H 7030 3060 50  0000 L CNN
F 1 "10k" H 7030 3160 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 7115 3150 50  0001 C CNN
F 3 "~" H 6640 3150 50  0001 C CNN
F 4 "Y1103CT-ND" H 6640 3150 50  0001 C CNN "Digi-Key PN"
	1    6640 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7040 2950 7040 1850
Wire Wire Line
	7040 1850 5780 1850
Wire Wire Line
	6940 2950 6940 1950
Wire Wire Line
	6940 1950 5780 1950
Wire Wire Line
	6840 2950 6840 2050
Wire Wire Line
	6840 2050 5780 2050
Wire Wire Line
	6740 2950 6740 2150
Wire Wire Line
	6740 2150 5780 2150
Wire Wire Line
	6640 2950 6640 2250
Wire Wire Line
	6640 2250 5780 2250
Wire Wire Line
	6540 2950 6540 2350
Wire Wire Line
	6540 2350 5780 2350
Wire Wire Line
	6440 2950 6440 2450
Wire Wire Line
	6440 2450 5780 2450
Wire Wire Line
	6340 2950 6340 2550
Wire Wire Line
	6340 2550 5780 2550
$Comp
L power:GND #PWR?
U 1 1 5FEB806B
P 6690 3430
AR Path="/5BAAE2B6/5FEB806B" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5FEB806B" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5FEB806B" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5FEB806B" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5FEB806B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6690 3180 50  0001 C CNN
F 1 "GND" H 6690 3280 50  0000 C CNN
F 2 "" H 6690 3430 50  0001 C CNN
F 3 "" H 6690 3430 50  0001 C CNN
	1    6690 3430
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6690 3430 6690 3390
Wire Wire Line
	6690 3390 6740 3390
Wire Wire Line
	7040 3390 7040 3350
Wire Wire Line
	6690 3390 6640 3390
Wire Wire Line
	6340 3390 6340 3350
Connection ~ 6690 3390
Wire Wire Line
	6440 3350 6440 3390
Connection ~ 6440 3390
Wire Wire Line
	6440 3390 6340 3390
Wire Wire Line
	6540 3350 6540 3390
Connection ~ 6540 3390
Wire Wire Line
	6540 3390 6440 3390
Wire Wire Line
	6640 3350 6640 3390
Connection ~ 6640 3390
Wire Wire Line
	6640 3390 6540 3390
Wire Wire Line
	6740 3350 6740 3390
Connection ~ 6740 3390
Wire Wire Line
	6740 3390 6840 3390
Wire Wire Line
	6840 3350 6840 3390
Connection ~ 6840 3390
Wire Wire Line
	6840 3390 6940 3390
Wire Wire Line
	6940 3350 6940 3390
Connection ~ 6940 3390
Wire Wire Line
	6940 3390 7040 3390
Wire Wire Line
	7830 4650 6640 4650
Wire Wire Line
	7830 4550 6740 4550
Wire Wire Line
	7830 4450 6840 4450
Wire Wire Line
	7830 4350 6940 4350
Wire Wire Line
	7830 4250 7040 4250
Wire Wire Line
	7830 4750 6540 4750
Wire Wire Line
	7830 4950 6340 4950
Wire Wire Line
	7830 4850 6440 4850
$Comp
L Device:R_Pack08 RN?
U 1 1 5FEB8096
P 6640 5550
F 0 "RN?" H 7030 5460 50  0000 L CNN
F 1 "10k" H 7030 5560 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 7115 5550 50  0001 C CNN
F 3 "~" H 6640 5550 50  0001 C CNN
F 4 "Y1103CT-ND" H 6640 5550 50  0001 C CNN "Digi-Key PN"
	1    6640 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7040 5350 7040 4250
Wire Wire Line
	6940 5350 6940 4350
Wire Wire Line
	6840 5350 6840 4450
Wire Wire Line
	6740 5350 6740 4550
Wire Wire Line
	6640 5350 6640 4650
Wire Wire Line
	6540 5350 6540 4750
Wire Wire Line
	6440 5350 6440 4850
Wire Wire Line
	6340 5350 6340 4950
$Comp
L power:GND #PWR?
U 1 1 5FEB80A8
P 6690 5830
AR Path="/5BAAE2B6/5FEB80A8" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5FEB80A8" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5FEB80A8" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5FEB80A8" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5FEB80A8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6690 5580 50  0001 C CNN
F 1 "GND" H 6690 5680 50  0000 C CNN
F 2 "" H 6690 5830 50  0001 C CNN
F 3 "" H 6690 5830 50  0001 C CNN
	1    6690 5830
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6690 5830 6690 5790
Wire Wire Line
	6690 5790 6740 5790
Wire Wire Line
	7040 5790 7040 5750
Wire Wire Line
	6690 5790 6640 5790
Wire Wire Line
	6340 5790 6340 5750
Connection ~ 6690 5790
Wire Wire Line
	6440 5750 6440 5790
Connection ~ 6440 5790
Wire Wire Line
	6440 5790 6340 5790
Wire Wire Line
	6540 5750 6540 5790
Connection ~ 6540 5790
Wire Wire Line
	6540 5790 6440 5790
Wire Wire Line
	6640 5750 6640 5790
Connection ~ 6640 5790
Wire Wire Line
	6640 5790 6540 5790
Wire Wire Line
	6740 5750 6740 5790
Connection ~ 6740 5790
Wire Wire Line
	6740 5790 6840 5790
Wire Wire Line
	6840 5750 6840 5790
Connection ~ 6840 5790
Wire Wire Line
	6840 5790 6940 5790
Wire Wire Line
	6940 5750 6940 5790
Connection ~ 6940 5790
Wire Wire Line
	6940 5790 7040 5790
Connection ~ 7040 4250
Wire Wire Line
	7040 4250 5780 4250
Connection ~ 6940 4350
Wire Wire Line
	6940 4350 5780 4350
Connection ~ 6840 4450
Wire Wire Line
	6840 4450 5780 4450
Connection ~ 6740 4550
Wire Wire Line
	6740 4550 5780 4550
Connection ~ 6640 4650
Wire Wire Line
	6640 4650 5780 4650
Connection ~ 6540 4750
Wire Wire Line
	6540 4750 5780 4750
Connection ~ 6440 4850
Wire Wire Line
	6440 4850 5780 4850
Connection ~ 6340 4950
Wire Wire Line
	6340 4950 5780 4950
Connection ~ 6540 2350
Wire Wire Line
	7830 2350 6540 2350
Connection ~ 7040 1850
Wire Wire Line
	7830 1850 7040 1850
Connection ~ 6940 1950
Wire Wire Line
	7830 1950 6940 1950
Connection ~ 6840 2050
Wire Wire Line
	7830 2050 6840 2050
Connection ~ 6740 2150
Wire Wire Line
	7830 2150 6740 2150
Connection ~ 6640 2250
Wire Wire Line
	7830 2250 6640 2250
Text GLabel 2730 4250 0    50   Input ~ 0
Row_A_POS3P3
Text GLabel 2730 4350 0    50   Input ~ 0
Row_B_POS3P3
Text GLabel 2730 4550 0    50   Input ~ 0
Row_D_POS3P3
Text GLabel 2730 4650 0    50   Input ~ 0
Row_E_POS3P3
Text GLabel 2730 4450 0    50   Input ~ 0
Row_C_POS3P3
Text GLabel 2730 4750 0    50   Input ~ 0
Panel_CLK_POS3P3
Text GLabel 2730 4950 0    40   Input ~ 0
~Panel_OE_POS3P3
Text GLabel 2730 4850 0    50   Input ~ 0
Panel_LAT_POS3P3
Text GLabel 2730 1850 0    50   Input ~ 0
R0_POS3P3
Text GLabel 2730 2250 0    50   Input ~ 0
B0_POS3P3
Text GLabel 2730 1950 0    50   Input ~ 0
R1_POS3P3
Text GLabel 2730 2350 0    50   Input ~ 0
B1_POS3P3
Text GLabel 2730 2050 0    50   Input ~ 0
G0_POS3P3
Text GLabel 2730 2150 0    50   Input ~ 0
G1_POS3P3
Text GLabel 7830 1850 2    50   Output ~ 0
R0_POS5
$EndSCHEMATC
