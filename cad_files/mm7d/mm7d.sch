EESchema Schematic File Version 2
LIBS:mm7d-rescue
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
LIBS:pzs_devices
LIBS:pzs_others
LIBS:mm7d-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MM7D Air quality measuring device"
Date "2020-06-20"
Rev "200620"
Comp "Pozsar Zsolt - http://www.szerafingomba.hu"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Draw no.: 59/12/2"
$EndDescr
$Comp
L Adafruit_Huzzah_Breakout U1
U 1 1 5EEE159B
P 6575 4700
F 0 "U1" H 6125 5450 50  0000 C CNN
F 1 "Adafruit Huzzah Breakout" H 6575 3950 50  0000 C CNN
F 2 "" H 6425 4470 60  0001 C CNN
F 3 "" H 6425 4470 60  0001 C CNN
	1    6575 4700
	1    0    0    -1  
$EndComp
$Comp
L DHT11 U3
U 1 1 5EEE15C4
P 9225 4700
F 0 "U3" H 9125 4950 50  0000 C CNN
F 1 "DHT11" H 9225 4450 50  0000 C CNN
F 2 "" H 9375 4950 50  0001 C CNN
F 3 "" H 9375 4950 50  0001 C CNN
	1    9225 4700
	1    0    0    -1  
$EndComp
$Comp
L DB9 P2
U 1 1 5EEE1652
P 6425 1800
F 0 "P2" V 6425 2350 50  0000 C CNN
F 1 "DB9" H 6425 1250 50  0001 C CNN
F 2 "" H 6425 1800 50  0000 C CNN
F 3 "" H 6425 1800 50  0000 C CNN
	1    6425 1800
	0    -1   -1   0   
$EndComp
NoConn ~ 6125 2250
NoConn ~ 6225 2250
NoConn ~ 6325 2250
NoConn ~ 6525 2250
NoConn ~ 6725 2250
NoConn ~ 6825 2250
NoConn ~ 7325 4350
NoConn ~ 7325 5150
NoConn ~ 5825 5150
NoConn ~ 5825 5050
NoConn ~ 5825 4350
$Comp
L BNC P1
U 1 1 5EEE1B4F
P 3475 1800
F 0 "P1" H 3625 1800 50  0000 C CNN
F 1 "BNC" V 3585 1740 50  0001 C CNN
F 2 "" H 3475 1800 50  0000 C CNN
F 3 "" H 3475 1800 50  0000 C CNN
	1    3475 1800
	-1   0    0    -1  
$EndComp
$Comp
L EMI_Filter_LL L1
U 1 1 5EEE1D22
P 3575 2400
F 0 "L1" V 3575 2200 50  0000 C CNN
F 1 "EMI_Filter_LL" H 3575 2225 50  0001 C CNN
F 2 "" V 3575 2440 50  0000 C CNN
F 3 "" V 3575 2440 50  0000 C CNN
	1    3575 2400
	0    1    1    0   
$EndComp
$Comp
L 0V #PWR01
U 1 1 5EEE1D86
P 8825 5500
F 0 "#PWR01" H 8825 5250 50  0001 C CNN
F 1 "0V" H 8825 5350 50  0001 C CNN
F 2 "" H 8825 5500 50  0000 C CNN
F 3 "" H 8825 5500 50  0000 C CNN
	1    8825 5500
	1    0    0    -1  
$EndComp
$Comp
L fuse F1
U 1 1 5EEE1DA0
P 3675 3200
F 0 "F1" H 3525 3250 50  0000 C CNN
F 1 "500mA F" H 3950 3200 50  0000 C CNN
F 2 "" V 3605 3200 50  0001 C CNN
F 3 "" H 3675 3200 50  0001 C CNN
	1    3675 3200
	1    0    0    -1  
$EndComp
$Comp
L diode D1
U 1 1 5EEE1DE4
P 3425 3450
F 0 "D1" H 3425 3600 50  0000 C CNN
F 1 "1N4001" H 3425 3300 50  0000 C CNN
F 2 "" H 3425 3450 60  0000 C CNN
F 3 "" H 3425 3450 60  0000 C CNN
	1    3425 3450
	-1   0    0    -1  
$EndComp
NoConn ~ 6425 3750
NoConn ~ 6825 3750
$Comp
L 0V #PWR02
U 1 1 5EEE2266
P 3225 3450
F 0 "#PWR02" H 3225 3200 50  0001 C CNN
F 1 "0V" H 3225 3300 50  0001 C CNN
F 2 "" H 3225 3450 50  0000 C CNN
F 3 "" H 3225 3450 50  0000 C CNN
	1    3225 3450
	0    1    -1   0   
$EndComp
$Comp
L 0V #PWR03
U 1 1 5EEE22DD
P 3225 2950
F 0 "#PWR03" H 3225 2700 50  0001 C CNN
F 1 "0V" H 3225 2800 50  0001 C CNN
F 2 "" H 3225 2950 50  0000 C CNN
F 3 "" H 3225 2950 50  0000 C CNN
	1    3225 2950
	0    1    -1   0   
$EndComp
$Comp
L C_Small C1
U 1 1 5EEE232F
P 3575 2050
F 0 "C1" V 3575 1750 50  0000 L CNN
F 1 "100n" V 3575 2250 50  0000 L CNN
F 2 "" H 3575 2050 50  0000 C CNN
F 3 "" H 3575 2050 50  0000 C CNN
	1    3575 2050
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR04
U 1 1 5EEE284E
P 7825 3200
F 0 "#PWR04" H 7825 3050 50  0001 C CNN
F 1 "+5V" H 7825 3350 50  0000 C CNN
F 2 "" H 7825 3200 50  0000 C CNN
F 3 "" H 7825 3200 50  0000 C CNN
	1    7825 3200
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR05
U 1 1 5EEE2C07
P 7325 4250
F 0 "#PWR05" H 7325 4000 50  0001 C CNN
F 1 "0V" H 7325 4100 50  0001 C CNN
F 2 "" H 7325 4250 50  0000 C CNN
F 3 "" H 7325 4250 50  0000 C CNN
	1    7325 4250
	0    -1   1    0   
$EndComp
NoConn ~ 7325 4950
$Comp
L +3.3V #PWR06
U 1 1 5EEE2DDF
P 5675 3200
F 0 "#PWR06" H 5675 3050 50  0001 C CNN
F 1 "+3.3V" H 5675 3350 50  0000 C CNN
F 2 "" H 5675 3200 50  0000 C CNN
F 3 "" H 5675 3200 50  0000 C CNN
	1    5675 3200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5EEE328A
P 5600 4750
F 0 "R4" V 5600 4750 50  0000 C CNN
F 1 "1k" V 5550 4925 50  0000 C CNN
F 2 "" V 5530 4750 50  0000 C CNN
F 3 "" H 5600 4750 50  0000 C CNN
	1    5600 4750
	0    -1   1    0   
$EndComp
$Comp
L electromagnetic_actor_1 K1
U 1 1 5EEE3451
P 2975 4150
F 0 "K1" H 3175 4300 50  0000 L CNN
F 1 "RSY-5" H 3125 4100 50  0000 L CNN
F 2 "" V 2950 4250 50  0001 C CNN
F 3 "" V 2950 4250 50  0001 C CNN
	1    2975 4150
	-1   0    0    -1  
$EndComp
$Comp
L diode D2
U 1 1 5EEE3496
P 3225 4100
F 0 "D2" V 3175 3950 50  0000 C CNN
F 1 "1N4001" V 3275 3850 50  0000 C CNN
F 2 "" H 3225 4100 60  0000 C CNN
F 3 "" H 3225 4100 60  0000 C CNN
	1    3225 4100
	0    -1   1    0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 5EEE3F2D
P 4325 3175
F 0 "#PWR07" H 4325 3025 50  0001 C CNN
F 1 "+5V" H 4325 3325 50  0000 C CNN
F 2 "" H 4325 3175 50  0000 C CNN
F 3 "" H 4325 3175 50  0000 C CNN
	1    4325 3175
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR08
U 1 1 5EEE4100
P 2975 5500
F 0 "#PWR08" H 2975 5250 50  0001 C CNN
F 1 "0V" H 2975 5350 50  0001 C CNN
F 2 "" H 2975 5500 50  0000 C CNN
F 3 "" H 2975 5500 50  0000 C CNN
	1    2975 5500
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5EEE416B
P 5600 4650
F 0 "R3" V 5600 4650 50  0000 C CNN
F 1 "470" V 5550 4850 50  0000 C CNN
F 2 "" V 5530 4650 50  0000 C CNN
F 3 "" H 5600 4650 50  0000 C CNN
	1    5600 4650
	0    -1   1    0   
$EndComp
$Comp
L 0V #PWR09
U 1 1 5EEE442D
P 4075 5500
F 0 "#PWR09" H 4075 5250 50  0001 C CNN
F 1 "0V" H 4075 5350 50  0001 C CNN
F 2 "" H 4075 5500 50  0000 C CNN
F 3 "" H 4075 5500 50  0000 C CNN
	1    4075 5500
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR010
U 1 1 5EEE45B4
P 3675 5500
F 0 "#PWR010" H 3675 5250 50  0001 C CNN
F 1 "0V" H 3675 5350 50  0001 C CNN
F 2 "" H 3675 5500 50  0000 C CNN
F 3 "" H 3675 5500 50  0000 C CNN
	1    3675 5500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR011
U 1 1 5EEE5097
P 2425 3200
F 0 "#PWR011" H 2425 3050 50  0001 C CNN
F 1 "+3.3V" H 2425 3350 50  0000 C CNN
F 2 "" H 2425 3200 50  0000 C CNN
F 3 "" H 2425 3200 50  0000 C CNN
	1    2425 3200
	1    0    0    -1  
$EndComp
NoConn ~ 7325 4850
NoConn ~ 5825 4550
NoConn ~ 5825 4250
$Comp
L R R1
U 1 1 5EEE8270
P 3675 4350
F 0 "R1" H 3775 4400 50  0000 L CNN
F 1 "680" H 3775 4300 50  0000 L CNN
F 2 "" V 3605 4350 50  0000 C CNN
F 3 "" H 3675 4350 50  0000 C CNN
	1    3675 4350
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5EEE8D51
P 8000 5125
F 0 "R9" H 8075 5175 50  0000 L CNN
F 1 "4.7k" H 8075 5075 50  0000 L CNN
F 2 "" V 7930 5125 50  0000 C CNN
F 3 "" H 8000 5125 50  0000 C CNN
	1    8000 5125
	1    0    0    -1  
$EndComp
Text Notes 3525 5800 0    60   ~ 0
Power     Act             Status
Text Notes 3225 1500 0    60   ~ 0
5V DC in
Text Notes 5975 1500 0    60   ~ 0
Console (3,3V serial)
NoConn ~ 8975 4750
$Comp
L MQ-135M U2
U 1 1 5EEEA952
P 9225 3800
F 0 "U2" H 9125 4050 50  0000 C CNN
F 1 "MQ-135M" H 9225 3550 50  0000 C CNN
F 2 "" H 9095 4020 50  0001 C CNN
F 3 "" H 9095 4020 50  0001 C CNN
	1    9225 3800
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5EEEB0AE
P 7725 5250
F 0 "R8" H 7800 5300 50  0000 L CNN
F 1 "9.1k" H 7800 5200 50  0000 L CNN
F 2 "" V 7655 5250 50  0000 C CNN
F 3 "" H 7725 5250 50  0000 C CNN
	1    7725 5250
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR012
U 1 1 5EEEB31B
P 7725 5500
F 0 "#PWR012" H 7725 5250 50  0001 C CNN
F 1 "0V" H 7725 5350 50  0001 C CNN
F 2 "" H 7725 5500 50  0000 C CNN
F 3 "" H 7725 5500 50  0000 C CNN
	1    7725 5500
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5EEEB91E
P 7725 4850
F 0 "R7" H 7800 4900 50  0000 L CNN
F 1 "39k" H 7800 4800 50  0000 L CNN
F 2 "" V 7655 4850 50  0000 C CNN
F 3 "" H 7725 4850 50  0000 C CNN
	1    7725 4850
	1    0    0    -1  
$EndComp
NoConn ~ 8975 3850
$Comp
L Q_NPN_EBC Q1
U 1 1 5EEE5F0C
P 3075 4750
F 0 "Q1" H 2925 4900 50  0000 L CNN
F 1 "2N4401" H 2825 4500 50  0000 L CNN
F 2 "" H 3275 4850 50  0000 C CNN
F 3 "" H 3075 4750 50  0000 C CNN
	1    3075 4750
	-1   0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5EF77CF6
P 5600 4850
F 0 "R5" V 5600 4850 50  0000 C CNN
F 1 "470" V 5550 5050 50  0000 C CNN
F 2 "" V 5530 4850 50  0000 C CNN
F 3 "" H 5600 4850 50  0000 C CNN
	1    5600 4850
	0    -1   1    0   
$EndComp
$Comp
L R R6
U 1 1 5EF787E4
P 5600 4950
F 0 "R6" V 5600 4950 50  0000 C CNN
F 1 "470" V 5550 5150 50  0000 C CNN
F 2 "" V 5530 4950 50  0000 C CNN
F 3 "" H 5600 4950 50  0000 C CNN
	1    5600 4950
	0    -1   1    0   
$EndComp
$Comp
L 0V #PWR013
U 1 1 5EF79B42
P 4875 5500
F 0 "#PWR013" H 4875 5250 50  0001 C CNN
F 1 "0V" H 4875 5350 50  0001 C CNN
F 2 "" H 4875 5500 50  0000 C CNN
F 3 "" H 4875 5500 50  0000 C CNN
	1    4875 5500
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR014
U 1 1 5EF79B48
P 4475 5500
F 0 "#PWR014" H 4475 5250 50  0001 C CNN
F 1 "0V" H 4475 5350 50  0001 C CNN
F 2 "" H 4475 5500 50  0000 C CNN
F 3 "" H 4475 5500 50  0000 C CNN
	1    4475 5500
	1    0    0    -1  
$EndComp
$Comp
L 0V #PWR015
U 1 1 5EF79BC0
P 5275 5500
F 0 "#PWR015" H 5275 5250 50  0001 C CNN
F 1 "0V" H 5275 5350 50  0001 C CNN
F 2 "" H 5275 5500 50  0000 C CNN
F 3 "" H 5275 5500 50  0000 C CNN
	1    5275 5500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5EF7A4FE
P 5275 4350
F 0 "R2" V 5425 4350 50  0000 C CNN
F 1 "470" V 5175 4350 50  0000 C CNN
F 2 "" V 5205 4350 50  0000 C CNN
F 3 "" H 5275 4350 50  0000 C CNN
	1    5275 4350
	-1   0    0    -1  
$EndComp
$Comp
L switch_1P_closed SW1
U 1 1 5EF7B8B5
P 2425 4100
F 0 "SW1" H 2425 4250 70  0001 C CNN
F 1 "switch_1P_closed" H 2475 4350 70  0001 C CNN
F 2 "" H 2425 4100 60  0000 C CNN
F 3 "" H 2425 4100 60  0000 C CNN
	1    2425 4100
	0    1    1    0   
$EndComp
$Comp
L CP_Small C2
U 1 1 5EF7C17E
P 3575 2950
F 0 "C2" V 3475 3175 50  0000 L CNN
F 1 "1000u" V 3575 3175 50  0000 L CNN
F 2 "" H 3575 2950 50  0000 C CNN
F 3 "" H 3575 2950 50  0000 C CNN
	1    3575 2950
	0    1    1    0   
$EndComp
Wire Notes Line
	2125 5950 2125 2700
Wire Notes Line
	9575 5950 2125 5950
Wire Notes Line
	9575 2700 9575 5950
Wire Notes Line
	2125 2700 9575 2700
Connection ~ 3475 2950
Connection ~ 3675 2950
Wire Wire Line
	5275 4500 5275 5050
Wire Wire Line
	5275 3600 5275 4200
Wire Wire Line
	3275 4750 5450 4750
Wire Wire Line
	4875 4950 4875 5050
Wire Wire Line
	5450 4950 4875 4950
Wire Wire Line
	4475 4850 4475 5050
Wire Wire Line
	5450 4850 4475 4850
Wire Wire Line
	7525 3600 5275 3600
Wire Wire Line
	7525 4550 7525 3600
Wire Wire Line
	7325 4550 7525 4550
Wire Wire Line
	5275 5450 5275 5500
Wire Wire Line
	4875 5450 4875 5500
Wire Wire Line
	4475 5450 4475 5500
Wire Wire Line
	6625 3750 6625 2250
Wire Wire Line
	6425 2250 6425 2400
Wire Wire Line
	6425 2400 6725 2400
Wire Wire Line
	6725 2400 6725 3750
Wire Wire Line
	6025 2250 6025 2400
Wire Wire Line
	3475 2000 3475 2050
Wire Wire Line
	3475 2050 3475 2200
Wire Wire Line
	3675 1800 3675 2050
Wire Wire Line
	3675 2050 3675 2200
Wire Wire Line
	3675 1800 3625 1800
Wire Wire Line
	8825 3750 8825 4850
Wire Wire Line
	8825 4850 8825 5500
Wire Wire Line
	3675 2600 3675 2950
Wire Wire Line
	3675 2950 3675 3050
Wire Wire Line
	3675 3350 3675 3450
Wire Wire Line
	3675 3450 3675 4200
Connection ~ 3675 3450
Wire Wire Line
	6325 2400 6325 3750
Wire Wire Line
	3275 3450 3225 3450
Wire Wire Line
	3225 2950 3475 2950
Wire Wire Line
	3475 2950 3475 2600
Connection ~ 3475 2050
Connection ~ 3675 2050
Wire Wire Line
	6025 2400 6325 2400
Wire Wire Line
	7325 4250 7375 4250
Wire Wire Line
	5825 4450 5675 4450
Wire Wire Line
	8000 5650 8000 5275
Wire Wire Line
	8000 4975 8000 4650
Wire Wire Line
	2975 4250 2975 4300
Wire Wire Line
	2975 4300 2975 4550
Wire Wire Line
	2975 4300 3225 4300
Wire Wire Line
	3225 4300 3225 4250
Connection ~ 2975 4300
Wire Wire Line
	2975 3200 2975 3900
Wire Wire Line
	2975 3900 2975 3950
Wire Wire Line
	2975 3900 3225 3900
Wire Wire Line
	3225 3900 3225 3950
Connection ~ 2975 3900
Wire Wire Line
	2975 4950 2975 5500
Wire Wire Line
	4075 5050 4075 4650
Wire Wire Line
	4075 4650 5450 4650
Wire Wire Line
	4075 5450 4075 5500
Wire Wire Line
	3675 5450 3675 5500
Wire Wire Line
	3675 4500 3675 5050
Wire Wire Line
	2425 3700 2425 3200
Wire Wire Line
	2425 4550 2425 5650
Wire Notes Line
	2875 4100 2425 4100
Wire Wire Line
	3575 3450 3675 3450
Wire Wire Line
	3675 3450 4325 3450
Wire Wire Line
	5675 4450 5675 3200
Wire Wire Line
	8275 4550 8975 4550
Wire Wire Line
	2425 5650 8000 5650
Wire Wire Line
	8000 5650 8275 5650
Connection ~ 8000 4650
Wire Wire Line
	8825 4850 8975 4850
Wire Wire Line
	8825 3750 8975 3750
Connection ~ 8825 4850
Wire Wire Line
	7725 5000 7725 5050
Wire Wire Line
	7725 5050 7725 5100
Wire Wire Line
	7325 5050 7725 5050
Connection ~ 7725 5050
Wire Wire Line
	7725 5400 7725 5500
Wire Wire Line
	8975 3950 7725 3950
Wire Wire Line
	7725 3950 7725 4700
Text Notes 9350 2850 0    60   ~ 0
PCB
Text Notes 3725 2450 0    50   ~ 0
ferrite ring
Wire Wire Line
	7325 4650 8000 4650
Wire Wire Line
	8000 4650 8975 4650
Wire Wire Line
	8275 5650 8275 4550
Connection ~ 8000 5650
Wire Wire Line
	7825 3200 7825 3650
Wire Wire Line
	7825 3650 7825 4450
Wire Wire Line
	7825 4450 7325 4450
Wire Wire Line
	8975 3650 7825 3650
Connection ~ 7825 3650
NoConn ~ 6525 3750
Connection ~ 5935 1880
$Comp
L 0V #PWR?
U 1 1 5EF84CC8
P 5795 2855
F 0 "#PWR?" H 5795 2605 50  0001 C CNN
F 1 "0V" H 5795 2705 50  0001 C CNN
F 2 "" H 5795 2855 50  0000 C CNN
F 3 "" H 5795 2855 50  0000 C CNN
	1    5795 2855
	1    0    0    -1  
$EndComp
Wire Wire Line
	5795 1880 5795 2855
Wire Wire Line
	5935 1880 5795 1880
Wire Wire Line
	5750 4650 5825 4650
Wire Wire Line
	5825 4750 5750 4750
Wire Wire Line
	5750 4850 5825 4850
Wire Wire Line
	5825 4950 5750 4950
Wire Wire Line
	4325 3450 4325 3175
$Comp
L +5V #PWR?
U 1 1 5EF86711
P 2975 3200
F 0 "#PWR?" H 2975 3050 50  0001 C CNN
F 1 "+5V" H 2975 3350 50  0000 C CNN
F 2 "" H 2975 3200 50  0000 C CNN
F 3 "" H 2975 3200 50  0000 C CNN
	1    2975 3200
	1    0    0    -1  
$EndComp
$Comp
L LED-CIRCLE D3
U 1 1 5EF86B1D
P 3675 5250
F 0 "D3" V 3675 5425 50  0000 C CNN
F 1 "white" V 3825 5325 50  0000 L CNN
F 2 "" H 3675 5250 50  0000 C CNN
F 3 "" H 3675 5250 50  0000 C CNN
	1    3675 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED-CIRCLE D4
U 1 1 5EF8710B
P 4075 5250
F 0 "D4" V 4075 5425 50  0000 C CNN
F 1 "blue" V 4225 5325 50  0000 L CNN
F 2 "" H 4075 5250 50  0000 C CNN
F 3 "" H 4075 5250 50  0000 C CNN
	1    4075 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED-CIRCLE D5
U 1 1 5EF87176
P 4475 5250
F 0 "D5" V 4475 5425 50  0000 C CNN
F 1 "green" V 4625 5325 50  0000 L CNN
F 2 "" H 4475 5250 50  0000 C CNN
F 3 "" H 4475 5250 50  0000 C CNN
	1    4475 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED-CIRCLE D6
U 1 1 5EF871E6
P 4875 5250
F 0 "D6" V 4875 5425 50  0000 C CNN
F 1 "yellow" V 5025 5325 50  0000 L CNN
F 2 "" H 4875 5250 50  0000 C CNN
F 3 "" H 4875 5250 50  0000 C CNN
	1    4875 5250
	0    -1   -1   0   
$EndComp
$Comp
L LED-CIRCLE D7
U 1 1 5EF8725D
P 5275 5250
F 0 "D7" V 5275 5425 50  0000 C CNN
F 1 "red" V 5425 5325 50  0000 L CNN
F 2 "" H 5275 5250 50  0000 C CNN
F 3 "" H 5275 5250 50  0000 C CNN
	1    5275 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7325 4750 7625 4750
Wire Wire Line
	7625 4750 7625 3500
Wire Wire Line
	7625 3500 5275 3500
Wire Wire Line
	5275 2400 5275 3050
$Comp
L CP_Small C3
U 1 1 5EFA265C
P 5275 3150
F 0 "C3" H 5400 3075 50  0000 L CNN
F 1 "2.2u" H 5400 3200 50  0000 L CNN
F 2 "" H 5275 3150 50  0000 C CNN
F 3 "" H 5275 3150 50  0000 C CNN
	1    5275 3150
	-1   0    0    1   
$EndComp
$Comp
L 0V #PWR?
U 1 1 5EFA2B1B
P 5175 2850
F 0 "#PWR?" H 5175 2600 50  0001 C CNN
F 1 "0V" H 5175 2700 50  0001 C CNN
F 2 "" H 5175 2850 50  0000 C CNN
F 3 "" H 5175 2850 50  0000 C CNN
	1    5175 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 2400 5175 2850
$Comp
L Speaker_Ultrasound Sp1
U 1 1 5EFA2C83
P 5275 2200
F 0 "Sp1" V 5525 2225 50  0000 R CNN
F 1 "Speaker Crystal" H 5300 2350 50  0001 R CNN
F 2 "" H 5240 2150 50  0000 C CNN
F 3 "" H 5240 2150 50  0000 C CNN
	1    5275 2200
	0    1    -1   0   
$EndComp
Wire Wire Line
	5275 3500 5275 3250
$EndSCHEMATC
