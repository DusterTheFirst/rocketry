EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Slider Avionics"
Date ""
Rev "v1"
Comp "Zachary Kohnen"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR?
U 1 1 605FB813
P 2200 6100
F 0 "#PWR?" H 2200 5950 50  0001 C CNN
F 1 "+3.3V" H 2215 6273 50  0000 C CNN
F 2 "" H 2200 6100 50  0001 C CNN
F 3 "" H 2200 6100 50  0001 C CNN
	1    2200 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605FE7E6
P 1700 2950
F 0 "#PWR?" H 1700 2700 50  0001 C CNN
F 1 "GND" H 1705 2777 50  0000 C CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "" H 1700 2950 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
Text GLabel 2450 2350 2    50   Output ~ 0
Servo_Z_VCC
Text Notes 700  700  0    50   ~ 0
Servo Power
$Comp
L power:GND #PWR?
U 1 1 6060C0AC
P 1600 5400
F 0 "#PWR?" H 1600 5150 50  0001 C CNN
F 1 "GND" H 1605 5227 50  0000 C CNN
F 2 "" H 1600 5400 50  0001 C CNN
F 3 "" H 1600 5400 50  0001 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1085-3.3 U?
U 1 1 6061A8AF
P 1250 6100
F 0 "U?" H 1250 6342 50  0000 C CNN
F 1 "LM1086-3.3" H 1250 6251 50  0000 C CNN
F 2 "" H 1250 6350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1086.pdf" H 1250 6100 50  0001 C CNN
	1    1250 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6061B465
P 1650 6700
F 0 "#PWR?" H 1650 6450 50  0001 C CNN
F 1 "GND" H 1655 6527 50  0000 C CNN
F 2 "" H 1650 6700 50  0001 C CNN
F 3 "" H 1650 6700 50  0001 C CNN
	1    1650 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 6061EE14
P 850 6050
F 0 "#PWR?" H 850 5900 50  0001 C CNN
F 1 "+BATT" H 865 6223 50  0000 C CNN
F 2 "" H 850 6050 50  0001 C CNN
F 3 "" H 850 6050 50  0001 C CNN
	1    850  6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6100 850  6100
Wire Wire Line
	850  6100 850  6050
Text Notes 700  5800 0    50   ~ 0
uC System Power
$Comp
L Device:Battery BT?
U 1 1 6062F0FB
P 850 5100
F 0 "BT?" H 958 5146 50  0000 L CNN
F 1 "Battery" H 958 5055 50  0000 L CNN
F 2 "" V 850 5160 50  0001 C CNN
F 3 "~" V 850 5160 50  0001 C CNN
	1    850  5100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 606325C1
P 1600 4800
F 0 "#PWR?" H 1600 4650 50  0001 C CNN
F 1 "+BATT" H 1615 4973 50  0000 C CNN
F 2 "" H 1600 4800 50  0001 C CNN
F 3 "" H 1600 4800 50  0001 C CNN
	1    1600 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 606419A1
P 1600 4950
F 0 "D?" V 1639 4832 50  0000 R CNN
F 1 "LED (RED)" V 1548 4832 50  0000 R CNN
F 2 "" H 1600 4950 50  0001 C CNN
F 3 "~" H 1600 4950 50  0001 C CNN
	1    1600 4950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 60641D5D
P 2200 6250
F 0 "D?" V 2239 6132 50  0000 R CNN
F 1 "LED (GRN)" V 2148 6132 50  0000 R CNN
F 2 "" H 2200 6250 50  0001 C CNN
F 3 "~" H 2200 6250 50  0001 C CNN
	1    2200 6250
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 60668A2B
P 1700 2650
F 0 "C?" H 1818 2696 50  0000 L CNN
F 1 "470uF" H 1818 2605 50  0000 L CNN
F 2 "" H 1738 2500 50  0001 C CNN
F 3 "~" H 1700 2650 50  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2350 1700 2350
$Comp
L Device:LED D?
U 1 1 6067E3C4
P 2150 2500
F 0 "D?" V 2189 2382 50  0000 R CNN
F 1 "LED (YLO)" V 2098 2382 50  0000 R CNN
F 2 "" H 2150 2500 50  0001 C CNN
F 3 "~" H 2150 2500 50  0001 C CNN
	1    2150 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2350 2150 2350
Connection ~ 1700 2350
Connection ~ 2150 2350
Wire Wire Line
	2150 2350 2450 2350
$Comp
L Device:R R?
U 1 1 6068453A
P 2150 2800
F 0 "R?" H 2080 2754 50  0000 R CNN
F 1 "220" H 2080 2845 50  0000 R CNN
F 2 "" V 2080 2800 50  0001 C CNN
F 3 "~" H 2150 2800 50  0001 C CNN
	1    2150 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2950 1700 2950
$Comp
L Device:R R?
U 1 1 606956D3
P 1600 5250
F 0 "R?" H 1530 5204 50  0000 R CNN
F 1 "220" H 1530 5295 50  0000 R CNN
F 2 "" V 1530 5250 50  0001 C CNN
F 3 "~" H 1600 5250 50  0001 C CNN
	1    1600 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  5400 850  5300
Wire Wire Line
	850  4900 850  4700
$Comp
L Device:R R?
U 1 1 606D63D0
P 2200 6550
F 0 "R?" H 2130 6504 50  0000 R CNN
F 1 "220" H 2130 6595 50  0000 R CNN
F 2 "" V 2130 6550 50  0001 C CNN
F 3 "~" H 2200 6550 50  0001 C CNN
	1    2200 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 6700 1250 6400
Connection ~ 1700 2950
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U?
U 1 1 605FB24E
P 1300 2350
F 0 "U?" H 1300 2637 60  0000 C CNN
F 1 "L7805CV" H 1300 2531 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 1500 2550 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 2650 60  0001 L CNN
F 4 "497-1443-5-ND" H 1500 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 1500 2850 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 1500 2950 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 1500 3050 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 1500 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 1500 3350 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 1500 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1500 3550 60  0001 L CNN "Status"
	1    1300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2950 1300 2950
Wire Wire Line
	1300 2950 1300 2650
Wire Wire Line
	1700 2500 1700 2350
Wire Wire Line
	1700 2800 1700 2950
$Comp
L Device:CP C?
U 1 1 6071E0AB
P 1650 6400
F 0 "C?" H 1768 6446 50  0000 L CNN
F 1 "47uF" H 1768 6355 50  0000 L CNN
F 2 "" H 1688 6250 50  0001 C CNN
F 3 "~" H 1650 6400 50  0001 C CNN
	1    1650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6700 1650 6700
Wire Wire Line
	1650 6550 1650 6700
Connection ~ 1650 6700
Wire Wire Line
	1550 6100 1650 6100
Wire Wire Line
	1650 6100 1650 6250
Wire Notes Line
	700  700  3100 700 
Wire Notes Line
	700  5800 700  6950
Wire Notes Line
	2800 6950 2800 5800
$Comp
L Device:R R?
U 1 1 60606E28
P 2250 5250
F 0 "R?" H 2320 5296 50  0000 L CNN
F 1 "100k" H 2320 5205 50  0000 L CNN
F 2 "" V 2180 5250 50  0001 C CNN
F 3 "~" H 2250 5250 50  0001 C CNN
	1    2250 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60607363
P 2250 4950
F 0 "R?" H 2320 4996 50  0000 L CNN
F 1 "220k" H 2320 4905 50  0000 L CNN
F 2 "" V 2180 4950 50  0001 C CNN
F 3 "~" H 2250 4950 50  0001 C CNN
	1    2250 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60616DD0
P 1850 6100
F 0 "D?" H 1850 5883 50  0000 C CNN
F 1 "D_Schottky" H 1850 5974 50  0000 C CNN
F 2 "" H 1850 6100 50  0001 C CNN
F 3 "~" H 1850 6100 50  0001 C CNN
	1    1850 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 6100 1650 6100
Connection ~ 1650 6100
Connection ~ 2200 6100
Wire Wire Line
	1600 5400 2250 5400
Connection ~ 1600 5400
Wire Wire Line
	2250 4800 1600 4800
Connection ~ 1600 4800
Text GLabel 2350 5100 2    50   Output ~ 0
V_BAT_Sense
Wire Wire Line
	2250 5100 2350 5100
Connection ~ 2250 5100
Text Notes 700  4350 0    50   ~ 0
Battery Input\n
Wire Notes Line
	700  4350 2950 4350
Wire Notes Line
	2950 4350 2950 5650
Wire Notes Line
	700  4350 700  5650
Wire Notes Line
	2950 5650 700  5650
Wire Wire Line
	2000 6100 2200 6100
Wire Wire Line
	1650 6700 2200 6700
Wire Notes Line
	700  5800 2800 5800
Wire Notes Line
	2800 6950 700  6950
Wire Notes Line
	3100 4200 700  4200
Wire Notes Line
	700  4200 700  700 
Wire Notes Line
	3100 700  3100 4200
NoConn ~ 9150 900 
NoConn ~ 9150 1200
NoConn ~ 9150 1400
$Comp
L power:GND #PWR?
U 1 1 606B9AD8
P 8450 3450
F 0 "#PWR?" H 8450 3200 50  0001 C CNN
F 1 "GND" H 8455 3277 50  0000 C CNN
F 2 "" H 8450 3450 50  0001 C CNN
F 3 "" H 8450 3450 50  0001 C CNN
	1    8450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3000 8450 3450
Wire Wire Line
	8450 3450 9750 3450
Wire Wire Line
	9750 3450 9750 2600
Wire Wire Line
	9750 2600 9150 2600
Connection ~ 8450 3450
Wire Wire Line
	9150 2100 9750 2100
Wire Wire Line
	9750 2100 9750 2600
Connection ~ 9750 2600
Wire Wire Line
	9150 1600 9300 1600
Wire Wire Line
	9750 1600 9750 2100
Connection ~ 9750 2100
Wire Wire Line
	9150 1100 9750 1100
Wire Wire Line
	9750 1100 9750 1600
Connection ~ 9750 1600
Wire Wire Line
	7200 1100 7200 1600
Wire Wire Line
	7200 3450 8450 3450
Wire Wire Line
	7750 2100 7200 2100
Connection ~ 7200 2100
Wire Wire Line
	7750 1600 7200 1600
Connection ~ 7200 1600
Wire Wire Line
	7200 1600 7200 2100
Wire Wire Line
	7200 1100 7750 1100
Text GLabel 9150 2200 2    50   Output ~ 0
PWM_Servo_X
Text GLabel 9150 2300 2    50   Output ~ 0
PWM_Servo_Z
Text GLabel 9150 1500 2    50   Input ~ 0
V_BAT_Sense
Wire Wire Line
	9150 1700 9300 1700
Wire Wire Line
	9300 1700 9300 1600
Connection ~ 9300 1600
Wire Wire Line
	9300 1600 9750 1600
Text Notes 9850 1800 0    50   ~ 0
ADC Connections:\n3: (Internal) Temperature Sensor\n2: Battery voltage divider\n1: Ground reference\n0:
$Comp
L Device:D_Schottky D?
U 1 1 6070DD54
P 9450 1000
F 0 "D?" H 9450 1217 50  0000 C CNN
F 1 "D_Schottky" H 9450 1126 50  0000 C CNN
F 2 "" H 9450 1000 50  0001 C CNN
F 3 "~" H 9450 1000 50  0001 C CNN
	1    9450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1000 9150 1000
$Comp
L power:+3.3V #PWR?
U 1 1 6071506B
P 9750 1000
F 0 "#PWR?" H 9750 850 50  0001 C CNN
F 1 "+3.3V" H 9765 1173 50  0000 C CNN
F 2 "" H 9750 1000 50  0001 C CNN
F 3 "" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1000 9600 1000
$Comp
L MCU_RaspberryPi_and_Boards:Pico U?
U 1 1 606ADA4C
P 8450 1850
F 0 "U?" H 8450 3065 50  0000 C CNN
F 1 "Pico" H 8450 2974 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 8450 1850 50  0001 C CNN
F 3 "" H 8450 1850 50  0001 C CNN
	1    8450 1850
	1    0    0    -1  
$EndComp
NoConn ~ 9150 1900
Wire Wire Line
	850  5400 1600 5400
$Comp
L power:+BATT #PWR?
U 1 1 606043B3
P 850 2350
F 0 "#PWR?" H 850 2200 50  0001 C CNN
F 1 "+BATT" H 865 2523 50  0000 C CNN
F 2 "" H 850 2350 50  0001 C CNN
F 3 "" H 850 2350 50  0001 C CNN
	1    850  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2350 1000 2350
Text GLabel 2050 3300 2    50   Input ~ 0
Servo_GND
Wire Wire Line
	850  1100 1000 1100
Wire Wire Line
	1700 1100 2150 1100
Connection ~ 1700 1100
Wire Wire Line
	1700 1250 1700 1100
Wire Wire Line
	1600 1100 1700 1100
Wire Wire Line
	1700 1550 1700 1700
Wire Wire Line
	1300 1700 1300 1400
Wire Wire Line
	1700 1700 1300 1700
Connection ~ 1700 1700
Wire Wire Line
	2150 1700 1700 1700
$Comp
L Device:R R?
U 1 1 6068143D
P 2150 1550
F 0 "R?" H 2080 1504 50  0000 R CNN
F 1 "220" H 2080 1595 50  0000 R CNN
F 2 "" V 2080 1550 50  0001 C CNN
F 3 "~" H 2150 1550 50  0001 C CNN
	1    2150 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 1100 2450 1100
Connection ~ 2150 1100
$Comp
L Device:CP C?
U 1 1 6065FD17
P 1700 1400
F 0 "C?" H 1818 1446 50  0000 L CNN
F 1 "470uF" H 1818 1355 50  0000 L CNN
F 2 "" H 1738 1250 50  0001 C CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6063E19A
P 2150 1250
F 0 "D?" V 2189 1132 50  0000 R CNN
F 1 "LED (YLO)" V 2098 1132 50  0000 R CNN
F 2 "" H 2150 1250 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	0    -1   -1   0   
$EndComp
Text GLabel 2450 1100 2    50   Output ~ 0
Servo_X_VCC
$Comp
L power:GND #PWR?
U 1 1 605FE0FD
P 1700 1700
F 0 "#PWR?" H 1700 1450 50  0001 C CNN
F 1 "GND" H 1705 1527 50  0000 C CNN
F 2 "" H 1700 1700 50  0001 C CNN
F 3 "" H 1700 1700 50  0001 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 605FD1D5
P 850 1100
F 0 "#PWR?" H 850 950 50  0001 C CNN
F 1 "+BATT" H 865 1273 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U?
U 1 1 605FABFC
P 1300 1100
F 0 "U?" H 1300 1387 60  0000 C CNN
F 1 "L7805CV" H 1300 1281 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 1500 1300 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 1400 60  0001 L CNN
F 4 "497-1443-5-ND" H 1500 1500 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 1500 1600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 1500 1700 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 1500 1800 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 1900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 1500 2000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 1500 2100 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 1500 2200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1500 2300 60  0001 L CNN "Status"
	1    1300 1100
	1    0    0    -1  
$EndComp
Text GLabel 1150 3650 0    50   Input ~ 0
Servo_EN
$Comp
L Device:R R?
U 1 1 60701305
P 1300 3650
F 0 "R?" V 1093 3650 50  0000 C CNN
F 1 "220" V 1184 3650 50  0000 C CNN
F 2 "" V 1230 3650 50  0001 C CNN
F 3 "~" H 1300 3650 50  0001 C CNN
	1    1300 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6070AA6F
P 1550 3800
F 0 "R?" H 1480 3754 50  0000 R CNN
F 1 "2.2k" H 1480 3845 50  0000 R CNN
F 2 "" V 1480 3800 50  0001 C CNN
F 3 "~" H 1550 3800 50  0001 C CNN
	1    1550 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 3650 1550 3650
Connection ~ 1550 3650
Wire Wire Line
	1550 3650 1650 3650
$Comp
L power:GND #PWR?
U 1 1 60717E31
P 1750 3950
F 0 "#PWR?" H 1750 3700 50  0001 C CNN
F 1 "GND" H 1755 3777 50  0000 C CNN
F 2 "" H 1750 3950 50  0001 C CNN
F 3 "" H 1750 3950 50  0001 C CNN
	1    1750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3950 1750 3950
Connection ~ 1750 3950
Wire Wire Line
	1750 3950 1550 3950
Text GLabel 9150 2000 2    50   Output ~ 0
Servo_EN
$Comp
L Switch:SW_SPDT SW?
U 1 1 607AE6CD
P 1250 4800
F 0 "SW?" H 1250 4475 50  0000 C CNN
F 1 "SW_PWR" H 1250 4566 50  0000 C CNN
F 2 "" H 1250 4800 50  0001 C CNN
F 3 "~" H 1250 4800 50  0001 C CNN
	1    1250 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 4800 1600 4800
Wire Wire Line
	850  4700 1050 4700
Text GLabel 3800 4550 0    50   Output ~ 0
Servo_GND
Text GLabel 3800 4450 0    50   Input ~ 0
Servo_Z_VCC
Text GLabel 3800 4350 0    50   Input ~ 0
PWM_Servo_Z
Text GLabel 3800 3800 0    50   Input ~ 0
Servo_X_VCC
Wire Notes Line
	3200 3400 4450 3400
Wire Notes Line
	4450 3400 4450 4700
Wire Notes Line
	4450 4700 3200 4700
Wire Notes Line
	3200 4700 3200 3400
Text Notes 3200 3400 0    50   ~ 0
Servo Connections\n
Text Notes 2050 3950 0    50   ~ 0
Mosfet allows servos\nto be depowered
Text GLabel 7750 1400 0    50   Output ~ 0
I2C0_SDA
Text GLabel 7750 1500 0    50   Output ~ 0
I2C0_SCL
Text GLabel 9150 2400 2    50   Output ~ 0
SPI0_TX
Text GLabel 9150 2500 2    50   Output ~ 0
SPI0_SCK
Text GLabel 9150 2800 2    50   Output ~ 0
SPI0_RX
Text GLabel 7750 2800 0    50   Input ~ 0
ARM
Text Notes 9150 2700 0    50   ~ 0
SPI0_CSn for slave mode\n
$Comp
L Motor:Motor_Servo_JR M?
U 1 1 606633E9
P 4100 4450
F 0 "M?" H 3900 4750 50  0000 L CNN
F 1 "Servo Y" H 3900 4650 50  0000 L CNN
F 2 "" H 4100 4260 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 4260 50  0001 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo_JR M?
U 1 1 606668F8
P 4100 3800
F 0 "M?" H 3900 4100 50  0000 L CNN
F 1 "Servo X" H 3900 4000 50  0000 L CNN
F 2 "" H 4100 3610 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 3610 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Text GLabel 3800 3900 0    50   Output ~ 0
Servo_GND
Text GLabel 3800 3700 0    50   Input ~ 0
PWM_Servo_X
NoConn ~ 1050 4900
Wire Wire Line
	4250 2900 4250 3000
$Comp
L power:GND #PWR?
U 1 1 60808FBC
P 4250 3000
F 0 "#PWR?" H 4250 2750 50  0001 C CNN
F 1 "GND" H 4255 2827 50  0000 C CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60808FB3
P 3850 2450
F 0 "R?" H 3780 2404 50  0000 R CNN
F 1 "2.2k" H 3780 2495 50  0000 R CNN
F 2 "" V 3780 2450 50  0001 C CNN
F 3 "~" H 3850 2450 50  0001 C CNN
	1    3850 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60808FAD
P 3600 2700
F 0 "R?" V 3393 2700 50  0000 C CNN
F 1 "220" V 3484 2700 50  0000 C CNN
F 2 "" V 3530 2700 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2350 4250 2500
Text GLabel 3300 2300 2    50   Input ~ 0
Buzzer_EN
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60808FA5
P 4150 2700
F 0 "Q?" H 4354 2746 50  0000 L CNN
F 1 "IRF540N" H 4354 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4400 2625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4150 2700 50  0001 L CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Electromechanical:BUZZER-PTH LS?
U 1 1 6065A952
P 5000 2400
F 0 "LS?" H 4800 2850 45  0000 L CNN
F 1 "Mini Speaker" H 4800 2750 45  0000 L CNN
F 2 "BUZZER-12MM" H 5000 2700 20  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
F 4 "COMP-08253" H 4800 2650 60  0000 L CNN "Field4"
	1    5000 2400
	1    0    0    -1  
$EndComp
Text GLabel 5000 2500 3    50   Input ~ 0
PWM_Buzzer
$Comp
L power:GND #PWR?
U 1 1 6079E7DB
P 5100 2500
F 0 "#PWR?" H 5100 2250 50  0001 C CNN
F 1 "GND" H 5150 2350 50  0000 C CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6079E177
P 4450 2350
F 0 "#PWR?" H 4450 2100 50  0001 C CNN
F 1 "GND" H 4455 2177 50  0000 C CNN
F 2 "" H 4450 2350 50  0001 C CNN
F 3 "" H 4450 2350 50  0001 C CNN
	1    4450 2350
	1    0    0    -1  
$EndComp
Wire Notes Line
	5450 3250 5450 1750
Wire Notes Line
	4750 1750 4750 3250
$Comp
L Device:Buzzer BZ?
U 1 1 606D194C
P 4350 2250
F 0 "BZ?" V 4750 2400 50  0000 R CNN
F 1 "Alarm Buzzer" V 4650 2400 50  0000 R CNN
F 2 "" V 4325 2350 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/CE-C75.pdf" V 4325 2350 50  0001 C CNN
F 4 " COM-13940" V 4550 2450 50  0000 R CNN "Field4"
	1    4350 2250
	0    -1   -1   0   
$EndComp
Text Notes 3200 1750 0    50   ~ 0
Human Interfacing\n
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 6098096A
P 3350 1100
F 0 "J?" H 3400 1300 50  0000 C CNN
F 1 "I2C Breakout" V 3300 1050 50  0000 C CNN
F 2 "" H 3350 1100 50  0001 C CNN
F 3 "~" H 3350 1100 50  0001 C CNN
	1    3350 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60984261
P 4200 1150
F 0 "J?" H 4250 1450 50  0000 C CNN
F 1 "SPI Breakout" V 4150 1150 50  0000 C CNN
F 2 "" H 4200 1150 50  0001 C CNN
F 3 "~" H 4200 1150 50  0001 C CNN
	1    4200 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60993879
P 3650 1300
F 0 "#PWR?" H 3650 1050 50  0001 C CNN
F 1 "GND" H 3655 1127 50  0000 C CNN
F 2 "" H 3650 1300 50  0001 C CNN
F 3 "" H 3650 1300 50  0001 C CNN
	1    3650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6099A076
P 4500 1350
F 0 "#PWR?" H 4500 1100 50  0001 C CNN
F 1 "GND" H 4505 1177 50  0000 C CNN
F 2 "" H 4500 1350 50  0001 C CNN
F 3 "" H 4500 1350 50  0001 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1350 4400 1350
Wire Wire Line
	3650 1300 3550 1300
$Comp
L power:+3.3V #PWR?
U 1 1 609D3FA8
P 3650 1000
F 0 "#PWR?" H 3650 850 50  0001 C CNN
F 1 "+3.3V" H 3665 1173 50  0000 C CNN
F 2 "" H 3650 1000 50  0001 C CNN
F 3 "" H 3650 1000 50  0001 C CNN
	1    3650 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 609D610B
P 4500 950
F 0 "#PWR?" H 4500 800 50  0001 C CNN
F 1 "+3.3V" H 4515 1123 50  0000 C CNN
F 2 "" H 4500 950 50  0001 C CNN
F 3 "" H 4500 950 50  0001 C CNN
	1    4500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 950  4400 950 
Wire Wire Line
	3650 1000 3550 1000
Text GLabel 3550 1100 2    50   Input ~ 0
I2C0_SDA
Text GLabel 3550 1200 2    50   Input ~ 0
I2C0_SCL
Text GLabel 4400 1150 2    50   Input ~ 0
SPI0_TX
Text GLabel 4400 1250 2    50   Input ~ 0
SPI0_SCK
Text GLabel 4400 1050 2    50   Input ~ 0
SPI0_RX
Wire Notes Line
	3200 700  5700 700 
Wire Notes Line
	5700 700  5700 1600
Wire Notes Line
	5700 1600 3200 1600
Text Notes 3200 700  0    50   ~ 0
Development Bus Breakouts\n
Wire Notes Line
	3200 1600 3200 700 
Wire Wire Line
	4800 3900 4700 3900
$Comp
L power:GND #PWR?
U 1 1 607E8F6E
P 4700 3900
F 0 "#PWR?" H 4700 3650 50  0001 C CNN
F 1 "GND" H 4705 3727 50  0000 C CNN
F 2 "" H 4700 3900 50  0001 C CNN
F 3 "" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
Text GLabel 5300 3800 2    50   Output ~ 0
ARM
Wire Wire Line
	5200 3800 5300 3800
$Comp
L Switch:SW_SPDT SW?
U 1 1 607C182A
P 5000 3800
F 0 "SW?" H 5000 3475 50  0000 C CNN
F 1 "SW_ARM" H 5000 3566 50  0000 C CNN
F 2 "" H 5000 3800 50  0001 C CNN
F 3 "~" H 5000 3800 50  0001 C CNN
	1    5000 3800
	-1   0    0    1   
$EndComp
Wire Notes Line
	4550 3400 5550 3400
Wire Notes Line
	4550 4150 4550 3400
Wire Notes Line
	5550 4150 4550 4150
Wire Notes Line
	5550 3400 5550 4150
Text Notes 4550 3400 0    50   ~ 0
Avionics Arming
Wire Wire Line
	4700 3700 4800 3700
$Comp
L power:+3.3V #PWR?
U 1 1 60755D31
P 4700 3700
F 0 "#PWR?" H 4700 3550 50  0001 C CNN
F 1 "+3.3V" H 4715 3873 50  0000 C CNN
F 2 "" H 4700 3700 50  0001 C CNN
F 3 "" H 4700 3700 50  0001 C CNN
	1    4700 3700
	1    0    0    -1  
$EndComp
Text GLabel 7750 2700 0    50   Output ~ 0
Buzzer_EN
Text GLabel 7750 2500 0    50   Output ~ 0
PWM_Buzzer
Wire Wire Line
	7750 2600 7200 2600
Text GLabel 8350 3000 3    50   Output ~ 0
SWD_CLK
Text GLabel 8550 3000 3    50   Output ~ 0
SWD_IO
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 609F89C0
P 5050 1150
F 0 "J?" H 5100 1350 50  0000 C CNN
F 1 "SWD Breakout" V 5000 1150 50  0000 C CNN
F 2 "" H 5050 1150 50  0001 C CNN
F 3 "~" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A06D1F
P 5250 1150
F 0 "#PWR?" H 5250 900 50  0001 C CNN
F 1 "GND" V 5250 950 50  0000 C CNN
F 2 "" H 5250 1150 50  0001 C CNN
F 3 "" H 5250 1150 50  0001 C CNN
	1    5250 1150
	0    -1   -1   0   
$EndComp
Text GLabel 5250 1250 2    50   Input ~ 0
SWD_CLK
Text GLabel 5250 1050 2    50   Input ~ 0
SWD_IO
Wire Wire Line
	7200 2100 7200 2600
Wire Wire Line
	7200 2600 7200 3450
Connection ~ 7200 2600
$Comp
L power:+3.3V #PWR?
U 1 1 6061EF8C
P 3850 2300
F 0 "#PWR?" H 3850 2150 50  0001 C CNN
F 1 "+3.3V" H 3865 2473 50  0000 C CNN
F 2 "" H 3850 2300 50  0001 C CNN
F 3 "" H 3850 2300 50  0001 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
NoConn ~ 9150 1300
Wire Notes Line
	4050 700  4050 1600
Wire Notes Line
	4900 700  4900 1600
Wire Notes Line
	3100 1950 700  1950
Wire Notes Line
	700  3200 3100 3200
Wire Wire Line
	1950 3850 1950 3950
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60656F11
P 1850 3650
F 0 "Q?" H 2054 3696 50  0000 L CNN
F 1 "IRF540N" H 2054 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2100 3575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 1850 3650 50  0001 L CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3450 1950 3300
Wire Wire Line
	1950 3300 2050 3300
Wire Notes Line
	3200 1750 3200 3250
Wire Wire Line
	3750 2700 3850 2700
Wire Wire Line
	3850 2600 3850 2700
Connection ~ 3850 2700
Wire Wire Line
	3850 2700 3950 2700
Wire Wire Line
	3250 2700 3450 2700
Wire Notes Line
	3200 1750 5450 1750
Wire Wire Line
	3250 2300 3250 2700
Wire Wire Line
	3300 2300 3250 2300
Wire Notes Line
	4450 4050 3200 4050
Wire Notes Line
	3200 3250 5450 3250
Text Notes 1700 6250 0    50   ~ 0
Redundant?
$EndSCHEMATC