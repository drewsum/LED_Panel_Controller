EESchema Schematic File Version 4
LIBS:LED_Panel_Controller-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 15 34
Title "Analog Clock"
Date "2020-08-15"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAEE8C5
P 2360 3340
F 0 "C?" H 2385 3440 50  0000 L CNN
F 1 "0.1uF" H 2385 3240 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2398 3190 50  0001 C CNN
F 3 "" H 2385 3440 50  0001 C CNN
F 4 "0603" H 2210 3440 50  0000 R CNN "display_footprint"
F 5 "50V" H 2210 3340 50  0000 R CNN "Voltage"
F 6 "X7R" H 2210 3240 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2785 3840 60  0001 C CNN "Digi-Key PN"
	1    2360 3340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5BAF1727
P 2360 3190
F 0 "#PWR?" H 2360 3040 50  0001 C CNN
F 1 "+5V_USB" H 2360 3330 50  0000 C CNN
F 2 "" H 2360 3190 50  0001 C CNN
F 3 "" H 2360 3190 50  0001 C CNN
	1    2360 3190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5BAF173C
P 3040 3190
F 0 "#PWR?" H 3040 3040 50  0001 C CNN
F 1 "+5V_USB" H 3040 3330 50  0000 C CNN
F 2 "" H 3040 3190 50  0001 C CNN
F 3 "" H 3040 3190 50  0001 C CNN
	1    3040 3190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAFEEB4
P 1670 3340
F 0 "C?" H 1695 3440 50  0000 L CNN
F 1 "0.1uF" H 1695 3240 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1708 3190 50  0001 C CNN
F 3 "" H 1695 3440 50  0001 C CNN
F 4 "0603" H 1520 3440 50  0000 R CNN "display_footprint"
F 5 "50V" H 1520 3340 50  0000 R CNN "Voltage"
F 6 "X7R" H 1520 3240 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 2095 3840 60  0001 C CNN "Digi-Key PN"
	1    1670 3340
	1    0    0    -1  
$EndComp
Wire Wire Line
	6810 3290 6950 3290
Wire Wire Line
	6950 3090 6950 3290
Connection ~ 6950 3290
Wire Wire Line
	6810 3090 6950 3090
$Comp
L Device:Ferrite_Bead L?
U 1 1 5BB0BDEE
P 7200 4100
F 0 "L?" V 7500 4100 50  0000 C CNN
F 1 "600R 0.5A" V 7400 4100 50  0000 C CNN
F 2 "Inductors_SMD:L_0603" V 7130 4100 50  0001 C CNN
F 3 "~" H 7200 4100 50  0001 C CNN
F 4 "732-1593-1-ND" H -990 1010 50  0001 C CNN "Digi-Key PN"
	1    7200 4100
	0    1    -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BB10D97
P 7030 3290
F 0 "#FLG?" H 7030 3365 50  0001 C CNN
F 1 "PWR_FLAG" V 7030 3440 50  0000 L CNN
F 2 "" H 7030 3290 50  0001 C CNN
F 3 "~" H 7030 3290 50  0001 C CNN
	1    7030 3290
	0    1    1    0   
$EndComp
Text Label 6810 4700 0    50   ~ 0
CONN_USB-
Text Label 6810 4800 0    50   ~ 0
CONN_USB+
$Comp
L Custom_Library:TPD3S014DBVR U?
U 1 1 5BBEE4ED
P 6260 3290
F 0 "U?" H 6560 2940 50  0000 L CNN
F 1 "TPD3S014DBVR" H 6260 3640 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 6410 2740 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd3s014.pdf" H 6410 2540 50  0001 L CNN
F 4 "296-38835-1-ND" H 6410 2640 50  0001 L CNN "Digi-Key PN"
	1    6260 3290
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 4100 6950 4100
$Comp
L Custom_Library:COM_Port_Settings DOC?
U 1 1 5BF874C4
P 8880 3380
F 0 "DOC?" H 8880 3780 60  0001 C CNN
F 1 "COM_Port_Settings" H 8880 3880 60  0001 C CNN
F 2 "" H 8880 3880 60  0001 C CNN
F 3 "" H 8880 3880 60  0001 C CNN
F 4 "115200 bps" H 9630 3530 60  0000 R CNN "Baud_Rate"
F 5 "8 bit" H 9630 3430 60  0000 R CNN "Data_Length"
F 6 "None" H 9630 3330 60  0000 R CNN "Parity"
F 7 "1" H 9630 3230 60  0000 R CNN "Stop_Bits"
F 8 "None" H 9630 3130 60  0000 R CNN "Flow_Control"
	1    8880 3380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BF9D312
P 2430 7080
F 0 "R?" H 2370 7080 50  0000 R CNN
F 1 "6.04k" V 2430 7080 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2430 7080 50  0001 C CNN
F 3 "" H 2430 7080 50  0001 C CNN
F 4 "0603" H 2530 7170 50  0000 L CNN "display_footprint"
F 5 "1%" H 2530 7080 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2540 7000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT6K04CT-ND" H 2730 7480 60  0001 C CNN "Digi-Key PN"
	1    2430 7080
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BF9D416
P 2430 7570
F 0 "R?" H 2370 7570 50  0000 R CNN
F 1 "40.2k" V 2430 7570 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2430 7570 50  0001 C CNN
F 3 "" H 2430 7570 50  0001 C CNN
F 4 "0603" H 2530 7660 50  0000 L CNN "display_footprint"
F 5 "1%" H 2530 7570 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2540 7490 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT40K2CT-ND" H 2730 7970 60  0001 C CNN "Digi-Key PN"
	1    2430 7570
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BF9D46E
P 2430 6540
F 0 "R?" H 2370 6540 50  0000 R CNN
F 1 "487k" V 2430 6540 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2430 6540 50  0001 C CNN
F 3 "" H 2430 6540 50  0001 C CNN
F 4 "0603" H 2530 6630 50  0000 L CNN "display_footprint"
F 5 "1%" H 2530 6540 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 2540 6460 50  0000 L CNN "Wattage"
F 7 "311-487KHRCT-ND" H 2730 6940 60  0001 C CNN "Digi-Key PN"
	1    2430 6540
	1    0    0    -1  
$EndComp
Wire Wire Line
	2830 6840 2430 6840
Wire Wire Line
	2430 6840 2430 6690
Wire Wire Line
	2430 6840 2430 6930
Connection ~ 2430 6840
Wire Wire Line
	2830 7340 2430 7340
Wire Wire Line
	2430 7340 2430 7230
Wire Wire Line
	2430 7340 2430 7420
Connection ~ 2430 7340
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5BFA0E0D
P 2430 6390
F 0 "#PWR?" H 2430 6240 50  0001 C CNN
F 1 "+5V_USB" H 2430 6530 50  0000 C CNN
F 2 "" H 2430 6390 50  0001 C CNN
F 3 "" H 2430 6390 50  0001 C CNN
	1    2430 6390
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BFA54D6
P 4060 6490
F 0 "R?" H 4000 6490 50  0000 R CNN
F 1 "10k" V 4060 6490 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4060 6490 50  0001 C CNN
F 3 "" H 4060 6490 50  0001 C CNN
F 4 "0603" H 4160 6580 50  0000 L CNN "display_footprint"
F 5 "1%" H 4160 6490 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4170 6410 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 4360 6890 60  0001 C CNN "Digi-Key PN"
	1    4060 6490
	1    0    0    -1  
$EndComp
Wire Wire Line
	3930 7340 4060 7340
Wire Wire Line
	4060 7340 4060 6840
Wire Wire Line
	3930 6840 4060 6840
Connection ~ 4060 6840
Wire Wire Line
	4060 6840 4060 6640
$Comp
L Custom_Library:C_Custom C?
U 1 1 5C037C42
P 4410 7440
AR Path="/5BAAE1F3/5C037C42" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5C037C42" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5C037C42" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5C037C42" Ref="C?"  Part="1" 
AR Path="/5E939F76/5C037C42" Ref="C?"  Part="1" 
AR Path="/5F582AA0/5C037C42" Ref="C?"  Part="1" 
F 0 "C?" H 4435 7540 50  0000 L CNN
F 1 "0.1uF" H 4435 7340 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4448 7290 50  0001 C CNN
F 3 "" H 4435 7540 50  0001 C CNN
F 4 "399-7845-1-ND" H 4835 7940 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 4260 7540 50  0000 R CNN "display_footprint"
F 6 "50V" H 4260 7440 50  0000 R CNN "Voltage"
F 7 "X7R" H 4260 7340 50  0000 R CNN "Dielectric"
	1    4410 7440
	-1   0    0    -1  
$EndComp
Text GLabel 4370 6840 2    50   Output ~ 0
POS5_USB_PGOOD
Wire Wire Line
	4370 6840 4060 6840
$Comp
L Custom_Library:TLV6700 U?
U 1 1 5E1EE9A5
P 3380 7090
F 0 "U?" H 3680 6590 50  0000 C CNN
F 1 "TLV6700" H 3380 7090 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3380 7690 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv6700.pdf" H 3380 7090 60  0001 C CNN
F 4 "296-51696-1-ND" H 3380 7090 50  0001 C CNN "Digi-Key PN"
	1    3380 7090
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AEFB8
P 6260 3690
F 0 "#PWR?" H 6260 3440 50  0001 C CNN
F 1 "GND" H 6260 3540 50  0000 C CNN
F 2 "" H 6260 3690 50  0001 C CNN
F 3 "" H 6260 3690 50  0001 C CNN
	1    6260 3690
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B24F5
P 1670 3490
F 0 "#PWR?" H 1670 3240 50  0001 C CNN
F 1 "GND" H 1670 3340 50  0000 C CNN
F 2 "" H 1670 3490 50  0001 C CNN
F 3 "" H 1670 3490 50  0001 C CNN
	1    1670 3490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B2C90
P 2360 3490
F 0 "#PWR?" H 2360 3240 50  0001 C CNN
F 1 "GND" H 2360 3340 50  0000 C CNN
F 2 "" H 2360 3490 50  0001 C CNN
F 3 "" H 2360 3490 50  0001 C CNN
	1    2360 3490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B31F3
P 3040 3490
F 0 "#PWR?" H 3040 3240 50  0001 C CNN
F 1 "GND" H 3040 3340 50  0000 C CNN
F 2 "" H 3040 3490 50  0001 C CNN
F 3 "" H 3040 3490 50  0001 C CNN
	1    3040 3490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B587D
P 2430 7720
F 0 "#PWR?" H 2430 7470 50  0001 C CNN
F 1 "GND" H 2430 7570 50  0000 C CNN
F 2 "" H 2430 7720 50  0001 C CNN
F 3 "" H 2430 7720 50  0001 C CNN
	1    2430 7720
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B5EFB
P 3380 7690
F 0 "#PWR?" H 3380 7440 50  0001 C CNN
F 1 "GND" H 3380 7540 50  0000 C CNN
F 2 "" H 3380 7690 50  0001 C CNN
F 3 "" H 3380 7690 50  0001 C CNN
	1    3380 7690
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E9B74F0
P 4060 6340
F 0 "#PWR?" H 4060 6190 50  0001 C CNN
F 1 "+3.3V" H 4060 6480 50  0000 C CNN
F 2 "" H 4060 6340 50  0001 C CNN
F 3 "" H 4060 6340 50  0001 C CNN
	1    4060 6340
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B8D0A
P 4410 7590
F 0 "#PWR?" H 4410 7340 50  0001 C CNN
F 1 "GND" H 4410 7440 50  0000 C CNN
F 2 "" H 4410 7590 50  0001 C CNN
F 3 "" H 4410 7590 50  0001 C CNN
	1    4410 7590
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E9BDFD3
P 3380 6490
F 0 "#PWR?" H 3380 6340 50  0001 C CNN
F 1 "+3.3V" H 3380 6630 50  0000 C CNN
F 2 "" H 3380 6490 50  0001 C CNN
F 3 "" H 3380 6490 50  0001 C CNN
	1    3380 6490
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AF283
P 4410 3640
F 0 "#PWR?" H 4410 3390 50  0001 C CNN
F 1 "GND" H 4410 3490 50  0000 C CNN
F 2 "" H 4410 3640 50  0001 C CNN
F 3 "" H 4410 3640 50  0001 C CNN
	1    4410 3640
	1    0    0    -1  
$EndComp
Connection ~ 4050 3290
Wire Wire Line
	3580 3290 4050 3290
Wire Wire Line
	3580 3220 3580 3290
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5E475BF2
P 3580 3220
F 0 "#FLG?" H 3580 3295 50  0001 C CNN
F 1 "PWR_FLAG" H 3580 3370 50  0000 C CNN
F 2 "" H 3580 3220 50  0001 C CNN
F 3 "~" H 3580 3220 50  0001 C CNN
	1    3580 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3290 4410 3290
Wire Wire Line
	4050 3220 4050 3290
$Comp
L Custom_Library:TP TP?
U 1 1 5E3059D8
P 4050 3220
AR Path="/5A557C58/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5A0BC776/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5CAD2D97/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5E939F76/5E3059D8" Ref="TP?"  Part="1" 
AR Path="/5F582AA0/5E3059D8" Ref="TP?"  Part="1" 
F 0 "TP?" H 4050 3370 50  0000 C CNN
F 1 "TP" H 4050 3370 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 4050 3220 60  0001 C CNN
F 3 "" H 4050 3220 60  0000 C CNN
	1    4050 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	4410 3210 4410 3290
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5BBEEF4D
P 4410 3210
F 0 "#PWR?" H 4410 3060 50  0001 C CNN
F 1 "+5V_USB" H 4410 3350 50  0000 C CNN
F 2 "" H 4410 3210 50  0001 C CNN
F 3 "" H 4410 3210 50  0001 C CNN
	1    4410 3210
	1    0    0    -1  
$EndComp
Connection ~ 4410 3290
Wire Wire Line
	4410 3290 4410 3340
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BB040A2
P 4410 3490
F 0 "C?" H 4435 3590 50  0000 L CNN
F 1 "0.1uF" H 4435 3390 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4448 3340 50  0001 C CNN
F 3 "" H 4435 3590 50  0001 C CNN
F 4 "0603" H 4260 3590 50  0000 R CNN "display_footprint"
F 5 "50V" H 4260 3490 50  0000 R CNN "Voltage"
F 6 "X7R" H 4260 3390 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 4835 3990 60  0001 C CNN "Digi-Key PN"
	1    4410 3490
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E954115
P 5240 3060
AR Path="/5CB0BC26/5E954115" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E954115" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E954115" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5E954115" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E954115" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5E954115" Ref="R?"  Part="1" 
F 0 "R?" V 5140 3060 50  0000 C CNN
F 1 "10" V 5240 3060 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5240 3060 50  0001 C CNN
F 3 "" H 5240 3060 50  0001 C CNN
F 4 "0603" V 5340 3060 50  0001 C CNN "display_footprint"
F 5 "1%" V 5440 3060 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 5540 3060 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 5240 3060 50  0001 C CNN "Digi-Key PN"
	1    5240 3060
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E95410C
P 4780 3060
AR Path="/5CB0BC26/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5E95410C" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5E95410C" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E95410C" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5E95410C" Ref="R?"  Part="1" 
F 0 "R?" V 4680 3060 50  0000 C CNN
F 1 "10" V 4780 3060 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4780 3060 50  0001 C CNN
F 3 "" H 4780 3060 50  0001 C CNN
F 4 "0603" V 4880 3060 50  0001 C CNN "display_footprint"
F 5 "1%" V 4980 3060 50  0001 C CNN "Tolerance"
F 6 "1/10W" V 5080 3060 50  0001 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 4780 3060 50  0001 C CNN "Digi-Key PN"
	1    4780 3060
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5240 3290 5710 3290
Wire Wire Line
	5240 3210 5240 3290
Wire Wire Line
	4780 3290 4860 3290
Wire Wire Line
	4780 3210 4780 3290
Connection ~ 4780 3290
Wire Wire Line
	4410 3290 4780 3290
Connection ~ 5240 3290
Wire Wire Line
	5160 3290 5240 3290
Text GLabel 5240 2910 1    50   UnSpc ~ 0
POS5_USB_SNS+
Text GLabel 4780 2910 1    50   UnSpc ~ 0
POS5_USB_SNS-
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E0650D5
P 5010 3290
AR Path="/5CB6F1ED/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5A0BC776/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5E939F76/5E0650D5" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5E0650D5" Ref="R?"  Part="1" 
F 0 "R?" V 4910 3290 50  0000 C CNN
F 1 "0.02" V 5010 3290 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 5010 3290 50  0001 C CNN
F 3 "" H 5010 3290 50  0001 C CNN
F 4 "P16010CT-ND" H 5310 3690 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 5110 3290 50  0000 C CNN "display_footprint"
F 6 "1%" V 5210 3290 50  0000 C CNN "Tolerance"
F 7 "1W" V 5310 3290 50  0000 C CNN "Wattage"
	1    5010 3290
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F2EE021
P 1670 3190
F 0 "#PWR?" H 1670 3040 50  0001 C CNN
F 1 "+3.3V_USB" H 1670 3330 50  0000 C CNN
F 2 "" H 1670 3190 50  0001 C CNN
F 3 "" H 1670 3190 50  0001 C CNN
	1    1670 3190
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F35E4BA
P 4410 7290
F 0 "#PWR?" H 4410 7140 50  0001 C CNN
F 1 "+3.3V" H 4410 7430 50  0000 C CNN
F 2 "" H 4410 7290 50  0001 C CNN
F 3 "" H 4410 7290 50  0001 C CNN
	1    4410 7290
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0102DCU U?
U 1 1 5F39F395
P 5350 1460
F 0 "U?" H 5100 1910 50  0000 C CNN
F 1 "TXB0102DCU" H 5500 1910 50  0000 L CNN
F 2 "Package_SO:VSSOP-8_2.4x2.1mm_P0.5mm" H 5350 910 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0102.pdf" H 5350 1430 50  0001 C CNN
F 4 "296-22862-1-ND" H 5350 1460 50  0001 C CNN "Digi-Key PN"
	1    5350 1460
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F3A38A3
P 5450 960
F 0 "#PWR?" H 5450 810 50  0001 C CNN
F 1 "+3.3V_USB" H 5580 1100 50  0000 C CNN
F 2 "" H 5450 960 50  0001 C CNN
F 3 "" H 5450 960 50  0001 C CNN
	1    5450 960 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F3A3F67
P 5250 960
F 0 "#PWR?" H 5250 810 50  0001 C CNN
F 1 "+3.3V" H 5200 1100 50  0000 C CNN
F 2 "" H 5250 960 50  0001 C CNN
F 3 "" H 5250 960 50  0001 C CNN
	1    5250 960 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3A6750
P 5350 1960
F 0 "#PWR?" H 5350 1710 50  0001 C CNN
F 1 "GND" H 5350 1810 50  0000 C CNN
F 2 "" H 5350 1960 50  0001 C CNN
F 3 "" H 5350 1960 50  0001 C CNN
	1    5350 1960
	1    0    0    -1  
$EndComp
Text GLabel 3960 5150 0    50   Output ~ 0
USB_UART_RX_BUF
Text GLabel 3960 5250 0    50   Input ~ 0
USB_UART_TX_BUF
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F3B0FEC
P 6220 980
F 0 "#PWR?" H 6220 830 50  0001 C CNN
F 1 "+3.3V_USB" H 6220 1120 50  0000 C CNN
F 2 "" H 6220 980 50  0001 C CNN
F 3 "" H 6220 980 50  0001 C CNN
	1    6220 980 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F3B149F
P 6730 980
F 0 "#PWR?" H 6730 830 50  0001 C CNN
F 1 "+3.3V_USB" H 6730 1120 50  0000 C CNN
F 2 "" H 6730 980 50  0001 C CNN
F 3 "" H 6730 980 50  0001 C CNN
	1    6730 980 
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3B373F
P 6220 1130
AR Path="/5E939D51/5F3B373F" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3B373F" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F3B373F" Ref="R?"  Part="1" 
F 0 "R?" H 6290 1260 50  0000 L CNN
F 1 "100k" V 6220 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6220 1130 50  0001 C CNN
F 3 "" H 6220 1130 50  0001 C CNN
F 4 "0603" H 6290 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 6290 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6290 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 6220 1130 50  0001 C CNN "Digi-Key PN"
	1    6220 1130
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3B4F3C
P 6730 1130
AR Path="/5E939D51/5F3B4F3C" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3B4F3C" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F3B4F3C" Ref="R?"  Part="1" 
F 0 "R?" H 6800 1260 50  0000 L CNN
F 1 "100k" V 6730 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 6730 1130 50  0001 C CNN
F 3 "" H 6730 1130 50  0001 C CNN
F 4 "0603" H 6800 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 6800 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 6800 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 6730 1130 50  0001 C CNN "Digi-Key PN"
	1    6730 1130
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1360 6220 1360
Wire Wire Line
	7250 1560 6730 1560
Wire Wire Line
	6220 1280 6220 1360
Connection ~ 6220 1360
Wire Wire Line
	6220 1360 5750 1360
Wire Wire Line
	6730 1280 6730 1560
Connection ~ 6730 1560
Wire Wire Line
	6730 1560 5750 1560
Text GLabel 3450 1360 0    50   Output ~ 0
USB_UART_RX
Text GLabel 3450 1560 0    50   Input ~ 0
USB_UART_TX
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3C1475
P 4480 1130
AR Path="/5E939D51/5F3C1475" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3C1475" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F3C1475" Ref="R?"  Part="1" 
F 0 "R?" H 4550 1260 50  0000 L CNN
F 1 "100k" V 4480 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4480 1130 50  0001 C CNN
F 3 "" H 4480 1130 50  0001 C CNN
F 4 "0603" H 4550 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 4550 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4550 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 4480 1130 50  0001 C CNN "Digi-Key PN"
	1    4480 1130
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F3C147E
P 3970 1130
AR Path="/5E939D51/5F3C147E" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F3C147E" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F3C147E" Ref="R?"  Part="1" 
F 0 "R?" H 4040 1260 50  0000 L CNN
F 1 "100k" V 3970 1130 40  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3970 1130 50  0001 C CNN
F 3 "" H 3970 1130 50  0001 C CNN
F 4 "0603" H 4040 1180 50  0000 L CNN "display_footprint"
F 5 "1%" H 4040 1090 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 4040 1000 50  0000 L CNN "Wattage"
F 7 "RMCF0603FT100KCT-ND" H 3970 1130 50  0001 C CNN "Digi-Key PN"
	1    3970 1130
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3450 1360 4480 1360
Wire Wire Line
	3450 1560 3970 1560
Wire Wire Line
	4480 1280 4480 1360
Connection ~ 4480 1360
Wire Wire Line
	4480 1360 4950 1360
Wire Wire Line
	3970 1280 3970 1560
Connection ~ 3970 1560
Wire Wire Line
	3970 1560 4950 1560
$Comp
L power:+3.3V #PWR?
U 1 1 5F3C5E82
P 3970 980
F 0 "#PWR?" H 3970 830 50  0001 C CNN
F 1 "+3.3V" H 3970 1120 50  0000 C CNN
F 2 "" H 3970 980 50  0001 C CNN
F 3 "" H 3970 980 50  0001 C CNN
	1    3970 980 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F3C6623
P 4480 980
F 0 "#PWR?" H 4480 830 50  0001 C CNN
F 1 "+3.3V" H 4480 1120 50  0000 C CNN
F 2 "" H 4480 980 50  0001 C CNN
F 3 "" H 4480 980 50  0001 C CNN
	1    4480 980 
	1    0    0    -1  
$EndComp
Text GLabel 4950 1760 0    50   Input ~ 0
POS5_USB_PGOOD
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F3FC0E2
P 6090 2040
F 0 "C?" H 6115 2140 50  0000 L CNN
F 1 "0.1uF" H 6115 1940 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6128 1890 50  0001 C CNN
F 3 "" H 6115 2140 50  0001 C CNN
F 4 "0603" H 5940 2140 50  0000 R CNN "display_footprint"
F 5 "50V" H 5940 2040 50  0000 R CNN "Voltage"
F 6 "X7R" H 5940 1940 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 6515 2540 60  0001 C CNN "Digi-Key PN"
	1    6090 2040
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3FC0EC
P 6090 2190
F 0 "#PWR?" H 6090 1940 50  0001 C CNN
F 1 "GND" H 6090 2040 50  0000 C CNN
F 2 "" H 6090 2190 50  0001 C CNN
F 3 "" H 6090 2190 50  0001 C CNN
	1    6090 2190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F402831
P 6800 2040
F 0 "C?" H 6825 2140 50  0000 L CNN
F 1 "0.1uF" H 6825 1940 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6838 1890 50  0001 C CNN
F 3 "" H 6825 2140 50  0001 C CNN
F 4 "0603" H 6650 2140 50  0000 R CNN "display_footprint"
F 5 "50V" H 6650 2040 50  0000 R CNN "Voltage"
F 6 "X7R" H 6650 1940 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 7225 2540 60  0001 C CNN "Digi-Key PN"
	1    6800 2040
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F40283B
P 6800 2190
F 0 "#PWR?" H 6800 1940 50  0001 C CNN
F 1 "GND" H 6800 2040 50  0000 C CNN
F 2 "" H 6800 2190 50  0001 C CNN
F 3 "" H 6800 2190 50  0001 C CNN
	1    6800 2190
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F402845
P 6800 1890
F 0 "#PWR?" H 6800 1740 50  0001 C CNN
F 1 "+3.3V_USB" H 6800 2030 50  0000 C CNN
F 2 "" H 6800 1890 50  0001 C CNN
F 3 "" H 6800 1890 50  0001 C CNN
	1    6800 1890
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F405693
P 6090 1890
F 0 "#PWR?" H 6090 1740 50  0001 C CNN
F 1 "+3.3V" H 6090 2030 50  0000 C CNN
F 2 "" H 6090 1890 50  0001 C CNN
F 3 "" H 6090 1890 50  0001 C CNN
	1    6090 1890
	1    0    0    -1  
$EndComp
Wire Wire Line
	7030 3290 6950 3290
$Comp
L Connector:USB_C_Receptacle J?
U 1 1 5F7D3B88
P 8740 5100
F 0 "J?" H 8340 6250 50  0000 L CNN
F 1 "USB_C_Receptacle" H 9140 6250 50  0000 R CNN
F 2 "" H 8890 5100 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 8890 5100 50  0001 C CNN
	1    8740 5100
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:CP2105 U?
U 1 1 5F7D6AAA
P 4610 5000
F 0 "U?" H 5110 6050 50  0000 R CNN
F 1 "CP2105" H 4110 6050 50  0000 L CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_4x4mm_Pitch0.5mm" H 4610 3900 50  0001 C CNN
F 3 "https://www.silabs.com/Support%20Documents/TechnicalDocs/cp2105.pdf" H 4610 3800 50  0001 C CNN
F 4 "CP2105-F01-GMRTR-ND" H 4610 5000 50  0001 C CNN "Digi-Key PN"
	1    4610 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8140 4100 7350 4100
$Comp
L power:GND #PWR?
U 1 1 5F7F50BE
P 5340 5980
F 0 "#PWR?" H 5340 5730 50  0001 C CNN
F 1 "GND" H 5340 5830 50  0000 C CNN
F 2 "" H 5340 5980 50  0001 C CNN
F 3 "" H 5340 5980 50  0001 C CNN
	1    5340 5980
	1    0    0    -1  
$EndComp
Wire Wire Line
	5340 5980 5340 5900
Wire Wire Line
	5340 5900 5260 5900
Wire Wire Line
	5260 5800 5340 5800
Wire Wire Line
	5340 5800 5340 5900
Connection ~ 5340 5900
Wire Wire Line
	5260 4700 6610 4700
Wire Wire Line
	5260 4800 6510 4800
Wire Wire Line
	6950 3290 6950 4100
Wire Wire Line
	6610 3690 6610 4700
Connection ~ 6610 4700
Wire Wire Line
	6610 4700 8060 4700
Wire Wire Line
	6510 3690 6510 4800
Connection ~ 6510 4800
Wire Wire Line
	6510 4800 8060 4800
Wire Wire Line
	8140 4600 8060 4600
Wire Wire Line
	8060 4600 8060 4700
Connection ~ 8060 4700
Wire Wire Line
	8060 4700 8140 4700
Wire Wire Line
	8140 4900 8060 4900
Wire Wire Line
	8060 4900 8060 4800
Connection ~ 8060 4800
Wire Wire Line
	8060 4800 8140 4800
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F80B61B
P 5260 4400
F 0 "#PWR?" H 5260 4250 50  0001 C CNN
F 1 "+3.3V_USB" V 5260 4540 50  0000 L CNN
F 2 "" H 5260 4400 50  0001 C CNN
F 3 "" H 5260 4400 50  0001 C CNN
	1    5260 4400
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F80D319
P 5260 4200
F 0 "#PWR?" H 5260 4050 50  0001 C CNN
F 1 "+3.3V_USB" V 5260 4340 50  0000 L CNN
F 2 "" H 5260 4200 50  0001 C CNN
F 3 "" H 5260 4200 50  0001 C CNN
	1    5260 4200
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5F80EDF3
P 5260 4500
F 0 "#PWR?" H 5260 4350 50  0001 C CNN
F 1 "+5V_USB" V 5260 4640 50  0000 L CNN
F 2 "" H 5260 4500 50  0001 C CNN
F 3 "" H 5260 4500 50  0001 C CNN
	1    5260 4500
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5F80F76A
P 5260 4300
F 0 "#PWR?" H 5260 4150 50  0001 C CNN
F 1 "+5V_USB" V 5260 4440 50  0000 L CNN
F 2 "" H 5260 4300 50  0001 C CNN
F 3 "" H 5260 4300 50  0001 C CNN
	1    5260 4300
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F818729
P 5410 5100
AR Path="/5C3165D8/5F818729" Ref="R?"  Part="1" 
AR Path="/5C26E09A/5F818729" Ref="R?"  Part="1" 
AR Path="/5D739492/5F818729" Ref="R?"  Part="1" 
AR Path="/5E28CFDF/5F818729" Ref="R?"  Part="1" 
AR Path="/5E36CE18/5F818729" Ref="R?"  Part="1" 
AR Path="/5E3C80C8/5F818729" Ref="R?"  Part="1" 
AR Path="/5E3C97B4/5F818729" Ref="R?"  Part="1" 
AR Path="/5EAE4AB6/5F818729" Ref="R?"  Part="1" 
AR Path="/5F58356B/5F818729" Ref="R?"  Part="1" 
F 0 "R?" V 5310 5100 50  0000 C CNN
F 1 "10k" V 5410 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 5410 5100 50  0001 C CNN
F 3 "" H 5410 5100 50  0001 C CNN
F 4 "0402" V 5510 5100 50  0000 C CNN "display_footprint"
F 5 "1%" V 5610 5100 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 5710 5100 50  0000 C CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5410 5100 50  0001 C CNN "Digi-Key PN"
	1    5410 5100
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F8198B9
P 5560 5100
F 0 "#PWR?" H 5560 4950 50  0001 C CNN
F 1 "+3.3V_USB" V 5560 5240 50  0000 L CNN
F 2 "" H 5560 5100 50  0001 C CNN
F 3 "" H 5560 5100 50  0001 C CNN
	1    5560 5100
	0    1    1    0   
$EndComp
Text GLabel 3960 4200 0    50   Output ~ 0
WIFI_UART_RX_BUF
Text GLabel 3960 4300 0    50   Input ~ 0
WIFI_UART_TX_BUF
Text GLabel 8280 1560 0    50   Output ~ 0
USB_UART_RX_BUF
Text GLabel 8280 1660 0    50   Input ~ 0
USB_UART_TX_BUF
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F848C62
P 3040 3340
F 0 "C?" H 3065 3440 50  0000 L CNN
F 1 "0.1uF" H 3065 3240 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3078 3190 50  0001 C CNN
F 3 "" H 3065 3440 50  0001 C CNN
F 4 "0603" H 2890 3440 50  0000 R CNN "display_footprint"
F 5 "50V" H 2890 3340 50  0000 R CNN "Voltage"
F 6 "X7R" H 2890 3240 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 3465 3840 60  0001 C CNN "Digi-Key PN"
	1    3040 3340
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F849883
P 930 3340
F 0 "C?" H 955 3440 50  0000 L CNN
F 1 "0.1uF" H 955 3240 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 968 3190 50  0001 C CNN
F 3 "" H 955 3440 50  0001 C CNN
F 4 "0603" H 780 3440 50  0000 R CNN "display_footprint"
F 5 "50V" H 780 3340 50  0000 R CNN "Voltage"
F 6 "X7R" H 780 3240 50  0000 R CNN "Dielectric"
F 7 "399-7845-1-ND" H 1355 3840 60  0001 C CNN "Digi-Key PN"
	1    930  3340
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F84988D
P 930 3490
F 0 "#PWR?" H 930 3240 50  0001 C CNN
F 1 "GND" H 930 3340 50  0000 C CNN
F 2 "" H 930 3490 50  0001 C CNN
F 3 "" H 930 3490 50  0001 C CNN
	1    930  3490
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_USB #PWR?
U 1 1 5F849897
P 930 3190
F 0 "#PWR?" H 930 3040 50  0001 C CNN
F 1 "+3.3V_USB" H 930 3330 50  0000 C CNN
F 2 "" H 930 3190 50  0001 C CNN
F 3 "" H 930 3190 50  0001 C CNN
	1    930  3190
	1    0    0    -1  
$EndComp
$EndSCHEMATC
