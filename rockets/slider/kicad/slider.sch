EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L power:+3.3V #PWR010
U 1 1 605FB813
P 1650 5850
F 0 "#PWR010" H 1650 5700 50  0001 C CNN
F 1 "+3.3V" H 1665 6023 50  0000 C CNN
F 2 "" H 1650 5850 50  0001 C CNN
F 3 "" H 1650 5850 50  0001 C CNN
	1    1650 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 605FE7E6
P 1700 2950
F 0 "#PWR06" H 1700 2700 50  0001 C CNN
F 1 "GND" H 1705 2777 50  0000 C CNN
F 2 "" H 1700 2950 50  0001 C CNN
F 3 "" H 1700 2950 50  0001 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
Text GLabel 1950 2350 2    50   Output ~ 0
Servo_Z_VCC
Text Notes 700  700  0    50   ~ 0
Servo Power
$Comp
L power:GND #PWR09
U 1 1 6060C0AC
P 1900 5150
F 0 "#PWR09" H 1900 4900 50  0001 C CNN
F 1 "GND" H 1905 4977 50  0000 C CNN
F 2 "" H 1900 5150 50  0001 C CNN
F 3 "" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1085-3.3 U1
U 1 1 6061A8AF
P 1250 5850
F 0 "U1" H 1250 6092 50  0000 C CNN
F 1 "LM1086-3.3" H 1250 6001 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1250 6100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm1086.pdf" H 1250 5850 50  0001 C CNN
	1    1250 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6061B465
P 1650 6450
F 0 "#PWR04" H 1650 6200 50  0001 C CNN
F 1 "GND" H 1655 6277 50  0000 C CNN
F 2 "" H 1650 6450 50  0001 C CNN
F 3 "" H 1650 6450 50  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR03
U 1 1 6061EE14
P 850 5800
F 0 "#PWR03" H 850 5650 50  0001 C CNN
F 1 "+BATT" H 865 5973 50  0000 C CNN
F 2 "" H 850 5800 50  0001 C CNN
F 3 "" H 850 5800 50  0001 C CNN
	1    850  5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5850 850  5850
Wire Wire Line
	850  5850 850  5800
Text Notes 700  5550 0    50   ~ 0
uC System Power
$Comp
L Device:Battery BT1
U 1 1 6062F0FB
P 1050 5150
F 0 "BT1" V 1000 4900 50  0000 L CNN
F 1 "Battery" V 900 5000 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" V 1050 5210 50  0001 C CNN
F 3 "~" V 1050 5210 50  0001 C CNN
	1    1050 5150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 606419A1
P 1900 4700
F 0 "D1" V 1939 4582 50  0000 R CNN
F 1 "LED (RED)" V 1848 4582 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 1900 4700 50  0001 C CNN
F 3 "~" H 1900 4700 50  0001 C CNN
	1    1900 4700
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 60668A2B
P 1700 2650
F 0 "C3" H 1818 2696 50  0000 L CNN
F 1 "100uF" H 1818 2605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1738 2500 50  0001 C CNN
F 3 "~" H 1700 2650 50  0001 C CNN
	1    1700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2350 1700 2350
Connection ~ 1700 2350
$Comp
L Device:R R3
U 1 1 606956D3
P 1900 5000
F 0 "R3" H 1830 4954 50  0000 R CNN
F 1 "220" H 1830 5045 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1830 5000 50  0001 C CNN
F 3 "~" H 1900 5000 50  0001 C CNN
	1    1900 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 6450 1250 6150
Connection ~ 1700 2950
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U3
U 1 1 605FB24E
P 1300 2350
F 0 "U3" H 1300 2637 60  0000 C CNN
F 1 "L7805CV" H 1300 2531 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1500 2550 60  0001 L CNN
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
L Device:CP C1
U 1 1 6071E0AB
P 1650 6150
F 0 "C1" H 1768 6196 50  0000 L CNN
F 1 "47uF" H 1768 6105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1688 6000 50  0001 C CNN
F 3 "~" H 1650 6150 50  0001 C CNN
	1    1650 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6450 1650 6450
Wire Wire Line
	1650 6300 1650 6450
Connection ~ 1650 6450
Wire Wire Line
	1550 5850 1650 5850
Wire Wire Line
	1650 5850 1650 6000
Wire Notes Line
	700  700  3100 700 
Wire Notes Line
	700  5550 700  6700
Wire Notes Line
	2050 6700 2050 5550
$Comp
L Device:R R8
U 1 1 60606E28
P 2500 5000
F 0 "R8" H 2570 5046 50  0000 L CNN
F 1 "100k" H 2570 4955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2430 5000 50  0001 C CNN
F 3 "~" H 2500 5000 50  0001 C CNN
	1    2500 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60607363
P 2500 4700
F 0 "R7" H 2570 4746 50  0000 L CNN
F 1 "220k" H 2570 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2430 4700 50  0001 C CNN
F 3 "~" H 2500 4700 50  0001 C CNN
	1    2500 4700
	1    0    0    -1  
$EndComp
Connection ~ 1650 5850
Wire Wire Line
	1900 5150 2500 5150
Connection ~ 1900 5150
Wire Wire Line
	2500 4550 1900 4550
Connection ~ 1900 4550
Text GLabel 2550 4850 2    50   Output ~ 0
V_BAT_Sense
Wire Wire Line
	2500 4850 2550 4850
Connection ~ 2500 4850
Text Notes 700  4350 0    50   ~ 0
Battery Input\n
Wire Notes Line
	700  4350 3100 4350
Wire Notes Line
	3100 4350 3100 5400
Wire Notes Line
	700  4350 700  5400
Wire Notes Line
	3100 5400 700  5400
Wire Notes Line
	700  5550 2050 5550
Wire Notes Line
	2050 6700 700  6700
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
L power:GND #PWR022
U 1 1 606B9AD8
P 8450 3100
F 0 "#PWR022" H 8450 2850 50  0001 C CNN
F 1 "GND" H 8455 2927 50  0000 C CNN
F 2 "" H 8450 3100 50  0001 C CNN
F 3 "" H 8450 3100 50  0001 C CNN
	1    8450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3100 9750 2600
Wire Wire Line
	9750 2600 9150 2600
Wire Wire Line
	9150 2100 9750 2100
Wire Wire Line
	9750 2100 9750 2600
Connection ~ 9750 2600
Wire Wire Line
	9750 1600 9750 1700
Connection ~ 9750 2100
Wire Wire Line
	9150 1100 9750 1100
Wire Wire Line
	9750 1100 9750 1600
Connection ~ 9750 1600
Wire Wire Line
	7200 1100 7200 1600
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
Text Notes 9850 1800 0    50   ~ 0
ADC Connections:\n3: (Internal) Temperature Sensor\n2: Battery voltage divider\n1: Ground reference\n0:
$Comp
L power:+3.3V #PWR023
U 1 1 6071506B
P 10050 1000
F 0 "#PWR023" H 10050 850 50  0001 C CNN
F 1 "+3.3V" H 10065 1173 50  0000 C CNN
F 2 "" H 10050 1000 50  0001 C CNN
F 3 "" H 10050 1000 50  0001 C CNN
	1    10050 1000
	1    0    0    -1  
$EndComp
$Comp
L MCU_RaspberryPi_and_Boards:Pico_PerfBoard U4
U 1 1 606ADA4C
P 8450 1850
F 0 "U4" H 8450 3065 50  0000 C CNN
F 1 "Pico" H 8450 2974 50  0000 C CNN
F 2 "RPi_Pico:RPi_Pico_TH_Perfboard" V 8450 1850 50  0001 C CNN
F 3 "" H 8450 1850 50  0001 C CNN
	1    8450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  5150 850  5150
$Comp
L power:+BATT #PWR02
U 1 1 606043B3
P 850 2350
F 0 "#PWR02" H 850 2200 50  0001 C CNN
F 1 "+BATT" H 865 2523 50  0000 C CNN
F 2 "" H 850 2350 50  0001 C CNN
F 3 "" H 850 2350 50  0001 C CNN
	1    850  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2350 1000 2350
Wire Wire Line
	850  1100 1000 1100
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
$Comp
L Device:CP C2
U 1 1 6065FD17
P 1700 1400
F 0 "C2" H 1818 1446 50  0000 L CNN
F 1 "100uF" H 1818 1355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1738 1250 50  0001 C CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Text GLabel 1950 1100 2    50   Output ~ 0
Servo_X_VCC
$Comp
L power:GND #PWR05
U 1 1 605FE0FD
P 1700 1700
F 0 "#PWR05" H 1700 1450 50  0001 C CNN
F 1 "GND" H 1705 1527 50  0000 C CNN
F 2 "" H 1700 1700 50  0001 C CNN
F 3 "" H 1700 1700 50  0001 C CNN
	1    1700 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR01
U 1 1 605FD1D5
P 850 1100
F 0 "#PWR01" H 850 950 50  0001 C CNN
F 1 "+BATT" H 865 1273 50  0000 C CNN
F 2 "" H 850 1100 50  0001 C CNN
F 3 "" H 850 1100 50  0001 C CNN
	1    850  1100
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV U2
U 1 1 605FABFC
P 1300 1100
F 0 "U2" H 1300 1387 60  0000 C CNN
F 1 "L7805CV" H 1300 1281 60  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1500 1300 60  0001 L CNN
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
Text GLabel 9150 2000 2    50   Output ~ 0
Servo_EN
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
Text GLabel 7750 1400 0    50   BiDi ~ 0
I2C0_SDA
Text GLabel 7750 1500 0    50   Output ~ 0
I2C0_SCL
Text GLabel 9150 2400 2    50   Output ~ 0
SPI0_TX
Text GLabel 9150 2500 2    50   Output ~ 0
SPI0_SCK
Text GLabel 9150 2800 2    50   Input ~ 0
SPI0_RX
Text GLabel 7750 2800 0    50   Input ~ 0
ARM
$Comp
L Motor:Motor_Servo_JR M2
U 1 1 606633E9
P 4100 4450
F 0 "M2" H 3900 4750 50  0000 L CNN
F 1 "Servo Y" H 3900 4650 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 4260 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 4260 50  0001 C CNN
	1    4100 4450
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo_JR M1
U 1 1 606668F8
P 4100 3800
F 0 "M1" H 3900 4100 50  0000 L CNN
F 1 "Servo X" H 3900 4000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 3610 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 3610 50  0001 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Text GLabel 3800 3900 0    50   Output ~ 0
Servo_GND
Text GLabel 3800 3700 0    50   Input ~ 0
PWM_Servo_X
Wire Wire Line
	4250 2900 4250 3000
$Comp
L power:GND #PWR014
U 1 1 60808FBC
P 4250 3000
F 0 "#PWR014" H 4250 2750 50  0001 C CNN
F 1 "GND" H 4255 2827 50  0000 C CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 60808FB3
P 3850 2450
F 0 "R10" H 3780 2404 50  0000 R CNN
F 1 "2.2k" H 3780 2495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3780 2450 50  0001 C CNN
F 3 "~" H 3850 2450 50  0001 C CNN
	1    3850 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 60808FAD
P 3600 2700
F 0 "R9" V 3393 2700 50  0000 C CNN
F 1 "220" V 3484 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3530 2700 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2350 4250 2500
Text GLabel 3300 2300 2    50   Input ~ 0
Alarm_EN
$Comp
L Transistor_FET:IRF540N Q2
U 1 1 60808FA5
P 4150 2700
F 0 "Q2" H 4354 2746 50  0000 L CNN
F 1 "IRF540N" H 4354 2655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4400 2625 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4150 2700 50  0001 L CNN
	1    4150 2700
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Electromechanical:BUZZER-PTH LS1
U 1 1 6065A952
P 5000 2400
F 0 "LS1" H 4800 2850 45  0000 L CNN
F 1 "Mini Speaker" H 4800 2750 45  0000 L CNN
F 2 "Sparkfun Electromechanical:BUZZER-12MM" H 5000 2700 20  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
F 4 "COMP-08253" H 4800 2650 60  0000 L CNN "Field4"
	1    5000 2400
	1    0    0    -1  
$EndComp
Text GLabel 5000 2500 3    50   Input ~ 0
PWM_Buzzer
$Comp
L power:GND #PWR020
U 1 1 6079E7DB
P 5100 2500
F 0 "#PWR020" H 5100 2250 50  0001 C CNN
F 1 "GND" H 5150 2350 50  0000 C CNN
F 2 "" H 5100 2500 50  0001 C CNN
F 3 "" H 5100 2500 50  0001 C CNN
	1    5100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6079E177
P 4450 2350
F 0 "#PWR015" H 4450 2100 50  0001 C CNN
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
L Device:Buzzer BZ1
U 1 1 606D194C
P 4350 2250
F 0 "BZ1" V 4750 2400 50  0000 R CNN
F 1 "Alarm Buzzer" V 4650 2400 50  0000 R CNN
F 2 "slider:CE-C75-Piezo-Alarm" V 4325 2350 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/CE-C75.pdf" V 4325 2350 50  0001 C CNN
F 4 " COM-13940" V 4550 2450 50  0000 R CNN "Field4"
	1    4350 2250
	0    -1   -1   0   
$EndComp
Text Notes 3200 1750 0    50   ~ 0
Human Interfacing\n
Text GLabel 7750 2700 0    50   Output ~ 0
Alarm_EN
Text GLabel 7750 2500 0    50   Output ~ 0
PWM_Buzzer
Wire Wire Line
	7750 2600 7200 2600
Wire Wire Line
	7200 2100 7200 2600
Wire Wire Line
	7200 2600 7200 3100
Connection ~ 7200 2600
$Comp
L power:+3.3V #PWR013
U 1 1 6061EF8C
P 3850 2300
F 0 "#PWR013" H 3850 2150 50  0001 C CNN
F 1 "+3.3V" H 3865 2473 50  0000 C CNN
F 2 "" H 3850 2300 50  0001 C CNN
F 3 "" H 3850 2300 50  0001 C CNN
	1    3850 2300
	1    0    0    -1  
$EndComp
NoConn ~ 9150 1300
Wire Notes Line
	3100 1950 700  1950
Wire Notes Line
	700  3200 3100 3200
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
Text Notes 750  3150 0    50   ~ 0
L7805CV\nMin: +2v = 7v\nMax: 35v
Text Notes 750  6650 0    50   ~ 0
LM1086-3.3\nMin: +1.5v = 4.8v\nMax: +27v = 30.3v
Text Notes 750  1900 0    50   ~ 0
L7805CV\nMin: +2v = 7v\nMax: 35v
Text Notes 800  5050 0    50   ~ 0
Min: 7v (L785CV)\nMax: 30.3v (LM1086-3.3)
$Comp
L power:+BATT #PWR08
U 1 1 606325C1
P 1900 4550
F 0 "#PWR08" H 1900 4400 50  0001 C CNN
F 1 "+BATT" H 2050 4650 50  0000 C CNN
F 2 "" H 1900 4550 50  0001 C CNN
F 3 "" H 1900 4550 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4650 750  5150
Wire Wire Line
	750  4650 1050 4650
NoConn ~ 9150 1800
NoConn ~ 7750 2400
NoConn ~ 7750 2000
NoConn ~ 7750 1900
NoConn ~ 7750 1800
NoConn ~ 7750 1700
NoConn ~ 7750 1300
NoConn ~ 7750 1200
NoConn ~ 7750 1000
NoConn ~ 7750 900 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60838EDE
P 2500 4550
F 0 "#FLG0101" H 2500 4625 50  0001 C CNN
F 1 "PWR_FLAG" H 2550 4650 50  0000 L CNN
F 2 "" H 2500 4550 50  0001 C CNN
F 3 "~" H 2500 4550 50  0001 C CNN
	1    2500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60839F94
P 2500 5150
F 0 "#FLG0102" H 2500 5225 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 5300 50  0000 L CNN
F 2 "" H 2500 5150 50  0001 C CNN
F 3 "~" H 2500 5150 50  0001 C CNN
	1    2500 5150
	-1   0    0    1   
$EndComp
Connection ~ 2500 4550
Wire Wire Line
	1450 4550 1900 4550
Connection ~ 2500 5150
Wire Wire Line
	1250 5150 1900 5150
$Comp
L Device:Net-Tie_2 NT1
U 1 1 608A8144
P 9400 1700
F 0 "NT1" H 9450 1650 50  0000 C CNN
F 1 "ADC Ground Reference" H 9350 1750 31  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 9400 1700 50  0001 C CNN
F 3 "~" H 9400 1700 50  0001 C CNN
	1    9400 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9150 1600 9750 1600
Wire Wire Line
	9500 1700 9750 1700
Connection ~ 9750 1700
Wire Wire Line
	9750 1700 9750 2100
Wire Wire Line
	10050 1000 9900 1000
$Comp
L Device:D_Schottky D5
U 1 1 6070DD54
P 9750 1000
F 0 "D5" H 9750 1217 50  0000 C CNN
F 1 "D_Schottky" H 9750 1126 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9750 1000 50  0001 C CNN
F 3 "~" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1000 9150 1000
Wire Wire Line
	9600 1000 9350 1000
Connection ~ 9350 1000
$Comp
L dk_Tactile-Switches:1825910-6 S1
U 1 1 60936469
P 5000 4750
F 0 "S1" H 5000 5097 60  0000 C CNN
F 1 "1825910-6" H 5000 4991 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 5200 4950 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 5200 5050 60  0001 L CNN
F 4 "450-1650-ND" H 5200 5150 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-6" H 5200 5250 60  0001 L CNN "MPN"
F 6 "Switches" H 5200 5350 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 5200 5450 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 5200 5550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 5200 5650 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 5200 5750 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 5200 5850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5200 5950 60  0001 L CNN "Status"
	1    5000 4750
	1    0    0    -1  
$EndComp
Text Notes 4550 4300 0    50   ~ 0
uC Reset
Text GLabel 9150 1900 2    50   Input ~ 0
RUN
Text GLabel 5350 4750 2    50   Input ~ 0
RUN
Wire Wire Line
	5200 4650 5250 4650
Wire Wire Line
	5250 4650 5250 4750
Wire Wire Line
	5250 4850 5200 4850
Wire Wire Line
	5250 4750 5350 4750
Connection ~ 5250 4750
Wire Wire Line
	5250 4750 5250 4850
Wire Wire Line
	4800 4650 4750 4650
Wire Wire Line
	4750 4650 4750 4750
Wire Wire Line
	4750 4850 4800 4850
Wire Wire Line
	4750 4750 4650 4750
Connection ~ 4750 4750
Wire Wire Line
	4750 4750 4750 4850
$Comp
L power:GND #PWR024
U 1 1 60965511
P 4650 4750
F 0 "#PWR024" H 4650 4500 50  0001 C CNN
F 1 "GND" H 4655 4577 50  0000 C CNN
F 2 "" H 4650 4750 50  0001 C CNN
F 3 "" H 4650 4750 50  0001 C CNN
	1    4650 4750
	1    0    0    -1  
$EndComp
Wire Notes Line
	4550 4300 5600 4300
Wire Notes Line
	5600 4300 5600 5000
Wire Notes Line
	5600 5000 4550 5000
Wire Notes Line
	4550 5000 4550 4300
Wire Wire Line
	1950 3300 2050 3300
Wire Wire Line
	1950 3450 1950 3300
$Comp
L Transistor_FET:IRF540N Q1
U 1 1 60656F11
P 1850 3650
F 0 "Q1" H 2054 3696 50  0000 L CNN
F 1 "IRF540N" H 2054 3605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2100 3575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 1850 3650 50  0001 L CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
Text Notes 2050 3950 0    50   ~ 0
Mosfet allows servos\nto be depowered
Wire Wire Line
	1750 3950 1550 3950
Connection ~ 1750 3950
Wire Wire Line
	1950 3950 1750 3950
$Comp
L power:GND #PWR07
U 1 1 60717E31
P 1750 3950
F 0 "#PWR07" H 1750 3700 50  0001 C CNN
F 1 "GND" H 1755 3777 50  0000 C CNN
F 2 "" H 1750 3950 50  0001 C CNN
F 3 "" H 1750 3950 50  0001 C CNN
	1    1750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3650 1650 3650
Connection ~ 1550 3650
Wire Wire Line
	1450 3650 1550 3650
$Comp
L Device:R R2
U 1 1 6070AA6F
P 1550 3800
F 0 "R2" H 1480 3754 50  0000 R CNN
F 1 "2.2k" H 1480 3845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 3800 50  0001 C CNN
F 3 "~" H 1550 3800 50  0001 C CNN
	1    1550 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 60701305
P 1300 3650
F 0 "R1" V 1093 3650 50  0000 C CNN
F 1 "220" V 1184 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1230 3650 50  0001 C CNN
F 3 "~" H 1300 3650 50  0001 C CNN
	1    1300 3650
	0    1    1    0   
$EndComp
Text GLabel 1150 3650 0    50   Input ~ 0
Servo_EN
Text GLabel 2050 3300 2    50   Input ~ 0
Servo_GND
$Comp
L Transistor_FET:IRF540N Q3
U 1 1 607F5BD2
P 3800 6300
F 0 "Q3" H 4004 6346 50  0000 L CNN
F 1 "IRF540N" H 4004 6255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4050 6225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 3800 6300 50  0001 L CNN
	1    3800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6500 3900 6600
Text Notes 4100 5750 0    50   ~ 10
UUH, maybe some\ncurrent limiting?
Wire Wire Line
	3900 6600 3500 6600
Connection ~ 3900 6600
Wire Wire Line
	3500 6300 3600 6300
Connection ~ 3500 6300
Wire Wire Line
	3400 6300 3500 6300
$Comp
L Device:R R12
U 1 1 607F5BE6
P 3500 6450
F 0 "R12" H 3430 6404 50  0000 R CNN
F 1 "2.2k" H 3430 6495 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3430 6450 50  0001 C CNN
F 3 "~" H 3500 6450 50  0001 C CNN
	1    3500 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 607F5BEC
P 3250 6300
F 0 "R11" V 3043 6300 50  0000 C CNN
F 1 "220" V 3134 6300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3180 6300 50  0001 C CNN
F 3 "~" H 3250 6300 50  0001 C CNN
	1    3250 6300
	0    1    1    0   
$EndComp
Text GLabel 3100 6300 0    50   Input ~ 0
Pyro_1
Wire Notes Line
	2750 5550 2750 6850
Wire Notes Line
	2750 6850 5050 6850
Wire Notes Line
	5050 6850 5050 5550
Wire Notes Line
	5050 5550 2750 5550
Text Notes 2750 5550 0    50   ~ 0
Pyro Channels
$Comp
L Device:R R14
U 1 1 60889065
P 4450 6450
F 0 "R14" H 4520 6496 50  0000 L CNN
F 1 "100k" H 4520 6405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 6450 50  0001 C CNN
F 3 "~" H 4450 6450 50  0001 C CNN
	1    4450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6088906B
P 4450 6150
F 0 "R13" H 4520 6196 50  0000 L CNN
F 1 "220k" H 4520 6105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4380 6150 50  0001 C CNN
F 3 "~" H 4450 6150 50  0001 C CNN
	1    4450 6150
	1    0    0    -1  
$EndComp
Text GLabel 4500 6300 2    50   Output ~ 0
Pyro_1_Cont
Wire Wire Line
	4450 6300 4500 6300
Connection ~ 4450 6300
Wire Wire Line
	3900 5950 4450 5950
Wire Wire Line
	4450 5950 4450 6000
Text GLabel 7750 2300 0    50   Input ~ 0
Pyro_1_Cont
Text GLabel 7750 2200 0    50   Output ~ 0
Pyro_1
Text Notes 6450 2300 0    50   ~ 0
Subject to change\nTODO:
Wire Wire Line
	3900 5950 3900 6100
Wire Wire Line
	4450 6600 3900 6600
$Comp
L power:GND #PWR025
U 1 1 607F5BDD
P 3900 6600
F 0 "#PWR025" H 3900 6350 50  0001 C CNN
F 1 "GND" H 3905 6427 50  0000 C CNN
F 2 "" H 3900 6600 50  0001 C CNN
F 3 "" H 3900 6600 50  0001 C CNN
	1    3900 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR026
U 1 1 60933210
P 3800 5800
F 0 "#PWR026" H 3800 5650 50  0001 C CNN
F 1 "+BATT" H 3815 5973 50  0000 C CNN
F 2 "" H 3800 5800 50  0001 C CNN
F 3 "" H 3800 5800 50  0001 C CNN
	1    3800 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 6093BCBE
P 3550 5950
F 0 "J4" H 3500 5700 50  0000 L CNN
F 1 "Pyro 1 Terminal" V 3650 5600 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 3550 5950 50  0001 C CNN
F 3 "~" H 3550 5950 50  0001 C CNN
	1    3550 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 5850 3800 5850
Wire Wire Line
	3800 5850 3800 5800
Wire Wire Line
	3750 5950 3900 5950
Connection ~ 3900 5950
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 609192AA
P 9350 1000
F 0 "#FLG0103" H 9350 1075 50  0001 C CNN
F 1 "PWR_FLAG" H 9150 1150 50  0000 L CNN
F 2 "" H 9350 1000 50  0001 C CNN
F 3 "~" H 9350 1000 50  0001 C CNN
	1    9350 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 607EC1E6
P 750 11000
F 0 "H1" H 850 11046 50  0000 L CNN
F 1 "MountingHole" H 850 10955 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 750 11000 50  0001 C CNN
F 3 "~" H 750 11000 50  0001 C CNN
	1    750  11000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 607EC75C
P 750 10750
F 0 "H2" H 850 10796 50  0000 L CNN
F 1 "MountingHole" H 850 10705 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 750 10750 50  0001 C CNN
F 3 "~" H 750 10750 50  0001 C CNN
	1    750  10750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 60857910
P 4700 3600
F 0 "#PWR018" H 4700 3450 50  0001 C CNN
F 1 "+3.3V" H 4700 3750 50  0000 C CNN
F 2 "" H 4700 3600 50  0001 C CNN
F 3 "" H 4700 3600 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3100 8450 3100
Wire Wire Line
	8450 3100 9750 3100
Connection ~ 8450 3100
Wire Wire Line
	4900 3650 4700 3650
Wire Wire Line
	4700 3650 4700 3600
Wire Wire Line
	1700 1100 1950 1100
Wire Wire Line
	1700 2350 1950 2350
Wire Wire Line
	1950 3850 1950 3950
$Comp
L Switch:SW_SPDT SW2
U 1 1 608DDE0B
P 1250 4650
F 0 "SW2" H 1100 4850 50  0000 C CNN
F 1 "SW_SPDT" H 1100 4750 50  0000 C CNN
F 2 "" H 1250 4650 50  0001 C CNN
F 3 "~" H 1250 4650 50  0001 C CNN
	1    1250 4650
	1    0    0    -1  
$EndComp
NoConn ~ 1450 4750
Text GLabel 5450 3750 2    50   Output ~ 0
ARM
$Comp
L Switch:SW_SPDT SW1
U 1 1 609207CF
P 5100 3750
F 0 "SW1" H 5200 3450 50  0000 C CNN
F 1 "SW_SPDT" H 5100 3550 50  0000 C CNN
F 2 "" H 5100 3750 50  0001 C CNN
F 3 "~" H 5100 3750 50  0001 C CNN
	1    5100 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 3750 5450 3750
Wire Wire Line
	4900 3850 4700 3850
Wire Wire Line
	4700 3850 4700 3900
$Comp
L power:GND #PWR019
U 1 1 60933106
P 4700 3900
F 0 "#PWR019" H 4700 3650 50  0001 C CNN
F 1 "GND" H 4705 3727 50  0000 C CNN
F 2 "" H 4700 3900 50  0001 C CNN
F 3 "" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
Text Notes 4550 3400 0    50   ~ 0
Arming Switch
Wire Notes Line
	4550 3400 5700 3400
Wire Notes Line
	5700 3400 5700 4150
Wire Notes Line
	5700 4150 4550 4150
Wire Notes Line
	4550 4150 4550 3400
Text Notes 6200 2400 0    50   Italic 10
Maybe dont use any pyro?
Text Notes 4050 5550 0    50   Italic 10
Maybe dont use any pyro?
Text GLabel 9150 2700 2    50   Input ~ 0
BMP280_CS
Text Label 12750 7100 0    50   ~ 0
SCL
Text Label 12750 7000 0    50   ~ 0
SDA
Wire Wire Line
	12950 7100 12750 7100
Wire Wire Line
	12750 7000 12950 7000
Entry Wire Line
	12650 7000 12750 7100
Entry Wire Line
	12650 6900 12750 7000
Text Label 12750 6800 0    50   ~ 0
GND
Wire Wire Line
	12950 6800 12750 6800
Wire Wire Line
	12850 6700 12950 6700
Wire Wire Line
	12850 6650 12850 6700
NoConn ~ 12950 6900
$Comp
L power:+3.3V #PWR021
U 1 1 60CC746B
P 12850 6650
F 0 "#PWR021" H 12850 6500 50  0001 C CNN
F 1 "+3.3V" H 12865 6823 50  0000 C CNN
F 2 "" H 12850 6650 50  0001 C CNN
F 3 "" H 12850 6650 50  0001 C CNN
	1    12850 6650
	1    0    0    -1  
$EndComp
NoConn ~ 13650 6800
NoConn ~ 13650 6900
NoConn ~ 13650 7000
Wire Wire Line
	12750 5250 12950 5250
$Comp
L slider:MB85RC256V A3
U 1 1 60BFF861
P 13300 6900
F 0 "A3" H 13300 7365 50  0000 C CNN
F 1 "MB85RC256V" H 13300 7274 50  0000 C CNN
F 2 "" H 13300 6900 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-i2c-fram-breakout/overview" H 13300 6900 50  0001 C CNN
	1    13300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 7900 10950 7900
Wire Wire Line
	10900 8100 10900 7900
Wire Wire Line
	10950 8100 10900 8100
Text GLabel 10950 8100 2    50   Input ~ 0
BMP280_CS
Text Label 10750 7700 0    50   ~ 0
RX
Text Label 10750 7800 0    50   ~ 0
TX
Text Label 10750 7600 0    50   ~ 0
SCK
Entry Wire Line
	10650 7700 10750 7800
Wire Wire Line
	10950 7800 10750 7800
Wire Wire Line
	10950 7700 10750 7700
Wire Wire Line
	10750 7600 10950 7600
Entry Wire Line
	10650 7500 10750 7600
Entry Wire Line
	10650 7600 10750 7700
Text Label 10750 7500 0    50   ~ 0
GND
Wire Wire Line
	10950 7500 10750 7500
NoConn ~ 10950 7400
Wire Wire Line
	10850 7300 10950 7300
Wire Wire Line
	10850 7250 10850 7300
$Comp
L power:+3.3V #PWR0102
U 1 1 60B3982A
P 10850 7250
F 0 "#PWR0102" H 10850 7100 50  0001 C CNN
F 1 "+3.3V" H 10865 7423 50  0000 C CNN
F 2 "" H 10850 7250 50  0001 C CNN
F 3 "" H 10850 7250 50  0001 C CNN
	1    10850 7250
	1    0    0    -1  
$EndComp
$Comp
L slider:Adafruit-BMP280 A2
U 1 1 60B3464B
P 11300 7600
F 0 "A2" H 11300 8050 50  0000 C CNN
F 1 "Adafruit-BMP280" V 11400 7600 50  0000 C CNN
F 2 "" H 11200 7700 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-bmp280-barometric-pressure-plus-temperature-sensor-breakout/overview" H 11200 7700 50  0001 C CNN
	1    11300 7600
	1    0    0    -1  
$EndComp
Text Label 12750 7750 0    50   ~ 0
GND
Wire Wire Line
	12950 7750 12750 7750
Text Label 12750 7950 0    50   ~ 0
SCL
Text Label 12750 7850 0    50   ~ 0
SDA
Entry Wire Line
	12650 7750 12750 7850
Entry Wire Line
	12650 7850 12750 7950
NoConn ~ 12950 7650
Wire Wire Line
	12950 7850 12750 7850
Wire Wire Line
	12950 7950 12750 7950
NoConn ~ 12950 8050
NoConn ~ 13650 7750
NoConn ~ 13650 7650
Wire Wire Line
	12850 7550 12950 7550
Wire Wire Line
	12850 7500 12850 7550
$Comp
L power:+3.3V #PWR0101
U 1 1 60B86135
P 12850 7500
F 0 "#PWR0101" H 12850 7350 50  0001 C CNN
F 1 "+3.3V" H 12865 7673 50  0000 C CNN
F 2 "" H 12850 7500 50  0001 C CNN
F 3 "" H 12850 7500 50  0001 C CNN
	1    12850 7500
	1    0    0    -1  
$EndComp
$Comp
L slider:Adafruit-BNO055 A1
U 1 1 60B843F8
P 13300 7800
F 0 "A1" H 13300 8200 50  0000 C CNN
F 1 "Adafruit-BNO055" H 13300 7400 50  0000 C CNN
F 2 "" H 13550 7500 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview" H 13550 7500 50  0001 C CNN
	1    13300 7800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6099A076
P 10800 8800
F 0 "#PWR017" H 10800 8550 50  0001 C CNN
F 1 "GND" H 10805 8627 50  0000 C CNN
F 2 "" H 10800 8800 50  0001 C CNN
F 3 "" H 10800 8800 50  0001 C CNN
	1    10800 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 609D610B
P 10800 8400
F 0 "#PWR016" H 10800 8250 50  0001 C CNN
F 1 "+3.3V" H 10815 8573 50  0000 C CNN
F 2 "" H 10800 8400 50  0001 C CNN
F 3 "" H 10800 8400 50  0001 C CNN
	1    10800 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 8400 10900 8400
Wire Wire Line
	10750 8500 10900 8500
Wire Wire Line
	10750 8600 10900 8600
Wire Wire Line
	10750 8700 10900 8700
Wire Wire Line
	10800 8800 10900 8800
Text Label 10750 8500 0    50   ~ 0
TX
Text Label 10750 8600 0    50   ~ 0
SCK
Text Label 10750 8700 0    50   ~ 0
RX
$Comp
L Connector:Conn_01x05_Male J2
U 1 1 60984261
P 11100 8600
F 0 "J2" H 11150 8900 50  0000 C CNN
F 1 "SPI Breakout" V 11050 8600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 11100 8600 50  0001 C CNN
F 3 "~" H 11100 8600 50  0001 C CNN
	1    11100 8600
	-1   0    0    1   
$EndComp
Wire Notes Line
	12600 9100 12600 5100
Wire Notes Line
	13700 9100 12600 9100
Wire Notes Line
	13700 5100 13700 9100
Wire Notes Line
	12600 5100 13700 5100
Wire Notes Line
	10600 9100 10600 5100
Wire Notes Line
	11600 9100 10600 9100
Wire Notes Line
	11600 5100 11600 9100
Wire Notes Line
	10600 5100 11600 5100
Text Label 12750 8700 0    50   ~ 0
SCL
Text Label 12750 8600 0    50   ~ 0
SDA
Wire Wire Line
	12750 8700 12950 8700
Wire Wire Line
	12750 8600 12950 8600
Entry Wire Line
	12650 8600 12750 8700
Entry Wire Line
	12650 8500 12750 8600
Entry Wire Line
	10650 8600 10750 8700
Entry Wire Line
	10650 8500 10750 8600
Entry Wire Line
	10650 8400 10750 8500
Text Label 12750 5350 0    50   ~ 0
SCL
Text Label 12750 5250 0    50   ~ 0
SDA
Wire Wire Line
	12750 5350 12950 5350
Entry Wire Line
	12650 5250 12750 5350
Entry Wire Line
	12650 5150 12750 5250
Text GLabel 12950 5350 2    50   Output ~ 0
I2C0_SCL
Text GLabel 12950 5250 2    50   BiDi ~ 0
I2C0_SDA
Text Label 10750 5350 0    50   ~ 0
SCK
Text Label 10750 5450 0    50   ~ 0
RX
Text Label 10750 5250 0    50   ~ 0
TX
Wire Wire Line
	10950 5450 10750 5450
Wire Wire Line
	10950 5350 10750 5350
Wire Wire Line
	10950 5250 10750 5250
Text GLabel 10950 5450 2    50   Output ~ 0
SPI0_RX
Text GLabel 10950 5350 2    50   Input ~ 0
SPI0_SCK
Text GLabel 10950 5250 2    50   Input ~ 0
SPI0_TX
Entry Wire Line
	10650 5350 10750 5450
Entry Wire Line
	10650 5150 10750 5250
Entry Wire Line
	10650 5250 10750 5350
Text Notes 12600 5100 0    50   ~ 0
I2C Bus
Text Notes 10600 5100 0    50   ~ 0
SPI Bus
Wire Wire Line
	12850 8800 12950 8800
$Comp
L power:+3.3V #PWR011
U 1 1 609D3FA8
P 12850 8500
F 0 "#PWR011" H 12850 8350 50  0001 C CNN
F 1 "+3.3V" H 12865 8673 50  0000 C CNN
F 2 "" H 12850 8500 50  0001 C CNN
F 3 "" H 12850 8500 50  0001 C CNN
	1    12850 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	12850 8500 12950 8500
$Comp
L power:GND #PWR012
U 1 1 60993879
P 12850 8800
F 0 "#PWR012" H 12850 8550 50  0001 C CNN
F 1 "GND" H 12855 8627 50  0000 C CNN
F 2 "" H 12850 8800 50  0001 C CNN
F 3 "" H 12850 8800 50  0001 C CNN
	1    12850 8800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 6098096A
P 13150 8700
F 0 "J1" H 13200 8900 50  0000 C CNN
F 1 "I2C Breakout" V 13100 8650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 13150 8700 50  0001 C CNN
F 3 "~" H 13150 8700 50  0001 C CNN
	1    13150 8700
	-1   0    0    1   
$EndComp
Wire Bus Line
	12650 5150 12650 8600
Wire Bus Line
	10650 5150 10650 8600
$EndSCHEMATC