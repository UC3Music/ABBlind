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
LIBS:kicad-library
LIBS:opendous
LIBS:arduino_uno
LIBS:ABBlind-cache
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
L CONNECTORS_JACK_FEMALE_STEREO_6_PINS J2
U 1 1 55AAD159
P 2650 950
F 0 "J2" H 3200 450 60  0000 C CNN
F 1 "JACK_FEMALE_STEREO_6_PINS" H 2650 450 60  0000 C CNN
F 2 "kicad-library:Conn_Jack_Female_635_THD" H 3100 900 60  0001 C CNN
F 3 "" H 3100 900 60  0000 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
$Comp
L CONNECTORS_JACK_FEMALE_STEREO_6_PINS J3
U 1 1 55AAD4DD
P 2650 1800
F 0 "J3" H 3200 1300 60  0000 C CNN
F 1 "JACK_FEMALE_STEREO_6_PINS" H 2650 1300 60  0000 C CNN
F 2 "kicad-library:Conn_Jack_Female_635_THD" H 3100 1750 60  0001 C CNN
F 3 "" H 3100 1750 60  0000 C CNN
	1    2650 1800
	1    0    0    -1  
$EndComp
$Comp
L TS5A22364 U1
U 1 1 55AAD96A
P 5900 1350
F 0 "U1" H 6050 850 60  0000 C CNN
F 1 "TS5A22364" H 5650 850 60  0000 C CNN
F 2 "" H 5800 1200 60  0001 C CNN
F 3 "" H 5800 1200 60  0000 C CNN
	1    5900 1350
	1    0    0    -1  
$EndComp
$Comp
L TS5A22364 U1
U 2 1 55AAF3AA
P 8150 1350
F 0 "U1" H 8300 850 60  0000 C CNN
F 1 "TS5A22364" H 7900 850 60  0000 C CNN
F 2 "" H 8050 1200 60  0001 C CNN
F 3 "" H 8050 1200 60  0000 C CNN
	2    8150 1350
	1    0    0    -1  
$EndComp
$Comp
L TS5A22364 U2
U 1 1 55AAF4D4
P 5900 2400
F 0 "U2" H 6050 1900 60  0000 C CNN
F 1 "TS5A22364" H 5650 1900 60  0000 C CNN
F 2 "" H 5800 2250 60  0001 C CNN
F 3 "" H 5800 2250 60  0000 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
$Comp
L TS5A22364 U2
U 2 1 55AAF4DA
P 8150 2400
F 0 "U2" H 8300 1900 60  0000 C CNN
F 1 "TS5A22364" H 7900 1900 60  0000 C CNN
F 2 "" H 8050 2250 60  0001 C CNN
F 3 "" H 8050 2250 60  0000 C CNN
	2    8150 2400
	1    0    0    -1  
$EndComp
Text Notes 1100 1300 0    60   ~ 0
INPUT A
Text Notes 1100 2200 0    60   ~ 0
INPUT B
Text Label 3700 800  2    60   ~ 0
RIGHT_A
Text Label 3700 1100 2    60   ~ 0
LEFT_A
Text Label 3700 1200 2    60   ~ 0
GND_A
Text Label 3700 1650 2    60   ~ 0
RIGHT_B
Text Label 3700 1950 2    60   ~ 0
LEFT_B
Text Label 3700 2050 2    60   ~ 0
GND_B
$Comp
L CONNECTORS_JACK_FEMALE_STEREO_6_PINS J1
U 1 1 55AB0263
P 1800 2800
F 0 "J1" H 2350 2300 60  0000 C CNN
F 1 "JACK_FEMALE_STEREO_6_PINS" H 1800 2300 60  0000 C CNN
F 2 "kicad-library:Conn_Jack_Female_635_THD" H 2250 2750 60  0001 C CNN
F 3 "" H 2250 2750 60  0000 C CNN
	1    1800 2800
	-1   0    0    -1  
$EndComp
Text Notes 3350 3200 2    60   ~ 0
OUTPUT
Text Label 750  2650 0    60   ~ 0
RIGHT_OUT
Text Label 750  2950 0    60   ~ 0
LEFT_OUT
Text Label 750  3050 0    60   ~ 0
GND_OUT
Text Label 6950 1350 2    60   ~ 0
RIGHT_OUT
Text Label 4950 1400 0    60   ~ 0
RIGHT_A
Text Label 4950 2450 0    60   ~ 0
LEFT_A
Text Label 7200 1400 0    60   ~ 0
GND_A
Text Label 4950 1300 0    60   ~ 0
RIGHT_B
Text Label 4950 2350 0    60   ~ 0
LEFT_B
Text Label 7200 1300 0    60   ~ 0
GND_B
Text Label 7200 2450 0    60   ~ 0
GND_A
Text Label 7200 2350 0    60   ~ 0
GND_B
Text Label 6850 2400 2    60   ~ 0
LEFT_OUT
Text Label 9100 1350 2    60   ~ 0
GND_OUT
Text Label 9100 2400 2    60   ~ 0
GND_OUT
NoConn ~ 3200 900 
NoConn ~ 3200 1000
NoConn ~ 3200 1750
NoConn ~ 3200 1850
NoConn ~ 1250 2750
NoConn ~ 1250 2850
NoConn ~ 1250 3150
Text Label 4850 1550 0    60   ~ 0
AUDIO_CNTRL
Text Label 4850 2600 0    60   ~ 0
AUDIO_CNTRL
Text Label 7100 1550 0    60   ~ 0
AUDIO_CNTRL
Text Label 7100 2600 0    60   ~ 0
AUDIO_CNTRL
$Comp
L R R1
U 1 1 55AB12ED
P 2000 4150
F 0 "R1" V 1900 4150 50  0000 C CNN
F 1 "R" V 2000 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 4150 30  0001 C CNN
F 3 "" H 2000 4150 30  0000 C CNN
	1    2000 4150
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 55AB1412
P 2000 4300
F 0 "R2" V 2100 4300 50  0000 C CNN
F 1 "R" V 2000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 4300 30  0001 C CNN
F 3 "" H 2000 4300 30  0000 C CNN
	1    2000 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 55AB1886
P 900 5800
F 0 "#PWR01" H 900 5550 50  0001 C CNN
F 1 "GND" H 900 5650 50  0000 C CNN
F 2 "" H 900 5800 60  0000 C CNN
F 3 "" H 900 5800 60  0000 C CNN
	1    900  5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55AB18CB
P 6450 2750
F 0 "#PWR02" H 6450 2500 50  0001 C CNN
F 1 "GND" H 6450 2600 50  0000 C CNN
F 2 "" H 6450 2750 60  0000 C CNN
F 3 "" H 6450 2750 60  0000 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55AB19F7
P 6450 1700
F 0 "#PWR03" H 6450 1450 50  0001 C CNN
F 1 "GND" H 6450 1550 50  0000 C CNN
F 2 "" H 6450 1700 60  0000 C CNN
F 3 "" H 6450 1700 60  0000 C CNN
	1    6450 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 55AB1A45
P 8700 1700
F 0 "#PWR04" H 8700 1450 50  0001 C CNN
F 1 "GND" H 8700 1550 50  0000 C CNN
F 2 "" H 8700 1700 60  0000 C CNN
F 3 "" H 8700 1700 60  0000 C CNN
	1    8700 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 55AB1A71
P 8700 2750
F 0 "#PWR05" H 8700 2500 50  0001 C CNN
F 1 "GND" H 8700 2600 50  0000 C CNN
F 2 "" H 8700 2750 60  0000 C CNN
F 3 "" H 8700 2750 60  0000 C CNN
	1    8700 2750
	1    0    0    -1  
$EndComp
Text Label 2550 4150 2    60   ~ 0
LED_1_1
Text Label 2550 4300 2    60   ~ 0
LED_1_2
Text Label 2550 4750 2    60   ~ 0
LED_2_1
Text Label 2550 4900 2    60   ~ 0
LED_2_2
Text Label 2550 5350 2    60   ~ 0
LED_3_1
Text Label 2550 5500 2    60   ~ 0
LED_3_2
$Comp
L C C5
U 1 1 55C665D2
P 9450 1900
F 0 "C5" H 9475 2000 50  0000 L CNN
F 1 "0.1uF" H 9200 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9488 1750 30  0001 C CNN
F 3 "" H 9450 1900 60  0000 C CNN
	1    9450 1900
	-1   0    0    1   
$EndComp
Text Notes 9650 2200 0    60   ~ 0
TI recommeds a\n0.1uF bypass cap\nnear supply
Text Label 3500 4100 0    60   ~ 0
LED_1_1
Text Label 3500 4300 0    60   ~ 0
LED_1_2
Text Label 3500 4400 0    60   ~ 0
LED_2_1
Text Label 3500 4800 0    60   ~ 0
LED_2_2
Text Label 3500 4900 0    60   ~ 0
LED_3_1
Text Label 3500 5000 0    60   ~ 0
LED_3_2
NoConn ~ 3900 3900
NoConn ~ 3900 5300
$Comp
L ARDUINO_UNO BRD1
U 1 1 55C697CC
P 4700 5800
F 0 "BRD1" H 4950 6100 60  0000 C CNN
F 1 "ARDUINO_UNO" H 4700 7050 60  0000 C CNN
F 2 "" H 4700 5800 60  0001 C CNN
F 3 "" H 4700 5800 60  0000 C CNN
	1    4700 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 55C699BF
P 6100 5050
F 0 "#PWR06" H 6100 4800 50  0001 C CNN
F 1 "GND" H 6100 4900 50  0000 C CNN
F 2 "" H 6100 5050 60  0000 C CNN
F 3 "" H 6100 5050 60  0000 C CNN
	1    6100 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55C69AC2
P 3800 5350
F 0 "#PWR07" H 3800 5100 50  0001 C CNN
F 1 "GND" H 3800 5200 50  0000 C CNN
F 2 "" H 3800 5350 60  0000 C CNN
F 3 "" H 3800 5350 60  0000 C CNN
	1    3800 5350
	1    0    0    -1  
$EndComp
NoConn ~ 3900 5100
Text Label 5850 4000 2    60   ~ 0
AUDIO_CNTRL
$Comp
L SW_PUSH SW1
U 1 1 55C69EAF
P 1550 6300
F 0 "SW1" H 1700 6410 50  0000 C CNN
F 1 "SW_PUSH" H 1550 6220 50  0000 C CNN
F 2 "kicad-library:Switches-Push_switch_THD" H 1550 6300 60  0001 C CNN
F 3 "" H 1550 6300 60  0000 C CNN
	1    1550 6300
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 55C6A150
P 6450 6500
F 0 "SW2" H 6600 6610 50  0000 C CNN
F 1 "SW_PUSH" H 6450 6420 50  0000 C CNN
F 2 "kicad-library:Switches-Push_switch_THD" H 6450 6500 60  0001 C CNN
F 3 "" H 6450 6500 60  0000 C CNN
	1    6450 6500
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 55C6A174
P 6100 6500
F 0 "C1" H 6125 6600 50  0000 L CNN
F 1 "C" H 6125 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6138 6350 30  0001 C CNN
F 3 "" H 6100 6500 60  0000 C CNN
	1    6100 6500
	1    0    0    -1  
$EndComp
Text Label 2450 6300 2    60   ~ 0
FOOTSWITCH
$Comp
L GND #PWR08
U 1 1 55C6A801
P 1100 6450
F 0 "#PWR08" H 1100 6200 50  0001 C CNN
F 1 "GND" H 1100 6300 50  0000 C CNN
F 2 "" H 1100 6450 60  0000 C CNN
F 3 "" H 1100 6450 60  0000 C CNN
	1    1100 6450
	1    0    0    -1  
$EndComp
Text Label 3300 4000 0    60   ~ 0
FOOTSWITCH
$Comp
L GND #PWR09
U 1 1 55C6AD23
P 6450 6950
F 0 "#PWR09" H 6450 6700 50  0001 C CNN
F 1 "GND" H 6450 6800 50  0000 C CNN
F 2 "" H 6450 6950 60  0000 C CNN
F 3 "" H 6450 6950 60  0000 C CNN
	1    6450 6950
	1    0    0    -1  
$EndComp
Text Label 5550 5300 2    60   ~ 0
~RESET
Text Label 5700 6100 0    60   ~ 0
~RESET
NoConn ~ 5250 3900
NoConn ~ 5250 4100
NoConn ~ 5250 4200
NoConn ~ 5250 4300
NoConn ~ 3900 4200
NoConn ~ 3900 4500
NoConn ~ 3900 4700
NoConn ~ 5250 5200
NoConn ~ 5250 4800
$Comp
L +5V #PWR010
U 1 1 55C6C81D
P 5800 5200
F 0 "#PWR010" H 5800 5050 50  0001 C CNN
F 1 "+5V" H 5800 5340 50  0000 C CNN
F 2 "" H 5800 5200 60  0000 C CNN
F 3 "" H 5800 5200 60  0000 C CNN
	1    5800 5200
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55C6CB77
P 9250 1900
F 0 "C4" H 9275 2000 50  0000 L CNN
F 1 "0.1uF" H 9275 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9288 1750 30  0001 C CNN
F 3 "" H 9250 1900 60  0000 C CNN
	1    9250 1900
	-1   0    0    1   
$EndComp
$Comp
L REGULATORS_TLV700xx U3
U 1 1 55C6CFA6
P 8250 4400
F 0 "U3" H 8600 4150 60  0000 C CNN
F 1 "TLV70033DDCT" H 8200 4750 60  0000 C CNN
F 2 "kicad-library:SOT-23-5" H 8350 4250 60  0001 C CNN
F 3 "" H 8350 4250 60  0000 C CNN
	1    8250 4400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55C6D5AC
P 9050 4500
F 0 "C3" H 9075 4600 50  0000 L CNN
F 1 "1uF X5R" H 9075 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9088 4350 30  0001 C CNN
F 3 "" H 9050 4500 60  0000 C CNN
	1    9050 4500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR011
U 1 1 55C6D750
P 9050 4700
F 0 "#PWR011" H 9050 4450 50  0001 C CNN
F 1 "GND" H 9050 4550 50  0000 C CNN
F 2 "" H 9050 4700 60  0000 C CNN
F 3 "" H 9050 4700 60  0000 C CNN
	1    9050 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 55C6D78B
P 8300 4800
F 0 "#PWR012" H 8300 4550 50  0001 C CNN
F 1 "GND" H 8300 4650 50  0000 C CNN
F 2 "" H 8300 4800 60  0000 C CNN
F 3 "" H 8300 4800 60  0000 C CNN
	1    8300 4800
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55C6D9D5
P 7400 4450
F 0 "C2" H 7425 4550 50  0000 L CNN
F 1 "0.1-1uF X5R" H 7425 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7438 4300 30  0001 C CNN
F 3 "" H 7400 4450 60  0000 C CNN
	1    7400 4450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 55C6D9DB
P 7400 4650
F 0 "#PWR013" H 7400 4400 50  0001 C CNN
F 1 "GND" H 7400 4500 50  0000 C CNN
F 2 "" H 7400 4650 60  0000 C CNN
F 3 "" H 7400 4650 60  0000 C CNN
	1    7400 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 55C6DDA8
P 7150 4200
F 0 "#PWR014" H 7150 4050 50  0001 C CNN
F 1 "+5V" H 7150 4340 50  0000 C CNN
F 2 "" H 7150 4200 60  0000 C CNN
F 3 "" H 7150 4200 60  0000 C CNN
	1    7150 4200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 55C6DF5C
P 9250 4150
F 0 "#PWR015" H 9250 4000 50  0001 C CNN
F 1 "+3.3V" H 9250 4290 50  0000 C CNN
F 2 "" H 9250 4150 60  0000 C CNN
F 3 "" H 9250 4150 60  0000 C CNN
	1    9250 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR016
U 1 1 55C6E0E4
P 5400 1050
F 0 "#PWR016" H 5400 900 50  0001 C CNN
F 1 "+3.3V" H 5400 1190 50  0000 C CNN
F 2 "" H 5400 1050 60  0000 C CNN
F 3 "" H 5400 1050 60  0000 C CNN
	1    5400 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR017
U 1 1 55C6E2C5
P 5400 2100
F 0 "#PWR017" H 5400 1950 50  0001 C CNN
F 1 "+3.3V" H 5400 2240 50  0000 C CNN
F 2 "" H 5400 2100 60  0000 C CNN
F 3 "" H 5400 2100 60  0000 C CNN
	1    5400 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR018
U 1 1 55C6E39F
P 7650 1050
F 0 "#PWR018" H 7650 900 50  0001 C CNN
F 1 "+3.3V" H 7650 1190 50  0000 C CNN
F 2 "" H 7650 1050 60  0000 C CNN
F 3 "" H 7650 1050 60  0000 C CNN
	1    7650 1050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR019
U 1 1 55C6E550
P 7650 2100
F 0 "#PWR019" H 7650 1950 50  0001 C CNN
F 1 "+3.3V" H 7650 2240 50  0000 C CNN
F 2 "" H 7650 2100 60  0000 C CNN
F 3 "" H 7650 2100 60  0000 C CNN
	1    7650 2100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 55C6E58C
P 9350 1650
F 0 "#PWR020" H 9350 1500 50  0001 C CNN
F 1 "+3.3V" H 9350 1790 50  0000 C CNN
F 2 "" H 9350 1650 60  0000 C CNN
F 3 "" H 9350 1650 60  0000 C CNN
	1    9350 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 55C6E775
P 9350 2150
F 0 "#PWR021" H 9350 1900 50  0001 C CNN
F 1 "GND" H 9350 2000 50  0000 C CNN
F 2 "" H 9350 2150 60  0000 C CNN
F 3 "" H 9350 2150 60  0000 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
NoConn ~ 3900 3800
NoConn ~ 5250 3800
NoConn ~ 3200 1300
NoConn ~ 3200 2150
Wire Notes Line
	1800 900  1800 1050
Wire Notes Line
	1700 1050 1700 900 
Wire Notes Line
	1300 900  1800 900 
Wire Notes Line
	1300 850  1300 1100
Wire Notes Line
	750  850  750  1100
Wire Notes Line
	750  1100 1300 1100
Wire Notes Line
	1300 850  750  850 
Wire Notes Line
	1800 1050 1300 1050
Wire Notes Line
	1600 1050 1600 900 
Wire Notes Line
	1800 1800 1800 1950
Wire Notes Line
	1700 1950 1700 1800
Wire Notes Line
	1300 1800 1800 1800
Wire Notes Line
	1300 1750 1300 2000
Wire Notes Line
	750  1750 750  2000
Wire Notes Line
	750  2000 1300 2000
Wire Notes Line
	1300 1750 750  1750
Wire Notes Line
	1800 1950 1300 1950
Wire Notes Line
	1600 1950 1600 1800
Wire Wire Line
	3200 800  3700 800 
Wire Wire Line
	3200 1100 3700 1100
Wire Wire Line
	3700 1200 3200 1200
Wire Wire Line
	3200 1650 3700 1650
Wire Wire Line
	3200 1950 3700 1950
Wire Wire Line
	3700 2050 3200 2050
Wire Notes Line
	2650 2800 2650 2950
Wire Notes Line
	2750 2950 2750 2800
Wire Notes Line
	3150 2800 2650 2800
Wire Notes Line
	3150 2750 3150 3000
Wire Notes Line
	3700 2750 3700 3000
Wire Notes Line
	3700 3000 3150 3000
Wire Notes Line
	3150 2750 3700 2750
Wire Notes Line
	2650 2950 3150 2950
Wire Notes Line
	2850 2950 2850 2800
Wire Wire Line
	1250 2650 750  2650
Wire Wire Line
	1250 2950 750  2950
Wire Wire Line
	750  3050 1250 3050
Wire Wire Line
	6350 1350 6950 1350
Wire Wire Line
	5450 1400 4950 1400
Wire Wire Line
	5450 2450 4950 2450
Wire Wire Line
	7200 1400 7700 1400
Wire Wire Line
	5450 1300 4950 1300
Wire Wire Line
	5450 2350 4950 2350
Wire Wire Line
	7200 1300 7700 1300
Wire Wire Line
	7200 2450 7700 2450
Wire Wire Line
	7200 2350 7700 2350
Wire Wire Line
	6350 2400 6850 2400
Wire Wire Line
	9100 1350 8600 1350
Wire Wire Line
	9100 2400 8600 2400
Wire Wire Line
	5450 1550 4850 1550
Wire Wire Line
	5450 2600 4850 2600
Wire Wire Line
	7700 1550 7100 1550
Wire Wire Line
	7700 2600 7100 2600
Wire Wire Line
	1850 4150 1750 4150
Wire Wire Line
	1750 4300 1850 4300
Wire Wire Line
	6450 2750 6450 2700
Wire Wire Line
	6450 2700 6350 2700
Wire Wire Line
	6450 1700 6450 1650
Wire Wire Line
	6450 1650 6350 1650
Wire Wire Line
	8700 1700 8700 1650
Wire Wire Line
	8700 1650 8600 1650
Wire Wire Line
	8700 2750 8700 2700
Wire Wire Line
	8700 2700 8600 2700
Wire Wire Line
	2150 4150 2550 4150
Wire Wire Line
	2150 4300 2550 4300
Wire Wire Line
	2150 4750 2550 4750
Wire Wire Line
	2150 4900 2550 4900
Wire Wire Line
	2150 5350 2550 5350
Wire Wire Line
	2150 5500 2550 5500
Wire Wire Line
	3500 4100 3900 4100
Wire Wire Line
	3900 4300 3500 4300
Wire Wire Line
	3900 4400 3500 4400
Wire Wire Line
	3900 4800 3500 4800
Wire Wire Line
	3900 4900 3500 4900
Wire Wire Line
	3900 5000 3500 5000
Wire Wire Line
	5250 5000 6100 5000
Wire Wire Line
	5250 4900 6100 4900
Wire Wire Line
	3800 5200 3800 5350
Wire Wire Line
	3900 5200 3800 5200
Wire Wire Line
	5250 4000 5850 4000
Wire Wire Line
	2450 6300 1850 6300
Wire Wire Line
	1100 6300 1100 6450
Wire Wire Line
	1250 6300 1100 6300
Wire Wire Line
	3300 4000 3900 4000
Wire Wire Line
	6100 6350 6100 6100
Wire Wire Line
	5700 6100 6450 6100
Wire Wire Line
	6450 6800 6450 6950
Wire Wire Line
	6450 6850 6100 6850
Wire Wire Line
	6100 6850 6100 6650
Connection ~ 6450 6850
Connection ~ 6100 6100
Wire Wire Line
	5250 5300 5550 5300
Wire Wire Line
	6450 6100 6450 6200
Wire Wire Line
	5800 5200 5600 5200
Wire Wire Line
	5600 5200 5600 5100
Wire Wire Line
	5600 5100 5250 5100
Wire Wire Line
	8850 4250 9250 4250
Wire Wire Line
	9050 4250 9050 4350
Connection ~ 9050 4250
Wire Wire Line
	9050 4650 9050 4650
Wire Wire Line
	8300 4750 8300 4800
Wire Wire Line
	9050 4700 9050 4650
Wire Wire Line
	7400 4600 7400 4600
Wire Wire Line
	7400 4650 7400 4600
Wire Wire Line
	7150 4250 7750 4250
Wire Wire Line
	7400 4300 7400 4250
Connection ~ 7400 4250
Wire Wire Line
	7750 4400 7650 4400
Wire Wire Line
	7650 4400 7650 4250
Connection ~ 7650 4250
Wire Wire Line
	7150 4250 7150 4200
Wire Wire Line
	9250 4250 9250 4150
Wire Wire Line
	5450 1100 5400 1100
Wire Wire Line
	5400 1100 5400 1050
Wire Wire Line
	5450 2150 5400 2150
Wire Wire Line
	5400 2150 5400 2100
Wire Wire Line
	7700 1100 7650 1100
Wire Wire Line
	7650 1100 7650 1050
Wire Wire Line
	7700 2150 7650 2150
Wire Wire Line
	7650 2150 7650 2100
Wire Wire Line
	9350 1700 9350 1650
Connection ~ 9350 1700
Wire Wire Line
	9350 2150 9350 2100
Wire Wire Line
	9250 2100 9450 2100
Wire Wire Line
	9250 2100 9250 2050
Wire Wire Line
	9450 2100 9450 2050
Connection ~ 9350 2100
Wire Wire Line
	9450 1700 9450 1750
Wire Wire Line
	9250 1700 9450 1700
Wire Wire Line
	9250 1700 9250 1750
Wire Wire Line
	6100 4900 6100 5050
Connection ~ 6100 5000
$Comp
L LED_BICOLOR D1
U 1 1 55CA8379
P 1450 3900
F 0 "D1" H 1550 3400 50  0000 C CNN
F 1 "LED_BICOLOR" H 1550 3800 50  0000 C CNN
F 2 "" H 1550 3500 60  0000 C CNN
F 3 "" H 1550 3500 60  0000 C CNN
	1    1450 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4150 1350 4150
Wire Wire Line
	900  4300 1350 4300
Wire Wire Line
	900  4150 900  5800
$Comp
L R R3
U 1 1 55CA8CBF
P 2000 4750
F 0 "R3" V 1900 4750 50  0000 C CNN
F 1 "R" V 2000 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 4750 30  0001 C CNN
F 3 "" H 2000 4750 30  0000 C CNN
	1    2000 4750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 55CA8CC5
P 2000 4900
F 0 "R4" V 2100 4900 50  0000 C CNN
F 1 "R" V 2000 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 4900 30  0001 C CNN
F 3 "" H 2000 4900 30  0000 C CNN
	1    2000 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 4750 1750 4750
Wire Wire Line
	1750 4900 1850 4900
$Comp
L LED_BICOLOR D2
U 1 1 55CA8CCD
P 1450 4500
F 0 "D2" H 1550 4000 50  0000 C CNN
F 1 "LED_BICOLOR" H 1550 4400 50  0000 C CNN
F 2 "" H 1550 4100 60  0000 C CNN
F 3 "" H 1550 4100 60  0000 C CNN
	1    1450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4750 1350 4750
$Comp
L R R5
U 1 1 55CA8D8D
P 2000 5350
F 0 "R5" V 1900 5350 50  0000 C CNN
F 1 "R" V 2000 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 5350 30  0001 C CNN
F 3 "" H 2000 5350 30  0000 C CNN
	1    2000 5350
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 55CA8D93
P 2000 5500
F 0 "R6" V 2100 5500 50  0000 C CNN
F 1 "R" V 2000 5500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1930 5500 30  0001 C CNN
F 3 "" H 2000 5500 30  0000 C CNN
	1    2000 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 5350 1750 5350
Wire Wire Line
	1750 5500 1850 5500
$Comp
L LED_BICOLOR D3
U 1 1 55CA8D9B
P 1450 5100
F 0 "D3" H 1550 4600 50  0000 C CNN
F 1 "LED_BICOLOR" H 1550 5000 50  0000 C CNN
F 2 "" H 1550 4700 60  0000 C CNN
F 3 "" H 1550 4700 60  0000 C CNN
	1    1450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  5350 1350 5350
Connection ~ 900  5350
Connection ~ 900  4750
Wire Wire Line
	1350 4900 900  4900
Connection ~ 900  4900
Wire Wire Line
	1350 5500 900  5500
Connection ~ 900  5500
Connection ~ 900  4300
$EndSCHEMATC
