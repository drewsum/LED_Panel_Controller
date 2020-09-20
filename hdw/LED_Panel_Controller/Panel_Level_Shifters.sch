EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 31 33
Title "Electronic Display Logic Board"
Date "2018-12-15"
Rev "A"
Comp "Marquette University Senior Design 2018/2019 Group E44"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 5BB6DBF5
P 6400 3220
AR Path="/5BAAE2B6/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5BB6DBF5" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5BB6DBF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 2970 50  0001 C CNN
F 1 "GND" H 6400 3070 50  0000 C CNN
F 2 "" H 6400 3220 50  0001 C CNN
F 3 "" H 6400 3220 50  0001 C CNN
	1    6400 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2920 5840 2920
Wire Wire Line
	5840 2920 5840 2820
Wire Wire Line
	5840 2820 5900 2820
$Comp
L power:+5V #PWR?
U 1 1 5BF4791B
P 6400 1620
F 0 "#PWR?" H 6400 1470 50  0001 C CNN
F 1 "+5V" H 6400 1760 50  0000 C CNN
F 2 "" H 6400 1620 50  0001 C CNN
F 3 "" H 6400 1620 50  0001 C CNN
	1    6400 1620
	1    0    0    -1  
$EndComp
Text Notes 550  700  0    100  ~ 20
I/O Buffers
$Comp
L power:+3.3V #PWR?
U 1 1 5BB6DC87
P 4220 1510
AR Path="/5BAAE2B6/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5BB6DC87" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5BB6DC87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4220 1360 50  0001 C CNN
F 1 "+3.3V" H 4220 1650 50  0000 C CNN
F 2 "" H 4220 1510 50  0001 C CNN
F 3 "" H 4220 1510 50  0001 C CNN
	1    4220 1510
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB6DBFF
P 4220 1660
AR Path="/5BAAE2B6/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/5BB6DBFF" Ref="R?"  Part="1" 
AR Path="/5F583BF6/5BB6DBFF" Ref="R?"  Part="1" 
F 0 "R?" H 4160 1660 50  0000 R CNN
F 1 "10K" V 4220 1660 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4220 1660 50  0001 C CNN
F 3 "" H 4220 1660 50  0001 C CNN
F 4 "0603" H 4290 1750 50  0001 L CNN "display_footprint"
F 5 "1%" H 4290 1660 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4290 1580 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4520 2060 60  0001 C CNN "Digi-Key PN"
	1    4220 1660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5840 2820 4220 2820
Wire Wire Line
	4220 2820 4220 1810
Connection ~ 5840 2820
$Comp
L power:GND #PWR?
U 1 1 5CBF014C
P 6400 5620
AR Path="/5BAAE2B6/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5CBF014C" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5CBF014C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 5370 50  0001 C CNN
F 1 "GND" H 6400 5470 50  0000 C CNN
F 2 "" H 6400 5620 50  0001 C CNN
F 3 "" H 6400 5620 50  0001 C CNN
	1    6400 5620
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5320 5840 5320
Wire Wire Line
	5840 5320 5840 5220
Wire Wire Line
	5840 5220 5900 5220
$Comp
L power:+5V #PWR?
U 1 1 5CBF019C
P 6400 4020
F 0 "#PWR?" H 6400 3870 50  0001 C CNN
F 1 "+5V" H 6400 4160 50  0000 C CNN
F 2 "" H 6400 4020 50  0001 C CNN
F 3 "" H 6400 4020 50  0001 C CNN
	1    6400 4020
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CBF01BB
P 4220 3910
AR Path="/5BAAE2B6/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5CBF01BB" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5CBF01BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4220 3760 50  0001 C CNN
F 1 "+3.3V" H 4220 4050 50  0000 C CNN
F 2 "" H 4220 3910 50  0001 C CNN
F 3 "" H 4220 3910 50  0001 C CNN
	1    4220 3910
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5CBF01C9
P 4220 4060
AR Path="/5BAAE2B6/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5BB6CF6D/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5BBE424C/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5CB8A16A/5CBF01C9" Ref="R?"  Part="1" 
AR Path="/5F583BF6/5CBF01C9" Ref="R?"  Part="1" 
F 0 "R?" H 4160 4060 50  0000 R CNN
F 1 "10K" V 4220 4060 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4220 4060 50  0001 C CNN
F 3 "" H 4220 4060 50  0001 C CNN
F 4 "0603" H 4290 4150 50  0001 L CNN "display_footprint"
F 5 "1%" H 4290 4060 50  0001 L CNN "Tolerance"
F 6 "1/10W" H 4290 3980 50  0001 L CNN "Wattage"
F 7 "RHM10KADCT-ND" H 4520 4460 60  0001 C CNN "Digi-Key PN"
	1    4220 4060
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5840 5220 4220 5220
Wire Wire Line
	4220 5220 4220 4210
Connection ~ 5840 5220
Text GLabel 3550 2820 0    40   Input ~ 0
~IO_Level_Shift_Enable
Wire Wire Line
	3550 2820 4220 2820
Connection ~ 4220 2820
Text GLabel 3550 5220 0    40   Input ~ 0
~IO_Level_Shift_Enable
Wire Wire Line
	3550 5220 4220 5220
Connection ~ 4220 5220
$Comp
L Custom_Library:74VHC541 U?
U 1 1 5E1A8051
P 6400 2420
F 0 "U?" H 6100 3070 50  0000 C CNN
F 1 "74VHC541" H 6100 1770 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-20-1EP_2.5x4.5mm_P0.5mm_EP1x2.9mm" H 6400 2420 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74VHC_VHCT541.pdf" H 6400 2420 50  0001 C CNN
F 4 "1727-7068-1-ND" H 6400 2420 50  0001 C CNN "Digi-Key PN"
	1    6400 2420
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74VHC541 U?
U 1 1 5E1A88E3
P 6400 4820
F 0 "U?" H 6100 5470 50  0000 C CNN
F 1 "74VHC541" H 6100 4170 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-20-1EP_2.5x4.5mm_P0.5mm_EP1x2.9mm" H 6400 4820 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74VHC_VHCT541.pdf" H 6400 4820 50  0001 C CNN
F 4 "1727-7068-1-ND" H 6400 4820 50  0001 C CNN "Digi-Key PN"
	1    6400 4820
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack08 RN?
U 1 1 5E1B6674
P 5040 3220
F 0 "RN?" H 5430 3130 50  0000 L CNN
F 1 "10k" H 5430 3230 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 5515 3220 50  0001 C CNN
F 3 "~" H 5040 3220 50  0001 C CNN
F 4 "Y1103CT-ND" H 5040 3220 50  0001 C CNN "Digi-Key PN"
	1    5040 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	4640 3020 4640 1920
Wire Wire Line
	4640 1920 5900 1920
Wire Wire Line
	4740 3020 4740 2020
Wire Wire Line
	4740 2020 5900 2020
Wire Wire Line
	4840 3020 4840 2120
Wire Wire Line
	4840 2120 5900 2120
Wire Wire Line
	4940 3020 4940 2220
Wire Wire Line
	4940 2220 5900 2220
Wire Wire Line
	5040 3020 5040 2320
Wire Wire Line
	5040 2320 5900 2320
Wire Wire Line
	5140 3020 5140 2420
Wire Wire Line
	5140 2420 5900 2420
Wire Wire Line
	5240 3020 5240 2520
Wire Wire Line
	5240 2520 5900 2520
Wire Wire Line
	5340 3020 5340 2620
Wire Wire Line
	5340 2620 5900 2620
$Comp
L power:GND #PWR?
U 1 1 5E1CF451
P 4990 3500
AR Path="/5BAAE2B6/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E1CF451" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E1CF451" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4990 3250 50  0001 C CNN
F 1 "GND" H 4990 3350 50  0000 C CNN
F 2 "" H 4990 3500 50  0001 C CNN
F 3 "" H 4990 3500 50  0001 C CNN
	1    4990 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4990 3500 4990 3460
Wire Wire Line
	4990 3460 4940 3460
Wire Wire Line
	4640 3460 4640 3420
Wire Wire Line
	4990 3460 5040 3460
Wire Wire Line
	5340 3460 5340 3420
Connection ~ 4990 3460
Wire Wire Line
	5240 3420 5240 3460
Connection ~ 5240 3460
Wire Wire Line
	5240 3460 5340 3460
Wire Wire Line
	5140 3420 5140 3460
Connection ~ 5140 3460
Wire Wire Line
	5140 3460 5240 3460
Wire Wire Line
	5040 3420 5040 3460
Connection ~ 5040 3460
Wire Wire Line
	5040 3460 5140 3460
Wire Wire Line
	4940 3420 4940 3460
Connection ~ 4940 3460
Wire Wire Line
	4940 3460 4840 3460
Wire Wire Line
	4840 3420 4840 3460
Connection ~ 4840 3460
Wire Wire Line
	4840 3460 4740 3460
Wire Wire Line
	4740 3420 4740 3460
Connection ~ 4740 3460
Wire Wire Line
	4740 3460 4640 3460
Wire Wire Line
	3850 4720 5040 4720
Wire Wire Line
	3850 4620 4940 4620
Wire Wire Line
	3850 4520 4840 4520
Wire Wire Line
	3850 4420 4740 4420
Wire Wire Line
	3850 4320 4640 4320
Wire Wire Line
	3850 4820 5140 4820
Wire Wire Line
	3850 5020 5340 5020
Wire Wire Line
	3850 4920 5240 4920
$Comp
L Device:R_Pack08 RN?
U 1 1 5E1EC35D
P 5040 5620
F 0 "RN?" H 5430 5530 50  0000 L CNN
F 1 "10k" H 5430 5630 50  0000 L CNN
F 2 "Resistors_SMD:R_Array_Convex_8x0602" V 5515 5620 50  0001 C CNN
F 3 "~" H 5040 5620 50  0001 C CNN
F 4 "Y1103CT-ND" H 5040 5620 50  0001 C CNN "Digi-Key PN"
	1    5040 5620
	1    0    0    -1  
$EndComp
Wire Wire Line
	4640 5420 4640 4320
Wire Wire Line
	4740 5420 4740 4420
Wire Wire Line
	4840 5420 4840 4520
Wire Wire Line
	4940 5420 4940 4620
Wire Wire Line
	5040 5420 5040 4720
Wire Wire Line
	5140 5420 5140 4820
Wire Wire Line
	5240 5420 5240 4920
Wire Wire Line
	5340 5420 5340 5020
$Comp
L power:GND #PWR?
U 1 1 5E1EC36B
P 4990 5900
AR Path="/5BAAE2B6/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5BB6CF6D/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5BBE424C/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E1EC36B" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E1EC36B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4990 5650 50  0001 C CNN
F 1 "GND" H 4990 5750 50  0000 C CNN
F 2 "" H 4990 5900 50  0001 C CNN
F 3 "" H 4990 5900 50  0001 C CNN
	1    4990 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4990 5900 4990 5860
Wire Wire Line
	4990 5860 4940 5860
Wire Wire Line
	4640 5860 4640 5820
Wire Wire Line
	4990 5860 5040 5860
Wire Wire Line
	5340 5860 5340 5820
Connection ~ 4990 5860
Wire Wire Line
	5240 5820 5240 5860
Connection ~ 5240 5860
Wire Wire Line
	5240 5860 5340 5860
Wire Wire Line
	5140 5820 5140 5860
Connection ~ 5140 5860
Wire Wire Line
	5140 5860 5240 5860
Wire Wire Line
	5040 5820 5040 5860
Connection ~ 5040 5860
Wire Wire Line
	5040 5860 5140 5860
Wire Wire Line
	4940 5820 4940 5860
Connection ~ 4940 5860
Wire Wire Line
	4940 5860 4840 5860
Wire Wire Line
	4840 5820 4840 5860
Connection ~ 4840 5860
Wire Wire Line
	4840 5860 4740 5860
Wire Wire Line
	4740 5820 4740 5860
Connection ~ 4740 5860
Wire Wire Line
	4740 5860 4640 5860
Connection ~ 4640 4320
Wire Wire Line
	4640 4320 5900 4320
Connection ~ 4740 4420
Wire Wire Line
	4740 4420 5900 4420
Connection ~ 4840 4520
Wire Wire Line
	4840 4520 5900 4520
Connection ~ 4940 4620
Wire Wire Line
	4940 4620 5900 4620
Connection ~ 5040 4720
Wire Wire Line
	5040 4720 5900 4720
Connection ~ 5140 4820
Wire Wire Line
	5140 4820 5900 4820
Connection ~ 5240 4920
Wire Wire Line
	5240 4920 5900 4920
Connection ~ 5340 5020
Wire Wire Line
	5340 5020 5900 5020
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E51B189
P 8000 5890
AR Path="/5BAAE1F3/5E51B189" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5E51B189" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E51B189" Ref="C?"  Part="1" 
AR Path="/5CB8A16A/5E51B189" Ref="C?"  Part="1" 
AR Path="/5F583BF6/5E51B189" Ref="C?"  Part="1" 
F 0 "C?" H 8025 5990 50  0000 L CNN
F 1 "0.1uF" H 8025 5790 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8038 5740 50  0001 C CNN
F 3 "" H 8025 5990 50  0001 C CNN
F 4 "311-1344-1-ND" H 8425 6390 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 7850 5990 50  0000 R CNN "display_footprint"
F 6 "50V" H 7850 5890 50  0000 R CNN "Voltage"
F 7 "X7R" H 7850 5790 50  0000 R CNN "Dielectric"
	1    8000 5890
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E51B1A1
P 8000 6040
AR Path="/5CB7A8BC/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5E51B1A1" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5E51B1A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 5790 50  0001 C CNN
F 1 "GND" H 8000 5890 50  0000 C CNN
F 2 "" H 8000 6040 50  0001 C CNN
F 3 "" H 8000 6040 50  0001 C CNN
	1    8000 6040
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E5234B3
P 8000 5740
F 0 "#PWR?" H 8000 5590 50  0001 C CNN
F 1 "+5V" H 8000 5880 50  0000 C CNN
F 2 "" H 8000 5740 50  0001 C CNN
F 3 "" H 8000 5740 50  0001 C CNN
	1    8000 5740
	1    0    0    -1  
$EndComp
Connection ~ 5240 2520
Wire Wire Line
	3850 2520 5240 2520
Connection ~ 5340 2620
Wire Wire Line
	3850 2620 5340 2620
Connection ~ 5140 2420
Wire Wire Line
	3850 2420 5140 2420
Connection ~ 4640 1920
Wire Wire Line
	3850 1920 4640 1920
Connection ~ 4740 2020
Wire Wire Line
	3850 2020 4740 2020
Connection ~ 4840 2120
Wire Wire Line
	3850 2120 4840 2120
Connection ~ 4940 2220
Wire Wire Line
	3850 2220 4940 2220
Connection ~ 5040 2320
Wire Wire Line
	3850 2320 5040 2320
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6D13E2
P 8000 3470
AR Path="/5BAAE1F3/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5CB8A16A/5F6D13E2" Ref="C?"  Part="1" 
AR Path="/5F583BF6/5F6D13E2" Ref="C?"  Part="1" 
F 0 "C?" H 8025 3570 50  0000 L CNN
F 1 "0.1uF" H 8025 3370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8038 3320 50  0001 C CNN
F 3 "" H 8025 3570 50  0001 C CNN
F 4 "311-1344-1-ND" H 8425 3970 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 7850 3570 50  0000 R CNN "display_footprint"
F 6 "50V" H 7850 3470 50  0000 R CNN "Voltage"
F 7 "X7R" H 7850 3370 50  0000 R CNN "Dielectric"
	1    8000 3470
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6D13EC
P 8000 3620
AR Path="/5CB7A8BC/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5CB8A16A/5F6D13EC" Ref="#PWR?"  Part="1" 
AR Path="/5F583BF6/5F6D13EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 3370 50  0001 C CNN
F 1 "GND" H 8000 3470 50  0000 C CNN
F 2 "" H 8000 3620 50  0001 C CNN
F 3 "" H 8000 3620 50  0001 C CNN
	1    8000 3620
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F6D13F6
P 8000 3320
F 0 "#PWR?" H 8000 3170 50  0001 C CNN
F 1 "+5V" H 8000 3460 50  0000 C CNN
F 2 "" H 8000 3320 50  0001 C CNN
F 3 "" H 8000 3320 50  0001 C CNN
	1    8000 3320
	1    0    0    -1  
$EndComp
$EndSCHEMATC
