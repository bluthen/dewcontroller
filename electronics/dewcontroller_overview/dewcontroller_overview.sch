EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Dew Controller"
Date "2022-02-28"
Rev "1.0.0"
Comp "StarSync Trackers LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L teensy:Teensy3.2 U3
U 1 1 621DFF44
P 7650 4300
F 0 "U3" H 7650 5937 60  0000 C CNN
F 1 "Teensy3.2 or LC (watch PWM pins)" H 7650 5831 60  0000 C CNN
F 2 "" H 7650 3550 60  0000 C CNN
F 3 "" H 7650 3550 60  0000 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
$Comp
L SST_kicad_sym:4ch_pwm_board U2
U 1 1 621E568F
P 4950 3700
F 0 "U2" H 4950 4375 50  0000 C CNN
F 1 "4ch_pwm_board" H 4950 4284 50  0000 C CNN
F 2 "" H 4950 3700 50  0001 C CNN
F 3 "" H 4950 3700 50  0001 C CNN
	1    4950 3700
	1    0    0    -1  
$EndComp
$Comp
L SST_kicad_sym:dewrca U1
U 1 1 621ED17C
P 3150 3450
F 0 "U1" V 3550 3600 50  0000 L CNN
F 1 "dewrca" V 2750 3450 50  0000 L CNN
F 2 "" H 3300 3450 50  0001 C CNN
F 3 "" H 3300 3450 50  0001 C CNN
	1    3150 3450
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 621EE7D3
P 3350 4500
F 0 "J1" H 3407 4825 50  0000 C CNN
F 1 "Barrel_Jack" H 3407 4734 50  0000 C CNN
F 2 "" H 3400 4460 50  0001 C CNN
F 3 "~" H 3400 4460 50  0001 C CNN
	1    3350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4050 4200 4050
Wire Wire Line
	4200 4050 4200 3850
Wire Wire Line
	4200 3850 4350 3850
Wire Wire Line
	4200 3850 4200 3650
Wire Wire Line
	4200 3650 4350 3650
Connection ~ 4200 3850
Wire Wire Line
	4200 3650 4200 3450
Wire Wire Line
	4200 3450 4350 3450
Connection ~ 4200 3650
Wire Wire Line
	4200 3450 4200 3250
Wire Wire Line
	4200 3250 4350 3250
Connection ~ 4200 3450
Wire Wire Line
	3650 4600 3850 4600
Wire Wire Line
	3850 4600 3850 4700
$Comp
L power:+12V #PWR0101
U 1 1 621F8918
P 3800 4400
F 0 "#PWR0101" H 3800 4250 50  0001 C CNN
F 1 "+12V" V 3815 4528 50  0000 L CNN
F 2 "" H 3800 4400 50  0001 C CNN
F 3 "" H 3800 4400 50  0001 C CNN
	1    3800 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4400 3800 4400
$Comp
L power:+12V #PWR0102
U 1 1 621F9359
P 3950 4150
F 0 "#PWR0102" H 3950 4000 50  0001 C CNN
F 1 "+12V" V 3965 4278 50  0000 L CNN
F 2 "" H 3950 4150 50  0001 C CNN
F 3 "" H 3950 4150 50  0001 C CNN
	1    3950 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 4050 4200 4050
Connection ~ 4200 4050
Wire Wire Line
	3950 4150 4350 4150
$Comp
L power:GND1 #PWR0103
U 1 1 621FCBF1
P 3850 4700
F 0 "#PWR0103" H 3850 4450 50  0001 C CNN
F 1 "GND1" H 3855 4527 50  0000 C CNN
F 2 "" H 3850 4700 50  0001 C CNN
F 3 "" H 3850 4700 50  0001 C CNN
	1    3850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR0104
U 1 1 621FD5E4
P 4150 4050
F 0 "#PWR0104" H 4150 3800 50  0001 C CNN
F 1 "GND1" V 4155 3922 50  0000 R CNN
F 2 "" H 4150 4050 50  0001 C CNN
F 3 "" H 4150 4050 50  0001 C CNN
	1    4150 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND1 #PWR0105
U 1 1 62201743
P 3450 3750
F 0 "#PWR0105" H 3450 3500 50  0001 C CNN
F 1 "GND1" H 3455 3577 50  0000 C CNN
F 2 "" H 3450 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3750 3450 3750
Wire Wire Line
	3300 3600 4000 3600
Wire Wire Line
	4000 3600 4000 3350
Wire Wire Line
	4000 3350 4350 3350
Wire Wire Line
	4350 3550 3450 3550
Wire Wire Line
	3450 3550 3450 3450
Wire Wire Line
	3450 3450 3300 3450
Wire Wire Line
	4350 3750 3900 3750
Wire Wire Line
	3900 3750 3900 3300
Wire Wire Line
	3900 3300 3300 3300
Wire Wire Line
	3300 3150 3800 3150
Wire Wire Line
	3800 3150 3800 3950
Wire Wire Line
	3800 3950 4350 3950
$Comp
L power:GND2 #PWR0106
U 1 1 62204198
P 6500 2900
F 0 "#PWR0106" H 6500 2650 50  0001 C CNN
F 1 "GND2" H 6505 2727 50  0000 C CNN
F 2 "" H 6500 2900 50  0001 C CNN
F 3 "" H 6500 2900 50  0001 C CNN
	1    6500 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 2900 6500 2950
Wire Wire Line
	6500 2950 6650 2950
Wire Wire Line
	5550 3950 5700 3950
Wire Wire Line
	5700 3950 5700 3750
Wire Wire Line
	5700 3350 5550 3350
Wire Wire Line
	5550 3550 5700 3550
Connection ~ 5700 3550
Wire Wire Line
	5700 3550 5700 3350
Wire Wire Line
	5550 3750 5700 3750
Connection ~ 5700 3750
Wire Wire Line
	5700 3750 5700 3550
$Comp
L power:GND2 #PWR0107
U 1 1 62208763
P 5700 3300
F 0 "#PWR0107" H 5700 3050 50  0001 C CNN
F 1 "GND2" H 5705 3127 50  0000 C CNN
F 2 "" H 5700 3300 50  0001 C CNN
F 3 "" H 5700 3300 50  0001 C CNN
	1    5700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3300 5700 3350
Connection ~ 5700 3350
Wire Wire Line
	6650 3350 5900 3350
Wire Wire Line
	5900 3350 5900 3450
Wire Wire Line
	5900 3450 5550 3450
Wire Wire Line
	6650 3450 5950 3450
Wire Wire Line
	5950 3450 5950 3650
Wire Wire Line
	5950 3650 5550 3650
Wire Wire Line
	6650 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3850
Wire Wire Line
	6050 3850 5550 3850
Wire Wire Line
	6650 3950 5800 3950
Wire Wire Line
	5800 3950 5800 4050
Wire Wire Line
	5800 4050 5550 4050
Text Notes 2300 6150 0    118  ~ 0
Assembly Note: PWM Board has headers. Solder wires on DewRCA and Teensy side.
$EndSCHEMATC
