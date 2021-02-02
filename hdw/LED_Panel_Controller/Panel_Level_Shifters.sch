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
Text GLabel 8500 4250 2    50   Output ~ 0
Row_A_POS5
Text GLabel 8500 4350 2    50   Output ~ 0
Row_B_POS5
Text GLabel 8500 4550 2    50   Output ~ 0
Row_D_POS5
Text GLabel 8500 4650 2    50   Output ~ 0
Row_E_POS5
Text GLabel 8500 4450 2    50   Output ~ 0
Row_C_POS5
Text GLabel 8500 4750 2    50   Output ~ 0
Panel_CLK_POS5
Text GLabel 8500 4950 2    40   Output ~ 0
~Panel_OE_POS5
Text GLabel 8500 4850 2    50   Output ~ 0
Panel_LAT_POS5
Text GLabel 8500 2250 2    50   Output ~ 0
B0_POS5
Text GLabel 8500 1950 2    50   Output ~ 0
R1_POS5
Text GLabel 8500 2350 2    50   Output ~ 0
B1_POS5
Text GLabel 8500 2050 2    50   Output ~ 0
G0_POS5
Text GLabel 8500 2150 2    50   Output ~ 0
G1_POS5
Text GLabel 8500 1850 2    50   Output ~ 0
R0_POS5
Text GLabel 2060 2150 0    50   Input ~ 0
G1_POS3P3
Text GLabel 2060 2050 0    50   Input ~ 0
G0_POS3P3
Text GLabel 2060 2350 0    50   Input ~ 0
B1_POS3P3
Text GLabel 2060 1950 0    50   Input ~ 0
R1_POS3P3
Text GLabel 2060 2250 0    50   Input ~ 0
B0_POS3P3
Text GLabel 2060 1850 0    50   Input ~ 0
R0_POS3P3
Text GLabel 2060 4850 0    50   Input ~ 0
Panel_LAT_POS3P3
Text GLabel 2060 4950 0    40   Input ~ 0
~Panel_OE_POS3P3
Text GLabel 2060 4750 0    50   Input ~ 0
Panel_CLK_POS3P3
Text GLabel 2060 4450 0    50   Input ~ 0
Row_C_POS3P3
Text GLabel 2060 4650 0    50   Input ~ 0
Row_E_POS3P3
Text GLabel 2060 4550 0    50   Input ~ 0
Row_D_POS3P3
Text GLabel 2060 4350 0    50   Input ~ 0
Row_B_POS3P3
Text GLabel 2060 4250 0    50   Input ~ 0
Row_A_POS3P3
Text GLabel 2060 2750 0    40   Input ~ 0
~Panel_Level_Shift_Enable
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F65A4
P 2930 2980
AR Path="/5BAAE2B6/601F65A4" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F65A4" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F65A4" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F65A4" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F65A4" Ref="R?"  Part="1" 
F 0 "R?" V 2830 2980 50  0000 C CNN
F 1 "10K" V 2930 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2930 2980 50  0001 C CNN
F 3 "" H 2930 2980 50  0001 C CNN
F 4 "0603" H 3000 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 3000 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3000 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3230 3380 60  0001 C CNN "Digi-Key PN"
	1    2930 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F6BC3
P 3130 2980
AR Path="/5BAAE2B6/601F6BC3" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F6BC3" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F6BC3" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F6BC3" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F6BC3" Ref="R?"  Part="1" 
F 0 "R?" V 3030 2980 50  0000 C CNN
F 1 "10K" V 3130 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3130 2980 50  0001 C CNN
F 3 "" H 3130 2980 50  0001 C CNN
F 4 "0603" H 3200 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 3200 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3200 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3430 3380 60  0001 C CNN "Digi-Key PN"
	1    3130 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F8493
P 3330 2980
AR Path="/5BAAE2B6/601F8493" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F8493" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F8493" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F8493" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F8493" Ref="R?"  Part="1" 
F 0 "R?" V 3230 2980 50  0000 C CNN
F 1 "10K" V 3330 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3330 2980 50  0001 C CNN
F 3 "" H 3330 2980 50  0001 C CNN
F 4 "0603" H 3400 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 3400 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3400 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3630 3380 60  0001 C CNN "Digi-Key PN"
	1    3330 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F8782
P 3530 2980
AR Path="/5BAAE2B6/601F8782" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F8782" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F8782" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F8782" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F8782" Ref="R?"  Part="1" 
F 0 "R?" V 3430 2980 50  0000 C CNN
F 1 "10K" V 3530 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3530 2980 50  0001 C CNN
F 3 "" H 3530 2980 50  0001 C CNN
F 4 "0603" H 3600 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 3600 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3600 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3830 3380 60  0001 C CNN "Digi-Key PN"
	1    3530 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F8A5D
P 3730 2980
AR Path="/5BAAE2B6/601F8A5D" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F8A5D" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F8A5D" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F8A5D" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F8A5D" Ref="R?"  Part="1" 
F 0 "R?" V 3630 2980 50  0000 C CNN
F 1 "10K" V 3730 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3730 2980 50  0001 C CNN
F 3 "" H 3730 2980 50  0001 C CNN
F 4 "0603" H 3800 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 3800 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3800 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4030 3380 60  0001 C CNN "Digi-Key PN"
	1    3730 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F8E0F
P 3930 2980
AR Path="/5BAAE2B6/601F8E0F" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F8E0F" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F8E0F" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F8E0F" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F8E0F" Ref="R?"  Part="1" 
F 0 "R?" V 3830 2980 50  0000 C CNN
F 1 "10K" V 3930 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3930 2980 50  0001 C CNN
F 3 "" H 3930 2980 50  0001 C CNN
F 4 "0603" H 4000 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 4000 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4000 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4230 3380 60  0001 C CNN "Digi-Key PN"
	1    3930 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F90EC
P 4130 2980
AR Path="/5BAAE2B6/601F90EC" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F90EC" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F90EC" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F90EC" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F90EC" Ref="R?"  Part="1" 
F 0 "R?" V 4030 2980 50  0000 C CNN
F 1 "10K" V 4130 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4130 2980 50  0001 C CNN
F 3 "" H 4130 2980 50  0001 C CNN
F 4 "0603" H 4200 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 4200 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4200 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4430 3380 60  0001 C CNN "Digi-Key PN"
	1    4130 2980
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F93E4
P 4330 2980
AR Path="/5BAAE2B6/601F93E4" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/601F93E4" Ref="R?"  Part="1" 
AR Path="/5BBE424C/601F93E4" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/601F93E4" Ref="R?"  Part="1" 
AR Path="/5F583BF6/601F93E4" Ref="R?"  Part="1" 
F 0 "R?" V 4230 2980 50  0000 C CNN
F 1 "10K" V 4330 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4330 2980 50  0001 C CNN
F 3 "" H 4330 2980 50  0001 C CNN
F 4 "0603" H 4400 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 4400 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4400 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4630 3380 60  0001 C CNN "Digi-Key PN"
	1    4330 2980
	-1   0    0    -1  
$EndComp
Text GLabel 2060 5150 0    40   Input ~ 0
~Panel_Level_Shift_Enable
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020DD4C
P 2210 1850
AR Path="/5EAE2D66/6020DD4C" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020DD4C" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020DD4C" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020DD4C" Ref="R?"  Part="1" 
F 0 "R?" V 2160 1960 50  0000 L CNN
F 1 "10" V 2210 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 1850 50  0001 C CNN
F 3 "" H 2210 1850 50  0001 C CNN
F 4 "0402" V 2310 1850 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 1850 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 1850 50  0001 C CNN "Wattage"
	1    2210 1850
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020E2DA
P 2210 1950
AR Path="/5EAE2D66/6020E2DA" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020E2DA" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020E2DA" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020E2DA" Ref="R?"  Part="1" 
F 0 "R?" V 2160 2060 50  0000 L CNN
F 1 "10" V 2210 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 1950 50  0001 C CNN
F 3 "" H 2210 1950 50  0001 C CNN
F 4 "0402" V 2310 1950 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 1950 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 1950 50  0001 C CNN "Wattage"
	1    2210 1950
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020E443
P 2210 2050
AR Path="/5EAE2D66/6020E443" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020E443" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020E443" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020E443" Ref="R?"  Part="1" 
F 0 "R?" V 2160 2160 50  0000 L CNN
F 1 "10" V 2210 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 2050 50  0001 C CNN
F 3 "" H 2210 2050 50  0001 C CNN
F 4 "0402" V 2310 2050 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 2050 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 2050 50  0001 C CNN "Wattage"
	1    2210 2050
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020E5D4
P 2210 2150
AR Path="/5EAE2D66/6020E5D4" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020E5D4" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020E5D4" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020E5D4" Ref="R?"  Part="1" 
F 0 "R?" V 2160 2260 50  0000 L CNN
F 1 "10" V 2210 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 2150 50  0001 C CNN
F 3 "" H 2210 2150 50  0001 C CNN
F 4 "0402" V 2310 2150 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 2150 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 2150 50  0001 C CNN "Wattage"
	1    2210 2150
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020E775
P 2210 2250
AR Path="/5EAE2D66/6020E775" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020E775" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020E775" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020E775" Ref="R?"  Part="1" 
F 0 "R?" V 2160 2360 50  0000 L CNN
F 1 "10" V 2210 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 2250 50  0001 C CNN
F 3 "" H 2210 2250 50  0001 C CNN
F 4 "0402" V 2310 2250 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 2250 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 2250 50  0001 C CNN "Wattage"
	1    2210 2250
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6020E94E
P 2210 2350
AR Path="/5EAE2D66/6020E94E" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6020E94E" Ref="R?"  Part="1" 
AR Path="/5F581B64/6020E94E" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6020E94E" Ref="R?"  Part="1" 
F 0 "R?" V 2160 2460 50  0000 L CNN
F 1 "10" V 2210 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 2350 50  0001 C CNN
F 3 "" H 2210 2350 50  0001 C CNN
F 4 "0402" V 2310 2350 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 2350 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 2350 50  0001 C CNN "Wattage"
	1    2210 2350
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6021401B
P 2730 1600
AR Path="/5BAAE2B6/6021401B" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6021401B" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6021401B" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6021401B" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6021401B" Ref="R?"  Part="1" 
F 0 "R?" V 2630 1600 50  0000 C CNN
F 1 "10K" V 2730 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2730 1600 50  0001 C CNN
F 3 "" H 2730 1600 50  0001 C CNN
F 4 "0603" H 2800 1690 50  0001 L CNN "display_footprint"
F 5 "1%" H 2800 1600 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 2800 1520 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3030 2000 60  0001 C CNN "Digi-Key PN"
	1    2730 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2360 1850 2930 1850
Wire Wire Line
	2360 1950 3130 1950
Wire Wire Line
	2360 2050 3330 2050
Wire Wire Line
	2360 2150 3530 2150
Wire Wire Line
	2360 2250 3730 2250
Wire Wire Line
	2360 2350 3930 2350
Wire Wire Line
	4720 2750 2730 2750
Connection ~ 4720 2750
Wire Wire Line
	2730 1750 2730 2750
Connection ~ 2730 2750
Wire Wire Line
	2730 2750 2060 2750
$Comp
L power:GND #PWR?
U 1 1 6021EF9C
P 2930 3130
AR Path="/5BAAE2B6/6021EF9C" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021EF9C" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021EF9C" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021EF9C" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021EF9C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2930 2880 50  0001 C CNN
F 1 "GND" H 2930 2980 50  0000 C CNN
F 2 "" H 2930 3130 50  0001 C CNN
F 3 "" H 2930 3130 50  0001 C CNN
	1    2930 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021F325
P 3130 3130
AR Path="/5BAAE2B6/6021F325" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021F325" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021F325" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021F325" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021F325" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3130 2880 50  0001 C CNN
F 1 "GND" H 3130 2980 50  0000 C CNN
F 2 "" H 3130 3130 50  0001 C CNN
F 3 "" H 3130 3130 50  0001 C CNN
	1    3130 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021F49D
P 3330 3130
AR Path="/5BAAE2B6/6021F49D" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021F49D" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021F49D" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021F49D" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021F49D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3330 2880 50  0001 C CNN
F 1 "GND" H 3330 2980 50  0000 C CNN
F 2 "" H 3330 3130 50  0001 C CNN
F 3 "" H 3330 3130 50  0001 C CNN
	1    3330 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021F5FC
P 3530 3130
AR Path="/5BAAE2B6/6021F5FC" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021F5FC" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021F5FC" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021F5FC" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021F5FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3530 2880 50  0001 C CNN
F 1 "GND" H 3530 2980 50  0000 C CNN
F 2 "" H 3530 3130 50  0001 C CNN
F 3 "" H 3530 3130 50  0001 C CNN
	1    3530 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021F796
P 3730 3130
AR Path="/5BAAE2B6/6021F796" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021F796" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021F796" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021F796" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021F796" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3730 2880 50  0001 C CNN
F 1 "GND" H 3730 2980 50  0000 C CNN
F 2 "" H 3730 3130 50  0001 C CNN
F 3 "" H 3730 3130 50  0001 C CNN
	1    3730 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021F8EC
P 3930 3130
AR Path="/5BAAE2B6/6021F8EC" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021F8EC" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021F8EC" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021F8EC" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021F8EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3930 2880 50  0001 C CNN
F 1 "GND" H 3930 2980 50  0000 C CNN
F 2 "" H 3930 3130 50  0001 C CNN
F 3 "" H 3930 3130 50  0001 C CNN
	1    3930 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021FA86
P 4130 3130
AR Path="/5BAAE2B6/6021FA86" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021FA86" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021FA86" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021FA86" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021FA86" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4130 2880 50  0001 C CNN
F 1 "GND" H 4130 2980 50  0000 C CNN
F 2 "" H 4130 3130 50  0001 C CNN
F 3 "" H 4130 3130 50  0001 C CNN
	1    4130 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021FB7D
P 4330 3130
AR Path="/5BAAE2B6/6021FB7D" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6021FB7D" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6021FB7D" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6021FB7D" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6021FB7D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4330 2880 50  0001 C CNN
F 1 "GND" H 4330 2980 50  0000 C CNN
F 2 "" H 4330 3130 50  0001 C CNN
F 3 "" H 4330 3130 50  0001 C CNN
	1    4330 3130
	1    0    0    -1  
$EndComp
Wire Wire Line
	2930 2830 2930 1850
Connection ~ 2930 1850
Wire Wire Line
	2930 1850 4780 1850
Wire Wire Line
	3130 2830 3130 1950
Connection ~ 3130 1950
Wire Wire Line
	3130 1950 4780 1950
Wire Wire Line
	3330 2830 3330 2050
Connection ~ 3330 2050
Wire Wire Line
	3330 2050 4780 2050
Wire Wire Line
	3530 2830 3530 2150
Connection ~ 3530 2150
Wire Wire Line
	3530 2150 4780 2150
Wire Wire Line
	3730 2830 3730 2250
Connection ~ 3730 2250
Wire Wire Line
	3730 2250 4780 2250
Wire Wire Line
	3930 2830 3930 2350
Connection ~ 3930 2350
Wire Wire Line
	3930 2350 4780 2350
Wire Wire Line
	4130 2830 4130 2450
Wire Wire Line
	4130 2450 4780 2450
Wire Wire Line
	4330 2830 4330 2550
Wire Wire Line
	4330 2550 4780 2550
$Comp
L Custom_Library:R_Custom R?
U 1 1 6022850B
P 2930 5380
AR Path="/5BAAE2B6/6022850B" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6022850B" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6022850B" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6022850B" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6022850B" Ref="R?"  Part="1" 
F 0 "R?" V 2830 5380 50  0000 C CNN
F 1 "10K" V 2930 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2930 5380 50  0001 C CNN
F 3 "" H 2930 5380 50  0001 C CNN
F 4 "0603" H 3000 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 3000 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3000 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3230 5780 60  0001 C CNN "Digi-Key PN"
	1    2930 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60228781
P 3130 5380
AR Path="/5BAAE2B6/60228781" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60228781" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60228781" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60228781" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60228781" Ref="R?"  Part="1" 
F 0 "R?" V 3030 5380 50  0000 C CNN
F 1 "10K" V 3130 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3130 5380 50  0001 C CNN
F 3 "" H 3130 5380 50  0001 C CNN
F 4 "0603" H 3200 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 3200 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3200 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3430 5780 60  0001 C CNN "Digi-Key PN"
	1    3130 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6022878F
P 3330 5380
AR Path="/5BAAE2B6/6022878F" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6022878F" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6022878F" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6022878F" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6022878F" Ref="R?"  Part="1" 
F 0 "R?" V 3230 5380 50  0000 C CNN
F 1 "10K" V 3330 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3330 5380 50  0001 C CNN
F 3 "" H 3330 5380 50  0001 C CNN
F 4 "0603" H 3400 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 3400 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3400 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3630 5780 60  0001 C CNN "Digi-Key PN"
	1    3330 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6022879D
P 3530 5380
AR Path="/5BAAE2B6/6022879D" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6022879D" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6022879D" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6022879D" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6022879D" Ref="R?"  Part="1" 
F 0 "R?" V 3430 5380 50  0000 C CNN
F 1 "10K" V 3530 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3530 5380 50  0001 C CNN
F 3 "" H 3530 5380 50  0001 C CNN
F 4 "0603" H 3600 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 3600 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3600 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3830 5780 60  0001 C CNN "Digi-Key PN"
	1    3530 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287AB
P 3730 5380
AR Path="/5BAAE2B6/602287AB" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/602287AB" Ref="R?"  Part="1" 
AR Path="/5BBE424C/602287AB" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/602287AB" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287AB" Ref="R?"  Part="1" 
F 0 "R?" V 3630 5380 50  0000 C CNN
F 1 "10K" V 3730 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3730 5380 50  0001 C CNN
F 3 "" H 3730 5380 50  0001 C CNN
F 4 "0603" H 3800 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 3800 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 3800 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4030 5780 60  0001 C CNN "Digi-Key PN"
	1    3730 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287B9
P 3930 5380
AR Path="/5BAAE2B6/602287B9" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/602287B9" Ref="R?"  Part="1" 
AR Path="/5BBE424C/602287B9" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/602287B9" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287B9" Ref="R?"  Part="1" 
F 0 "R?" V 3830 5380 50  0000 C CNN
F 1 "10K" V 3930 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3930 5380 50  0001 C CNN
F 3 "" H 3930 5380 50  0001 C CNN
F 4 "0603" H 4000 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 4000 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4000 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4230 5780 60  0001 C CNN "Digi-Key PN"
	1    3930 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287C7
P 4130 5380
AR Path="/5BAAE2B6/602287C7" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/602287C7" Ref="R?"  Part="1" 
AR Path="/5BBE424C/602287C7" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/602287C7" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287C7" Ref="R?"  Part="1" 
F 0 "R?" V 4030 5380 50  0000 C CNN
F 1 "10K" V 4130 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4130 5380 50  0001 C CNN
F 3 "" H 4130 5380 50  0001 C CNN
F 4 "0603" H 4200 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 4200 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4200 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4430 5780 60  0001 C CNN "Digi-Key PN"
	1    4130 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287D5
P 4330 5380
AR Path="/5BAAE2B6/602287D5" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/602287D5" Ref="R?"  Part="1" 
AR Path="/5BBE424C/602287D5" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/602287D5" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287D5" Ref="R?"  Part="1" 
F 0 "R?" V 4230 5380 50  0000 C CNN
F 1 "10K" V 4330 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4330 5380 50  0001 C CNN
F 3 "" H 4330 5380 50  0001 C CNN
F 4 "0603" H 4400 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 4400 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4400 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4630 5780 60  0001 C CNN "Digi-Key PN"
	1    4330 5380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287E2
P 2210 4250
AR Path="/5EAE2D66/602287E2" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/602287E2" Ref="R?"  Part="1" 
AR Path="/5F581B64/602287E2" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287E2" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4360 50  0000 L CNN
F 1 "10" V 2210 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4250 50  0001 C CNN
F 3 "" H 2210 4250 50  0001 C CNN
F 4 "0402" V 2310 4250 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4250 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4250 50  0001 C CNN "Wattage"
	1    2210 4250
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287EF
P 2210 4350
AR Path="/5EAE2D66/602287EF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/602287EF" Ref="R?"  Part="1" 
AR Path="/5F581B64/602287EF" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287EF" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4460 50  0000 L CNN
F 1 "10" V 2210 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4350 50  0001 C CNN
F 3 "" H 2210 4350 50  0001 C CNN
F 4 "0402" V 2310 4350 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4350 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4350 50  0001 C CNN "Wattage"
	1    2210 4350
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602287FC
P 2210 4450
AR Path="/5EAE2D66/602287FC" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/602287FC" Ref="R?"  Part="1" 
AR Path="/5F581B64/602287FC" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602287FC" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4560 50  0000 L CNN
F 1 "10" V 2210 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4450 50  0001 C CNN
F 3 "" H 2210 4450 50  0001 C CNN
F 4 "0402" V 2310 4450 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4450 50  0001 C CNN "Wattage"
	1    2210 4450
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60228809
P 2210 4550
AR Path="/5EAE2D66/60228809" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60228809" Ref="R?"  Part="1" 
AR Path="/5F581B64/60228809" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60228809" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4660 50  0000 L CNN
F 1 "10" V 2210 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4550 50  0001 C CNN
F 3 "" H 2210 4550 50  0001 C CNN
F 4 "0402" V 2310 4550 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4550 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4550 50  0001 C CNN "Wattage"
	1    2210 4550
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60228816
P 2210 4650
AR Path="/5EAE2D66/60228816" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60228816" Ref="R?"  Part="1" 
AR Path="/5F581B64/60228816" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60228816" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4760 50  0000 L CNN
F 1 "10" V 2210 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4650 50  0001 C CNN
F 3 "" H 2210 4650 50  0001 C CNN
F 4 "0402" V 2310 4650 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4650 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4650 50  0001 C CNN "Wattage"
	1    2210 4650
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60228823
P 2210 4750
AR Path="/5EAE2D66/60228823" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60228823" Ref="R?"  Part="1" 
AR Path="/5F581B64/60228823" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60228823" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4860 50  0000 L CNN
F 1 "10" V 2210 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4750 50  0001 C CNN
F 3 "" H 2210 4750 50  0001 C CNN
F 4 "0402" V 2310 4750 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4750 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4750 50  0001 C CNN "Wattage"
	1    2210 4750
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60228831
P 2730 4000
AR Path="/5BAAE2B6/60228831" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60228831" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60228831" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60228831" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60228831" Ref="R?"  Part="1" 
F 0 "R?" V 2630 4000 50  0000 C CNN
F 1 "10K" V 2730 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2730 4000 50  0001 C CNN
F 3 "" H 2730 4000 50  0001 C CNN
F 4 "0603" H 2800 4090 50  0001 L CNN "display_footprint"
F 5 "1%" H 2800 4000 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 2800 3920 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 3030 4400 60  0001 C CNN "Digi-Key PN"
	1    2730 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2360 4250 2930 4250
Wire Wire Line
	2360 4350 3130 4350
Wire Wire Line
	2360 4450 3330 4450
Wire Wire Line
	2360 4550 3530 4550
Wire Wire Line
	2360 4650 3730 4650
Wire Wire Line
	2360 4750 3930 4750
Wire Wire Line
	2360 4850 4130 4850
Wire Wire Line
	2360 4950 4330 4950
Wire Wire Line
	4720 5150 2730 5150
Wire Wire Line
	2730 4150 2730 5150
Connection ~ 2730 5150
Wire Wire Line
	2730 5150 2060 5150
$Comp
L power:GND #PWR?
U 1 1 60228847
P 2930 5530
AR Path="/5BAAE2B6/60228847" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60228847" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60228847" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60228847" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60228847" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2930 5280 50  0001 C CNN
F 1 "GND" H 2930 5380 50  0000 C CNN
F 2 "" H 2930 5530 50  0001 C CNN
F 3 "" H 2930 5530 50  0001 C CNN
	1    2930 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60228851
P 3130 5530
AR Path="/5BAAE2B6/60228851" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60228851" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60228851" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60228851" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60228851" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3130 5280 50  0001 C CNN
F 1 "GND" H 3130 5380 50  0000 C CNN
F 2 "" H 3130 5530 50  0001 C CNN
F 3 "" H 3130 5530 50  0001 C CNN
	1    3130 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6022885B
P 3330 5530
AR Path="/5BAAE2B6/6022885B" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6022885B" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6022885B" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6022885B" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6022885B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3330 5280 50  0001 C CNN
F 1 "GND" H 3330 5380 50  0000 C CNN
F 2 "" H 3330 5530 50  0001 C CNN
F 3 "" H 3330 5530 50  0001 C CNN
	1    3330 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60228865
P 3530 5530
AR Path="/5BAAE2B6/60228865" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60228865" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60228865" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60228865" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60228865" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3530 5280 50  0001 C CNN
F 1 "GND" H 3530 5380 50  0000 C CNN
F 2 "" H 3530 5530 50  0001 C CNN
F 3 "" H 3530 5530 50  0001 C CNN
	1    3530 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6022886F
P 3730 5530
AR Path="/5BAAE2B6/6022886F" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6022886F" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6022886F" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6022886F" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6022886F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3730 5280 50  0001 C CNN
F 1 "GND" H 3730 5380 50  0000 C CNN
F 2 "" H 3730 5530 50  0001 C CNN
F 3 "" H 3730 5530 50  0001 C CNN
	1    3730 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60228879
P 3930 5530
AR Path="/5BAAE2B6/60228879" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60228879" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60228879" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60228879" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60228879" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3930 5280 50  0001 C CNN
F 1 "GND" H 3930 5380 50  0000 C CNN
F 2 "" H 3930 5530 50  0001 C CNN
F 3 "" H 3930 5530 50  0001 C CNN
	1    3930 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60228883
P 4130 5530
AR Path="/5BAAE2B6/60228883" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60228883" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60228883" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60228883" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60228883" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4130 5280 50  0001 C CNN
F 1 "GND" H 4130 5380 50  0000 C CNN
F 2 "" H 4130 5530 50  0001 C CNN
F 3 "" H 4130 5530 50  0001 C CNN
	1    4130 5530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6022888D
P 4330 5530
AR Path="/5BAAE2B6/6022888D" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6022888D" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6022888D" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6022888D" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6022888D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4330 5280 50  0001 C CNN
F 1 "GND" H 4330 5380 50  0000 C CNN
F 2 "" H 4330 5530 50  0001 C CNN
F 3 "" H 4330 5530 50  0001 C CNN
	1    4330 5530
	1    0    0    -1  
$EndComp
Wire Wire Line
	2930 5230 2930 4250
Connection ~ 2930 4250
Wire Wire Line
	2930 4250 4780 4250
Wire Wire Line
	3130 5230 3130 4350
Connection ~ 3130 4350
Wire Wire Line
	3130 4350 4780 4350
Wire Wire Line
	3330 5230 3330 4450
Connection ~ 3330 4450
Wire Wire Line
	3330 4450 4780 4450
Wire Wire Line
	3530 5230 3530 4550
Connection ~ 3530 4550
Wire Wire Line
	3530 4550 4780 4550
Wire Wire Line
	3730 5230 3730 4650
Connection ~ 3730 4650
Wire Wire Line
	3730 4650 4780 4650
Wire Wire Line
	3930 5230 3930 4750
Connection ~ 3930 4750
Wire Wire Line
	3930 4750 4780 4750
Wire Wire Line
	4130 5230 4130 4850
Connection ~ 4130 4850
Wire Wire Line
	4130 4850 4780 4850
Wire Wire Line
	4330 5230 4330 4950
Connection ~ 4330 4950
Wire Wire Line
	4330 4950 4780 4950
Connection ~ 4720 5150
$Comp
L Custom_Library:R_Custom R?
U 1 1 602305BB
P 2210 4850
AR Path="/5EAE2D66/602305BB" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/602305BB" Ref="R?"  Part="1" 
AR Path="/5F581B64/602305BB" Ref="R?"  Part="1" 
AR Path="/5F583BF6/602305BB" Ref="R?"  Part="1" 
F 0 "R?" V 2160 4960 50  0000 L CNN
F 1 "10" V 2210 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4850 50  0001 C CNN
F 3 "" H 2210 4850 50  0001 C CNN
F 4 "0402" V 2310 4850 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4850 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4850 50  0001 C CNN "Wattage"
	1    2210 4850
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60230764
P 2210 4950
AR Path="/5EAE2D66/60230764" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60230764" Ref="R?"  Part="1" 
AR Path="/5F581B64/60230764" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60230764" Ref="R?"  Part="1" 
F 0 "R?" V 2160 5060 50  0000 L CNN
F 1 "10" V 2210 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2210 4950 50  0001 C CNN
F 3 "" H 2210 4950 50  0001 C CNN
F 4 "0402" V 2310 4950 50  0001 C CNN "display_footprint"
F 5 "1%" V 2410 4950 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2510 4950 50  0001 C CNN "Wattage"
	1    2210 4950
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60230A01
P 2730 1450
F 0 "#PWR?" H 2730 1300 50  0001 C CNN
F 1 "+3.3V" H 2730 1590 50  0000 C CNN
F 2 "" H 2730 1450 50  0001 C CNN
F 3 "" H 2730 1450 50  0001 C CNN
	1    2730 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 602310E5
P 2730 3850
F 0 "#PWR?" H 2730 3700 50  0001 C CNN
F 1 "+3.3V" H 2730 3990 50  0000 C CNN
F 2 "" H 2730 3850 50  0001 C CNN
F 3 "" H 2730 3850 50  0001 C CNN
	1    2730 3850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT541 U?
U 1 1 60233D09
P 5280 2350
F 0 "U?" H 4980 3000 50  0000 C CNN
F 1 "74HCT541" H 4980 1700 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_4.4x6.5mm_Pitch0.65mm" H 5280 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 5280 2350 50  0001 C CNN
F 4 "296-26499-1-ND" H 5280 2350 50  0001 C CNN "Digi-Key PN"
	1    5280 2350
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BB64
P 7630 2980
AR Path="/5BAAE2B6/6023BB64" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BB64" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BB64" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BB64" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BB64" Ref="R?"  Part="1" 
F 0 "R?" V 7530 2980 50  0000 C CNN
F 1 "10K" V 7630 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7630 2980 50  0001 C CNN
F 3 "" H 7630 2980 50  0001 C CNN
F 4 "0603" H 7700 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 7700 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7700 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7930 3380 60  0001 C CNN "Digi-Key PN"
	1    7630 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BF6E
P 7430 2980
AR Path="/5BAAE2B6/6023BF6E" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BF6E" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BF6E" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BF6E" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BF6E" Ref="R?"  Part="1" 
F 0 "R?" V 7330 2980 50  0000 C CNN
F 1 "10K" V 7430 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7430 2980 50  0001 C CNN
F 3 "" H 7430 2980 50  0001 C CNN
F 4 "0603" H 7500 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 7500 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7500 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7730 3380 60  0001 C CNN "Digi-Key PN"
	1    7430 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BF7C
P 7230 2980
AR Path="/5BAAE2B6/6023BF7C" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BF7C" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BF7C" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BF7C" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BF7C" Ref="R?"  Part="1" 
F 0 "R?" V 7130 2980 50  0000 C CNN
F 1 "10K" V 7230 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7230 2980 50  0001 C CNN
F 3 "" H 7230 2980 50  0001 C CNN
F 4 "0603" H 7300 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 7300 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7300 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7530 3380 60  0001 C CNN "Digi-Key PN"
	1    7230 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BF8A
P 7030 2980
AR Path="/5BAAE2B6/6023BF8A" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BF8A" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BF8A" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BF8A" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BF8A" Ref="R?"  Part="1" 
F 0 "R?" V 6930 2980 50  0000 C CNN
F 1 "10K" V 7030 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7030 2980 50  0001 C CNN
F 3 "" H 7030 2980 50  0001 C CNN
F 4 "0603" H 7100 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 7100 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7100 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7330 3380 60  0001 C CNN "Digi-Key PN"
	1    7030 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BF98
P 6830 2980
AR Path="/5BAAE2B6/6023BF98" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BF98" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BF98" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BF98" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BF98" Ref="R?"  Part="1" 
F 0 "R?" V 6730 2980 50  0000 C CNN
F 1 "10K" V 6830 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6830 2980 50  0001 C CNN
F 3 "" H 6830 2980 50  0001 C CNN
F 4 "0603" H 6900 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 6900 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6900 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7130 3380 60  0001 C CNN "Digi-Key PN"
	1    6830 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BFA6
P 6630 2980
AR Path="/5BAAE2B6/6023BFA6" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/6023BFA6" Ref="R?"  Part="1" 
AR Path="/5BBE424C/6023BFA6" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/6023BFA6" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BFA6" Ref="R?"  Part="1" 
F 0 "R?" V 6530 2980 50  0000 C CNN
F 1 "10K" V 6630 2980 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6630 2980 50  0001 C CNN
F 3 "" H 6630 2980 50  0001 C CNN
F 4 "0603" H 6700 3070 50  0001 L CNN "display_footprint"
F 5 "1%" H 6700 2980 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6700 2900 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 6930 3380 60  0001 C CNN "Digi-Key PN"
	1    6630 2980
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BFCF
P 8350 1850
AR Path="/5EAE2D66/6023BFCF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023BFCF" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023BFCF" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BFCF" Ref="R?"  Part="1" 
F 0 "R?" V 8300 1960 50  0000 L CNN
F 1 "10" V 8350 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 1850 50  0001 C CNN
F 3 "" H 8350 1850 50  0001 C CNN
F 4 "0402" V 8450 1850 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 1850 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 1850 50  0001 C CNN "Wattage"
	1    8350 1850
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BFDC
P 8350 1950
AR Path="/5EAE2D66/6023BFDC" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023BFDC" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023BFDC" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BFDC" Ref="R?"  Part="1" 
F 0 "R?" V 8300 2060 50  0000 L CNN
F 1 "10" V 8350 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 1950 50  0001 C CNN
F 3 "" H 8350 1950 50  0001 C CNN
F 4 "0402" V 8450 1950 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 1950 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 1950 50  0001 C CNN "Wattage"
	1    8350 1950
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BFE9
P 8350 2050
AR Path="/5EAE2D66/6023BFE9" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023BFE9" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023BFE9" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BFE9" Ref="R?"  Part="1" 
F 0 "R?" V 8300 2160 50  0000 L CNN
F 1 "10" V 8350 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 2050 50  0001 C CNN
F 3 "" H 8350 2050 50  0001 C CNN
F 4 "0402" V 8450 2050 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 2050 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 2050 50  0001 C CNN "Wattage"
	1    8350 2050
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023BFF6
P 8350 2150
AR Path="/5EAE2D66/6023BFF6" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023BFF6" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023BFF6" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023BFF6" Ref="R?"  Part="1" 
F 0 "R?" V 8300 2260 50  0000 L CNN
F 1 "10" V 8350 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0001 C CNN
F 4 "0402" V 8450 2150 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 2150 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 2150 50  0001 C CNN "Wattage"
	1    8350 2150
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023C003
P 8350 2250
AR Path="/5EAE2D66/6023C003" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023C003" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023C003" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023C003" Ref="R?"  Part="1" 
F 0 "R?" V 8300 2360 50  0000 L CNN
F 1 "10" V 8350 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 2250 50  0001 C CNN
F 3 "" H 8350 2250 50  0001 C CNN
F 4 "0402" V 8450 2250 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 2250 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 2250 50  0001 C CNN "Wattage"
	1    8350 2250
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6023C010
P 8350 2350
AR Path="/5EAE2D66/6023C010" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/6023C010" Ref="R?"  Part="1" 
AR Path="/5F581B64/6023C010" Ref="R?"  Part="1" 
AR Path="/5F583BF6/6023C010" Ref="R?"  Part="1" 
F 0 "R?" V 8300 2460 50  0000 L CNN
F 1 "10" V 8350 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 2350 50  0001 C CNN
F 3 "" H 8350 2350 50  0001 C CNN
F 4 "0402" V 8450 2350 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 2350 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 2350 50  0001 C CNN "Wattage"
	1    8350 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	8200 1850 7630 1850
Wire Wire Line
	8200 1950 7430 1950
Wire Wire Line
	8200 2050 7230 2050
Wire Wire Line
	8200 2150 7030 2150
Wire Wire Line
	8200 2250 6830 2250
Wire Wire Line
	8200 2350 6630 2350
$Comp
L power:GND #PWR?
U 1 1 6023C024
P 7630 3130
AR Path="/5BAAE2B6/6023C024" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C024" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C024" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C024" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C024" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7630 2880 50  0001 C CNN
F 1 "GND" H 7630 2980 50  0000 C CNN
F 2 "" H 7630 3130 50  0001 C CNN
F 3 "" H 7630 3130 50  0001 C CNN
	1    7630 3130
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023C02E
P 7430 3130
AR Path="/5BAAE2B6/6023C02E" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C02E" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C02E" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C02E" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C02E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7430 2880 50  0001 C CNN
F 1 "GND" H 7430 2980 50  0000 C CNN
F 2 "" H 7430 3130 50  0001 C CNN
F 3 "" H 7430 3130 50  0001 C CNN
	1    7430 3130
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023C038
P 7230 3130
AR Path="/5BAAE2B6/6023C038" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C038" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C038" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C038" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C038" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7230 2880 50  0001 C CNN
F 1 "GND" H 7230 2980 50  0000 C CNN
F 2 "" H 7230 3130 50  0001 C CNN
F 3 "" H 7230 3130 50  0001 C CNN
	1    7230 3130
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023C042
P 7030 3130
AR Path="/5BAAE2B6/6023C042" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C042" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C042" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C042" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C042" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7030 2880 50  0001 C CNN
F 1 "GND" H 7030 2980 50  0000 C CNN
F 2 "" H 7030 3130 50  0001 C CNN
F 3 "" H 7030 3130 50  0001 C CNN
	1    7030 3130
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023C04C
P 6830 3130
AR Path="/5BAAE2B6/6023C04C" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C04C" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C04C" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C04C" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C04C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6830 2880 50  0001 C CNN
F 1 "GND" H 6830 2980 50  0000 C CNN
F 2 "" H 6830 3130 50  0001 C CNN
F 3 "" H 6830 3130 50  0001 C CNN
	1    6830 3130
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6023C056
P 6630 3130
AR Path="/5BAAE2B6/6023C056" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6023C056" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6023C056" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6023C056" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6023C056" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6630 2880 50  0001 C CNN
F 1 "GND" H 6630 2980 50  0000 C CNN
F 2 "" H 6630 3130 50  0001 C CNN
F 3 "" H 6630 3130 50  0001 C CNN
	1    6630 3130
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7630 2830 7630 1850
Connection ~ 7630 1850
Wire Wire Line
	7630 1850 5780 1850
Wire Wire Line
	7430 2830 7430 1950
Connection ~ 7430 1950
Wire Wire Line
	7430 1950 5780 1950
Wire Wire Line
	7230 2830 7230 2050
Connection ~ 7230 2050
Wire Wire Line
	7230 2050 5780 2050
Wire Wire Line
	7030 2830 7030 2150
Connection ~ 7030 2150
Wire Wire Line
	7030 2150 5780 2150
Wire Wire Line
	6830 2830 6830 2250
Connection ~ 6830 2250
Wire Wire Line
	6830 2250 5780 2250
Wire Wire Line
	6630 2830 6630 2350
Connection ~ 6630 2350
Wire Wire Line
	6630 2350 5780 2350
NoConn ~ 5780 2450
NoConn ~ 5780 2550
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250A10
P 7630 5380
AR Path="/5BAAE2B6/60250A10" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250A10" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250A10" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250A10" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250A10" Ref="R?"  Part="1" 
F 0 "R?" V 7530 5380 50  0000 C CNN
F 1 "10K" V 7630 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7630 5380 50  0001 C CNN
F 3 "" H 7630 5380 50  0001 C CNN
F 4 "0603" H 7700 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 7700 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7700 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7930 5780 60  0001 C CNN "Digi-Key PN"
	1    7630 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F22
P 7430 5380
AR Path="/5BAAE2B6/60250F22" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F22" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F22" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F22" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F22" Ref="R?"  Part="1" 
F 0 "R?" V 7330 5380 50  0000 C CNN
F 1 "10K" V 7430 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7430 5380 50  0001 C CNN
F 3 "" H 7430 5380 50  0001 C CNN
F 4 "0603" H 7500 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 7500 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7500 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7730 5780 60  0001 C CNN "Digi-Key PN"
	1    7430 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F30
P 7230 5380
AR Path="/5BAAE2B6/60250F30" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F30" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F30" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F30" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F30" Ref="R?"  Part="1" 
F 0 "R?" V 7130 5380 50  0000 C CNN
F 1 "10K" V 7230 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7230 5380 50  0001 C CNN
F 3 "" H 7230 5380 50  0001 C CNN
F 4 "0603" H 7300 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 7300 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7300 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7530 5780 60  0001 C CNN "Digi-Key PN"
	1    7230 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F3E
P 7030 5380
AR Path="/5BAAE2B6/60250F3E" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F3E" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F3E" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F3E" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F3E" Ref="R?"  Part="1" 
F 0 "R?" V 6930 5380 50  0000 C CNN
F 1 "10K" V 7030 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7030 5380 50  0001 C CNN
F 3 "" H 7030 5380 50  0001 C CNN
F 4 "0603" H 7100 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 7100 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 7100 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7330 5780 60  0001 C CNN "Digi-Key PN"
	1    7030 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F4C
P 6830 5380
AR Path="/5BAAE2B6/60250F4C" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F4C" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F4C" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F4C" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F4C" Ref="R?"  Part="1" 
F 0 "R?" V 6730 5380 50  0000 C CNN
F 1 "10K" V 6830 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6830 5380 50  0001 C CNN
F 3 "" H 6830 5380 50  0001 C CNN
F 4 "0603" H 6900 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 6900 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6900 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 7130 5780 60  0001 C CNN "Digi-Key PN"
	1    6830 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F5A
P 6630 5380
AR Path="/5BAAE2B6/60250F5A" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F5A" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F5A" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F5A" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F5A" Ref="R?"  Part="1" 
F 0 "R?" V 6530 5380 50  0000 C CNN
F 1 "10K" V 6630 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6630 5380 50  0001 C CNN
F 3 "" H 6630 5380 50  0001 C CNN
F 4 "0603" H 6700 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 6700 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6700 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 6930 5780 60  0001 C CNN "Digi-Key PN"
	1    6630 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F68
P 6430 5380
AR Path="/5BAAE2B6/60250F68" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F68" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F68" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F68" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F68" Ref="R?"  Part="1" 
F 0 "R?" V 6330 5380 50  0000 C CNN
F 1 "10K" V 6430 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6430 5380 50  0001 C CNN
F 3 "" H 6430 5380 50  0001 C CNN
F 4 "0603" H 6500 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 6500 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6500 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 6730 5780 60  0001 C CNN "Digi-Key PN"
	1    6430 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F76
P 6230 5380
AR Path="/5BAAE2B6/60250F76" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/60250F76" Ref="R?"  Part="1" 
AR Path="/5BBE424C/60250F76" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/60250F76" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F76" Ref="R?"  Part="1" 
F 0 "R?" V 6130 5380 50  0000 C CNN
F 1 "10K" V 6230 5380 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6230 5380 50  0001 C CNN
F 3 "" H 6230 5380 50  0001 C CNN
F 4 "0603" H 6300 5470 50  0001 L CNN "display_footprint"
F 5 "1%" H 6300 5380 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 6300 5300 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 6530 5780 60  0001 C CNN "Digi-Key PN"
	1    6230 5380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F83
P 8350 4250
AR Path="/5EAE2D66/60250F83" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250F83" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250F83" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F83" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4360 50  0000 L CNN
F 1 "10" V 8350 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4250 50  0001 C CNN
F 3 "" H 8350 4250 50  0001 C CNN
F 4 "0402" V 8450 4250 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4250 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4250 50  0001 C CNN "Wattage"
	1    8350 4250
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F90
P 8350 4350
AR Path="/5EAE2D66/60250F90" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250F90" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250F90" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F90" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4460 50  0000 L CNN
F 1 "10" V 8350 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4350 50  0001 C CNN
F 3 "" H 8350 4350 50  0001 C CNN
F 4 "0402" V 8450 4350 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4350 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4350 50  0001 C CNN "Wattage"
	1    8350 4350
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250F9D
P 8350 4450
AR Path="/5EAE2D66/60250F9D" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250F9D" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250F9D" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250F9D" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4560 50  0000 L CNN
F 1 "10" V 8350 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4450 50  0001 C CNN
F 3 "" H 8350 4450 50  0001 C CNN
F 4 "0402" V 8450 4450 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4450 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4450 50  0001 C CNN "Wattage"
	1    8350 4450
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250FAA
P 8350 4550
AR Path="/5EAE2D66/60250FAA" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250FAA" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250FAA" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250FAA" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4660 50  0000 L CNN
F 1 "10" V 8350 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4550 50  0001 C CNN
F 3 "" H 8350 4550 50  0001 C CNN
F 4 "0402" V 8450 4550 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4550 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4550 50  0001 C CNN "Wattage"
	1    8350 4550
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250FB7
P 8350 4650
AR Path="/5EAE2D66/60250FB7" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250FB7" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250FB7" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250FB7" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4760 50  0000 L CNN
F 1 "10" V 8350 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4650 50  0001 C CNN
F 3 "" H 8350 4650 50  0001 C CNN
F 4 "0402" V 8450 4650 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4650 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4650 50  0001 C CNN "Wattage"
	1    8350 4650
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60250FC4
P 8350 4750
AR Path="/5EAE2D66/60250FC4" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60250FC4" Ref="R?"  Part="1" 
AR Path="/5F581B64/60250FC4" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60250FC4" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4860 50  0000 L CNN
F 1 "10" V 8350 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4750 50  0001 C CNN
F 3 "" H 8350 4750 50  0001 C CNN
F 4 "0402" V 8450 4750 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4750 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4750 50  0001 C CNN "Wattage"
	1    8350 4750
	0    -1   1    0   
$EndComp
Wire Wire Line
	8200 4250 7630 4250
Wire Wire Line
	8200 4350 7430 4350
Wire Wire Line
	8200 4450 7230 4450
Wire Wire Line
	8200 4550 7030 4550
Wire Wire Line
	8200 4650 6830 4650
Wire Wire Line
	8200 4750 6630 4750
Wire Wire Line
	8200 4850 6430 4850
Wire Wire Line
	8200 4950 6230 4950
$Comp
L power:GND #PWR?
U 1 1 60250FDA
P 7630 5530
AR Path="/5BAAE2B6/60250FDA" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60250FDA" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60250FDA" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60250FDA" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60250FDA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7630 5280 50  0001 C CNN
F 1 "GND" H 7630 5380 50  0000 C CNN
F 2 "" H 7630 5530 50  0001 C CNN
F 3 "" H 7630 5530 50  0001 C CNN
	1    7630 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60250FE4
P 7430 5530
AR Path="/5BAAE2B6/60250FE4" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60250FE4" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60250FE4" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60250FE4" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60250FE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7430 5280 50  0001 C CNN
F 1 "GND" H 7430 5380 50  0000 C CNN
F 2 "" H 7430 5530 50  0001 C CNN
F 3 "" H 7430 5530 50  0001 C CNN
	1    7430 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60250FEE
P 7230 5530
AR Path="/5BAAE2B6/60250FEE" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60250FEE" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60250FEE" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60250FEE" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60250FEE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7230 5280 50  0001 C CNN
F 1 "GND" H 7230 5380 50  0000 C CNN
F 2 "" H 7230 5530 50  0001 C CNN
F 3 "" H 7230 5530 50  0001 C CNN
	1    7230 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60250FF8
P 7030 5530
AR Path="/5BAAE2B6/60250FF8" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60250FF8" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60250FF8" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60250FF8" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60250FF8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7030 5280 50  0001 C CNN
F 1 "GND" H 7030 5380 50  0000 C CNN
F 2 "" H 7030 5530 50  0001 C CNN
F 3 "" H 7030 5530 50  0001 C CNN
	1    7030 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251002
P 6830 5530
AR Path="/5BAAE2B6/60251002" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60251002" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60251002" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60251002" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60251002" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6830 5280 50  0001 C CNN
F 1 "GND" H 6830 5380 50  0000 C CNN
F 2 "" H 6830 5530 50  0001 C CNN
F 3 "" H 6830 5530 50  0001 C CNN
	1    6830 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6025100C
P 6630 5530
AR Path="/5BAAE2B6/6025100C" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/6025100C" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/6025100C" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/6025100C" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/6025100C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6630 5280 50  0001 C CNN
F 1 "GND" H 6630 5380 50  0000 C CNN
F 2 "" H 6630 5530 50  0001 C CNN
F 3 "" H 6630 5530 50  0001 C CNN
	1    6630 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251016
P 6430 5530
AR Path="/5BAAE2B6/60251016" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60251016" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60251016" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60251016" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60251016" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6430 5280 50  0001 C CNN
F 1 "GND" H 6430 5380 50  0000 C CNN
F 2 "" H 6430 5530 50  0001 C CNN
F 3 "" H 6430 5530 50  0001 C CNN
	1    6430 5530
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60251020
P 6230 5530
AR Path="/5BAAE2B6/60251020" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/60251020" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/60251020" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/60251020" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/60251020" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6230 5280 50  0001 C CNN
F 1 "GND" H 6230 5380 50  0000 C CNN
F 2 "" H 6230 5530 50  0001 C CNN
F 3 "" H 6230 5530 50  0001 C CNN
	1    6230 5530
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7630 5230 7630 4250
Connection ~ 7630 4250
Wire Wire Line
	7630 4250 5780 4250
Wire Wire Line
	7430 5230 7430 4350
Connection ~ 7430 4350
Wire Wire Line
	7430 4350 5780 4350
Wire Wire Line
	7230 5230 7230 4450
Connection ~ 7230 4450
Wire Wire Line
	7230 4450 5780 4450
Wire Wire Line
	7030 5230 7030 4550
Connection ~ 7030 4550
Wire Wire Line
	7030 4550 5780 4550
Wire Wire Line
	6830 5230 6830 4650
Connection ~ 6830 4650
Wire Wire Line
	6830 4650 5780 4650
Wire Wire Line
	6630 5230 6630 4750
Connection ~ 6630 4750
Wire Wire Line
	6630 4750 5780 4750
Wire Wire Line
	6430 5230 6430 4850
Connection ~ 6430 4850
Wire Wire Line
	6430 4850 5780 4850
Wire Wire Line
	6230 5230 6230 4950
Connection ~ 6230 4950
Wire Wire Line
	6230 4950 5780 4950
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251045
P 8350 4850
AR Path="/5EAE2D66/60251045" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60251045" Ref="R?"  Part="1" 
AR Path="/5F581B64/60251045" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60251045" Ref="R?"  Part="1" 
F 0 "R?" V 8300 4960 50  0000 L CNN
F 1 "10" V 8350 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4850 50  0001 C CNN
F 3 "" H 8350 4850 50  0001 C CNN
F 4 "0402" V 8450 4850 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4850 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4850 50  0001 C CNN "Wattage"
	1    8350 4850
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 60251052
P 8350 4950
AR Path="/5EAE2D66/60251052" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/60251052" Ref="R?"  Part="1" 
AR Path="/5F581B64/60251052" Ref="R?"  Part="1" 
AR Path="/5F583BF6/60251052" Ref="R?"  Part="1" 
F 0 "R?" V 8300 5060 50  0000 L CNN
F 1 "10" V 8350 4950 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8350 4950 50  0001 C CNN
F 3 "" H 8350 4950 50  0001 C CNN
F 4 "0402" V 8450 4950 50  0001 C CNN "display_footprint"
F 5 "1%" V 8550 4950 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8650 4950 50  0001 C CNN "Wattage"
	1    8350 4950
	0    -1   1    0   
$EndComp
$Comp
L 74xx:74HCT541 U?
U 1 1 6019D5B0
P 5280 4750
F 0 "U?" H 4980 5400 50  0000 C CNN
F 1 "74HCT541" H 4980 4100 50  0000 C CNN
F 2 "Housings_SSOP:SSOP-20_4.4x6.5mm_Pitch0.65mm" H 5280 4750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HCT541" H 5280 4750 50  0001 C CNN
F 4 "296-26499-1-ND" H 5280 4750 50  0001 C CNN "Digi-Key PN"
	1    5280 4750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
