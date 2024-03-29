EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MM7D RH/T measuring device"
Date "2024-03-17"
Rev "231006"
Comp "Pozsar Zsolt - http://www.pozsarzs.hu"
Comment1 "Printed circuit board"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mm7d-rescue:pzs_devices_DHT11 U102
U 1 1 5EEE15C4
P 8300 4350
F 0 "U102" H 8250 4600 50  0000 C CNN
F 1 "DHT11" H 8300 4100 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x04" H 8450 4600 50  0001 C CNN
F 3 "" H 8450 4600 50  0001 C CNN
	1    8300 4350
	1    0    0    -1  
$EndComp
NoConn ~ 7000 4000
NoConn ~ 7000 4800
NoConn ~ 5975 4800
NoConn ~ 5975 4700
NoConn ~ 5975 4000
$Comp
L mm7d-rescue:pzs_others_0V #PWR01
U 1 1 5EEE1D86
P 7900 5150
F 0 "#PWR01" H 7900 4900 50  0001 C CNN
F 1 "0V" H 7900 5000 50  0001 C CNN
F 2 "" H 7900 5150 50  0000 C CNN
F 3 "" H 7900 5150 50  0000 C CNN
	1    7900 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR02
U 1 1 5EEE2266
P 3375 3500
F 0 "#PWR02" H 3375 3250 50  0001 C CNN
F 1 "0V" H 3375 3350 50  0001 C CNN
F 2 "" H 3375 3500 50  0000 C CNN
F 3 "" H 3375 3500 50  0000 C CNN
	1    3375 3500
	0    1    -1   0   
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR03
U 1 1 5EEE22DD
P 3375 3100
F 0 "#PWR03" H 3375 2850 50  0001 C CNN
F 1 "0V" H 3375 2950 50  0001 C CNN
F 2 "" H 3375 3100 50  0000 C CNN
F 3 "" H 3375 3100 50  0000 C CNN
	1    3375 3100
	0    1    -1   0   
$EndComp
$Comp
L mm7d-rescue:power_+5V #PWR04
U 1 1 5EEE284E
P 7500 2850
F 0 "#PWR04" H 7500 2700 50  0001 C CNN
F 1 "+5V" H 7500 3000 50  0000 C CNN
F 2 "" H 7500 2850 50  0000 C CNN
F 3 "" H 7500 2850 50  0000 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR05
U 1 1 5EEE2C07
P 7050 3900
F 0 "#PWR05" H 7050 3650 50  0001 C CNN
F 1 "0V" H 7050 3750 50  0001 C CNN
F 2 "" H 7050 3900 50  0000 C CNN
F 3 "" H 7050 3900 50  0000 C CNN
	1    7050 3900
	0    -1   1    0   
$EndComp
NoConn ~ 7000 4600
$Comp
L mm7d-rescue:power_+3.3V #PWR06
U 1 1 5EEE2DDF
P 5850 2850
F 0 "#PWR06" H 5850 2700 50  0001 C CNN
F 1 "+3.3V" H 5850 3000 50  0000 C CNN
F 2 "" H 5850 2850 50  0000 C CNN
F 3 "" H 5850 2850 50  0000 C CNN
	1    5850 2850
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:power_+5V #PWR07
U 1 1 5EEE3F2D
P 4475 3225
F 0 "#PWR07" H 4475 3075 50  0001 C CNN
F 1 "+5V" H 4475 3375 50  0000 C CNN
F 2 "" H 4475 3225 50  0000 C CNN
F 3 "" H 4475 3225 50  0000 C CNN
	1    4475 3225
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:device_R R103
U 1 1 5EEE416B
P 5425 4400
F 0 "R103" V 5375 4175 50  0000 C CNN
F 1 "470" V 5375 4600 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5355 4400 50  0001 C CNN
F 3 "" H 5425 4400 50  0000 C CNN
	1    5425 4400
	0    1    1    0   
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR08
U 1 1 5EEE442D
P 3725 5150
F 0 "#PWR08" H 3725 4900 50  0001 C CNN
F 1 "0V" H 3725 5000 50  0001 C CNN
F 2 "" H 3725 5150 50  0000 C CNN
F 3 "" H 3725 5150 50  0000 C CNN
	1    3725 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR09
U 1 1 5EEE45B4
P 3325 5150
F 0 "#PWR09" H 3325 4900 50  0001 C CNN
F 1 "0V" H 3325 5000 50  0001 C CNN
F 2 "" H 3325 5150 50  0000 C CNN
F 3 "" H 3325 5150 50  0000 C CNN
	1    3325 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:power_+3.3V #PWR010
U 1 1 5EEE5097
P 7950 2850
F 0 "#PWR010" H 7950 2700 50  0001 C CNN
F 1 "+3.3V" H 7950 3000 50  0000 C CNN
F 2 "" H 7950 2850 50  0000 C CNN
F 3 "" H 7950 2850 50  0000 C CNN
	1    7950 2850
	1    0    0    -1  
$EndComp
NoConn ~ 7000 4500
NoConn ~ 5975 4200
NoConn ~ 5975 3900
$Comp
L mm7d-rescue:device_R R106
U 1 1 5EEE8D51
P 7675 3950
F 0 "R106" H 7700 3775 50  0000 L CNN
F 1 "4.7k" H 7750 3900 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 7605 3950 50  0001 C CNN
F 3 "" H 7675 3950 50  0000 C CNN
	1    7675 3950
	1    0    0    -1  
$EndComp
Text Notes 3200 5450 0    60   ~ 0
Power     Act             Status
$Comp
L mm7d-rescue:device_R R108
U 1 1 5EEEB0AE
P 7400 4900
F 0 "R108" H 7475 4950 50  0000 L CNN
F 1 "750" H 7475 4850 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7330 4900 50  0001 C CNN
F 3 "" H 7400 4900 50  0000 C CNN
	1    7400 4900
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR011
U 1 1 5EEEB31B
P 7400 5150
F 0 "#PWR011" H 7400 4900 50  0001 C CNN
F 1 "0V" H 7400 5000 50  0001 C CNN
F 2 "" H 7400 5150 50  0000 C CNN
F 3 "" H 7400 5150 50  0000 C CNN
	1    7400 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:device_R R107
U 1 1 5EEEB91E
P 7400 4500
F 0 "R107" H 7475 4550 50  0000 L CNN
F 1 "5.1k" H 7475 4450 50  0000 L CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM10mm" V 7330 4500 50  0001 C CNN
F 3 "" H 7400 4500 50  0000 C CNN
	1    7400 4500
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:device_R R104
U 1 1 5EF77CF6
P 5425 4500
F 0 "R104" V 5375 4275 50  0000 C CNN
F 1 "470" V 5375 4700 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5355 4500 50  0001 C CNN
F 3 "" H 5425 4500 50  0000 C CNN
	1    5425 4500
	0    1    1    0   
$EndComp
$Comp
L mm7d-rescue:device_R R105
U 1 1 5EF787E4
P 5425 4600
F 0 "R105" V 5375 4375 50  0000 C CNN
F 1 "470" V 5375 4800 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5355 4600 50  0001 C CNN
F 3 "" H 5425 4600 50  0000 C CNN
	1    5425 4600
	0    1    1    0   
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR012
U 1 1 5EF79B42
P 4525 5150
F 0 "#PWR012" H 4525 4900 50  0001 C CNN
F 1 "0V" H 4525 5000 50  0001 C CNN
F 2 "" H 4525 5150 50  0000 C CNN
F 3 "" H 4525 5150 50  0000 C CNN
	1    4525 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR013
U 1 1 5EF79B48
P 4125 5150
F 0 "#PWR013" H 4125 4900 50  0001 C CNN
F 1 "0V" H 4125 5000 50  0001 C CNN
F 2 "" H 4125 5150 50  0000 C CNN
F 3 "" H 4125 5150 50  0000 C CNN
	1    4125 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR014
U 1 1 5EF79BC0
P 4925 5150
F 0 "#PWR014" H 4925 4900 50  0001 C CNN
F 1 "0V" H 4925 5000 50  0001 C CNN
F 2 "" H 4925 5150 50  0000 C CNN
F 3 "" H 4925 5150 50  0000 C CNN
	1    4925 5150
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:device_R R102
U 1 1 5EF7A4FE
P 5425 4300
F 0 "R102" V 5475 4525 50  0000 C CNN
F 1 "470" V 5475 4100 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5355 4300 50  0001 C CNN
F 3 "" H 5425 4300 50  0000 C CNN
	1    5425 4300
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:device_CP_Small C101
U 1 1 5EF7C17E
P 3725 3100
F 0 "C101" V 3625 3325 50  0000 L CNN
F 1 "470u" V 3725 3325 50  0000 L CNN
F 2 "Capacitors_THT:C_Radial_D8_L11.5_P3.5" H 3725 3100 50  0001 C CNN
F 3 "" H 3725 3100 50  0000 C CNN
	1    3725 3100
	0    1    1    0   
$EndComp
Connection ~ 3625 3100
Connection ~ 3825 3100
Wire Wire Line
	5275 4600 4925 4600
Wire Wire Line
	5275 4500 4525 4500
Wire Wire Line
	4925 5100 4925 5150
Wire Wire Line
	4525 5100 4525 5150
Wire Wire Line
	4125 5100 4125 5150
Wire Wire Line
	3425 3500 3375 3500
Wire Wire Line
	3375 3100 3625 3100
Wire Wire Line
	3625 3100 3625 2725
Wire Wire Line
	7000 3900 7050 3900
Wire Wire Line
	5575 4100 5850 4100
Wire Wire Line
	3725 4300 5275 4300
Wire Wire Line
	3725 5100 3725 5150
Wire Wire Line
	3325 5100 3325 5150
Wire Wire Line
	3325 4100 3325 4700
Wire Wire Line
	3725 3500 3825 3500
Wire Wire Line
	5850 4100 5850 2850
Wire Wire Line
	7950 4200 8050 4200
Wire Wire Line
	7900 4500 8050 4500
Wire Wire Line
	7400 4650 7400 4700
Wire Wire Line
	7000 4700 7400 4700
Connection ~ 7400 4700
Wire Wire Line
	7400 5050 7400 5150
Wire Wire Line
	7400 4100 7400 4350
Wire Wire Line
	7500 4100 7400 4100
Wire Wire Line
	5575 4300 5975 4300
Wire Wire Line
	5575 4500 5975 4500
Wire Wire Line
	5975 4600 5575 4600
Wire Wire Line
	4475 3500 4475 3225
$Comp
L mm7d-rescue:pzs_devices_LED-CIRCLE D102
U 1 1 5EF86B1D
P 3325 4900
F 0 "D102" V 3325 5100 50  0000 C CNN
F 1 "white" V 3475 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 3325 4900 50  0001 C CNN
F 3 "" H 3325 4900 50  0000 C CNN
	1    3325 4900
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:pzs_devices_LED-CIRCLE D103
U 1 1 5EF8710B
P 3725 4900
F 0 "D103" V 3725 5100 50  0000 C CNN
F 1 "blue" V 3875 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 3725 4900 50  0001 C CNN
F 3 "" H 3725 4900 50  0000 C CNN
	1    3725 4900
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:pzs_devices_LED-CIRCLE D104
U 1 1 5EF87176
P 4125 4900
F 0 "D104" V 4125 5100 50  0000 C CNN
F 1 "green" V 4275 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 4125 4900 50  0001 C CNN
F 3 "" H 4125 4900 50  0000 C CNN
	1    4125 4900
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:pzs_devices_LED-CIRCLE D105
U 1 1 5EF871E6
P 4525 4900
F 0 "D105" V 4525 5100 50  0000 C CNN
F 1 "yellow" V 4675 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 4525 4900 50  0001 C CNN
F 3 "" H 4525 4900 50  0000 C CNN
	1    4525 4900
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:pzs_devices_LED-CIRCLE D106
U 1 1 5EF8725D
P 4925 4900
F 0 "D106" V 4925 5100 50  0000 C CNN
F 1 "red" V 5075 5000 50  0000 L CNN
F 2 "LEDs:LED-3MM" H 4925 4900 50  0001 C CNN
F 3 "" H 4925 4900 50  0000 C CNN
	1    4925 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 4400 7300 4400
Wire Wire Line
	7300 4400 7300 3150
Wire Wire Line
	7300 3150 5425 3150
Wire Wire Line
	5425 2700 5425 2900
$Comp
L mm7d-rescue:device_CP_Small C102
U 1 1 5EFA265C
P 5425 3000
F 0 "C102" H 5550 2925 50  0000 L CNN
F 1 "2.2u" H 5550 3050 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L7_W4.5_P5" H 5425 3000 50  0001 C CNN
F 3 "" H 5425 3000 50  0000 C CNN
	1    5425 3000
	-1   0    0    1   
$EndComp
$Comp
L mm7d-rescue:pzs_others_0V #PWR015
U 1 1 5EFA2B1B
P 5325 2750
F 0 "#PWR015" H 5325 2500 50  0001 C CNN
F 1 "0V" H 5325 2600 50  0001 C CNN
F 2 "" H 5325 2750 50  0000 C CNN
F 3 "" H 5325 2750 50  0000 C CNN
	1    5325 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 2700 5325 2750
Wire Wire Line
	5425 3150 5425 3100
Wire Wire Line
	7000 4300 7675 4300
Wire Wire Line
	7950 2850 7950 3700
Wire Wire Line
	7675 4300 7675 4100
Connection ~ 7675 4300
Wire Wire Line
	7675 3800 7675 3700
Wire Wire Line
	7675 3700 7950 3700
Connection ~ 7950 3700
NoConn ~ 7000 4200
Wire Wire Line
	5575 4400 5975 4400
Wire Wire Line
	4925 4600 4925 4700
Wire Wire Line
	4525 4500 4525 4700
Wire Wire Line
	4125 4700 4125 4400
Wire Wire Line
	4125 4400 5275 4400
Wire Wire Line
	3725 4700 3725 4300
$Comp
L mm7d-rescue:device_R R101
U 1 1 5F021C4E
P 5425 4100
F 0 "R101" V 5475 4325 50  0000 C CNN
F 1 "470" V 5475 3900 50  0000 C CNN
F 2 "Resistors_THT:Resistor_Horizontal_RM7mm" V 5355 4100 50  0001 C CNN
F 3 "" H 5425 4100 50  0000 C CNN
	1    5425 4100
	0    -1   -1   0   
$EndComp
Connection ~ 5850 4100
Wire Wire Line
	5275 4100 3325 4100
Wire Wire Line
	3825 2725 3825 3100
Connection ~ 3825 3500
$Comp
L mm7d-rescue:CONN_01X10 U101-JP5
U 1 1 5F0DE95D
P 6175 4350
F 0 "U101-JP5" H 6150 4950 50  0000 C CNN
F 1 "CONN_01X10" V 6275 4350 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x10" H 6175 4350 50  0001 C CNN
F 3 "" H 6175 4350 50  0000 C CNN
	1    6175 4350
	1    0    0    -1  
$EndComp
$Comp
L mm7d-rescue:CONN_01X10 U101-JP4
U 1 1 5F0DEBCD
P 6800 4350
F 0 "U101-JP4" H 6825 3750 50  0000 C CNN
F 1 "CONN_01X10" V 6900 4350 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x10" H 6800 4350 50  0001 C CNN
F 3 "" H 6800 4350 50  0000 C CNN
	1    6800 4350
	-1   0    0    1   
$EndComp
$Comp
L mm7d-rescue:CONN_01X02 P101
U 1 1 5F0DF004
P 3725 2500
F 0 "P101" V 3725 2750 50  0000 C CNN
F 1 "CONN_01X02" V 3825 2500 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 3725 2500 50  0001 C CNN
F 3 "" H 3725 2500 50  0000 C CNN
	1    3725 2500
	0    -1   -1   0   
$EndComp
$Comp
L mm7d-rescue:CONN_01X02 P102
U 1 1 5F0DF119
P 5375 2500
F 0 "P102" V 5375 2750 50  0000 C CNN
F 1 "CONN_01X02" V 5475 2500 50  0001 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02" H 5375 2500 50  0001 C CNN
F 3 "" H 5375 2500 50  0000 C CNN
	1    5375 2500
	0    -1   -1   0   
$EndComp
Text Notes 6325 4450 0    50   ~ 0
Adafruit\nHuzzah\nBreakout
Wire Wire Line
	3625 2725 3675 2700
Wire Wire Line
	3775 2700 3825 2725
Wire Notes Line
	6700 3850 6275 3850
Wire Notes Line
	6275 3850 6275 4850
Wire Notes Line
	6275 4850 6700 4850
Wire Notes Line
	6700 4850 6700 3850
Text Notes 6275 4925 0    50   ~ 0
U101
Text Notes 3600 2350 0    60   ~ 0
5V DC
Text Notes 5050 2350 0    60   ~ 0
Piezo speaker
$Comp
L mm7d-rescue:D D101
U 1 1 5F0E9A5B
P 3575 3500
F 0 "D101" H 3575 3600 50  0000 C CNN
F 1 "1N4001" H 3575 3400 50  0000 C CNN
F 2 "Diodes_THT:Diode_DO-41_SOD81_Horizontal_RM10" H 3575 3500 50  0001 C CNN
F 3 "" H 3575 3500 50  0000 C CNN
	1    3575 3500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3825 3100 3825 3500
Wire Wire Line
	7900 4500 7900 5150
Wire Wire Line
	7400 4700 7400 4750
Wire Wire Line
	7675 4300 8050 4300
Wire Wire Line
	7950 3700 7950 4200
Wire Wire Line
	5850 4100 5975 4100
Wire Wire Line
	3825 3500 4475 3500
Wire Wire Line
	7500 2850 7500 4100
Connection ~ 7400 4100
Wire Wire Line
	7400 4100 7000 4100
$EndSCHEMATC
