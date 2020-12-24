EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 16 34
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
L Connector:Micro_SD_Card_Det_Hirose_DM3AT J?
U 1 1 5F5A18D2
P 7840 3920
F 0 "J?" H 7790 4750 50  0000 C CNN
F 1 "Micro_SD_Card_Det_Hirose_DM3AT" H 7790 4650 50  0000 C CNN
F 2 "Connectors_Card:Hirose_DM3AT-SF-PEJM5" H 9890 4620 50  0001 C CNN
F 3 "https://www.hirose.com/product/en/download_file/key_name/DM3/category/Catalog/doc_file_id/49662/?file_category_id=4&item_id=195&is_series=1" H 7840 4020 50  0001 C CNN
F 4 "HR1964CT-ND" H 7840 3920 50  0001 C CNN "Digi-Key PN"
	1    7840 3920
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 1 1 5F6E76CE
P 4730 5540
AR Path="/5F5829A6/5F6E76CE" Ref="D?"  Part="1" 
AR Path="/5F582E11/5F6E76CE" Ref="D?"  Part="1" 
F 0 "D?" H 4730 5640 50  0000 C CNN
F 1 "PESD3V3L5UY" V 4730 5090 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4730 5540 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4730 5540 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4730 5540 50  0001 C CNN "Digi-Key PN"
	1    4730 5540
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 3 1 5F6E76D5
P 5480 5540
AR Path="/5F5829A6/5F6E76D5" Ref="D?"  Part="3" 
AR Path="/5F582E11/5F6E76D5" Ref="D?"  Part="3" 
F 0 "D?" H 5480 5640 50  0000 C CNN
F 1 "PESD3V3L5UY" H 5480 5440 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5480 5540 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 5480 5540 50  0001 C CNN
F 4 "1727-3828-1-ND" H 5480 5540 50  0001 C CNN "Digi-Key PN"
	3    5480 5540
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 4 1 5F6E76DC
P 5230 5540
AR Path="/5F5829A6/5F6E76DC" Ref="D?"  Part="4" 
AR Path="/5F582E11/5F6E76DC" Ref="D?"  Part="4" 
F 0 "D?" H 5230 5640 50  0000 C CNN
F 1 "PESD3V3L5UY" H 5230 5440 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5230 5540 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 5230 5540 50  0001 C CNN
F 4 "1727-3828-1-ND" H 5230 5540 50  0001 C CNN "Digi-Key PN"
	4    5230 5540
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F6E76E2
P 4730 5640
AR Path="/5F5829A6/5F6E76E2" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F6E76E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4730 5390 50  0001 C CNN
F 1 "GND" H 4730 5490 50  0000 C CNN
F 2 "" H 4730 5640 50  0001 C CNN
F 3 "" H 4730 5640 50  0001 C CNN
	1    4730 5640
	-1   0    0    -1  
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 5 1 5F6E76E9
P 4980 5540
AR Path="/5F5829A6/5F6E76E9" Ref="D?"  Part="5" 
AR Path="/5F582E11/5F6E76E9" Ref="D?"  Part="5" 
F 0 "D?" H 4980 5640 50  0000 C CNN
F 1 "PESD3V3L5UY" H 4980 5440 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4980 5540 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4980 5540 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4980 5540 50  0001 C CNN "Digi-Key PN"
	5    4980 5540
	0    1    1    0   
$EndComp
$Comp
L Power_Protection:PESD3V3L5UY D?
U 2 1 5F6E76F0
P 4480 5540
AR Path="/5F5829A6/5F6E76F0" Ref="D?"  Part="2" 
AR Path="/5F582E11/5F6E76F0" Ref="D?"  Part="2" 
F 0 "D?" H 4480 5640 50  0000 C CNN
F 1 "PESD3V3L5UY" H 4480 5440 50  0001 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4480 5540 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/PESDXL5UF_V_Y.pdf" H 4480 5540 50  0001 C CNN
F 4 "1727-3828-1-ND" H 4480 5540 50  0001 C CNN "Digi-Key PN"
	2    4480 5540
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6EB668
P 3770 2960
AR Path="/5D6B2673/5F6EB668" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6EB668" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6EB668" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6EB668" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6EB668" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6EB668" Ref="R?"  Part="1" 
F 0 "R?" H 3680 2960 50  0000 R CNN
F 1 "10k" V 3770 2890 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3770 2960 50  0001 C CNN
F 3 "" H 3770 2960 50  0001 C CNN
F 4 "0402" H 3870 3030 50  0000 L CNN "display_footprint"
F 5 "1%" H 3870 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 3870 2830 50  0000 L CNN "Wattage"
F 7 "" H 4070 3360 60  0001 C CNN "Digi-Key PN"
	1    3770 2960
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6EBBB2
P 4300 2960
AR Path="/5D6B2673/5F6EBBB2" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6EBBB2" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6EBBB2" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6EBBB2" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6EBBB2" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6EBBB2" Ref="R?"  Part="1" 
F 0 "R?" H 4210 2960 50  0000 R CNN
F 1 "10k" V 4300 2890 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4300 2960 50  0001 C CNN
F 3 "" H 4300 2960 50  0001 C CNN
F 4 "0402" H 4400 3030 50  0000 L CNN "display_footprint"
F 5 "1%" H 4400 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4400 2830 50  0000 L CNN "Wattage"
F 7 "" H 4600 3360 60  0001 C CNN "Digi-Key PN"
	1    4300 2960
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6EBEE6
P 4850 2960
AR Path="/5D6B2673/5F6EBEE6" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6EBEE6" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6EBEE6" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6EBEE6" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6EBEE6" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6EBEE6" Ref="R?"  Part="1" 
F 0 "R?" H 4760 2960 50  0000 R CNN
F 1 "10k" V 4850 2890 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4850 2960 50  0001 C CNN
F 3 "" H 4850 2960 50  0001 C CNN
F 4 "0402" H 4950 3030 50  0000 L CNN "display_footprint"
F 5 "1%" H 4950 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 4950 2830 50  0000 L CNN "Wattage"
F 7 "" H 5150 3360 60  0001 C CNN "Digi-Key PN"
	1    4850 2960
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6EC202
P 5400 2960
AR Path="/5D6B2673/5F6EC202" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6EC202" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6EC202" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6EC202" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6EC202" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6EC202" Ref="R?"  Part="1" 
F 0 "R?" H 5310 2960 50  0000 R CNN
F 1 "10k" V 5400 2890 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5400 2960 50  0001 C CNN
F 3 "" H 5400 2960 50  0001 C CNN
F 4 "0402" H 5500 3030 50  0000 L CNN "display_footprint"
F 5 "1%" H 5500 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 5500 2830 50  0000 L CNN "Wattage"
F 7 "" H 5700 3360 60  0001 C CNN "Digi-Key PN"
	1    5400 2960
	-1   0    0    -1  
$EndComp
Text GLabel 3010 3620 0    50   Input ~ 0
SD_SPI_CS
Text GLabel 3010 3720 0    50   Input ~ 0
SD_SPI_MOSI
Text GLabel 3010 3920 0    50   Input ~ 0
SD_SPI_SCK
Text GLabel 3010 4120 0    50   Output ~ 0
SD_SPI_MISO
Text GLabel 3010 4320 0    50   Output ~ 0
SD_CARD_DET
Wire Wire Line
	3770 3110 3770 3620
Wire Wire Line
	3770 3620 4480 3620
Wire Wire Line
	4300 3110 4300 3720
Wire Wire Line
	3010 3620 3770 3620
Connection ~ 3770 3620
Wire Wire Line
	3010 3720 4300 3720
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6F5E30
P 6510 3720
AR Path="/5D6B2673/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6F5E30" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6F5E30" Ref="R?"  Part="1" 
F 0 "R?" V 6550 3600 50  0000 R CNN
F 1 "10" V 6510 3670 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6510 3720 50  0001 C CNN
F 3 "" H 6510 3720 50  0001 C CNN
F 4 "0402" H 6610 3790 50  0001 L CNN "display_footprint"
F 5 "1%" H 6610 3690 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 6610 3590 50  0001 L CNN "Wattage"
F 7 "" H 6810 4120 60  0001 C CNN "Digi-Key PN"
	1    6510 3720
	0    1    -1   0   
$EndComp
Connection ~ 4300 3720
Wire Wire Line
	6660 3720 6940 3720
Wire Wire Line
	4300 3720 4730 3720
Wire Wire Line
	4480 5440 4480 3620
Connection ~ 4480 3620
Wire Wire Line
	4480 3620 6940 3620
Wire Wire Line
	4730 5440 4730 3720
Connection ~ 4730 3720
Wire Wire Line
	4730 3720 6360 3720
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6FCF2A
P 3380 3920
AR Path="/5D6B2673/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6FCF2A" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6FCF2A" Ref="R?"  Part="1" 
F 0 "R?" V 3420 3800 50  0000 R CNN
F 1 "10" V 3380 3870 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 3380 3920 50  0001 C CNN
F 3 "" H 3380 3920 50  0001 C CNN
F 4 "0402" H 3480 3990 50  0001 L CNN "display_footprint"
F 5 "1%" H 3480 3890 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 3480 3790 50  0001 L CNN "Wattage"
F 7 "" H 3680 4320 60  0001 C CNN "Digi-Key PN"
	1    3380 3920
	0    1    -1   0   
$EndComp
Wire Wire Line
	3010 3920 3230 3920
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F6FFFE3
P 6510 3920
AR Path="/5D6B2673/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F6FFFE3" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F6FFFE3" Ref="R?"  Part="1" 
F 0 "R?" V 6550 3800 50  0000 R CNN
F 1 "10" V 6510 3870 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 6510 3920 50  0001 C CNN
F 3 "" H 6510 3920 50  0001 C CNN
F 4 "0402" H 6610 3990 50  0001 L CNN "display_footprint"
F 5 "1%" H 6610 3890 50  0001 L CNN "Tolerance"
F 6 "1/16W" H 6610 3790 50  0001 L CNN "Wattage"
F 7 "" H 6810 4320 60  0001 C CNN "Digi-Key PN"
	1    6510 3920
	0    1    -1   0   
$EndComp
Wire Wire Line
	6660 3920 6940 3920
Wire Wire Line
	6360 3920 5230 3920
Wire Wire Line
	4850 3110 4850 3920
Connection ~ 4850 3920
Wire Wire Line
	4850 3920 3530 3920
Wire Wire Line
	4980 5440 4980 3920
Connection ~ 4980 3920
Wire Wire Line
	4980 3920 4850 3920
Wire Wire Line
	3010 4320 5940 4320
Wire Wire Line
	3010 4120 5400 4120
$Comp
L Custom_Library:R_Custom R?
U 1 1 5F70A5CB
P 5940 2960
AR Path="/5D6B2673/5F70A5CB" Ref="R?"  Part="1" 
AR Path="/5D6C0D23/5F70A5CB" Ref="R?"  Part="1" 
AR Path="/5D77A516/5F70A5CB" Ref="R?"  Part="1" 
AR Path="/5E939CFF/5F70A5CB" Ref="R?"  Part="1" 
AR Path="/5F581B41/5F70A5CB" Ref="R?"  Part="1" 
AR Path="/5F582E11/5F70A5CB" Ref="R?"  Part="1" 
F 0 "R?" H 5850 2960 50  0000 R CNN
F 1 "10k" V 5940 2890 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 5940 2960 50  0001 C CNN
F 3 "" H 5940 2960 50  0001 C CNN
F 4 "0402" H 6040 3030 50  0000 L CNN "display_footprint"
F 5 "1%" H 6040 2930 50  0000 L CNN "Tolerance"
F 6 "1/16W" H 6040 2830 50  0000 L CNN "Wattage"
F 7 "" H 6240 3360 60  0001 C CNN "Digi-Key PN"
	1    5940 2960
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5480 5440 5480 4120
Connection ~ 5480 4120
Wire Wire Line
	5480 4120 6940 4120
Wire Wire Line
	5230 5440 5230 3920
Connection ~ 5230 3920
Wire Wire Line
	5230 3920 4980 3920
$Comp
L power:GND #PWR?
U 1 1 5F70D104
P 6940 4020
AR Path="/5F5829A6/5F70D104" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F70D104" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6940 3770 50  0001 C CNN
F 1 "GND" V 6940 3830 50  0000 C CNN
F 2 "" H 6940 4020 50  0001 C CNN
F 3 "" H 6940 4020 50  0001 C CNN
	1    6940 4020
	0    1    -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F70F685
P 3770 2810
AR Path="/5CB7718D/5F70F685" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F70F685" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F70F685" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F70F685" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F70F685" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F70F685" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3770 2660 50  0001 C CNN
F 1 "+3.3V" H 3770 2950 50  0000 C CNN
F 2 "" H 3770 2810 50  0001 C CNN
F 3 "" H 3770 2810 50  0001 C CNN
	1    3770 2810
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F70FAA0
P 6940 3820
AR Path="/5CB7718D/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F70FAA0" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F70FAA0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6940 3670 50  0001 C CNN
F 1 "+3.3V" V 6940 4050 50  0000 C CNN
F 2 "" H 6940 3820 50  0001 C CNN
F 3 "" H 6940 3820 50  0001 C CNN
	1    6940 3820
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F713DCE
P 3040 5200
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
F 0 "C?" H 3065 5300 50  0000 L CNN
F 1 "0.1uF" H 3065 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3078 5050 50  0001 C CNN
F 3 "" H 3065 5300 50  0001 C CNN
F 4 "0402" H 2890 5300 50  0000 R CNN "display_footprint"
F 5 "50V" H 2890 5200 50  0000 R CNN "Voltage"
F 6 "X7R" H 2890 5100 50  0000 R CNN "Dielectric"
F 7 "" H 3465 5700 60  0001 C CNN "Digi-Key PN"
	1    3040 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F713DD4
P 2780 5500
AR Path="/5CB7718D/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F713DD4" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F713DD4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2780 5250 50  0001 C CNN
F 1 "GND" H 2780 5350 50  0000 C CNN
F 2 "" H 2780 5500 50  0001 C CNN
F 3 "" H 2780 5500 50  0001 C CNN
	1    2780 5500
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F7150AB
P 2500 5200
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
F 0 "C?" H 2525 5300 50  0000 L CNN
F 1 "10uF" H 2525 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2538 5050 50  0001 C CNN
F 3 "" H 2525 5300 50  0001 C CNN
F 4 "0402" H 2350 5300 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 2350 5200 50  0000 R CNN "Voltage"
F 6 "X5R" H 2350 5100 50  0000 R CNN "Dielectric"
F 7 "490-13211-1-ND" H 2500 5200 50  0001 C CNN "Digi-Key PN"
	1    2500 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F715544
P 2780 4950
AR Path="/5CB7718D/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5F715544" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F715544" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2780 4800 50  0001 C CNN
F 1 "+3.3V" H 2780 5090 50  0000 C CNN
F 2 "" H 2780 4950 50  0001 C CNN
F 3 "" H 2780 4950 50  0001 C CNN
	1    2780 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2780 4950 2500 4950
Wire Wire Line
	2500 4950 2500 5050
Wire Wire Line
	2780 4950 3040 4950
Wire Wire Line
	3040 4950 3040 5050
Connection ~ 2780 4950
Wire Wire Line
	2780 5500 2780 5440
Wire Wire Line
	2500 5350 2500 5440
Wire Wire Line
	2500 5440 2780 5440
Wire Wire Line
	3040 5350 3040 5440
Wire Wire Line
	3040 5440 2780 5440
Connection ~ 2780 5440
Wire Wire Line
	5400 4120 5400 3110
Connection ~ 5400 4120
Wire Wire Line
	5400 4120 5480 4120
Wire Wire Line
	5940 4320 5940 3110
Connection ~ 5940 4320
Wire Wire Line
	5940 4320 6940 4320
NoConn ~ 6940 4220
NoConn ~ 6940 3520
$Comp
L power:GND #PWR?
U 1 1 5F725696
P 6940 4420
AR Path="/5F5829A6/5F725696" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F725696" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6940 4170 50  0001 C CNN
F 1 "GND" V 6940 4230 50  0000 C CNN
F 2 "" H 6940 4420 50  0001 C CNN
F 3 "" H 6940 4420 50  0001 C CNN
	1    6940 4420
	0    1    -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5F726E32
P 8760 4650
AR Path="/5F582AA0/5F726E32" Ref="L?"  Part="1" 
AR Path="/5F582E11/5F726E32" Ref="L?"  Part="1" 
F 0 "L?" H 8600 4590 50  0000 R CNN
F 1 "600R 0.5A" H 8600 4690 50  0000 R CNN
F 2 "Inductors_SMD:L_0402" V 8690 4650 50  0001 C CNN
F 3 "~" H 8760 4650 50  0001 C CNN
F 4 "490-5441-1-ND" H -770 890 50  0001 C CNN "Digi-Key PN"
	1    8760 4650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F726E38
P 8760 4800
AR Path="/5F582AA0/5F726E38" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5F726E38" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8760 4550 50  0001 C CNN
F 1 "GND" H 8760 4650 50  0000 C CNN
F 2 "" H 8760 4800 50  0001 C CNN
F 3 "" H 8760 4800 50  0001 C CNN
	1    8760 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8760 4500 8760 4420
Wire Wire Line
	8760 4420 8640 4420
$Comp
L power:+3.3V #PWR?
U 1 1 5FE67F76
P 4300 2810
AR Path="/5CB7718D/5FE67F76" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE67F76" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE67F76" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE67F76" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE67F76" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5FE67F76" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 2660 50  0001 C CNN
F 1 "+3.3V" H 4300 2950 50  0000 C CNN
F 2 "" H 4300 2810 50  0001 C CNN
F 3 "" H 4300 2810 50  0001 C CNN
	1    4300 2810
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE6815E
P 4850 2810
AR Path="/5CB7718D/5FE6815E" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE6815E" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE6815E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE6815E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE6815E" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5FE6815E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 2660 50  0001 C CNN
F 1 "+3.3V" H 4850 2950 50  0000 C CNN
F 2 "" H 4850 2810 50  0001 C CNN
F 3 "" H 4850 2810 50  0001 C CNN
	1    4850 2810
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE6833E
P 5400 2810
AR Path="/5CB7718D/5FE6833E" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE6833E" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE6833E" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE6833E" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE6833E" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5FE6833E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5400 2660 50  0001 C CNN
F 1 "+3.3V" H 5400 2950 50  0000 C CNN
F 2 "" H 5400 2810 50  0001 C CNN
F 3 "" H 5400 2810 50  0001 C CNN
	1    5400 2810
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5FE684D9
P 5940 2810
AR Path="/5CB7718D/5FE684D9" Ref="#PWR?"  Part="1" 
AR Path="/5E0DC082/5FE684D9" Ref="#PWR?"  Part="1" 
AR Path="/5E0F263A/5FE684D9" Ref="#PWR?"  Part="1" 
AR Path="/5EAE2D8A/5FE684D9" Ref="#PWR?"  Part="1" 
AR Path="/5F581B64/5FE684D9" Ref="#PWR?"  Part="1" 
AR Path="/5F582E11/5FE684D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5940 2660 50  0001 C CNN
F 1 "+3.3V" H 5940 2950 50  0000 C CNN
F 2 "" H 5940 2810 50  0001 C CNN
F 3 "" H 5940 2810 50  0001 C CNN
	1    5940 2810
	1    0    0    -1  
$EndComp
$EndSCHEMATC
