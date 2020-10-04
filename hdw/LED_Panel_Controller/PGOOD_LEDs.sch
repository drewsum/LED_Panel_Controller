EESchema Schematic File Version 4
LIBS:LED_Panel_Controller-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 18 34
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
L Device:LED D?
U 1 1 5CB89785
P 3550 2600
AR Path="/5BB844FD/5CB89785" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5CB89785" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5CB89785" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5CB89785" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5CB89785" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5CB89785" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5CB89785" Ref="D?"  Part="1" 
AR Path="/5F582E4A/5CB89785" Ref="D?"  Part="1" 
F 0 "D?" V 3589 2483 50  0000 R CNN
F 1 "Green" V 3498 2483 50  0000 R CNN
F 2 "LEDs:LED_0603" H 3550 2600 50  0001 C CNN
F 3 "~" H 3550 2600 50  0001 C CNN
F 4 "754-1121-1-ND" H -1610 -3720 50  0001 C CNN "Digi-Key PN"
	1    3550 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3230 2870 3550 2870
Wire Wire Line
	3550 2870 3550 2750
$Comp
L Custom_Library:R_Custom R?
U 1 1 5CB89791
P 3550 2300
AR Path="/5BAAE1F3/5CB89791" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5CB89791" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5CB89791" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5CB89791" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5CB89791" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5CB89791" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5CB89791" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5CB89791" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5CB89791" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5CB89791" Ref="R?"  Part="1" 
F 0 "R?" H 3490 2300 50  0000 R CNN
F 1 "1k" V 3550 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3550 2300 50  0001 C CNN
F 3 "" H 3550 2300 50  0001 C CNN
F 4 "0603" H 3620 2380 50  0000 L CNN "display_footprint"
F 5 "1%" H 3620 2300 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3620 2230 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 3850 2700 60  0001 C CNN "Digi-Key PN"
	1    3550 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB897A9
P 2980 2970
AR Path="/5CB7A8BC/5CB897A9" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5CB897A9" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5CB897A9" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5CB897A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2980 2720 50  0001 C CNN
F 1 "GND" H 2980 2820 50  0000 C CNN
F 2 "" H 2980 2970 50  0001 C CNN
F 3 "" H 2980 2970 50  0001 C CNN
	1    2980 2970
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5CB97030
P 8870 2180
AR Path="/5BAAE1F3/5CB97030" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5CB97030" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5CB97030" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5CB97030" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5CB97030" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5CB97030" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5CB97030" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5CB97030" Ref="C?"  Part="1" 
F 0 "C?" H 8895 2280 50  0000 L CNN
F 1 "0.1uF" H 8895 2080 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8908 2030 50  0001 C CNN
F 3 "" H 8895 2280 50  0001 C CNN
F 4 "399-7845-1-ND" H 9295 2680 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 8720 2280 50  0000 R CNN "display_footprint"
F 6 "50V" H 8720 2180 50  0000 R CNN "Voltage"
F 7 "X7R" H 8720 2080 50  0000 R CNN "Dielectric"
	1    8870 2180
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5CB9703B
P 9550 2600
AR Path="/5BB844FD/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5CB9703B" Ref="D?"  Part="1" 
AR Path="/5F582E4A/5CB9703B" Ref="D?"  Part="1" 
F 0 "D?" V 9589 2483 50  0000 R CNN
F 1 "Green" V 9498 2483 50  0000 R CNN
F 2 "LEDs:LED_0603" H 9550 2600 50  0001 C CNN
F 3 "~" H 9550 2600 50  0001 C CNN
F 4 "754-1121-1-ND" H 4390 -3720 50  0001 C CNN "Digi-Key PN"
	1    9550 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9230 2870 9550 2870
Wire Wire Line
	9550 2870 9550 2750
$Comp
L Custom_Library:R_Custom R?
U 1 1 5CB9704B
P 9550 2300
AR Path="/5BAAE1F3/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5CB9704B" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5CB9704B" Ref="R?"  Part="1" 
F 0 "R?" H 9490 2300 50  0000 R CNN
F 1 "1k" V 9550 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 9550 2300 50  0001 C CNN
F 3 "" H 9550 2300 50  0001 C CNN
F 4 "0603" H 9620 2380 50  0000 L CNN "display_footprint"
F 5 "1%" H 9620 2300 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 9620 2230 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 9850 2700 60  0001 C CNN "Digi-Key PN"
	1    9550 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CB9705F
P 8980 2770
AR Path="/5CB7A8BC/5CB9705F" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5CB9705F" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5CB9705F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5CB9705F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8980 2620 50  0001 C CNN
F 1 "+3.3V" H 8980 2910 50  0000 C CNN
F 2 "" H 8980 2770 50  0001 C CNN
F 3 "" H 8980 2770 50  0001 C CNN
	1    8980 2770
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CB97069
P 8870 2030
AR Path="/5CB7A8BC/5CB97069" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5CB97069" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5CB97069" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5CB97069" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8870 1880 50  0001 C CNN
F 1 "+3.3V" H 8870 2170 50  0000 C CNN
F 2 "" H 8870 2030 50  0001 C CNN
F 3 "" H 8870 2030 50  0001 C CNN
	1    8870 2030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB97073
P 8980 2970
AR Path="/5CB7A8BC/5CB97073" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5CB97073" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5CB97073" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5CB97073" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8980 2720 50  0001 C CNN
F 1 "GND" H 8980 2820 50  0000 C CNN
F 2 "" H 8980 2970 50  0001 C CNN
F 3 "" H 8980 2970 50  0001 C CNN
	1    8980 2970
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CB9707D
P 8870 2330
AR Path="/5CB7A8BC/5CB9707D" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5CB9707D" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5CB9707D" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5CB9707D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8870 2080 50  0001 C CNN
F 1 "GND" H 8870 2180 50  0000 C CNN
F 2 "" H 8870 2330 50  0001 C CNN
F 3 "" H 8870 2330 50  0001 C CNN
	1    8870 2330
	1    0    0    -1  
$EndComp
Text GLabel 2680 2870 0    50   Input ~ 0
POS12_PGOOD
Text GLabel 8680 2870 0    50   Input ~ 0
POS3P3_PGOOD
Text GLabel 6680 2870 0    50   Input ~ 0
VBAT_PGOOD
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E3A3719
P 6870 2180
AR Path="/5BAAE1F3/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5E3A3719" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5E3A3719" Ref="C?"  Part="1" 
F 0 "C?" H 6895 2280 50  0000 L CNN
F 1 "0.1uF" H 6895 2080 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6908 2030 50  0001 C CNN
F 3 "" H 6895 2280 50  0001 C CNN
F 4 "399-7845-1-ND" H 7295 2680 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 6720 2280 50  0000 R CNN "display_footprint"
F 6 "50V" H 6720 2180 50  0000 R CNN "Voltage"
F 7 "X7R" H 6720 2080 50  0000 R CNN "Dielectric"
	1    6870 2180
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E3A3724
P 7550 2600
AR Path="/5BB844FD/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5E3A3724" Ref="D?"  Part="1" 
AR Path="/5F582E4A/5E3A3724" Ref="D?"  Part="1" 
F 0 "D?" V 7589 2483 50  0000 R CNN
F 1 "Red" V 7498 2483 50  0000 R CNN
F 2 "LEDs:LED_0603" H 7550 2600 50  0001 C CNN
F 3 "~" H 7550 2600 50  0001 C CNN
F 4 "754-1117-1-ND" H 7550 2600 50  0001 C CNN "Digi-Key PN"
	1    7550 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7230 2870 7550 2870
Wire Wire Line
	7550 2870 7550 2750
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E3A3734
P 7550 2300
AR Path="/5BAAE1F3/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5E3A3734" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5E3A3734" Ref="R?"  Part="1" 
F 0 "R?" H 7490 2300 50  0000 R CNN
F 1 "1k" V 7550 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 7550 2300 50  0001 C CNN
F 3 "" H 7550 2300 50  0001 C CNN
F 4 "0603" H 7620 2380 50  0000 L CNN "display_footprint"
F 5 "1%" H 7620 2300 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 7620 2230 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 7850 2700 60  0001 C CNN "Digi-Key PN"
	1    7550 2300
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E3A3748
P 6980 2770
AR Path="/5CB7A8BC/5E3A3748" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3748" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E3A3748" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E3A3748" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6980 2620 50  0001 C CNN
F 1 "+3.3V" H 6980 2910 50  0000 C CNN
F 2 "" H 6980 2770 50  0001 C CNN
F 3 "" H 6980 2770 50  0001 C CNN
	1    6980 2770
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E3A3752
P 6870 2030
AR Path="/5CB7A8BC/5E3A3752" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3752" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E3A3752" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E3A3752" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6870 1880 50  0001 C CNN
F 1 "+3.3V" H 6870 2170 50  0000 C CNN
F 2 "" H 6870 2030 50  0001 C CNN
F 3 "" H 6870 2030 50  0001 C CNN
	1    6870 2030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3A375C
P 6980 2970
AR Path="/5CB7A8BC/5E3A375C" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E3A375C" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E3A375C" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E3A375C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6980 2720 50  0001 C CNN
F 1 "GND" H 6980 2820 50  0000 C CNN
F 2 "" H 6980 2970 50  0001 C CNN
F 3 "" H 6980 2970 50  0001 C CNN
	1    6980 2970
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3A3766
P 6870 2330
AR Path="/5CB7A8BC/5E3A3766" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E3A3766" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E3A3766" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E3A3766" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6870 2080 50  0001 C CNN
F 1 "GND" H 6870 2180 50  0000 C CNN
F 2 "" H 6870 2330 50  0001 C CNN
F 3 "" H 6870 2330 50  0001 C CNN
	1    6870 2330
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G06_Power U?
U 1 1 5E9DF04D
P 2980 2870
F 0 "U?" H 3080 3020 50  0000 L CNN
F 1 "74LVC1G06" H 3080 2770 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 2980 2920 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g06.pdf" H 2980 2870 50  0001 C CNN
F 4 "296-8484-1-ND" H 2980 2870 50  0001 C CNN "Digi-Key PN"
	1    2980 2870
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G06_Power U?
U 1 1 5E9DFBA9
P 8980 2870
F 0 "U?" H 9080 3020 50  0000 L CNN
F 1 "74LVC1G06" H 9080 2770 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 8980 2920 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g06.pdf" H 8980 2870 50  0001 C CNN
F 4 "296-8484-1-ND" H 8980 2870 50  0001 C CNN "Digi-Key PN"
	1    8980 2870
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 U?
U 1 1 5F2942D2
P 3910 6370
F 0 "U?" H 3660 6595 50  0000 C CNN
F 1 "LP2985-3.3" H 3910 6595 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 3910 6695 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 3910 6370 50  0001 C CNN
F 4 "LP2985IM5X-3.3/NOPBCT-ND" H 3910 6370 50  0001 C CNN "Digi-Key PN"
	1    3910 6370
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F29D78B
P 2870 2180
AR Path="/5BAAE1F3/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5F29D78B" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5F29D78B" Ref="C?"  Part="1" 
F 0 "C?" H 2895 2280 50  0000 L CNN
F 1 "0.1uF" H 2895 2080 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2908 2030 50  0001 C CNN
F 3 "" H 2895 2280 50  0001 C CNN
F 4 "399-7845-1-ND" H 3295 2680 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 2720 2280 50  0000 R CNN "display_footprint"
F 6 "50V" H 2720 2180 50  0000 R CNN "Voltage"
F 7 "X7R" H 2720 2080 50  0000 R CNN "Dielectric"
	1    2870 2180
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F29D797
P 2870 2330
AR Path="/5CB7A8BC/5F29D797" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5F29D797" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5F29D797" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5F29D797" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2870 2080 50  0001 C CNN
F 1 "GND" H 2870 2180 50  0000 C CNN
F 2 "" H 2870 2330 50  0001 C CNN
F 3 "" H 2870 2330 50  0001 C CNN
	1    2870 2330
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2A03FA
P 3910 6670
F 0 "#PWR?" H 3910 6420 50  0001 C CNN
F 1 "GND" H 3910 6520 50  0000 C CNN
F 2 "" H 3910 6670 50  0001 C CNN
F 3 "" H 3910 6670 50  0001 C CNN
	1    3910 6670
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F2A55AF
P 2640 6500
AR Path="/5A0BC776/5F2A55AF" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F2A55AF" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5F2A55AF" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F2A55AF" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5F2A55AF" Ref="C?"  Part="1" 
F 0 "C?" H 2665 6600 50  0000 L CNN
F 1 "4.7uF" H 2665 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2678 6350 50  0001 C CNN
F 3 "" H 2665 6600 50  0001 C CNN
F 4 "0805" H 2490 6600 50  0000 R CNN "display_footprint"
F 5 "16V" H 2490 6500 50  0000 R CNN "Voltage"
F 6 "X7R" H 2490 6400 50  0000 R CNN "Dielectric"
F 7 "1276-2970-1-ND" H -3260 1940 50  0001 C CNN "Digi-Key PN"
	1    2640 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2A55B5
P 2640 6650
AR Path="/5E98CF45/5F2A55B5" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5F2A55B5" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5F2A55B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2640 6400 50  0001 C CNN
F 1 "GND" H 2640 6500 50  0000 C CNN
F 2 "" H 2640 6650 50  0001 C CNN
F 3 "" H 2640 6650 50  0001 C CNN
	1    2640 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3510 6270 2640 6270
Wire Wire Line
	2640 6270 2640 6350
$Comp
L power:+12V #PWR?
U 1 1 5F2A78FC
P 2640 6190
F 0 "#PWR?" H 2640 6040 50  0001 C CNN
F 1 "+12V" H 2640 6330 50  0000 C CNN
F 2 "" H 2640 6190 50  0001 C CNN
F 3 "" H 2640 6190 50  0001 C CNN
	1    2640 6190
	1    0    0    -1  
$EndComp
Wire Wire Line
	2640 6190 2640 6270
Connection ~ 2640 6270
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2AA15A
P 3150 5940
AR Path="/5BB27BA3/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5BB27BF7/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5C1DE17A/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5C1E3A08/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5D779AE1/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5CB7718D/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5E0DC082/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5E0F263A/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5E939D31/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5E98CF45/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5F2AA15A" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5F2AA15A" Ref="R?"  Part="1" 
F 0 "R?" H 3070 5940 50  0000 R CNN
F 1 "10k" V 3150 5940 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3150 5940 50  0001 C CNN
F 3 "" H 3150 5940 50  0001 C CNN
F 4 "0603" H 3250 6020 50  0000 L CNN "display_footprint"
F 5 "1%" H 3250 5940 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3260 5860 50  0000 L CNN "Wattage"
F 7 "YAG2321CT-ND" H 3450 6340 60  0001 C CNN "Digi-Key PN"
	1    3150 5940
	1    0    0    -1  
$EndComp
Wire Wire Line
	3510 6370 3150 6370
Wire Wire Line
	3150 6370 3150 6090
$Comp
L power:+12V #PWR?
U 1 1 5F2AA708
P 3150 5790
F 0 "#PWR?" H 3150 5640 50  0001 C CNN
F 1 "+12V" H 3150 5930 50  0000 C CNN
F 2 "" H 3150 5790 50  0001 C CNN
F 3 "" H 3150 5790 50  0001 C CNN
	1    3150 5790
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2B235E
P 3150 7260
AR Path="/5E939EAF/5F2B235E" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5F2B235E" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5F2B235E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3150 7010 50  0001 C CNN
F 1 "GND" H 3150 7110 50  0000 C CNN
F 2 "" H 3150 7260 50  0001 C CNN
F 3 "" H 3150 7260 50  0001 C CNN
	1    3150 7260
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2B2368
P 2110 7060
AR Path="/5E939EAF/5F2B2368" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5F2B2368" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5F2B2368" Ref="R?"  Part="1" 
F 0 "R?" V 2010 7060 50  0000 C CNN
F 1 "10" V 2110 7060 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2110 7060 50  0001 C CNN
F 3 "" H 2110 7060 50  0001 C CNN
F 4 "0603" V 2210 7060 50  0000 C CNN "display_footprint"
F 5 "1%" V 2310 7060 50  0000 C CNN "Tolerance"
F 6 "1/10W" V 2410 7060 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 2410 7460 60  0001 C CNN "Digi-Key PN"
	1    2110 7060
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F2B2372
P 2560 7290
AR Path="/5BAAE1F3/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5C1D5CB6/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5CB0BC26/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5E697920/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5EAE2EF2/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5E939EAF/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5F2B2372" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5F2B2372" Ref="R?"  Part="1" 
F 0 "R?" H 2500 7290 50  0000 R CNN
F 1 "10k" V 2560 7290 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 2560 7290 50  0001 C CNN
F 3 "" H 2560 7290 50  0001 C CNN
F 4 "0603" H 2750 7370 50  0000 C CNN "display_footprint"
F 5 "1%" H 2740 7290 50  0000 C CNN "Tolerance"
F 6 "1/10W" H 2770 7220 50  0000 C CNN "Wattage"
F 7 "YAG2321CT-ND" H 2860 7690 60  0001 C CNN "Digi-Key PN"
	1    2560 7290
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2B2378
P 2560 7440
AR Path="/5E939EAF/5F2B2378" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5F2B2378" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5F2B2378" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2560 7190 50  0001 C CNN
F 1 "GND" H 2560 7290 50  0000 C CNN
F 2 "" H 2560 7440 50  0001 C CNN
F 3 "" H 2560 7440 50  0001 C CNN
	1    2560 7440
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 7060 2560 7060
Wire Wire Line
	2560 7140 2560 7060
Connection ~ 2560 7060
Wire Wire Line
	2560 7060 2260 7060
$Comp
L Transistor_FET:BSS214NW Q?
U 1 1 5F2B2383
P 3050 7060
AR Path="/5E939EAF/5F2B2383" Ref="Q?"  Part="1" 
AR Path="/5E93CC4E/5F2B2383" Ref="Q?"  Part="1" 
AR Path="/5F582E4A/5F2B2383" Ref="Q?"  Part="1" 
F 0 "Q?" H 3250 7135 50  0000 L CNN
F 1 "BSS214NW" H 3250 7060 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 3250 6985 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/Infineon-BSS214NW-DS-v02_02-en.pdf?fileId=db3a30431b3e89eb011b695aebc01bde" H 3050 7060 50  0001 L CNN
F 4 "BSS214NWH6327XTSA1CT-ND" H 3050 7060 50  0001 C CNN "Digi-Key PN"
	1    3050 7060
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6860 3150 6370
Connection ~ 3150 6370
NoConn ~ 4310 6370
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F2B6970
P 4840 6500
AR Path="/5A0BC776/5F2B6970" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5F2B6970" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5F2B6970" Ref="C?"  Part="1" 
AR Path="/5E98CF45/5F2B6970" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5F2B6970" Ref="C?"  Part="1" 
F 0 "C?" H 4865 6600 50  0000 L CNN
F 1 "4.7uF" H 4865 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4878 6350 50  0001 C CNN
F 3 "" H 4865 6600 50  0001 C CNN
F 4 "0805" H 4690 6600 50  0000 R CNN "display_footprint"
F 5 "16V" H 4690 6500 50  0000 R CNN "Voltage"
F 6 "X7R" H 4690 6400 50  0000 R CNN "Dielectric"
F 7 "1276-2970-1-ND" H -1060 1940 50  0001 C CNN "Digi-Key PN"
	1    4840 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F2B6976
P 4840 6650
AR Path="/5E98CF45/5F2B6976" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5F2B6976" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5F2B6976" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4840 6400 50  0001 C CNN
F 1 "GND" H 4840 6500 50  0000 C CNN
F 2 "" H 4840 6650 50  0001 C CNN
F 3 "" H 4840 6650 50  0001 C CNN
	1    4840 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4840 6270 4840 6350
Wire Wire Line
	4840 6270 4310 6270
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C12DC
P 4840 6190
F 0 "#PWR?" H 4840 6040 50  0001 C CNN
F 1 "+3.3V_PGL" H 4840 6330 50  0000 C CNN
F 2 "" H 4840 6190 50  0001 C CNN
F 3 "" H 4840 6190 50  0001 C CNN
	1    4840 6190
	1    0    0    -1  
$EndComp
Wire Wire Line
	4840 6190 4840 6270
Connection ~ 4840 6270
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C3CAD
P 3550 2150
F 0 "#PWR?" H 3550 2000 50  0001 C CNN
F 1 "+3.3V_PGL" H 3550 2290 50  0000 C CNN
F 2 "" H 3550 2150 50  0001 C CNN
F 3 "" H 3550 2150 50  0001 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C4420
P 2870 2030
F 0 "#PWR?" H 2870 1880 50  0001 C CNN
F 1 "+3.3V_PGL" H 2870 2170 50  0000 C CNN
F 2 "" H 2870 2030 50  0001 C CNN
F 3 "" H 2870 2030 50  0001 C CNN
	1    2870 2030
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C493B
P 2980 2770
F 0 "#PWR?" H 2980 2620 50  0001 C CNN
F 1 "+3.3V_PGL" H 2980 2910 50  0000 C CNN
F 2 "" H 2980 2770 50  0001 C CNN
F 3 "" H 2980 2770 50  0001 C CNN
	1    2980 2770
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C576C
P 7550 2150
F 0 "#PWR?" H 7550 2000 50  0001 C CNN
F 1 "+3.3V_PGL" H 7550 2290 50  0000 C CNN
F 2 "" H 7550 2150 50  0001 C CNN
F 3 "" H 7550 2150 50  0001 C CNN
	1    7550 2150
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C6134
P 9550 2150
F 0 "#PWR?" H 9550 2000 50  0001 C CNN
F 1 "+3.3V_PGL" H 9550 2290 50  0000 C CNN
F 2 "" H 9550 2150 50  0001 C CNN
F 3 "" H 9550 2150 50  0001 C CNN
	1    9550 2150
	1    0    0    -1  
$EndComp
Text GLabel 1960 7060 0    50   Input ~ 0
POS3P3_PGL_SHDN
$Comp
L Custom_Library:74LVC1G07_Power U?
U 1 1 5F2CF0F0
P 6980 2870
F 0 "U?" H 7080 2970 50  0000 L CNN
F 1 "74LVC1G07" H 7080 2770 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 6980 2870 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 6980 2870 50  0001 C CNN
F 4 "296-8486-1-ND" H 6980 2870 50  0001 C CNN "Digi-Key PN"
	1    6980 2870
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C6846
P 3550 3650
F 0 "#PWR?" H 3550 3500 50  0001 C CNN
F 1 "+3.3V_PGL" H 3550 3790 50  0000 C CNN
F 2 "" H 3550 3650 50  0001 C CNN
F 3 "" H 3550 3650 50  0001 C CNN
	1    3550 3650
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G06_Power U?
U 1 1 5E9E1A18
P 2980 4370
F 0 "U?" H 3080 4520 50  0000 L CNN
F 1 "74LVC1G06" H 3080 4270 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 2980 4420 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g06.pdf" H 2980 4370 50  0001 C CNN
F 4 "296-8484-1-ND" H 2980 4370 50  0001 C CNN "Digi-Key PN"
	1    2980 4370
	1    0    0    -1  
$EndComp
Text GLabel 2680 4370 0    50   Input ~ 0
POS5_PGOOD
$Comp
L power:GND #PWR?
U 1 1 5E1829F1
P 2870 3830
AR Path="/5CB7A8BC/5E1829F1" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E1829F1" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E1829F1" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E1829F1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2870 3580 50  0001 C CNN
F 1 "GND" H 2870 3680 50  0000 C CNN
F 2 "" H 2870 3830 50  0001 C CNN
F 3 "" H 2870 3830 50  0001 C CNN
	1    2870 3830
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1829E7
P 2980 4470
AR Path="/5CB7A8BC/5E1829E7" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E1829E7" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E1829E7" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E1829E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2980 4220 50  0001 C CNN
F 1 "GND" H 2980 4320 50  0000 C CNN
F 2 "" H 2980 4470 50  0001 C CNN
F 3 "" H 2980 4470 50  0001 C CNN
	1    2980 4470
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E1829DD
P 2870 3530
AR Path="/5CB7A8BC/5E1829DD" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E1829DD" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E1829DD" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E1829DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2870 3380 50  0001 C CNN
F 1 "+3.3V" H 2870 3670 50  0000 C CNN
F 2 "" H 2870 3530 50  0001 C CNN
F 3 "" H 2870 3530 50  0001 C CNN
	1    2870 3530
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E1829D3
P 2980 4270
AR Path="/5CB7A8BC/5E1829D3" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E1829D3" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E1829D3" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E1829D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2980 4120 50  0001 C CNN
F 1 "+3.3V" H 2980 4410 50  0000 C CNN
F 2 "" H 2980 4270 50  0001 C CNN
F 3 "" H 2980 4270 50  0001 C CNN
	1    2980 4270
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E1829BF
P 3550 3800
AR Path="/5BAAE1F3/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5E1829BF" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5E1829BF" Ref="R?"  Part="1" 
F 0 "R?" H 3490 3800 50  0000 R CNN
F 1 "1k" V 3550 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
F 4 "0603" H 3620 3880 50  0000 L CNN "display_footprint"
F 5 "1%" H 3620 3800 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3620 3730 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 3850 4200 60  0001 C CNN "Digi-Key PN"
	1    3550 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4370 3550 4250
Wire Wire Line
	3230 4370 3550 4370
$Comp
L Device:LED D?
U 1 1 5E1829AF
P 3550 4100
AR Path="/5BB844FD/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5E1829AF" Ref="D?"  Part="1" 
AR Path="/5F582E4A/5E1829AF" Ref="D?"  Part="1" 
F 0 "D?" V 3589 3983 50  0000 R CNN
F 1 "Green" V 3498 3983 50  0000 R CNN
F 2 "LEDs:LED_0603" H 3550 4100 50  0001 C CNN
F 3 "~" H 3550 4100 50  0001 C CNN
F 4 "754-1121-1-ND" H -1610 -2220 50  0001 C CNN "Digi-Key PN"
	1    3550 4100
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E1829A4
P 2870 3680
AR Path="/5BAAE1F3/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5E1829A4" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5E1829A4" Ref="C?"  Part="1" 
F 0 "C?" H 2895 3780 50  0000 L CNN
F 1 "0.1uF" H 2895 3580 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2908 3530 50  0001 C CNN
F 3 "" H 2895 3780 50  0001 C CNN
F 4 "399-7845-1-ND" H 3295 4180 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 2720 3780 50  0000 R CNN "display_footprint"
F 6 "50V" H 2720 3680 50  0000 R CNN "Voltage"
F 7 "X7R" H 2720 3580 50  0000 R CNN "Dielectric"
	1    2870 3680
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3V_PGL #PWR?
U 1 1 5F2C4EE2
P 5550 2150
F 0 "#PWR?" H 5550 2000 50  0001 C CNN
F 1 "+3.3V_PGL" H 5550 2290 50  0000 C CNN
F 2 "" H 5550 2150 50  0001 C CNN
F 3 "" H 5550 2150 50  0001 C CNN
	1    5550 2150
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G06_Power U?
U 1 1 5E9E1221
P 4980 2870
F 0 "U?" H 5080 3020 50  0000 L CNN
F 1 "74LVC1G06" H 5080 2770 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 4980 2920 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g06.pdf" H 4980 2870 50  0001 C CNN
F 4 "296-8484-1-ND" H 4980 2870 50  0001 C CNN "Digi-Key PN"
	1    4980 2870
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E9CD1D8
P 4980 2770
AR Path="/5CB7A8BC/5E9CD1D8" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E9CD1D8" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E9CD1D8" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E9CD1D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4980 2620 50  0001 C CNN
F 1 "+3.3V" H 4980 2910 50  0000 C CNN
F 2 "" H 4980 2770 50  0001 C CNN
F 3 "" H 4980 2770 50  0001 C CNN
	1    4980 2770
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9CCE69
P 4870 2330
AR Path="/5CB7A8BC/5E9CCE69" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E9CCE69" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E9CCE69" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E9CCE69" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4870 2080 50  0001 C CNN
F 1 "GND" H 4870 2180 50  0000 C CNN
F 2 "" H 4870 2330 50  0001 C CNN
F 3 "" H 4870 2330 50  0001 C CNN
	1    4870 2330
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E9CBDE7
P 4870 2030
AR Path="/5CB7A8BC/5E9CBDE7" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E9CBDE7" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E9CBDE7" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E9CBDE7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4870 1880 50  0001 C CNN
F 1 "+3.3V" H 4870 2170 50  0000 C CNN
F 2 "" H 4870 2030 50  0001 C CNN
F 3 "" H 4870 2030 50  0001 C CNN
	1    4870 2030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9CB67B
P 4980 2970
AR Path="/5CB7A8BC/5E9CB67B" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/5E9CB67B" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/5E9CB67B" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/5E9CB67B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4980 2720 50  0001 C CNN
F 1 "GND" H 4980 2820 50  0000 C CNN
F 2 "" H 4980 2970 50  0001 C CNN
F 3 "" H 4980 2970 50  0001 C CNN
	1    4980 2970
	1    0    0    -1  
$EndComp
Text GLabel 4680 2870 0    50   Input ~ 0
POS5_USB_PGOOD
$Comp
L Custom_Library:R_Custom R?
U 1 1 5E1D0087
P 5550 2300
AR Path="/5BAAE1F3/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5BB844FD/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5BF346B3/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/5E1D0087" Ref="R?"  Part="1" 
AR Path="/5F582E4A/5E1D0087" Ref="R?"  Part="1" 
F 0 "R?" H 5490 2300 50  0000 R CNN
F 1 "1k" V 5550 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5550 2300 50  0001 C CNN
F 3 "" H 5550 2300 50  0001 C CNN
F 4 "0603" H 5620 2380 50  0000 L CNN "display_footprint"
F 5 "1%" H 5620 2300 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 5620 2230 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 5850 2700 60  0001 C CNN "Digi-Key PN"
	1    5550 2300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 2870 5550 2750
Wire Wire Line
	5230 2870 5550 2870
$Comp
L Device:LED D?
U 1 1 5E1D0077
P 5550 2600
AR Path="/5BB844FD/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5BF346B3/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/5E1D0077" Ref="D?"  Part="1" 
AR Path="/5F582E4A/5E1D0077" Ref="D?"  Part="1" 
F 0 "D?" V 5589 2483 50  0000 R CNN
F 1 "Green" V 5498 2483 50  0000 R CNN
F 2 "LEDs:LED_0603" H 5550 2600 50  0001 C CNN
F 3 "~" H 5550 2600 50  0001 C CNN
F 4 "754-1121-1-ND" H 390 -3720 50  0001 C CNN "Digi-Key PN"
	1    5550 2600
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E1D006C
P 4870 2180
AR Path="/5BAAE1F3/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5BE48F98/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5CB7A8C3/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5E93CC4E/5E1D006C" Ref="C?"  Part="1" 
AR Path="/5F582E4A/5E1D006C" Ref="C?"  Part="1" 
F 0 "C?" H 4895 2280 50  0000 L CNN
F 1 "0.1uF" H 4895 2080 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4908 2030 50  0001 C CNN
F 3 "" H 4895 2280 50  0001 C CNN
F 4 "399-7845-1-ND" H 5295 2680 60  0001 C CNN "Digi-Key PN"
F 5 "0603" H 4720 2280 50  0000 R CNN "display_footprint"
F 6 "50V" H 4720 2180 50  0000 R CNN "Voltage"
F 7 "X7R" H 4720 2080 50  0000 R CNN "Dielectric"
	1    4870 2180
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
