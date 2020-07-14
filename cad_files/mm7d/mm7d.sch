EESchema Schematic File Version 2
LIBS:pzs_others
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
L pzs_devices:DHT11 U103
U 1 1 5EEE15C4
P 8550 4350
F 0 "U103" H 8500 4600 50  0000 C CNN
F 1 "DHT11" H 8550 4100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 8700 4600 50  0001 C CNN
F 3 "" H 8700 4600 50  0001 C CNN
	1    8550 4350
	1    0    0    -1  
$EndComp
NoConn ~ 6650 4000
NoConn ~ 6650 4800
NoConn ~ 5625 4800
NoConn ~ 5625 4700
NoConn ~ 5625 4000
$Comp
L pzs_others:0V #PWR01
U 1 1 5EEE1D86
P 8150 5150
F 0 "#PWR01" H 8150 4900 50  0001 C CNN
F 1 "0V" H 8150 5000 50  0001 C CNN
F 2 "" H 8150 5150 50  0000 C CNN
F 3 "" H 8150 5150 50  0000 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR02
U 1 1 5EEE2266
P 3025 3500
F 0 "#PWR02" H 3025 3250 50  0001 C CNN
F 1 "0V" H 3025 3350 50  0001 C CNN
F 2 "" H 3025 3500 50  0000 C CNN
F 3 "" H 3025 3500 50  0000 C CNN
	1    3025 3500
	0    1    -1   0   
$EndComp
$Comp
L pzs_others:0V #PWR03
U 1 1 5EEE22DD
P 3025 3100
F 0 "#PWR03" H 3025 2850 50  0001 C CNN
F 1 "0V" H 3025 2950 50  0001 C CNN
F 2 "" H 3025 3100 50  0000 C CNN
F 3 "" H 3025 3100 50  0000 C CNN
	1    3025 3100
	0    1    -1   0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5EEE284E
P 7150 2850
F 0 "#PWR04" H 7150 2700 50  0001 C CNN
F 1 "+5V" H 7150 3000 50  0000 C CNN
F 2 "" H 7150 2850 50  0000 C CNN
F 3 "" H 7150 2850 50  0000 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR05
U 1 1 5EEE2C07
P 6700 3900
F 0 "#PWR05" H 6700 3650 50  0001 C CNN
F 1 "0V" H 6700 3750 50  0001 C CNN
F 2 "" H 6700 3900 50  0000 C CNN
F 3 "" H 6700 3900 50  0000 C CNN
	1    6700 3900
	0    -1   1    0   
$EndComp
NoConn ~ 6650 4600
$Comp
L power:+3.3V #PWR06
U 1 1 5EEE2DDF
P 5500 2850
F 0 "#PWR06" H 5500 2700 50  0001 C CNN
F 1 "+3.3V" H 5500 3000 50  0000 C CNN
F 2 "" H 5500 2850 50  0000 C CNN
F 3 "" H 5500 2850 50  0000 C CNN
	1    5500 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5EEE3F2D
P 4125 3225
F 0 "#PWR07" H 4125 3075 50  0001 C CNN
F 1 "+5V" H 4125 3375 50  0000 C CNN
F 2 "" H 4125 3225 50  0000 C CNN
F 3 "" H 4125 3225 50  0000 C CNN
	1    4125 3225
	1    0    0    -1  
$EndComp
$Comp
L device:R R103
U 1 1 5EEE416B
P 5075 4400
F 0 "R103" V 5025 4175 50  0000 C CNN
F 1 "470" V 5025 4600 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5005 4400 50  0001 C CNN
F 3 "" H 5075 4400 50  0000 C CNN
	1    5075 4400
	0    1    1    0   
$EndComp
$Comp
L pzs_others:0V #PWR08
U 1 1 5EEE442D
P 3375 5150
F 0 "#PWR08" H 3375 4900 50  0001 C CNN
F 1 "0V" H 3375 5000 50  0001 C CNN
F 2 "" H 3375 5150 50  0000 C CNN
F 3 "" H 3375 5150 50  0000 C CNN
	1    3375 5150
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR09
U 1 1 5EEE45B4
P 2975 5150
F 0 "#PWR09" H 2975 4900 50  0001 C CNN
F 1 "0V" H 2975 5000 50  0001 C CNN
F 2 "" H 2975 5150 50  0000 C CNN
F 3 "" H 2975 5150 50  0000 C CNN
	1    2975 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5EEE5097
P 7600 2850
F 0 "#PWR010" H 7600 2700 50  0001 C CNN
F 1 "+3.3V" H 7600 3000 50  0000 C CNN
F 2 "" H 7600 2850 50  0000 C CNN
F 3 "" H 7600 2850 50  0000 C CNN
	1    7600 2850
	1    0    0    -1  
$EndComp
NoConn ~ 6650 4500
NoConn ~ 5625 4200
NoConn ~ 5625 3900
$Comp
L device:R R106
U 1 1 5EEE8D51
P 7325 3950
F 0 "R106" H 7350 3775 50  0000 L CNN
F 1 "4.7k" H 7400 3900 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 7255 3950 50  0001 C CNN
F 3 "" H 7325 3950 50  0000 C CNN
	1    7325 3950
	1    0    0    -1  
$EndComp
Text Notes 2850 5450 0    60   ~ 0
Power     Act             Status
$Comp
L pzs_devices:MQ-135M U102
U 1 1 5EEEA952
P 8550 3450
F 0 "U102" H 8500 3700 50  0000 C CNN
F 1 "MQ-135M" H 8550 3200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 8420 3670 50  0001 C CNN
F 3 "" H 8420 3670 50  0001 C CNN
	1    8550 3450
	1    0    0    -1  
$EndComp
$Comp
L device:R R108
U 1 1 5EEEB0AE
P 7050 4900
F 0 "R108" H 7125 4950 50  0000 L CNN
F 1 "9.1k" H 7125 4850 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6980 4900 50  0001 C CNN
F 3 "" H 7050 4900 50  0000 C CNN
	1    7050 4900
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR011
U 1 1 5EEEB31B
P 7050 5150
F 0 "#PWR011" H 7050 4900 50  0001 C CNN
F 1 "0V" H 7050 5000 50  0001 C CNN
F 2 "" H 7050 5150 50  0000 C CNN
F 3 "" H 7050 5150 50  0000 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
$Comp
L device:R R107
U 1 1 5EEEB91E
P 7050 4500
F 0 "R107" H 7125 4550 50  0000 L CNN
F 1 "39k" H 7125 4450 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 6980 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0000 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
NoConn ~ 8300 3500
$Comp
L device:R R104
U 1 1 5EF77CF6
P 5075 4500
F 0 "R104" V 5025 4275 50  0000 C CNN
F 1 "470" V 5025 4700 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5005 4500 50  0001 C CNN
F 3 "" H 5075 4500 50  0000 C CNN
	1    5075 4500
	0    1    1    0   
$EndComp
$Comp
L device:R R105
U 1 1 5EF787E4
P 5075 4600
F 0 "R105" V 5025 4375 50  0000 C CNN
F 1 "470" V 5025 4800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5005 4600 50  0001 C CNN
F 3 "" H 5075 4600 50  0000 C CNN
	1    5075 4600
	0    1    1    0   
$EndComp
$Comp
L pzs_others:0V #PWR012
U 1 1 5EF79B42
P 4175 5150
F 0 "#PWR012" H 4175 4900 50  0001 C CNN
F 1 "0V" H 4175 5000 50  0001 C CNN
F 2 "" H 4175 5150 50  0000 C CNN
F 3 "" H 4175 5150 50  0000 C CNN
	1    4175 5150
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR013
U 1 1 5EF79B48
P 3775 5150
F 0 "#PWR013" H 3775 4900 50  0001 C CNN
F 1 "0V" H 3775 5000 50  0001 C CNN
F 2 "" H 3775 5150 50  0000 C CNN
F 3 "" H 3775 5150 50  0000 C CNN
	1    3775 5150
	1    0    0    -1  
$EndComp
$Comp
L pzs_others:0V #PWR014
U 1 1 5EF79BC0
P 4575 5150
F 0 "#PWR014" H 4575 4900 50  0001 C CNN
F 1 "0V" H 4575 5000 50  0001 C CNN
F 2 "" H 4575 5150 50  0000 C CNN
F 3 "" H 4575 5150 50  0000 C CNN
	1    4575 5150
	1    0    0    -1  
$EndComp
$Comp
L device:R R102
U 1 1 5EF7A4FE
P 5075 4300
F 0 "R102" V 5125 4525 50  0000 C CNN
F 1 "470" V 5125 4100 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5005 4300 50  0001 C CNN
F 3 "" H 5075 4300 50  0000 C CNN
	1    5075 4300
	0    -1   -1   0   
$EndComp
$Comp
L device:CP_Small C101
U 1 1 5EF7C17E
P 3375 3100
F 0 "C101" V 3275 3325 50  0000 L CNN
F 1 "470u" V 3375 3325 50  0000 L CNN
F 2 "Capacitors_THT:C_Radial_D8_L11.5_P3.5" H 3375 3100 50  0001 C CNN
F 3 "" H 3375 3100 50  0000 C CNN
	1    3375 3100
	0    1    1    0   
$EndComp
Connection ~ 3275 3100
Connection ~ 3475 3100
Wire Wire Line
	4925 4600 4575 4600
Wire Wire Line
	4925 4500 4175 4500
Wire Wire Line
	4575 5100 4575 5150
Wire Wire Line
	4175 5100 4175 5150
Wire Wire Line
	3775 5100 3775 5150
Wire Wire Line
	8150 3400 8150 5150
Wire Wire Line
	3075 3500 3025 3500
Wire Wire Line
	3025 3100 3275 3100
Wire Wire Line
	3275 3100 3275 2725
Wire Wire Line
	6650 3900 6700 3900
Wire Wire Line
	5225 4100 5625 4100
Wire Wire Line
	3375 4300 4925 4300
Wire Wire Line
	3375 5100 3375 5150
Wire Wire Line
	2975 5100 2975 5150
Wire Wire Line
	2975 4100 2975 4700
Wire Wire Line
	3375 3500 4125 3500
Wire Wire Line
	5500 4100 5500 2850
Wire Wire Line
	7600 4200 8300 4200
Wire Wire Line
	8150 4500 8300 4500
Wire Wire Line
	8150 3400 8300 3400
Connection ~ 8150 4500
Wire Wire Line
	7050 4650 7050 4750
Wire Wire Line
	6650 4700 7050 4700
Connection ~ 7050 4700
Wire Wire Line
	7050 5050 7050 5150
Wire Wire Line
	8300 3600 7050 3600
Wire Wire Line
	7050 3600 7050 4350
Wire Wire Line
	7150 2850 7150 4100
Wire Wire Line
	7150 4100 6650 4100
Wire Wire Line
	8300 3300 7150 3300
Connection ~ 7150 3300
Wire Wire Line
	5225 4300 5625 4300
Wire Wire Line
	5225 4500 5625 4500
Wire Wire Line
	5625 4600 5225 4600
Wire Wire Line
	4125 3500 4125 3225
$Comp
L pzs_devices:LED-CIRCLE D102
U 1 1 5EF86B1D
P 2975 4900
F 0 "D102" V 2975 5100 50  0000 C CNN
F 1 "white" V 3125 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 2975 4900 50  0001 C CNN
F 3 "" H 2975 4900 50  0000 C CNN
	1    2975 4900
	0    -1   -1   0   
$EndComp
$Comp
L pzs_devices:LED-CIRCLE D103
U 1 1 5EF8710B
P 3375 4900
F 0 "D103" V 3375 5100 50  0000 C CNN
F 1 "blue" V 3525 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 3375 4900 50  0001 C CNN
F 3 "" H 3375 4900 50  0000 C CNN
	1    3375 4900
	0    -1   -1   0   
$EndComp
$Comp
L pzs_devices:LED-CIRCLE D104
U 1 1 5EF87176
P 3775 4900
F 0 "D104" V 3775 5100 50  0000 C CNN
F 1 "green" V 3925 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 3775 4900 50  0001 C CNN
F 3 "" H 3775 4900 50  0000 C CNN
	1    3775 4900
	0    -1   -1   0   
$EndComp
$Comp
L pzs_devices:LED-CIRCLE D105
U 1 1 5EF871E6
P 4175 4900
F 0 "D105" V 4175 5100 50  0000 C CNN
F 1 "yellow" V 4325 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 4175 4900 50  0001 C CNN
F 3 "" H 4175 4900 50  0000 C CNN
	1    4175 4900
	0    -1   -1   0   
$EndComp
$Comp
L pzs_devices:LED-CIRCLE D106
U 1 1 5EF8725D
P 4575 4900
F 0 "D106" V 4575 5100 50  0000 C CNN
F 1 "red" V 4725 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 4575 4900 50  0001 C CNN
F 3 "" H 4575 4900 50  0000 C CNN
	1    4575 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 4400 6950 4400
Wire Wire Line
	6950 4400 6950 3150
Wire Wire Line
	6950 3150 5075 3150
Wire Wire Line
	5075 2700 5075 2900
$Comp
L device:CP_Small C102
U 1 1 5EFA265C
P 5075 3000
F 0 "C102" H 5200 2925 50  0000 L CNN
F 1 "2.2u" H 5200 3050 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7_W4.5_P5" H 5075 3000 50  0001 C CNN
F 3 "" H 5075 3000 50  0000 C CNN
	1    5075 3000
	-1   0    0    1   
$EndComp
$Comp
L pzs_others:0V #PWR015
U 1 1 5EFA2B1B
P 4975 2750
F 0 "#PWR015" H 4975 2500 50  0001 C CNN
F 1 "0V" H 4975 2600 50  0001 C CNN
F 2 "" H 4975 2750 50  0000 C CNN
F 3 "" H 4975 2750 50  0000 C CNN
	1    4975 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 2700 4975 2750
Wire Wire Line
	5075 3150 5075 3100
Wire Wire Line
	6650 4300 8300 4300
Wire Wire Line
	7600 2850 7600 4200
Wire Wire Line
	7325 4300 7325 4100
Connection ~ 7325 4300
Wire Wire Line
	7325 3800 7325 3700
Wire Wire Line
	7325 3700 7600 3700
Connection ~ 7600 3700
NoConn ~ 6650 4200
Wire Wire Line
	5225 4400 5625 4400
Wire Wire Line
	4575 4600 4575 4700
Wire Wire Line
	4175 4500 4175 4700
Wire Wire Line
	3775 4700 3775 4400
Wire Wire Line
	3775 4400 4925 4400
Wire Wire Line
	3375 4700 3375 4300
$Comp
L device:R R101
U 1 1 5F021C4E
P 5075 4100
F 0 "R101" V 5125 4325 50  0000 C CNN
F 1 "470" V 5125 3900 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5005 4100 50  0001 C CNN
F 3 "" H 5075 4100 50  0000 C CNN
	1    5075 4100
	0    -1   -1   0   
$EndComp
Connection ~ 5500 4100
Wire Wire Line
	4925 4100 2975 4100
Wire Wire Line
	3475 2725 3475 3500
Connection ~ 3475 3500
$Comp
L CONN_01X10 U101-JP5
U 1 1 5F0DE95D
P 5825 4350
F 0 "U101-JP5" H 5800 4950 50  0000 C CNN
F 1 "CONN_01X10" V 5925 4350 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x10" H 5825 4350 50  0001 C CNN
F 3 "" H 5825 4350 50  0000 C CNN
	1    5825 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 U101-JP4
U 1 1 5F0DEBCD
P 6450 4350
F 0 "U101-JP4" H 6475 3750 50  0000 C CNN
F 1 "CONN_01X10" V 6550 4350 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x10" H 6450 4350 50  0001 C CNN
F 3 "" H 6450 4350 50  0000 C CNN
	1    6450 4350
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P101
U 1 1 5F0DF004
P 3375 2500
F 0 "P101" V 3375 2750 50  0000 C CNN
F 1 "CONN_01X02" V 3475 2500 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 3375 2500 50  0001 C CNN
F 3 "" H 3375 2500 50  0000 C CNN
	1    3375 2500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 P102
U 1 1 5F0DF119
P 5025 2500
F 0 "P102" V 5025 2750 50  0000 C CNN
F 1 "CONN_01X02" V 5125 2500 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 5025 2500 50  0001 C CNN
F 3 "" H 5025 2500 50  0000 C CNN
	1    5025 2500
	0    -1   -1   0   
$EndComp
Text Notes 5975 4450 0    50   ~ 0
Adafruit\nHuzzah\nBreakout
Wire Wire Line
	3275 2725 3325 2700
Wire Wire Line
	3425 2700 3475 2725
Wire Notes Line
	6350 3850 5925 3850
Wire Notes Line
	5925 3850 5925 4850
Wire Notes Line
	5925 4850 6350 4850
Wire Notes Line
	6350 4850 6350 3850
Text Notes 5925 4925 0    50   ~ 0
U101
Text Notes 3250 2350 0    60   ~ 0
5V DC
Text Notes 4700 2350 0    60   ~ 0
Piezo speaker
$Comp
L D D101
U 1 1 5F0E9A5B
P 3225 3500
F 0 "D101" H 3225 3600 50  0000 C CNN
F 1 "1N4001" H 3225 3400 50  0000 C CNN
F 2 "Diodes_THT:Diode_DO-41_SOD81_Horizontal_RM10" H 3225 3500 50  0001 C CNN
F 3 "" H 3225 3500 50  0000 C CNN
	1    3225 3500
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
