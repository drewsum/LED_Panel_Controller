EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 34
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
L Custom_Library:R_Custom R?
U 1 1 5FFD2F97
P 2880 2230
AR Path="/5D6B2673/5FFD2F97" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FFD2F97" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FFD2F97" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FFD2F97" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FFD2F97" Ref="R?"  Part="1" 
AR Path="/5F5829EF/5FFD2F97" Ref="R?"  Part="1" 
F 0 "R?" H 2790 2230 50  0000 R CNN
F 1 "10k" V 2880 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2880 2230 50  0001 C CNN
F 3 "" H 2880 2230 50  0001 C CNN
F 4 "0402" H 2980 2300 50  0000 L CNN "display_footprint"
F 5 "1%" H 2980 2200 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2980 2100 50  0000 L CNN "Wattage"
F 7 "" H 3180 2630 60  0001 C CNN "Digi-Key PN"
	1    2880 2230
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FFD2FCD
P 2880 2690
AR Path="/5D6B2673/5FFD2FCD" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FFD2FCD" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FFD2FCD" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FFD2FCD" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FFD2FCD" Ref="R?"  Part="1" 
AR Path="/5F5829EF/5FFD2FCD" Ref="R?"  Part="1" 
F 0 "R?" H 2790 2690 50  0000 R CNN
F 1 "10" V 2880 2640 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2880 2690 50  0001 C CNN
F 3 "" H 2880 2690 50  0001 C CNN
F 4 "0402" H 2980 2760 50  0000 L CNN "display_footprint"
F 5 "1%" H 2980 2660 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2980 2560 50  0000 L CNN "Wattage"
F 7 "Telemetry" H 2610 2600 50  0000 C CNN "Configuration"
	1    2880 2690
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD37BE
P 2880 2840
F 0 "#PWR?" H 2880 2590 50  0001 C CNN
F 1 "GND" H 2880 2690 50  0000 C CNN
F 2 "" H 2880 2840 50  0001 C CNN
F 3 "" H 2880 2840 50  0001 C CNN
	1    2880 2840
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FFD3948
P 2880 2080
F 0 "#PWR?" H 2880 1930 50  0001 C CNN
F 1 "+3.3V" H 2880 2220 50  0000 C CNN
F 2 "" H 2880 2080 50  0001 C CNN
F 3 "" H 2880 2080 50  0001 C CNN
	1    2880 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	2880 2540 2880 2460
Text GLabel 2960 2460 2    50   Output ~ 0
~Telemetry_Config
Wire Wire Line
	2960 2460 2880 2460
Connection ~ 2880 2460
Wire Wire Line
	2880 2460 2880 2380
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FFD5206
P 4440 2230
AR Path="/5D6B2673/5FFD5206" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FFD5206" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FFD5206" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FFD5206" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FFD5206" Ref="R?"  Part="1" 
AR Path="/5F5829EF/5FFD5206" Ref="R?"  Part="1" 
F 0 "R?" H 4350 2230 50  0000 R CNN
F 1 "10k" V 4440 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4440 2230 50  0001 C CNN
F 3 "" H 4440 2230 50  0001 C CNN
F 4 "0402" H 4540 2300 50  0000 L CNN "display_footprint"
F 5 "1%" H 4540 2200 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4540 2100 50  0000 L CNN "Wattage"
F 7 "" H 4740 2630 60  0001 C CNN "Digi-Key PN"
	1    4440 2230
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FFD525E
P 4440 2690
AR Path="/5D6B2673/5FFD525E" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FFD525E" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FFD525E" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FFD525E" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FFD525E" Ref="R?"  Part="1" 
AR Path="/5F5829EF/5FFD525E" Ref="R?"  Part="1" 
F 0 "R?" H 4350 2690 50  0000 R CNN
F 1 "10" V 4440 2640 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4440 2690 50  0001 C CNN
F 3 "" H 4440 2690 50  0001 C CNN
F 4 "0402" H 4540 2760 50  0000 L CNN "display_footprint"
F 5 "1%" H 4540 2660 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4540 2560 50  0000 L CNN "Wattage"
F 7 "ETC" H 4280 2600 50  0000 C CNN "Configuration"
	1    4440 2690
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFD5268
P 4440 2840
F 0 "#PWR?" H 4440 2590 50  0001 C CNN
F 1 "GND" H 4440 2690 50  0000 C CNN
F 2 "" H 4440 2840 50  0001 C CNN
F 3 "" H 4440 2840 50  0001 C CNN
	1    4440 2840
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FFD5272
P 4440 2080
F 0 "#PWR?" H 4440 1930 50  0001 C CNN
F 1 "+3.3V" H 4440 2220 50  0000 C CNN
F 2 "" H 4440 2080 50  0001 C CNN
F 3 "" H 4440 2080 50  0001 C CNN
	1    4440 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	4440 2540 4440 2460
Text GLabel 4520 2460 2    50   Output ~ 0
~ETC_Config
Wire Wire Line
	4520 2460 4440 2460
Connection ~ 4440 2460
Wire Wire Line
	4440 2460 4440 2380
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F5320
P 6000 2230
AR Path="/5D6B2673/601F5320" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/601F5320" Ref="R?"  Part="1" 
AR Path="/5D77A516/601F5320" Ref="R?"  Part="1" 
AR Path="/5E939CFF/601F5320" Ref="R?"  Part="1" 
AR Path="/5F581B41/601F5320" Ref="R?"  Part="1" 
AR Path="/5F5829EF/601F5320" Ref="R?"  Part="1" 
F 0 "R?" H 5910 2230 50  0000 R CNN
F 1 "10k" V 6000 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6000 2230 50  0001 C CNN
F 3 "" H 6000 2230 50  0001 C CNN
F 4 "0402" H 6100 2300 50  0000 L CNN "display_footprint"
F 5 "1%" H 6100 2200 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6100 2100 50  0000 L CNN "Wattage"
F 7 "" H 6300 2630 60  0001 C CNN "Digi-Key PN"
	1    6000 2230
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601F53B6
P 6000 2690
AR Path="/5D6B2673/601F53B6" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/601F53B6" Ref="R?"  Part="1" 
AR Path="/5D77A516/601F53B6" Ref="R?"  Part="1" 
AR Path="/5E939CFF/601F53B6" Ref="R?"  Part="1" 
AR Path="/5F581B41/601F53B6" Ref="R?"  Part="1" 
AR Path="/5F5829EF/601F53B6" Ref="R?"  Part="1" 
F 0 "R?" H 5910 2690 50  0000 R CNN
F 1 "10" V 6000 2640 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6000 2690 50  0001 C CNN
F 3 "" H 6000 2690 50  0001 C CNN
F 4 "0402" H 6100 2760 50  0000 L CNN "display_footprint"
F 5 "1%" H 6100 2660 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6100 2560 50  0000 L CNN "Wattage"
F 7 "WIFI" H 5840 2600 50  0000 C CNN "Configuration"
	1    6000 2690
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601F53C0
P 6000 2840
F 0 "#PWR?" H 6000 2590 50  0001 C CNN
F 1 "GND" H 6000 2690 50  0000 C CNN
F 2 "" H 6000 2840 50  0001 C CNN
F 3 "" H 6000 2840 50  0001 C CNN
	1    6000 2840
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601F53CA
P 6000 2080
F 0 "#PWR?" H 6000 1930 50  0001 C CNN
F 1 "+3.3V" H 6000 2220 50  0000 C CNN
F 2 "" H 6000 2080 50  0001 C CNN
F 3 "" H 6000 2080 50  0001 C CNN
	1    6000 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 2540 6000 2460
Text GLabel 6080 2460 2    50   Output ~ 0
~WIFI_Config
Wire Wire Line
	6080 2460 6000 2460
Connection ~ 6000 2460
Wire Wire Line
	6000 2460 6000 2380
$Comp
L Custom_Library:R_Custom R?
U 1 1 6025A56C
P 7250 2230
AR Path="/5D6B2673/6025A56C" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/6025A56C" Ref="R?"  Part="1" 
AR Path="/5D77A516/6025A56C" Ref="R?"  Part="1" 
AR Path="/5E939CFF/6025A56C" Ref="R?"  Part="1" 
AR Path="/5F581B41/6025A56C" Ref="R?"  Part="1" 
AR Path="/5F5829EF/6025A56C" Ref="R?"  Part="1" 
F 0 "R?" H 7160 2230 50  0000 R CNN
F 1 "10k" V 7250 2160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7250 2230 50  0001 C CNN
F 3 "" H 7250 2230 50  0001 C CNN
F 4 "0402" H 7350 2300 50  0000 L CNN "display_footprint"
F 5 "1%" H 7350 2200 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7350 2100 50  0000 L CNN "Wattage"
F 7 "" H 7550 2630 60  0001 C CNN "Digi-Key PN"
	1    7250 2230
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6025A640
P 7250 2690
AR Path="/5D6B2673/6025A640" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/6025A640" Ref="R?"  Part="1" 
AR Path="/5D77A516/6025A640" Ref="R?"  Part="1" 
AR Path="/5E939CFF/6025A640" Ref="R?"  Part="1" 
AR Path="/5F581B41/6025A640" Ref="R?"  Part="1" 
AR Path="/5F5829EF/6025A640" Ref="R?"  Part="1" 
F 0 "R?" H 7160 2690 50  0000 R CNN
F 1 "10" V 7250 2640 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7250 2690 50  0001 C CNN
F 3 "" H 7250 2690 50  0001 C CNN
F 4 "0402" H 7350 2760 50  0000 L CNN "display_footprint"
F 5 "1%" H 7350 2660 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7350 2560 50  0000 L CNN "Wattage"
F 7 "BACKUP_RTC" H 7160 2600 50  0000 R CNN "Configuration"
	1    7250 2690
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6025A64A
P 7250 2840
F 0 "#PWR?" H 7250 2590 50  0001 C CNN
F 1 "GND" H 7250 2690 50  0000 C CNN
F 2 "" H 7250 2840 50  0001 C CNN
F 3 "" H 7250 2840 50  0001 C CNN
	1    7250 2840
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6025A654
P 7250 2080
F 0 "#PWR?" H 7250 1930 50  0001 C CNN
F 1 "+3.3V" H 7250 2220 50  0000 C CNN
F 2 "" H 7250 2080 50  0001 C CNN
F 3 "" H 7250 2080 50  0001 C CNN
	1    7250 2080
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2540 7250 2460
Text GLabel 7330 2460 2    50   Output ~ 0
~BACKUP_RTC_Config
Wire Wire Line
	7330 2460 7250 2460
Connection ~ 7250 2460
Wire Wire Line
	7250 2460 7250 2380
$Comp
L Custom_Library:R_Custom R?
U 1 1 6026E7E6
P 2880 3440
AR Path="/5D6B2673/6026E7E6" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/6026E7E6" Ref="R?"  Part="1" 
AR Path="/5D77A516/6026E7E6" Ref="R?"  Part="1" 
AR Path="/5E939CFF/6026E7E6" Ref="R?"  Part="1" 
AR Path="/5F581B41/6026E7E6" Ref="R?"  Part="1" 
AR Path="/5F5829EF/6026E7E6" Ref="R?"  Part="1" 
F 0 "R?" H 2790 3440 50  0000 R CNN
F 1 "10k" V 2880 3370 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2880 3440 50  0001 C CNN
F 3 "" H 2880 3440 50  0001 C CNN
F 4 "0402" H 2980 3510 50  0000 L CNN "display_footprint"
F 5 "1%" H 2980 3410 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2980 3310 50  0000 L CNN "Wattage"
F 7 "" H 3180 3840 60  0001 C CNN "Digi-Key PN"
	1    2880 3440
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 6026E8F8
P 2880 3900
AR Path="/5D6B2673/6026E8F8" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/6026E8F8" Ref="R?"  Part="1" 
AR Path="/5D77A516/6026E8F8" Ref="R?"  Part="1" 
AR Path="/5E939CFF/6026E8F8" Ref="R?"  Part="1" 
AR Path="/5F581B41/6026E8F8" Ref="R?"  Part="1" 
AR Path="/5F5829EF/6026E8F8" Ref="R?"  Part="1" 
F 0 "R?" H 2790 3900 50  0000 R CNN
F 1 "10" V 2880 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2880 3900 50  0001 C CNN
F 3 "" H 2880 3900 50  0001 C CNN
F 4 "0402" H 2980 3970 50  0000 L CNN "display_footprint"
F 5 "1%" H 2980 3870 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2980 3770 50  0000 L CNN "Wattage"
F 7 "SPI_FLASH" H 2610 3810 50  0000 C CNN "Configuration"
	1    2880 3900
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6026E902
P 2880 4050
F 0 "#PWR?" H 2880 3800 50  0001 C CNN
F 1 "GND" H 2880 3900 50  0000 C CNN
F 2 "" H 2880 4050 50  0001 C CNN
F 3 "" H 2880 4050 50  0001 C CNN
	1    2880 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6026E90C
P 2880 3290
F 0 "#PWR?" H 2880 3140 50  0001 C CNN
F 1 "+3.3V" H 2880 3430 50  0000 C CNN
F 2 "" H 2880 3290 50  0001 C CNN
F 3 "" H 2880 3290 50  0001 C CNN
	1    2880 3290
	1    0    0    -1  
$EndComp
Wire Wire Line
	2880 3750 2880 3670
Text GLabel 2960 3670 2    50   Output ~ 0
~SPI_FLASH_Config
Wire Wire Line
	2960 3670 2880 3670
Connection ~ 2880 3670
Wire Wire Line
	2880 3670 2880 3590
$EndSCHEMATC
