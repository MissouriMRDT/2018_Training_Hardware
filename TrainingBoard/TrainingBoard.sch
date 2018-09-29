EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:74xx
LIBS:audio
LIBS:interface
LIBS:TrainingBoard-cache
EELAYER 26 0
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
L MRDT_Connectors:AndersonPP Conn1
U 1 1 5BAE8B34
P 900 1500
F 0 "Conn1" H 1050 1750 60  0000 C CNN
F 1 "AndersonPP" H 1106 1781 60  0001 C CNN
F 2 "" H 750 950 60  0001 C CNN
F 3 "" H 750 950 60  0001 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Connectors:AndersonPP Conn1
U 2 1 5BAE8BDD
P 900 1150
F 0 "Conn1" H 1050 1400 60  0000 C CNN
F 1 "AndersonPP" V 1106 1431 60  0001 C CNN
F 2 "" H 750 600 60  0001 C CNN
F 3 "" H 750 600 60  0001 C CNN
	2    900  1150
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Devices:OKI U2
U 1 1 5BAE8C34
P 2450 1150
F 0 "U2" H 2500 1100 60  0001 C CNN
F 1 "OKI" H 2650 1431 60  0000 C CNN
F 2 "" H 2250 1050 60  0001 C CNN
F 3 "" H 2250 1050 60  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BAE8C76
P 1650 1200
F 0 "C3" H 1742 1246 50  0000 L CNN
F 1 "10u" H 1750 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1650 1200 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BAE8CF4
P 3350 1250
F 0 "C6" H 3442 1296 50  0000 L CNN
F 1 "10u" H 3442 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3350 1250 50  0001 C CNN
F 3 "~" H 3350 1250 50  0001 C CNN
	1    3350 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1050 1650 1050
Wire Wire Line
	1650 1050 1650 1100
Wire Wire Line
	1300 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1300
Wire Wire Line
	1650 1400 2650 1400
Wire Wire Line
	2650 1400 2650 1350
Connection ~ 1650 1400
Wire Wire Line
	2250 1050 1650 1050
Connection ~ 1650 1050
Wire Wire Line
	3050 1050 3350 1050
Wire Wire Line
	3350 1050 3350 1150
Wire Wire Line
	3350 1350 3350 1400
Wire Wire Line
	3350 1400 2650 1400
Connection ~ 2650 1400
Wire Wire Line
	3350 1050 4000 1050
Connection ~ 3350 1050
Wire Wire Line
	3350 1400 4000 1400
Connection ~ 3350 1400
Text GLabel 4000 1400 2    50   UnSpc ~ 0
GND
Text GLabel 4000 1050 2    50   Output ~ 0
5V
Wire Notes Line
	4500 2100 600  2100
Wire Notes Line
	600  600  4500 600 
Text Notes 2100 1900 0    79   ~ 16
Power Filtering
$Comp
L MRDT_Connectors:Molex_SL_05 Conn2
U 1 1 5BAE921F
P 3800 2850
F 0 "Conn2" H 3800 2800 60  0000 L CNN
F 1 "Molex_SL_05" H 3800 3450 60  0000 L CNN
F 2 "" H 3800 2850 60  0001 C CNN
F 3 "" H 3800 2850 60  0001 C CNN
	1    3800 2850
	1    0    0    -1  
$EndComp
Text GLabel 3600 3600 0    50   Output ~ 0
RX_2_SL
Text GLabel 3600 3500 0    50   Input ~ 0
TX_2_SL
Text GLabel 3600 3400 0    50   UnSpc ~ 0
GND
$Comp
L MRDT_Connectors:Molex_SL_05 Conn3
U 1 1 5BAE9293
P 3800 3650
F 0 "Conn3" H 3800 3600 60  0000 L CNN
F 1 "Molex_SL_05" H 3800 4250 60  0000 L CNN
F 2 "" H 3800 3650 60  0001 C CNN
F 3 "" H 3800 3650 60  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
NoConn ~ 3600 3200
NoConn ~ 3600 3300
NoConn ~ 3600 2400
NoConn ~ 3600 2500
Text GLabel 3600 2600 0    50   UnSpc ~ 0
GND
Text GLabel 3600 2700 0    50   Input ~ 0
TX_1_SL
Text GLabel 3600 2800 0    50   Output ~ 0
RX_1_SL
Text Notes 3900 2750 1    50   ~ 0
motor 1
Text Notes 3900 3550 1    50   ~ 0
motor 2
Wire Notes Line
	3100 4100 3100 2100
Wire Notes Line
	4500 600  4500 4100
Text Notes 4050 4000 2    79   ~ 16
Connectors
$Comp
L MRDT_ICs:MAX_3232 U1
U 1 1 5BAEBAF8
P 1550 3650
F 0 "U1" H 1600 3600 60  0000 C CNN
F 1 "MAX_3232" H 1900 4881 60  0000 C CNN
F 2 "" H 1550 3050 60  0001 C CNN
F 3 "" H 1550 3050 60  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5BAEBC44
P 2550 2700
F 0 "C4" H 2642 2746 50  0000 L CNN
F 1 "C_Small" H 2642 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2550 2700 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
	1    2550 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BAEBC96
P 2550 3000
F 0 "C5" H 2642 3046 50  0000 L CNN
F 1 "C_Small" H 2642 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2550 3000 50  0001 C CNN
F 3 "~" H 2550 3000 50  0001 C CNN
	1    2550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2900 2550 2900
Wire Wire Line
	2450 3100 2550 3100
Wire Wire Line
	2450 2800 2550 2800
Wire Wire Line
	2450 2600 2550 2600
$Comp
L Device:C_Small C1
U 1 1 5BAEC190
P 1150 3000
F 0 "C1" V 1100 3100 50  0000 C CNN
F 1 "0.1u" V 1300 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1150 3000 50  0001 C CNN
F 3 "~" H 1150 3000 50  0001 C CNN
	1    1150 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BAEC288
P 1150 3100
F 0 "C2" V 1200 3200 50  0000 C CNN
F 1 "0.1u" V 1000 3000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1150 3100 50  0001 C CNN
F 3 "~" H 1150 3100 50  0001 C CNN
	1    1150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3000 1350 3000
Wire Wire Line
	1250 3100 1350 3100
Wire Wire Line
	1050 3000 900  3000
Wire Wire Line
	1050 3100 900  3100
Text GLabel 900  3000 0    50   UnSpc ~ 0
GND
Text GLabel 900  3100 0    50   UnSpc ~ 0
GND
Text GLabel 1350 2800 0    50   UnSpc ~ 0
GND
Text GLabel 1350 2600 0    50   Input ~ 0
+5V
Text GLabel 2450 3250 2    50   Input ~ 0
RX_1_SL
Text GLabel 2450 3500 2    50   Input ~ 0
RX_2_SL
Text GLabel 2450 3350 2    50   Output ~ 0
TX_1_SL
Text GLabel 2450 3600 2    50   Output ~ 0
TX_2_SL
Text GLabel 1350 3250 0    50   Output ~ 0
RX_1_IC
Text GLabel 1350 3350 0    50   Input ~ 0
TX_1_IC
Text GLabel 1350 3500 0    50   Output ~ 0
RX_2_IC
Text GLabel 1350 3600 0    50   Input ~ 0
TX_2_IC
Wire Notes Line
	600  600  600  4100
Wire Notes Line
	600  4100 4500 4100
Text Notes 2200 2300 2    79   ~ 16
Power Shifter
$Comp
L MRDT_Shields:TM4C129E_Launchpad U3
U 1 1 5BAF03B4
P 5650 1900
F 0 "U3" H 5650 1850 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 5450 3100 60  0000 L CNN
F 2 "" H 5650 1900 60  0001 C CNN
F 3 "" H 5650 1900 60  0001 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U3
U 2 1 5BAF0420
P 6150 1900
F 0 "U3" H 6150 1850 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 4450 2900 60  0001 L CNN
F 2 "" H 6150 1900 60  0001 C CNN
F 3 "" H 6150 1900 60  0001 C CNN
	2    6150 1900
	-1   0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U4
U 1 1 5BAF047A
P 5650 3150
F 0 "U4" H 5650 3100 60  0000 L CNN
F 1 "TM4C129E_Launchpad" H 5500 2850 60  0001 L CNN
F 2 "" H 5650 3150 60  0001 C CNN
F 3 "" H 5650 3150 60  0001 C CNN
	1    5650 3150
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Shields:TM4C129E_Launchpad U4
U 2 1 5BAF04D6
P 6150 3150
F 0 "U4" H 6300 3100 60  0000 C CNN
F 1 "TM4C129E_Launchpad" H 6180 4321 60  0001 C CNN
F 2 "" H 6150 3150 60  0001 C CNN
F 3 "" H 6150 3150 60  0001 C CNN
	2    6150 3150
	-1   0    0    -1  
$EndComp
Text GLabel 6350 950  2    50   Input ~ 10
+5V
Text GLabel 7250 2450 0    50   Output ~ 0
RX_1_IC
Text GLabel 5200 2300 0    50   Input ~ 0
TX_1_IC
Text GLabel 7000 2250 0    50   Output ~ 0
RX_2_IC
Text GLabel 7450 2200 0    50   Input ~ 0
TX_2_IC
$EndSCHEMATC
