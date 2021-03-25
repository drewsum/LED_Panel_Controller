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
$Comp
L Power_Protection:PESD3V3L5UY D?
U 1 1 5F6E76CE
P 4870 4510
AR Path="/5F5829A6/5F6E76CE" Ref="D?"  Part="1" 
AR Path="/5F582E11/5F6E76CE" Ref="D?"  Part="1" 
F 0 "D?" H 4870 4610 50  0000 C CNN
F 1 "PESD3V3L5UY" V 4870 4060 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4870 4510 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4870 4510 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4870 4510 50  0001 C CNN "Digi-Key PN"
	1    4870 4510
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 3 1 5F6E76D5
P 5620 4510
AR Path="/5F5829A6/5F6E76D5" Ref="D?"  Part="3" 
AR Path="/5F582E11/5F6E76D5" Ref="D?"  Part="3" 
F 0 "D?" H 5620 4610 50  0000 C CNN
F 1 "PESD3V3L5UY" H 5620 4410 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5620 4510 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 5620 4510 50  0001 C CNN
F 4 "1727-3828-1-ND" H 5620 4510 50  0001 C CNN "Digi-Key PN"
	3    5620 4510
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 4 1 5F6E76DC
P 5370 4510
AR Path="/5F5829A6/5F6E76DC" Ref="D?"  Part="4" 
AR Path="/5F582E11/5F6E76DC" Ref="D?"  Part="4" 
F 0 "D?" H 5370 4610 50  0000 C CNN
F 1 "PESD3V3L5UY" H 5370 4410 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5370 4510 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 5370 4510 50  0001 C CNN
F 4 "1727-3828-1-ND" H 5370 4510 50  0001 C CNN "Digi-Key PN"
	4    5370 4510
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6E76E2
P 4870 4610
AR Path="/5F5829A6/5F6E76E2" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F6E76E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4870 4360 50  0001 C CNN
F 1 "GND" H 4870 4460 50  0000 C CNN
F 2 "" H 4870 4610 50  0001 C CNN
F 3 "" H 4870 4610 50  0001 C CNN
	1    4870 4610
	-1   0    0    -1  
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 5 1 5F6E76E9
P 5120 4510
AR Path="/5F5829A6/5F6E76E9" Ref="D?"  Part="5" 
AR Path="/5F582E11/5F6E76E9" Ref="D?"  Part="5" 
F 0 "D?" H 5120 4610 50  0000 C CNN
F 1 "PESD3V3L5UY" H 5120 4410 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5120 4510 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 5120 4510 50  0001 C CNN
F 4 "1727-3828-1-ND" H 5120 4510 50  0001 C CNN "Digi-Key PN"
	5    5120 4510
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 2 1 5F6E76F0
P 4620 4510
AR Path="/5F5829A6/5F6E76F0" Ref="D?"  Part="2" 
AR Path="/5F582E11/5F6E76F0" Ref="D?"  Part="2" 
F 0 "D?" H 4620 4610 50  0000 C CNN
F 1 "PESD3V3L5UY" H 4620 4410 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4620 4510 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4620 4510 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4620 4510 50  0001 C CNN "Digi-Key PN"
	2    4620 4510
	0    1    1    0   
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
~SD_CARD_DET
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
F 7 "" H 6280 4010 60  0001 C CNN "Digi-Key PN"
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
F 7 "" H 4360 4210 60  0001 C CNN "Digi-Key PN"
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
F 7 "" H 6280 4210 60  0001 C CNN "Digi-Key PN"
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
F 7 "" H 8045 2620 60  0001 C CNN "Digi-Key PN"
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
F 7 "490-13211-1-ND" H 7080 2120 50  0001 C CNN "Digi-Key PN"
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
P 3060 5760
AR Path="/5F582E50/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2224" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2224" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3060 5610 50  0001 C CNN
F 1 "+3.3V" H 3060 5900 50  0000 C CNN
F 2 "" H 3060 5760 50  0001 C CNN
F 3 "" H 3060 5760 50  0001 C CNN
	1    3060 5760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C222A
P 3060 6060
AR Path="/5F582E50/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C222A" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C222A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3060 5810 50  0001 C CNN
F 1 "GND" H 3060 5910 50  0000 C CNN
F 2 "" H 3060 6060 50  0001 C CNN
F 3 "" H 3060 6060 50  0001 C CNN
	1    3060 6060
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 601C2230
P 3170 6500
AR Path="/5F582E50/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2230" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2230" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3170 6350 50  0001 C CNN
F 1 "+3.3V" H 3170 6640 50  0000 C CNN
F 2 "" H 3170 6500 50  0001 C CNN
F 3 "" H 3170 6500 50  0001 C CNN
	1    3170 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 601C2236
P 3170 6700
AR Path="/5F582E50/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F5829C2/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C2236" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C2236" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3170 6450 50  0001 C CNN
F 1 "GND" H 3170 6550 50  0000 C CNN
F 2 "" H 3170 6700 50  0001 C CNN
F 3 "" H 3170 6700 50  0001 C CNN
	1    3170 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3420 6600 3740 6600
Wire Wire Line
	3740 6600 3740 6480
$Comp
L power:+3.3V #PWR?
U 1 1 601C223F
P 3740 5880
AR Path="/5CB7A8BC/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5CB7A8C3/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5E93CC4E/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E4A/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E44/601C223F" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/601C223F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3740 5730 50  0001 C CNN
F 1 "+3.3V" H 3740 6020 50  0000 C CNN
F 2 "" H 3740 5880 50  0001 C CNN
F 3 "" H 3740 5880 50  0001 C CNN
	1    3740 5880
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:74LVC1G97_Power_NOT U?
U 1 1 601C2246
P 3170 6600
AR Path="/5F582E44/601C2246" Ref="U?"  Part="1" 
AR Path="/5F582E11/601C2246" Ref="U?"  Part="1" 
F 0 "U?" H 3230 6750 50  0000 L CNN
F 1 "74LVC1G97" H 3230 6450 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 3220 6600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1g97.pdf" H 3220 6600 50  0001 C CNN
F 4 "SD" H 3390 6370 50  0000 C CNN "Configuration"
	1    3170 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 601C224E
P 3740 6330
AR Path="/5BB844FD/601C224E" Ref="D?"  Part="1" 
AR Path="/5BF346B3/601C224E" Ref="D?"  Part="1" 
AR Path="/5BAAE1F3/601C224E" Ref="D?"  Part="1" 
AR Path="/5CAD2D97/601C224E" Ref="D?"  Part="1" 
AR Path="/5CB7A8BC/601C224E" Ref="D?"  Part="1" 
AR Path="/5CB7A8C3/601C224E" Ref="D?"  Part="1" 
AR Path="/5E93CC4E/601C224E" Ref="D?"  Part="1" 
AR Path="/5F582E4A/601C224E" Ref="D?"  Part="1" 
AR Path="/5F582E44/601C224E" Ref="D?"  Part="1" 
AR Path="/5F582E11/601C224E" Ref="D?"  Part="1" 
F 0 "D?" V 3779 6213 50  0000 R CNN
F 1 "Green" V 3688 6213 50  0000 R CNN
F 2 "LEDs:LED_0603" H 3740 6330 50  0001 C CNN
F 3 "~" H 3740 6330 50  0001 C CNN
F 4 "754-1121-1-ND" H -1420 10  50  0001 C CNN "Digi-Key PN"
F 5 "SD" V 3610 6130 50  0000 C CNN "Configuration"
	1    3740 6330
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 601C2259
P 3740 6030
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
F 0 "R?" H 3680 6030 50  0000 R CNN
F 1 "1k" V 3740 6030 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 3740 6030 50  0001 C CNN
F 3 "" H 3740 6030 50  0001 C CNN
F 4 "0603" H 3810 6110 50  0000 L CNN "display_footprint"
F 5 "1%" H 3810 6030 50  0000 L CNN "Tolerance"
F 6 "1/10W" H 3810 5960 50  0000 L CNN "Wattage"
F 7 "311-1.00KHRCT-ND" H 4040 6430 60  0001 C CNN "Digi-Key PN"
F 8 "SD" H 3890 6180 50  0000 C CNN "Configuration"
	1    3740 6030
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 601C2264
P 3060 5910
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
F 0 "C?" H 3085 6010 50  0000 L CNN
F 1 "0.1uF" H 3085 5810 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3098 5760 50  0001 C CNN
F 3 "" H 3085 6010 50  0001 C CNN
F 4 "490-10701-1-ND" H 3485 6410 60  0001 C CNN "Digi-Key PN"
F 5 "0402" H 2910 6010 50  0000 R CNN "display_footprint"
F 6 "50V" H 2910 5910 50  0000 R CNN "Voltage"
F 7 "X7R" H 2910 5810 50  0000 R CNN "Dielectric"
F 8 "SD" H 3280 5910 50  0000 C CNN "Configuration"
	1    3060 5910
	-1   0    0    -1  
$EndComp
Text GLabel 2870 6600 0    40   Input ~ 0
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
	5620 4210 6410 4210
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
	3690 3610 4870 3610
Connection ~ 4870 3610
Wire Wire Line
	4210 3810 5120 3810
Connection ~ 5120 3810
Wire Wire Line
	3690 4010 5370 4010
Connection ~ 5370 4010
Wire Wire Line
	3690 4210 5620 4210
Connection ~ 5620 4210
Wire Wire Line
	5620 4410 5620 4210
Wire Wire Line
	5370 4410 5370 4010
Wire Wire Line
	5120 4410 5120 3810
Wire Wire Line
	4870 4410 4870 3610
Wire Wire Line
	4620 4410 4620 3510
$EndSCHEMATC
