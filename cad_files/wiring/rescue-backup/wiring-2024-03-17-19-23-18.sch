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
LIBS:wiring-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MM7D Air quality measuring device"
Date "2020-06-20"
Rev "200620"
Comp "Pozsar Zsolt - http://www.szerafingomba.hu"
Comment1 "Internal wiring"
Comment2 ""
Comment3 ""
Comment4 "Draw no.: 59/12/6"
$EndDescr
$Comp
L BNC P1
U 1 1 5F0F33AE
P 4550 3100
F 0 "P1" H 4550 3300 50  0000 C CNN
F 1 "SN10M 5.5/2.1" V 4660 3040 50  0001 C CNN
F 2 "" H 4550 3100 50  0000 C CNN
F 3 "" H 4550 3100 50  0000 C CNN
	1    4550 3100
	-1   0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5F0F33F6
P 4750 3550
F 0 "C1" V 4550 3500 50  0000 L CNN
F 1 "100n" V 4950 3450 50  0000 L CNN
F 2 "" H 4788 3400 50  0000 C CNN
F 3 "" H 4750 3550 50  0000 C CNN
	1    4750 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P101
U 1 1 5F0F3457
P 4600 4450
F 0 "P101" V 4750 4450 50  0000 C CNN
F 1 "CONN_01X02" V 4700 4450 50  0001 C CNN
F 2 "" H 4600 4450 50  0000 C CNN
F 3 "" H 4600 4450 50  0000 C CNN
	1    4600 4450
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X02 P102
U 1 1 5F0F3486
P 5600 4450
F 0 "P102" V 5750 4450 50  0000 C CNN
F 1 "CONN_01X02" V 5700 4450 50  0001 C CNN
F 2 "" H 5600 4450 50  0000 C CNN
F 3 "" H 5600 4450 50  0000 C CNN
	1    5600 4450
	0    -1   1    0   
$EndComp
$Comp
L DB9 P2
U 1 1 5F0F34AD
P 6650 3100
F 0 "P2" V 6650 3750 50  0000 C CNN
F 1 "DB9F" H 6650 2550 50  0001 C CNN
F 2 "" H 6650 3100 50  0000 C CNN
F 3 "" H 6650 3100 50  0000 C CNN
	1    6650 3100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X06 U101-JP1
U 1 1 5F0F34CC
P 6800 4450
F 0 "U101-JP1" V 6950 4450 50  0000 C CNN
F 1 "CONN_01X06" V 6950 4450 50  0001 C CNN
F 2 "" H 6800 4450 50  0000 C CNN
F 3 "" H 6800 4450 50  0000 C CNN
	1    6800 4450
	0    1    1    0   
$EndComp
$Comp
L Speaker_Crystal LS1
U 1 1 5F0F34FF
P 5550 3750
F 0 "LS1" V 5775 3775 50  0000 R CNN
F 1 "Piezo speaker" H 5575 3900 50  0001 R CNN
F 2 "" H 5515 3700 50  0000 C CNN
F 3 "" H 5515 3700 50  0000 C CNN
	1    5550 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3300 4550 4250
Wire Wire Line
	4600 3550 4550 3550
Connection ~ 4550 3550
Wire Wire Line
	4650 4250 4650 4200
Wire Wire Line
	4950 4200 4650 4200
Wire Wire Line
	4950 3100 4950 4200
Wire Wire Line
	4950 3550 4900 3550
Wire Wire Line
	4950 3100 4700 3100
Connection ~ 4950 3550
Wire Wire Line
	5550 4250 5550 3950
Wire Wire Line
	5650 3950 5650 4250
Wire Wire Line
	6950 4250 6950 3900
Wire Wire Line
	6950 3900 6650 3900
Wire Wire Line
	6650 3900 6650 3550
Wire Wire Line
	6850 3550 6850 4250
Wire Wire Line
	6550 4250 6550 3900
Wire Wire Line
	6550 3900 6250 3900
Wire Wire Line
	6250 3900 6250 3550
NoConn ~ 6650 4250
NoConn ~ 6750 4250
NoConn ~ 7050 4250
NoConn ~ 6350 3550
NoConn ~ 6450 3550
NoConn ~ 6550 3550
NoConn ~ 6750 3550
NoConn ~ 6950 3550
NoConn ~ 7050 3550
Text Notes 4450 2800 0    60   ~ 0
5V DC
Text Notes 6450 2800 0    60   ~ 0
Console
Text Notes 4700 3100 0    60   ~ 0
+
$EndSCHEMATC
