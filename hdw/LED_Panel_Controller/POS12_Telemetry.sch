EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 3 34
Title "LED Panel Controller"
Date "2021-03-24"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3570 1800 0    50   UnSpc ~ 0
POS12_SNS+
Text GLabel 3570 2260 0    50   UnSpc ~ 0
POS12_SNS-
$Comp
L power:GND #PWR?
U 1 1 5E0ACFF2
P 5110 2440
AR Path="/5E0652BA/5E0ACFF2" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E0ACFF2" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E0ACFF2" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E0ACFF2" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E0ACFF2" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E0ACFF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 2190 50  0001 C CNN
F 1 "GND" H 5110 2290 50  0000 C CNN
F 2 "" H 5110 2440 50  0001 C CNN
F 3 "" H 5110 2440 50  0001 C CNN
	1    5110 2440
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E0AD665
P 5110 1640
AR Path="/5E0652BA/5E0AD665" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E0AD665" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E0AD665" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E0AD665" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E0AD665" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E0AD665" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 1490 50  0001 C CNN
F 1 "+3.3V" H 5110 1780 50  0000 C CNN
F 2 "" H 5110 1640 50  0001 C CNN
F 3 "" H 5110 1640 50  0001 C CNN
	1    5110 1640
	1    0    0    -1  
$EndComp
Text GLabel 5510 1940 2    50   Input ~ 0
I2C_SCL
$Comp
L power:+3.3V #PWR?
U 1 1 5E0B535B
P 5110 2860
AR Path="/5E0652BA/5E0B535B" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E0B535B" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E0B535B" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E0B535B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E0B535B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E0B535B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 2710 50  0001 C CNN
F 1 "+3.3V" H 5110 3000 50  0000 C CNN
F 2 "" H 5110 2860 50  0001 C CNN
F 3 "" H 5110 2860 50  0001 C CNN
	1    5110 2860
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0B592B
P 5110 3160
AR Path="/5E0652BA/5E0B592B" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E0B592B" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E0B592B" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E0B592B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E0B592B" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E0B592B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 2910 50  0001 C CNN
F 1 "GND" H 5110 3010 50  0000 C CNN
F 2 "" H 5110 3160 50  0001 C CNN
F 3 "" H 5110 3160 50  0001 C CNN
	1    5110 3160
	1    0    0    -1  
$EndComp
Text GLabel 5510 1840 2    50   BiDi ~ 0
I2C_SDA
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E0B8BC8
P 6010 2880
AR Path="/5E0652BA/5E0B8BC8" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5E0B8BC8" Ref="DOC?"  Part="1" 
AR Path="/5E052856/5E0B8BC8" Ref="DOC?"  Part="1" 
AR Path="/5EAE2D84/5E0B8BC8" Ref="DOC?"  Part="1" 
AR Path="/5F581B58/5E0B8BC8" Ref="DOC?"  Part="1" 
AR Path="/5F581B77/5E0B8BC8" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 6010 3130 60  0001 C CNN
F 1 "FIXME" H 5560 2880 60  0000 L CNN
F 2 "" H 6010 3230 60  0001 C CNN
F 3 "" H 6010 3230 60  0001 C CNN
	1    6010 2880
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2AA995
P 5110 5120
AR Path="/5B3E071A/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5E0652BA/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E2AA995" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E2AA995" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 4870 50  0001 C CNN
F 1 "GND" H 5110 4970 50  0000 C CNN
F 2 "" H 5110 5120 50  0001 C CNN
F 3 "" H 5110 5120 50  0001 C CNN
	1    5110 5120
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5110 5120 5110 5080
Wire Wire Line
	5110 5080 5110 5040
Wire Wire Line
	5110 5080 5010 5080
Wire Wire Line
	5010 5080 5010 5040
Connection ~ 5110 5080
$Comp
L power:+3.3V #PWR?
U 1 1 5E2AA99A
P 5110 4040
AR Path="/5E0652BA/5E2AA99A" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2AA99A" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E2AA99A" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E2AA99A" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E2AA99A" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E2AA99A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 3890 50  0001 C CNN
F 1 "+3.3V" H 5110 4180 50  0000 C CNN
F 2 "" H 5110 4040 50  0001 C CNN
F 3 "" H 5110 4040 50  0001 C CNN
	1    5110 4040
	-1   0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9804_DFN U?
U 1 1 5E2AA99D
P 5110 4540
AR Path="/5B3E071A/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5E0652BA/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5E0A0E29/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5E052856/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5EAE2D84/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5F581B58/5E2AA99D" Ref="U?"  Part="1" 
AR Path="/5F581B77/5E2AA99D" Ref="U?"  Part="1" 
F 0 "U?" H 4860 4990 50  0000 C CNN
F 1 "MCP9804" H 5510 4990 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8-1EP_3x2mm_P0.5mm_EP1.3x1.5mm" H 4010 4040 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 4860 4990 50  0001 C CNN
F 4 "MCP9804T-E/MCCT-ND" H 5110 4540 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 5510 5070 50  0000 C CNN "Configuration"
	1    5110 4540
	-1   0    0    -1  
$EndComp
Text GLabel 5510 4340 2    50   Input ~ 0
I2C_SCL
Text GLabel 5510 4240 2    50   BiDi ~ 0
I2C_SDA
NoConn ~ 4710 4540
$Comp
L power:+3.3V #PWR?
U 1 1 5E2AA9A6
P 5110 5540
AR Path="/5E0652BA/5E2AA9A6" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2AA9A6" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E2AA9A6" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E2AA9A6" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E2AA9A6" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E2AA9A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 5390 50  0001 C CNN
F 1 "+3.3V" H 5110 5680 50  0000 C CNN
F 2 "" H 5110 5540 50  0001 C CNN
F 3 "" H 5110 5540 50  0001 C CNN
	1    5110 5540
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2AA9AD
P 5110 5840
AR Path="/5E0652BA/5E2AA9AD" Ref="#PWR?"  Part="1" 
AR Path="/5E0A0E29/5E2AA9AD" Ref="#PWR?"  Part="1" 
AR Path="/5E052856/5E2AA9AD" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D84/5E2AA9AD" Ref="#PWR?"  Part="1" 
AR Path="/5F581B58/5E2AA9AD" Ref="#PWR?"  Part="1" 
AR Path="/5F581B77/5E2AA9AD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5110 5590 50  0001 C CNN
F 1 "GND" H 5110 5690 50  0000 C CNN
F 2 "" H 5110 5840 50  0001 C CNN
F 3 "" H 5110 5840 50  0001 C CNN
	1    5110 5840
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:I2C_Address DOC?
U 1 1 5E2AA9AF
P 6010 5560
AR Path="/5E0652BA/5E2AA9AF" Ref="DOC?"  Part="1" 
AR Path="/5E0A0E29/5E2AA9AF" Ref="DOC?"  Part="1" 
AR Path="/5E052856/5E2AA9AF" Ref="DOC?"  Part="1" 
AR Path="/5EAE2D84/5E2AA9AF" Ref="DOC?"  Part="1" 
AR Path="/5F581B58/5E2AA9AF" Ref="DOC?"  Part="1" 
AR Path="/5F581B77/5E2AA9AF" Ref="DOC?"  Part="1" 
F 0 "DOC?" H 6010 5810 60  0001 C CNN
F 1 "FIXME" H 5560 5560 60  0000 L CNN
F 2 "" H 6010 5910 60  0001 C CNN
F 3 "" H 6010 5910 60  0001 C CNN
	1    6010 5560
	1    0    0    -1  
$EndComp
Wire Wire Line
	4230 2260 4230 2180
Wire Wire Line
	4230 1880 4230 1800
$Comp
L Analog_ADC:INA219BxDCN U?
U 1 1 5E1AAC3C
P 5110 2040
F 0 "U?" H 4860 2390 50  0000 C CNN
F 1 "INA219BxDCN" H 5360 2390 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8" H 5760 1690 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina219.pdf" H 5460 1940 50  0001 C CNN
F 4 "296-46420-1-ND" H 5110 2040 50  0001 C CNN "Digi-Key PN"
F 5 "Telemetry" H 5370 2470 50  0000 C CNN "Configuration"
	1    5110 2040
	1    0    0    -1  
$EndComp
Wire Wire Line
	4710 1940 4540 1940
Wire Wire Line
	4540 1940 4540 1800
Wire Wire Line
	4540 1800 4230 1800
Connection ~ 4230 1800
Wire Wire Line
	4710 2140 4540 2140
Wire Wire Line
	4540 2140 4540 2260
Wire Wire Line
	4540 2260 4230 2260
Connection ~ 4230 2260
$Comp
L Custom_Library:C_Custom C?
U 1 1 6018BD18
P 4230 2030
AR Path="/5B3E071A/6018BD18" Ref="C?"  Part="1" 
AR Path="/5E0652BA/6018BD18" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/6018BD18" Ref="C?"  Part="1" 
AR Path="/5E052856/6018BD18" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/6018BD18" Ref="C?"  Part="1" 
AR Path="/5F581B58/6018BD18" Ref="C?"  Part="1" 
AR Path="/5F581B77/6018BD18" Ref="C?"  Part="1" 
F 0 "C?" H 4255 2130 50  0000 L CNN
F 1 "0.1uF" H 4255 1930 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4268 1880 50  0001 C CNN
F 3 "" H 4255 2130 50  0001 C CNN
F 4 "0402" H 4080 2090 50  0000 R CNN "display_footprint"
F 5 "50V" H 4080 1990 50  0000 R CNN "Voltage"
F 6 "X7R" H 4080 1890 50  0000 R CNN "Dielectric"
F 7 "Telemetry" H 4080 2180 50  0000 R CNN "Configuration"
	1    4230 2030
	1    0    0    -1  
$EndComp
Wire Wire Line
	3570 1800 4230 1800
Wire Wire Line
	3570 2260 4230 2260
$Comp
L Custom_Library:C_Custom C?
U 1 1 6018C640
P 5110 5690
AR Path="/5B3E071A/6018C640" Ref="C?"  Part="1" 
AR Path="/5E0652BA/6018C640" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/6018C640" Ref="C?"  Part="1" 
AR Path="/5E052856/6018C640" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/6018C640" Ref="C?"  Part="1" 
AR Path="/5F581B58/6018C640" Ref="C?"  Part="1" 
AR Path="/5F581B77/6018C640" Ref="C?"  Part="1" 
F 0 "C?" H 5135 5790 50  0000 L CNN
F 1 "0.1uF" H 5135 5590 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5148 5540 50  0001 C CNN
F 3 "" H 5135 5790 50  0001 C CNN
F 4 "0402" H 4960 5750 50  0000 R CNN "display_footprint"
F 5 "50V" H 4960 5650 50  0000 R CNN "Voltage"
F 6 "X7R" H 4960 5550 50  0000 R CNN "Dielectric"
F 7 "Telemetry" H 4960 5840 50  0000 R CNN "Configuration"
	1    5110 5690
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6018CFFA
P 5110 3010
AR Path="/5B3E071A/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5E0652BA/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5E0A0E29/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5E052856/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5EAE2D84/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5F581B58/6018CFFA" Ref="C?"  Part="1" 
AR Path="/5F581B77/6018CFFA" Ref="C?"  Part="1" 
F 0 "C?" H 5135 3110 50  0000 L CNN
F 1 "0.1uF" H 5135 2910 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5148 2860 50  0001 C CNN
F 3 "" H 5135 3110 50  0001 C CNN
F 4 "0402" H 4960 3070 50  0000 R CNN "display_footprint"
F 5 "50V" H 4960 2970 50  0000 R CNN "Voltage"
F 6 "X7R" H 4960 2870 50  0000 R CNN "Dielectric"
F 7 "Telemetry" H 4960 3160 50  0000 R CNN "Configuration"
	1    5110 3010
	1    0    0    -1  
$EndComp
$EndSCHEMATC
