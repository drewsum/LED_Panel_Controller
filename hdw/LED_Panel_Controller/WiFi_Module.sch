EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 17 34
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
L Custom_Library:ATWINC1500-MR210PB U?
U 1 1 5FF178DC
P 6250 3700
F 0 "U?" H 5650 5151 50  0000 L BNN
F 1 "ATWINC1500-MR210PB" H 5649 2198 50  0000 L BNN
F 2 "Custom Footprints Library:XCVR_ATWINC1500-MR210PB" H 6250 3700 50  0001 L BNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/ATWINC15x0-MR210xB-IEEE-802.11-b-g-n-SmartConnect-IoT-Module-Data-Sheet-DS70005304C.pdf" H 6250 3700 50  0001 L BNN
F 4 "ATWINC1500-MR210PB-ND" H 6250 3700 50  0001 C CNN "Digi-Key PN"
F 5 "WIFI" H 6250 2140 50  0000 C CNN "Configuration"
	1    6250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF1AA88
P 7080 5080
F 0 "#PWR?" H 7080 4830 50  0001 C CNN
F 1 "GND" H 7080 4930 50  0000 C CNN
F 2 "" H 7080 5080 50  0001 C CNN
F 3 "" H 7080 5080 50  0001 C CNN
	1    7080 5080
	1    0    0    -1  
$EndComp
Wire Wire Line
	7080 5080 7080 5000
Wire Wire Line
	7080 5000 7000 5000
Wire Wire Line
	7080 5000 7080 4900
Wire Wire Line
	7080 4900 7000 4900
Connection ~ 7080 5000
$Comp
L power:+3.3V #PWR?
U 1 1 5FF1C48B
P 7080 2320
F 0 "#PWR?" H 7080 2170 50  0001 C CNN
F 1 "+3.3V" H 7080 2460 50  0000 C CNN
F 2 "" H 7080 2320 50  0001 C CNN
F 3 "" H 7080 2320 50  0001 C CNN
	1    7080 2320
	1    0    0    -1  
$EndComp
Wire Wire Line
	7080 2320 7080 2400
Wire Wire Line
	7080 2400 7000 2400
Wire Wire Line
	7080 2400 7080 2500
Wire Wire Line
	7080 2500 7000 2500
Connection ~ 7080 2400
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FF24B88
P 7330 3530
AR Path="/5BAAE16C/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5BB181D8/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5BB2595E/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5BAAE0FA/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5BB86F23/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5D77A516/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5E939CFF/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5F581B41/5FF24B88" Ref="C?"  Part="1" 
AR Path="/5F582E44/5FF24B88" Ref="C?"  Part="1" 
F 0 "C?" H 7355 3630 50  0000 L CNN
F 1 "10nF" H 7355 3430 50  0000 L CNN
F 2 "" H 7368 3380 50  0001 C CNN
F 3 "" H 7355 3630 50  0001 C CNN
F 4 "0402" H 7180 3630 50  0000 R CNN "display_footprint"
F 5 "50V" H 7180 3530 50  0000 R CNN "Voltage"
F 6 "X7R" H 7180 3430 50  0000 R CNN "Dielectric"
F 7 "WIFI" H 7180 3710 50  0000 R CNN "Configuration"
	1    7330 3530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF24C29
P 7330 3680
F 0 "#PWR?" H 7330 3430 50  0001 C CNN
F 1 "GND" H 7330 3530 50  0000 C CNN
F 2 "" H 7330 3680 50  0001 C CNN
F 3 "" H 7330 3680 50  0001 C CNN
	1    7330 3680
	1    0    0    -1  
$EndComp
Wire Wire Line
	7330 3380 7330 3300
Wire Wire Line
	7330 3300 7000 3300
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FF27362
P 8080 3530
AR Path="/5CB7718D/5FF27362" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FF27362" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5FF27362" Ref="C?"  Part="1" 
AR Path="/5A557C58/5FF27362" Ref="C?"  Part="1" 
AR Path="/5CB25152/5FF27362" Ref="C?"  Part="1" 
AR Path="/5E697934/5FF27362" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5FF27362" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5FF27362" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5FF27362" Ref="C?"  Part="1" 
AR Path="/5F581B64/5FF27362" Ref="C?"  Part="1" 
AR Path="/5F582E44/5FF27362" Ref="C?"  Part="1" 
F 0 "C?" H 8105 3630 50  0000 L CNN
F 1 "10uF" H 8105 3430 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 8118 3380 50  0001 C CNN
F 3 "" H 8105 3630 50  0001 C CNN
F 4 "0402" H 7930 3630 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 7930 3530 50  0000 R CNN "Voltage"
F 6 "X5R" H 7930 3430 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 8080 3530 50  0001 C CNN "Digi-Key PN"
F 8 "WIFI" H 7930 3710 50  0000 R CNN "Configuration"
	1    8080 3530
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF27429
P 8080 3680
F 0 "#PWR?" H 8080 3430 50  0001 C CNN
F 1 "GND" H 8080 3530 50  0000 C CNN
F 2 "" H 8080 3680 50  0001 C CNN
F 3 "" H 8080 3680 50  0001 C CNN
	1    8080 3680
	1    0    0    -1  
$EndComp
Wire Wire Line
	8080 3380 8080 3300
Wire Wire Line
	8080 3300 7330 3300
Connection ~ 7330 3300
$Comp
L Custom_Library:TP_Pad TP?
U 1 1 5FF27EFA
P 8080 3220
AR Path="/5F581B41/5FF27EFA" Ref="TP?"  Part="1" 
AR Path="/5F582E44/5FF27EFA" Ref="TP?"  Part="1" 
F 0 "TP?" H 8080 3370 50  0000 C CNN
F 1 "TP_Pad" H 8080 3370 50  0001 C CNN
F 2 "Custom Footprints Library:Test_Point" H 8080 3220 60  0001 C CNN
F 3 "" H 8080 3220 60  0000 C CNN
	1    8080 3220
	1    0    0    -1  
$EndComp
Wire Wire Line
	8080 3220 8080 3300
Connection ~ 8080 3300
Text Label 7480 3300 0    50   ~ 0
WIFI_VCORE
$Comp
L power:GND #PWR?
U 1 1 5FF31347
P 7330 3080
F 0 "#PWR?" H 7330 2830 50  0001 C CNN
F 1 "GND" H 7330 2930 50  0000 C CNN
F 2 "" H 7330 3080 50  0001 C CNN
F 3 "" H 7330 3080 50  0001 C CNN
	1    7330 3080
	1    0    0    -1  
$EndComp
Wire Wire Line
	7330 2780 7330 2700
Wire Wire Line
	7330 2700 7000 2700
Text GLabel 7990 2700 2    50   Output ~ 0
WIFI_IRQN
Connection ~ 7330 2700
Wire Wire Line
	5500 4600 5170 4600
Wire Wire Line
	5500 4700 5420 4700
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF1E470
P 5420 2470
AR Path="/5D6B2673/5FF1E470" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF1E470" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF1E470" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF1E470" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF1E470" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF1E470" Ref="R?"  Part="1" 
F 0 "R?" V 5330 2470 50  0000 C CNN
F 1 "10k" V 5420 2400 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5420 2470 50  0001 C CNN
F 3 "" H 5420 2470 50  0001 C CNN
F 4 "0402" H 5520 2540 50  0001 L CNN "display_footprint"
F 5 "1%" H 5520 2440 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5520 2340 50  0001 L CNN "Wattage"
	1    5420 2470
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF3EA1E
P 5170 2470
AR Path="/5D6B2673/5FF3EA1E" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF3EA1E" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF3EA1E" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF3EA1E" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF3EA1E" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF3EA1E" Ref="R?"  Part="1" 
F 0 "R?" V 5080 2470 50  0000 C CNN
F 1 "10k" V 5170 2400 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5170 2470 50  0001 C CNN
F 3 "" H 5170 2470 50  0001 C CNN
F 4 "0402" H 5270 2540 50  0001 L CNN "display_footprint"
F 5 "1%" H 5270 2440 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5270 2340 50  0001 L CNN "Wattage"
	1    5170 2470
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF3F4B1
P 4420 2470
AR Path="/5D6B2673/5FF3F4B1" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF3F4B1" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF3F4B1" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF3F4B1" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF3F4B1" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF3F4B1" Ref="R?"  Part="1" 
F 0 "R?" V 4330 2470 50  0000 C CNN
F 1 "10k" V 4420 2400 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4420 2470 50  0001 C CNN
F 3 "" H 4420 2470 50  0001 C CNN
F 4 "0402" H 4520 2540 50  0001 L CNN "display_footprint"
F 5 "1%" H 4520 2440 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4520 2340 50  0001 L CNN "Wattage"
	1    4420 2470
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF3F7F2
P 4170 2470
AR Path="/5D6B2673/5FF3F7F2" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF3F7F2" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF3F7F2" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF3F7F2" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF3F7F2" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF3F7F2" Ref="R?"  Part="1" 
F 0 "R?" V 4080 2470 50  0000 C CNN
F 1 "1M" V 4170 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4170 2470 50  0001 C CNN
F 3 "" H 4170 2470 50  0001 C CNN
F 4 "0402" H 4270 2540 50  0001 L CNN "display_footprint"
F 5 "1%" H 4270 2440 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4270 2340 50  0001 L CNN "Wattage"
	1    4170 2470
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FA4
P 4920 4930
AR Path="/5D6B2673/5FF40FA4" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FA4" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FA4" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FA4" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FA4" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FA4" Ref="R?"  Part="1" 
F 0 "R?" V 4830 4930 50  0000 C CNN
F 1 "10k" V 4920 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4920 4930 50  0001 C CNN
F 3 "" H 4920 4930 50  0001 C CNN
F 4 "0402" H 5020 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 5020 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5020 4800 50  0001 L CNN "Wattage"
	1    4920 4930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FB1
P 4670 4930
AR Path="/5D6B2673/5FF40FB1" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FB1" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FB1" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FB1" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FB1" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FB1" Ref="R?"  Part="1" 
F 0 "R?" V 4580 4930 50  0000 C CNN
F 1 "10k" V 4670 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4670 4930 50  0001 C CNN
F 3 "" H 4670 4930 50  0001 C CNN
F 4 "0402" H 4770 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 4770 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4770 4800 50  0001 L CNN "Wattage"
	1    4670 4930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FD8
P 3920 4930
AR Path="/5D6B2673/5FF40FD8" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FD8" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FD8" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FD8" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FD8" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FD8" Ref="R?"  Part="1" 
F 0 "R?" V 3830 4930 50  0000 C CNN
F 1 "10k" V 3920 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3920 4930 50  0001 C CNN
F 3 "" H 3920 4930 50  0001 C CNN
F 4 "0402" H 4020 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 4020 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4020 4800 50  0001 L CNN "Wattage"
	1    3920 4930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FE5
P 3670 4930
AR Path="/5D6B2673/5FF40FE5" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FE5" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FE5" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FE5" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FE5" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FE5" Ref="R?"  Part="1" 
F 0 "R?" V 3580 4930 50  0000 C CNN
F 1 "10k" V 3670 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3670 4930 50  0001 C CNN
F 3 "" H 3670 4930 50  0001 C CNN
F 4 "0402" H 3770 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 3770 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 3770 4800 50  0001 L CNN "Wattage"
	1    3670 4930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FF2
P 3420 4930
AR Path="/5D6B2673/5FF40FF2" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FF2" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FF2" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FF2" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FF2" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FF2" Ref="R?"  Part="1" 
F 0 "R?" V 3330 4930 50  0000 C CNN
F 1 "10k" V 3420 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3420 4930 50  0001 C CNN
F 3 "" H 3420 4930 50  0001 C CNN
F 4 "0402" H 3520 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 3520 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 3520 4800 50  0001 L CNN "Wattage"
	1    3420 4930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF40FFF
P 3170 4930
AR Path="/5D6B2673/5FF40FFF" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF40FFF" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF40FFF" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF40FFF" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF40FFF" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF40FFF" Ref="R?"  Part="1" 
F 0 "R?" V 3080 4930 50  0000 C CNN
F 1 "10k" V 3170 4860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3170 4930 50  0001 C CNN
F 3 "" H 3170 4930 50  0001 C CNN
F 4 "0402" H 3270 5000 50  0001 L CNN "display_footprint"
F 5 "1%" H 3270 4900 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 3270 4800 50  0001 L CNN "Wattage"
	1    3170 4930
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2600 3500 4920 3500
Wire Wire Line
	2600 3400 4670 3400
Wire Wire Line
	2600 3100 3920 3100
Wire Wire Line
	2600 2900 3670 2900
Wire Wire Line
	2600 2700 3170 2700
Wire Wire Line
	2600 3300 4420 3300
Wire Wire Line
	5420 4700 5420 2620
Connection ~ 5420 4700
Wire Wire Line
	5170 2620 5170 4600
Connection ~ 5170 4600
Wire Wire Line
	4920 3500 4920 4780
Connection ~ 4920 3500
Wire Wire Line
	4920 3500 5500 3500
Wire Wire Line
	4670 4780 4670 3400
Connection ~ 4670 3400
Wire Wire Line
	4670 3400 5500 3400
Wire Wire Line
	4420 3300 4420 2620
Connection ~ 4420 3300
Wire Wire Line
	4420 3300 5500 3300
Wire Wire Line
	4170 3200 4170 2620
Wire Wire Line
	4170 3200 5500 3200
Wire Wire Line
	3920 3100 3920 4780
Connection ~ 3920 3100
Wire Wire Line
	3920 3100 5500 3100
Wire Wire Line
	3670 2900 3670 4780
Connection ~ 3670 2900
Wire Wire Line
	3670 2900 5500 2900
Wire Wire Line
	3420 4780 3420 2800
Connection ~ 3420 2800
Wire Wire Line
	3420 2800 5500 2800
Wire Wire Line
	3170 2700 3170 4780
Connection ~ 3170 2700
Wire Wire Line
	3170 2700 5500 2700
$Comp
L power:+3.3V #PWR?
U 1 1 5FF68516
P 5420 2320
F 0 "#PWR?" H 5420 2170 50  0001 C CNN
F 1 "+3.3V" H 5420 2460 50  0000 C CNN
F 2 "" H 5420 2320 50  0001 C CNN
F 3 "" H 5420 2320 50  0001 C CNN
	1    5420 2320
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF687D3
P 5170 2320
F 0 "#PWR?" H 5170 2170 50  0001 C CNN
F 1 "+3.3V" H 5170 2460 50  0000 C CNN
F 2 "" H 5170 2320 50  0001 C CNN
F 3 "" H 5170 2320 50  0001 C CNN
	1    5170 2320
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF688EE
P 4420 2320
F 0 "#PWR?" H 4420 2170 50  0001 C CNN
F 1 "+3.3V" H 4420 2460 50  0000 C CNN
F 2 "" H 4420 2320 50  0001 C CNN
F 3 "" H 4420 2320 50  0001 C CNN
	1    4420 2320
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF68B64
P 4170 2320
F 0 "#PWR?" H 4170 2170 50  0001 C CNN
F 1 "+3.3V" H 4170 2460 50  0000 C CNN
F 2 "" H 4170 2320 50  0001 C CNN
F 3 "" H 4170 2320 50  0001 C CNN
	1    4170 2320
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF68CF8
P 4920 5080
F 0 "#PWR?" H 4920 4830 50  0001 C CNN
F 1 "GND" H 4920 4930 50  0000 C CNN
F 2 "" H 4920 5080 50  0001 C CNN
F 3 "" H 4920 5080 50  0001 C CNN
	1    4920 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF69012
P 4670 5080
F 0 "#PWR?" H 4670 4830 50  0001 C CNN
F 1 "GND" H 4670 4930 50  0000 C CNN
F 2 "" H 4670 5080 50  0001 C CNN
F 3 "" H 4670 5080 50  0001 C CNN
	1    4670 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF69102
P 3920 5080
F 0 "#PWR?" H 3920 4830 50  0001 C CNN
F 1 "GND" H 3920 4930 50  0000 C CNN
F 2 "" H 3920 5080 50  0001 C CNN
F 3 "" H 3920 5080 50  0001 C CNN
	1    3920 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF693A2
P 3670 5080
F 0 "#PWR?" H 3670 4830 50  0001 C CNN
F 1 "GND" H 3670 4930 50  0000 C CNN
F 2 "" H 3670 5080 50  0001 C CNN
F 3 "" H 3670 5080 50  0001 C CNN
	1    3670 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF695AE
P 3420 5080
F 0 "#PWR?" H 3420 4830 50  0001 C CNN
F 1 "GND" H 3420 4930 50  0000 C CNN
F 2 "" H 3420 5080 50  0001 C CNN
F 3 "" H 3420 5080 50  0001 C CNN
	1    3420 5080
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF69743
P 3170 5080
F 0 "#PWR?" H 3170 4830 50  0001 C CNN
F 1 "GND" H 3170 4930 50  0000 C CNN
F 2 "" H 3170 5080 50  0001 C CNN
F 3 "" H 3170 5080 50  0001 C CNN
	1    3170 5080
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF34CC0
P 2450 3100
AR Path="/5EAE2D66/5FF34CC0" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF34CC0" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF34CC0" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF34CC0" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3210 50  0000 L CNN
F 1 "10" V 2450 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 3100 50  0001 C CNN
F 3 "" H 2450 3100 50  0001 C CNN
F 4 "0402" V 2550 3100 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 3100 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 3100 50  0001 C CNN "Wattage"
	1    2450 3100
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF711A6
P 2450 3300
AR Path="/5EAE2D66/5FF711A6" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF711A6" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF711A6" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF711A6" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3410 50  0000 L CNN
F 1 "10" V 2450 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 3300 50  0001 C CNN
F 3 "" H 2450 3300 50  0001 C CNN
F 4 "0402" V 2550 3300 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 3300 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 3300 50  0001 C CNN "Wattage"
	1    2450 3300
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF71467
P 2450 3400
AR Path="/5EAE2D66/5FF71467" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF71467" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF71467" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF71467" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3510 50  0000 L CNN
F 1 "10" V 2450 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 3400 50  0001 C CNN
F 3 "" H 2450 3400 50  0001 C CNN
F 4 "0402" V 2550 3400 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 3400 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 3400 50  0001 C CNN "Wattage"
	1    2450 3400
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF71622
P 2450 3500
AR Path="/5EAE2D66/5FF71622" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF71622" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF71622" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF71622" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3610 50  0000 L CNN
F 1 "10" V 2450 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 3500 50  0001 C CNN
F 3 "" H 2450 3500 50  0001 C CNN
F 4 "0402" V 2550 3500 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 3500 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 3500 50  0001 C CNN "Wattage"
	1    2450 3500
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF74DFF
P 2450 2700
AR Path="/5EAE2D66/5FF74DFF" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF74DFF" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF74DFF" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF74DFF" Ref="R?"  Part="1" 
F 0 "R?" V 2410 2810 50  0000 L CNN
F 1 "10" V 2450 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 2700 50  0001 C CNN
F 3 "" H 2450 2700 50  0001 C CNN
F 4 "0402" V 2550 2700 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 2700 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 2700 50  0001 C CNN "Wattage"
	1    2450 2700
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF753C8
P 7840 2700
AR Path="/5EAE2D66/5FF753C8" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF753C8" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF753C8" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF753C8" Ref="R?"  Part="1" 
F 0 "R?" V 7800 2810 50  0000 L CNN
F 1 "10" V 7840 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7840 2700 50  0001 C CNN
F 3 "" H 7840 2700 50  0001 C CNN
F 4 "0402" V 7940 2700 50  0001 C CNN "display_footprint"
F 5 "1%" V 8040 2700 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 8140 2700 50  0001 C CNN "Wattage"
	1    7840 2700
	0    -1   1    0   
$EndComp
Wire Wire Line
	7330 2700 7690 2700
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF77C39
P 2450 2900
AR Path="/5EAE2D66/5FF77C39" Ref="R?"  Part="1" 
AR Path="/5EAE2D8A/5FF77C39" Ref="R?"  Part="1" 
AR Path="/5F581B64/5FF77C39" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF77C39" Ref="R?"  Part="1" 
F 0 "R?" V 2410 3010 50  0000 L CNN
F 1 "10" V 2450 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2450 2900 50  0001 C CNN
F 3 "" H 2450 2900 50  0001 C CNN
F 4 "0402" V 2550 2900 50  0001 C CNN "display_footprint"
F 5 "1%" V 2650 2900 50  0001 C CNN "Tolerance"
F 6 "1/16W" V 2750 2900 50  0001 C CNN "Wattage"
	1    2450 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2800 3420 2800
Wire Wire Line
	2300 3700 5500 3700
Wire Wire Line
	2300 3800 5500 3800
Wire Wire Line
	2300 4600 5170 4600
Wire Wire Line
	2300 4700 5420 4700
Text GLabel 2300 2700 0    40   Input ~ 0
~WIFI_RESET
Text GLabel 2300 2800 0    50   Input ~ 0
WIFI_WAKE
Text GLabel 2300 2900 0    50   Input ~ 0
WIFI_CHIP_EN
Text GLabel 2300 3100 0    50   Input ~ 0
WIFI_SPI_SCK
Text GLabel 2300 3300 0    40   Input ~ 0
~WIFI_SPI_SS
Text GLabel 2300 3400 0    50   Input ~ 0
WIFI_SPI_MOSI
Text GLabel 2300 3500 0    50   Output ~ 0
WIFI_SPI_MISO
Text GLabel 2300 3700 0    50   Input ~ 0
WIFI_UART_RX
Text GLabel 2300 3800 0    50   Output ~ 0
WIFI_UART_TX
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5FF89DD2
P 2100 4700
F 0 "J?" H 2100 4900 50  0000 C CNN
F 1 "WIFI_I2C" H 2100 4500 50  0000 C CNN
F 2 "" H 2100 4700 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF8A4E5
P 2380 4880
F 0 "#PWR?" H 2380 4630 50  0001 C CNN
F 1 "GND" H 2380 4730 50  0000 C CNN
F 2 "" H 2380 4880 50  0001 C CNN
F 3 "" H 2380 4880 50  0001 C CNN
	1    2380 4880
	1    0    0    -1  
$EndComp
Wire Wire Line
	2380 4880 2380 4800
Wire Wire Line
	2380 4800 2300 4800
$Comp
L power:GND #PWR?
U 1 1 5FF8DBDF
P 6710 1760
F 0 "#PWR?" H 6710 1510 50  0001 C CNN
F 1 "GND" H 6710 1610 50  0000 C CNN
F 2 "" H 6710 1760 50  0001 C CNN
F 3 "" H 6710 1760 50  0001 C CNN
	1    6710 1760
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF8DDFD
P 6710 1460
F 0 "#PWR?" H 6710 1310 50  0001 C CNN
F 1 "+3.3V" H 6710 1600 50  0000 C CNN
F 2 "" H 6710 1460 50  0001 C CNN
F 3 "" H 6710 1460 50  0001 C CNN
	1    6710 1460
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF8E41F
P 7410 1760
F 0 "#PWR?" H 7410 1510 50  0001 C CNN
F 1 "GND" H 7410 1610 50  0000 C CNN
F 2 "" H 7410 1760 50  0001 C CNN
F 3 "" H 7410 1760 50  0001 C CNN
	1    7410 1760
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF8E429
P 7410 1460
F 0 "#PWR?" H 7410 1310 50  0001 C CNN
F 1 "+3.3V" H 7410 1600 50  0000 C CNN
F 2 "" H 7410 1460 50  0001 C CNN
F 3 "" H 7410 1460 50  0001 C CNN
	1    7410 1460
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5FF91BA7
P 5310 1610
AR Path="/5CB7718D/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5A557C58/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5CB25152/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5E697934/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5F581B64/5FF91BA7" Ref="C?"  Part="1" 
AR Path="/5F582E44/5FF91BA7" Ref="C?"  Part="1" 
F 0 "C?" H 5335 1710 50  0000 L CNN
F 1 "10uF" H 5335 1510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5348 1460 50  0001 C CNN
F 3 "" H 5335 1710 50  0001 C CNN
F 4 "0402" H 5160 1710 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 5160 1610 50  0000 R CNN "Voltage"
F 6 "X5R" H 5160 1510 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 5310 1610 50  0001 C CNN "Digi-Key PN"
F 8 "WIFI" H 5150 1780 50  0000 R CNN "Configuration"
	1    5310 1610
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF91EA7
P 5310 1760
F 0 "#PWR?" H 5310 1510 50  0001 C CNN
F 1 "GND" H 5310 1610 50  0000 C CNN
F 2 "" H 5310 1760 50  0001 C CNN
F 3 "" H 5310 1760 50  0001 C CNN
	1    5310 1760
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF91EB1
P 5310 1460
F 0 "#PWR?" H 5310 1310 50  0001 C CNN
F 1 "+3.3V" H 5310 1600 50  0000 C CNN
F 2 "" H 5310 1460 50  0001 C CNN
F 3 "" H 5310 1460 50  0001 C CNN
	1    5310 1460
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF91EC9
P 6010 1760
F 0 "#PWR?" H 6010 1510 50  0001 C CNN
F 1 "GND" H 6010 1610 50  0000 C CNN
F 2 "" H 6010 1760 50  0001 C CNN
F 3 "" H 6010 1760 50  0001 C CNN
	1    6010 1760
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FF91ED3
P 6010 1460
F 0 "#PWR?" H 6010 1310 50  0001 C CNN
F 1 "+3.3V" H 6010 1600 50  0000 C CNN
F 2 "" H 6010 1460 50  0001 C CNN
F 3 "" H 6010 1460 50  0001 C CNN
	1    6010 1460
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6020EF8E
P 6010 1610
AR Path="/5CB7718D/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5E0DC082/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5E0F9110/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5A557C58/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5CB25152/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5E697934/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5EAE3021/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5F581B64/6020EF8E" Ref="C?"  Part="1" 
AR Path="/5F582E44/6020EF8E" Ref="C?"  Part="1" 
F 0 "C?" H 6035 1710 50  0000 L CNN
F 1 "10uF" H 6035 1510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6048 1460 50  0001 C CNN
F 3 "" H 6035 1710 50  0001 C CNN
F 4 "0402" H 5860 1710 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 5860 1610 50  0000 R CNN "Voltage"
F 6 "X5R" H 5860 1510 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6010 1610 50  0001 C CNN "Digi-Key PN"
F 8 "WIFI" H 5850 1780 50  0000 R CNN "Configuration"
	1    6010 1610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6020F45D
P 6710 1610
AR Path="/5CB7718D/6020F45D" Ref="C?"  Part="1" 
AR Path="/5E0DC082/6020F45D" Ref="C?"  Part="1" 
AR Path="/5E0F9110/6020F45D" Ref="C?"  Part="1" 
AR Path="/5A557C58/6020F45D" Ref="C?"  Part="1" 
AR Path="/5CB25152/6020F45D" Ref="C?"  Part="1" 
AR Path="/5E697934/6020F45D" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/6020F45D" Ref="C?"  Part="1" 
AR Path="/5EAE3021/6020F45D" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/6020F45D" Ref="C?"  Part="1" 
AR Path="/5F581B64/6020F45D" Ref="C?"  Part="1" 
AR Path="/5F582E44/6020F45D" Ref="C?"  Part="1" 
F 0 "C?" H 6735 1710 50  0000 L CNN
F 1 "10uF" H 6735 1510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6748 1460 50  0001 C CNN
F 3 "" H 6735 1710 50  0001 C CNN
F 4 "0402" H 6560 1710 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6560 1610 50  0000 R CNN "Voltage"
F 6 "X5R" H 6560 1510 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 6710 1610 50  0001 C CNN "Digi-Key PN"
F 8 "WIFI" H 6550 1780 50  0000 R CNN "Configuration"
	1    6710 1610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 6020F910
P 7410 1610
AR Path="/5CB7718D/6020F910" Ref="C?"  Part="1" 
AR Path="/5E0DC082/6020F910" Ref="C?"  Part="1" 
AR Path="/5E0F9110/6020F910" Ref="C?"  Part="1" 
AR Path="/5A557C58/6020F910" Ref="C?"  Part="1" 
AR Path="/5CB25152/6020F910" Ref="C?"  Part="1" 
AR Path="/5E697934/6020F910" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/6020F910" Ref="C?"  Part="1" 
AR Path="/5EAE3021/6020F910" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/6020F910" Ref="C?"  Part="1" 
AR Path="/5F581B64/6020F910" Ref="C?"  Part="1" 
AR Path="/5F582E44/6020F910" Ref="C?"  Part="1" 
F 0 "C?" H 7435 1710 50  0000 L CNN
F 1 "10uF" H 7435 1510 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7448 1460 50  0001 C CNN
F 3 "" H 7435 1710 50  0001 C CNN
F 4 "0402" H 7260 1710 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 7260 1610 50  0000 R CNN "Voltage"
F 6 "X5R" H 7260 1510 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 7410 1610 50  0001 C CNN "Digi-Key PN"
F 8 "WIFI" H 7250 1780 50  0000 R CNN "Configuration"
	1    7410 1610
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5FF2C483
P 7330 2930
AR Path="/5D6B2673/5FF2C483" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5FF2C483" Ref="R?"  Part="1" 
AR Path="/5D77A516/5FF2C483" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5FF2C483" Ref="R?"  Part="1" 
AR Path="/5F581B41/5FF2C483" Ref="R?"  Part="1" 
AR Path="/5F582E44/5FF2C483" Ref="R?"  Part="1" 
F 0 "R?" H 7240 2930 50  0000 R CNN
F 1 "10k" V 7330 2860 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7330 2930 50  0001 C CNN
F 3 "" H 7330 2930 50  0001 C CNN
F 4 "0402" H 7430 3000 50  0000 L CNN "display_footprint"
F 5 "1%" H 7430 2900 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 7430 2800 50  0000 L CNN "Wattage"
F 7 "" H 7630 3330 60  0001 C CNN "Digi-Key PN"
	1    7330 2930
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7000 4800 7080 4800
Wire Wire Line
	7080 4800 7080 4900
Connection ~ 7080 4900
Wire Wire Line
	7000 4700 7080 4700
Wire Wire Line
	7080 4700 7080 4800
Connection ~ 7080 4800
NoConn ~ 5500 4000
NoConn ~ 5500 4100
NoConn ~ 5500 4200
NoConn ~ 5500 4300
NoConn ~ 5500 4400
$Comp
L Custom_Library:C_Custom C?
U 1 1 601C0E29
P 2630 6480
AR Path="/5BAAE1F3/601C0E29" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/601C0E29" Ref="C?"  Part="1" 
AR Path="/5BE48F98/601C0E29" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/601C0E29" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/601C0E29" Ref="C?"  Part="1" 
AR Path="/5E6AF016/601C0E29" Ref="C?"  Part="1" 
AR Path="/5EAE4AE4/601C0E29" Ref="C?"  Part="1" 
AR Path="/5F582E50/601C0E29" Ref="C?"  Part="1" 
AR Path="/5F5829C2/601C0E29" Ref="C?"  Part="1" 
AR Path="/5F582E44/601C0E29" Ref="C?"  Part="1" 
F 0 "C?" H 2655 6580 50  0000 L CNN
F 1 "0.1uF" H 2655 6380 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2668 6330 50  0001 C CNN
F 3 "" H 2655 6580 50  0001 C CNN
F 4 "490-10701-1-ND" H 3055 6980 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 2480 6580 50  0000 R CNN "display_footprint"
F 6 "50V" H 2480 6480 50  0000 R CNN "Voltage"
F 7 "X7R" H 2480 6380 50  0000 R CNN "Dielectric"
	1    2630 6480
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C0E2F
P 2630 6330
AR Path="/5F582E50/601C0E2F" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C0E2F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C0E2F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2630 6180 50  0001 C CNN
F 1 "+3.3V" H 2630 6470 50  0000 C CNN
F 2 "" H 2630 6330 50  0001 C CNN
F 3 "" H 2630 6330 50  0001 C CNN
	1    2630 6330
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C0E35
P 2630 6630
AR Path="/5F582E50/601C0E35" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C0E35" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C0E35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2630 6380 50  0001 C CNN
F 1 "GND" H 2630 6480 50  0000 C CNN
F 2 "" H 2630 6630 50  0001 C CNN
F 3 "" H 2630 6630 50  0001 C CNN
	1    2630 6630
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C0E3B
P 2740 7070
AR Path="/5F582E50/601C0E3B" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C0E3B" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C0E3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2740 6920 50  0001 C CNN
F 1 "+3.3V" H 2740 7210 50  0000 C CNN
F 2 "" H 2740 7070 50  0001 C CNN
F 3 "" H 2740 7070 50  0001 C CNN
	1    2740 7070
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C0E41
P 2740 7270
AR Path="/5F582E50/601C0E41" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C0E41" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C0E41" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2740 7020 50  0001 C CNN
F 1 "GND" H 2740 7120 50  0000 C CNN
F 2 "" H 2740 7270 50  0001 C CNN
F 3 "" H 2740 7270 50  0001 C CNN
	1    2740 7270
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_BUF U?
U 1 1 601C0E47
P 2740 7170
AR Path="/5F5829C2/601C0E47" Ref="U?"  Part="1" 
AR Path="/5F582E44/601C0E47" Ref="U?"  Part="1" 
F 0 "U?" H 2800 7320 50  0000 L CNN
F 1 "74LVC1G97" H 2800 7020 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2790 7170 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 2790 7170 50  0001 C CNN
	1    2740 7170
	1    0    0    -1  
$EndComp
Text GLabel 2440 7170 0    40   Input ~ 0
~WIFI_SPI_SS
$Comp
L Device:LED D?
U 1 1 601C5578
P 3310 6900
AR Path="/5BB844FD/601C5578" Ref="D?"  Part="1" 
AR Path="/5BF346B3/601C5578" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/601C5578" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/601C5578" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/601C5578" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/601C5578" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/601C5578" Ref="D?"  Part="1" 
AR Path="/5F582E4A/601C5578" Ref="D?"  Part="1" 
F 0 "D?" V 3349 6783 50  0000 R CNN
F 1 "Green" V 3258 6783 50  0000 R CNN
F 2 "LEDs:LED_0603" H 3310 6900 50  0001 C CNN
F 3 "~" H 3310 6900 50  0001 C CNN
F 4 "754-1121-1-ND" H -1850 580 50  0001 C CNN "Digi-Key PN"
	1    3310 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2990 7170 3310 7170
Wire Wire Line
	3310 7170 3310 7050
$Comp
L Custom_Library:R_Custom R?
U 1 1 601C5584
P 3310 6600
AR Path="/5BAAE1F3/601C5584" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/601C5584" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/601C5584" Ref="R?"  Part="1" 
AR Path="/5BB844FD/601C5584" Ref="R?"  Part="1" 
AR Path="/5BF346B3/601C5584" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/601C5584" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/601C5584" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/601C5584" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/601C5584" Ref="R?"  Part="1" 
AR Path="/5F582E4A/601C5584" Ref="R?"  Part="1" 
F 0 "R?" H 3250 6600 50  0000 R CNN
F 1 "1k" V 3310 6600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3310 6600 50  0001 C CNN
F 3 "" H 3310 6600 50  0001 C CNN
F 4 "0603" H 3380 6680 50  0000 L CNN "display_footprint"
F 5 "1%" H 3380 6600 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3380 6530 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 3610 7000 60  0001 C CNN "Digi-Key PN"
	1    3310 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C558A
P 3310 6450
AR Path="/5CB7A8BC/601C558A" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/601C558A" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/601C558A" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/601C558A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3310 6300 50  0001 C CNN
F 1 "+3.3V" H 3310 6590 50  0000 C CNN
F 2 "" H 3310 6450 50  0001 C CNN
F 3 "" H 3310 6450 50  0001 C CNN
	1    3310 6450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
