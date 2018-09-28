EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:74xx
LIBS:audio
LIBS:interface
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
L MRDT_Connectors:AndersonPP Conn?
U 1 1 5BAE8B34
P 900 1500
F 0 "Conn?" H 1050 1750 60  0000 C CNN
F 1 "AndersonPP" H 1106 1781 60  0001 C CNN
F 2 "" H 750 950 60  0001 C CNN
F 3 "" H 750 950 60  0001 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Connectors:AndersonPP Conn?
U 2 1 5BAE8BDD
P 900 1150
F 0 "Conn?" H 1050 1400 60  0000 C CNN
F 1 "AndersonPP" V 1106 1431 60  0001 C CNN
F 2 "" H 750 600 60  0001 C CNN
F 3 "" H 750 600 60  0001 C CNN
	2    900  1150
	1    0    0    -1  
$EndComp
$Comp
L MRDT_Devices:OKI U?
U 1 1 5BAE8C34
P 2450 1150
F 0 "U?" H 2500 1100 60  0001 C CNN
F 1 "OKI" H 2650 1431 60  0000 C CNN
F 2 "" H 2250 1050 60  0001 C CNN
F 3 "" H 2250 1050 60  0001 C CNN
	1    2450 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BAE8C76
P 1650 1200
F 0 "C?" H 1742 1246 50  0000 L CNN
F 1 "10u" H 1750 1150 50  0000 L CNN
F 2 "" H 1650 1200 50  0001 C CNN
F 3 "~" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BAE8CF4
P 3350 1250
F 0 "C?" H 3442 1296 50  0000 L CNN
F 1 "10u" H 3442 1205 50  0000 L CNN
F 2 "" H 3350 1250 50  0001 C CNN
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
	4500 600  4500 2100
Wire Notes Line
	4500 2100 600  2100
Wire Notes Line
	600  2100 600  600 
Wire Notes Line
	600  600  4500 600 
$EndSCHEMATC
