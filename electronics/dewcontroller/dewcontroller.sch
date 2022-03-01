EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Dew Controller Interface"
Date "2022-02-07"
Rev "1.0.0"
Comp "StarSync Trackers"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 62019BA2
P 4800 2550
F 0 "#PWR0101" H 4800 2300 50  0001 C CNN
F 1 "GND" H 4805 2377 50  0000 C CNN
F 2 "" H 4800 2550 50  0001 C CNN
F 3 "" H 4800 2550 50  0001 C CNN
	1    4800 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:Thermistor_PTC TH4
U 1 1 6201A4FE
P 5400 2600
F 0 "TH4" V 5500 2600 50  0000 C CNN
F 1 "Thermistor_PTC" V 5544 2600 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 5450 2400 50  0001 L CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor_PTC TH3
U 1 1 6201BB92
P 5400 3000
F 0 "TH3" V 5500 3000 50  0000 C CNN
F 1 "Thermistor_PTC" V 5544 3000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 5450 2800 50  0001 L CNN
F 3 "~" H 5400 3000 50  0001 C CNN
	1    5400 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor_PTC TH2
U 1 1 6201DFD6
P 5400 3350
F 0 "TH2" V 5450 3350 50  0000 C CNN
F 1 "Thermistor_PTC" V 5544 3350 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 5450 3150 50  0001 L CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:Thermistor_PTC TH1
U 1 1 6201E896
P 5350 3750
F 0 "TH1" V 5450 3750 50  0000 C CNN
F 1 "Thermistor_PTC" V 5494 3750 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" H 5400 3550 50  0001 L CNN
F 3 "~" H 5350 3750 50  0001 C CNN
	1    5350 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3350 5750 3350
Wire Wire Line
	4600 2850 5100 2850
Wire Wire Line
	5100 2850 5100 2600
Wire Wire Line
	5100 2600 5250 2600
Wire Wire Line
	4600 2950 5100 2950
Wire Wire Line
	5100 2950 5100 3000
Wire Wire Line
	5100 3000 5250 3000
Wire Wire Line
	4600 3050 5100 3050
Wire Wire Line
	5100 3050 5100 3350
Wire Wire Line
	5100 3350 5250 3350
Wire Wire Line
	5200 3750 5000 3750
Wire Wire Line
	5000 3750 5000 3150
Wire Wire Line
	5000 3150 4600 3150
$Comp
L SST_kicad_sym:4uconn09619_4audio U1
U 1 1 620220BA
P 4500 2900
F 0 "U1" H 4817 2435 50  0000 C CNN
F 1 "4uconn09619_4audio" H 4817 2526 50  0000 C CNN
F 2 "custom_footprints:4ucon09619_4audio" H 4500 2900 50  0001 C CNN
F 3 "" H 4500 2900 50  0001 C CNN
	1    4500 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 2650 4800 2650
Wire Wire Line
	4800 2550 4800 2650
Wire Wire Line
	4600 2750 4800 2750
Wire Wire Line
	4800 2750 4800 2650
Connection ~ 4800 2650
$Comp
L Connector:Screw_Terminal_01x05 J1
U 1 1 6202E828
P 6550 3200
F 0 "J1" H 6468 2867 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 6468 2866 50  0001 C CNN
F 2 "Connectors:1X05_LOCK_LONGPADS" H 6550 3200 50  0001 C CNN
F 3 "~" H 6550 3200 50  0001 C CNN
	1    6550 3200
	1    0    0    1   
$EndComp
Wire Wire Line
	5850 3750 5850 3400
Wire Wire Line
	5850 3400 6350 3400
Wire Wire Line
	5500 3750 5850 3750
Wire Wire Line
	5750 3350 5750 3300
Wire Wire Line
	5750 3300 6350 3300
Wire Wire Line
	5550 3000 5750 3000
Wire Wire Line
	5750 3000 5750 3200
Wire Wire Line
	5750 3200 6350 3200
Wire Wire Line
	5850 2600 5850 3100
Wire Wire Line
	5850 3100 6350 3100
Wire Wire Line
	5550 2600 5850 2600
$Comp
L power:GND #PWR0102
U 1 1 62035BDB
P 6250 3000
F 0 "#PWR0102" H 6250 2750 50  0001 C CNN
F 1 "GND" V 6255 2872 50  0000 R CNN
F 2 "" H 6250 3000 50  0001 C CNN
F 3 "" H 6250 3000 50  0001 C CNN
	1    6250 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 3000 6350 3000
$EndSCHEMATC