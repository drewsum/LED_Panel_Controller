EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 15 33
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
L Custom_Library:FT234XD U?
U 1 1 5BAEAC0F
P 3420 2680
F 0 "U?" H 3970 2280 60  0000 R CNN
F 1 "FT234XD" H 3420 2680 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-12-1EP_3x3mm_Pitch0.45mm" H 3420 3080 60  0001 C CNN
F 3 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT234XD.pdf" H 3420 3080 60  0001 C CNN
F 4 "768-1178-1-ND" H 4070 2380 60  0001 C CNN "Digi-Key PN"
	1    3420 2680
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAEE754
P 6050 3060
F 0 "C?" H 6075 3160 50  0000 L CNN
F 1 "47pF" H 6075 2960 50  0000 L CNN
F 2 "" H 6088 2910 50  0001 C CNN
F 3 "" H 6075 3160 50  0001 C CNN
F 4 "0402" H 5900 3160 50  0000 R CNN "display_footprint"
F 5 "50V" H 5900 3060 50  0000 R CNN "Voltage"
F 6 "NP0" H 5900 2960 50  0000 R CNN "Dielectric"
F 7 "" H 6050 3060 50  0001 C CNN "Digi-Key PN"
	1    6050 3060
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAEE8C5
P 3440 3940
F 0 "C?" H 3465 4040 50  0000 L CNN
F 1 "0.1uF" H 3465 3840 50  0000 L CNN
F 2 "" H 3478 3790 50  0001 C CNN
F 3 "" H 3465 4040 50  0001 C CNN
F 4 "0402" H 3290 4040 50  0000 R CNN "display_footprint"
F 5 "50V" H 3290 3940 50  0000 R CNN "Voltage"
F 6 "X7R" H 3290 3840 50  0000 R CNN "Dielectric"
F 7 "" H 3865 4440 60  0001 C CNN "Digi-Key PN"
	1    3440 3940
	1    0    0    -1  
$EndComp
NoConn ~ 2770 2630
NoConn ~ 2770 2730
NoConn ~ 8960 2830
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAFEC78
P 6880 3060
F 0 "C?" H 6905 3160 50  0000 L CNN
F 1 "47pF" H 6905 2960 50  0000 L CNN
F 2 "" H 6918 2910 50  0001 C CNN
F 3 "" H 6905 3160 50  0001 C CNN
F 4 "0402" H 6730 3160 50  0000 R CNN "display_footprint"
F 5 "50V" H 6730 3060 50  0000 R CNN "Voltage"
F 6 "NP0" H 6730 2960 50  0000 R CNN "Dielectric"
F 7 "" H 6880 3060 50  0001 C CNN "Digi-Key PN"
	1    6880 3060
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BAFEEB4
P 2750 3940
F 0 "C?" H 2775 4040 50  0000 L CNN
F 1 "0.1uF" H 2775 3840 50  0000 L CNN
F 2 "" H 2788 3790 50  0001 C CNN
F 3 "" H 2775 4040 50  0001 C CNN
F 4 "0402" H 2600 4040 50  0000 R CNN "display_footprint"
F 5 "50V" H 2600 3940 50  0000 R CNN "Voltage"
F 6 "X7R" H 2600 3840 50  0000 R CNN "Dielectric"
F 7 "" H 3175 4440 60  0001 C CNN "Digi-Key PN"
	1    2750 3940
	1    0    0    -1  
$EndComp
Text GLabel 4070 2930 2    50   UnSpc ~ 0
~USB_ACTIVE
Text GLabel 1560 3940 3    50   UnSpc ~ 0
~USB_ACTIVE
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BB07016
P 1560 3490
F 0 "R?" H 1500 3490 50  0000 R CNN
F 1 "1k" V 1560 3490 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1560 3490 50  0001 C CNN
F 3 "" H 1560 3490 50  0001 C CNN
F 4 "0402" H 1630 3570 50  0000 L CNN "display_footprint"
F 5 "1%" H 1630 3490 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 1630 3420 50  0000 L CNN "Wattage"
F 7 "" H 1860 3890 60  0001 C CNN "Digi-Key PN"
	1    1560 3490
	1    0    0    -1  
$EndComp
Text Label 4170 2630 0    50   ~ 0
BRIDGE_USB+
Text Label 4170 2730 0    50   ~ 0
BRIDGE_USB-
Text Label 7180 2630 0    50   ~ 0
CONN_USB+
Text Label 7180 2730 0    50   ~ 0
CONN_USB-
Wire Wire Line
	4070 2630 5330 2630
Wire Wire Line
	4070 2730 5330 2730
Wire Wire Line
	5630 2630 6050 2630
$Comp
L Custom_Library:R_Custom R?
U 1 1 5BBF0F91
P 5480 2630
F 0 "R?" V 5860 2630 50  0000 C CNN
F 1 "27" V 5480 2630 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 5480 2630 50  0001 C CNN
F 3 "" H 5480 2630 50  0001 C CNN
F 4 "0402" V 5777 2630 50  0000 C CNN "display_footprint"
F 5 "1%" V 5686 2630 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 5595 2630 50  0000 C CNN "Wattage"
F 7 "" H 5780 3030 60  0001 C CNN "Digi-Key PN"
	1    5480 2630
	0    1    -1   0   
$EndComp
Wire Wire Line
	6050 2910 6050 2630
Connection ~ 6050 2630
Wire Wire Line
	6880 2910 6880 2730
$Comp
L Device:LED D?
U 1 1 5BBF2083
P 1560 3790
F 0 "D?" V 1598 3673 50  0000 R CNN
F 1 "Yellow" V 1507 3673 50  0000 R CNN
F 2 "LEDs:LED_0402" H 1560 3790 50  0001 C CNN
F 3 "~" H 1560 3790 50  0001 C CNN
F 4 "" H -5080 -1330 50  0001 C CNN "Digi-Key PN"
	1    1560 3790
	0    -1   -1   0   
$EndComp
$Comp
L Connector:USB_B_Mini J?
U 1 1 5BAEA883
P 9260 2630
F 0 "J?" H 9031 2621 50  0000 R CNN
F 1 "USB_B_Mini" H 9031 2530 50  0000 R CNN
F 2 "Connectors:USB_Mini-B" H 9410 2580 50  0001 C CNN
F 3 "~" H 9410 2580 50  0001 C CNN
F 4 "732-2109-1-ND" H 350 -660 50  0001 C CNN "Digi-Key PN"
	1    9260 2630
	-1   0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5BBF2600
P 9360 3360
F 0 "L?" H 9200 3300 50  0000 R CNN
F 1 "600R 0.5A" H 9200 3400 50  0000 R CNN
F 2 "Inductors_SMD:L_0402" V 9290 3360 50  0001 C CNN
F 3 "~" H 9360 3360 50  0001 C CNN
F 4 "490-5441-1-ND" H -170 -400 50  0001 C CNN "Digi-Key PN"
	1    9360 3360
	-1   0    0    1   
$EndComp
Connection ~ 6880 2730
$Comp
L Custom_Library:COM_Port_Settings DOC?
U 1 1 5BF874C4
P 8550 4500
F 0 "DOC?" H 8550 4900 60  0001 C CNN
F 1 "COM_Port_Settings" H 8550 5000 60  0001 C CNN
F 2 "" H 8550 5000 60  0001 C CNN
F 3 "" H 8550 5000 60  0001 C CNN
F 4 "115200 bps" H 9300 4650 60  0000 R CNN "Baud_Rate"
F 5 "8 bit" H 9300 4550 60  0000 R CNN "Data_Length"
F 6 "None" H 9300 4450 60  0000 R CNN "Parity"
F 7 "1" H 9300 4350 60  0000 R CNN "Stop_Bits"
F 8 "None" H 9300 4250 60  0000 R CNN "Flow_Control"
	1    8550 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 2730 6880 2730
$Comp
L Custom_Library:R_Custom R?
U 1 1 5C04BC29
P 5480 2730
F 0 "R?" V 5860 2730 50  0000 C CNN
F 1 "27" V 5480 2730 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 5480 2730 50  0001 C CNN
F 3 "" H 5480 2730 50  0001 C CNN
F 4 "0402" V 5777 2730 50  0000 C CNN "display_footprint"
F 5 "1%" V 5686 2730 50  0000 C CNN "Tolerance"
F 6 "1/16W" V 5595 2730 50  0000 C CNN "Wattage"
F 7 "" H 5780 3130 60  0001 C CNN "Digi-Key PN"
	1    5480 2730
	0    1    1    0   
$EndComp
NoConn ~ 2770 2930
$Comp
L power:GND #PWR?
U 1 1 5E9AF91E
P 6050 3210
F 0 "#PWR?" H 6050 2960 50  0001 C CNN
F 1 "GND" H 6050 3060 50  0000 C CNN
F 2 "" H 6050 3210 50  0001 C CNN
F 3 "" H 6050 3210 50  0001 C CNN
	1    6050 3210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9AFDC5
P 6880 3210
F 0 "#PWR?" H 6880 2960 50  0001 C CNN
F 1 "GND" H 6880 3060 50  0000 C CNN
F 2 "" H 6880 3210 50  0001 C CNN
F 3 "" H 6880 3210 50  0001 C CNN
	1    6880 3210
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B0267
P 9260 3030
F 0 "#PWR?" H 9260 2780 50  0001 C CNN
F 1 "GND" H 9260 2880 50  0000 C CNN
F 2 "" H 9260 3030 50  0001 C CNN
F 3 "" H 9260 3030 50  0001 C CNN
	1    9260 3030
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B06D9
P 9360 3510
F 0 "#PWR?" H 9360 3260 50  0001 C CNN
F 1 "GND" H 9360 3360 50  0000 C CNN
F 2 "" H 9360 3510 50  0001 C CNN
F 3 "" H 9360 3510 50  0001 C CNN
	1    9360 3510
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B1E03
P 3520 3130
F 0 "#PWR?" H 3520 2880 50  0001 C CNN
F 1 "GND" H 3520 2980 50  0000 C CNN
F 2 "" H 3520 3130 50  0001 C CNN
F 3 "" H 3520 3130 50  0001 C CNN
	1    3520 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B22D2
P 3320 3130
F 0 "#PWR?" H 3320 2880 50  0001 C CNN
F 1 "GND" H 3320 2980 50  0000 C CNN
F 2 "" H 3320 3130 50  0001 C CNN
F 3 "" H 3320 3130 50  0001 C CNN
	1    3320 3130
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B24F5
P 2750 4090
F 0 "#PWR?" H 2750 3840 50  0001 C CNN
F 1 "GND" H 2750 3940 50  0000 C CNN
F 2 "" H 2750 4090 50  0001 C CNN
F 3 "" H 2750 4090 50  0001 C CNN
	1    2750 4090
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B2C90
P 3440 4090
F 0 "#PWR?" H 3440 3840 50  0001 C CNN
F 1 "GND" H 3440 3940 50  0000 C CNN
F 2 "" H 3440 4090 50  0001 C CNN
F 3 "" H 3440 4090 50  0001 C CNN
	1    3440 4090
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E9B31F3
P 4120 4090
F 0 "#PWR?" H 4120 3840 50  0001 C CNN
F 1 "GND" H 4120 3940 50  0000 C CNN
F 2 "" H 4120 4090 50  0001 C CNN
F 3 "" H 4120 4090 50  0001 C CNN
	1    4120 4090
	1    0    0    -1  
$EndComp
Wire Wire Line
	1660 2430 2690 2430
Wire Wire Line
	2690 2350 2690 2430
Text GLabel 1660 2430 0    50   Output ~ 0
USB_UART_RX
$Comp
L power:GND #PWR?
U 1 1 5E9B1845
P 4780 3430
F 0 "#PWR?" H 4780 3180 50  0001 C CNN
F 1 "GND" H 4780 3280 50  0000 C CNN
F 2 "" H 4780 3430 50  0001 C CNN
F 3 "" H 4780 3430 50  0001 C CNN
	1    4780 3430
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5BB0046F
P 4780 3280
F 0 "C?" H 4805 3380 50  0000 L CNN
F 1 "0.1uF" H 4805 3180 50  0000 L CNN
F 2 "" H 4818 3130 50  0001 C CNN
F 3 "" H 4805 3380 50  0001 C CNN
F 4 "0402" H 4630 3380 50  0000 R CNN "display_footprint"
F 5 "50V" H 4630 3280 50  0000 R CNN "Voltage"
F 6 "X7R" H 4630 3180 50  0000 R CNN "Dielectric"
F 7 "" H 5205 3780 60  0001 C CNN "Digi-Key PN"
	1    4780 3280
	1    0    0    -1  
$EndComp
Wire Wire Line
	4780 2350 4780 2430
Wire Wire Line
	4070 2430 4780 2430
Connection ~ 4780 2430
Wire Wire Line
	4780 2430 4780 3130
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D7AE9
P 3320 2230
F 0 "#PWR?" H 3320 2080 50  0001 C CNN
F 1 "+3.3V" H 3260 2370 50  0000 C CNN
F 2 "" H 3320 2230 50  0001 C CNN
F 3 "" H 3320 2230 50  0001 C CNN
	1    3320 2230
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D8178
P 3520 2230
F 0 "#PWR?" H 3520 2080 50  0001 C CNN
F 1 "+3.3V" H 3580 2370 50  0000 C CNN
F 2 "" H 3520 2230 50  0001 C CNN
F 3 "" H 3520 2230 50  0001 C CNN
	1    3520 2230
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D84C5
P 4780 2350
F 0 "#PWR?" H 4780 2200 50  0001 C CNN
F 1 "+3.3V" H 4780 2490 50  0000 C CNN
F 2 "" H 4780 2350 50  0001 C CNN
F 3 "" H 4780 2350 50  0001 C CNN
	1    4780 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D889E
P 4120 3790
F 0 "#PWR?" H 4120 3640 50  0001 C CNN
F 1 "+3.3V" H 4120 3930 50  0000 C CNN
F 2 "" H 4120 3790 50  0001 C CNN
F 3 "" H 4120 3790 50  0001 C CNN
	1    4120 3790
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D8F2E
P 3440 3790
F 0 "#PWR?" H 3440 3640 50  0001 C CNN
F 1 "+3.3V" H 3440 3930 50  0000 C CNN
F 2 "" H 3440 3790 50  0001 C CNN
F 3 "" H 3440 3790 50  0001 C CNN
	1    3440 3790
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D92F1
P 2750 3790
F 0 "#PWR?" H 2750 3640 50  0001 C CNN
F 1 "+3.3V" H 2750 3930 50  0000 C CNN
F 2 "" H 2750 3790 50  0001 C CNN
F 3 "" H 2750 3790 50  0001 C CNN
	1    2750 3790
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4D97F4
P 1560 3340
F 0 "#PWR?" H 1560 3190 50  0001 C CNN
F 1 "+3.3V" H 1560 3480 50  0000 C CNN
F 2 "" H 1560 3340 50  0001 C CNN
F 3 "" H 1560 3340 50  0001 C CNN
	1    1560 3340
	1    0    0    -1  
$EndComp
Text GLabel 1660 2530 0    50   Input ~ 0
USB_UART_TX
Wire Wire Line
	1660 2530 2180 2530
Wire Wire Line
	2770 2430 2690 2430
Connection ~ 2690 2430
Wire Wire Line
	2180 2350 2180 2530
Connection ~ 2180 2530
Wire Wire Line
	2180 2530 2770 2530
$Comp
L power:+3.3V #PWR?
U 1 1 5F4E2E89
P 2690 2050
F 0 "#PWR?" H 2690 1900 50  0001 C CNN
F 1 "+3.3V" H 2690 2190 50  0000 C CNN
F 2 "" H 2690 2050 50  0001 C CNN
F 3 "" H 2690 2050 50  0001 C CNN
	1    2690 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F4E3164
P 2180 2050
F 0 "#PWR?" H 2180 1900 50  0001 C CNN
F 1 "+3.3V" H 2180 2190 50  0000 C CNN
F 2 "" H 2180 2050 50  0001 C CNN
F 3 "" H 2180 2050 50  0001 C CNN
	1    2180 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9360 3210 9360 3030
$Comp
L Power_Protection:TPD2EUSB30A U?
U 1 1 5F4EB3B1
P 8400 3160
F 0 "U?" H 8400 3410 50  0000 C CNN
F 1 "TPD2EUSB30A" H 8700 2860 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:Texas_DRT-3" H 7650 2860 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tpd2eusb30a.pdf" H 8400 3160 50  0001 C CNN
	1    8400 3160
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2630 7920 2630
Wire Wire Line
	6880 2730 8880 2730
Wire Wire Line
	8800 3160 8880 3160
Wire Wire Line
	8880 3160 8880 2730
Connection ~ 8880 2730
Wire Wire Line
	8880 2730 8960 2730
Wire Wire Line
	8000 3160 7920 3160
Wire Wire Line
	7920 3160 7920 2630
Connection ~ 7920 2630
Wire Wire Line
	7920 2630 8960 2630
$Comp
L power:GND #PWR?
U 1 1 5F4FD227
P 8400 3560
F 0 "#PWR?" H 8400 3310 50  0001 C CNN
F 1 "GND" H 8400 3410 50  0000 C CNN
F 2 "" H 8400 3560 50  0001 C CNN
F 3 "" H 8400 3560 50  0001 C CNN
	1    8400 3560
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F515196
P 2180 2200
AR Path="/5D6B2673/5F515196" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F515196" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F515196" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F515196" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F515196" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F515196" Ref="R?"  Part="1" 
F 0 "R?" H 2280 2350 50  0000 L CNN
F 1 "10k" V 2180 2130 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2180 2200 50  0001 C CNN
F 3 "" H 2180 2200 50  0001 C CNN
F 4 "0402" H 2280 2270 50  0000 L CNN "display_footprint"
F 5 "1%" H 2280 2170 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2280 2070 50  0000 L CNN "Wattage"
F 7 "" H 2480 2600 60  0001 C CNN "Digi-Key PN"
	1    2180 2200
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F515B7E
P 2690 2200
AR Path="/5D6B2673/5F515B7E" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F515B7E" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F515B7E" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F515B7E" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F515B7E" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F515B7E" Ref="R?"  Part="1" 
F 0 "R?" H 2790 2350 50  0000 L CNN
F 1 "10k" V 2690 2130 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 2690 2200 50  0001 C CNN
F 3 "" H 2690 2200 50  0001 C CNN
F 4 "0402" H 2790 2270 50  0000 L CNN "display_footprint"
F 5 "1%" H 2790 2170 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2790 2070 50  0000 L CNN "Wattage"
F 7 "" H 2990 2600 60  0001 C CNN "Digi-Key PN"
	1    2690 2200
	-1   0    0    -1  
$EndComp
Text Notes 3710 4450 0    50   ~ 0
VCC
Text Notes 2640 4450 0    50   ~ 0
VCCIO
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F529315
P 4120 3940
AR Path="/5CB7718D/5F529315" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F529315" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F529315" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F529315" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F529315" Ref="C?"  Part="1" 
AR Path="/5E697934/5F529315" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F529315" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5F529315" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5F529315" Ref="C?"  Part="1" 
AR Path="/5E939D31/5F529315" Ref="C?"  Part="1" 
AR Path="/5E939F76/5F529315" Ref="C?"  Part="1" 
AR Path="/5F582AA0/5F529315" Ref="C?"  Part="1" 
F 0 "C?" H 4145 4040 50  0000 L CNN
F 1 "10uF" H 4145 3840 50  0000 L CNN
F 2 "" H 4158 3790 50  0001 C CNN
F 3 "" H 4145 4040 50  0001 C CNN
F 4 "0402" H 3970 4040 50  0000 R CNN "display_footprint"
F 5 "10V" H 3970 3940 50  0000 R CNN "Voltage"
F 6 "X5R" H 3970 3840 50  0000 R CNN "Dielectric"
F 7 "" H 4120 3940 50  0001 C CNN "Digi-Key PN"
	1    4120 3940
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F540979
P 3590 6320
AR Path="/5E939D51/5F540979" Ref="C?"  Part="1" 
AR Path="/5E939F76/5F540979" Ref="C?"  Part="1" 
AR Path="/5F582AA0/5F540979" Ref="C?"  Part="1" 
F 0 "C?" H 3615 6420 50  0000 L CNN
F 1 "0.1uF" H 3615 6220 50  0000 L CNN
F 2 "" H 3628 6170 50  0001 C CNN
F 3 "" H 3615 6420 50  0001 C CNN
F 4 "0402" H 3440 6420 50  0000 R CNN "display_footprint"
F 5 "50V" H 3440 6320 50  0000 R CNN "Voltage"
F 6 "X7R" H 3440 6220 50  0000 R CNN "Dielectric"
F 7 "" H -320 -560 50  0001 C CNN "Digi-Key PN"
	1    3590 6320
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F54097F
P 2360 6350
AR Path="/5E939D51/5F54097F" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F54097F" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F54097F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2360 6100 50  0001 C CNN
F 1 "GND" H 2360 6200 50  0000 C CNN
F 2 "" H 2360 6350 50  0000 C CNN
F 3 "" H 2360 6350 50  0000 C CNN
	1    2360 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F540985
P 2360 5150
AR Path="/5E939D51/5F540985" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F540985" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F540985" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2360 5000 50  0001 C CNN
F 1 "+3.3V" H 2360 5290 50  0000 C CNN
F 2 "" H 2360 5150 50  0000 C CNN
F 3 "" H 2360 5150 50  0000 C CNN
	1    2360 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F54098B
P 1560 6400
AR Path="/5E939D51/5F54098B" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F54098B" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F54098B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1560 6150 50  0001 C CNN
F 1 "GND" H 1560 6250 50  0000 C CNN
F 2 "" H 1560 6400 50  0000 C CNN
F 3 "" H 1560 6400 50  0000 C CNN
	1    1560 6400
	1    0    0    -1  
$EndComp
Text GLabel 3700 5500 2    50   Output ~ 0
POS5_USB_PGOOD
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F540996
P 3600 5210
AR Path="/5E939D51/5F540996" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F540996" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F540996" Ref="R?"  Part="1" 
F 0 "R?" H 3540 5210 50  0000 R CNN
F 1 "10k" V 3600 5210 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3600 5210 50  0001 C CNN
F 3 "" H 3600 5210 50  0001 C CNN
F 4 "0402" H 3670 5290 50  0000 L CNN "display_footprint"
F 5 "1%" H 3670 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 3670 5140 50  0000 L CNN "Wattage"
F 7 "" H -490 -380 50  0001 C CNN "Digi-Key PN"
	1    3600 5210
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F54099C
P 3600 5060
AR Path="/5E939D51/5F54099C" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F54099C" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F54099C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3600 4910 50  0001 C CNN
F 1 "+3.3V" H 3600 5200 50  0000 C CNN
F 2 "" H 3600 5060 50  0000 C CNN
F 3 "" H 3600 5060 50  0000 C CNN
	1    3600 5060
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5500 3000 6000
Wire Wire Line
	1560 5900 1560 6000
Connection ~ 1560 6000
Wire Wire Line
	1560 5400 1560 5500
Connection ~ 1560 5500
Wire Wire Line
	3600 5360 3600 5500
Connection ~ 3600 5500
Connection ~ 3000 5500
Wire Wire Line
	1560 6000 1560 6100
Wire Wire Line
	1560 5500 1560 5600
Wire Wire Line
	3600 5500 3700 5500
Wire Wire Line
	3000 5500 3600 5500
Wire Wire Line
	2910 5500 3000 5500
Wire Wire Line
	2910 6000 3000 6000
Wire Wire Line
	1560 5500 1810 5500
Wire Wire Line
	1560 6000 1810 6000
$Comp
L Custom_Library:TLV6700 U?
U 1 1 5F5409B3
P 2360 5750
AR Path="/5E939D51/5F5409B3" Ref="U?"  Part="1" 
AR Path="/5E939F76/5F5409B3" Ref="U?"  Part="1" 
AR Path="/5F582AA0/5F5409B3" Ref="U?"  Part="1" 
F 0 "U?" H 2660 5250 50  0000 C CNN
F 1 "TLV6700" H 2360 5750 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2360 6350 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tlv6700.pdf" H 2360 5750 60  0001 C CNN
F 4 "296-51696-1-ND" H 2360 5750 50  0001 C CNN "Digi-Key PN"
	1    2360 5750
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F5409BD
P 1560 6250
AR Path="/5E939D51/5F5409BD" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F5409BD" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F5409BD" Ref="R?"  Part="1" 
F 0 "R?" H 1630 6380 50  0000 L CNN
F 1 "40.2k" V 1560 6250 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1560 6250 50  0001 C CNN
F 3 "" H 1560 6250 50  0001 C CNN
F 4 "0402" H 1630 6300 50  0000 L CNN "display_footprint"
F 5 "1%" H 1630 6210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 1630 6120 50  0000 L CNN "Wattage"
	1    1560 6250
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F5409C7
P 1560 5750
AR Path="/5E939D51/5F5409C7" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F5409C7" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F5409C7" Ref="R?"  Part="1" 
F 0 "R?" H 1630 5880 50  0000 L CNN
F 1 "6.04k" V 1560 5750 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1560 5750 50  0001 C CNN
F 3 "" H 1560 5750 50  0001 C CNN
F 4 "0402" H 1630 5800 50  0000 L CNN "display_footprint"
F 5 "1%" H 1630 5710 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 1630 5620 50  0000 L CNN "Wattage"
	1    1560 5750
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F5409D1
P 1560 5250
AR Path="/5E939D51/5F5409D1" Ref="R?"  Part="1" 
AR Path="/5E939F76/5F5409D1" Ref="R?"  Part="1" 
AR Path="/5F582AA0/5F5409D1" Ref="R?"  Part="1" 
F 0 "R?" H 1630 5380 50  0000 L CNN
F 1 "487k" V 1560 5250 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 1560 5250 50  0001 C CNN
F 3 "" H 1560 5250 50  0001 C CNN
F 4 "0402" H 1630 5300 50  0000 L CNN "display_footprint"
F 5 "1%" H 1630 5210 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 1630 5120 50  0000 L CNN "Wattage"
	1    1560 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F5409DD
P 3590 6170
AR Path="/5E939D51/5F5409DD" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F5409DD" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F5409DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3590 6020 50  0001 C CNN
F 1 "+3.3V" H 3590 6310 50  0000 C CNN
F 2 "" H 3590 6170 50  0001 C CNN
F 3 "" H 3590 6170 50  0001 C CNN
	1    3590 6170
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F5409E3
P 3590 6470
AR Path="/5E939D51/5F5409E3" Ref="#PWR?"  Part="1" 
AR Path="/5E939F76/5F5409E3" Ref="#PWR?"  Part="1" 
AR Path="/5F582AA0/5F5409E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3590 6220 50  0001 C CNN
F 1 "GND" H 3590 6320 50  0000 C CNN
F 2 "" H 3590 6470 50  0001 C CNN
F 3 "" H 3590 6470 50  0001 C CNN
	1    3590 6470
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5F542D0A
P 1560 5100
F 0 "#PWR?" H 1560 4950 50  0001 C CNN
F 1 "+5V_USB" H 1560 5240 50  0000 C CNN
F 2 "" H 1560 5100 50  0001 C CNN
F 3 "" H 1560 5100 50  0001 C CNN
	1    1560 5100
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+5V_USB #PWR?
U 1 1 5F59EE0F
P 8960 2430
F 0 "#PWR?" H 8960 2280 50  0001 C CNN
F 1 "+5V_USB" V 8960 2570 50  0000 L CNN
F 2 "" H 8960 2430 50  0001 C CNN
F 3 "" H 8960 2430 50  0001 C CNN
	1    8960 2430
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
