EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 14 34
Title "LED Panel Controller"
Date "2021-03-31"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom_Library:DS1683 U1401
U 1 1 5B5039F7
P 4840 4100
F 0 "U1401" H 4840 3750 60  0000 C CNN
F 1 "DS1683" H 4840 4450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 4740 4400 60  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1683.pdf" H 4740 4400 60  0001 C CNN
F 4 "DS1683S+-ND" H 4940 3850 60  0001 C CNN "Digi-Key PN"
F 5 "ETC" H 4840 3640 50  0000 C CNN "Configuration"
	1    4840 4100
	1    0    0    -1  
$EndComp
NoConn ~ 4440 3900
$Comp
L power:GND #PWR01405
U 1 1 5B50444E
P 4360 4380
F 0 "#PWR01405" H 4360 4130 50  0001 C CNN
F 1 "GND" H 4360 4230 50  0000 C CNN
F 2 "" H 4360 4380 50  0001 C CNN
F 3 "" H 4360 4380 50  0001 C CNN
	1    4360 4380
	1    0    0    -1  
$EndComp
Wire Wire Line
	4360 4380 4360 4300
Wire Wire Line
	4360 4300 4440 4300
Wire Wire Line
	5320 3900 5240 3900
$Comp
L power:GND #PWR01407
U 1 1 5B507BED
P 4830 3270
F 0 "#PWR01407" H 4830 3020 50  0001 C CNN
F 1 "GND" H 4830 3120 50  0000 C CNN
F 2 "" H 4830 3270 50  0001 C CNN
F 3 "" H 4830 3270 50  0001 C CNN
	1    4830 3270
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC1401
U 1 1 5E383387
P 5040 5100
F 0 "DOC1401" H 5040 5350 60  0001 C CNN
F 1 "0x6B" H 4590 5100 60  0000 L CNN
F 2 "" H 5040 5450 60  0001 C CNN
F 3 "" H 5040 5450 60  0001 C CNN
	1    5040 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01404
U 1 1 5E2B2965
P 4180 3270
F 0 "#PWR01404" H 4180 3020 50  0001 C CNN
F 1 "GND" H 4180 3120 50  0000 C CNN
F 2 "" H 4180 3270 50  0001 C CNN
F 3 "" H 4180 3270 50  0001 C CNN
	1    4180 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01403
U 1 1 5E2B2CA6
P 3530 3270
F 0 "#PWR01403" H 3530 3020 50  0001 C CNN
F 1 "GND" H 3530 3120 50  0000 C CNN
F 2 "" H 3530 3270 50  0001 C CNN
F 3 "" H 3530 3270 50  0001 C CNN
	1    3530 3270
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01402
U 1 1 5E2B305D
P 2880 3270
F 0 "#PWR01402" H 2880 3020 50  0001 C CNN
F 1 "GND" H 2880 3120 50  0000 C CNN
F 2 "" H 2880 3270 50  0001 C CNN
F 3 "" H 2880 3270 50  0001 C CNN
	1    2880 3270
	1    0    0    -1  
$EndComp
Wire Wire Line
	5320 2890 4830 2890
Wire Wire Line
	2880 2890 2880 2970
Wire Wire Line
	5320 2890 5320 3900
Wire Wire Line
	3530 2970 3530 2890
Connection ~ 3530 2890
Wire Wire Line
	3530 2890 2880 2890
Wire Wire Line
	4180 2970 4180 2890
Connection ~ 4180 2890
Wire Wire Line
	4180 2890 3530 2890
Wire Wire Line
	4830 2970 4830 2890
Connection ~ 4830 2890
Wire Wire Line
	4830 2890 4180 2890
Wire Wire Line
	2880 2810 2880 2890
Connection ~ 2880 2890
Text GLabel 5240 4200 2    50   Input ~ 0
I2C_SCL
Text GLabel 5240 4300 2    50   BiDi ~ 0
I2C_SDA
$Comp
L power:+3.3V #PWR01406
U 1 1 5E36CA22
P 4440 4100
F 0 "#PWR01406" H 4440 3950 50  0001 C CNN
F 1 "+3.3V" V 4440 4240 50  0000 L CNN
F 2 "" H 4440 4100 50  0001 C CNN
F 3 "" H 4440 4100 50  0001 C CNN
	1    4440 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01401
U 1 1 5E36D120
P 2880 2510
F 0 "#PWR01401" H 2880 2360 50  0001 C CNN
F 1 "+3.3V" H 2880 2650 50  0000 C CNN
F 2 "" H 2880 2510 50  0001 C CNN
F 3 "" H 2880 2510 50  0001 C CNN
	1    2880 2510
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01401
U 1 1 5E4BADF7
P 5320 2810
F 0 "#FLG01401" H 5320 2885 50  0001 C CNN
F 1 "PWR_FLAG" H 5320 2960 50  0000 C CNN
F 2 "" H 5320 2810 50  0001 C CNN
F 3 "~" H 5320 2810 50  0001 C CNN
	1    5320 2810
	1    0    0    -1  
$EndComp
Wire Wire Line
	5320 2810 5320 2890
Connection ~ 5320 2890
$Comp
L Diode:BAT48JFILM D?
U 1 1 5EB6FFC8
P 2880 2660
AR Path="/5EAE2D8A/5EB6FFC8" Ref="D?"  Part="1" 
AR Path="/5EAE3021/5EB6FFC8" Ref="D?"  Part="1" 
AR Path="/5F582A92/5EB6FFC8" Ref="D1401"  Part="1" 
F 0 "D1401" V 2950 2540 50  0000 R CNN
F 1 "BAT48JFILM" V 2850 2540 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323" H 2880 2485 50  0001 C CNN
F 3 "www.st.com/resource/en/datasheet/bat48.pdf" H 2880 2660 50  0001 C CNN
F 4 "497-5711-1-ND" H 2880 2660 50  0001 C CNN "Digi-Key PN"
F 5 "ETC" V 2880 2830 50  0000 C CNN "Configuration"
	1    2880 2660
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EC1774A
P 2880 3120
AR Path="/5CB7718D/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5A557C58/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5CB25152/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5E697934/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5EC1774A" Ref="C?"  Part="1" 
AR Path="/5F582A92/5EC1774A" Ref="C1401"  Part="1" 
F 0 "C1401" H 2905 3220 50  0000 L CNN
F 1 "10uF" H 2905 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2918 2970 50  0001 C CNN
F 3 "" H 2905 3220 50  0001 C CNN
F 4 "0402" H 2730 3220 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 2730 3120 50  0000 R CNN "Voltage"
F 6 "X5R" H 2730 3020 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 2880 3120 50  0001 C CNN "Digi-Key PN"
F 8 "ETC" H 2730 3300 50  0000 R CNN "Configuration"
	1    2880 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5EC1A081
P 4830 3120
AR Path="/5BAAE16C/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5E9E0E87/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5EAE2D66/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5EC1A081" Ref="C?"  Part="1" 
AR Path="/5F582A92/5EC1A081" Ref="C1404"  Part="1" 
F 0 "C1404" H 4855 3220 50  0000 L CNN
F 1 "0.1uF" H 4855 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4868 2970 50  0001 C CNN
F 3 "" H 4855 3220 50  0001 C CNN
F 4 "0402" H 4680 3220 50  0000 R CNN "display_footprint"
F 5 "50V" H 4680 3120 50  0000 R CNN "Voltage"
F 6 "X7R" H 4680 3020 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 5255 3620 60  0001 C CNN "Digi-Key PN"
F 8 "ETC" H 4680 3300 50  0000 R CNN "Configuration"
	1    4830 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 601FEAD5
P 3530 3120
AR Path="/5CB7718D/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5E0DC082/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5E0F9110/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5A557C58/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5CB25152/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5E697934/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5EAE3021/601FEAD5" Ref="C?"  Part="1" 
AR Path="/5F582A92/601FEAD5" Ref="C1402"  Part="1" 
F 0 "C1402" H 3555 3220 50  0000 L CNN
F 1 "10uF" H 3555 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3568 2970 50  0001 C CNN
F 3 "" H 3555 3220 50  0001 C CNN
F 4 "0402" H 3380 3220 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3380 3120 50  0000 R CNN "Voltage"
F 6 "X5R" H 3380 3020 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 3530 3120 50  0001 C CNN "Digi-Key PN"
F 8 "ETC" H 3380 3300 50  0000 R CNN "Configuration"
	1    3530 3120
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 601FEDDA
P 4180 3120
AR Path="/5CB7718D/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5E0DC082/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5E0F9110/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5A557C58/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5CB25152/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5E697934/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5EAE3021/601FEDDA" Ref="C?"  Part="1" 
AR Path="/5F582A92/601FEDDA" Ref="C1403"  Part="1" 
F 0 "C1403" H 4205 3220 50  0000 L CNN
F 1 "10uF" H 4205 3020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4218 2970 50  0001 C CNN
F 3 "" H 4205 3220 50  0001 C CNN
F 4 "0402" H 4030 3220 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 4030 3120 50  0000 R CNN "Voltage"
F 6 "X5R" H 4030 3020 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 4180 3120 50  0001 C CNN "Digi-Key PN"
F 8 "ETC" H 4030 3300 50  0000 R CNN "Configuration"
	1    4180 3120
	1    0    0    -1  
$EndComp
$EndSCHEMATC
