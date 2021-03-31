EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 17 34
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
L Connector:Micro_SD_Card_Det_Hirose_DM3AT J?
U 1 1 5F5A18D2
P 7310 3810
F 0 "J?" H 7260 4640 50  0000 C CNN
F 1 "Micro_SD_Card_Det_Hirose_DM3AT" H 7260 4540 50  0000 C CNN
F 2 "Connectors_Card:Hirose_DM3AT-SF-PEJM5" H 9360 4510 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 7310 3910 50  0001 C CNN
F 4 "HR1964CT-ND" H 7310 3810 50  0001 C CNN "Digi-Key PN"
F 5 "SD" H 7310 3000 50  0000 C CNN "Configuration"
	1    7310 3810
	1    0    0    -1  
$EndComp
Text GLabel 3690 3510 0    40   Input ~ 0
~SD_SPI_CS
Text GLabel 3690 3610 0    50   Input ~ 0
SD_SPI_MOSI
Text GLabel 3690 3810 0    50   Input ~ 0
SD_SPI_SCK
Text GLabel 3690 4010 0    50   Output ~ 0
SD_SPI_MISO
Text GLabel 3690 4210 0    40   Output ~ 0
~SD_CARD_DET_R
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6F5E30
P 5980 3610
AR Path="/5D6B2673/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6F5E30" Ref="R?"  Part="1" 
F 0 "R?" V 6020 3490 50  0000 R CNN
F 1 "10" V 5980 3560 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5980 3610 50  0001 C CNN
F 3 "" H 5980 3610 50  0001 C CNN
F 4 "0402" H 6080 3680 50  0001 L CNN "display_footprint"
F 5 "1%" H 6080 3580 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 6080 3480 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 6280 4010 60  0001 C CNN "Digi-Key PN"
	1    5980 3610
	0    1    -1   0   
$EndComp
Wire Wire Line
	6130 3610 6410 3610
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6FCF2A
P 4060 3810
AR Path="/5D6B2673/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6FCF2A" Ref="R?"  Part="1" 
F 0 "R?" V 4100 3690 50  0000 R CNN
F 1 "10" V 4060 3760 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4060 3810 50  0001 C CNN
F 3 "" H 4060 3810 50  0001 C CNN
F 4 "0402" H 4160 3880 50  0001 L CNN "display_footprint"
F 5 "1%" H 4160 3780 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4160 3680 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 4360 4210 60  0001 C CNN "Digi-Key PN"
	1    4060 3810
	0    1    -1   0   
$EndComp
Wire Wire Line
	3690 3810 3910 3810
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6FFFE3
P 5980 3810
AR Path="/5D6B2673/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6FFFE3" Ref="R?"  Part="1" 
F 0 "R?" V 6020 3690 50  0000 R CNN
F 1 "10" V 5980 3760 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5980 3810 50  0001 C CNN
F 3 "" H 5980 3810 50  0001 C CNN
F 4 "0402" H 6080 3880 50  0001 L CNN "display_footprint"
F 5 "1%" H 6080 3780 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 6080 3680 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 6280 4210 60  0001 C CNN "Digi-Key PN"
	1    5980 3810
	0    1    -1   0   
$EndComp
Wire Wire Line
	6130 3810 6410 3810
$Comp
L power:GND #PWR?
U 1 1 5F70D104
P 6410 3910
AR Path="/5F5829A6/5F70D104" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F70D104" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6410 3660 50  0001 C CNN
F 1 "GND" V 6410 3720 50  0000 C CNN
F 2 "" H 6410 3910 50  0001 C CNN
F 3 "" H 6410 3910 50  0001 C CNN
	1    6410 3910
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F70FAA0
P 6410 3710
AR Path="/5CB7718D/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F70FAA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6410 3560 50  0001 C CNN
F 1 "+3.3V" V 6410 3940 50  0000 C CNN
F 2 "" H 6410 3710 50  0001 C CNN
F 3 "" H 6410 3710 50  0001 C CNN
	1    6410 3710
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F713DCE
P 7620 2120
AR Path="/5BB27BA3/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5BB27B84/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5BB27B24/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5BB27BB5/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5BB27BF7/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5C1DE17A/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5C1E3A0B/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5C1E3A08/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5D779AE1/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5CB7718D/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5E0F263A/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5F581B64/5F713DCE" Ref="C?"  Part="1" 
AR Path="/5F582E11/5F713DCE" Ref="C?"  Part="1" 
F 0 "C?" H 7645 2220 50  0000 L CNN
F 1 "0.1uF" H 7645 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7658 1970 50  0001 C CNN
F 3 "" H 7645 2220 50  0001 C CNN
F 4 "0402" H 7470 2220 50  0000 R CNN "display_footprint"
F 5 "50V" H 7470 2120 50  0000 R CNN "Voltage"
F 6 "X7R" H 7470 2020 50  0000 R CNN "Dielectric"
F 7 "SD" H 7470 2300 50  0000 R CNN "Configuration"
F 8 "490-10701-1-ND" H 7620 2120 50  0001 C CNN "Digi-Key PN"
	1    7620 2120
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F713DD4
P 7360 2420
AR Path="/5CB7718D/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F713DD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7360 2170 50  0001 C CNN
F 1 "GND" H 7360 2270 50  0000 C CNN
F 2 "" H 7360 2420 50  0001 C CNN
F 3 "" H 7360 2420 50  0001 C CNN
	1    7360 2420
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F7150AB
P 7080 2120
AR Path="/5CB7718D/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5E697934/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5EAE3021/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5F581B64/5F7150AB" Ref="C?"  Part="1" 
AR Path="/5F582E11/5F7150AB" Ref="C?"  Part="1" 
F 0 "C?" H 7105 2220 50  0000 L CNN
F 1 "10uF" H 7105 2020 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7118 1970 50  0001 C CNN
F 3 "" H 7105 2220 50  0001 C CNN
F 4 "0402" H 6930 2220 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6930 2120 50  0000 R CNN "Voltage"
F 6 "X5R" H 6930 2020 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 7080 2120 50  0001 C CNN "Digi-Key PN"
F 8 "SD" H 6930 2300 50  0000 R CNN "Configuration"
	1    7080 2120
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F715544
P 7360 1870
AR Path="/5CB7718D/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F715544" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7360 1720 50  0001 C CNN
F 1 "+3.3V" H 7360 2010 50  0000 C CNN
F 2 "" H 7360 1870 50  0001 C CNN
F 3 "" H 7360 1870 50  0001 C CNN
	1    7360 1870
	1    0    0    -1  
$EndComp
Wire Wire Line
	7360 1870 7080 1870
Wire Wire Line
	7080 1870 7080 1970
Wire Wire Line
	7360 1870 7620 1870
Wire Wire Line
	7620 1870 7620 1970
Connection ~ 7360 1870
Wire Wire Line
	7360 2420 7360 2360
Wire Wire Line
	7080 2270 7080 2360
Wire Wire Line
	7080 2360 7360 2360
Wire Wire Line
	7620 2270 7620 2360
Wire Wire Line
	7620 2360 7360 2360
Connection ~ 7360 2360
NoConn ~ 6410 4110
NoConn ~ 6410 3410
$Comp
L power:GND #PWR?
U 1 1 5F725696
P 6410 4310
AR Path="/5F5829A6/5F725696" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F725696" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6410 4060 50  0001 C CNN
F 1 "GND" V 6410 4120 50  0000 C CNN
F 2 "" H 6410 4310 50  0001 C CNN
F 3 "" H 6410 4310 50  0001 C CNN
	1    6410 4310
	0    1    -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F726E32
P 8230 4540
AR Path="/5F582AA0/5F726E32" Ref="L?"  Part="1" 
AR Path="/5F582E11/5F726E32" Ref="L?"  Part="1" 
F 0 "L?" H 8070 4480 50  0000 R CNN
F 1 "600R 0.5A" H 8070 4580 50  0000 R CNN
F 2 "Inductors_SMD:L_0402" V 8160 4540 50  0001 C CNN
F 3 "~" H 8230 4540 50  0001 C CNN
F 4 "490-5441-1-ND" H -1300 780 50  0001 C CNN "Digi-Key PN"
F 5 "SD" H 8070 4670 50  0000 R CNN "Configuration"
	1    8230 4540
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F726E38
P 8230 4690
AR Path="/5F582AA0/5F726E38" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F726E38" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8230 4440 50  0001 C CNN
F 1 "GND" H 8230 4540 50  0000 C CNN
F 2 "" H 8230 4690 50  0001 C CNN
F 3 "" H 8230 4690 50  0001 C CNN
	1    8230 4690
	1    0    0    -1  
$EndComp
Wire Wire Line
	8230 4390 8230 4310
Wire Wire Line
	8230 4310 8110 4310
$Comp
L power:+3.3V #PWR?
U 1 1 601C2224
P 2220 5660
AR Path="/5F582E50/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2224" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2220 5510 50  0001 C CNN
F 1 "+3.3V" H 2220 5800 50  0000 C CNN
F 2 "" H 2220 5660 50  0001 C CNN
F 3 "" H 2220 5660 50  0001 C CNN
	1    2220 5660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C222A
P 2220 5960
AR Path="/5F582E50/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C222A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2220 5710 50  0001 C CNN
F 1 "GND" H 2220 5810 50  0000 C CNN
F 2 "" H 2220 5960 50  0001 C CNN
F 3 "" H 2220 5960 50  0001 C CNN
	1    2220 5960
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C2230
P 2330 6400
AR Path="/5F582E50/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2230" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2330 6250 50  0001 C CNN
F 1 "+3.3V" H 2330 6540 50  0000 C CNN
F 2 "" H 2330 6400 50  0001 C CNN
F 3 "" H 2330 6400 50  0001 C CNN
	1    2330 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C2236
P 2330 6600
AR Path="/5F582E50/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2236" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2330 6350 50  0001 C CNN
F 1 "GND" H 2330 6450 50  0000 C CNN
F 2 "" H 2330 6600 50  0001 C CNN
F 3 "" H 2330 6600 50  0001 C CNN
	1    2330 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2580 6500 2900 6500
Wire Wire Line
	2900 6500 2900 6380
$Comp
L power:+3.3V #PWR?
U 1 1 601C223F
P 2900 5780
AR Path="/5CB7A8BC/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C223F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2900 5630 50  0001 C CNN
F 1 "+3.3V" H 2900 5920 50  0000 C CNN
F 2 "" H 2900 5780 50  0001 C CNN
F 3 "" H 2900 5780 50  0001 C CNN
	1    2900 5780
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_NOT U?
U 1 1 601C2246
P 2330 6500
AR Path="/5F582E44/601C2246" Ref="U?"  Part="1" 
AR Path="/5F582E11/601C2246" Ref="U?"  Part="1" 
F 0 "U?" H 2390 6650 50  0000 L CNN
F 1 "74LVC1G97" H 2390 6350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2380 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 2380 6500 50  0001 C CNN
F 4 "SD" H 2550 6270 50  0000 C CNN "Configuration"
F 5 "1727-1772-1-ND" H 2330 6500 50  0001 C CNN "Digi-Key PN"
	1    2330 6500
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601C2259
P 2900 5930
AR Path="/5BAAE1F3/601C2259" Ref="R?"  Part="1" 
AR Path="/5BAAE1DC/601C2259" Ref="R?"  Part="1" 
AR Path="/5BAAE16C/601C2259" Ref="R?"  Part="1" 
AR Path="/5BB844FD/601C2259" Ref="R?"  Part="1" 
AR Path="/5BF346B3/601C2259" Ref="R?"  Part="1" 
AR Path="/5CAD2D97/601C2259" Ref="R?"  Part="1" 
AR Path="/5CB7A8BC/601C2259" Ref="R?"  Part="1" 
AR Path="/5CB7A8C3/601C2259" Ref="R?"  Part="1" 
AR Path="/5E93CC4E/601C2259" Ref="R?"  Part="1" 
AR Path="/5F582E4A/601C2259" Ref="R?"  Part="1" 
AR Path="/5F582E44/601C2259" Ref="R?"  Part="1" 
AR Path="/5F582E11/601C2259" Ref="R?"  Part="1" 
F 0 "R?" H 2840 5930 50  0000 R CNN
F 1 "1k" V 2900 5930 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2900 5930 50  0001 C CNN
F 3 "" H 2900 5930 50  0001 C CNN
F 4 "0402" H 2970 6010 50  0000 L CNN "display_footprint"
F 5 "1%" H 2970 5930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 2970 5860 50  0000 L CNN "Wattage"
F 7 "RMCF0402FT1K00CT-ND" H 3200 6330 60  0001 C CNN "Digi-Key PN"
F 8 "SD" H 3050 6080 50  0000 C CNN "Configuration"
	1    2900 5930
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 601C2264
P 2220 5810
AR Path="/5BAAE1F3/601C2264" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/601C2264" Ref="C?"  Part="1" 
AR Path="/5BE48F98/601C2264" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/601C2264" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/601C2264" Ref="C?"  Part="1" 
AR Path="/5E6AF016/601C2264" Ref="C?"  Part="1" 
AR Path="/5EAE4AE4/601C2264" Ref="C?"  Part="1" 
AR Path="/5F582E50/601C2264" Ref="C?"  Part="1" 
AR Path="/5F5829C2/601C2264" Ref="C?"  Part="1" 
AR Path="/5F582E44/601C2264" Ref="C?"  Part="1" 
AR Path="/5F582E11/601C2264" Ref="C?"  Part="1" 
F 0 "C?" H 2245 5910 50  0000 L CNN
F 1 "0.1uF" H 2245 5710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2258 5660 50  0001 C CNN
F 3 "" H 2245 5910 50  0001 C CNN
F 4 "490-10701-1-ND" H 2645 6310 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 2070 5910 50  0000 R CNN "display_footprint"
F 6 "50V" H 2070 5810 50  0000 R CNN "Voltage"
F 7 "X7R" H 2070 5710 50  0000 R CNN "Dielectric"
F 8 "SD" H 2440 5810 50  0000 C CNN "Configuration"
	1    2220 5810
	-1   0    0    -1  
$EndComp
Text GLabel 2030 6500 0    40   Input ~ 0
~SD_SPI_CS
$Comp
L Custom_Library:R_Custom R?
U 1 1 605F9DC5
P 5120 3160
AR Path="/5D6B2673/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5D77A516/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5E939CFF/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5F581B41/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5F582E44/605F9DC5" Ref="R?"  Part="1" 
AR Path="/5F582E11/605F9DC5" Ref="R?"  Part="1" 
F 0 "R?" V 5030 3160 50  0000 C CNN
F 1 "10k" V 5120 3090 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5120 3160 50  0001 C CNN
F 3 "" H 5120 3160 50  0001 C CNN
F 4 "0402" H 5220 3230 50  0001 L CNN "display_footprint"
F 5 "1%" H 5220 3130 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5220 3030 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5120 3160 50  0001 C CNN "Digi-Key PN"
	1    5120 3160
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 605F9DCE
P 4870 3160
AR Path="/5D6B2673/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5D77A516/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5E939CFF/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5F581B41/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5F582E44/605F9DCE" Ref="R?"  Part="1" 
AR Path="/5F582E11/605F9DCE" Ref="R?"  Part="1" 
F 0 "R?" V 4780 3160 50  0000 C CNN
F 1 "10k" V 4870 3090 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4870 3160 50  0001 C CNN
F 3 "" H 4870 3160 50  0001 C CNN
F 4 "0402" H 4970 3230 50  0001 L CNN "display_footprint"
F 5 "1%" H 4970 3130 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4970 3030 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4870 3160 50  0001 C CNN "Digi-Key PN"
	1    4870 3160
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605F9DD4
P 4870 3010
F 0 "#PWR?" H 4870 2860 50  0001 C CNN
F 1 "+3.3V" H 4870 3150 50  0000 C CNN
F 2 "" H 4870 3010 50  0001 C CNN
F 3 "" H 4870 3010 50  0001 C CNN
	1    4870 3010
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605F9DDA
P 5120 3010
F 0 "#PWR?" H 5120 2860 50  0001 C CNN
F 1 "+3.3V" H 5120 3150 50  0000 C CNN
F 2 "" H 5120 3010 50  0001 C CNN
F 3 "" H 5120 3010 50  0001 C CNN
	1    5120 3010
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605F9DE0
P 5370 3010
F 0 "#PWR?" H 5370 2860 50  0001 C CNN
F 1 "+3.3V" H 5370 3150 50  0000 C CNN
F 2 "" H 5370 3010 50  0001 C CNN
F 3 "" H 5370 3010 50  0001 C CNN
	1    5370 3010
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605F9DE6
P 5620 3010
F 0 "#PWR?" H 5620 2860 50  0001 C CNN
F 1 "+3.3V" H 5620 3150 50  0000 C CNN
F 2 "" H 5620 3010 50  0001 C CNN
F 3 "" H 5620 3010 50  0001 C CNN
	1    5620 3010
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 605F9DEF
P 5370 3160
AR Path="/5D6B2673/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5D77A516/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5E939CFF/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5F581B41/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5F582E44/605F9DEF" Ref="R?"  Part="1" 
AR Path="/5F582E11/605F9DEF" Ref="R?"  Part="1" 
F 0 "R?" V 5280 3160 50  0000 C CNN
F 1 "10k" V 5370 3090 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5370 3160 50  0001 C CNN
F 3 "" H 5370 3160 50  0001 C CNN
F 4 "0402" H 5470 3230 50  0001 L CNN "display_footprint"
F 5 "1%" H 5470 3130 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5470 3030 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5370 3160 50  0001 C CNN "Digi-Key PN"
	1    5370 3160
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 605F9DF8
P 5620 3160
AR Path="/5D6B2673/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5D77A516/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5E939CFF/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5F581B41/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5F582E44/605F9DF8" Ref="R?"  Part="1" 
AR Path="/5F582E11/605F9DF8" Ref="R?"  Part="1" 
F 0 "R?" V 5530 3160 50  0000 C CNN
F 1 "10k" V 5620 3090 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5620 3160 50  0001 C CNN
F 3 "" H 5620 3160 50  0001 C CNN
F 4 "0402" H 5720 3230 50  0001 L CNN "display_footprint"
F 5 "1%" H 5720 3130 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5720 3030 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5620 3160 50  0001 C CNN "Digi-Key PN"
	1    5620 3160
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 605FB262
P 4620 3160
AR Path="/5D6B2673/605FB262" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/605FB262" Ref="R?"  Part="1" 
AR Path="/5D77A516/605FB262" Ref="R?"  Part="1" 
AR Path="/5E939CFF/605FB262" Ref="R?"  Part="1" 
AR Path="/5F581B41/605FB262" Ref="R?"  Part="1" 
AR Path="/5F582E44/605FB262" Ref="R?"  Part="1" 
AR Path="/5F582E11/605FB262" Ref="R?"  Part="1" 
F 0 "R?" V 4530 3160 50  0000 C CNN
F 1 "10k" V 4620 3090 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4620 3160 50  0001 C CNN
F 3 "" H 4620 3160 50  0001 C CNN
F 4 "0402" H 4720 3230 50  0001 L CNN "display_footprint"
F 5 "1%" H 4720 3130 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 4720 3030 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 4620 3160 50  0001 C CNN "Digi-Key PN"
	1    4620 3160
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 605FB538
P 4620 3010
F 0 "#PWR?" H 4620 2860 50  0001 C CNN
F 1 "+3.3V" H 4620 3150 50  0000 C CNN
F 2 "" H 4620 3010 50  0001 C CNN
F 3 "" H 4620 3010 50  0001 C CNN
	1    4620 3010
	1    0    0    -1  
$EndComp
Wire Wire Line
	5620 3310 5620 4210
Wire Wire Line
	5370 3310 5370 4010
Wire Wire Line
	5370 4010 6410 4010
Wire Wire Line
	5120 3310 5120 3810
Wire Wire Line
	5120 3810 5830 3810
Wire Wire Line
	4870 3310 4870 3610
Wire Wire Line
	4870 3610 5830 3610
Wire Wire Line
	4620 3310 4620 3510
Wire Wire Line
	4620 3510 6410 3510
Wire Wire Line
	3690 3510 4620 3510
Connection ~ 4620 3510
Wire Wire Line
	3690 3610 4720 3610
Connection ~ 4870 3610
Wire Wire Line
	4210 3810 4820 3810
Connection ~ 5120 3810
Wire Wire Line
	3690 4010 4920 4010
Connection ~ 5370 4010
Wire Wire Line
	3690 4210 5020 4210
Connection ~ 5620 4210
$Comp
L Custom_Library:R_Custom R?
U 1 1 60641EF8
P 5980 4210
AR Path="/5D6B2673/60641EF8" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/60641EF8" Ref="R?"  Part="1" 
AR Path="/5D77A516/60641EF8" Ref="R?"  Part="1" 
AR Path="/5E939CFF/60641EF8" Ref="R?"  Part="1" 
AR Path="/5F581B41/60641EF8" Ref="R?"  Part="1" 
AR Path="/5F582E11/60641EF8" Ref="R?"  Part="1" 
F 0 "R?" V 6020 4090 50  0000 R CNN
F 1 "10" V 5980 4160 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5980 4210 50  0001 C CNN
F 3 "" H 5980 4210 50  0001 C CNN
F 4 "0402" H 6080 4280 50  0001 L CNN "display_footprint"
F 5 "1%" H 6080 4180 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 6080 4080 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10R0CT-ND" H 6280 4610 60  0001 C CNN "Digi-Key PN"
	1    5980 4210
	0    1    -1   0   
$EndComp
Wire Wire Line
	6130 4210 6410 4210
Wire Wire Line
	5830 4210 5620 4210
$Comp
L power:+3.3V #PWR?
U 1 1 60648DE6
P 4510 5660
AR Path="/5F582E50/60648DE6" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/60648DE6" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/60648DE6" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/60648DE6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4510 5510 50  0001 C CNN
F 1 "+3.3V" H 4510 5800 50  0000 C CNN
F 2 "" H 4510 5660 50  0001 C CNN
F 3 "" H 4510 5660 50  0001 C CNN
	1    4510 5660
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606490F0
P 4510 5960
AR Path="/5F582E50/606490F0" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/606490F0" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/606490F0" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/606490F0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4510 5710 50  0001 C CNN
F 1 "GND" H 4510 5810 50  0000 C CNN
F 2 "" H 4510 5960 50  0001 C CNN
F 3 "" H 4510 5960 50  0001 C CNN
	1    4510 5960
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 606490FA
P 4620 6400
AR Path="/5F582E50/606490FA" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/606490FA" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/606490FA" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/606490FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4620 6250 50  0001 C CNN
F 1 "+3.3V" H 4620 6540 50  0000 C CNN
F 2 "" H 4620 6400 50  0001 C CNN
F 3 "" H 4620 6400 50  0001 C CNN
	1    4620 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60649104
P 4620 6600
AR Path="/5F582E50/60649104" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/60649104" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/60649104" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/60649104" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4620 6350 50  0001 C CNN
F 1 "GND" H 4620 6450 50  0000 C CNN
F 2 "" H 4620 6600 50  0001 C CNN
F 3 "" H 4620 6600 50  0001 C CNN
	1    4620 6600
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60649145
P 4510 5810
AR Path="/5BAAE1F3/60649145" Ref="C?"  Part="1" 
AR Path="/5BAAE1CB/60649145" Ref="C?"  Part="1" 
AR Path="/5BE48F98/60649145" Ref="C?"  Part="1" 
AR Path="/5CAD2D97/60649145" Ref="C?"  Part="1" 
AR Path="/5CB7A8BC/60649145" Ref="C?"  Part="1" 
AR Path="/5E6AF016/60649145" Ref="C?"  Part="1" 
AR Path="/5EAE4AE4/60649145" Ref="C?"  Part="1" 
AR Path="/5F582E50/60649145" Ref="C?"  Part="1" 
AR Path="/5F5829C2/60649145" Ref="C?"  Part="1" 
AR Path="/5F582E44/60649145" Ref="C?"  Part="1" 
AR Path="/5F582E11/60649145" Ref="C?"  Part="1" 
F 0 "C?" H 4535 5910 50  0000 L CNN
F 1 "0.1uF" H 4535 5710 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4548 5660 50  0001 C CNN
F 3 "" H 4535 5910 50  0001 C CNN
F 4 "490-10701-1-ND" H 4935 6310 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 4360 5910 50  0000 R CNN "display_footprint"
F 6 "50V" H 4360 5810 50  0000 R CNN "Voltage"
F 7 "X7R" H 4360 5710 50  0000 R CNN "Dielectric"
F 8 "SD" H 4730 5810 50  0000 C CNN "Configuration"
	1    4510 5810
	-1   0    0    -1  
$EndComp
Text GLabel 3770 6500 0    40   Input ~ 0
~SD_CARD_DET_R
$Comp
L Custom_Library:74LVC1G97_Power_BUF U?
U 1 1 6064B7AF
P 4620 6500
F 0 "U?" H 4680 6650 50  0000 L CNN
F 1 "74LVC1G97" H 4680 6350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4670 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 4670 6500 50  0001 C CNN
F 4 "SD" H 4820 6270 50  0000 C CNN "Configuration"
F 5 "1727-1772-1-ND" H 4620 6500 50  0001 C CNN "Digi-Key PN"
	1    4620 6500
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 60650748
P 4090 6780
AR Path="/5CB7718D/60650748" Ref="C?"  Part="1" 
AR Path="/5E0DC082/60650748" Ref="C?"  Part="1" 
AR Path="/5E0F9110/60650748" Ref="C?"  Part="1" 
AR Path="/5A557C58/60650748" Ref="C?"  Part="1" 
AR Path="/5CB25152/60650748" Ref="C?"  Part="1" 
AR Path="/5E697934/60650748" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/60650748" Ref="C?"  Part="1" 
AR Path="/5EAE3021/60650748" Ref="C?"  Part="1" 
AR Path="/5EAE2D8A/60650748" Ref="C?"  Part="1" 
AR Path="/5F581B64/60650748" Ref="C?"  Part="1" 
AR Path="/5F582E11/60650748" Ref="C?"  Part="1" 
F 0 "C?" H 4115 6880 50  0000 L CNN
F 1 "10uF" H 4115 6680 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4128 6630 50  0001 C CNN
F 3 "" H 4115 6880 50  0001 C CNN
F 4 "0402" H 3940 6880 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3940 6780 50  0000 R CNN "Voltage"
F 6 "X5R" H 3940 6680 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 4090 6780 50  0001 C CNN "Digi-Key PN"
F 8 "SD" H 3940 6960 50  0000 R CNN "Configuration"
	1    4090 6780
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60653CAE
P 4090 6930
AR Path="/5F582E50/60653CAE" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/60653CAE" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/60653CAE" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/60653CAE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4090 6680 50  0001 C CNN
F 1 "GND" H 4090 6780 50  0000 C CNN
F 2 "" H 4090 6930 50  0001 C CNN
F 3 "" H 4090 6930 50  0001 C CNN
	1    4090 6930
	1    0    0    -1  
$EndComp
Wire Wire Line
	4320 6500 4090 6500
Wire Wire Line
	4090 6630 4090 6500
Connection ~ 4090 6500
Wire Wire Line
	4090 6500 3770 6500
$Comp
L Custom_Library:R_Custom R?
U 1 1 606573F3
P 5080 6270
AR Path="/5D6B2673/606573F3" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/606573F3" Ref="R?"  Part="1" 
AR Path="/5D77A516/606573F3" Ref="R?"  Part="1" 
AR Path="/5E939CFF/606573F3" Ref="R?"  Part="1" 
AR Path="/5F581B41/606573F3" Ref="R?"  Part="1" 
AR Path="/5F582E44/606573F3" Ref="R?"  Part="1" 
AR Path="/5F582E11/606573F3" Ref="R?"  Part="1" 
F 0 "R?" V 4990 6270 50  0000 C CNN
F 1 "10k" V 5080 6200 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5080 6270 50  0001 C CNN
F 3 "" H 5080 6270 50  0001 C CNN
F 4 "0402" H 5180 6340 50  0001 L CNN "display_footprint"
F 5 "1%" H 5180 6240 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 5180 6140 50  0001 L CNN "Wattage"
F 7 "RMCF0402FT10K0CT-ND" H 5080 6270 50  0001 C CNN "Digi-Key PN"
	1    5080 6270
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60657C81
P 5080 6120
AR Path="/5F582E50/60657C81" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/60657C81" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/60657C81" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/60657C81" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5080 5970 50  0001 C CNN
F 1 "+3.3V" H 5080 6260 50  0000 C CNN
F 2 "" H 5080 6120 50  0001 C CNN
F 3 "" H 5080 6120 50  0001 C CNN
	1    5080 6120
	1    0    0    -1  
$EndComp
Wire Wire Line
	5080 6420 5080 6500
Wire Wire Line
	5080 6500 4870 6500
Text GLabel 5160 6500 2    40   Output ~ 0
~SD_CARD_DET
Wire Wire Line
	5160 6500 5080 6500
Connection ~ 5080 6500
$Comp
L Power_Protection:SP0505BAJT D?
U 1 1 6068F030
P 4820 4560
AR Path="/5F583BFC/6068F030" Ref="D?"  Part="1" 
AR Path="/5F582E11/6068F030" Ref="D?"  Part="1" 
F 0 "D?" H 5120 4660 50  0000 L CNN
F 1 "SP0505BAJT" H 5120 4585 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6" H 5120 4510 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 4945 4685 50  0001 C CNN
F 4 "F3160CT-ND" H 4820 4560 50  0001 C CNN "Digi-Key PN"
F 5 "SD" H 5120 4510 50  0000 L CNN "Configuration"
	1    4820 4560
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6068F036
P 4820 4760
AR Path="/5F5829A6/6068F036" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/6068F036" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4820 4510 50  0001 C CNN
F 1 "GND" H 4820 4610 50  0000 C CNN
F 2 "" H 4820 4760 50  0001 C CNN
F 3 "" H 4820 4760 50  0001 C CNN
	1    4820 4760
	1    0    0    -1  
$EndComp
Wire Wire Line
	4620 4360 4620 3510
Wire Wire Line
	4720 4360 4720 3610
Connection ~ 4720 3610
Wire Wire Line
	4720 3610 4870 3610
Wire Wire Line
	4820 4360 4820 3810
Connection ~ 4820 3810
Wire Wire Line
	4820 3810 5120 3810
Wire Wire Line
	4920 4360 4920 4010
Connection ~ 4920 4010
Wire Wire Line
	4920 4010 5370 4010
Wire Wire Line
	5020 4360 5020 4210
Connection ~ 5020 4210
Wire Wire Line
	5020 4210 5620 4210
$Comp
L Device:LED D?
U 1 1 60744E20
P 2900 6230
AR Path="/5BB844FD/60744E20" Ref="D?"  Part="1" 
AR Path="/5BF346B3/60744E20" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/60744E20" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/60744E20" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/60744E20" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/60744E20" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/60744E20" Ref="D?"  Part="1" 
AR Path="/5F582E4A/60744E20" Ref="D?"  Part="1" 
AR Path="/5F582E11/60744E20" Ref="D?"  Part="1" 
F 0 "D?" V 2939 6113 50  0000 R CNN
F 1 "Green" V 2848 6113 50  0000 R CNN
F 2 "LEDs:LED_0402" H 2900 6230 50  0001 C CNN
F 3 "~" H 2900 6230 50  0001 C CNN
F 4 "1497-1219-1-ND" H -2260 -90 50  0001 C CNN "Digi-Key PN"
F 5 "SD" V 2770 6110 50  0000 R CNN "Configuration"
	1    2900 6230
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
