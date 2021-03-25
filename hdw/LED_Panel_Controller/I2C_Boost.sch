EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 34
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
L Custom_Library:LTC1694 U?
U 1 1 5F6A42D0
P 5300 3760
F 0 "U?" H 5300 3410 60  0000 C CNN
F 1 "LTC1694" H 5300 4110 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5200 4060 60  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1694fa.pdf" H 5200 4060 60  0001 C CNN
F 4 "LTC1694CS5#TRPBFCT-ND" H 5400 3510 60  0001 C CNN "Digi-Key PN"
F 5 "DNP" H 5300 3300 50  0000 C CNN "Configuration"
	1    5300 3760
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F6A5589
P 4820 3480
F 0 "#PWR?" H 4820 3330 50  0001 C CNN
F 1 "+3.3V" H 4820 3620 50  0000 C CNN
F 2 "" H 4820 3480 50  0001 C CNN
F 3 "" H 4820 3480 50  0001 C CNN
	1    4820 3480
	1    0    0    -1  
$EndComp
Wire Wire Line
	4820 3480 4820 3560
Wire Wire Line
	4820 3560 4900 3560
$Comp
L power:GND #PWR?
U 1 1 5F6A5AAB
P 4820 4040
F 0 "#PWR?" H 4820 3790 50  0001 C CNN
F 1 "GND" H 4820 3890 50  0000 C CNN
F 2 "" H 4820 4040 50  0001 C CNN
F 3 "" H 4820 4040 50  0001 C CNN
	1    4820 4040
	1    0    0    -1  
$EndComp
Wire Wire Line
	4820 4040 4820 3960
Wire Wire Line
	4820 3960 4900 3960
$Comp
L power:GND #PWR?
U 1 1 5F6A9D7C
P 4340 3930
F 0 "#PWR?" H 4340 3680 50  0001 C CNN
F 1 "GND" H 4340 3780 50  0000 C CNN
F 2 "" H 4340 3930 50  0001 C CNN
F 3 "" H 4340 3930 50  0001 C CNN
	1    4340 3930
	1    0    0    -1  
$EndComp
Text GLabel 5700 3860 2    50   Input ~ 0
I2C_SCL
Text GLabel 5700 3960 2    50   BiDi ~ 0
I2C_SDA
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6A9DE1
P 4340 3780
AR Path="/5BAAE16C/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5E9E0E87/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5EAE2D66/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5F582A92/5F6A9DE1" Ref="C?"  Part="1" 
AR Path="/5F582A7C/5F6A9DE1" Ref="C?"  Part="1" 
F 0 "C?" H 4365 3880 50  0000 L CNN
F 1 "0.1uF" H 4365 3680 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4378 3630 50  0001 C CNN
F 3 "" H 4365 3880 50  0001 C CNN
F 4 "0402" H 4190 3880 50  0000 R CNN "display_footprint"
F 5 "50V" H 4190 3780 50  0000 R CNN "Voltage"
F 6 "X7R" H 4190 3680 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 4765 4280 60  0001 C CNN "Digi-Key PN"
F 8 "DNP" H 4110 3970 50  0000 C CNN "Configuration"
	1    4340 3780
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F6AB1EB
P 4340 3630
F 0 "#PWR?" H 4340 3480 50  0001 C CNN
F 1 "+3.3V" H 4340 3770 50  0000 C CNN
F 2 "" H 4340 3630 50  0001 C CNN
F 3 "" H 4340 3630 50  0001 C CNN
	1    4340 3630
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:AT24CS32-STUM U?
U 1 1 601A8ABF
P 5330 5380
AR Path="/5F5829EF/601A8ABF" Ref="U?"  Part="1" 
AR Path="/5F582A7C/601A8ABF" Ref="U?"  Part="1" 
F 0 "U?" H 5030 5630 50  0000 C CNN
F 1 "AT24CS32-STUM" H 5430 5130 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5330 5380 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-8869-SEEPROM-AT24CS32-Datasheet.pdf" H 5330 5380 50  0001 C CNN
	1    5330 5380
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A8AC5
P 5330 5680
AR Path="/5F5829EF/601A8AC5" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/601A8AC5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5330 5430 50  0001 C CNN
F 1 "GND" H 5330 5530 50  0000 C CNN
F 2 "" H 5330 5680 50  0001 C CNN
F 3 "" H 5330 5680 50  0001 C CNN
	1    5330 5680
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601A8ACB
P 5330 5080
AR Path="/5F5829EF/601A8ACB" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/601A8ACB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5330 4930 50  0001 C CNN
F 1 "+3.3V" H 5330 5220 50  0000 C CNN
F 2 "" H 5330 5080 50  0001 C CNN
F 3 "" H 5330 5080 50  0001 C CNN
	1    5330 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601A97E7
P 4340 5570
F 0 "#PWR?" H 4340 5320 50  0001 C CNN
F 1 "GND" H 4340 5420 50  0000 C CNN
F 2 "" H 4340 5570 50  0001 C CNN
F 3 "" H 4340 5570 50  0001 C CNN
	1    4340 5570
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 601A97F2
P 4340 5420
AR Path="/5BAAE16C/601A97F2" Ref="C?"  Part="1" 
AR Path="/5BB181D8/601A97F2" Ref="C?"  Part="1" 
AR Path="/5BB2595E/601A97F2" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/601A97F2" Ref="C?"  Part="1" 
AR Path="/5BB86F23/601A97F2" Ref="C?"  Part="1" 
AR Path="/5C1D5C9E/601A97F2" Ref="C?"  Part="1" 
AR Path="/5CB6F1ED/601A97F2" Ref="C?"  Part="1" 
AR Path="/5E939CFF/601A97F2" Ref="C?"  Part="1" 
AR Path="/5E9E0E87/601A97F2" Ref="C?"  Part="1" 
AR Path="/5EAE2D66/601A97F2" Ref="C?"  Part="1" 
AR Path="/5EAE3021/601A97F2" Ref="C?"  Part="1" 
AR Path="/5F582A92/601A97F2" Ref="C?"  Part="1" 
AR Path="/5F582A7C/601A97F2" Ref="C?"  Part="1" 
F 0 "C?" H 4365 5520 50  0000 L CNN
F 1 "0.1uF" H 4365 5320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4378 5270 50  0001 C CNN
F 3 "" H 4365 5520 50  0001 C CNN
F 4 "0402" H 4190 5520 50  0000 R CNN "display_footprint"
F 5 "50V" H 4190 5420 50  0000 R CNN "Voltage"
F 6 "X7R" H 4190 5320 50  0000 R CNN "Dielectric"
F 7 "490-10701-1-ND" H 4765 5920 60  0001 C CNN "Digi-Key PN"
F 8 "" H 4110 5610 50  0001 C CNN "Configuration"
	1    4340 5420
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601A97F8
P 4340 5270
F 0 "#PWR?" H 4340 5120 50  0001 C CNN
F 1 "+3.3V" H 4340 5410 50  0000 C CNN
F 2 "" H 4340 5270 50  0001 C CNN
F 3 "" H 4340 5270 50  0001 C CNN
	1    4340 5270
	1    0    0    -1  
$EndComp
Text GLabel 5730 5380 2    50   Input ~ 0
I2C_SCL
Text GLabel 5730 5280 2    50   BiDi ~ 0
I2C_SDA
$Comp
L power:GND #PWR?
U 1 1 601AB410
P 5730 5480
AR Path="/5F5829EF/601AB410" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/601AB410" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5730 5230 50  0001 C CNN
F 1 "GND" V 5730 5350 50  0000 R CNN
F 2 "" H 5730 5480 50  0001 C CNN
F 3 "" H 5730 5480 50  0001 C CNN
	1    5730 5480
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6061CC13
P 5340 2050
AR Path="/5B3E071A/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5F581BB7/6061CC13" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/6061CC13" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5340 1800 50  0001 C CNN
F 1 "GND" H 5340 1900 50  0000 C CNN
F 2 "" H 5340 2050 50  0001 C CNN
F 3 "" H 5340 2050 50  0001 C CNN
	1    5340 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5340 2050 5340 2010
Wire Wire Line
	5340 2010 5340 1970
Wire Wire Line
	5340 2010 5240 2010
Wire Wire Line
	5240 2010 5240 1970
Connection ~ 5340 2010
$Comp
L power:+3.3V #PWR?
U 1 1 6061CC1E
P 5340 970
AR Path="/5E0652BA/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5F581BB7/6061CC1E" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/6061CC1E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5340 820 50  0001 C CNN
F 1 "+3.3V" H 5340 1110 50  0000 C CNN
F 2 "" H 5340 970 50  0001 C CNN
F 3 "" H 5340 970 50  0001 C CNN
	1    5340 970 
	-1   0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 6061CC26
P 5340 1470
AR Path="/5B3E071A/6061CC26" Ref="U?"  Part="1" 
AR Path="/5E0652BA/6061CC26" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/6061CC26" Ref="U?"  Part="1" 
AR Path="/5E052856/6061CC26" Ref="U?"  Part="1" 
AR Path="/5EAE2D84/6061CC26" Ref="U?"  Part="1" 
AR Path="/5F581B58/6061CC26" Ref="U?"  Part="1" 
AR Path="/5F581B77/6061CC26" Ref="U?"  Part="1" 
AR Path="/5F581BB7/6061CC26" Ref="U?"  Part="1" 
AR Path="/5F582A7C/6061CC26" Ref="U?"  Part="1" 
F 0 "U?" H 5090 1920 50  0000 C CNN
F 1 "MCP9804" H 5740 1920 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 4240 970 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 5090 1920 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 5340 1470 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 5740 2000 50  0000 C CNN "Configuration"
	1    5340 1470
	-1   0    0    -1  
$EndComp
Text GLabel 5740 1270 2    50   Input ~ 0
I2C_SCL
Text GLabel 5740 1170 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 4940 1470
$Comp
L power:+3.3V #PWR?
U 1 1 6061CC2F
P 5340 2470
AR Path="/5E0652BA/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5F581BB7/6061CC2F" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/6061CC2F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5340 2320 50  0001 C CNN
F 1 "+3.3V" H 5340 2610 50  0000 C CNN
F 2 "" H 5340 2470 50  0001 C CNN
F 3 "" H 5340 2470 50  0001 C CNN
	1    5340 2470
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6061CC35
P 5340 2770
AR Path="/5E0652BA/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5F581BB7/6061CC35" Ref="#PWR?"  Part="1" 
AR Path="/5F582A7C/6061CC35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5340 2520 50  0001 C CNN
F 1 "GND" H 5340 2620 50  0000 C CNN
F 2 "" H 5340 2770 50  0001 C CNN
F 3 "" H 5340 2770 50  0001 C CNN
	1    5340 2770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 6061CC3B
P 6240 2490
AR Path="/5E0652BA/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5E052856/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5EAE2D84/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5F581B58/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5F581B77/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5F581BB7/6061CC3B" Ref="DOC?"  Part="1" 
AR Path="/5F582A7C/6061CC3B" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 6240 2740 60  0001 C CNN
F 1 "FIXME" H 5790 2490 60  0000 L CNN
F 2 "" H 6240 2840 60  0001 C CNN
F 3 "" H 6240 2840 60  0001 C CNN
	1    6240 2490
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6061CC45
P 5340 2620
AR Path="/5B3E071A/6061CC45" Ref="C?"  Part="1" 
AR Path="/5E0652BA/6061CC45" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/6061CC45" Ref="C?"  Part="1" 
AR Path="/5E052856/6061CC45" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/6061CC45" Ref="C?"  Part="1" 
AR Path="/5F581B58/6061CC45" Ref="C?"  Part="1" 
AR Path="/5F581B77/6061CC45" Ref="C?"  Part="1" 
AR Path="/5F581BB7/6061CC45" Ref="C?"  Part="1" 
AR Path="/5F582A7C/6061CC45" Ref="C?"  Part="1" 
F 0 "C?" H 5365 2720 50  0000 L CNN
F 1 "0.1uF" H 5365 2520 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5378 2470 50  0001 C CNN
F 3 "" H 5365 2720 50  0001 C CNN
F 4 "0402" H 5190 2680 50  0000 R CNN "display_footprint"
F 5 "50V" H 5190 2580 50  0000 R CNN "Voltage"
F 6 "X7R" H 5190 2480 50  0000 R CNN "Dielectric"
F 7 "Telemetry" H 5190 2770 50  0000 R CNN "Configuration"
	1    5340 2620
	1    0    0    -1  
$EndComp
$EndSCHEMATC
