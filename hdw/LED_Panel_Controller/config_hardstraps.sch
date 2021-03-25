EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 34
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
$Comp
L power:GND #PWR?
U 1 1 6020718A
P 2520 6520
AR Path="/5B3E071A/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/6020718A" Ref="#PWR?"  Part="1" 
AR Path="/5F5829EF/6020718A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2520 6270 50  0001 C CNN
F 1 "GND" H 2520 6370 50  0000 C CNN
F 2 "" H 2520 6520 50  0001 C CNN
F 3 "" H 2520 6520 50  0001 C CNN
	1    2520 6520
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2520 6520 2520 6480
Wire Wire Line
	2520 6480 2520 6440
Wire Wire Line
	2520 6480 2420 6480
Wire Wire Line
	2420 6480 2420 6440
Connection ~ 2520 6480
$Comp
L power:+3.3V #PWR?
U 1 1 60207195
P 2520 5440
AR Path="/5E0652BA/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/60207195" Ref="#PWR?"  Part="1" 
AR Path="/5F5829EF/60207195" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2520 5290 50  0001 C CNN
F 1 "+3.3V" H 2520 5580 50  0000 C CNN
F 2 "" H 2520 5440 50  0001 C CNN
F 3 "" H 2520 5440 50  0001 C CNN
	1    2520 5440
	-1   0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 6020719D
P 2520 5940
AR Path="/5B3E071A/6020719D" Ref="U?"  Part="1" 
AR Path="/5E0652BA/6020719D" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/6020719D" Ref="U?"  Part="1" 
AR Path="/5E052856/6020719D" Ref="U?"  Part="1" 
AR Path="/5EAE2D84/6020719D" Ref="U?"  Part="1" 
AR Path="/5F581B58/6020719D" Ref="U?"  Part="1" 
AR Path="/5F581B77/6020719D" Ref="U?"  Part="1" 
AR Path="/5F5829EF/6020719D" Ref="U?"  Part="1" 
F 0 "U?" H 2270 6390 50  0000 C CNN
F 1 "MCP9804" H 2920 6390 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 1420 5440 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 2270 6390 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 2520 5940 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 2920 6470 50  0000 C CNN "Configuration"
	1    2520 5940
	-1   0    0    -1  
$EndComp
Text GLabel 2920 5740 2    50   Input ~ 0
I2C_SCL
Text GLabel 2920 5640 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 2120 5940
$Comp
L power:+3.3V #PWR?
U 1 1 602071A6
P 2520 6940
AR Path="/5E0652BA/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/602071A6" Ref="#PWR?"  Part="1" 
AR Path="/5F5829EF/602071A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2520 6790 50  0001 C CNN
F 1 "+3.3V" H 2520 7080 50  0000 C CNN
F 2 "" H 2520 6940 50  0001 C CNN
F 3 "" H 2520 6940 50  0001 C CNN
	1    2520 6940
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 602071AC
P 2520 7240
AR Path="/5E0652BA/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/602071AC" Ref="#PWR?"  Part="1" 
AR Path="/5F5829EF/602071AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2520 6990 50  0001 C CNN
F 1 "GND" H 2520 7090 50  0000 C CNN
F 2 "" H 2520 7240 50  0001 C CNN
F 3 "" H 2520 7240 50  0001 C CNN
	1    2520 7240
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 602071B2
P 3420 6960
AR Path="/5E0652BA/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5E052856/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5EAE2D84/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5F581B58/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5F581B77/602071B2" Ref="DOC?"  Part="1" 
AR Path="/5F5829EF/602071B2" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 3420 7210 60  0001 C CNN
F 1 "FIXME" H 2970 6960 60  0000 L CNN
F 2 "" H 3420 7310 60  0001 C CNN
F 3 "" H 3420 7310 60  0001 C CNN
	1    3420 6960
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 602071BC
P 2520 7090
AR Path="/5B3E071A/602071BC" Ref="C?"  Part="1" 
AR Path="/5E0652BA/602071BC" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/602071BC" Ref="C?"  Part="1" 
AR Path="/5E052856/602071BC" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/602071BC" Ref="C?"  Part="1" 
AR Path="/5F581B58/602071BC" Ref="C?"  Part="1" 
AR Path="/5F581B77/602071BC" Ref="C?"  Part="1" 
AR Path="/5F5829EF/602071BC" Ref="C?"  Part="1" 
F 0 "C?" H 2545 7190 50  0000 L CNN
F 1 "0.1uF" H 2545 6990 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2558 6940 50  0001 C CNN
F 3 "" H 2545 7190 50  0001 C CNN
F 4 "0402" H 2370 7150 50  0000 R CNN "display_footprint"
F 5 "50V" H 2370 7050 50  0000 R CNN "Voltage"
F 6 "X7R" H 2370 6950 50  0000 R CNN "Dielectric"
F 7 "Telemetry" H 2370 7240 50  0000 R CNN "Configuration"
	1    2520 7090
	1    0    0    -1  
$EndComp
Text Notes 1360 5070 0    50   ~ 0
Ambient Temp Sense
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6020946A
P 6020 5020
F 0 "J?" H 6020 5220 50  0000 C CNN
F 1 "I2C" H 6020 4820 50  0000 C CNN
F 2 "" H 6020 5020 50  0001 C CNN
F 3 "~" H 6020 5020 50  0001 C CNN
	1    6020 5020
	1    0    0    -1  
$EndComp
Text GLabel 5820 5020 0    50   UnSpc ~ 0
I2C_SCL
Text GLabel 5820 4920 0    50   UnSpc ~ 0
I2C_SDA
$Comp
L power:GND #PWR?
U 1 1 6020BCBF
P 5740 5200
F 0 "#PWR?" H 5740 4950 50  0001 C CNN
F 1 "GND" H 5740 5050 50  0000 C CNN
F 2 "" H 5740 5200 50  0001 C CNN
F 3 "" H 5740 5200 50  0001 C CNN
	1    5740 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5740 5200 5740 5120
Wire Wire Line
	5740 5120 5820 5120
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6020E176
P 7020 5020
F 0 "J?" H 7020 5220 50  0000 C CNN
F 1 "WIFI_SPI" H 7020 4720 50  0000 C CNN
F 2 "" H 7020 5020 50  0001 C CNN
F 3 "~" H 7020 5020 50  0001 C CNN
	1    7020 5020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6020FEB9
P 6740 5300
F 0 "#PWR?" H 6740 5050 50  0001 C CNN
F 1 "GND" H 6740 5150 50  0000 C CNN
F 2 "" H 6740 5300 50  0001 C CNN
F 3 "" H 6740 5300 50  0001 C CNN
	1    6740 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6740 5300 6740 5220
Wire Wire Line
	6740 5220 6820 5220
Text GLabel 6820 4920 0    50   UnSpc ~ 0
WIFI_SPI_SCK
Text GLabel 6820 5020 0    50   UnSpc ~ 0
WIFI_SPI_MOSI
Text GLabel 6820 5120 0    50   UnSpc ~ 0
WIFI_SPI_MISO
Text GLabel 7820 5020 0    50   UnSpc ~ 0
SD_SPI_MOSI
Text GLabel 7820 4920 0    50   UnSpc ~ 0
SD_SPI_SCK
Text GLabel 7820 5120 0    50   UnSpc ~ 0
SD_SPI_MISO
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 602191CA
P 8020 5020
F 0 "J?" H 8020 5220 50  0000 C CNN
F 1 "SD_SPI" H 8020 4720 50  0000 C CNN
F 2 "" H 8020 5020 50  0001 C CNN
F 3 "~" H 8020 5020 50  0001 C CNN
	1    8020 5020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 602193E6
P 7740 5300
F 0 "#PWR?" H 7740 5050 50  0001 C CNN
F 1 "GND" H 7740 5150 50  0000 C CNN
F 2 "" H 7740 5300 50  0001 C CNN
F 3 "" H 7740 5300 50  0001 C CNN
	1    7740 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7740 5300 7740 5220
Wire Wire Line
	7740 5220 7820 5220
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6021A825
P 9020 5020
F 0 "J?" H 9020 5220 50  0000 C CNN
F 1 "FLASH_SPI" H 9020 4720 50  0000 C CNN
F 2 "" H 9020 5020 50  0001 C CNN
F 3 "~" H 9020 5020 50  0001 C CNN
	1    9020 5020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6021A82F
P 8740 5300
F 0 "#PWR?" H 8740 5050 50  0001 C CNN
F 1 "GND" H 8740 5150 50  0000 C CNN
F 2 "" H 8740 5300 50  0001 C CNN
F 3 "" H 8740 5300 50  0001 C CNN
	1    8740 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8740 5300 8740 5220
Wire Wire Line
	8740 5220 8820 5220
Text GLabel 8820 4920 0    50   UnSpc ~ 0
FLASH_SPI_SCK
Text GLabel 8820 5020 0    50   UnSpc ~ 0
FLASH_SPI_MOSI
Text GLabel 8820 5120 0    50   UnSpc ~ 0
FLASH_SPI_MISO
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 60221638
P 5020 5020
F 0 "J?" H 5020 5220 50  0000 C CNN
F 1 "PIC_UART" H 5020 4820 50  0000 C CNN
F 2 "" H 5020 5020 50  0001 C CNN
F 3 "~" H 5020 5020 50  0001 C CNN
	1    5020 5020
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 602218A2
P 4740 5200
F 0 "#PWR?" H 4740 4950 50  0001 C CNN
F 1 "GND" H 4740 5050 50  0000 C CNN
F 2 "" H 4740 5200 50  0001 C CNN
F 3 "" H 4740 5200 50  0001 C CNN
	1    4740 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 5200 4740 5120
Wire Wire Line
	4740 5120 4820 5120
Text GLabel 4820 4920 0    50   UnSpc ~ 0
PIC32MZ_UART_RX
Text GLabel 4820 5020 0    50   UnSpc ~ 0
PIC32MZ_UART_TX
Text GLabel 4820 5670 0    50   UnSpc ~ 0
WIFI_UART_RX
Text GLabel 4820 5770 0    50   UnSpc ~ 0
WIFI_UART_TX
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6022AEF7
P 5020 5770
F 0 "J?" H 5020 5970 50  0000 C CNN
F 1 "WIFI_UART" H 5020 5570 50  0000 C CNN
F 2 "" H 5020 5770 50  0001 C CNN
F 3 "~" H 5020 5770 50  0001 C CNN
	1    5020 5770
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6022B183
P 4740 5950
F 0 "#PWR?" H 4740 5700 50  0001 C CNN
F 1 "GND" H 4740 5800 50  0000 C CNN
F 2 "" H 4740 5950 50  0001 C CNN
F 3 "" H 4740 5950 50  0001 C CNN
	1    4740 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 5950 4740 5870
Wire Wire Line
	4740 5870 4820 5870
$EndSCHEMATC
