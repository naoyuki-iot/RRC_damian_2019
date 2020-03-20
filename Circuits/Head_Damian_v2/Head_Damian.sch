EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Head_Damian-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR01
U 1 1 5C4830C5
P 2400 1250
F 0 "#PWR01" H 2400 1100 50  0001 C CNN
F 1 "+5V" H 2400 1400 50  0000 C CNN
F 2 "" H 2400 1250 50  0000 C CNN
F 3 "" H 2400 1250 50  0000 C CNN
	1    2400 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1050 800  1050
Wire Wire Line
	1100 1250 800  1250
Wire Wire Line
	800  1450 1100 1450
$Comp
L R R1
U 1 1 5C48315D
P 1250 1050
F 0 "R1" V 1330 1050 50  0000 C CNN
F 1 "2k" V 1250 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 1050 50  0001 C CNN
F 3 "" H 1250 1050 50  0000 C CNN
	1    1250 1050
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5C483184
P 1250 1250
F 0 "R2" V 1330 1250 50  0000 C CNN
F 1 "3k" V 1250 1250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 1250 50  0001 C CNN
F 3 "" H 1250 1250 50  0000 C CNN
	1    1250 1250
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5C4831A5
P 1250 1450
F 0 "R3" V 1330 1450 50  0000 C CNN
F 1 "2k" V 1250 1450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 1450 50  0001 C CNN
F 3 "" H 1250 1450 50  0000 C CNN
	1    1250 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 1050 1400 800 
Wire Wire Line
	1400 1250 1400 1350
Wire Wire Line
	1400 1450 1400 1900
$Comp
L PWR_FLAG #FLG02
U 1 1 5C4833E6
P 2400 1400
F 0 "#FLG02" H 2400 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 2400 1580 50  0000 C CNN
F 2 "" H 2400 1400 50  0000 C CNN
F 3 "" H 2400 1400 50  0000 C CNN
	1    2400 1400
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 5C483572
P 900 3250
F 0 "#FLG03" H 900 3345 50  0001 C CNN
F 1 "PWR_FLAG" H 900 3430 50  0000 C CNN
F 2 "" H 900 3250 50  0000 C CNN
F 3 "" H 900 3250 50  0000 C CNN
	1    900  3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1350 2600 1350
Wire Wire Line
	2400 1250 2400 1400
Connection ~ 2400 1350
$Comp
L CONN_01X01 P3
U 1 1 5C58F59B
P 1600 800
F 0 "P3" H 1600 900 50  0000 C CNN
F 1 "LED_R" V 1700 800 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 800 50  0001 C CNN
F 3 "" H 1600 800 50  0000 C CNN
	1    1600 800 
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 5C58F5CC
P 1600 1350
F 0 "P4" H 1600 1450 50  0000 C CNN
F 1 "LED_G" V 1700 1350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 1350 50  0001 C CNN
F 3 "" H 1600 1350 50  0000 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 5C58F5EF
P 1600 1900
F 0 "P5" H 1600 2000 50  0000 C CNN
F 1 "LED_B" V 1700 1900 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 1900 50  0001 C CNN
F 3 "" H 1600 1900 50  0000 C CNN
	1    1600 1900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P9
U 1 1 5C58F691
P 1900 2700
F 0 "P9" H 1900 2800 50  0000 C CNN
F 1 "LED_Anode" V 2000 2700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1900 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0000 C CNN
	1    1900 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 1350 3700 1350
Text Label 800  1050 0    60   ~ 0
LED_R
Text Label 800  1250 0    60   ~ 0
LED_G
Text Label 800  1450 0    60   ~ 0
LED_B
Text Label 3450 1350 0    60   ~ 0
SPK+
Text Label 3450 1450 0    60   ~ 0
SPK-
Wire Wire Line
	3250 1450 3700 1450
Text Label 2600 1350 2    60   ~ 0
+5V
$Comp
L CONN_01X04 P1
U 1 1 5C590278
P 2550 1950
F 0 "P1" H 2550 2250 50  0000 C CNN
F 1 "Body_Damian" V 2650 1950 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_S4B-PH-K_04x2.00mm_Angled" H 2550 1950 50  0001 C CNN
F 3 "" H 2550 1950 50  0000 C CNN
	1    2550 1950
	-1   0    0    1   
$EndComp
Text Label 3050 1800 2    60   ~ 0
+5V
Text Label 3050 2100 2    60   ~ 0
LED_R
Text Label 3050 2000 2    60   ~ 0
LED_G
Text Label 3050 1900 2    60   ~ 0
LED_B
Wire Wire Line
	2750 1800 3050 1800
Wire Wire Line
	2750 2100 3050 2100
Wire Wire Line
	2750 2000 3050 2000
Wire Wire Line
	2750 1900 3050 1900
$Comp
L CONN_01X02 P2
U 1 1 5C59080F
P 3900 1400
F 0 "P2" H 3900 1550 50  0000 C CNN
F 1 "Body_Damian" V 4000 1400 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_S3B-PH-K_03x2.00mm_Angled" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0000 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5C48311A
P 900 3400
F 0 "#PWR04" H 900 3150 50  0001 C CNN
F 1 "GND" H 900 3250 50  0000 C CNN
F 2 "" H 900 3400 50  0000 C CNN
F 3 "" H 900 3400 50  0000 C CNN
	1    900  3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3250 900  3400
Text Label 1100 3300 2    60   ~ 0
GND
Wire Wire Line
	900  3300 1100 3300
Connection ~ 900  3300
Wire Wire Line
	1100 2400 800  2400
Wire Wire Line
	1100 2600 800  2600
Wire Wire Line
	800  2800 1100 2800
$Comp
L R R4
U 1 1 5C591A00
P 1250 2400
F 0 "R4" V 1330 2400 50  0000 C CNN
F 1 "2k" V 1250 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 2400 50  0001 C CNN
F 3 "" H 1250 2400 50  0000 C CNN
	1    1250 2400
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5C591A06
P 1250 2600
F 0 "R5" V 1330 2600 50  0000 C CNN
F 1 "3k" V 1250 2600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 2600 50  0001 C CNN
F 3 "" H 1250 2600 50  0000 C CNN
	1    1250 2600
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5C591A0C
P 1250 2800
F 0 "R6" V 1330 2800 50  0000 C CNN
F 1 "2k" V 1250 2800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1180 2800 50  0001 C CNN
F 3 "" H 1250 2800 50  0000 C CNN
	1    1250 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2400 1400 2150
Wire Wire Line
	1400 2600 1400 2700
Wire Wire Line
	1400 2800 1400 3250
$Comp
L CONN_01X01 P6
U 1 1 5C591A15
P 1600 2150
F 0 "P6" H 1600 2250 50  0000 C CNN
F 1 "LED_R" V 1700 2150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 2150 50  0001 C CNN
F 3 "" H 1600 2150 50  0000 C CNN
	1    1600 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P7
U 1 1 5C591A1B
P 1600 2700
F 0 "P7" H 1600 2800 50  0000 C CNN
F 1 "LED_G" V 1700 2700 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0000 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P8
U 1 1 5C591A21
P 1600 3250
F 0 "P8" H 1600 3350 50  0000 C CNN
F 1 "LED_B" V 1700 3250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1600 3250 50  0001 C CNN
F 3 "" H 1600 3250 50  0000 C CNN
	1    1600 3250
	1    0    0    -1  
$EndComp
Text Label 800  2400 0    60   ~ 0
LED_R
Text Label 800  2600 0    60   ~ 0
LED_G
Text Label 800  2800 0    60   ~ 0
LED_B
$Comp
L CONN_01X01 P10
U 1 1 5C591C58
P 1950 1350
F 0 "P10" H 1950 1450 50  0000 C CNN
F 1 "LED_Anode" V 2050 1350 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x01_Pitch2.54mm" H 1950 1350 50  0001 C CNN
F 3 "" H 1950 1350 50  0000 C CNN
	1    1950 1350
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 1350 2200 2700
Wire Wire Line
	2200 2700 2100 2700
Connection ~ 2200 1350
$Comp
L SPEAKER SP1
U 1 1 5C6BECDD
P 2950 1350
F 0 "SP1" H 2850 1600 50  0000 C CNN
F 1 "SPEAKER" H 2850 1100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2950 1350 50  0001 C CNN
F 3 "" H 2950 1350 50  0000 C CNN
	1    2950 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3250 1250 3250 1350
$EndSCHEMATC
