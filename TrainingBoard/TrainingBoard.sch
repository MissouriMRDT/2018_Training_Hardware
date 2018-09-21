EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:MRDT_Actives
LIBS:MRDT_Connectors
LIBS:MRDT_Devices
LIBS:MRDT_Drill_Holes
LIBS:MRDT_Headers
LIBS:MRDT_ICs
LIBS:MRDT_Passives
LIBS:MRDT_Sensors
LIBS:MRDT_Shields
LIBS:MRDT_Silkscreens
LIBS:MRDT_Switches
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
L AndersonPP Conn?
U 1 1 5BA6656B
P 1200 1350
F 0 "Conn?" H 1350 1300 60  0000 C CNN
F 1 "AndersonPP" H 1300 1600 60  0001 C CNN
F 2 "" H 1050 800 60  0001 C CNN
F 3 "" H 1050 800 60  0001 C CNN
	1    1200 1350
	1    0    0    -1  
$EndComp
$Comp
L AndersonPP Conn?
U 2 1 5BA665DD
P 1200 1000
F 0 "Conn?" H 1350 950 60  0000 C CNN
F 1 "AndersonPP" H 1300 1250 60  0001 C CNN
F 2 "" H 1050 450 60  0001 C CNN
F 3 "" H 1050 450 60  0001 C CNN
	2    1200 1000
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5BA66616
P 2950 1100
F 0 "C?" H 2960 1170 50  0000 L CNN
F 1 "10u" H 2960 1020 50  0000 L CNN
F 2 "" H 2950 1100 50  0001 C CNN
F 3 "" H 2950 1100 50  0001 C CNN
	1    2950 1100
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5BA6663F
P 2000 1100
F 0 "C?" H 2010 1170 50  0000 L CNN
F 1 "10u" H 2010 1020 50  0000 L CNN
F 2 "" H 2000 1100 50  0001 C CNN
F 3 "" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
$Comp
L OKI U?
U 1 1 5BA666EC
P 2300 1000
F 0 "U?" H 2350 950 60  0001 C CNN
F 1 "OKI" H 2500 1250 60  0000 C CNN
F 2 "" H 2100 900 60  0001 C CNN
F 3 "" H 2100 900 60  0001 C CNN
	1    2300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 900  2100 900 
Wire Wire Line
	1600 1250 3200 1250
Wire Wire Line
	2500 1250 2500 1200
Wire Wire Line
	2000 1250 2000 1200
Connection ~ 2000 1250
Wire Wire Line
	2000 1000 2000 900 
Connection ~ 2000 900 
Wire Wire Line
	2900 900  3200 900 
Wire Wire Line
	2950 1000 2950 900 
Wire Wire Line
	2950 1250 2950 1200
Connection ~ 2500 1250
Connection ~ 2950 900 
Text GLabel 3200 900  2    60   Output ~ 0
5V
Connection ~ 2950 1250
Text GLabel 3200 1250 2    60   UnSpc ~ 0
GND
$Comp
L MAX_3232 U?
U 1 1 5BA671B9
P 6150 2150
F 0 "U?" H 6200 2100 60  0000 C CNN
F 1 "MAX_3232" H 6500 3350 60  0000 C CNN
F 2 "" H 6150 1550 60  0001 C CNN
F 3 "" H 6150 1550 60  0001 C CNN
	1    6150 2150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
