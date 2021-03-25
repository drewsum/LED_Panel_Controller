EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 2 34
Title "LED Panel Controller"
Date "2021-03-24"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 2820 2240
$Comp
L Custom_Library:+12Vin #PWR?
U 1 1 5BB687E3
P 3350 2160
F 0 "#PWR?" H 3350 2010 50  0001 C CNN
F 1 "+12Vin" H 3350 2310 50  0000 C CNN
F 2 "" H 3350 2160 50  0000 C CNN
F 3 "" H 3350 2160 50  0000 C CNN
	1    3350 2160
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:CP_Tant_Custom C?
U 1 1 5BB7221C
P 9230 2470
F 0 "C?" H 9255 2570 50  0000 L CNN
F 1 "100uF" H 9255 2370 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Reflow" H 9268 2320 50  0001 C CNN
F 3 "" H 9255 2570 50  0001 C CNN
F 4 "718-1102-1-ND" H 9230 2470 50  0001 C CNN "Digi-Key PN"
F 5 "7343" H 9080 2570 50  0000 R CNN "display_footprint"
F 6 "16V" H 9080 2470 50  0000 R CNN "Voltage"
F 7 "10%" H 9080 2370 50  0000 R CNN "Tolerance"
	1    9230 2470
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BB72223
P 9230 2620
F 0 "#PWR?" H 9230 2370 50  0001 C CNN
F 1 "GND" H 9230 2470 50  0000 C CNN
F 2 "" H 9230 2620 50  0001 C CNN
F 3 "" H 9230 2620 50  0001 C CNN
	1    9230 2620
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5BB79912
P 9230 2160
F 0 "#PWR?" H 9230 2010 50  0001 C CNN
F 1 "+12V" H 9230 2300 50  0000 C CNN
F 2 "" H 9230 2160 50  0001 C CNN
F 3 "" H 9230 2160 50  0001 C CNN
	1    9230 2160
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BB80B0C
P 2820 2160
F 0 "#FLG?" H 2820 2235 50  0001 C CNN
F 1 "PWR_FLAG" H 2820 2310 50  0000 C CNN
F 2 "" H 2820 2160 50  0001 C CNN
F 3 "~" H 2820 2160 50  0001 C CNN
	1    2820 2160
	1    0    0    -1  
$EndComp
Wire Wire Line
	2820 2160 2820 2240
$Comp
L Connector:Barrel_Jack_Switch J?
U 1 1 5BF0E9C8
P 1630 2340
F 0 "J?" H 1630 2550 50  0000 C CNN
F 1 "+12V IN" H 1630 2140 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 1680 2300 50  0001 C CNN
F 3 "~" H 1680 2300 50  0001 C CNN
	1    1630 2340
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF10B9D
P 2010 2520
F 0 "#PWR?" H 2010 2270 50  0001 C CNN
F 1 "GND" H 2010 2370 50  0000 C CNN
F 2 "" H 2010 2520 50  0001 C CNN
F 3 "" H 2010 2520 50  0001 C CNN
	1    2010 2520
	1    0    0    -1  
$EndComp
Wire Wire Line
	2010 2520 2010 2440
Wire Wire Line
	2010 2440 1930 2440
Wire Wire Line
	2010 2440 2010 2340
Wire Wire Line
	2010 2340 1930 2340
Connection ~ 2010 2440
Wire Wire Line
	1930 2240 2170 2240
Text Notes 2050 5570 0    50   ~ 0
UVLO threshold set to 11.12V\nOVLO threshold set to 13.33V\n\nMODE set to Circuit Breaker with Auto-Retry\n\nOutput Current Limit set to 1.2A\n\nOutput ramp rate = 12.5V/ms
Wire Wire Line
	8480 2170 8480 2240
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5BB7A7F6
P 8480 2170
F 0 "#FLG?" H 8480 2245 50  0001 C CNN
F 1 "PWR_FLAG" H 8480 2320 50  0000 C CNN
F 2 "" H 8480 2170 50  0001 C CNN
F 3 "~" H 8480 2170 50  0001 C CNN
	1    8480 2170
	1    0    0    -1  
$EndComp
Wire Wire Line
	9230 2160 9230 2240
Wire Wire Line
	9230 2320 9230 2240
Connection ~ 9230 2240
Wire Wire Line
	9230 2240 8480 2240
$Comp
L Custom_Library:+12Vin #PWR?
U 1 1 5BB6907F
P 6300 5960
F 0 "#PWR?" H 6300 5810 50  0001 C CNN
F 1 "+12Vin" H 6300 6110 50  0000 C CNN
F 2 "" H 6300 5960 50  0000 C CNN
F 3 "" H 6300 5960 50  0000 C CNN
	1    6300 5960
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BB5EFF4
P 6300 6260
F 0 "#PWR?" H 6300 6010 50  0001 C CNN
F 1 "GND" H 6300 6110 50  0000 C CNN
F 2 "" H 6300 6260 50  0001 C CNN
F 3 "" H 6300 6260 50  0001 C CNN
	1    6300 6260
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BB576FA
P 6300 6110
AR Path="/5BAAE16C/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5D77A516/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5EAE2D66/5BB576FA" Ref="C?"  Part="1" 
AR Path="/5F581B41/5BB576FA" Ref="C?"  Part="1" 
F 0 "C?" H 6325 6210 50  0000 L CNN
F 1 "0.1uF" H 6325 6010 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6338 5960 50  0001 C CNN
F 3 "" H 6325 6210 50  0001 C CNN
F 4 "0402" H 6150 6210 50  0000 R CNN "display_footprint"
F 5 "25V" H 6150 6110 50  0000 R CNN "Voltage"
F 6 "X7R" H 6150 6010 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H 6725 6610 60  0001 C CNN "Digi-Key PN"
	1    6300 6110
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:TPS26600RHFT U?
U 1 1 5DD82687
P 6300 3640
F 0 "U?" H 6700 2190 50  0000 R CNN
F 1 "TPS26600RHFT" H 6300 3640 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-24-1EP_4x5mm_Pitch0.5mm" H 6300 3650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps2660.pdf" H 6300 3650 50  0001 C CNN
F 4 "296-45478-1-ND" H 6300 3640 50  0001 C CNN "Digi-Key PN"
	1    6300 3640
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2240 5620 2240
Wire Wire Line
	5700 2340 5620 2340
Wire Wire Line
	5620 2340 5620 2240
Connection ~ 5620 2240
Wire Wire Line
	6900 2340 6980 2340
Wire Wire Line
	6980 2340 6980 2240
Wire Wire Line
	6980 2240 6900 2240
$Comp
L power:GND #PWR?
U 1 1 5DD8EB42
P 6300 5190
F 0 "#PWR?" H 6300 4940 50  0001 C CNN
F 1 "GND" H 6300 5040 50  0000 C CNN
F 2 "" H 6300 5190 50  0001 C CNN
F 3 "" H 6300 5190 50  0001 C CNN
	1    6300 5190
	1    0    0    -1  
$EndComp
Wire Wire Line
	7240 5060 7240 4940
Wire Wire Line
	7240 4940 6900 4940
Wire Wire Line
	8640 5060 8640 4840
Wire Wire Line
	8640 5360 8640 5460
Wire Wire Line
	8640 5460 7840 5460
Wire Wire Line
	5600 5460 5600 4940
Wire Wire Line
	5600 4940 5700 4940
Wire Wire Line
	5700 4840 5600 4840
Wire Wire Line
	5600 4840 5600 4940
Connection ~ 5600 4940
Wire Wire Line
	7240 5360 7240 5460
Wire Wire Line
	7240 5460 5600 5460
Wire Wire Line
	5620 2240 5300 2240
Wire Wire Line
	3350 2160 3350 2240
Connection ~ 3350 2240
Wire Wire Line
	3350 2240 2820 2240
NoConn ~ 5700 4140
Wire Wire Line
	5700 3040 5300 3040
Wire Wire Line
	5300 3040 5300 2810
Wire Wire Line
	5300 2510 5300 2240
Connection ~ 5300 2240
Wire Wire Line
	5300 2240 4500 2240
Wire Wire Line
	4500 2510 4500 2430
Connection ~ 4500 2240
Wire Wire Line
	5700 3240 4500 3240
Wire Wire Line
	4500 3240 4500 3370
Wire Wire Line
	5700 3840 4500 3840
Wire Wire Line
	4500 3840 4500 3670
Wire Wire Line
	4500 4230 4500 4150
Connection ~ 4500 3840
Wire Wire Line
	4500 4530 4500 4610
Wire Wire Line
	4500 5460 5300 5460
Connection ~ 5600 5460
Wire Wire Line
	5300 4230 5300 4040
Wire Wire Line
	5300 4040 5700 4040
Wire Wire Line
	5300 4530 5300 5460
Connection ~ 5300 5460
Wire Wire Line
	5300 5460 5600 5460
$Comp
L Custom_Library:R_Custom R?
U 1 1 5DDD7497
P 5300 2660
AR Path="/5D6B2673/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5D77A516/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5DDD7497" Ref="R?"  Part="1" 
AR Path="/5F581B41/5DDD7497" Ref="R?"  Part="1" 
F 0 "R?" H 5210 2660 50  0000 R CNN
F 1 "10k" V 5300 2590 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5300 2660 50  0001 C CNN
F 3 "" H 5300 2660 50  0001 C CNN
F 4 "0402" H 5400 2730 50  0000 L CNN "display_footprint"
F 5 "1%" H 5400 2630 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5400 2530 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5600 3060 60  0001 C CNN "Digi-Key PN"
	1    5300 2660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7910 2170 7910 2240
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5DDDDB66
P 7910 2170
F 0 "TP?" H 7910 2320 50  0000 C CNN
F 1 "TP_Pad" H 7910 2320 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 7910 2170 60  0001 C CNN
F 3 "" H 7910 2170 60  0000 C CNN
	1    7910 2170
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5DDDDFD1
P 4500 2160
F 0 "TP?" H 4500 2310 50  0000 C CNN
F 1 "TP_Pad" H 4500 2310 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 4500 2160 60  0001 C CNN
F 3 "" H 4500 2160 60  0000 C CNN
	1    4500 2160
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2160 4500 2240
$Comp
L Custom_Library:TP TP?
U 1 1 5DDE21C0
P 2120 4070
F 0 "TP?" H 2120 4220 50  0000 C CNN
F 1 "TP" H 2120 4220 50  0001 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x01_Pitch2.54mm" H 2120 4070 60  0001 C CNN
F 3 "" H 2120 4070 60  0000 C CNN
F 4 "" H 2120 4070 50  0001 C CNN "Digi-Key PN"
	1    2120 4070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDE2AAE
P 2120 4070
F 0 "#PWR?" H 2120 3820 50  0001 C CNN
F 1 "GND" H 2120 3920 50  0000 C CNN
F 2 "" H 2120 4070 50  0001 C CNN
F 3 "" H 2120 4070 50  0001 C CNN
	1    2120 4070
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA5A
P 7210 2240
AR Path="/5CB6F1ED/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5F28CA5A" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA5A" Ref="R?"  Part="1" 
F 0 "R?" V 7110 2240 50  0000 C CNN
F 1 "0.02" V 7210 2240 40  0000 C CNN
F 2 "Resistors_SMD:R_0612" H 7210 2240 50  0001 C CNN
F 3 "" H 7210 2240 50  0001 C CNN
F 4 "P16010CT-ND" H 7510 2640 60  0001 C CNN "Digi-Key PN"
F 5 "0612" V 7310 2240 50  0000 C CNN "display_footprint"
F 6 "1%" V 7410 2240 50  0000 C CNN "Tolerance"
F 7 "1W" V 7510 2240 50  0000 C CNN "Wattage"
F 8 "Telemetry" V 7040 2240 50  0000 C CNN "Configuration"
	1    7210 2240
	0    -1   -1   0   
$EndComp
Text GLabel 6980 1760 1    50   UnSpc ~ 0
POS12_SNS+
Text GLabel 7440 1760 1    50   UnSpc ~ 0
POS12_SNS-
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA66
P 6980 1910
AR Path="/5CB0BC26/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5F28CA66" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA66" Ref="R?"  Part="1" 
F 0 "R?" V 6880 1910 50  0000 C CNN
F 1 "10" V 6980 1910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6980 1910 50  0001 C CNN
F 3 "" H 6980 1910 50  0001 C CNN
F 4 "0402" V 7080 1910 50  0001 C CNN "display_footprint"
F 5 "1%" V 7180 1910 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7280 1910 50  0001 C CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 6980 1910 50  0001 C CNN "Digi-Key PN"
F 8 "Telemetry" V 7070 1910 50  0000 C CNN "Configuration"
	1    6980 1910
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F28CA70
P 7440 1910
AR Path="/5CB0BC26/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E1352F5/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5CB6F1ED/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5F28CA70" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F28CA70" Ref="R?"  Part="1" 
F 0 "R?" V 7340 1910 50  0000 C CNN
F 1 "10" V 7440 1910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7440 1910 50  0001 C CNN
F 3 "" H 7440 1910 50  0001 C CNN
F 4 "0402" V 7540 1910 50  0001 C CNN "display_footprint"
F 5 "1%" V 7640 1910 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7740 1910 50  0001 C CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 7440 1910 50  0001 C CNN "Digi-Key PN"
F 8 "Telemetry" V 7530 1910 50  0000 C CNN "Configuration"
	1    7440 1910
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7360 2240 7440 2240
Wire Wire Line
	6980 2060 6980 2240
Wire Wire Line
	6980 2240 7060 2240
Wire Wire Line
	7440 2060 7440 2240
Connection ~ 7440 2240
Wire Wire Line
	7440 2240 7910 2240
Connection ~ 6980 2240
Wire Wire Line
	8480 2240 7910 2240
Connection ~ 8480 2240
Connection ~ 7910 2240
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2C0F58
P 8640 5210
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
AR Path="/5EAE2D66/5F2C0F58" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F2C0F58" Ref="R?"  Part="1" 
F 0 "R?" H 8560 5210 50  0000 R CNN
F 1 "10k" V 8640 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8640 5210 50  0001 C CNN
F 3 "" H 8640 5210 50  0001 C CNN
F 4 "0402" H 8740 5290 50  0000 L CNN "display_footprint"
F 5 "1%" H 8740 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8750 5130 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8940 5610 60  0001 C CNN "Digi-Key PN"
	1    8640 5210
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F374B48
P 7240 5210
AR Path="/5BB27BA3/5F374B48" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F374B48" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F374B48" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F374B48" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F374B48" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F374B48" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F374B48" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F374B48" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F374B48" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F374B48" Ref="R?"  Part="1" 
AR Path="/5F280E04/5F374B48" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F374B48" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5F374B48" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F374B48" Ref="R?"  Part="1" 
F 0 "R?" H 7160 5210 50  0000 R CNN
F 1 "10k" V 7240 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7240 5210 50  0001 C CNN
F 3 "" H 7240 5210 50  0001 C CNN
F 4 "0402" H 7340 5290 50  0000 L CNN "display_footprint"
F 5 "1%" H 7340 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7350 5130 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 7540 5610 60  0001 C CNN "Digi-Key PN"
	1    7240 5210
	1    0    0    -1  
$EndComp
Wire Wire Line
	2820 2320 2820 2240
$Comp
L Device:D_TVS_ALT D?
U 1 1 5BC52DC5
P 2820 2470
F 0 "D?" V 2774 2549 50  0000 L CNN
F 1 "24V" V 2865 2549 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA" H 2820 2470 50  0001 C CNN
F 3 "~" H 2820 2470 50  0001 C CNN
F 4 "SMAJ24CALFCT-ND" H 2820 2470 50  0001 C CNN "Digi-Key PN"
F 5 "DNP" V 2820 2260 50  0000 C CNN "Configuration"
	1    2820 2470
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BC52ED8
P 2820 2620
F 0 "#PWR?" H 2820 2370 50  0001 C CNN
F 1 "GND" H 2820 2470 50  0000 C CNN
F 2 "" H 2820 2620 50  0001 C CNN
F 3 "" H 2820 2620 50  0001 C CNN
	1    2820 2620
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE1E132
P 4500 3520
AR Path="/5EAE2F97/5FE1E132" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE1E132" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE1E132" Ref="R?"  Part="1" 
F 0 "R?" H 4440 3520 50  0000 R CNN
F 1 "1k" V 4500 3520 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4500 3520 50  0001 C CNN
F 3 "" H 4500 3520 50  0001 C CNN
F 4 "0402" H 4570 3600 50  0000 L CNN "display_footprint"
F 5 "1%" H 4570 3520 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4570 3450 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 4800 3920 60  0001 C CNN "Digi-Key PN"
	1    4500 3520
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE20796
P 4500 4380
AR Path="/5D6B2673/5FE20796" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FE20796" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FE20796" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FE20796" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE20796" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE20796" Ref="R?"  Part="1" 
F 0 "R?" H 4410 4380 50  0000 R CNN
F 1 "10k" V 4500 4310 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4500 4380 50  0001 C CNN
F 3 "" H 4500 4380 50  0001 C CNN
F 4 "0402" H 4600 4450 50  0000 L CNN "display_footprint"
F 5 "1%" H 4600 4350 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4600 4250 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4800 4780 60  0001 C CNN "Digi-Key PN"
	1    4500 4380
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE22A81
P 3990 4380
AR Path="/5D6B2673/5FE22A81" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FE22A81" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FE22A81" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FE22A81" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE22A81" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE22A81" Ref="R?"  Part="1" 
F 0 "R?" H 3900 4380 50  0000 R CNN
F 1 "10k" V 3990 4310 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3990 4380 50  0001 C CNN
F 3 "" H 3990 4380 50  0001 C CNN
F 4 "0402" H 4090 4450 50  0000 L CNN "display_footprint"
F 5 "1%" H 4090 4350 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4090 4250 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4290 4780 60  0001 C CNN "Digi-Key PN"
	1    3990 4380
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3990 4230 3990 4150
Wire Wire Line
	3990 4150 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4500 4150 4500 3840
Wire Wire Line
	3990 4530 3990 4610
Wire Wire Line
	3990 4610 4500 4610
Connection ~ 4500 4610
Wire Wire Line
	4500 4610 4500 5460
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE37926
P 3990 2660
AR Path="/5E939D51/5FE37926" Ref="R?"  Part="1" 
AR Path="/5E939F76/5FE37926" Ref="R?"  Part="1" 
AR Path="/5EAE2F97/5FE37926" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE37926" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE37926" Ref="R?"  Part="1" 
F 0 "R?" H 4060 2790 50  0000 L CNN
F 1 "100k" V 3990 2660 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3990 2660 50  0001 C CNN
F 3 "" H 3990 2660 50  0001 C CNN
F 4 "0402" H 4060 2710 50  0000 L CNN "display_footprint"
F 5 "1%" H 4060 2620 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4060 2530 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT100KCT-ND" H 3990 2660 50  0001 C CNN "Digi-Key PN"
	1    3990 2660
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE37930
P 4500 2660
AR Path="/5E939D51/5FE37930" Ref="R?"  Part="1" 
AR Path="/5E939F76/5FE37930" Ref="R?"  Part="1" 
AR Path="/5EAE2F97/5FE37930" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE37930" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE37930" Ref="R?"  Part="1" 
F 0 "R?" H 4570 2790 50  0000 L CNN
F 1 "100k" V 4500 2660 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4500 2660 50  0001 C CNN
F 3 "" H 4500 2660 50  0001 C CNN
F 4 "0402" H 4570 2710 50  0000 L CNN "display_footprint"
F 5 "1%" H 4570 2620 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4570 2530 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT100KCT-ND" H 4500 2660 50  0001 C CNN "Digi-Key PN"
	1    4500 2660
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4500 2810 4500 2890
Connection ~ 4500 3240
Wire Wire Line
	3990 2510 3990 2430
Wire Wire Line
	3990 2430 4500 2430
Connection ~ 4500 2430
Wire Wire Line
	4500 2430 4500 2240
Wire Wire Line
	3350 2240 4500 2240
Wire Wire Line
	3990 2810 3990 2890
Wire Wire Line
	3990 2890 4500 2890
Connection ~ 4500 2890
Wire Wire Line
	4500 2890 4500 3240
$Comp
L Custom_Library:C_Custom C?
U 1 1 5DEADB5A
P 5300 4380
AR Path="/5BAAE16C/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5D77A516/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5EAE2D66/5DEADB5A" Ref="C?"  Part="1" 
AR Path="/5F581B41/5DEADB5A" Ref="C?"  Part="1" 
F 0 "C?" H 5325 4480 50  0000 L CNN
F 1 "10nF" H 5325 4280 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5338 4230 50  0001 C CNN
F 3 "" H 5325 4480 50  0001 C CNN
F 4 "0402" H 5150 4480 50  0000 R CNN "display_footprint"
F 5 "50V" H 5150 4380 50  0000 R CNN "Voltage"
F 6 "X7R" H 5150 4280 50  0000 R CNN "Dielectric"
F 7 "399-3066-1-ND" H 5725 4880 60  0001 C CNN "Digi-Key PN"
	1    5300 4380
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE466A1
P 7210 2640
AR Path="/5EAE2EF2/5FE466A1" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/5FE466A1" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FE466A1" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE466A1" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE466A1" Ref="R?"  Part="1" 
F 0 "R?" V 7110 2640 50  0000 C CNN
F 1 "0" V 7210 2640 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7210 2640 50  0001 C CNN
F 3 "" H 7210 2640 50  0001 C CNN
F 4 "0402" V 7310 2640 50  0001 C CNN "display_footprint"
F 5 "1%" V 7410 2640 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7510 2640 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7310 2640 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7210 2640 50  0001 C CNN "Digi-Key PN"
	1    7210 2640
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE480C1
P 7210 2940
AR Path="/5EAE2EF2/5FE480C1" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/5FE480C1" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FE480C1" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE480C1" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE480C1" Ref="R?"  Part="1" 
F 0 "R?" V 7110 2940 50  0000 C CNN
F 1 "0" V 7210 2940 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7210 2940 50  0001 C CNN
F 3 "" H 7210 2940 50  0001 C CNN
F 4 "0402" V 7310 2940 50  0001 C CNN "display_footprint"
F 5 "1%" V 7410 2940 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7510 2940 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7310 2940 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7210 2940 50  0001 C CNN "Digi-Key PN"
	1    7210 2940
	0    -1   1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE484F4
P 7210 3240
AR Path="/5EAE2EF2/5FE484F4" Ref="R?"  Part="1" 
AR Path="/5EAE30C7/5FE484F4" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FE484F4" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE484F4" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE484F4" Ref="R?"  Part="1" 
F 0 "R?" V 7110 3240 50  0000 C CNN
F 1 "0" V 7210 3240 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7210 3240 50  0001 C CNN
F 3 "" H 7210 3240 50  0001 C CNN
F 4 "0402" V 7310 3240 50  0001 C CNN "display_footprint"
F 5 "1%" V 7410 3240 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 7510 3240 50  0001 C CNN "Wattage"
F 7 "~Telemetry" V 7310 3240 50  0000 C CNN "Configuration"
F 8 "2019-RK73Z1ETTPCT-ND" H 7210 3240 50  0001 C CNN "Digi-Key PN"
	1    7210 3240
	0    -1   1    0   
$EndComp
Wire Wire Line
	7360 3240 7440 3240
Wire Wire Line
	7440 3240 7440 2940
Wire Wire Line
	6980 2340 6980 2640
Wire Wire Line
	6980 3240 7060 3240
Connection ~ 6980 2340
Wire Wire Line
	7060 2940 6980 2940
Connection ~ 6980 2940
Wire Wire Line
	6980 2940 6980 3240
Wire Wire Line
	7360 2940 7440 2940
Connection ~ 7440 2940
Wire Wire Line
	7440 2940 7440 2640
Wire Wire Line
	7360 2640 7440 2640
Connection ~ 7440 2640
Wire Wire Line
	7440 2640 7440 2240
Wire Wire Line
	7060 2640 6980 2640
Connection ~ 6980 2640
Wire Wire Line
	6980 2640 6980 2940
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE33851
P 8400 3910
AR Path="/5D6B2673/5FE33851" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FE33851" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FE33851" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FE33851" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE33851" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE33851" Ref="R?"  Part="1" 
F 0 "R?" H 8310 3910 50  0000 R CNN
F 1 "10k" V 8400 3840 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8400 3910 50  0001 C CNN
F 3 "" H 8400 3910 50  0001 C CNN
F 4 "0402" H 8500 3980 50  0000 L CNN "display_footprint"
F 5 "1%" H 8500 3880 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8500 3780 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8700 4310 60  0001 C CNN "Digi-Key PN"
	1    8400 3910
	1    0    0    -1  
$EndComp
Text GLabel 9170 4140 2    50   Output ~ 0
POS12_PGOOD
Text Notes 8970 3890 0    50   ~ 0
+3.3V Logic Level
$Comp
L power:GND #PWR?
U 1 1 5FE30A71
P 9090 4520
F 0 "#PWR?" H 9090 4270 50  0001 C CNN
F 1 "GND" H 9090 4370 50  0000 C CNN
F 2 "" H 9090 4520 50  0001 C CNN
F 3 "" H 9090 4520 50  0001 C CNN
	1    9090 4520
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4140 8400 4140
Connection ~ 8400 4140
Wire Wire Line
	8400 4140 8400 4060
Wire Wire Line
	9170 4140 9090 4140
Wire Wire Line
	9090 4140 8400 4140
Connection ~ 9090 4140
Wire Wire Line
	9090 4220 9090 4140
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE28AEA
P 9090 4370
AR Path="/5D6B2673/5FE28AEA" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FE28AEA" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FE28AEA" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FE28AEA" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE28AEA" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE28AEA" Ref="R?"  Part="1" 
F 0 "R?" H 9000 4370 50  0000 R CNN
F 1 "10k" V 9090 4300 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 9090 4370 50  0001 C CNN
F 3 "" H 9090 4370 50  0001 C CNN
F 4 "0402" H 9190 4440 50  0000 L CNN "display_footprint"
F 5 "1%" H 9190 4340 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 9190 4240 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 9390 4770 60  0001 C CNN "Digi-Key PN"
	1    9090 4370
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE28ADC
P 8400 4370
AR Path="/5D6B2673/5FE28ADC" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FE28ADC" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FE28ADC" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FE28ADC" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE28ADC" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE28ADC" Ref="R?"  Part="1" 
F 0 "R?" H 8310 4370 50  0000 R CNN
F 1 "10k" V 8400 4300 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 8400 4370 50  0001 C CNN
F 3 "" H 8400 4370 50  0001 C CNN
F 4 "0402" H 8500 4440 50  0000 L CNN "display_footprint"
F 5 "1%" H 8500 4340 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8500 4240 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8700 4770 60  0001 C CNN "Digi-Key PN"
	1    8400 4370
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4220 8400 4140
$Comp
L power:GND #PWR?
U 1 1 5F2844B0
P 8400 4520
F 0 "#PWR?" H 8400 4270 50  0001 C CNN
F 1 "GND" H 8400 4370 50  0000 C CNN
F 2 "" H 8400 4520 50  0001 C CNN
F 3 "" H 8400 4520 50  0001 C CNN
	1    8400 4520
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5F27F609
P 8400 2860
F 0 "#PWR?" H 8400 2710 50  0001 C CNN
F 1 "+12V" H 8400 3000 50  0000 C CNN
F 2 "" H 8400 2860 50  0001 C CNN
F 3 "" H 8400 2860 50  0001 C CNN
	1    8400 2860
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE34159
P 8400 3010
AR Path="/5EAE2F97/5FE34159" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE34159" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE34159" Ref="R?"  Part="1" 
F 0 "R?" H 8340 3010 50  0000 R CNN
F 1 "1k" V 8400 3010 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8400 3010 50  0001 C CNN
F 3 "" H 8400 3010 50  0001 C CNN
F 4 "0402" H 8470 3090 50  0000 L CNN "display_footprint"
F 5 "1%" H 8470 3010 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8470 2940 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 8700 3410 60  0001 C CNN "Digi-Key PN"
	1    8400 3010
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE33ED2
P 8400 3310
AR Path="/5EAE2F97/5FE33ED2" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE33ED2" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE33ED2" Ref="R?"  Part="1" 
F 0 "R?" H 8340 3310 50  0000 R CNN
F 1 "1k" V 8400 3310 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8400 3310 50  0001 C CNN
F 3 "" H 8400 3310 50  0001 C CNN
F 4 "0402" H 8470 3390 50  0000 L CNN "display_footprint"
F 5 "1%" H 8470 3310 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8470 3240 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 8700 3710 60  0001 C CNN "Digi-Key PN"
	1    8400 3310
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FE33ADA
P 8400 3610
AR Path="/5EAE2F97/5FE33ADA" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/5FE33ADA" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FE33ADA" Ref="R?"  Part="1" 
F 0 "R?" H 8340 3610 50  0000 R CNN
F 1 "1k" V 8400 3610 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 8400 3610 50  0001 C CNN
F 3 "" H 8400 3610 50  0001 C CNN
F 4 "0402" H 8470 3690 50  0000 L CNN "display_footprint"
F 5 "1%" H 8470 3610 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 8470 3540 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 8700 4010 60  0001 C CNN "Digi-Key PN"
	1    8400 3610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 602CAA2F
P 7840 5210
AR Path="/5BB27BA3/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5D779AE1/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5CB7718D/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5E0DC082/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5E0F263A/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5E939D31/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5E98CF45/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5F280E04/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5E939CFF/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5EAE2D66/602CAA2F" Ref="R?"  Part="1" 
AR Path="/5F581B41/602CAA2F" Ref="R?"  Part="1" 
F 0 "R?" H 7760 5210 50  0000 R CNN
F 1 "10k" V 7840 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7840 5210 50  0001 C CNN
F 3 "" H 7840 5210 50  0001 C CNN
F 4 "0402" H 7940 5290 50  0000 L CNN "display_footprint"
F 5 "1%" H 7940 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7950 5130 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 8140 5610 60  0001 C CNN "Digi-Key PN"
F 8 "DNP" H 7940 5370 50  0000 L CNN "Configuration"
	1    7840 5210
	1    0    0    -1  
$EndComp
Wire Wire Line
	7840 5360 7840 5460
Wire Wire Line
	7840 5460 7240 5460
Connection ~ 7840 5460
Connection ~ 7240 5460
Wire Wire Line
	7840 5060 7840 4940
Wire Wire Line
	7840 4940 7240 4940
Connection ~ 7240 4940
Wire Wire Line
	6900 4840 8640 4840
Wire Wire Line
	1930 3110 2170 3110
Wire Wire Line
	2170 3110 2170 2240
Connection ~ 2170 2240
Wire Wire Line
	2170 2240 2820 2240
$Comp
L power:GND #PWR?
U 1 1 601820E0
P 2010 3520
F 0 "#PWR?" H 2010 3270 50  0001 C CNN
F 1 "GND" H 2010 3370 50  0000 C CNN
F 2 "" H 2010 3520 50  0001 C CNN
F 3 "" H 2010 3520 50  0001 C CNN
	1    2010 3520
	1    0    0    -1  
$EndComp
Wire Wire Line
	2010 3520 2010 3440
Wire Wire Line
	2010 3440 1930 3440
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 6017C82A
P 1730 3110
F 0 "J?" H 1730 3210 50  0000 C CNN
F 1 "Keystone_8191" H 1730 3010 50  0000 C CNN
F 2 "Custom Footprints Library:Keystone_8191" H 1730 3110 50  0001 C CNN
F 3 "~" H 1730 3110 50  0001 C CNN
F 4 "DNP" H 1910 3110 50  0000 C CNN "Configuration"
	1    1730 3110
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J?
U 1 1 60188AA9
P 1730 3440
F 0 "J?" H 1730 3540 50  0000 C CNN
F 1 "Keystone_8191" H 1730 3340 50  0000 C CNN
F 2 "Custom Footprints Library:Keystone_8191" H 1730 3440 50  0001 C CNN
F 3 "~" H 1730 3440 50  0001 C CNN
F 4 "DNP" H 1910 3440 50  0000 C CNN "Configuration"
	1    1730 3440
	-1   0    0    1   
$EndComp
$EndSCHEMATC
