EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 33 34
Title "LED Panel Controller"
Date "2021-03-31"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J3301
U 1 1 5BB405EB
P 3250 3730
F 0 "J3301" H 3300 4247 50  0000 C CNN
F 1 "Panel Data" H 3300 4156 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 3250 3730 50  0001 C CNN
F 3 "~" H 3250 3730 50  0001 C CNN
F 4 "S9196-ND" H 700 1930 50  0001 C CNN "Digi-Key PN"
	1    3250 3730
	1    0    0    -1  
$EndComp
Text GLabel 3050 3830 0    50   Input ~ 0
Row_A_POS5
Text GLabel 3550 3830 2    50   Input ~ 0
Row_B_POS5
Text GLabel 3550 3930 2    50   Input ~ 0
Row_D_POS5
Text GLabel 3550 3730 2    50   Input ~ 0
Row_E_POS5
Text GLabel 3050 3930 0    50   Input ~ 0
Row_C_POS5
Text GLabel 3050 4030 0    50   Input ~ 0
Panel_CLK_POS5
Text GLabel 3050 4130 0    40   Input ~ 0
~Panel_OE_POS5
Text GLabel 3550 4030 2    50   Input ~ 0
Panel_LAT_POS5
Text GLabel 3050 3430 0    50   Input ~ 0
R0_POS5
Text GLabel 3050 3530 0    50   Input ~ 0
B0_POS5
Text GLabel 3050 3630 0    50   Input ~ 0
R1_POS5
Text GLabel 3050 3730 0    50   Input ~ 0
B1_POS5
Text GLabel 3550 3430 2    50   Input ~ 0
G0_POS5
Text GLabel 3550 3630 2    50   Input ~ 0
G1_POS5
$Comp
L power:GND #PWR03304
U 1 1 5BB40845
P 4350 4280
F 0 "#PWR03304" H 4350 4030 50  0001 C CNN
F 1 "GND" H 4355 4107 50  0000 C CNN
F 2 "" H 4350 4280 50  0001 C CNN
F 3 "" H 4350 4280 50  0001 C CNN
	1    4350 4280
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4280 4350 4130
Wire Wire Line
	4350 3530 4350 4130
Connection ~ 4350 4130
Text GLabel 5430 3610 1    50   Input ~ 0
R0_POS5
Text GLabel 5730 3610 1    50   Input ~ 0
B0_POS5
Text GLabel 5630 3610 1    50   Input ~ 0
R1_POS5
Text GLabel 9130 3610 1    50   Input ~ 0
Panel_CLK_POS5
Text GLabel 8930 3610 1    40   Input ~ 0
~Panel_OE_POS5
Text GLabel 7280 3610 1    50   Input ~ 0
Row_B_POS5
Text GLabel 8730 3610 1    50   Input ~ 0
Row_D_POS5
Text GLabel 7480 3610 1    50   Input ~ 0
Row_E_POS5
Text GLabel 9030 3610 1    50   Input ~ 0
Panel_LAT_POS5
Text GLabel 5830 3610 1    50   Input ~ 0
G0_POS5
Text GLabel 5530 3610 1    50   Input ~ 0
G1_POS5
$Comp
L Power_Protection:SP0505BAJT D3301
U 1 1 5C14E3A9
P 5630 3810
F 0 "D3301" H 5930 3910 50  0000 L CNN
F 1 "SP0505BAJT" H 5930 3835 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6" H 5930 3760 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 5755 3935 50  0001 C CNN
F 4 "F3160CT-ND" H 5630 3810 50  0001 C CNN "Digi-Key PN"
	1    5630 3810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03305
U 1 1 5C150614
P 5630 4010
F 0 "#PWR03305" H 5630 3760 50  0001 C CNN
F 1 "GND" H 5630 3860 50  0000 C CNN
F 2 "" H 5630 4010 50  0001 C CNN
F 3 "" H 5630 4010 50  0001 C CNN
	1    5630 4010
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:SP0505BAJT D3302
U 1 1 5C150760
P 7280 3810
F 0 "D3302" H 7580 3910 50  0000 L CNN
F 1 "SP0505BAJT" H 7580 3835 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6" H 7580 3760 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 7405 3935 50  0001 C CNN
F 4 "F3160CT-ND" H 7280 3810 50  0001 C CNN "Digi-Key PN"
	1    7280 3810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03306
U 1 1 5C150767
P 7280 4010
F 0 "#PWR03306" H 7280 3760 50  0001 C CNN
F 1 "GND" H 7280 3860 50  0000 C CNN
F 2 "" H 7280 4010 50  0001 C CNN
F 3 "" H 7280 4010 50  0001 C CNN
	1    7280 4010
	1    0    0    -1  
$EndComp
$Comp
L Power_Protection:SP0505BAJT D3303
U 1 1 5C150847
P 8930 3810
F 0 "D3303" H 9230 3910 50  0000 L CNN
F 1 "SP0505BAJT" H 9230 3835 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6" H 9230 3760 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 9055 3935 50  0001 C CNN
F 4 "F3160CT-ND" H 8930 3810 50  0001 C CNN "Digi-Key PN"
	1    8930 3810
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03307
U 1 1 5C15084E
P 8930 4010
F 0 "#PWR03307" H 8930 3760 50  0001 C CNN
F 1 "GND" H 8930 3860 50  0000 C CNN
F 2 "" H 8930 4010 50  0001 C CNN
F 3 "" H 8930 4010 50  0001 C CNN
	1    8930 4010
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4130 4350 4130
Wire Wire Line
	3550 3530 4350 3530
$Comp
L Custom_Library:C_Custom C?
U 1 1 5CBDEB4C
P 1650 3880
AR Path="/5BE5222A/5CBDEB4C" Ref="C?"  Part="1" 
AR Path="/5BAAE10E/5CBDEB4C" Ref="C?"  Part="1" 
AR Path="/5BAAE2CE/5CBDEB4C" Ref="C?"  Part="1" 
AR Path="/5F583BFC/5CBDEB4C" Ref="C3301"  Part="1" 
F 0 "C3301" H 1675 3980 50  0000 L CNN
F 1 "15pF" H 1675 3780 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1688 3730 50  0001 C CNN
F 3 "" H 1675 3980 50  0001 C CNN
F 4 "587-1949-1-ND" H 1650 3880 50  0001 C CNN "Digi-Key PN"
F 5 "0402" H 1500 3980 50  0000 R CNN "display_footprint"
F 6 "50V" H 1500 3880 50  0000 R CNN "Voltage"
F 7 "NP0" H 1500 3780 50  0000 R CNN "Dielectric"
F 8 "DNP" H 1870 3880 50  0000 C CNN "Configuration"
	1    1650 3880
	1    0    0    -1  
$EndComp
Text GLabel 1650 3730 1    40   UnSpc ~ 0
~Panel_OE_POS5
$Comp
L power:GND #PWR03301
U 1 1 5CBDEF57
P 1650 4030
F 0 "#PWR03301" H 1650 3780 50  0001 C CNN
F 1 "GND" H 1650 3880 50  0000 C CNN
F 2 "" H 1650 4030 50  0001 C CNN
F 3 "" H 1650 4030 50  0001 C CNN
	1    1650 4030
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3302
U 1 1 5F739EFA
P 3310 5290
F 0 "J3302" H 3310 5390 50  0000 C CNN
F 1 "Keystone_8191" H 3310 5190 50  0000 C CNN
F 2 "Custom Footprints Library:Keystone_8191" H 3310 5290 50  0001 C CNN
F 3 "~" H 3310 5290 50  0001 C CNN
F 4 "36-8191-ND" H 3310 5290 50  0001 C CNN "Digi-Key PN"
	1    3310 5290
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:CP_Tant_Custom C3302
U 1 1 5F73C920
P 2780 5520
F 0 "C3302" H 2805 5620 50  0000 L CNN
F 1 "100uF" H 2805 5420 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-X_EIA-7343-43_Reflow" H 2818 5370 50  0001 C CNN
F 3 "" H 2805 5620 50  0001 C CNN
F 4 "718-1102-1-ND" H 2780 5520 50  0001 C CNN "Digi-Key PN"
F 5 "7343" H 2630 5620 50  0000 R CNN "display_footprint"
F 6 "16V" H 2630 5520 50  0000 R CNN "Voltage"
F 7 "10%" H 2630 5420 50  0000 R CNN "Tolerance"
	1    2780 5520
	1    0    0    -1  
$EndComp
Wire Wire Line
	3110 5290 2780 5290
Wire Wire Line
	2780 5290 2780 5370
$Comp
L power:+5V #PWR03302
U 1 1 5F73CC26
P 2780 5210
F 0 "#PWR03302" H 2780 5060 50  0001 C CNN
F 1 "+5V" H 2780 5350 50  0000 C CNN
F 2 "" H 2780 5210 50  0001 C CNN
F 3 "" H 2780 5210 50  0001 C CNN
	1    2780 5210
	1    0    0    -1  
$EndComp
Wire Wire Line
	2780 5210 2780 5290
Connection ~ 2780 5290
$Comp
L power:GND #PWR03303
U 1 1 5F73DE40
P 2780 5830
F 0 "#PWR03303" H 2780 5580 50  0001 C CNN
F 1 "GND" H 2780 5680 50  0000 C CNN
F 2 "" H 2780 5830 50  0001 C CNN
F 3 "" H 2780 5830 50  0001 C CNN
	1    2780 5830
	1    0    0    -1  
$EndComp
Text Notes 3010 4480 0    50   ~ 0
Place on Bottom
Text Notes 3740 5520 0    50   ~ 0
Add cut in PCB to allow for power harness to pass through to panel
Text GLabel 7080 3610 1    50   Input ~ 0
B1_POS5
Text GLabel 7180 3610 1    50   Input ~ 0
Row_C_POS5
Text GLabel 7380 3610 1    50   Input ~ 0
Row_A_POS5
NoConn ~ 8830 3610
Wire Wire Line
	2780 5670 2780 5830
$EndSCHEMATC
