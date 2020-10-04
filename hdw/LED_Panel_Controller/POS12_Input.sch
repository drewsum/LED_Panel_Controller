EESchema Schematic File Version 4
LIBS:LED_Panel_Controller-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 34
Title "Analog Clock"
Date "2020-08-15"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2020 2240
$Comp
L Custom_Library:CP_Tant_Custom C?
U 1 1 5BB7221C
P 8530 2470
F 0 "C?" H 8555 2570 50  0000 L CNN
F 1 "100uF" H 8555 2370 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Reflow" H 8568 2320 50  0001 C CNN
F 3 "" H 8555 2570 50  0001 C CNN
F 4 "718-1102-1-ND" H 8530 2470 50  0001 C CNN "Digi-Key PN"
F 5 "7343" H 8380 2570 50  0000 R CNN "display_footprint"
F 6 "16V" H 8380 2470 50  0000 R CNN "Voltage"
F 7 "10%" H 8380 2370 50  0000 R CNN "Tolerance"
	1    8530 2470
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BB72223
P 8530 2620
F 0 "#PWR?" H 8530 2370 50  0001 C CNN
F 1 "GND" H 8530 2470 50  0000 C CNN
F 2 "" H 8530 2620 50  0001 C CNN
F 3 "" H 8530 2620 50  0001 C CNN
	1    8530 2620
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5BB79912
P 8530 2160
F 0 "#PWR?" H 8530 2010 50  0001 C CNN
F 1 "+12V" H 8530 2300 50  0000 C CNN
F 2 "" H 8530 2160 50  0001 C CNN
F 3 "" H 8530 2160 50  0001 C CNN
	1    8530 2160
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BB80B0C
P 2020 2160
F 0 "#FLG?" H 2020 2235 50  0001 C CNN
F 1 "PWR_FLAG" H 2020 2310 50  0000 C CNN
F 2 "" H 2020 2160 50  0001 C CNN
F 3 "~" H 2020 2160 50  0001 C CNN
	1    2020 2160
	1    0    0    -1  
$EndComp
Wire Wire Line
	2020 2160 2020 2240
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 5BF0E9C8
P 1370 2340
F 0 "J?" H 1370 2550 50  0000 C CNN
F 1 "+12V IN" H 1370 2140 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1420 2300 50  0001 C CNN
F 3 "~" H 1420 2300 50  0001 C CNN
	1    1370 2340
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2440 1670 2440
Wire Wire Line
	1750 2440 1750 2340
Wire Wire Line
	1750 2340 1670 2340
Wire Wire Line
	1670 2240 2020 2240
$Comp
L Device:D_TVS_ALT D?
U 1 1 5BC52DC5
P 2020 2470
F 0 "D?" V 1974 2549 50  0000 L CNN
F 1 "24V" V 2065 2549 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 2020 2470 50  0001 C CNN
F 3 "~" H 2020 2470 50  0001 C CNN
F 4 "SMAJ24CALFCT-ND" H 2020 2470 50  0001 C CNN "Digi-Key PN"
	1    2020 2470
	0    1    1    0   
$EndComp
Wire Wire Line
	2020 2320 2020 2240
Text Notes 1350 5280 0    50   ~ 0
UVLO threshold set to 10.8V\nOVLO threshold set to 13.2V\n\nMODE set to Circuit Breaker with Auto-Retry\n\nOutput Current Limit set to 2A
Wire Wire Line
	7780 2170 7780 2240
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BB7A7F6
P 7780 2170
F 0 "#FLG?" H 7780 2245 50  0001 C CNN
F 1 "PWR_FLAG" H 7780 2320 50  0000 C CNN
F 2 "" H 7780 2170 50  0001 C CNN
F 3 "~" H 7780 2170 50  0001 C CNN
	1    7780 2170
	1    0    0    -1  
$EndComp
Wire Wire Line
	8530 2160 8530 2240
Wire Wire Line
	8530 2320 8530 2240
Connection ~ 8530 2240
Wire Wire Line
	8530 2240 7780 2240
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BB576FA
P 5600 6030
AR Path="/5BAAE16C/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5D77A516/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5F581B41/5BB576FA" Ref="C?"  Part="1" 
F 0 "C?" H 5625 6130 50  0000 L CNN
F 1 "0.1uF" H 5625 5930 50  0000 L CNN
F 2 "" H 5638 5880 50  0001 C CNN
F 3 "" H 5625 6130 50  0001 C CNN
F 4 "0402" H 5450 6130 50  0000 R CNN "display_footprint"
F 5 "50V" H 5450 6030 50  0000 R CNN "Voltage"
F 6 "X7R" H 5450 5930 50  0000 R CNN "Dielectric"
F 7 "" H 6025 6530 60  0001 C CNN "Digi-Key PN"
	1    5600 6030
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:TPS26600RHFT U?
U 1 1 5DD82687
P 5600 3640
F 0 "U?" H 6000 2190 50  0000 R CNN
F 1 "TPS26600RHFT" H 5600 3640 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_4x5mm_Pitch0.5mm" H 5600 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps2660.pdf" H 5600 3650 50  0001 C CNN
F 4 "296-45478-1-ND" H 5600 3640 50  0001 C CNN "Digi-Key PN"
	1    5600 3640
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2240 4920 2240
Wire Wire Line
	5000 2340 4920 2340
Wire Wire Line
	4920 2340 4920 2240
Connection ~ 4920 2240
Wire Wire Line
	6200 2340 6280 2340
Wire Wire Line
	6280 2340 6280 2240
Wire Wire Line
	6280 2240 6200 2240
$Comp
L power:GND #PWR?
U 1 1 5DD8EB42
P 5600 5190
F 0 "#PWR?" H 5600 4940 50  0001 C CNN
F 1 "GND" H 5600 5040 50  0000 C CNN
F 2 "" H 5600 5190 50  0001 C CNN
F 3 "" H 5600 5190 50  0001 C CNN
	1    5600 5190
	1    0    0    -1  
$EndComp
Text GLabel 6800 4140 2    50   Output ~ 0
POS12_PGOOD
Wire Wire Line
	6800 4140 6610 4140
Wire Wire Line
	6610 4140 6610 4060
Connection ~ 6610 4140
Wire Wire Line
	6200 4140 6610 4140
Wire Wire Line
	6540 5060 6540 4940
Wire Wire Line
	6540 4940 6200 4940
Wire Wire Line
	7340 5060 7340 4840
Wire Wire Line
	7340 4840 6200 4840
Wire Wire Line
	7340 5360 7340 5460
Wire Wire Line
	7340 5460 6540 5460
Wire Wire Line
	4900 5460 4900 4940
Wire Wire Line
	4900 4940 5000 4940
Wire Wire Line
	5000 4840 4900 4840
Wire Wire Line
	4900 4840 4900 4940
Connection ~ 4900 4940
Wire Wire Line
	6540 5360 6540 5460
Connection ~ 6540 5460
Wire Wire Line
	6540 5460 4900 5460
Wire Wire Line
	4920 2240 4600 2240
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DDBCEA9
P 3800 3520
AR Path="/5D6B2673/5DDBCEA9" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5DDBCEA9" Ref="R?"  Part="1" 
AR Path="/5D77A516/5DDBCEA9" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5DDBCEA9" Ref="R?"  Part="1" 
AR Path="/5F581B41/5DDBCEA9" Ref="R?"  Part="1" 
F 0 "R?" H 3710 3520 50  0000 R CNN
F 1 "1.15k" V 3800 3520 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3800 3520 50  0001 C CNN
F 3 "" H 3800 3520 50  0001 C CNN
F 4 "0402" H 3900 3590 50  0000 L CNN "display_footprint"
F 5 "1%" H 3900 3490 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 3900 3390 50  0000 L CNN "Wattage"
F 7 "" H 4100 3920 60  0001 C CNN "Digi-Key PN"
	1    3800 3520
	-1   0    0    -1  
$EndComp
NoConn ~ 5000 4140
Wire Wire Line
	5000 3040 4600 3040
Wire Wire Line
	4600 3040 4600 2810
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DDC16A7
P 3800 2660
AR Path="/5D6B2673/5DDC16A7" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5DDC16A7" Ref="R?"  Part="1" 
AR Path="/5D77A516/5DDC16A7" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5DDC16A7" Ref="R?"  Part="1" 
AR Path="/5F581B41/5DDC16A7" Ref="R?"  Part="1" 
F 0 "R?" H 3710 2660 50  0000 R CNN
F 1 "51.1k" V 3800 2660 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3800 2660 50  0001 C CNN
F 3 "" H 3800 2660 50  0001 C CNN
F 4 "0402" H 3900 2730 50  0000 L CNN "display_footprint"
F 5 "1%" H 3900 2630 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 3900 2530 50  0000 L CNN "Wattage"
F 7 "" H 4100 3060 60  0001 C CNN "Digi-Key PN"
	1    3800 2660
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DDC365F
P 3800 4380
AR Path="/5D6B2673/5DDC365F" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5DDC365F" Ref="R?"  Part="1" 
AR Path="/5D77A516/5DDC365F" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5DDC365F" Ref="R?"  Part="1" 
AR Path="/5F581B41/5DDC365F" Ref="R?"  Part="1" 
F 0 "R?" H 3710 4380 50  0000 R CNN
F 1 "5.11k" V 3800 4380 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3800 4380 50  0001 C CNN
F 3 "" H 3800 4380 50  0001 C CNN
F 4 "0402" H 3900 4450 50  0000 L CNN "display_footprint"
F 5 "1%" H 3900 4350 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 3900 4250 50  0000 L CNN "Wattage"
F 7 "" H 4100 4780 60  0001 C CNN "Digi-Key PN"
	1    3800 4380
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 2510 4600 2240
Connection ~ 4600 2240
Wire Wire Line
	4600 2240 3800 2240
Wire Wire Line
	3800 2510 3800 2240
Connection ~ 3800 2240
Wire Wire Line
	3800 2240 3300 2240
Wire Wire Line
	3800 2810 3800 3240
Wire Wire Line
	5000 3240 3800 3240
Connection ~ 3800 3240
Wire Wire Line
	3800 3240 3800 3370
Wire Wire Line
	5000 3840 3800 3840
Wire Wire Line
	3800 3840 3800 3670
Wire Wire Line
	3800 4230 3800 3840
Connection ~ 3800 3840
Wire Wire Line
	3800 4530 3800 5460
Wire Wire Line
	3800 5460 4600 5460
Connection ~ 4900 5460
Wire Wire Line
	4600 4230 4600 4040
Wire Wire Line
	4600 4040 5000 4040
Wire Wire Line
	4600 4530 4600 5460
Connection ~ 4600 5460
Wire Wire Line
	4600 5460 4900 5460
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DDD7497
P 4600 2660
AR Path="/5D6B2673/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5D77A516/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5F581B41/5DDD7497" Ref="R?"  Part="1" 
F 0 "R?" H 4510 2660 50  0000 R CNN
F 1 "10k" V 4600 2590 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4600 2660 50  0001 C CNN
F 3 "" H 4600 2660 50  0001 C CNN
F 4 "0402" H 4700 2730 50  0000 L CNN "display_footprint"
F 5 "1%" H 4700 2630 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4700 2530 50  0000 L CNN "Wattage"
F 7 "" H 4900 3060 60  0001 C CNN "Digi-Key PN"
	1    4600 2660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7210 2170 7210 2240
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5DDDDB66
P 7210 2170
F 0 "TP?" H 7210 2320 50  0000 C CNN
F 1 "TP_Pad" H 7210 2320 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 7210 2170 60  0001 C CNN
F 3 "" H 7210 2170 60  0000 C CNN
	1    7210 2170
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5DDDDFD1
P 3800 2160
F 0 "TP?" H 3800 2310 50  0000 C CNN
F 1 "TP_Pad" H 3800 2310 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 3800 2160 60  0001 C CNN
F 3 "" H 3800 2160 60  0000 C CNN
	1    3800 2160
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2160 3800 2240
$Comp
L Custom_Library:TP TP?
U 1 1 5DDE21C0
P 1420 4070
F 0 "TP?" H 1420 4220 50  0000 C CNN
F 1 "TP" H 1420 4220 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x01_Pitch2.54mm" H 1420 4070 60  0001 C CNN
F 3 "" H 1420 4070 60  0000 C CNN
F 4 "" H 1420 4070 50  0001 C CNN "Digi-Key PN"
	1    1420 4070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDE2AAE
P 1420 4070
F 0 "#PWR?" H 1420 3820 50  0001 C CNN
F 1 "GND" H 1420 3920 50  0000 C CNN
F 2 "" H 1420 4070 50  0001 C CNN
F 3 "" H 1420 4070 50  0001 C CNN
	1    1420 4070
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5DEADB5A
P 4600 4380
AR Path="/5BAAE16C/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5D77A516/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5F581B41/5DEADB5A" Ref="C?"  Part="1" 
F 0 "C?" H 4625 4480 50  0000 L CNN
F 1 "10nF" H 4625 4280 50  0000 L CNN
F 2 "" H 4638 4230 50  0001 C CNN
F 3 "" H 4625 4480 50  0001 C CNN
F 4 "0402" H 4450 4480 50  0000 R CNN "display_footprint"
F 5 "50V" H 4450 4380 50  0000 R CNN "Voltage"
F 6 "X7R" H 4450 4280 50  0000 R CNN "Dielectric"
F 7 "" H 5025 4880 60  0001 C CNN "Digi-Key PN"
	1    4600 4380
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F27F609
P 6610 3760
F 0 "#PWR?" H 6610 3610 50  0001 C CNN
F 1 "+12V" H 6610 3900 50  0000 C CNN
F 2 "" H 6610 3760 50  0001 C CNN
F 3 "" H 6610 3760 50  0001 C CNN
	1    6610 3760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2844B0
P 6610 4520
F 0 "#PWR?" H 6610 4270 50  0001 C CNN
F 1 "GND" H 6610 4370 50  0000 C CNN
F 2 "" H 6610 4520 50  0001 C CNN
F 3 "" H 6610 4520 50  0001 C CNN
	1    6610 4520
	1    0    0    -1  
$EndComp
Wire Wire Line
	6610 4220 6610 4140
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA5A
P 6510 2240
AR Path="/5CB6F1ED/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA5A" Ref="R?"  Part="1" 
F 0 "R?" V 6410 2240 50  0000 C CNN
F 1 "0.02" V 6510 2240 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 6510 2240 50  0001 C CNN
F 3 "" H 6510 2240 50  0001 C CNN
F 4 "P16010CT-ND" H 6810 2640 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 6610 2240 50  0000 C CNN "display_footprint"
F 6 "1%" V 6710 2240 50  0000 C CNN "Tolerance"
F 7 "1W" V 6810 2240 50  0000 C CNN "Wattage"
	1    6510 2240
	0    -1   -1   0   
$EndComp
Text GLabel 6280 1760 1    50   UnSpc ~ 0
POS12_SNS+
Text GLabel 6740 1760 1    50   UnSpc ~ 0
POS12_SNS-
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA66
P 6280 1910
AR Path="/5CB0BC26/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA66" Ref="R?"  Part="1" 
F 0 "R?" V 6180 1910 50  0000 C CNN
F 1 "10" V 6280 1910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6280 1910 50  0001 C CNN
F 3 "" H 6280 1910 50  0001 C CNN
F 4 "0402" V 6380 1910 50  0001 C CNN "display_footprint"
F 5 "1%" V 6480 1910 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 6580 1910 50  0001 C CNN "Wattage"
F 7 "" H 6280 1910 50  0001 C CNN "Digi-Key PN"
	1    6280 1910
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA70
P 6740 1910
AR Path="/5CB0BC26/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA70" Ref="R?"  Part="1" 
F 0 "R?" V 6640 1910 50  0000 C CNN
F 1 "10" V 6740 1910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6740 1910 50  0001 C CNN
F 3 "" H 6740 1910 50  0001 C CNN
F 4 "0402" V 6840 1910 50  0001 C CNN "display_footprint"
F 5 "1%" V 6940 1910 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7040 1910 50  0001 C CNN "Wattage"
F 7 "" H 6740 1910 50  0001 C CNN "Digi-Key PN"
	1    6740 1910
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6660 2240 6740 2240
Wire Wire Line
	6280 2060 6280 2240
Wire Wire Line
	6280 2240 6360 2240
Wire Wire Line
	6740 2060 6740 2240
Connection ~ 6740 2240
Wire Wire Line
	6740 2240 7210 2240
Connection ~ 6280 2240
Wire Wire Line
	7780 2240 7210 2240
Connection ~ 7780 2240
Connection ~ 7210 2240
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2C0F58
P 7340 5210
AR Path="/5BB27BA3/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5F280E04/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F2C0F58" Ref="R?"  Part="1" 
F 0 "R?" H 7260 5210 50  0000 R CNN
F 1 "10k" V 7340 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7340 5210 50  0001 C CNN
F 3 "" H 7340 5210 50  0001 C CNN
F 4 "0402" H 7440 5290 50  0000 L CNN "display_footprint"
F 5 "1%" H 7440 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7450 5130 50  0000 L CNN "Wattage"
F 7 "" H 7640 5610 60  0001 C CNN "Digi-Key PN"
	1    7340 5210
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2C2BE4
P 6610 3910
AR Path="/5BB27BA3/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5F280E04/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F2C2BE4" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F2C2BE4" Ref="R?"  Part="1" 
F 0 "R?" H 6530 3910 50  0000 R CNN
F 1 "13k" V 6610 3910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6610 3910 50  0001 C CNN
F 3 "" H 6610 3910 50  0001 C CNN
F 4 "0402" H 6710 3990 50  0000 L CNN "display_footprint"
F 5 "1%" H 6710 3910 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6720 3830 50  0000 L CNN "Wattage"
F 7 "" H 6610 3910 50  0001 C CNN "Digi-Key PN"
	1    6610 3910
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2C6133
P 6610 4370
AR Path="/5D6B2673/5F2C6133" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F2C6133" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F2C6133" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F2C6133" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F2C6133" Ref="R?"  Part="1" 
F 0 "R?" H 6520 4370 50  0000 R CNN
F 1 "5.11k" V 6610 4370 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6610 4370 50  0001 C CNN
F 3 "" H 6610 4370 50  0001 C CNN
F 4 "0402" H 6710 4440 50  0000 L CNN "display_footprint"
F 5 "1%" H 6710 4340 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6710 4240 50  0000 L CNN "Wattage"
F 7 "" H 6910 4770 60  0001 C CNN "Digi-Key PN"
	1    6610 4370
	1    0    0    -1  
$EndComp
Text Notes 7180 3890 0    50   ~ 0
+3.3V Logic Level
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6FDD66
P 6540 5210
AR Path="/5D6B2673/5F6FDD66" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6FDD66" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6FDD66" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6FDD66" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6FDD66" Ref="R?"  Part="1" 
F 0 "R?" H 6450 5210 50  0000 R CNN
F 1 "5.11k" V 6540 5210 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6540 5210 50  0001 C CNN
F 3 "" H 6540 5210 50  0001 C CNN
F 4 "0402" H 6640 5280 50  0000 L CNN "display_footprint"
F 5 "1%" H 6640 5180 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6640 5080 50  0000 L CNN "Wattage"
F 7 "" H 6840 5610 60  0001 C CNN "Digi-Key PN"
	1    6540 5210
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+12Vin #PWR?
U 1 1 5BB6907F
P 5600 5880
F 0 "#PWR?" H 5600 5730 50  0001 C CNN
F 1 "+12Vin" H 5600 6030 50  0000 C CNN
F 2 "" H 5600 5880 50  0000 C CNN
F 3 "" H 5600 5880 50  0000 C CNN
	1    5600 5880
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F703F35
P 5600 6180
F 0 "#PWR?" H 5600 5930 50  0001 C CNN
F 1 "GND" H 5600 6030 50  0000 C CNN
F 2 "" H 5600 6180 50  0001 C CNN
F 3 "" H 5600 6180 50  0001 C CNN
	1    5600 6180
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2440 1750 2700
Wire Wire Line
	1750 2700 2020 2700
Wire Wire Line
	2020 2700 2020 2620
Connection ~ 1750 2440
$Comp
L Custom_Library:DLW5ATN501MQ2L FL?
U 1 1 5F7200EA
P 2740 2340
F 0 "FL?" H 2750 2680 50  0000 C CNN
F 1 "DLW5ATN501MQ2L" H 2750 2580 50  0000 C CNN
F 2 "" H 2740 2090 50  0001 C CNN
F 3 "~" V 2740 2380 50  0001 C CNN
	1    2740 2340
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2160 3300 2240
$Comp
L Custom_Library:+12Vin #PWR?
U 1 1 5BB687E3
P 3300 2160
F 0 "#PWR?" H 3300 2010 50  0001 C CNN
F 1 "+12Vin" H 3300 2310 50  0000 C CNN
F 2 "" H 3300 2160 50  0000 C CNN
F 3 "" H 3300 2160 50  0000 C CNN
	1    3300 2160
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2240 2940 2240
Connection ~ 3300 2240
Wire Wire Line
	2540 2240 2020 2240
Wire Wire Line
	2020 2700 2460 2700
Wire Wire Line
	2460 2700 2460 2440
Wire Wire Line
	2460 2440 2540 2440
Connection ~ 2020 2700
$Comp
L power:GND #PWR?
U 1 1 5F72EDF3
P 3020 2520
F 0 "#PWR?" H 3020 2270 50  0001 C CNN
F 1 "GND" H 3020 2370 50  0000 C CNN
F 2 "" H 3020 2520 50  0001 C CNN
F 3 "" H 3020 2520 50  0001 C CNN
	1    3020 2520
	1    0    0    -1  
$EndComp
Wire Wire Line
	3020 2520 3020 2440
Wire Wire Line
	3020 2440 2940 2440
$EndSCHEMATC
