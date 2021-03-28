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
P 2200 6000
F 0 "#PWR?" H 2200 5850 50  0001 C CNN
F 1 "+3.3V" H 2215 6173 50  0000 C CNN
F 2 "" H 2200 6000 50  0001 C CNN
F 3 "" H 2200 6000 50  0001 C CNN
	1    2200 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605FE7E6
P 1700 2800
F 0 "#PWR?" H 1700 2550 50  0001 C CNN
F 1 "GND" H 1705 2627 50  0000 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
Text GLabel 2450 2200 2    50   Output ~ 0
Servo_Z_VCC
Text Notes 700  700  0    50   ~ 0
Servo Power
$Comp
L power:GND #PWR?
U 1 1 6060C0AC
P 1600 5300
F 0 "#PWR?" H 1600 5050 50  0001 C CNN
F 1 "GND" H 1605 5127 50  0000 C CNN
F 2 "" H 1600 5300 50  0001 C CNN
F 3 "" H 1600 5300 50  0001 C CNN
	1    1600 5300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1085-3.3 U?
U 1 1 6061A8AF
P 1250 6000
F 0 "U?" H 1250 6242 50  0000 C CNN
F 1 "LM1086-3.3" H 1250 6151 50  0000 C CNN
F 2 "" H 1250 6250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1086.pdf" H 1250 6000 50  0001 C CNN
	1    1250 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6061B465
P 1650 6600
F 0 "#PWR?" H 1650 6350 50  0001 C CNN
F 1 "GND" H 1655 6427 50  0000 C CNN
F 2 "" H 1650 6600 50  0001 C CNN
F 3 "" H 1650 6600 50  0001 C CNN
	1    1650 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 6061EE14
P 850 5950
F 0 "#PWR?" H 850 5800 50  0001 C CNN
F 1 "+BATT" H 865 6123 50  0000 C CNN
F 2 "" H 850 5950 50  0001 C CNN
F 3 "" H 850 5950 50  0001 C CNN
	1    850  5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6000 850  6000
Wire Wire Line
	850  6000 850  5950
Text Notes 700  5700 0    50   ~ 0
uC System Power
$Comp
L Device:Battery BT?
U 1 1 6062F0FB
P 850 5000
F 0 "BT?" H 958 5046 50  0000 L CNN
F 1 "Battery" H 958 4955 50  0000 L CNN
F 2 "" V 850 5060 50  0001 C CNN
F 3 "~" V 850 5060 50  0001 C CNN
	1    850  5000
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 606325C1
P 1600 4700
F 0 "#PWR?" H 1600 4550 50  0001 C CNN
F 1 "+BATT" H 1615 4873 50  0000 C CNN
F 2 "" H 1600 4700 50  0001 C CNN
F 3 "" H 1600 4700 50  0001 C CNN
	1    1600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 606419A1
P 1600 4850
F 0 "D?" V 1639 4732 50  0000 R CNN
F 1 "LED (RED)" V 1548 4732 50  0000 R CNN
F 2 "" H 1600 4850 50  0001 C CNN
F 3 "~" H 1600 4850 50  0001 C CNN
	1    1600 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 60641D5D
P 2200 6150
F 0 "D?" V 2239 6032 50  0000 R CNN
F 1 "LED (GRN)" V 2148 6032 50  0000 R CNN
F 2 "" H 2200 6150 50  0001 C CNN
F 3 "~" H 2200 6150 50  0001 C CNN
	1    2200 6150
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 60668A2B
P 1700 2500
F 0 "C?" H 1818 2546 50  0000 L CNN
F 1 "470uF" H 1818 2455 50  0000 L CNN
F 2 "" H 1738 2350 50  0001 C CNN
F 3 "~" H 1700 2500 50  0001 C CNN
	1    1700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2200 1700 2200
$Comp
L Device:LED D?
U 1 1 6067E3C4
P 2150 2350
F 0 "D?" V 2189 2232 50  0000 R CNN
F 1 "LED (YLO)" V 2098 2232 50  0000 R CNN
F 2 "" H 2150 2350 50  0001 C CNN
F 3 "~" H 2150 2350 50  0001 C CNN
	1    2150 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2200 2150 2200
Connection ~ 1700 2200
Connection ~ 2150 2200
Wire Wire Line
	2150 2200 2450 2200
$Comp
L Device:R R?
U 1 1 6068453A
P 2150 2650
F 0 "R?" H 2080 2604 50  0000 R CNN
F 1 "220" H 2080 2695 50  0000 R CNN
F 2 "" V 2080 2650 50  0001 C CNN
F 3 "~" H 2150 2650 50  0001 C CNN
	1    2150 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2800 1700 2800
$Comp
L Device:R R?
U 1 1 606956D3
P 1600 5150
F 0 "R?" H 1530 5104 50  0000 R CNN
F 1 "220" H 1530 5195 50  0000 R CNN
F 2 "" V 1530 5150 50  0001 C CNN
F 3 "~" H 1600 5150 50  0001 C CNN
	1    1600 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	850  5300 850  5200
Wire Wire Line
	850  4800 850  4600
$Comp
L Device:R R?
U 1 1 606D63D0
P 2200 6450
F 0 "R?" H 2130 6404 50  0000 R CNN
F 1 "220" H 2130 6495 50  0000 R CNN
F 2 "" V 2130 6450 50  0001 C CNN
F 3 "~" H 2200 6450 50  0001 C CNN
	1    2200 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 6600 1250 6300
Connection ~ 1700 2800
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U?
U 1 1 605FB24E
P 1300 2200
F 0 "U?" H 1300 2487 60  0000 C CNN
F 1 "L7805CV" H 1300 2381 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 1500 2400 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 2500 60  0001 L CNN
F 4 "497-1443-5-ND" H 1500 2600 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 1500 2700 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 1500 2800 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 1500 2900 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1500 3000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 1500 3100 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 1500 3200 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 1500 3300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1500 3400 60  0001 L CNN "Status"
	1    1300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2800 1300 2800
Wire Wire Line
	1300 2800 1300 2500
Wire Wire Line
	1700 2350 1700 2200
Wire Wire Line
	1700 2650 1700 2800
$Comp
L Device:CP C?
U 1 1 6071E0AB
P 1650 6300
F 0 "C?" H 1768 6346 50  0000 L CNN
F 1 "47uF" H 1768 6255 50  0000 L CNN
F 2 "" H 1688 6150 50  0001 C CNN
F 3 "~" H 1650 6300 50  0001 C CNN
	1    1650 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6600 1650 6600
Wire Wire Line
	1650 6450 1650 6600
Connection ~ 1650 6600
Wire Wire Line
	1550 6000 1650 6000
Wire Wire Line
	1650 6000 1650 6150
Wire Notes Line
	700  700  3100 700 
Wire Notes Line
	700  5700 700  6850
Wire Notes Line
	2800 6850 2800 5700
$Comp
L Device:R R?
U 1 1 60606E28
P 2250 5150
F 0 "R?" H 2320 5196 50  0000 L CNN
F 1 "100k" H 2320 5105 50  0000 L CNN
F 2 "" V 2180 5150 50  0001 C CNN
F 3 "~" H 2250 5150 50  0001 C CNN
	1    2250 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60607363
P 2250 4850
F 0 "R?" H 2320 4896 50  0000 L CNN
F 1 "220k" H 2320 4805 50  0000 L CNN
F 2 "" V 2180 4850 50  0001 C CNN
F 3 "~" H 2250 4850 50  0001 C CNN
	1    2250 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 60616DD0
P 1850 6000
F 0 "D?" H 1850 5783 50  0000 C CNN
F 1 "D_Schottky" H 1850 5874 50  0000 C CNN
F 2 "" H 1850 6000 50  0001 C CNN
F 3 "~" H 1850 6000 50  0001 C CNN
	1    1850 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 6000 1650 6000
Connection ~ 1650 6000
Connection ~ 2200 6000
Wire Wire Line
	1600 5300 2250 5300
Connection ~ 1600 5300
Wire Wire Line
	2250 4700 1600 4700
Connection ~ 1600 4700
Text GLabel 2350 5000 2    50   Output ~ 0
V_BAT_Sense
Wire Wire Line
	2250 5000 2350 5000
Connection ~ 2250 5000
Text Notes 700  4250 0    50   ~ 0
Battery Input\n
Wire Notes Line
	700  4250 2900 4250
Wire Notes Line
	2900 4250 2900 5550
Wire Notes Line
	700  4250 700  5550
Wire Notes Line
	2900 5550 700  5550
Wire Wire Line
	2000 6000 2200 6000
Wire Wire Line
	1650 6600 2200 6600
Wire Notes Line
	700  5700 2800 5700
Wire Notes Line
	2800 6850 700  6850
Wire Notes Line
	3100 4100 700  4100
Wire Notes Line
	700  4100 700  700 
Wire Notes Line
	3100 700  3100 4100
NoConn ~ 8700 900 
NoConn ~ 8700 1200
NoConn ~ 8700 1400
$Comp
L power:GND #PWR?
U 1 1 606B9AD8
P 8000 3400
F 0 "#PWR?" H 8000 3150 50  0001 C CNN
F 1 "GND" H 8005 3227 50  0000 C CNN
F 2 "" H 8000 3400 50  0001 C CNN
F 3 "" H 8000 3400 50  0001 C CNN
	1    8000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3000 8000 3400
Wire Wire Line
	8000 3400 9300 3400
Wire Wire Line
	9300 3400 9300 2600
Wire Wire Line
	9300 2600 8700 2600
Connection ~ 8000 3400
Wire Wire Line
	8700 2100 9300 2100
Wire Wire Line
	9300 2100 9300 2600
Connection ~ 9300 2600
Wire Wire Line
	8700 1600 8850 1600
Wire Wire Line
	9300 1600 9300 2100
Connection ~ 9300 2100
Wire Wire Line
	8700 1100 9300 1100
Wire Wire Line
	9300 1100 9300 1600
Connection ~ 9300 1600
Wire Wire Line
	6750 1100 6750 1600
Wire Wire Line
	6750 3400 8000 3400
Wire Wire Line
	7300 2100 6750 2100
Connection ~ 6750 2100
Wire Wire Line
	7300 1600 6750 1600
Connection ~ 6750 1600
Wire Wire Line
	6750 1600 6750 2100
Wire Wire Line
	6750 1100 7300 1100
Text GLabel 8700 2200 2    50   Output ~ 0
PWM_Servo_X
Text GLabel 8700 2300 2    50   Output ~ 0
PWM_Servo_Z
Text GLabel 8700 1500 2    50   Input ~ 0
V_BAT_Sense
Wire Wire Line
	8700 1700 8850 1700
Wire Wire Line
	8850 1700 8850 1600
Connection ~ 8850 1600
Wire Wire Line
	8850 1600 9300 1600
Text Notes 9400 1800 0    50   ~ 0
ADC Connections:\n0:\n1: Ground reference\n2: Battery voltage divider\n3: (Internal) Temperature Sensor 
$Comp
L Device:D_Schottky D?
U 1 1 6070DD54
P 9000 1000
F 0 "D?" H 9000 1217 50  0000 C CNN
F 1 "D_Schottky" H 9000 1126 50  0000 C CNN
F 2 "" H 9000 1000 50  0001 C CNN
F 3 "~" H 9000 1000 50  0001 C CNN
	1    9000 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1000 8700 1000
$Comp
L power:+3.3V #PWR?
U 1 1 6071506B
P 9300 1000
F 0 "#PWR?" H 9300 850 50  0001 C CNN
F 1 "+3.3V" H 9315 1173 50  0000 C CNN
F 2 "" H 9300 1000 50  0001 C CNN
F 3 "" H 9300 1000 50  0001 C CNN
	1    9300 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1000 9150 1000
$Comp
L MCU_RaspberryPi_and_Boards:Pico U?
U 1 1 606ADA4C
P 8000 1850
F 0 "U?" H 8000 3065 50  0000 C CNN
F 1 "Pico" H 8000 2974 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_SMD_TH" V 8000 1850 50  0001 C CNN
F 3 "" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
NoConn ~ 8700 1900
Wire Wire Line
	850  5300 1600 5300
$Comp
L power:+BATT #PWR?
U 1 1 606043B3
P 850 2200
F 0 "#PWR?" H 850 2050 50  0001 C CNN
F 1 "+BATT" H 865 2373 50  0000 C CNN
F 2 "" H 850 2200 50  0001 C CNN
F 3 "" H 850 2200 50  0001 C CNN
	1    850  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2200 1000 2200
Text GLabel 2300 3150 2    50   Input ~ 0
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
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60656F11
P 2050 3500
F 0 "Q?" H 2254 3546 50  0000 L CNN
F 1 "IRF540N" H 2254 3455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2300 3425 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 2050 3500 50  0001 L CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
Text GLabel 1350 3500 0    50   Input ~ 0
Servo_EN
Wire Wire Line
	2300 3150 2150 3150
Wire Wire Line
	2150 3150 2150 3300
$Comp
L Device:R R?
U 1 1 60701305
P 1500 3500
F 0 "R?" V 1293 3500 50  0000 C CNN
F 1 "220" V 1384 3500 50  0000 C CNN
F 2 "" V 1430 3500 50  0001 C CNN
F 3 "~" H 1500 3500 50  0001 C CNN
	1    1500 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6070AA6F
P 1750 3650
F 0 "R?" H 1680 3604 50  0000 R CNN
F 1 "2.2k" H 1680 3695 50  0000 R CNN
F 2 "" V 1680 3650 50  0001 C CNN
F 3 "~" H 1750 3650 50  0001 C CNN
	1    1750 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 3500 1750 3500
Connection ~ 1750 3500
Wire Wire Line
	1750 3500 1850 3500
$Comp
L power:GND #PWR?
U 1 1 60717E31
P 1950 3800
F 0 "#PWR?" H 1950 3550 50  0001 C CNN
F 1 "GND" H 1955 3627 50  0000 C CNN
F 2 "" H 1950 3800 50  0001 C CNN
F 3 "" H 1950 3800 50  0001 C CNN
	1    1950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3700 2150 3800
Wire Wire Line
	2150 3800 1950 3800
Connection ~ 1950 3800
Wire Wire Line
	1950 3800 1750 3800
Text GLabel 8700 2000 2    50   Output ~ 0
Servo_EN
$Comp
L Switch:SW_SPDT SW?
U 1 1 607AE6CD
P 1250 4700
F 0 "SW?" H 1250 4375 50  0000 C CNN
F 1 "SW_PWR" H 1250 4466 50  0000 C CNN
F 2 "" H 1250 4700 50  0001 C CNN
F 3 "~" H 1250 4700 50  0001 C CNN
	1    1250 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 4700 1600 4700
Wire Wire Line
	850  4600 1050 4600
Text GLabel 4300 1750 0    50   Output ~ 0
Servo_GND
Text GLabel 4300 1650 0    50   Input ~ 0
Servo_Z_VCC
Text GLabel 4300 1550 0    50   Input ~ 0
PWM_Servo_Z
Text GLabel 4300 1100 0    50   Input ~ 0
Servo_X_VCC
Wire Notes Line
	3700 700  4950 700 
Wire Notes Line
	4950 700  4950 1900
Wire Notes Line
	4950 1900 3700 1900
Wire Notes Line
	3700 1900 3700 700 
Text Notes 3700 700  0    50   ~ 0
Servo Connections\n
Text Notes 2250 3800 0    50   ~ 0
Mosfet allows servos\nto be depowered
Text GLabel 7300 1400 0    50   Output ~ 0
I2C0_SDA
Text GLabel 7300 1500 0    50   Output ~ 0
I2C0_SCL
Text GLabel 8700 2400 2    50   Output ~ 0
SPI0_TX
Text GLabel 8700 2500 2    50   Output ~ 0
SPI0_SCK
Text GLabel 8700 2800 2    50   Output ~ 0
SPI0_RX
Text GLabel 7300 2800 0    50   Input ~ 0
ARM
Text Notes 8700 2700 0    50   ~ 0
SPI0_CSn for slave mode\n
$Comp
L Motor:Motor_Servo_JR M?
U 1 1 606633E9
P 4600 1650
F 0 "M?" H 4400 1950 50  0000 L CNN
F 1 "Servo Y" H 4400 1850 50  0000 L CNN
F 2 "" H 4600 1460 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4600 1460 50  0001 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo_JR M?
U 1 1 606668F8
P 4600 1100
F 0 "M?" H 4400 1400 50  0000 L CNN
F 1 "Servo X" H 4400 1300 50  0000 L CNN
F 2 "" H 4600 910 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4600 910 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
Text GLabel 4300 1200 0    50   Output ~ 0
Servo_GND
Text GLabel 4300 1000 0    50   Input ~ 0
PWM_Servo_X
NoConn ~ 1050 4800
Wire Wire Line
	7700 5250 7500 5250
Connection ~ 7700 5250
Wire Wire Line
	7900 5250 7700 5250
Wire Wire Line
	7900 5150 7900 5250
$Comp
L power:GND #PWR?
U 1 1 60808FBC
P 7700 5250
F 0 "#PWR?" H 7700 5000 50  0001 C CNN
F 1 "GND" H 7705 5077 50  0000 C CNN
F 2 "" H 7700 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4950 7600 4950
Connection ~ 7500 4950
Wire Wire Line
	7400 4950 7500 4950
$Comp
L Device:R R?
U 1 1 60808FB3
P 7500 5100
F 0 "R?" H 7430 5054 50  0000 R CNN
F 1 "2.2k" H 7430 5145 50  0000 R CNN
F 2 "" V 7430 5100 50  0001 C CNN
F 3 "~" H 7500 5100 50  0001 C CNN
	1    7500 5100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60808FAD
P 7250 4950
F 0 "R?" V 7043 4950 50  0000 C CNN
F 1 "220" V 7134 4950 50  0000 C CNN
F 2 "" V 7180 4950 50  0001 C CNN
F 3 "~" H 7250 4950 50  0001 C CNN
	1    7250 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4600 7900 4750
Text GLabel 7100 4950 0    50   Input ~ 0
Buzzer_EN
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 60808FA5
P 7800 4950
F 0 "Q?" H 8004 4996 50  0000 L CNN
F 1 "IRF540N" H 8004 4905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 8050 4875 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 7800 4950 50  0001 L CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4650 6200 4700
$Comp
L SparkFun-Electromechanical:BUZZER-PTH LS?
U 1 1 6065A952
P 6300 4550
F 0 "LS?" H 6100 5000 45  0000 L CNN
F 1 "Mini Speaker" H 6100 4900 45  0000 L CNN
F 2 "BUZZER-12MM" H 6300 4850 20  0001 C CNN
F 3 "" H 6300 4550 50  0001 C CNN
F 4 "COMP-08253" H 6100 4800 60  0000 L CNN "Field4"
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4650 6300 4650
Text GLabel 6200 4700 3    50   Input ~ 0
PWM_Buzzer
$Comp
L power:GND #PWR?
U 1 1 6079E7DB
P 6400 4650
F 0 "#PWR?" H 6400 4400 50  0001 C CNN
F 1 "GND" H 6405 4477 50  0000 C CNN
F 2 "" H 6400 4650 50  0001 C CNN
F 3 "" H 6400 4650 50  0001 C CNN
	1    6400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6079E177
P 8100 4600
F 0 "#PWR?" H 8100 4350 50  0001 C CNN
F 1 "GND" H 8105 4427 50  0000 C CNN
F 2 "" H 8100 4600 50  0001 C CNN
F 3 "" H 8100 4600 50  0001 C CNN
	1    8100 4600
	1    0    0    -1  
$EndComp
Wire Notes Line
	6050 5500 6050 4000
Wire Notes Line
	8400 5500 6050 5500
Wire Notes Line
	8400 4000 8400 5500
Wire Notes Line
	6050 4000 8400 4000
$Comp
L Device:Buzzer BZ?
U 1 1 606D194C
P 8000 4500
F 0 "BZ?" V 8400 4650 50  0000 R CNN
F 1 "Alarm Buzzer" V 8300 4650 50  0000 R CNN
F 2 "" V 7975 4600 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/CE-C75.pdf" V 7975 4600 50  0001 C CNN
F 4 " COM-13940" V 8200 4700 50  0000 R CNN "Field4"
	1    8000 4500
	0    -1   -1   0   
$EndComp
Text Notes 6050 4000 0    50   ~ 0
Human Interfacing\n
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 6098096A
P 3150 4650
F 0 "J?" H 3200 4850 50  0000 C CNN
F 1 "I2C Breakout" V 3100 4600 50  0000 C CNN
F 2 "" H 3150 4650 50  0001 C CNN
F 3 "~" H 3150 4650 50  0001 C CNN
	1    3150 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60984261
P 4150 4700
F 0 "J?" H 4200 5000 50  0000 C CNN
F 1 "SPI Breakout" V 4100 4700 50  0000 C CNN
F 2 "" H 4150 4700 50  0001 C CNN
F 3 "~" H 4150 4700 50  0001 C CNN
	1    4150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60993879
P 3450 4850
F 0 "#PWR?" H 3450 4600 50  0001 C CNN
F 1 "GND" H 3455 4677 50  0000 C CNN
F 2 "" H 3450 4850 50  0001 C CNN
F 3 "" H 3450 4850 50  0001 C CNN
	1    3450 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6099A076
P 4450 4900
F 0 "#PWR?" H 4450 4650 50  0001 C CNN
F 1 "GND" H 4455 4727 50  0000 C CNN
F 2 "" H 4450 4900 50  0001 C CNN
F 3 "" H 4450 4900 50  0001 C CNN
	1    4450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4900 4350 4900
Wire Wire Line
	3450 4850 3350 4850
$Comp
L power:+3.3V #PWR?
U 1 1 609D3FA8
P 3450 4550
F 0 "#PWR?" H 3450 4400 50  0001 C CNN
F 1 "+3.3V" H 3465 4723 50  0000 C CNN
F 2 "" H 3450 4550 50  0001 C CNN
F 3 "" H 3450 4550 50  0001 C CNN
	1    3450 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 609D610B
P 4450 4500
F 0 "#PWR?" H 4450 4350 50  0001 C CNN
F 1 "+3.3V" H 4465 4673 50  0000 C CNN
F 2 "" H 4450 4500 50  0001 C CNN
F 3 "" H 4450 4500 50  0001 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4500 4350 4500
Wire Wire Line
	3450 4550 3350 4550
Text GLabel 3350 4650 2    50   Input ~ 0
I2C0_SDA
Text GLabel 3350 4750 2    50   Input ~ 0
I2C0_SCL
Text GLabel 4350 4700 2    50   Input ~ 0
SPI0_TX
Text GLabel 4350 4800 2    50   Input ~ 0
SPI0_SCK
Text GLabel 4350 4600 2    50   Input ~ 0
SPI0_RX
Wire Notes Line
	3000 4250 5850 4250
Wire Notes Line
	5850 4250 5850 5150
Wire Notes Line
	5850 5150 3000 5150
Text Notes 3000 4250 0    50   ~ 0
Development Bus Breakouts\n
Wire Notes Line
	3000 5150 3000 4250
Wire Wire Line
	3950 2550 3850 2550
$Comp
L power:GND #PWR?
U 1 1 607E8F6E
P 3850 2550
F 0 "#PWR?" H 3850 2300 50  0001 C CNN
F 1 "GND" H 3855 2377 50  0000 C CNN
F 2 "" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Text GLabel 4450 2450 2    50   Output ~ 0
ARM
Wire Wire Line
	4350 2450 4450 2450
$Comp
L Switch:SW_SPDT SW?
U 1 1 607C182A
P 4150 2450
F 0 "SW?" H 4150 2125 50  0000 C CNN
F 1 "SW_ARM" H 4150 2216 50  0000 C CNN
F 2 "" H 4150 2450 50  0001 C CNN
F 3 "~" H 4150 2450 50  0001 C CNN
	1    4150 2450
	-1   0    0    1   
$EndComp
Wire Notes Line
	3700 2050 4700 2050
Wire Notes Line
	3700 2800 3700 2050
Wire Notes Line
	4700 2800 3700 2800
Wire Notes Line
	4700 2050 4700 2800
Text Notes 3700 2050 0    50   ~ 0
Avionics Arming
Wire Wire Line
	3850 2350 3950 2350
$Comp
L power:+3.3V #PWR?
U 1 1 60755D31
P 3850 2350
F 0 "#PWR?" H 3850 2200 50  0001 C CNN
F 1 "+3.3V" H 3865 2523 50  0000 C CNN
F 2 "" H 3850 2350 50  0001 C CNN
F 3 "" H 3850 2350 50  0001 C CNN
	1    3850 2350
	1    0    0    -1  
$EndComp
Text GLabel 7300 2700 0    50   Output ~ 0
Buzzer_EN
Text GLabel 7300 2500 0    50   Output ~ 0
PWM_Buzzer
Wire Wire Line
	7300 2600 6750 2600
Text GLabel 7900 3000 3    50   Output ~ 0
SWD_CLK
Text GLabel 8100 3000 3    50   Output ~ 0
SWD_IO
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 609F89C0
P 5050 4700
F 0 "J?" H 5100 4900 50  0000 C CNN
F 1 "SWD Breakout" V 5000 4700 50  0000 C CNN
F 2 "" H 5050 4700 50  0001 C CNN
F 3 "~" H 5050 4700 50  0001 C CNN
	1    5050 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A06D1F
P 5750 4700
F 0 "#PWR?" H 5750 4450 50  0001 C CNN
F 1 "GND" H 5755 4527 50  0000 C CNN
F 2 "" H 5750 4700 50  0001 C CNN
F 3 "" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4700 5250 4700
Text GLabel 5250 4800 2    50   Input ~ 0
SWD_CLK
Text GLabel 5250 4600 2    50   Input ~ 0
SWD_IO
Wire Wire Line
	6750 2100 6750 2600
Wire Wire Line
	6750 2600 6750 3400
Connection ~ 6750 2600
$EndSCHEMATC
