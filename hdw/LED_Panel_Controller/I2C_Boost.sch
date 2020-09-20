EESchema Schematic File Version 4
LIBS:LED_Panel_Controller-cache
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 13 33
Title ""
Date "2020-09-08"
Rev ""
Comp ""
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
$EndSCHEMATC
