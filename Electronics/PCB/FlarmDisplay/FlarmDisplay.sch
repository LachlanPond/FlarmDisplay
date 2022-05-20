EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "FlarmDisplay"
Date ""
Rev "0.1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_ST_STM32F3:STM32F334K8Ux U2
U 1 1 6273A78B
P 5550 2600
F 0 "U2" H 5100 3450 50  0000 C CNN
F 1 "STM32F334K8Ux" H 6050 3450 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 5050 1700 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00097745.pdf" H 5550 2600 50  0001 C CNN
	1    5550 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ12 J1
U 1 1 6273F801
P 1050 3700
F 0 "J1" H 1107 4267 50  0000 C CNN
F 1 "RJ12" H 1107 4176 50  0000 C CNN
F 2 "FlarmDisplay:RJE231660413T" V 1050 3725 50  0001 C CNN
F 3 "~" V 1050 3725 50  0001 C CNN
	1    1050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 62744966
P 1800 3450
F 0 "#PWR07" H 1800 3300 50  0001 C CNN
F 1 "+3.3V" H 1815 3623 50  0000 C CNN
F 2 "" H 1800 3450 50  0001 C CNN
F 3 "" H 1800 3450 50  0001 C CNN
	1    1800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3500 1800 3500
Wire Wire Line
	1800 3500 1800 3450
Text GLabel 1450 3700 2    50   Output ~ 0
RX
Text GLabel 1450 3800 2    50   Input ~ 0
TX
NoConn ~ 1450 3900
NoConn ~ 1450 3400
$Comp
L power:+3.3V #PWR015
U 1 1 6275D816
P 5450 1550
F 0 "#PWR015" H 5450 1400 50  0001 C CNN
F 1 "+3.3V" H 5465 1723 50  0000 C CNN
F 2 "" H 5450 1550 50  0001 C CNN
F 3 "" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1550 5450 1600
Wire Wire Line
	5450 1600 5550 1600
Wire Wire Line
	5550 1600 5550 1700
Connection ~ 5450 1600
Wire Wire Line
	5450 1600 5450 1700
Wire Wire Line
	5550 1600 5650 1600
Wire Wire Line
	5650 1600 5650 1700
Connection ~ 5550 1600
$Comp
L power:GND #PWR016
U 1 1 6275EFD1
P 5450 3800
F 0 "#PWR016" H 5450 3550 50  0001 C CNN
F 1 "GND" H 5455 3627 50  0000 C CNN
F 2 "" H 5450 3800 50  0001 C CNN
F 3 "" H 5450 3800 50  0001 C CNN
	1    5450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3800 5450 3700
Wire Wire Line
	5450 3700 5550 3700
Wire Wire Line
	5550 3700 5550 3600
Connection ~ 5450 3700
Wire Wire Line
	5450 3700 5450 3600
Wire Wire Line
	5550 3700 5650 3700
Wire Wire Line
	5650 3700 5650 3600
Connection ~ 5550 3700
Wire Wire Line
	5650 3700 5750 3700
Wire Wire Line
	5750 3700 5750 3600
Connection ~ 5650 3700
$Comp
L Device:C C1
U 1 1 6276AD4B
P 850 1050
F 0 "C1" H 965 1096 50  0000 L CNN
F 1 "100nF" H 965 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 888 900 50  0001 C CNN
F 3 "~" H 850 1050 50  0001 C CNN
	1    850  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  900  1300 900 
$Comp
L Device:C C3
U 1 1 62788D4A
P 1300 1050
F 0 "C3" H 1415 1096 50  0000 L CNN
F 1 "100nF" H 1415 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1338 900 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
	1    0    0    -1  
$EndComp
Connection ~ 1300 900 
Connection ~ 1300 1200
$Comp
L Device:C C6
U 1 1 62789193
P 1750 1050
F 0 "C6" H 1865 1096 50  0000 L CNN
F 1 "100nF" H 1865 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1788 900 50  0001 C CNN
F 3 "~" H 1750 1050 50  0001 C CNN
	1    1750 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 627894BC
P 2200 1050
F 0 "C8" H 2315 1096 50  0000 L CNN
F 1 "100nF" H 2315 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2238 900 50  0001 C CNN
F 3 "~" H 2200 1050 50  0001 C CNN
	1    2200 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 62789888
P 2650 1050
F 0 "C9" H 2765 1096 50  0000 L CNN
F 1 "4.7uF" H 2765 1005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2688 900 50  0001 C CNN
F 3 "~" H 2650 1050 50  0001 C CNN
	1    2650 1050
	1    0    0    -1  
$EndComp
Connection ~ 1750 900 
Wire Wire Line
	1750 900  2200 900 
Connection ~ 2200 900 
Wire Wire Line
	2200 900  2650 900 
Wire Wire Line
	2650 1200 2200 1200
Connection ~ 2200 1200
Wire Wire Line
	2200 1200 1750 1200
$Comp
L power:+3.3V #PWR01
U 1 1 6278AA0E
P 850 850
F 0 "#PWR01" H 850 700 50  0001 C CNN
F 1 "+3.3V" H 865 1023 50  0000 C CNN
F 2 "" H 850 850 50  0001 C CNN
F 3 "" H 850 850 50  0001 C CNN
	1    850  850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 900  1750 900 
Wire Wire Line
	1300 1200 1750 1200
Connection ~ 1750 1200
$Comp
L Device:C C2
U 1 1 6278F941
P 850 2200
F 0 "C2" H 965 2246 50  0000 L CNN
F 1 "10nF" H 965 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 888 2050 50  0001 C CNN
F 3 "~" H 850 2200 50  0001 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6279CDE1
P 1700 2200
F 0 "C5" H 1815 2246 50  0000 L CNN
F 1 "1uF" H 1815 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1738 2050 50  0001 C CNN
F 3 "~" H 1700 2200 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 627A619C
P 850 2400
F 0 "#PWR04" H 850 2150 50  0001 C CNN
F 1 "GND" H 855 2227 50  0000 C CNN
F 2 "" H 850 2400 50  0001 C CNN
F 3 "" H 850 2400 50  0001 C CNN
	1    850  2400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 627A67C6
P 850 2000
F 0 "#PWR03" H 850 1850 50  0001 C CNN
F 1 "+3.3V" H 865 2173 50  0000 C CNN
F 2 "" H 850 2000 50  0001 C CNN
F 3 "" H 850 2000 50  0001 C CNN
	1    850  2000
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 627AB3AE
P 4150 2800
F 0 "Y1" H 4300 2900 50  0000 C CNN
F 1 "16MHz" H 4100 2950 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 4150 2800 50  0001 C CNN
F 3 "~" H 4150 2800 50  0001 C CNN
	1    4150 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 627B2353
P 3950 3050
F 0 "C10" H 4065 3096 50  0000 L CNN
F 1 "10pF" H 4065 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3988 2900 50  0001 C CNN
F 3 "~" H 3950 3050 50  0001 C CNN
	1    3950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 627BCE6C
P 4350 3050
F 0 "C11" H 4465 3096 50  0000 L CNN
F 1 "10pF" H 4465 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4388 2900 50  0001 C CNN
F 3 "~" H 4350 3050 50  0001 C CNN
	1    4350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2900 3950 2800
Wire Wire Line
	3950 2800 4000 2800
Wire Wire Line
	4300 2800 4350 2800
Wire Wire Line
	4350 2800 4350 2900
$Comp
L power:GND #PWR014
U 1 1 627DFFF7
P 4150 3300
F 0 "#PWR014" H 4150 3050 50  0001 C CNN
F 1 "GND" H 4155 3127 50  0000 C CNN
F 2 "" H 4150 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0001 C CNN
	1    4150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3200 3950 3300
Wire Wire Line
	3950 3300 4150 3300
Wire Wire Line
	4150 3300 4350 3300
Wire Wire Line
	4350 3300 4350 3200
Connection ~ 4150 3300
Wire Wire Line
	4350 2800 4350 2700
Wire Wire Line
	4350 2700 4950 2700
Connection ~ 4350 2800
Wire Wire Line
	3950 2800 3950 2600
Wire Wire Line
	3950 2600 4950 2600
Connection ~ 3950 2800
$Comp
L power:GND #PWR013
U 1 1 6280A6A9
P 3900 2250
F 0 "#PWR013" H 3900 2000 50  0001 C CNN
F 1 "GND" H 3905 2077 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 627A0C9A
P 1300 2200
F 0 "C4" H 1415 2246 50  0000 L CNN
F 1 "10nF" H 1415 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1338 2050 50  0001 C CNN
F 3 "~" H 1300 2200 50  0001 C CNN
	1    1300 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 627A0CA0
P 2100 2200
F 0 "C7" H 2215 2246 50  0000 L CNN
F 1 "1uF" H 2215 2155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2138 2050 50  0001 C CNN
F 3 "~" H 2100 2200 50  0001 C CNN
	1    2100 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2050 1700 2050
Connection ~ 1300 2050
Connection ~ 1700 2050
Wire Wire Line
	1700 2050 2100 2050
Wire Wire Line
	2100 2350 1700 2350
Connection ~ 1700 2350
Wire Wire Line
	1700 2350 1300 2350
Wire Wire Line
	850  2400 850  2350
Wire Wire Line
	850  2350 1300 2350
Connection ~ 850  2350
Connection ~ 1300 2350
Wire Wire Line
	850  2050 1300 2050
Wire Wire Line
	850  2050 850  2000
Connection ~ 850  2050
Wire Wire Line
	850  900  850  850 
Connection ~ 850  900 
$Comp
L Switch:SW_Push SW1
U 1 1 627DEF9A
P 3900 1150
F 0 "SW1" V 3854 1298 50  0000 L CNN
F 1 "RESET" V 3945 1298 50  0000 L CNN
F 2 "FlarmDisplay:SMT_J" H 3900 1350 50  0001 C CNN
F 3 "~" H 3900 1350 50  0001 C CNN
	1    3900 1150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 627FD7F1
P 3900 1400
F 0 "#PWR011" H 3900 1150 50  0001 C CNN
F 1 "GND" H 3905 1227 50  0000 C CNN
F 2 "" H 3900 1400 50  0001 C CNN
F 3 "" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1350 3900 1400
Text GLabel 4700 950  2    50   Output ~ 0
NRST
Text GLabel 4950 1900 0    50   Input ~ 0
NRST
Wire Wire Line
	3900 950  4500 950 
$Comp
L Device:C C12
U 1 1 6284D4AB
P 4500 1150
F 0 "C12" H 4615 1196 50  0000 L CNN
F 1 "100nF" H 4615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4538 1000 50  0001 C CNN
F 3 "~" H 4500 1150 50  0001 C CNN
	1    4500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1400 4500 1400
Wire Wire Line
	4500 1400 4500 1300
Connection ~ 3900 1400
Wire Wire Line
	4500 1000 4500 950 
$Comp
L Switch:SW_SPDT SW2
U 1 1 62885898
P 4250 2100
F 0 "SW2" H 4250 1775 50  0000 C CNN
F 1 "BOOT" H 4250 1866 50  0000 C CNN
F 2 "FlarmDisplay:7814G-1-023E" H 4250 2100 50  0001 C CNN
F 3 "~" H 4250 2100 50  0001 C CNN
	1    4250 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 2250 3900 2200
Wire Wire Line
	3900 2200 4050 2200
$Comp
L power:+3.3V #PWR012
U 1 1 62888D01
P 3900 1950
F 0 "#PWR012" H 3900 1800 50  0001 C CNN
F 1 "+3.3V" H 3915 2123 50  0000 C CNN
F 2 "" H 3900 1950 50  0001 C CNN
F 3 "" H 3900 1950 50  0001 C CNN
	1    3900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1950 3900 2000
Wire Wire Line
	3900 2000 4050 2000
$Comp
L Device:R R2
U 1 1 6288C706
P 4700 2100
F 0 "R2" V 4800 2100 50  0000 C CNN
F 1 "10K" V 4600 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4630 2100 50  0001 C CNN
F 3 "~" H 4700 2100 50  0001 C CNN
	1    4700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 2100 4950 2100
Wire Wire Line
	4550 2100 4450 2100
Wire Wire Line
	4500 950  4700 950 
Connection ~ 4500 950 
$Comp
L FlarmDisplay:TLC5928 U3
U 1 1 6280C490
P 8300 2900
F 0 "U3" H 8300 3865 50  0000 C CNN
F 1 "TLC5928" H 8300 3774 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-24-1EP_4x4mm_P0.5mm_EP2.45x2.45mm" H 8200 3900 50  0001 C CNN
F 3 "" H 8200 3900 50  0001 C CNN
	1    8300 2900
	1    0    0    -1  
$EndComp
$Comp
L FlarmDisplay:TLC5928 U4
U 1 1 6280E1F5
P 11200 2900
F 0 "U4" H 11200 3865 50  0000 C CNN
F 1 "TLC5928" H 11200 3774 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-24-1EP_4x4mm_P0.5mm_EP2.45x2.45mm" H 11100 3900 50  0001 C CNN
F 3 "" H 11100 3900 50  0001 C CNN
	1    11200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 62810868
P 12500 2000
F 0 "D2" H 12600 2050 50  0000 C CNN
F 1 "12Y" H 12400 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12500 2000 50  0001 C CNN
F 3 "~" V 12500 2000 50  0001 C CNN
	1    12500 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 2200 8850 2200
Wire Wire Line
	8850 2200 8850 2100
$Comp
L Device:LED_Small D6
U 1 1 628211C0
P 11900 2000
F 0 "D6" H 12000 2050 50  0000 C CNN
F 1 "02Y" H 11800 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 11900 2000 50  0001 C CNN
F 3 "~" V 11900 2000 50  0001 C CNN
	1    11900 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D8
U 1 1 6282157E
P 8850 3900
F 0 "D8" H 8950 3950 50  0000 C CNN
F 1 "03Y" H 8750 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 8850 3900 50  0001 C CNN
F 3 "~" V 8850 3900 50  0001 C CNN
	1    8850 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D10
U 1 1 62821A52
P 9900 3900
F 0 "D10" H 9950 3950 50  0000 L CNN
F 1 "04Y" H 9800 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9900 3900 50  0001 C CNN
F 3 "~" V 9900 3900 50  0001 C CNN
	1    9900 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D12
U 1 1 62821DAA
P 9750 2000
F 0 "D12" H 9800 2050 50  0000 L CNN
F 1 "05Y" H 9650 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9750 2000 50  0001 C CNN
F 3 "~" V 9750 2000 50  0001 C CNN
	1    9750 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D14
U 1 1 62822215
P 9450 2000
F 0 "D14" H 9500 2050 50  0000 L CNN
F 1 "06Y" H 9350 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9450 2000 50  0001 C CNN
F 3 "~" V 9450 2000 50  0001 C CNN
	1    9450 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8750 2300 9000 2300
Wire Wire Line
	9000 2300 9000 2100
Wire Wire Line
	8750 2400 9150 2400
Wire Wire Line
	9150 2400 9150 2100
Wire Wire Line
	8750 2500 9300 2500
Wire Wire Line
	9300 2500 9300 2100
Wire Wire Line
	8750 2600 9450 2600
Wire Wire Line
	9450 2600 9450 2100
Wire Wire Line
	8750 2700 9600 2700
Wire Wire Line
	9600 2700 9600 2100
Wire Wire Line
	8750 2800 9750 2800
Wire Wire Line
	9750 2800 9750 2100
Wire Wire Line
	8750 2900 9900 2900
Wire Wire Line
	9900 2900 9900 2100
$Comp
L Device:LED_Small D13
U 1 1 6284BCB6
P 12650 3900
F 0 "D13" H 12700 3950 50  0000 L CNN
F 1 "10Y" H 12550 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12650 3900 50  0001 C CNN
F 3 "~" V 12650 3900 50  0001 C CNN
	1    12650 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D15
U 1 1 6284C13D
P 12350 3900
F 0 "D15" H 12400 3950 50  0000 L CNN
F 1 "09Y" H 12250 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12350 3900 50  0001 C CNN
F 3 "~" V 12350 3900 50  0001 C CNN
	1    12350 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D17
U 1 1 6284C55A
P 8850 2000
F 0 "D17" H 8900 2050 50  0000 L CNN
F 1 "08Y" H 8750 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 8850 2000 50  0001 C CNN
F 3 "~" V 8850 2000 50  0001 C CNN
	1    8850 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 3800 8850 3700
Wire Wire Line
	8850 3700 8750 3700
Wire Wire Line
	8750 3600 9000 3600
Wire Wire Line
	9000 3600 9000 3800
Wire Wire Line
	8750 3500 9150 3500
Wire Wire Line
	9150 3500 9150 3800
Wire Wire Line
	8750 3400 9300 3400
Wire Wire Line
	9300 3400 9300 3800
Wire Wire Line
	8750 3300 9450 3300
Wire Wire Line
	9450 3300 9450 3800
Wire Wire Line
	8750 3200 9600 3200
Wire Wire Line
	9600 3200 9600 3800
Wire Wire Line
	8750 3100 9750 3100
Wire Wire Line
	9750 3100 9750 3800
Wire Wire Line
	8750 3000 9900 3000
Wire Wire Line
	9900 3000 9900 3800
$Comp
L power:+3.3V #PWR020
U 1 1 6286495A
P 8850 1750
F 0 "#PWR020" H 8850 1600 50  0001 C CNN
F 1 "+3.3V" H 8865 1923 50  0000 C CNN
F 2 "" H 8850 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0001 C CNN
	1    8850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1750 8850 1800
Wire Wire Line
	8850 1800 9000 1800
Wire Wire Line
	9000 1800 9000 1900
Connection ~ 8850 1800
Wire Wire Line
	8850 1800 8850 1900
Wire Wire Line
	9000 1800 9150 1800
Wire Wire Line
	9150 1800 9150 1900
Connection ~ 9000 1800
Wire Wire Line
	9150 1800 9300 1800
Wire Wire Line
	9300 1800 9300 1900
Connection ~ 9150 1800
Wire Wire Line
	9300 1800 9450 1800
Wire Wire Line
	9450 1800 9450 1900
Connection ~ 9300 1800
Wire Wire Line
	9450 1800 9600 1800
Wire Wire Line
	9600 1800 9600 1900
Connection ~ 9450 1800
Wire Wire Line
	9600 1800 9750 1800
Wire Wire Line
	9750 1800 9750 1900
Connection ~ 9600 1800
Wire Wire Line
	9750 1800 9900 1800
Wire Wire Line
	9900 1800 9900 1900
Connection ~ 9750 1800
$Comp
L power:+3.3V #PWR021
U 1 1 62882762
P 8850 4250
F 0 "#PWR021" H 8850 4100 50  0001 C CNN
F 1 "+3.3V" H 8865 4423 50  0000 C CNN
F 2 "" H 8850 4250 50  0001 C CNN
F 3 "" H 8850 4250 50  0001 C CNN
	1    8850 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 4250 8850 4150
Wire Wire Line
	8850 4150 9000 4150
Wire Wire Line
	9000 4150 9000 4000
Connection ~ 8850 4150
Wire Wire Line
	8850 4150 8850 4000
Wire Wire Line
	9000 4150 9150 4150
Wire Wire Line
	9150 4150 9150 4000
Connection ~ 9000 4150
Wire Wire Line
	9150 4150 9300 4150
Wire Wire Line
	9300 4150 9300 4000
Connection ~ 9150 4150
Wire Wire Line
	9300 4150 9450 4150
Wire Wire Line
	9450 4150 9450 4000
Connection ~ 9300 4150
Wire Wire Line
	9450 4150 9600 4150
Wire Wire Line
	9600 4150 9600 4000
Connection ~ 9450 4150
Wire Wire Line
	9600 4150 9750 4150
Wire Wire Line
	9750 4150 9750 4000
Connection ~ 9600 4150
Wire Wire Line
	9750 4150 9900 4150
Wire Wire Line
	9900 4150 9900 4000
Connection ~ 9750 4150
$Comp
L power:+3.3V #PWR018
U 1 1 628AD421
P 7750 3200
F 0 "#PWR018" H 7750 3050 50  0001 C CNN
F 1 "+3.3V" H 7765 3373 50  0000 C CNN
F 2 "" H 7750 3200 50  0001 C CNN
F 3 "" H 7750 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 628AF762
P 7750 3800
F 0 "#PWR019" H 7750 3550 50  0001 C CNN
F 1 "GND" H 7755 3627 50  0000 C CNN
F 2 "" H 7750 3800 50  0001 C CNN
F 3 "" H 7750 3800 50  0001 C CNN
	1    7750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3800 7750 3700
Wire Wire Line
	7750 3700 7850 3700
Wire Wire Line
	7750 3200 7750 3300
Wire Wire Line
	7750 3300 7850 3300
Wire Wire Line
	7750 3650 7750 3700
Connection ~ 7750 3700
Wire Wire Line
	7750 3350 7750 3300
Connection ~ 7750 3300
$Comp
L Device:LED_Small D18
U 1 1 628FAD00
P 9750 3900
F 0 "D18" H 9800 3950 50  0000 L CNN
F 1 "04R" H 9650 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9750 3900 50  0001 C CNN
F 3 "~" V 9750 3900 50  0001 C CNN
	1    9750 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D20
U 1 1 628FAD06
P 9900 2000
F 0 "D20" H 9950 2050 50  0000 L CNN
F 1 "05R" H 9800 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9900 2000 50  0001 C CNN
F 3 "~" V 9900 2000 50  0001 C CNN
	1    9900 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D22
U 1 1 628FAD0C
P 9600 2000
F 0 "D22" H 9650 2050 50  0000 L CNN
F 1 "06R" H 9500 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9600 2000 50  0001 C CNN
F 3 "~" V 9600 2000 50  0001 C CNN
	1    9600 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D26
U 1 1 628FAD18
P 9000 2000
F 0 "D26" H 9050 2050 50  0000 L CNN
F 1 "08R" H 8900 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9000 2000 50  0001 C CNN
F 3 "~" V 9000 2000 50  0001 C CNN
	1    9000 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D28
U 1 1 628FAD1E
P 12200 3900
F 0 "D28" H 12250 3950 50  0000 L CNN
F 1 "09R" H 12100 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12200 3900 50  0001 C CNN
F 3 "~" V 12200 3900 50  0001 C CNN
	1    12200 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D30
U 1 1 628FAD24
P 12500 3900
F 0 "D30" H 12550 3950 50  0000 L CNN
F 1 "10R" H 12400 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12500 3900 50  0001 C CNN
F 3 "~" V 12500 3900 50  0001 C CNN
	1    12500 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D32
U 1 1 628FAD2A
P 12800 3900
F 0 "D32" H 12850 3950 50  0000 L CNN
F 1 "11R" H 12700 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12800 3900 50  0001 C CNN
F 3 "~" V 12800 3900 50  0001 C CNN
	1    12800 3900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR025
U 1 1 628FAD30
P 11750 1750
F 0 "#PWR025" H 11750 1600 50  0001 C CNN
F 1 "+3.3V" H 11765 1923 50  0000 C CNN
F 2 "" H 11750 1750 50  0001 C CNN
F 3 "" H 11750 1750 50  0001 C CNN
	1    11750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 1750 11750 1800
Wire Wire Line
	11750 1800 11900 1800
Wire Wire Line
	11900 1800 11900 1900
Connection ~ 11750 1800
Wire Wire Line
	11750 1800 11750 1900
Wire Wire Line
	11900 1800 12050 1800
Wire Wire Line
	12050 1800 12050 1900
Connection ~ 11900 1800
Wire Wire Line
	12050 1800 12200 1800
Wire Wire Line
	12200 1800 12200 1900
Connection ~ 12050 1800
Wire Wire Line
	12200 1800 12350 1800
Wire Wire Line
	12350 1800 12350 1900
Connection ~ 12200 1800
Wire Wire Line
	12350 1800 12500 1800
Wire Wire Line
	12500 1800 12500 1900
Connection ~ 12350 1800
Wire Wire Line
	12500 1800 12650 1800
Wire Wire Line
	12650 1800 12650 1900
Connection ~ 12500 1800
Wire Wire Line
	12650 1800 12800 1800
Wire Wire Line
	12800 1800 12800 1900
Connection ~ 12650 1800
Wire Wire Line
	11650 2200 11750 2200
Wire Wire Line
	11750 2200 11750 2100
Wire Wire Line
	11650 2300 11900 2300
Wire Wire Line
	11900 2300 11900 2100
Wire Wire Line
	11650 2400 12050 2400
Wire Wire Line
	12050 2400 12050 2100
Wire Wire Line
	11650 2500 12200 2500
Wire Wire Line
	12200 2500 12200 2100
Wire Wire Line
	11650 2600 12350 2600
Wire Wire Line
	12350 2600 12350 2100
Wire Wire Line
	11650 2700 12500 2700
Wire Wire Line
	12500 2700 12500 2100
Wire Wire Line
	11650 2800 12650 2800
Wire Wire Line
	12650 2800 12650 2100
Wire Wire Line
	11650 2900 12800 2900
Wire Wire Line
	12800 2900 12800 2100
$Comp
L Device:LED_Small D19
U 1 1 629418E8
P 11750 3900
F 0 "D19" H 11950 3950 50  0000 R CNN
F 1 "GPS" H 11650 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 11750 3900 50  0001 C CNN
F 3 "~" V 11750 3900 50  0001 C CNN
	1    11750 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D21
U 1 1 629418EE
P 12050 3900
F 0 "D21" H 12250 3950 50  0000 R CNN
F 1 "TX" H 11950 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12050 3900 50  0001 C CNN
F 3 "~" V 12050 3900 50  0001 C CNN
	1    12050 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D23
U 1 1 629418F4
P 11900 3900
F 0 "D23" H 12100 3950 50  0000 R CNN
F 1 "RX" H 11800 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 11900 3900 50  0001 C CNN
F 3 "~" V 11900 3900 50  0001 C CNN
	1    11900 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D25
U 1 1 629418FA
P 9000 3900
F 0 "D25" H 9200 3950 50  0000 R CNN
F 1 "HH" H 8900 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9000 3900 50  0001 C CNN
F 3 "~" V 9000 3900 50  0001 C CNN
	1    9000 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D27
U 1 1 62941900
P 9150 3900
F 0 "D27" H 9350 3950 50  0000 R CNN
F 1 "H" H 9050 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9150 3900 50  0001 C CNN
F 3 "~" V 9150 3900 50  0001 C CNN
	1    9150 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D29
U 1 1 62941906
P 9300 3900
F 0 "D29" H 9500 3950 50  0000 R CNN
F 1 "M" H 9200 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9300 3900 50  0001 C CNN
F 3 "~" V 9300 3900 50  0001 C CNN
	1    9300 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D31
U 1 1 6294190C
P 9450 3900
F 0 "D31" H 9650 3950 50  0000 R CNN
F 1 "L" H 9350 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9450 3900 50  0001 C CNN
F 3 "~" V 9450 3900 50  0001 C CNN
	1    9450 3900
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D33
U 1 1 62941912
P 9600 3900
F 0 "D33" H 9800 3950 50  0000 R CNN
F 1 "LL" H 9500 3950 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9600 3900 50  0001 C CNN
F 3 "~" V 9600 3900 50  0001 C CNN
	1    9600 3900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR026
U 1 1 62941918
P 11750 4250
F 0 "#PWR026" H 11750 4100 50  0001 C CNN
F 1 "+3.3V" H 11765 4423 50  0000 C CNN
F 2 "" H 11750 4250 50  0001 C CNN
F 3 "" H 11750 4250 50  0001 C CNN
	1    11750 4250
	-1   0    0    1   
$EndComp
Wire Wire Line
	11750 4250 11750 4150
Wire Wire Line
	11750 4150 11900 4150
Wire Wire Line
	11900 4150 11900 4000
Connection ~ 11750 4150
Wire Wire Line
	11750 4150 11750 4000
Wire Wire Line
	11900 4150 12050 4150
Wire Wire Line
	12050 4150 12050 4000
Connection ~ 11900 4150
Wire Wire Line
	12050 4150 12200 4150
Wire Wire Line
	12200 4150 12200 4000
Connection ~ 12050 4150
Wire Wire Line
	12200 4150 12350 4150
Wire Wire Line
	12350 4150 12350 4000
Connection ~ 12200 4150
Wire Wire Line
	12350 4150 12500 4150
Wire Wire Line
	12500 4150 12500 4000
Connection ~ 12350 4150
Wire Wire Line
	12500 4150 12650 4150
Wire Wire Line
	12650 4150 12650 4000
Connection ~ 12500 4150
Wire Wire Line
	12650 4150 12800 4150
Wire Wire Line
	12800 4150 12800 4000
Connection ~ 12650 4150
Wire Wire Line
	11650 3700 11750 3700
Wire Wire Line
	11750 3700 11750 3800
Wire Wire Line
	11650 3600 11900 3600
Wire Wire Line
	11900 3600 11900 3800
Wire Wire Line
	11650 3500 12050 3500
Wire Wire Line
	12050 3500 12050 3800
Wire Wire Line
	11650 3400 12200 3400
Wire Wire Line
	12200 3400 12200 3800
Wire Wire Line
	11650 3300 12350 3300
Wire Wire Line
	12350 3300 12350 3800
Wire Wire Line
	11650 3200 12500 3200
Wire Wire Line
	12500 3200 12500 3800
Wire Wire Line
	11650 3100 12650 3100
Wire Wire Line
	12650 3100 12650 3800
Wire Wire Line
	11650 3000 12800 3000
Wire Wire Line
	12800 3000 12800 3800
$Comp
L power:+3.3V #PWR023
U 1 1 62A1440D
P 10650 3200
F 0 "#PWR023" H 10650 3050 50  0001 C CNN
F 1 "+3.3V" H 10665 3373 50  0000 C CNN
F 2 "" H 10650 3200 50  0001 C CNN
F 3 "" H 10650 3200 50  0001 C CNN
	1    10650 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 62A14413
P 10650 3800
F 0 "#PWR024" H 10650 3550 50  0001 C CNN
F 1 "GND" H 10655 3627 50  0000 C CNN
F 2 "" H 10650 3800 50  0001 C CNN
F 3 "" H 10650 3800 50  0001 C CNN
	1    10650 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 3200 10650 3300
Wire Wire Line
	10650 3300 10750 3300
$Comp
L Device:C C14
U 1 1 62A1441D
P 10650 3500
F 0 "C14" H 10400 3550 50  0000 L CNN
F 1 "10nF" H 10350 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10688 3350 50  0001 C CNN
F 3 "~" H 10650 3500 50  0001 C CNN
	1    10650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 3350 10650 3300
Connection ~ 10650 3300
Wire Wire Line
	7850 2200 7750 2200
Wire Wire Line
	7750 2200 7750 1400
Wire Wire Line
	7750 1400 10550 1400
Wire Wire Line
	10550 1400 10550 2300
Wire Wire Line
	10550 2300 10750 2300
Wire Wire Line
	7850 2400 7650 2400
Wire Wire Line
	7650 2400 7650 1300
Wire Wire Line
	7650 1300 10450 1300
Wire Wire Line
	10450 1300 10450 2400
Wire Wire Line
	10450 2400 10750 2400
Wire Wire Line
	7850 2500 7550 2500
Wire Wire Line
	7550 2500 7550 1200
Wire Wire Line
	7550 1200 10350 1200
Wire Wire Line
	10350 1200 10350 2500
Wire Wire Line
	10350 2500 10750 2500
Wire Wire Line
	7850 2600 7450 2600
Wire Wire Line
	7450 1100 10250 1100
Wire Wire Line
	10250 1100 10250 2600
Wire Wire Line
	10250 2600 10750 2600
Text GLabel 6150 2800 2    50   Output ~ 0
TX
Text GLabel 6150 2900 2    50   Input ~ 0
RX
$Comp
L Connector:TestPoint TP3
U 1 1 62B63495
P 6150 2100
F 0 "TP3" V 6150 2300 50  0000 L CNN
F 1 "USART2_TX" V 6150 2450 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6350 2100 50  0001 C CNN
F 3 "~" H 6350 2100 50  0001 C CNN
	1    6150 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 62B66766
P 6150 2200
F 0 "TP4" V 6150 2400 50  0000 L CNN
F 1 "USART2_RX" V 6150 2550 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 6350 2200 50  0001 C CNN
F 3 "~" H 6350 2200 50  0001 C CNN
	1    6150 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2300 7850 2300
Wire Wire Line
	6150 2400 7650 2400
Connection ~ 7650 2400
Wire Wire Line
	6150 2500 7550 2500
Connection ~ 7550 2500
Wire Wire Line
	6150 2600 7450 2600
Connection ~ 7450 2600
Wire Wire Line
	7450 1100 7450 2600
$Comp
L Connector:TestPoint TP1
U 1 1 6282C201
P 1300 900
F 0 "TP1" H 1150 1100 50  0000 L CNN
F 1 "3.3V" H 1300 1100 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1500 900 50  0001 C CNN
F 3 "~" H 1500 900 50  0001 C CNN
	1    1300 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6282F54E
P 1300 1200
F 0 "TP2" H 1150 1400 50  0000 L CNN
F 1 "GND" H 1300 1400 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D2.0mm" H 1500 1200 50  0001 C CNN
F 3 "~" H 1500 1200 50  0001 C CNN
	1    1300 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 628620C9
P 7350 2950
F 0 "R3" H 7420 2996 50  0000 L CNN
F 1 "2K6" H 7420 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7280 2950 50  0001 C CNN
F 3 "~" H 7350 2950 50  0001 C CNN
	1    7350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2700 7350 2700
Wire Wire Line
	7350 2700 7350 2800
$Comp
L power:GND #PWR017
U 1 1 62871B2B
P 7350 3150
F 0 "#PWR017" H 7350 2900 50  0001 C CNN
F 1 "GND" H 7355 2977 50  0000 C CNN
F 2 "" H 7350 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3150 7350 3100
$Comp
L Device:R R4
U 1 1 62893617
P 10250 2950
F 0 "R4" H 10320 2996 50  0000 L CNN
F 1 "2K6" H 10320 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 10180 2950 50  0001 C CNN
F 3 "~" H 10250 2950 50  0001 C CNN
	1    10250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6289361D
P 10250 3150
F 0 "#PWR022" H 10250 2900 50  0001 C CNN
F 1 "GND" H 10255 2977 50  0000 C CNN
F 2 "" H 10250 3150 50  0001 C CNN
F 3 "" H 10250 3150 50  0001 C CNN
	1    10250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3150 10250 3100
Wire Wire Line
	10250 2800 10250 2700
Wire Wire Line
	10250 2700 10750 2700
Text Notes 9550 4450 0    50   ~ 0
CONSTANT CURRENT SINK REFERENCE \nRESISTOR SET TO 2K6 FOR 20mA
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 629933AE
P 2300 3500
F 0 "J2" H 2408 3781 50  0000 C CNN
F 1 "SWD" H 2408 3690 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2300 3500 50  0001 C CNN
F 3 "~" H 2300 3500 50  0001 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
Text GLabel 6150 3200 2    50   BiDi ~ 0
SWDAT
Text GLabel 6150 3300 2    50   Input ~ 0
SWCLK
Text GLabel 2500 3500 2    50   Input ~ 0
SWCLK
Text GLabel 2500 3400 2    50   BiDi ~ 0
SWDAT
$Comp
L power:GND #PWR09
U 1 1 629A843E
P 2600 3800
F 0 "#PWR09" H 2600 3550 50  0001 C CNN
F 1 "GND" H 2605 3627 50  0000 C CNN
F 2 "" H 2600 3800 50  0001 C CNN
F 3 "" H 2600 3800 50  0001 C CNN
	1    2600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3700 2600 3700
Wire Wire Line
	2600 3700 2600 3800
$Comp
L power:+3.3V #PWR010
U 1 1 629B629E
P 2850 3800
F 0 "#PWR010" H 2850 3650 50  0001 C CNN
F 1 "+3.3V" H 2865 3973 50  0000 C CNN
F 2 "" H 2850 3800 50  0001 C CNN
F 3 "" H 2850 3800 50  0001 C CNN
	1    2850 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 3600 2850 3800
Wire Wire Line
	2500 3600 2850 3600
$Comp
L Device:Buzzer BZ1
U 1 1 62A3AC71
P 1850 5050
F 0 "BZ1" H 2002 5079 50  0000 L CNN
F 1 "CMI-9705-0380-SMT-TR" H 2002 4988 50  0000 L CNN
F 2 "FlarmDisplay:CMI-9705-0380-SMT-TR" V 1825 5150 50  0001 C CNN
F 3 "~" V 1825 5150 50  0001 C CNN
	1    1850 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 62A40B46
P 1550 5050
F 0 "D1" V 1504 5130 50  0000 L CNN
F 1 "PD3S0230-7" V 1595 5130 50  0000 L CNN
F 2 "FlarmDisplay:POWERDI323" H 1550 5050 50  0001 C CNN
F 3 "~" H 1550 5050 50  0001 C CNN
	1    1550 5050
	0    -1   1    0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 62A43002
P 1750 4700
F 0 "#PWR05" H 1750 4550 50  0001 C CNN
F 1 "+3.3V" H 1765 4873 50  0000 C CNN
F 2 "" H 1750 4700 50  0001 C CNN
F 3 "" H 1750 4700 50  0001 C CNN
	1    1750 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 62A44254
P 1750 5850
F 0 "#PWR06" H 1750 5600 50  0001 C CNN
F 1 "GND" H 1755 5677 50  0000 C CNN
F 2 "" H 1750 5850 50  0001 C CNN
F 3 "" H 1750 5850 50  0001 C CNN
	1    1750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4700 1750 4800
Wire Wire Line
	1750 5150 1750 5300
Wire Wire Line
	1550 4900 1550 4800
Wire Wire Line
	1550 4800 1750 4800
Connection ~ 1750 4800
Wire Wire Line
	1750 4800 1750 4950
Wire Wire Line
	1550 5200 1550 5300
Wire Wire Line
	1550 5300 1750 5300
Wire Wire Line
	1750 5350 1750 5300
Connection ~ 1750 5300
Wire Wire Line
	1750 5750 1750 5850
$Comp
L Device:R R1
U 1 1 62B08C86
P 1250 5550
F 0 "R1" V 1043 5550 50  0000 C CNN
F 1 "200" V 1134 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1180 5550 50  0001 C CNN
F 3 "~" H 1250 5550 50  0001 C CNN
	1    1250 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 5550 1450 5550
Text GLabel 1050 5550 0    50   Input ~ 0
BUZZER
Text GLabel 4950 2900 0    50   Output ~ 0
BUZZER
$Comp
L FlarmDisplay:IPN80R3K3P7ATMA1 U1
U 1 1 62B48A85
P 1750 5550
F 0 "U1" H 1855 5596 50  0000 L CNN
F 1 "IPN80R3K3P7ATMA1" H 1855 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1800 5950 50  0001 C CNN
F 3 "" H 1800 5950 50  0001 C CNN
	1    1750 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 5550 1050 5550
$Comp
L power:GND #PWR08
U 1 1 6274604D
P 1800 3700
F 0 "#PWR08" H 1800 3450 50  0001 C CNN
F 1 "GND" H 1805 3527 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3600 1800 3700
Wire Wire Line
	1450 3600 1800 3600
Wire Notes Line
	600  2800 600  600 
Wire Notes Line
	600  600  3050 600 
Wire Notes Line
	3050 600  3050 2800
Wire Notes Line
	3050 2800 600  2800
Text Notes 650  2750 0    50   ~ 0
POWER FILTERING
Wire Notes Line
	600  3050 3050 3050
Wire Notes Line
	3050 3050 3050 4250
Wire Notes Line
	3050 4250 600  4250
Wire Notes Line
	600  4250 600  3050
Text Notes 650  4200 0    50   ~ 0
INPUT
Wire Notes Line
	3050 4400 3050 6200
Wire Notes Line
	3050 6200 600  6200
Wire Notes Line
	600  6200 600  4400
Wire Notes Line
	600  4400 3050 4400
Text Notes 650  6150 0    50   ~ 0
BUZZER DRIVER
Wire Notes Line
	13850 950  13850 4650
Wire Notes Line
	13850 4650 7050 4650
Wire Notes Line
	7050 4650 7050 950 
Wire Notes Line
	7050 950  13850 950 
Text Notes 7100 4600 0    50   ~ 0
LED DRIVER
$Comp
L Device:LED_Small D7
U 1 1 6284AB85
P 12350 2000
F 0 "D7" H 12450 2050 50  0000 C CNN
F 1 "01R" H 12250 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12350 2000 50  0001 C CNN
F 3 "~" V 12350 2000 50  0001 C CNN
	1    12350 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6284A54E
P 12050 2000
F 0 "D5" H 12150 2050 50  0000 C CNN
F 1 "02R" H 11950 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12050 2000 50  0001 C CNN
F 3 "~" V 12050 2000 50  0001 C CNN
	1    12050 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 62848F22
P 11750 2000
F 0 "D3" H 11850 2050 50  0000 C CNN
F 1 "03R" H 11650 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 11750 2000 50  0001 C CNN
F 3 "~" V 11750 2000 50  0001 C CNN
	1    11750 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D11
U 1 1 6284B656
P 12800 2000
F 0 "D11" H 12850 2050 50  0000 L CNN
F 1 "11Y" H 12700 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12800 2000 50  0001 C CNN
F 3 "~" V 12800 2000 50  0001 C CNN
	1    12800 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C13
U 1 1 628BB829
P 7750 3500
F 0 "C13" H 7500 3550 50  0000 L CNN
F 1 "10nF" H 7450 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7788 3350 50  0001 C CNN
F 3 "~" H 7750 3500 50  0001 C CNN
	1    7750 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D24
U 1 1 628FAD12
P 9300 2000
F 0 "D24" H 9350 2050 50  0000 L CNN
F 1 "07R" H 9200 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9300 2000 50  0001 C CNN
F 3 "~" V 9300 2000 50  0001 C CNN
	1    9300 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D16
U 1 1 6282275F
P 9150 2000
F 0 "D16" H 9200 2050 50  0000 L CNN
F 1 "07Y" H 9050 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 9150 2000 50  0001 C CNN
F 3 "~" V 9150 2000 50  0001 C CNN
	1    9150 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D9
U 1 1 6284B1D5
P 12650 2000
F 0 "D9" H 12750 2050 50  0000 C CNN
F 1 "12R" H 12550 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12650 2000 50  0001 C CNN
F 3 "~" V 12650 2000 50  0001 C CNN
	1    12650 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 62820ED2
P 12200 2000
F 0 "D4" H 12300 2050 50  0000 C CNN
F 1 "01Y" H 12100 2050 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" V 12200 2000 50  0001 C CNN
F 3 "~" V 12200 2000 50  0001 C CNN
	1    12200 2000
	0    -1   -1   0   
$EndComp
NoConn ~ 4950 3000
NoConn ~ 4950 3100
NoConn ~ 4950 3200
NoConn ~ 4950 3300
NoConn ~ 4950 3400
NoConn ~ 6150 3400
NoConn ~ 6150 3100
NoConn ~ 6150 3000
NoConn ~ 6150 2700
NoConn ~ 6150 2000
NoConn ~ 6150 1900
NoConn ~ 10750 2200
Wire Wire Line
	10650 3650 10650 3700
Wire Wire Line
	10750 3700 10650 3700
Connection ~ 10650 3700
Wire Wire Line
	10650 3700 10650 3800
Wire Wire Line
	850  1250 850  1200
Wire Wire Line
	850  1200 1300 1200
Connection ~ 850  1200
$Comp
L power:GND #PWR02
U 1 1 62A053B7
P 850 1250
F 0 "#PWR02" H 850 1000 50  0001 C CNN
F 1 "GND" H 855 1077 50  0000 C CNN
F 2 "" H 850 1250 50  0001 C CNN
F 3 "" H 850 1250 50  0001 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
