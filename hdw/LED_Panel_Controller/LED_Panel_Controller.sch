EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 34
Title "LED Panel Controller"
Date "2021-03-31"
Rev "A"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3750 1220 500  150 
U 5F581B41
F0 "+12V Input" 50
F1 "POS12_Input.sch" 50
$EndSheet
$Sheet
S 3750 1570 500  150 
U 5F581B58
F0 "+12V Telemetry" 50
F1 "POS12_Telemetry.sch" 50
$EndSheet
$Sheet
S 3750 1920 500  150 
U 5F581B64
F0 "+3.3V Power Supply" 50
F1 "POS3P3_Power_Supply.sch" 50
$EndSheet
$Sheet
S 3750 2270 500  150 
U 5F581B77
F0 "+3.3V Telemetry" 50
F1 "POS3P3_Telemetry.sch" 50
$EndSheet
$Sheet
S 3750 2620 500  150 
U 5F581BA3
F0 "+5V Power Supply" 50
F1 "POS5_Power_Supply.sch" 50
$EndSheet
$Sheet
S 3750 2970 500  150 
U 5F581BB7
F0 "+5V Telemetry" 50
F1 "POS5_Telemetry.sch" 50
$EndSheet
$Sheet
S 3750 3320 500  150 
U 5F5829A6
F0 "PIC32MZ Programming" 50
F1 "PIC32MZ_Programming.sch" 50
$EndSheet
$Sheet
S 3750 3670 500  150 
U 5F5829B3
F0 "PIC32MZ Bypass" 50
F1 "PIC32MZ_Bypass.sch" 50
$EndSheet
$Sheet
S 3750 4020 500  150 
U 5F5829C2
F0 "PIC32MZ Clocking" 50
F1 "PIC32MZ_Clocking.sch" 50
$EndSheet
$Sheet
S 3750 4370 500  150 
U 5F5829D3
F0 "PIC32MZ" 50
F1 "PIC32MZ.sch" 50
$EndSheet
$Sheet
S 3750 4720 500  150 
U 5F5829EF
F0 "Config Hardstraps" 50
F1 "config_hardstraps.sch" 50
$EndSheet
$Sheet
S 3750 5070 500  150 
U 5F582A7C
F0 "I2C Boost" 50
F1 "I2C_Boost.sch" 50
$EndSheet
$Sheet
S 3750 5420 500  150 
U 5F582A92
F0 "Platform ETC" 50
F1 "Platform_ETC.sch" 50
$EndSheet
$Sheet
S 3750 5770 500  150 
U 5F582AA0
F0 "USB UART Bridge" 50
F1 "USB_UART_Bridge.sch" 50
$EndSheet
$Sheet
S 3750 6120 500  150 
U 5F7B4289
F0 "USB Telemetry" 50
F1 "USB_Telemetry.sch" 50
$EndSheet
$Sheet
S 3750 6470 500  150 
U 5F582E11
F0 "SD Card Slot" 50
F1 "SD_Card_Slot.sch" 50
$EndSheet
$Sheet
S 3750 6820 500  150 
U 5F582E44
F0 "MLVDS Port" 50
F1 "MLVDS_Port.sch" 50
$EndSheet
$Sheet
S 3750 7170 500  150 
U 5F582E4A
F0 "PGOOD LEDs" 50
F1 "PGOOD_LEDs.sch" 50
$EndSheet
$Sheet
S 3750 7520 500  150 
U 5F582E50
F0 "Status LEDs" 50
F1 "Status_LEDs.sch" 50
$EndSheet
$Sheet
S 7030 1220 500  150 
U 5F582E7C
F0 "Backup RTC" 50
F1 "Backup_RTC.sch" 50
$EndSheet
Text Notes 3570 920  0    250  ~ 50
LED Panel Controller
Text Notes 1290 1360 0    100  ~ 20
02. +12V Input
Text Notes 1290 1710 0    100  ~ 20
03. +12V Telemetry
Text Notes 1290 2060 0    100  ~ 20
04. +3.3V Power Supply
Text Notes 1290 2410 0    100  ~ 20
05. +3.3V Telemetry
Text Notes 1290 2760 0    100  ~ 20
06. +5V Power Supply
Text Notes 1290 3110 0    100  ~ 20
07. +5V Telemetry
Text Notes 1290 3460 0    100  ~ 20
08. PIC32MZ Programming
Text Notes 1290 3810 0    100  ~ 20
09. PIC32MZ Bypass
Text Notes 1290 4170 0    100  ~ 20
10. PIC32MZ Clocking
Text Notes 1290 4520 0    100  ~ 20
11. PIC32MZ
Text Notes 1290 4870 0    100  ~ 20
12. Config Hardstraps
Text Notes 1290 5220 0    100  ~ 20
13. I2C Boost
Text Notes 1290 5570 0    100  ~ 20
14. Platform ETC
Text Notes 1290 5920 0    100  ~ 20
15. USB UART Bridge
Text Notes 1290 6620 0    100  ~ 20
17. SD Card Slot
Text Notes 1290 6970 0    100  ~ 20
18. MLVDS Port
Text Notes 1290 7320 0    100  ~ 20
19. PGOOD LEDs
Text Notes 1290 7670 0    100  ~ 20
20. Status LEDs
Text Notes 5080 1370 0    100  ~ 20
21. Backup RTC
Text Notes 1290 1010 0    100  ~ 20
01. Table of Contents
$Sheet
S 7030 1570 500  150 
U 5F58356B
F0 "Pushbuttons" 50
F1 "Pushbuttons.sch" 50
$EndSheet
$Sheet
S 7030 1920 500  150 
U 5F583571
F0 "Mode LEDs" 50
F1 "Mode_LEDs.sch" 50
$EndSheet
$Sheet
S 7030 2270 500  150 
U 5F583577
F0 "SPI Flash 0" 50
F1 "SPI_Flash_0.sch" 50
$EndSheet
$Sheet
S 7030 2620 500  150 
U 5F58358C
F0 "SPI Flash 1" 50
F1 "SPI_Flash_1.sch" 50
$EndSheet
$Sheet
S 7030 2970 500  150 
U 5F583592
F0 "SPI Flash 2" 50
F1 "SPI_Flash_2.sch" 50
$EndSheet
$Sheet
S 7030 3320 500  150 
U 5F583598
F0 "SPI Flash 3" 50
F1 "SPI_Flash_3.sch" 50
$EndSheet
$Sheet
S 7030 3670 500  150 
U 5F58359E
F0 "SPI Flash 4" 50
F1 "SPI_Flash_4.sch" 50
$EndSheet
$Sheet
S 7030 4020 500  150 
U 5F5835A4
F0 "SPI Flash 5" 50
F1 "SPI_Flash_5.sch" 50
$EndSheet
$Sheet
S 7030 4370 500  150 
U 5F5835AA
F0 "SPI Flash 6" 50
F1 "SPI_Flash_6.sch" 50
$EndSheet
$Sheet
S 7030 4720 500  150 
U 5F5835B0
F0 "SPI Flash 7" 50
F1 "SPI_Flash_7.sch" 50
$EndSheet
Text Notes 5080 1720 0    100  ~ 20
22. Pushbuttons
Text Notes 5080 2070 0    100  ~ 20
23. Mode LEDs
Text Notes 5080 2420 0    100  ~ 20
24. SPI Flash 0
Text Notes 5080 2770 0    100  ~ 20
25. SPI Flash 1
Text Notes 5080 3120 0    100  ~ 20
26. SPI Flash 2
Text Notes 5080 3470 0    100  ~ 20
27. SPI Flash 3
Text Notes 5080 3820 0    100  ~ 20
28. SPI Flash 4
Text Notes 5080 4170 0    100  ~ 20
29. SPI Flash 5
Text Notes 5080 4520 0    100  ~ 20
30. SPI Flash 6
Text Notes 5080 4870 0    100  ~ 20
31. SPI Flash 7
$Sheet
S 7030 5070 500  150 
U 5F583BF6
F0 "Panel Level Shifters" 50
F1 "Panel_Level_Shifters.sch" 50
$EndSheet
$Sheet
S 7030 5420 500  150 
U 5F583BFC
F0 "Panel Connectors" 50
F1 "Panel_Connectors.sch" 50
$EndSheet
$Sheet
S 7030 5770 500  150 
U 5F583C02
F0 "Mechanical" 50
F1 "Mechanical.sch" 50
$EndSheet
Text Notes 5080 5220 0    100  ~ 20
32. Panel Level Shifters
Text Notes 5080 5570 0    100  ~ 20
33. Panel Connectors
Text Notes 5080 5920 0    100  ~ 20
34. Mechanical
Text Notes 1290 6270 0    100  ~ 20
16. USB Telemetry
$EndSCHEMATC
