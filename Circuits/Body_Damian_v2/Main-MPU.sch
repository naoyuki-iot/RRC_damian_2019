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
LIBS:Main-MPU-cache
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
L CONN_01X04 P1
U 1 1 59673DB1
P 7300 2600
F 0 "P1" H 7300 2850 50  0000 C CNN
F 1 "Serial" V 7400 2600 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B4B-PH-K_04x2.00mm_Straight" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0000 C CNN
	1    7300 2600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X05 P2
U 1 1 59673DD4
P 7300 3350
F 0 "P2" H 7300 3650 50  0000 C CNN
F 1 "Write" V 7400 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 7300 3350 50  0001 C CNN
F 3 "" H 7300 3350 50  0000 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 596740A9
P 6450 4300
F 0 "SW1" H 6600 4410 50  0000 C CNN
F 1 "SW_PUSH" H 6450 4220 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h7.3mm" H 6450 4300 50  0001 C CNN
F 3 "" H 6450 4300 50  0000 C CNN
	1    6450 4300
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 596740E4
P 6150 4100
F 0 "R2" V 6230 4100 50  0000 C CNN
F 1 "1k" V 6150 4100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6080 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0000 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C6
U 1 1 59674123
P 6150 4450
F 0 "C6" H 6160 4520 50  0000 L CNN
F 1 "1uF" H 6160 4370 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0000 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5967419D
P 6150 2700
F 0 "R1" V 6230 2700 50  0000 C CNN
F 1 "1k" V 6150 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6080 2700 50  0001 C CNN
F 3 "" H 6150 2700 50  0000 C CNN
	1    6150 2700
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 59674354
P 3400 2350
F 0 "#PWR01" H 3400 2200 50  0001 C CNN
F 1 "+5V" H 3400 2490 50  0000 C CNN
F 2 "" H 3400 2350 50  0000 C CNN
F 3 "" H 3400 2350 50  0000 C CNN
	1    3400 2350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 596745B1
P 3400 3650
F 0 "C5" H 3410 3720 50  0000 L CNN
F 1 "1uF" H 3410 3570 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 3400 3650 50  0001 C CNN
F 3 "" H 3400 3650 50  0000 C CNN
	1    3400 3650
	1    0    0    -1  
$EndComp
Text Label 5700 2850 2    60   ~ 0
MISO
Text Label 7650 4800 0    60   ~ 0
+5V
Text Label 6800 3550 0    60   ~ 0
GND
$Comp
L Crystal Y1
U 1 1 5967543A
P 6050 3050
F 0 "Y1" H 6050 3200 50  0000 C CNN
F 1 "Crystal" H 6050 2900 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-4H_Vertical" H 6050 3050 50  0001 C CNN
F 3 "" H 6050 3050 50  0000 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
Text Label 5650 4050 2    60   ~ 0
Rx
Text Label 6800 3350 0    60   ~ 0
Rx
Text Label 6800 3250 0    60   ~ 0
Tx
Text Label 5650 4150 2    60   ~ 0
Tx
Text Label 6800 3150 0    60   ~ 0
N_Rst
Text Label 5750 3900 2    60   ~ 0
N_Rst
$Comp
L +5V #PWR02
U 1 1 59675D4C
P 6600 3400
F 0 "#PWR02" H 6600 3250 50  0001 C CNN
F 1 "+5V" H 6600 3540 50  0000 C CNN
F 2 "" H 6600 3400 50  0000 C CNN
F 3 "" H 6600 3400 50  0000 C CNN
	1    6600 3400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59675D52
P 6600 3600
F 0 "#PWR03" H 6600 3350 50  0001 C CNN
F 1 "GND" H 6600 3450 50  0000 C CNN
F 2 "" H 6600 3600 50  0000 C CNN
F 3 "" H 6600 3600 50  0000 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 59675D58
P 6600 3500
F 0 "C1" H 6610 3570 50  0000 L CNN
F 1 "1uF" H 6610 3420 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6600 3500 50  0001 C CNN
F 3 "" H 6600 3500 50  0000 C CNN
	1    6600 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59675F97
P 6700 2700
F 0 "#PWR04" H 6700 2450 50  0001 C CNN
F 1 "GND" H 6700 2550 50  0000 C CNN
F 2 "" H 6700 2700 50  0000 C CNN
F 3 "" H 6700 2700 50  0000 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5967601B
P 5850 3200
F 0 "C2" H 5860 3270 50  0000 L CNN
F 1 "22pF" H 5860 3120 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5850 3200 50  0001 C CNN
F 3 "" H 5850 3200 50  0000 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5967606A
P 6250 3200
F 0 "C3" H 6260 3270 50  0000 L CNN
F 1 "22pF" H 6260 3120 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6250 3200 50  0001 C CNN
F 3 "" H 6250 3200 50  0000 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
Text Label 5800 3150 2    60   ~ 0
Xtal
Text Label 6500 3050 2    60   ~ 0
Xtal
$Comp
L GND #PWR05
U 1 1 59676ABC
P 6050 3350
F 0 "#PWR05" H 6050 3100 50  0001 C CNN
F 1 "GND" H 6050 3200 50  0000 C CNN
F 2 "" H 6050 3350 50  0000 C CNN
F 3 "" H 6050 3350 50  0000 C CNN
	1    6050 3350
	1    0    0    -1  
$EndComp
Text Label 6800 2650 0    60   ~ 0
+5V
Text Label 6800 2750 0    60   ~ 0
GND
Text Label 6800 2450 0    60   ~ 0
Tx
Text Label 6800 2550 0    60   ~ 0
Rx
Text Label 5800 4300 0    60   ~ 0
N_Rst
$Comp
L +5V #PWR06
U 1 1 5967770C
P 6150 3950
F 0 "#PWR06" H 6150 3800 50  0001 C CNN
F 1 "+5V" H 6150 4090 50  0000 C CNN
F 2 "" H 6150 3950 50  0000 C CNN
F 3 "" H 6150 3950 50  0000 C CNN
	1    6150 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 59677740
P 6150 4600
F 0 "#PWR07" H 6150 4350 50  0001 C CNN
F 1 "GND" H 6150 4450 50  0000 C CNN
F 2 "" H 6150 4600 50  0000 C CNN
F 3 "" H 6150 4600 50  0000 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG08
U 1 1 59677CF1
P 3100 2750
F 0 "#FLG08" H 3100 2845 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 2930 50  0000 C CNN
F 2 "" H 3100 2750 50  0000 C CNN
F 3 "" H 3100 2750 50  0000 C CNN
	1    3100 2750
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG09
U 1 1 59677D25
P 3100 4650
F 0 "#FLG09" H 3100 4745 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 4830 50  0000 C CNN
F 2 "" H 3100 4650 50  0000 C CNN
F 3 "" H 3100 4650 50  0000 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59677E47
P 3400 4650
F 0 "#PWR010" H 3400 4400 50  0001 C CNN
F 1 "GND" H 3400 4500 50  0000 C CNN
F 2 "" H 3400 4650 50  0000 C CNN
F 3 "" H 3400 4650 50  0000 C CNN
	1    3400 4650
	1    0    0    -1  
$EndComp
Text Label 2950 3000 0    60   ~ 0
PowerLED
$Comp
L R R5
U 1 1 5A64AA0E
P 7150 2150
F 0 "R5" V 7230 2150 50  0000 C CNN
F 1 "1k" V 7150 2150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7080 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0000 C CNN
	1    7150 2150
	0    1    1    0   
$EndComp
Text Label 6600 2150 0    60   ~ 0
PowerLED
$Comp
L GND #PWR011
U 1 1 5A64AB9F
P 7950 2150
F 0 "#PWR011" H 7950 1900 50  0001 C CNN
F 1 "GND" H 7950 2000 50  0000 C CNN
F 2 "" H 7950 2150 50  0000 C CNN
F 3 "" H 7950 2150 50  0000 C CNN
	1    7950 2150
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-P IC1
U 1 1 5BBB25CF
P 4500 3550
F 0 "IC1" H 3750 4800 50  0000 L BNN
F 1 "ATMEGA328P-P" H 4900 2150 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 4500 3550 50  0001 C CIN
F 3 "" H 4500 3550 50  0000 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 59674162
P 6500 2700
F 0 "D1" H 6500 2800 50  0000 C CNN
F 1 "Status" H 6500 2600 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 6500 2700 50  0001 C CNN
F 3 "" H 6500 2700 50  0000 C CNN
	1    6500 2700
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5A64A9AB
P 7600 2150
F 0 "D4" H 7600 2250 50  0000 C CNN
F 1 "Power" H 7600 2050 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 7600 2150 50  0001 C CNN
F 3 "" H 7600 2150 50  0000 C CNN
	1    7600 2150
	-1   0    0    1   
$EndComp
Text Label 5650 2650 2    60   ~ 0
SS
Text Label 5700 2750 2    60   ~ 0
MOSI
Text Label 5650 2950 2    60   ~ 0
SCK
$Comp
L CONN_01X09 P3
U 1 1 5C488381
P 7400 4150
F 0 "P3" H 7400 4650 50  0000 C CNN
F 1 "YMF825" V 7500 4150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x09_Pitch2.54mm" H 7400 4150 50  0001 C CNN
F 3 "" H 7400 4150 50  0000 C CNN
	1    7400 4150
	1    0    0    -1  
$EndComp
Text Label 6900 3950 0    60   ~ 0
N_Rst
Text Label 6900 4050 0    60   ~ 0
+5V
Text Label 6900 4150 0    60   ~ 0
GND
Text Label 6900 4250 0    60   ~ 0
SCK
Text Label 6900 4350 0    60   ~ 0
MISO
Text Label 6900 4450 0    60   ~ 0
MOSI
Text Label 6900 4550 0    60   ~ 0
SS
NoConn ~ 7200 3750
NoConn ~ 7200 3850
$Comp
L CONN_01X02 P4
U 1 1 5C48A5CB
P 7750 4200
F 0 "P4" H 7750 4350 50  0000 C CNN
F 1 "YMF825_SPK" V 7850 4200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 7750 4200 50  0001 C CNN
F 3 "" H 7750 4200 50  0000 C CNN
	1    7750 4200
	-1   0    0    -1  
$EndComp
Text Label 5650 4550 2    60   ~ 0
D5
Text Label 5650 4650 2    60   ~ 0
D6
Text Label 5650 2450 2    60   ~ 0
D8
Text Label 5650 3500 2    60   ~ 0
A2
Text Label 5650 3600 2    60   ~ 0
A3
Text Label 5650 3700 2    60   ~ 0
SDA
Text Label 5650 3800 2    60   ~ 0
SCL
$Comp
L CONN_01X08 P6
U 1 1 5C4B28FE
P 8250 3550
F 0 "P6" H 8250 4300 50  0000 C CNN
F 1 "AVR_2" V 8350 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0000 C CNN
	1    8250 3550
	-1   0    0    -1  
$EndComp
Text Label 7550 2600 0    60   ~ 0
N_Rst
Text Label 7600 2900 0    60   ~ 0
D2
Text Label 7600 3000 0    60   ~ 0
D3
Text Label 7600 3100 0    60   ~ 0
D4
Text Label 7600 3200 0    60   ~ 0
+5V
Text Label 7600 3300 0    60   ~ 0
GND
Text Label 7600 3600 0    60   ~ 0
D5
Text Label 7600 3700 0    60   ~ 0
D6
Text Label 7600 3800 0    60   ~ 0
D7
Text Label 7600 3900 0    60   ~ 0
D8
Text Label 8650 2600 2    60   ~ 0
SCL
Text Label 8650 2700 2    60   ~ 0
SDA
Text Label 8650 2800 2    60   ~ 0
A3
Text Label 8650 2900 2    60   ~ 0
A2
Text Label 8650 3000 2    60   ~ 0
A1
Text Label 8650 3100 2    60   ~ 0
A0
Text Label 8650 3200 2    60   ~ 0
GND
Text Label 8650 3300 2    60   ~ 0
AREF
Text Label 8650 3400 2    60   ~ 0
+5V
Text Label 8650 3500 2    60   ~ 0
SCK
Text Label 8650 3600 2    60   ~ 0
MISO
Text Label 8650 3700 2    60   ~ 0
MOSI
Text Label 8650 3800 2    60   ~ 0
SS
Text Label 8650 3900 2    60   ~ 0
D9
Text Label 5650 3400 2    60   ~ 0
A1
Text Label 5650 3300 2    60   ~ 0
A0
Text Label 5650 4450 2    60   ~ 0
D4
Text Label 5650 4350 2    60   ~ 0
D3
Text Label 5650 4250 2    60   ~ 0
D2
Text Label 5650 4750 2    60   ~ 0
D7
Text Label 5650 2550 2    60   ~ 0
D9
Text Label 7600 2700 0    60   ~ 0
Rx
Text Label 7600 2800 0    60   ~ 0
Tx
Text Label 8250 4150 2    60   ~ 0
SPK+
Text Label 8250 4250 2    60   ~ 0
SPK-
Text Label 3450 3050 0    60   ~ 0
AREF
$Comp
L CONN_01X04 P7
U 1 1 5C4CF1FF
P 8050 4650
F 0 "P7" H 8050 4950 50  0000 C CNN
F 1 "Head_LED" V 8150 4650 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_S4B-PH-K_04x2.00mm_Angled" H 8050 4650 50  0001 C CNN
F 3 "" H 8050 4650 50  0000 C CNN
	1    8050 4650
	1    0    0    -1  
$EndComp
Text Label 7700 4500 0    60   ~ 0
D6
Text Label 7700 4600 0    60   ~ 0
D7
Text Label 7700 4700 0    60   ~ 0
D8
$Comp
L CONN_01X08 P5
U 1 1 5C5312AA
P 7950 2950
F 0 "P5" H 7950 3400 50  0000 C CNN
F 1 "AVR_1" V 8050 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 7950 2950 50  0001 C CNN
F 3 "" H 7950 2950 50  0000 C CNN
	1    7950 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P9
U 1 1 5C5314C5
P 7950 3750
F 0 "P9" H 7950 4000 50  0000 C CNN
F 1 "AVR_3" V 8050 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7950 3750 50  0001 C CNN
F 3 "" H 7950 3750 50  0000 C CNN
	1    7950 3750
	1    0    0    -1  
$EndComp
Text Label 6800 3450 0    60   ~ 0
+5V
$Comp
L CONN_01X02 P10
U 1 1 5C6BFDF0
P 8450 4200
F 0 "P10" H 8450 4350 50  0000 C CNN
F 1 "Head_Speaker" V 8550 4200 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_S3B-PH-K_03x2.00mm_Angled" H 8450 4200 50  0001 C CNN
F 3 "" H 8450 4200 50  0000 C CNN
	1    8450 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X04 P11
U 1 1 5C6CB2E2
P 8900 2750
F 0 "P11" H 8900 3000 50  0000 C CNN
F 1 "JoyStick" V 9000 2750 50  0000 C CNN
F 2 "Connectors_JST:JST_PH_B4B-PH-K_04x2.00mm_Straight" H 8900 2750 50  0001 C CNN
F 3 "" H 8900 2750 50  0000 C CNN
	1    8900 2750
	-1   0    0    -1  
$EndComp
Text Label 9300 2700 2    60   ~ 0
+5V
Text Label 9300 2600 2    60   ~ 0
GND
Text Label 9300 2800 2    60   ~ 0
A2
Text Label 9300 2900 2    60   ~ 0
A3
$Comp
L CP C7
U 1 1 5C6D0DFB
P 9600 2250
F 0 "C7" H 9625 2350 50  0000 L CNN
F 1 "47uF" H 9625 2150 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.00mm" H 9638 2100 50  0001 C CNN
F 3 "" H 9600 2250 50  0000 C CNN
	1    9600 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5C6D262C
P 8450 2250
F 0 "C4" H 8460 2320 50  0000 L CNN
F 1 "0.1uF" H 8460 2170 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 8450 2250 50  0001 C CNN
F 3 "" H 8450 2250 50  0000 C CNN
	1    8450 2250
	1    0    0    -1  
$EndComp
Connection ~ 9600 2400
Wire Wire Line
	9850 2300 10050 2300
Connection ~ 9600 2100
Wire Wire Line
	9500 2100 10050 2100
Wire Wire Line
	8450 2100 8450 2150
Connection ~ 8450 2400
Wire Wire Line
	8450 2350 8450 2400
Connection ~ 8450 2100
Wire Wire Line
	8200 2400 9850 2400
Wire Wire Line
	9100 2900 9300 2900
Wire Wire Line
	9100 2800 9300 2800
Wire Wire Line
	9300 2600 9100 2600
Wire Wire Line
	9100 2700 9300 2700
Wire Wire Line
	7100 3450 6800 3450
Wire Wire Line
	7700 4700 7850 4700
Wire Wire Line
	7850 4600 7700 4600
Wire Wire Line
	7700 4500 7850 4500
Connection ~ 3400 2450
Wire Wire Line
	3600 2450 3400 2450
Wire Wire Line
	3450 3050 3600 3050
Wire Wire Line
	7600 2800 7750 2800
Wire Wire Line
	7750 2700 7600 2700
Wire Wire Line
	5500 4750 5650 4750
Wire Wire Line
	5500 4450 5650 4450
Wire Wire Line
	5500 4350 5650 4350
Wire Wire Line
	5500 4250 5650 4250
Wire Wire Line
	5650 3400 5500 3400
Wire Wire Line
	5500 3300 5650 3300
Wire Wire Line
	8650 3900 8450 3900
Wire Wire Line
	8650 3800 8450 3800
Wire Wire Line
	8650 3700 8450 3700
Wire Wire Line
	8650 3600 8450 3600
Wire Wire Line
	8650 3500 8450 3500
Wire Wire Line
	8650 3400 8450 3400
Wire Wire Line
	8650 3300 8450 3300
Wire Wire Line
	8650 3200 8450 3200
Wire Wire Line
	8650 3100 8450 3100
Wire Wire Line
	8650 3000 8450 3000
Wire Wire Line
	8650 2900 8450 2900
Wire Wire Line
	8650 2800 8450 2800
Wire Wire Line
	8650 2700 8450 2700
Wire Wire Line
	8650 2600 8450 2600
Wire Wire Line
	7600 3900 7750 3900
Wire Wire Line
	7750 3800 7600 3800
Wire Wire Line
	7600 3700 7750 3700
Wire Wire Line
	7750 3600 7600 3600
Wire Wire Line
	7600 3300 7750 3300
Wire Wire Line
	7750 3200 7600 3200
Wire Wire Line
	7750 3100 7600 3100
Wire Wire Line
	7600 3000 7750 3000
Wire Wire Line
	7750 2900 7600 2900
Wire Wire Line
	7750 2600 7550 2600
Wire Wire Line
	5500 3800 5650 3800
Wire Wire Line
	5650 3700 5500 3700
Wire Wire Line
	5500 3500 5650 3500
Wire Wire Line
	5500 4650 5650 4650
Wire Wire Line
	5500 4550 5650 4550
Wire Wire Line
	7950 4250 8250 4250
Wire Wire Line
	7950 4150 8250 4150
Wire Wire Line
	6900 4550 7200 4550
Wire Wire Line
	6900 4450 7200 4450
Wire Wire Line
	6900 4350 7200 4350
Wire Wire Line
	6900 4250 7200 4250
Wire Wire Line
	6900 4150 7200 4150
Wire Wire Line
	6900 4050 7200 4050
Wire Wire Line
	6900 3950 7200 3950
Wire Wire Line
	5500 2950 5650 2950
Wire Wire Line
	5500 2750 5700 2750
Wire Wire Line
	5500 2650 5650 2650
Wire Wire Line
	5500 3600 5650 3600
Wire Wire Line
	7800 2150 7950 2150
Wire Wire Line
	7300 2150 7400 2150
Wire Wire Line
	7000 2150 6600 2150
Connection ~ 3400 3000
Wire Wire Line
	3400 3000 2950 3000
Wire Wire Line
	5900 2700 6000 2700
Wire Wire Line
	5500 2850 5700 2850
Connection ~ 3400 4650
Connection ~ 3400 2750
Wire Wire Line
	6150 4550 6150 4600
Wire Wire Line
	6150 4600 6750 4600
Wire Wire Line
	6750 4600 6750 4300
Wire Wire Line
	6150 4300 5800 4300
Connection ~ 6150 4300
Wire Wire Line
	6150 4250 6150 4350
Wire Wire Line
	7100 2750 6800 2750
Wire Wire Line
	7100 2650 6800 2650
Wire Wire Line
	7100 2550 6800 2550
Wire Wire Line
	7100 2450 6800 2450
Connection ~ 6050 3350
Connection ~ 6250 3050
Wire Wire Line
	5500 3150 5800 3150
Wire Wire Line
	6200 3050 6500 3050
Wire Wire Line
	6250 3100 6250 3050
Wire Wire Line
	6250 3350 6250 3300
Wire Wire Line
	5850 3350 6250 3350
Wire Wire Line
	5850 3300 5850 3350
Connection ~ 5850 3050
Wire Wire Line
	5850 3050 5850 3100
Wire Wire Line
	5500 3050 5900 3050
Wire Wire Line
	5750 3900 5500 3900
Wire Wire Line
	7100 3150 6800 3150
Wire Wire Line
	7100 3250 6800 3250
Wire Wire Line
	7100 3350 6800 3350
Wire Wire Line
	5500 4150 5650 4150
Wire Wire Line
	5500 4050 5650 4050
Wire Wire Line
	7100 3550 6800 3550
Wire Wire Line
	7850 4800 7650 4800
Wire Wire Line
	3600 4650 3600 4750
Wire Wire Line
	3100 4650 3600 4650
Wire Wire Line
	3400 3750 3400 4650
Wire Wire Line
	3100 2750 3600 2750
Wire Wire Line
	3400 2350 3400 3550
Text Label 9850 2200 0    60   ~ 0
A0
Wire Wire Line
	9850 2200 10050 2200
Wire Wire Line
	8200 2100 8700 2100
Text Label 8200 2100 0    60   ~ 0
+5V
Text Label 8200 2400 0    60   ~ 0
GND
$Comp
L LM7806CT U1
U 1 1 5C6DD5B4
P 9100 2150
F 0 "U1" H 8900 2350 50  0000 C CNN
F 1 "TA48M033F" H 9100 2350 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-251_IPAK_Vertical" H 9100 2250 50  0000 C CIN
F 3 "" H 9100 2150 50  0000 C CNN
	1    9100 2150
	1    0    0    -1  
$EndComp
Connection ~ 9100 2400
Text Label 10050 2100 2    60   ~ 0
+3.3V
Text Label 10050 2300 2    60   ~ 0
GND
Wire Wire Line
	9850 2400 9850 2300
$Comp
L DIL6 P8
U 1 1 5C6DFB50
P 10400 2200
F 0 "P8" H 10400 2400 50  0000 C CNN
F 1 "Press" V 10400 2200 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W10.16mm" H 10400 2200 50  0001 C CNN
F 3 "" H 10400 2200 50  0000 C CNN
	1    10400 2200
	-1   0    0    -1  
$EndComp
NoConn ~ 10750 2100
NoConn ~ 10750 2200
NoConn ~ 10750 2300
Wire Wire Line
	5500 2550 5650 2550
Wire Wire Line
	5500 2450 5650 2450
Text Label 5900 2700 0    60   ~ 0
D5
$Comp
L CONN_01X04 P12
U 1 1 5C6D67C9
P 8900 3250
F 0 "P12" H 8900 3500 50  0000 C CNN
F 1 "OLED_Display" V 9000 3250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04_Pitch2.54mm" H 8900 3250 50  0001 C CNN
F 3 "" H 8900 3250 50  0000 C CNN
	1    8900 3250
	-1   0    0    -1  
$EndComp
Text Label 9300 3200 2    60   ~ 0
+5V
Text Label 9300 3100 2    60   ~ 0
GND
Text Label 9300 3300 2    60   ~ 0
SCL
Text Label 9300 3400 2    60   ~ 0
SDA
Wire Wire Line
	9100 3400 9300 3400
Wire Wire Line
	9100 3300 9300 3300
Wire Wire Line
	9300 3100 9100 3100
Wire Wire Line
	9100 3200 9300 3200
$Comp
L CONN_01X02 P13
U 1 1 5C6D78E4
P 8250 2650
F 0 "P13" H 8250 2800 50  0000 C CNN
F 1 "AVR_4" V 8350 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8250 2650 50  0001 C CNN
F 3 "" H 8250 2650 50  0000 C CNN
	1    8250 2650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X04 P14
U 1 1 5C6D8E0C
P 8250 2950
F 0 "P14" H 8250 3150 50  0000 C CNN
F 1 "AVR_5" V 8350 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8250 2950 50  0001 C CNN
F 3 "" H 8250 2950 50  0000 C CNN
	1    8250 2950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X08 P15
U 1 1 5C6E0E68
P 8900 4000
F 0 "P15" H 8900 4450 50  0000 C CNN
F 1 "MPU6050" V 9000 4000 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x08_Pitch2.54mm" H 8900 4000 50  0001 C CNN
F 3 "" H 8900 4000 50  0000 C CNN
	1    8900 4000
	-1   0    0    -1  
$EndComp
Text Label 9300 3650 2    60   ~ 0
+5V
Text Label 9300 3750 2    60   ~ 0
GND
Text Label 9300 3850 2    60   ~ 0
SCL
Text Label 9300 3950 2    60   ~ 0
SDA
Text Label 9300 4350 2    60   ~ 0
N_Rst
Wire Wire Line
	9100 3650 9300 3650
Wire Wire Line
	9100 3750 9300 3750
Wire Wire Line
	9100 3850 9300 3850
Wire Wire Line
	9100 3950 9300 3950
Wire Wire Line
	9100 4350 9300 4350
NoConn ~ 9100 4050
NoConn ~ 9100 4150
NoConn ~ 9100 4250
$EndSCHEMATC
