EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 9 34
Title "LED Panel Controller"
Date "2021-05-30"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Custom_Library:C_Custom C901
U 1 1 5CB29D37
P 2600 3400
F 0 "C901" H 2625 3500 50  0000 L CNN
F 1 "0.1uF" H 2625 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2638 3250 50  0001 C CNN
F 3 "" H 2625 3500 50  0001 C CNN
F 4 "0402" H 2450 3500 50  0000 R CNN "display_footprint"
F 5 "50V" H 2450 3400 50  0000 R CNN "Voltage"
F 6 "X7R" H 2450 3300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H -1310 -3480 50  0001 C CNN "Digi-Key PN"
	1    2600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3210 2600 3250
Wire Wire Line
	2600 3590 2600 3550
$Comp
L power:GND #PWR0906
U 1 1 5CB1558B
P 4220 3630
F 0 "#PWR0906" H 4220 3380 50  0001 C CNN
F 1 "GND" H 4220 3480 50  0000 C CNN
F 2 "" H 4220 3630 50  0000 C CNN
F 3 "" H 4220 3630 50  0000 C CNN
	1    4220 3630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C905
U 1 1 5CB15599
P 3900 3400
F 0 "C905" H 3925 3500 50  0000 L CNN
F 1 "0.1uF" H 3925 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3938 3250 50  0001 C CNN
F 3 "" H 3925 3500 50  0001 C CNN
F 4 "0402" H 3750 3500 50  0000 R CNN "display_footprint"
F 5 "50V" H 3750 3400 50  0000 R CNN "Voltage"
F 6 "X7R" H 3750 3300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H -10 -3480 50  0001 C CNN "Digi-Key PN"
	1    3900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3210 3900 3250
Connection ~ 4220 3210
Wire Wire Line
	4540 3210 4540 3250
Wire Wire Line
	3900 3210 4220 3210
Wire Wire Line
	4220 3170 4220 3210
Wire Wire Line
	3900 3590 3900 3550
Connection ~ 4220 3590
Wire Wire Line
	4540 3590 4540 3550
Wire Wire Line
	3900 3590 4220 3590
Wire Wire Line
	4220 3210 4540 3210
Wire Wire Line
	4220 3590 4540 3590
Wire Wire Line
	4220 3590 4220 3630
$Comp
L power:GND #PWR0908
U 1 1 5CB1993B
P 5520 3630
F 0 "#PWR0908" H 5520 3380 50  0001 C CNN
F 1 "GND" H 5520 3480 50  0000 C CNN
F 2 "" H 5520 3630 50  0000 C CNN
F 3 "" H 5520 3630 50  0000 C CNN
	1    5520 3630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C907
U 1 1 5CB19945
P 5200 3400
F 0 "C907" H 5225 3500 50  0000 L CNN
F 1 "0.1uF" H 5225 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5238 3250 50  0001 C CNN
F 3 "" H 5225 3500 50  0001 C CNN
F 4 "0402" H 5050 3500 50  0000 R CNN "display_footprint"
F 5 "50V" H 5050 3400 50  0000 R CNN "Voltage"
F 6 "X7R" H 5050 3300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H 1290 -3480 50  0001 C CNN "Digi-Key PN"
	1    5200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3210 5200 3250
Wire Wire Line
	5520 3170 5520 3210
Wire Wire Line
	5200 3590 5200 3550
Wire Wire Line
	5520 3590 5520 3630
$Comp
L power:GND #PWR0910
U 1 1 5CB219B2
P 6820 3630
F 0 "#PWR0910" H 6820 3380 50  0001 C CNN
F 1 "GND" H 6820 3480 50  0000 C CNN
F 2 "" H 6820 3630 50  0000 C CNN
F 3 "" H 6820 3630 50  0000 C CNN
	1    6820 3630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C909
U 1 1 5CB219C0
P 6500 3400
F 0 "C909" H 6525 3500 50  0000 L CNN
F 1 "0.1uF" H 6525 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6538 3250 50  0001 C CNN
F 3 "" H 6525 3500 50  0001 C CNN
F 4 "0402" H 6350 3500 50  0000 R CNN "display_footprint"
F 5 "50V" H 6350 3400 50  0000 R CNN "Voltage"
F 6 "X7R" H 6350 3300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H 2590 -3480 50  0001 C CNN "Digi-Key PN"
	1    6500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3210 6500 3250
Connection ~ 6820 3210
Wire Wire Line
	7140 3210 7140 3250
Wire Wire Line
	6500 3210 6820 3210
Wire Wire Line
	6820 3170 6820 3210
Wire Wire Line
	6500 3590 6500 3550
Connection ~ 6820 3590
Wire Wire Line
	7140 3590 7140 3550
Wire Wire Line
	6500 3590 6820 3590
Wire Wire Line
	6820 3210 7140 3210
Wire Wire Line
	6820 3590 7140 3590
Wire Wire Line
	6820 3590 6820 3630
$Comp
L power:GND #PWR0904
U 1 1 5CB24EB8
P 2920 4630
F 0 "#PWR0904" H 2920 4380 50  0001 C CNN
F 1 "GND" H 2920 4480 50  0000 C CNN
F 2 "" H 2920 4630 50  0000 C CNN
F 3 "" H 2920 4630 50  0000 C CNN
	1    2920 4630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C902
U 1 1 5CB24EC6
P 2600 4400
F 0 "C902" H 2625 4500 50  0000 L CNN
F 1 "0.1uF" H 2625 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2638 4250 50  0001 C CNN
F 3 "" H 2625 4500 50  0001 C CNN
F 4 "0402" H 2450 4500 50  0000 R CNN "display_footprint"
F 5 "50V" H 2450 4400 50  0000 R CNN "Voltage"
F 6 "X7R" H 2450 4300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H -1310 -2480 50  0001 C CNN "Digi-Key PN"
	1    2600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4210 2600 4250
Connection ~ 2920 4210
Wire Wire Line
	3240 4210 3240 4250
Wire Wire Line
	2600 4210 2920 4210
Wire Wire Line
	2920 4170 2920 4210
Wire Wire Line
	2600 4590 2600 4550
Connection ~ 2920 4590
Wire Wire Line
	3240 4590 3240 4550
Wire Wire Line
	2600 4590 2920 4590
Wire Wire Line
	2920 4210 3240 4210
Wire Wire Line
	2920 4590 3240 4590
Wire Wire Line
	2920 4590 2920 4630
Wire Wire Line
	6820 4590 6820 4630
Wire Wire Line
	7140 4590 7140 4550
Wire Wire Line
	6500 4590 6500 4550
Wire Wire Line
	6820 4170 6820 4210
Wire Wire Line
	7140 4210 7140 4250
Wire Wire Line
	6820 4210 7140 4210
Wire Wire Line
	6500 4210 6820 4210
Connection ~ 6820 4210
Wire Wire Line
	6500 4210 6500 4250
$Comp
L Custom_Library:C_Custom C910
U 1 1 5CB24FAA
P 6500 4400
F 0 "C910" H 6525 4500 50  0000 L CNN
F 1 "0.1uF" H 6525 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6538 4250 50  0001 C CNN
F 3 "" H 6525 4500 50  0001 C CNN
F 4 "0402" H 6350 4500 50  0000 R CNN "display_footprint"
F 5 "50V" H 6350 4400 50  0000 R CNN "Voltage"
F 6 "X7R" H 6350 4300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H 2590 -2480 50  0001 C CNN "Digi-Key PN"
	1    6500 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5CB5F840
P 8260 4120
AR Path="/5CAD2D97/5CB5F840" Ref="L?"  Part="1" 
AR Path="/5CB25152/5CB5F840" Ref="L?"  Part="1" 
AR Path="/5E697934/5CB5F840" Ref="L?"  Part="1" 
AR Path="/5EAE2F02/5CB5F840" Ref="L?"  Part="1" 
AR Path="/5F5829B3/5CB5F840" Ref="L901"  Part="1" 
F 0 "L901" V 8110 4145 50  0000 C CNN
F 1 "600R 0.5A" V 8410 4120 50  0000 C CNN
F 2 "Inductors_SMD:L_0402" V 8190 4120 50  0001 C CNN
F 3 "~" H 8260 4120 50  0001 C CNN
F 4 "490-5441-1-ND" H -1270 360 50  0001 C CNN "Digi-Key PN"
	1    8260 4120
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead L?
U 1 1 5CB61DC3
P 8260 4680
AR Path="/5CAD2D97/5CB61DC3" Ref="L?"  Part="1" 
AR Path="/5CB25152/5CB61DC3" Ref="L?"  Part="1" 
AR Path="/5E697934/5CB61DC3" Ref="L?"  Part="1" 
AR Path="/5EAE2F02/5CB61DC3" Ref="L?"  Part="1" 
AR Path="/5F5829B3/5CB61DC3" Ref="L902"  Part="1" 
F 0 "L902" V 8110 4705 50  0000 C CNN
F 1 "600R 0.5A" V 8410 4680 50  0000 C CNN
F 2 "Inductors_SMD:L_0402" V 8190 4680 50  0001 C CNN
F 3 "~" H 8260 4680 50  0001 C CNN
F 4 "490-5441-1-ND" H -1270 920 50  0001 C CNN "Digi-Key PN"
	1    8260 4680
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0914
U 1 1 5CB62D81
P 8110 4680
F 0 "#PWR0914" H 8110 4430 50  0001 C CNN
F 1 "GND" V 8110 4530 50  0000 R CNN
F 2 "" H 8110 4680 50  0001 C CNN
F 3 "" H 8110 4680 50  0001 C CNN
	1    8110 4680
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E325341
P 3240 3400
AR Path="/5CB7718D/5E325341" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E325341" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5E325341" Ref="C?"  Part="1" 
AR Path="/5A557C58/5E325341" Ref="C?"  Part="1" 
AR Path="/5CB25152/5E325341" Ref="C?"  Part="1" 
AR Path="/5E697934/5E325341" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5E325341" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5E325341" Ref="C903"  Part="1" 
F 0 "C903" H 3265 3500 50  0000 L CNN
F 1 "10uF" H 3265 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3278 3250 50  0001 C CNN
F 3 "" H 3265 3500 50  0001 C CNN
F 4 "0402" H 3090 3500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3090 3400 50  0000 R CNN "Voltage"
F 6 "X5R" H 3090 3300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 3240 3400 50  0001 C CNN "Digi-Key PN"
	1    3240 3400
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E32800A
P 4540 3400
AR Path="/5CB7718D/5E32800A" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E32800A" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5E32800A" Ref="C?"  Part="1" 
AR Path="/5A557C58/5E32800A" Ref="C?"  Part="1" 
AR Path="/5CB25152/5E32800A" Ref="C?"  Part="1" 
AR Path="/5E697934/5E32800A" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5E32800A" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5E32800A" Ref="C906"  Part="1" 
F 0 "C906" H 4565 3500 50  0000 L CNN
F 1 "10uF" H 4565 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4578 3250 50  0001 C CNN
F 3 "" H 4565 3500 50  0001 C CNN
F 4 "0402" H 4390 3500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 4390 3400 50  0000 R CNN "Voltage"
F 6 "X5R" H 4390 3300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 4540 3400 50  0001 C CNN "Digi-Key PN"
	1    4540 3400
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5E32A559
P 7140 3400
AR Path="/5CB7718D/5E32A559" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5E32A559" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5E32A559" Ref="C?"  Part="1" 
AR Path="/5A557C58/5E32A559" Ref="C?"  Part="1" 
AR Path="/5CB25152/5E32A559" Ref="C?"  Part="1" 
AR Path="/5E697934/5E32A559" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5E32A559" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5E32A559" Ref="C911"  Part="1" 
F 0 "C911" H 7165 3500 50  0000 L CNN
F 1 "10uF" H 7165 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7178 3250 50  0001 C CNN
F 3 "" H 7165 3500 50  0001 C CNN
F 4 "0402" H 6990 3500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6990 3400 50  0000 R CNN "Voltage"
F 6 "X5R" H 6990 3300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 7140 3400 50  0001 C CNN "Digi-Key PN"
	1    7140 3400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0901
U 1 1 5E44A219
P 9670 4120
F 0 "#FLG0901" H 9670 4195 50  0001 C CNN
F 1 "PWR_FLAG" V 9670 4270 50  0000 L CNN
F 2 "" H 9670 4120 50  0001 C CNN
F 3 "~" H 9670 4120 50  0001 C CNN
	1    9670 4120
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0902
U 1 1 5E44AB17
P 9670 4680
F 0 "#FLG0902" H 9670 4755 50  0001 C CNN
F 1 "PWR_FLAG" V 9670 4830 50  0000 L CNN
F 2 "" H 9670 4680 50  0001 C CNN
F 3 "~" H 9670 4680 50  0001 C CNN
	1    9670 4680
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0909
U 1 1 5E6E2CE4
P 6820 3170
F 0 "#PWR0909" H 6820 3020 50  0001 C CNN
F 1 "+3.3V" H 6820 3310 50  0000 C CNN
F 2 "" H 6820 3170 50  0001 C CNN
F 3 "" H 6820 3170 50  0001 C CNN
	1    6820 3170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0907
U 1 1 5E6E34DC
P 5520 3170
F 0 "#PWR0907" H 5520 3020 50  0001 C CNN
F 1 "+3.3V" H 5520 3310 50  0000 C CNN
F 2 "" H 5520 3170 50  0001 C CNN
F 3 "" H 5520 3170 50  0001 C CNN
	1    5520 3170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0905
U 1 1 5E6E3A94
P 4220 3170
F 0 "#PWR0905" H 4220 3020 50  0001 C CNN
F 1 "+3.3V" H 4220 3310 50  0000 C CNN
F 2 "" H 4220 3170 50  0001 C CNN
F 3 "" H 4220 3170 50  0001 C CNN
	1    4220 3170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0903
U 1 1 5E6E46E8
P 2920 4170
F 0 "#PWR0903" H 2920 4020 50  0001 C CNN
F 1 "+3.3V" H 2920 4310 50  0000 C CNN
F 2 "" H 2920 4170 50  0001 C CNN
F 3 "" H 2920 4170 50  0001 C CNN
	1    2920 4170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0913
U 1 1 5E6E6088
P 8110 4120
F 0 "#PWR0913" H 8110 3970 50  0001 C CNN
F 1 "+3.3V" V 8110 4260 50  0000 L CNN
F 2 "" H 8110 4120 50  0001 C CNN
F 3 "" H 8110 4120 50  0001 C CNN
	1    8110 4120
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:GNDA_MZ #PWR0912
U 1 1 5EB1572E
P 6820 4630
F 0 "#PWR0912" H 6820 4380 50  0001 C CNN
F 1 "GNDA_MZ" H 6820 4480 50  0000 C CNN
F 2 "" H 6820 4630 50  0001 C CNN
F 3 "" H 6820 4630 50  0001 C CNN
	1    6820 4630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:GNDA_MZ #PWR0916
U 1 1 5EB160DB
P 8410 4680
F 0 "#PWR0916" H 8410 4430 50  0001 C CNN
F 1 "GNDA_MZ" V 8410 4530 50  0000 R CNN
F 2 "" H 8410 4680 50  0001 C CNN
F 3 "" H 8410 4680 50  0001 C CNN
	1    8410 4680
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:GNDA_MZ #PWR0918
U 1 1 5EB16842
P 9670 4680
F 0 "#PWR0918" H 9670 4430 50  0001 C CNN
F 1 "GNDA_MZ" V 9670 4530 50  0000 R CNN
F 2 "" H 9670 4680 50  0001 C CNN
F 3 "" H 9670 4680 50  0001 C CNN
	1    9670 4680
	0    -1   -1   0   
$EndComp
$Comp
L Custom_Library:+3.3VA_MZ #PWR0911
U 1 1 5EB17B0F
P 6820 4170
F 0 "#PWR0911" H 6820 4020 50  0001 C CNN
F 1 "+3.3VA_MZ" H 6820 4310 50  0000 C CNN
F 2 "" H 6820 4170 50  0001 C CNN
F 3 "" H 6820 4170 50  0001 C CNN
	1    6820 4170
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:+3.3VA_MZ #PWR0915
U 1 1 5EB18347
P 8410 4120
F 0 "#PWR0915" H 8410 3970 50  0001 C CNN
F 1 "+3.3VA_MZ" V 8410 4260 50  0000 L CNN
F 2 "" H 8410 4120 50  0001 C CNN
F 3 "" H 8410 4120 50  0001 C CNN
	1    8410 4120
	0    1    1    0   
$EndComp
$Comp
L Custom_Library:+3.3VA_MZ #PWR0917
U 1 1 5EB18B8A
P 9670 4120
F 0 "#PWR0917" H 9670 3970 50  0001 C CNN
F 1 "+3.3VA_MZ" V 9670 4260 50  0000 L CNN
F 2 "" H 9670 4120 50  0001 C CNN
F 3 "" H 9670 4120 50  0001 C CNN
	1    9670 4120
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0901
U 1 1 5E6E4189
P 2920 3170
F 0 "#PWR0901" H 2920 3020 50  0001 C CNN
F 1 "+3.3V" H 2920 3310 50  0000 C CNN
F 2 "" H 2920 3170 50  0001 C CNN
F 3 "" H 2920 3170 50  0001 C CNN
	1    2920 3170
	1    0    0    -1  
$EndComp
Wire Wire Line
	2920 3590 2920 3630
Wire Wire Line
	3240 3590 3240 3550
Wire Wire Line
	2920 3590 3240 3590
Wire Wire Line
	2600 3590 2920 3590
Connection ~ 2920 3590
Wire Wire Line
	2920 3170 2920 3210
Wire Wire Line
	3240 3210 3240 3250
Wire Wire Line
	2920 3210 3240 3210
Wire Wire Line
	2600 3210 2920 3210
Connection ~ 2920 3210
$Comp
L power:GND #PWR0902
U 1 1 5CB29D2D
P 2920 3630
F 0 "#PWR0902" H 2920 3380 50  0001 C CNN
F 1 "GND" H 2920 3480 50  0000 C CNN
F 2 "" H 2920 3630 50  0000 C CNN
F 3 "" H 2920 3630 50  0000 C CNN
	1    2920 3630
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3210 5520 3210
Wire Wire Line
	5200 3590 5520 3590
Connection ~ 5520 3210
Wire Wire Line
	5520 3210 5840 3210
Connection ~ 5520 3590
Wire Wire Line
	5520 3590 5840 3590
Wire Wire Line
	5840 3210 5840 3250
Wire Wire Line
	5840 3590 5840 3550
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6EBB55
P 5840 3400
AR Path="/5CB7718D/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5E697934/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F6EBB55" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5F6EBB55" Ref="C908"  Part="1" 
F 0 "C908" H 5865 3500 50  0000 L CNN
F 1 "10uF" H 5865 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5878 3250 50  0001 C CNN
F 3 "" H 5865 3500 50  0001 C CNN
F 4 "0402" H 5690 3500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 5690 3400 50  0000 R CNN "Voltage"
F 6 "X5R" H 5690 3300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 5840 3400 50  0001 C CNN "Digi-Key PN"
	1    5840 3400
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6F14C0
P 3240 4400
AR Path="/5CB7718D/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5E697934/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F6F14C0" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5F6F14C0" Ref="C904"  Part="1" 
F 0 "C904" H 3265 4500 50  0000 L CNN
F 1 "10uF" H 3265 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3278 4250 50  0001 C CNN
F 3 "" H 3265 4500 50  0001 C CNN
F 4 "0402" H 3090 4500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 3090 4400 50  0000 R CNN "Voltage"
F 6 "X5R" H 3090 4300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 3240 4400 50  0001 C CNN "Digi-Key PN"
	1    3240 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 4590 6820 4590
$Comp
L Custom_Library:C_Custom C?
U 1 1 5F6F395B
P 7140 4400
AR Path="/5CB7718D/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5E0DC082/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5E0F9110/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5A557C58/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5CB25152/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5E697934/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/5F6F395B" Ref="C?"  Part="1" 
AR Path="/5F5829B3/5F6F395B" Ref="C912"  Part="1" 
F 0 "C912" H 7165 4500 50  0000 L CNN
F 1 "10uF" H 7165 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 7178 4250 50  0001 C CNN
F 3 "" H 7165 4500 50  0001 C CNN
F 4 "0402" H 6990 4500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 6990 4400 50  0000 R CNN "Voltage"
F 6 "X5R" H 6990 4300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 7140 4400 50  0001 C CNN "Digi-Key PN"
	1    7140 4400
	1    0    0    -1  
$EndComp
Connection ~ 6820 4590
Wire Wire Line
	6820 4590 7140 4590
$Comp
L power:GND #PWR0920
U 1 1 60696CA9
P 4220 4630
F 0 "#PWR0920" H 4220 4380 50  0001 C CNN
F 1 "GND" H 4220 4480 50  0000 C CNN
F 2 "" H 4220 4630 50  0000 C CNN
F 3 "" H 4220 4630 50  0000 C CNN
	1    4220 4630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C913
U 1 1 60696EDF
P 3900 4400
F 0 "C913" H 3925 4500 50  0000 L CNN
F 1 "0.1uF" H 3925 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3938 4250 50  0001 C CNN
F 3 "" H 3925 4500 50  0001 C CNN
F 4 "0402" H 3750 4500 50  0000 R CNN "display_footprint"
F 5 "50V" H 3750 4400 50  0000 R CNN "Voltage"
F 6 "X7R" H 3750 4300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H -10 -2480 50  0001 C CNN "Digi-Key PN"
	1    3900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4210 3900 4250
Connection ~ 4220 4210
Wire Wire Line
	4540 4210 4540 4250
Wire Wire Line
	3900 4210 4220 4210
Wire Wire Line
	4220 4170 4220 4210
Wire Wire Line
	3900 4590 3900 4550
Connection ~ 4220 4590
Wire Wire Line
	4540 4590 4540 4550
Wire Wire Line
	3900 4590 4220 4590
Wire Wire Line
	4220 4210 4540 4210
Wire Wire Line
	4220 4590 4540 4590
Wire Wire Line
	4220 4590 4220 4630
$Comp
L power:GND #PWR0922
U 1 1 60696EF5
P 5520 4630
F 0 "#PWR0922" H 5520 4380 50  0001 C CNN
F 1 "GND" H 5520 4480 50  0000 C CNN
F 2 "" H 5520 4630 50  0000 C CNN
F 3 "" H 5520 4630 50  0000 C CNN
	1    5520 4630
	1    0    0    -1  
$EndComp
$Comp
L Custom_Library:C_Custom C915
U 1 1 60696F03
P 5200 4400
F 0 "C915" H 5225 4500 50  0000 L CNN
F 1 "0.1uF" H 5225 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5238 4250 50  0001 C CNN
F 3 "" H 5225 4500 50  0001 C CNN
F 4 "0402" H 5050 4500 50  0000 R CNN "display_footprint"
F 5 "50V" H 5050 4400 50  0000 R CNN "Voltage"
F 6 "X7R" H 5050 4300 50  0000 R CNN "Dielectric"
F 7 "490-10698-1-ND" H 1290 -2480 50  0001 C CNN "Digi-Key PN"
	1    5200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4210 5200 4250
Wire Wire Line
	5520 4170 5520 4210
Wire Wire Line
	5200 4590 5200 4550
Wire Wire Line
	5520 4590 5520 4630
$Comp
L Custom_Library:C_Custom C?
U 1 1 60696F15
P 4540 4400
AR Path="/5CB7718D/60696F15" Ref="C?"  Part="1" 
AR Path="/5E0DC082/60696F15" Ref="C?"  Part="1" 
AR Path="/5E0F9110/60696F15" Ref="C?"  Part="1" 
AR Path="/5A557C58/60696F15" Ref="C?"  Part="1" 
AR Path="/5CB25152/60696F15" Ref="C?"  Part="1" 
AR Path="/5E697934/60696F15" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/60696F15" Ref="C?"  Part="1" 
AR Path="/5F5829B3/60696F15" Ref="C914"  Part="1" 
F 0 "C914" H 4565 4500 50  0000 L CNN
F 1 "10uF" H 4565 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4578 4250 50  0001 C CNN
F 3 "" H 4565 4500 50  0001 C CNN
F 4 "0402" H 4390 4500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 4390 4400 50  0000 R CNN "Voltage"
F 6 "X5R" H 4390 4300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 4540 4400 50  0001 C CNN "Digi-Key PN"
	1    4540 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0921
U 1 1 60696F1F
P 5520 4170
F 0 "#PWR0921" H 5520 4020 50  0001 C CNN
F 1 "+3.3V" H 5520 4310 50  0000 C CNN
F 2 "" H 5520 4170 50  0001 C CNN
F 3 "" H 5520 4170 50  0001 C CNN
	1    5520 4170
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0919
U 1 1 60696F29
P 4220 4170
F 0 "#PWR0919" H 4220 4020 50  0001 C CNN
F 1 "+3.3V" H 4220 4310 50  0000 C CNN
F 2 "" H 4220 4170 50  0001 C CNN
F 3 "" H 4220 4170 50  0001 C CNN
	1    4220 4170
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4210 5520 4210
Wire Wire Line
	5200 4590 5520 4590
Connection ~ 5520 4210
Wire Wire Line
	5520 4210 5840 4210
Connection ~ 5520 4590
Wire Wire Line
	5520 4590 5840 4590
Wire Wire Line
	5840 4210 5840 4250
Wire Wire Line
	5840 4590 5840 4550
$Comp
L Custom_Library:C_Custom C?
U 1 1 60696F3F
P 5840 4400
AR Path="/5CB7718D/60696F3F" Ref="C?"  Part="1" 
AR Path="/5E0DC082/60696F3F" Ref="C?"  Part="1" 
AR Path="/5E0F9110/60696F3F" Ref="C?"  Part="1" 
AR Path="/5A557C58/60696F3F" Ref="C?"  Part="1" 
AR Path="/5CB25152/60696F3F" Ref="C?"  Part="1" 
AR Path="/5E697934/60696F3F" Ref="C?"  Part="1" 
AR Path="/5EAE2F02/60696F3F" Ref="C?"  Part="1" 
AR Path="/5F5829B3/60696F3F" Ref="C916"  Part="1" 
F 0 "C916" H 5865 4500 50  0000 L CNN
F 1 "10uF" H 5865 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5878 4250 50  0001 C CNN
F 3 "" H 5865 4500 50  0001 C CNN
F 4 "0402" H 5690 4500 50  0000 R CNN "display_footprint"
F 5 "6.3V" H 5690 4400 50  0000 R CNN "Voltage"
F 6 "X5R" H 5690 4300 50  0000 R CNN "Dielectric"
F 7 "1276-1451-1-ND" H 5840 4400 50  0001 C CNN "Digi-Key PN"
	1    5840 4400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
