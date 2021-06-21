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
F 1 "LED (YLO)" V 1848 4582 50  0000 R CNN
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
NoConn ~ 9000 4900
NoConn ~ 9000 5200
NoConn ~ 9000 5400
Text GLabel 7600 6300 0    50   Output ~ 0
PWM_Servo_Z
Text GLabel 9000 5500 2    50   Input ~ 0
V_BAT_Sense
Wire Wire Line
	9000 5700 9150 5700
$Comp
L power:+3.3V #PWR023
U 1 1 6071506B
P 9750 4600
F 0 "#PWR023" H 9750 4450 50  0001 C CNN
F 1 "+3.3V" H 9765 4773 50  0000 C CNN
F 2 "" H 9750 4600 50  0001 C CNN
F 3 "" H 9750 4600 50  0001 C CNN
	1    9750 4600
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
Text GLabel 7600 6000 0    50   Output ~ 0
Servo_EN
Text GLabel 3800 3500 0    50   Output ~ 0
Servo_GND
Text GLabel 3800 3400 0    50   Input ~ 0
Servo_Z_VCC
Text GLabel 3800 3300 0    50   Input ~ 0
PWM_Servo_Z
Text GLabel 3800 2750 0    50   Input ~ 0
Servo_X_VCC
Wire Notes Line
	3200 2350 4450 2350
Wire Notes Line
	4450 2350 4450 3650
Wire Notes Line
	4450 3650 3200 3650
Wire Notes Line
	3200 3650 3200 2350
Text Notes 3200 2350 0    50   ~ 0
Servo Connections\n
Text GLabel 7600 5400 0    50   BiDi ~ 0
I2C0_SDA
Text GLabel 7600 5500 0    50   Output ~ 0
I2C0_SCL
Text GLabel 9000 6400 2    50   Output ~ 0
SPI0_TX
Text GLabel 9000 6500 2    50   Output ~ 0
SPI0_SCK
Text GLabel 9000 6800 2    50   Input ~ 0
SPI0_RX
Text GLabel 7600 5800 0    50   Input ~ 0
ARM
$Comp
L Motor:Motor_Servo_JR M2
U 1 1 606633E9
P 4100 3400
F 0 "M2" H 3900 3700 50  0000 L CNN
F 1 "Servo Y" H 3900 3600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 3210 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 3210 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo_JR M1
U 1 1 606668F8
P 4100 2750
F 0 "M1" H 3900 3050 50  0000 L CNN
F 1 "Servo X" H 3900 2950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4100 2560 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 4100 2560 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
Text GLabel 3800 2850 0    50   Output ~ 0
Servo_GND
Text GLabel 3800 2650 0    50   Input ~ 0
PWM_Servo_X
Wire Wire Line
	4250 1850 4250 1950
$Comp
L power:GND #PWR014
U 1 1 60808FBC
P 4250 1950
F 0 "#PWR014" H 4250 1700 50  0001 C CNN
F 1 "GND" H 4255 1777 50  0000 C CNN
F 2 "" H 4250 1950 50  0001 C CNN
F 3 "" H 4250 1950 50  0001 C CNN
	1    4250 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R #R10
U 1 1 60808FB3
P 3850 1400
F 0 "#R10" H 3780 1354 50  0000 R CNN
F 1 "2.2k" H 3780 1445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3780 1400 50  0001 C CNN
F 3 "~" H 3850 1400 50  0001 C CNN
	1    3850 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:R #R9
U 1 1 60808FAD
P 3600 1650
F 0 "#R9" V 3393 1650 50  0000 C CNN
F 1 "220" V 3484 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3530 1650 50  0001 C CNN
F 3 "~" H 3600 1650 50  0001 C CNN
	1    3600 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1300 4250 1450
Text GLabel 3300 1250 2    50   Input ~ 0
Alarm_EN
$Comp
L Transistor_FET:IRF540N #Q2
U 1 1 60808FA5
P 4150 1650
F 0 "#Q2" H 4354 1696 50  0000 L CNN
F 1 "IRF540N" H 4354 1605 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 4400 1575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 4150 1650 50  0001 L CNN
	1    4150 1650
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Electromechanical:BUZZER-PTH LS1
U 1 1 6065A952
P 5000 1350
F 0 "LS1" H 4800 1800 45  0000 L CNN
F 1 "Mini Speaker" H 4800 1700 45  0000 L CNN
F 2 "SparkFun-Electromechanical:BUZZER-12MM" H 5000 1650 20  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
F 4 "COMP-08253" H 4800 1600 60  0000 L CNN "Field4"
	1    5000 1350
	1    0    0    -1  
$EndComp
Text GLabel 5000 1450 3    50   Input ~ 0
PWM_Buzzer
$Comp
L power:GND #PWR020
U 1 1 6079E7DB
P 5100 1450
F 0 "#PWR020" H 5100 1200 50  0001 C CNN
F 1 "GND" H 5150 1300 50  0000 C CNN
F 2 "" H 5100 1450 50  0001 C CNN
F 3 "" H 5100 1450 50  0001 C CNN
	1    5100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6079E177
P 4450 1300
F 0 "#PWR015" H 4450 1050 50  0001 C CNN
F 1 "GND" H 4455 1127 50  0000 C CNN
F 2 "" H 4450 1300 50  0001 C CNN
F 3 "" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
Wire Notes Line
	5450 2200 5450 700 
Wire Notes Line
	4750 700  4750 2200
$Comp
L Device:Buzzer #BZ1
U 1 1 606D194C
P 4350 1200
F 0 "#BZ1" V 4750 1350 50  0000 R CNN
F 1 "Alarm Buzzer" V 4650 1350 50  0000 R CNN
F 2 "slider:CE-C75-Piezo-Alarm" V 4325 1300 50  0001 C CNN
F 3 "http://cdn.sparkfun.com/datasheets/Components/General/CE-C75.pdf" V 4325 1300 50  0001 C CNN
F 4 " COM-13940" V 4550 1400 50  0000 R CNN "Field4"
	1    4350 1200
	0    -1   -1   0   
$EndComp
Text Notes 3200 700  0    50   ~ 0
Human Interfacing\n
Text GLabel 3850 2000 0    50   Output ~ 0
Alarm_EN
Text GLabel 7600 6800 0    50   Output ~ 0
PWM_Buzzer
$Comp
L power:+3.3V #PWR013
U 1 1 6061EF8C
P 3850 1250
F 0 "#PWR013" H 3850 1100 50  0001 C CNN
F 1 "+3.3V" H 3865 1423 50  0000 C CNN
F 2 "" H 3850 1250 50  0001 C CNN
F 3 "" H 3850 1250 50  0001 C CNN
	1    3850 1250
	1    0    0    -1  
$EndComp
NoConn ~ 9000 5300
Wire Notes Line
	3100 1950 700  1950
Wire Notes Line
	700  3200 3100 3200
Wire Notes Line
	3200 700  3200 2200
Wire Wire Line
	3750 1650 3850 1650
Wire Wire Line
	3850 1550 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 3950 1650
Wire Wire Line
	3250 1650 3450 1650
Wire Notes Line
	3200 700  5450 700 
Wire Wire Line
	3250 1250 3250 1650
Wire Wire Line
	3300 1250 3250 1250
Wire Notes Line
	4450 3000 3200 3000
Wire Notes Line
	3200 2200 5450 2200
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
	750  4550 750  5150
NoConn ~ 9000 5800
NoConn ~ 7600 6400
NoConn ~ 7600 5900
NoConn ~ 7600 5300
NoConn ~ 7600 5200
NoConn ~ 7600 5000
NoConn ~ 7600 4900
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
Connection ~ 2500 5150
Wire Wire Line
	1250 5150 1900 5150
Wire Wire Line
	9200 5000 9100 5000
$Comp
L dk_Tactile-Switches:1825910-6 S1
U 1 1 60936469
P 3650 4250
F 0 "S1" H 3650 4597 60  0000 C CNN
F 1 "1825910-6" H 3650 4491 60  0000 C CNN
F 2 "digikey-footprints:Switch_Tactile_THT_6x6mm" H 3850 4450 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 3850 4550 60  0001 L CNN
F 4 "450-1650-ND" H 3850 4650 60  0001 L CNN "Digi-Key_PN"
F 5 "1825910-6" H 3850 4750 60  0001 L CNN "MPN"
F 6 "Switches" H 3850 4850 60  0001 L CNN "Category"
F 7 "Tactile Switches" H 3850 4950 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 3850 5050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536" H 3850 5150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TACTILE SPST-NO 0.05A 24V" H 3850 5250 60  0001 L CNN "Description"
F 11 "TE Connectivity ALCOSWITCH Switches" H 3850 5350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3850 5450 60  0001 L CNN "Status"
	1    3650 4250
	1    0    0    -1  
$EndComp
Text Notes 3200 3800 0    50   ~ 0
uC Reset
Text GLabel 9000 5900 2    50   Input ~ 0
RUN
Text GLabel 4000 4250 2    50   Input ~ 0
RUN
Wire Wire Line
	3850 4150 3900 4150
Wire Wire Line
	3900 4150 3900 4250
Wire Wire Line
	3900 4350 3850 4350
Wire Wire Line
	3900 4250 4000 4250
Connection ~ 3900 4250
Wire Wire Line
	3900 4250 3900 4350
Wire Wire Line
	3450 4150 3400 4150
Wire Wire Line
	3400 4150 3400 4250
Wire Wire Line
	3400 4350 3450 4350
Wire Wire Line
	3400 4250 3300 4250
Connection ~ 3400 4250
Wire Wire Line
	3400 4250 3400 4350
$Comp
L power:GND #PWR024
U 1 1 60965511
P 3300 4250
F 0 "#PWR024" H 3300 4000 50  0001 C CNN
F 1 "GND" H 3305 4077 50  0000 C CNN
F 2 "" H 3300 4250 50  0001 C CNN
F 3 "" H 3300 4250 50  0001 C CNN
	1    3300 4250
	1    0    0    -1  
$EndComp
Wire Notes Line
	3200 3800 4250 3800
Wire Notes Line
	4250 3800 4250 4500
Wire Notes Line
	4250 4500 3200 4500
Wire Notes Line
	3200 4500 3200 3800
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
L Transistor_FET:IRF540N #Q3
U 1 1 607F5BD2
P 1850 8800
F 0 "#Q3" H 2054 8846 50  0000 L CNN
F 1 "IRF540N" H 2054 8755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2100 8725 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 1850 8800 50  0001 L CNN
	1    1850 8800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 9000 1950 9100
Text Notes 2150 8250 0    50   ~ 10
UUH, maybe some\ncurrent limiting?
Wire Wire Line
	1950 9100 1550 9100
Connection ~ 1950 9100
Wire Wire Line
	1550 8800 1650 8800
Connection ~ 1550 8800
Wire Wire Line
	1450 8800 1550 8800
$Comp
L Device:R #R12
U 1 1 607F5BE6
P 1550 8950
F 0 "#R12" H 1480 8904 50  0000 R CNN
F 1 "2.2k" H 1480 8995 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1480 8950 50  0001 C CNN
F 3 "~" H 1550 8950 50  0001 C CNN
	1    1550 8950
	-1   0    0    1   
$EndComp
$Comp
L Device:R #R11
U 1 1 607F5BEC
P 1300 8800
F 0 "#R11" V 1093 8800 50  0000 C CNN
F 1 "220" V 1184 8800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1230 8800 50  0001 C CNN
F 3 "~" H 1300 8800 50  0001 C CNN
	1    1300 8800
	0    1    1    0   
$EndComp
Text GLabel 1150 8800 0    50   Input ~ 0
Pyro_1
Wire Notes Line
	800  8050 800  9350
Wire Notes Line
	800  9350 3100 9350
Wire Notes Line
	3100 9350 3100 8050
Wire Notes Line
	3100 8050 800  8050
Text Notes 800  8050 0    50   ~ 0
Pyro Channels
$Comp
L Device:R #R14
U 1 1 60889065
P 2500 8950
F 0 "#R14" H 2570 8996 50  0000 L CNN
F 1 "100k" H 2570 8905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2430 8950 50  0001 C CNN
F 3 "~" H 2500 8950 50  0001 C CNN
	1    2500 8950
	1    0    0    -1  
$EndComp
$Comp
L Device:R #R13
U 1 1 6088906B
P 2500 8650
F 0 "#R13" H 2570 8696 50  0000 L CNN
F 1 "220k" H 2570 8605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2430 8650 50  0001 C CNN
F 3 "~" H 2500 8650 50  0001 C CNN
	1    2500 8650
	1    0    0    -1  
$EndComp
Text GLabel 2550 8800 2    50   Output ~ 0
Pyro_1_Cont
Wire Wire Line
	2500 8800 2550 8800
Connection ~ 2500 8800
Wire Wire Line
	1950 8450 2500 8450
Wire Wire Line
	2500 8450 2500 8500
Text GLabel 2200 9900 0    50   Input ~ 0
Pyro_1_Cont
Text GLabel 2200 9800 0    50   Output ~ 0
Pyro_1
Text Notes 1600 9600 0    50   ~ 0
Subject to change\nTODO:
Wire Wire Line
	1950 8450 1950 8600
Wire Wire Line
	2500 9100 1950 9100
$Comp
L power:GND #PWR025
U 1 1 607F5BDD
P 1950 9100
F 0 "#PWR025" H 1950 8850 50  0001 C CNN
F 1 "GND" H 1955 8927 50  0000 C CNN
F 2 "" H 1950 9100 50  0001 C CNN
F 3 "" H 1950 9100 50  0001 C CNN
	1    1950 9100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR026
U 1 1 60933210
P 1850 8300
F 0 "#PWR026" H 1850 8150 50  0001 C CNN
F 1 "+BATT" H 1865 8473 50  0000 C CNN
F 2 "" H 1850 8300 50  0001 C CNN
F 3 "" H 1850 8300 50  0001 C CNN
	1    1850 8300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 #J4
U 1 1 6093BCBE
P 1600 8450
F 0 "#J4" H 1550 8200 50  0000 L CNN
F 1 "Pyro 1 Terminal" V 1700 8100 50  0000 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 1600 8450 50  0001 C CNN
F 3 "~" H 1600 8450 50  0001 C CNN
	1    1600 8450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 8350 1850 8350
Wire Wire Line
	1850 8350 1850 8300
Wire Wire Line
	1800 8450 1950 8450
Connection ~ 1950 8450
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 609192AA
P 9100 4600
F 0 "#FLG0103" H 9100 4675 50  0001 C CNN
F 1 "PWR_FLAG" V 9100 4750 50  0000 L CNN
F 2 "" H 9100 4600 50  0001 C CNN
F 3 "~" H 9100 4600 50  0001 C CNN
	1    9100 4600
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
P 4700 2600
F 0 "#PWR018" H 4700 2450 50  0001 C CNN
F 1 "+3.3V" H 4700 2750 50  0000 C CNN
F 2 "" H 4700 2600 50  0001 C CNN
F 3 "" H 4700 2600 50  0001 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2600
Wire Wire Line
	1700 1100 1950 1100
Wire Wire Line
	1700 2350 1950 2350
Wire Wire Line
	1950 3850 1950 3950
Text GLabel 5600 2900 2    50   Output ~ 0
ARM
$Comp
L Switch:SW_SPDT SW1
U 1 1 609207CF
P 5100 2750
F 0 "SW1" H 5100 2550 50  0000 C CNN
F 1 "SW_SPDT" H 5100 3000 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 5100 2750 50  0001 C CNN
F 3 "~" H 5100 2750 50  0001 C CNN
	1    5100 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5300 2750 5450 2750
Wire Wire Line
	4900 2850 4700 2850
Wire Wire Line
	4700 2850 4700 2900
$Comp
L power:GND #PWR019
U 1 1 60933106
P 4700 2900
F 0 "#PWR019" H 4700 2650 50  0001 C CNN
F 1 "GND" H 4705 2727 50  0000 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "" H 4700 2900 50  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
Text Notes 4550 2350 0    50   ~ 0
Arming Switch
Wire Notes Line
	4550 2350 6300 2350
Wire Notes Line
	6300 2350 6300 3150
Wire Notes Line
	6300 3150 4550 3150
Wire Notes Line
	4550 3150 4550 2350
Text Notes 1350 9700 0    50   Italic 10
Maybe dont use any pyro?
Text Notes 2100 8050 0    50   Italic 10
Maybe dont use any pyro?
Text Label 13900 2750 0    50   ~ 0
SCL
Text Label 13900 2850 0    50   ~ 0
SDA
Wire Wire Line
	14100 2750 13900 2750
Wire Wire Line
	13900 2850 14100 2850
Entry Wire Line
	13800 2650 13900 2750
Entry Wire Line
	13800 2750 13900 2850
NoConn ~ 14100 2650
$Comp
L power:+3.3V #PWR021
U 1 1 60CC746B
P 14400 2350
F 0 "#PWR021" H 14400 2200 50  0001 C CNN
F 1 "+3.3V" H 14415 2523 50  0000 C CNN
F 2 "" H 14400 2350 50  0001 C CNN
F 3 "" H 14400 2350 50  0001 C CNN
	1    14400 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 1100 14100 1100
$Comp
L adafruit:Adafruit-MB85RC256V #A3
U 1 1 60BFF861
P 14400 2750
F 0 "#A3" H 14450 3200 50  0000 L CNN
F 1 "MB85RC256V" H 14450 3100 50  0000 L CNN
F 2 "adafruit:Adafruit_MB85RC256V" H 14400 2750 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-i2c-fram-breakout/overview" H 14400 2750 50  0001 C CNN
	1    14400 2750
	1    0    0    -1  
$EndComp
Entry Wire Line
	11500 4150 11600 4250
Entry Wire Line
	11500 3950 11600 4050
Entry Wire Line
	11500 4050 11600 4150
Text Label 13900 4050 0    50   ~ 0
SCL
Text Label 13900 3950 0    50   ~ 0
SDA
Entry Wire Line
	13800 3850 13900 3950
Entry Wire Line
	13800 3950 13900 4050
NoConn ~ 14900 4250
Wire Wire Line
	14100 3950 13900 3950
Wire Wire Line
	14100 4050 13900 4050
NoConn ~ 14100 4150
NoConn ~ 14900 3950
NoConn ~ 14900 3850
$Comp
L power:+3.3V #PWR0101
U 1 1 60B86135
P 14500 3650
F 0 "#PWR0101" H 14500 3500 50  0001 C CNN
F 1 "+3.3V" H 14515 3823 50  0000 C CNN
F 2 "" H 14500 3650 50  0001 C CNN
F 3 "" H 14500 3650 50  0001 C CNN
	1    14500 3650
	1    0    0    -1  
$EndComp
$Comp
L adafruit:Adafruit-BNO055 A1
U 1 1 60B843F8
P 14500 4050
F 0 "A1" H 14550 4500 50  0000 L CNN
F 1 "BNO055" H 14850 4400 50  0000 R CNN
F 2 "adafruit:Adafruit_BNO055" H 14750 3750 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-bno055-absolute-orientation-sensor/overview" H 14750 3750 50  0001 C CNN
	1    14500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6099A076
P 11650 2050
F 0 "#PWR017" H 11650 1800 50  0001 C CNN
F 1 "GND" H 11655 1877 50  0000 C CNN
F 2 "" H 11650 2050 50  0001 C CNN
F 3 "" H 11650 2050 50  0001 C CNN
	1    11650 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 609D610B
P 11650 1650
F 0 "#PWR016" H 11650 1500 50  0001 C CNN
F 1 "+3.3V" H 11665 1823 50  0000 C CNN
F 2 "" H 11650 1650 50  0001 C CNN
F 3 "" H 11650 1650 50  0001 C CNN
	1    11650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11650 1650 11750 1650
Wire Wire Line
	11600 1750 11750 1750
Wire Wire Line
	11600 1850 11750 1850
Wire Wire Line
	11600 1950 11750 1950
Wire Wire Line
	11650 2050 11750 2050
Text Label 11600 1750 0    50   ~ 0
TX
Text Label 11600 1850 0    50   ~ 0
SCK
Text Label 11600 1950 0    50   ~ 0
RX
$Comp
L Connector:Conn_01x05_Male #J2
U 1 1 60984261
P 11950 1850
F 0 "#J2" H 12000 2150 50  0000 C CNN
F 1 "SPI Breakout" V 11900 1850 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 11950 1850 50  0001 C CNN
F 3 "~" H 11950 1850 50  0001 C CNN
	1    11950 1850
	-1   0    0    1   
$EndComp
Wire Notes Line
	13750 4700 13750 950 
Wire Notes Line
	15000 4700 13750 4700
Wire Notes Line
	15000 950  15000 4700
Wire Notes Line
	13750 950  15000 950 
Wire Notes Line
	11450 4700 11450 950 
Wire Notes Line
	13150 4700 11450 4700
Wire Notes Line
	13150 950  13150 4700
Wire Notes Line
	11450 950  13150 950 
Text Label 13900 1750 0    50   ~ 0
SCL
Text Label 13900 1650 0    50   ~ 0
SDA
Wire Wire Line
	13900 1750 14100 1750
Wire Wire Line
	13900 1650 14100 1650
Entry Wire Line
	13800 1650 13900 1750
Entry Wire Line
	13800 1550 13900 1650
Entry Wire Line
	11500 1850 11600 1950
Entry Wire Line
	11500 1750 11600 1850
Entry Wire Line
	11500 1650 11600 1750
Text Label 13900 1200 0    50   ~ 0
SCL
Text Label 13900 1100 0    50   ~ 0
SDA
Wire Wire Line
	13900 1200 14100 1200
Entry Wire Line
	13800 1100 13900 1200
Entry Wire Line
	13800 1000 13900 1100
Text GLabel 14100 1200 2    50   Output ~ 0
I2C0_SCL
Text GLabel 14100 1100 2    50   BiDi ~ 0
I2C0_SDA
Text Label 11600 1200 0    50   ~ 0
SCK
Text Label 11600 1300 0    50   ~ 0
RX
Text Label 11600 1100 0    50   ~ 0
TX
Wire Wire Line
	11800 1300 11600 1300
Wire Wire Line
	11800 1200 11600 1200
Wire Wire Line
	11800 1100 11600 1100
Text GLabel 11800 1300 2    50   Output ~ 0
SPI0_RX
Text GLabel 11800 1200 2    50   Input ~ 0
SPI0_SCK
Text GLabel 11800 1100 2    50   Input ~ 0
SPI0_TX
Entry Wire Line
	11500 1200 11600 1300
Entry Wire Line
	11500 1000 11600 1100
Entry Wire Line
	11500 1100 11600 1200
Text Notes 13750 950  0    50   ~ 0
I2C Bus
Text Notes 11450 950  0    50   ~ 0
SPI Bus
Wire Wire Line
	14000 1850 14100 1850
$Comp
L power:+3.3V #PWR011
U 1 1 609D3FA8
P 14000 1550
F 0 "#PWR011" H 14000 1400 50  0001 C CNN
F 1 "+3.3V" H 14015 1723 50  0000 C CNN
F 2 "" H 14000 1550 50  0001 C CNN
F 3 "" H 14000 1550 50  0001 C CNN
	1    14000 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 1550 14100 1550
$Comp
L power:GND #PWR012
U 1 1 60993879
P 14000 1850
F 0 "#PWR012" H 14000 1600 50  0001 C CNN
F 1 "GND" H 14005 1677 50  0000 C CNN
F 2 "" H 14000 1850 50  0001 C CNN
F 3 "" H 14000 1850 50  0001 C CNN
	1    14000 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male #J1
U 1 1 6098096A
P 14300 1750
F 0 "#J1" H 14350 1950 50  0000 C CNN
F 1 "I2C Breakout" V 14250 1700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 14300 1750 50  0001 C CNN
F 3 "~" H 14300 1750 50  0001 C CNN
	1    14300 1750
	-1   0    0    1   
$EndComp
NoConn ~ 14700 2850
NoConn ~ 14700 2750
NoConn ~ 14700 2650
$Comp
L power:GND #PWR0104
U 1 1 60D60A61
P 14400 3150
F 0 "#PWR0104" H 14400 2900 50  0001 C CNN
F 1 "GND" H 14405 2977 50  0000 C CNN
F 2 "" H 14400 3150 50  0001 C CNN
F 3 "" H 14400 3150 50  0001 C CNN
	1    14400 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 60D679CA
P 14500 4450
F 0 "#PWR0105" H 14500 4200 50  0001 C CNN
F 1 "GND" H 14505 4277 50  0000 C CNN
F 2 "" H 14500 4450 50  0001 C CNN
F 3 "" H 14500 4450 50  0001 C CNN
	1    14500 4450
	1    0    0    -1  
$EndComp
NoConn ~ 9000 6700
Text Notes 13850 2200 0    50   ~ 0
I2C FRAM
Text Notes 13850 3500 0    50   ~ 0
I2C IMU
Entry Wire Line
	11500 2850 11600 2950
Entry Wire Line
	11500 2750 11600 2850
Entry Wire Line
	11500 2950 11600 3050
Text GLabel 12400 3050 2    50   Input ~ 0
FRAM_CS
$Comp
L cypress:FM25V20A-PG U5
U 1 1 60DD2EFA
P 12100 2950
F 0 "U5" H 12150 3400 50  0000 L CNN
F 1 "FM25V20A-PG" H 12150 3300 50  0000 L CNN
F 2 "cypress:FM25V20A" H 12500 2550 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Cypress%20PDFs/FM25V20A_PDIP_RevC_5-15-19.pdf" H 12100 2950 50  0001 C CNN
	1    12100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0106
U 1 1 60DD6695
P 12100 2550
F 0 "#PWR0106" H 12100 2400 50  0001 C CNN
F 1 "+3.3V" H 12115 2723 50  0000 C CNN
F 2 "" H 12100 2550 50  0001 C CNN
F 3 "" H 12100 2550 50  0001 C CNN
	1    12100 2550
	-1   0    0    -1  
$EndComp
Text Label 11600 2950 0    50   ~ 0
RX
Text Label 11600 3050 0    50   ~ 0
TX
Text Label 11600 2850 0    50   ~ 0
SCK
Wire Wire Line
	11800 3050 11600 3050
Wire Wire Line
	11800 2950 11600 2950
Wire Wire Line
	11600 2850 11800 2850
$Comp
L power:GND #PWR0107
U 1 1 60DD62B2
P 12100 3350
F 0 "#PWR0107" H 12100 3100 50  0001 C CNN
F 1 "GND" H 12105 3177 50  0000 C CNN
F 2 "" H 12100 3350 50  0001 C CNN
F 3 "" H 12100 3350 50  0001 C CNN
	1    12100 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0108
U 1 1 60E00253
P 12550 2850
F 0 "#PWR0108" H 12550 2700 50  0001 C CNN
F 1 "+3.3V" H 12565 3023 50  0000 C CNN
F 2 "" H 12550 2850 50  0001 C CNN
F 3 "" H 12550 2850 50  0001 C CNN
	1    12550 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12550 2850 12400 2850
Text Notes 11550 2400 0    50   ~ 0
SPI FRAM
$Comp
L power:GND #PWR0103
U 1 1 60D2C3AE
P 12200 4450
F 0 "#PWR0103" H 12200 4200 50  0001 C CNN
F 1 "GND" H 12205 4277 50  0000 C CNN
F 2 "" H 12200 4450 50  0001 C CNN
F 3 "" H 12200 4450 50  0001 C CNN
	1    12200 4450
	1    0    0    -1  
$EndComp
$Comp
L adafruit:Adafruit-BMP280 A2
U 1 1 60B3464B
P 12200 4150
F 0 "A2" H 12250 4500 50  0000 L CNN
F 1 "BMP280" H 12250 4400 50  0000 L CNN
F 2 "adafruit:Adafruit_BMP280" H 12100 4250 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-bmp280-barometric-pressure-plus-temperature-sensor-breakout/overview" H 12100 4250 50  0001 C CNN
	1    12200 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 60B3982A
P 12200 3850
F 0 "#PWR0102" H 12200 3700 50  0001 C CNN
F 1 "+3.3V" H 12215 4023 50  0000 C CNN
F 2 "" H 12200 3850 50  0001 C CNN
F 3 "" H 12200 3850 50  0001 C CNN
	1    12200 3850
	-1   0    0    -1  
$EndComp
NoConn ~ 12600 4050
Wire Wire Line
	11600 4050 11800 4050
Wire Wire Line
	11800 4150 11600 4150
Wire Wire Line
	11800 4250 11600 4250
Text Label 11600 4050 0    50   ~ 0
SCK
Text Label 11600 4250 0    50   ~ 0
TX
Text Label 11600 4150 0    50   ~ 0
RX
Text GLabel 12600 4250 2    50   Input ~ 0
BMP280_CS
Wire Notes Line
	11450 1400 13150 1400
Wire Notes Line
	11450 2300 13150 2300
Wire Notes Line
	11450 3600 13150 3600
Text Notes 11550 3700 0    50   ~ 0
SPI Barom
Wire Notes Line
	13750 1300 15000 1300
Wire Notes Line
	13750 2100 15000 2100
Wire Notes Line
	13750 3400 15000 3400
$Comp
L MCU_RaspberryPi_and_Boards:Pico_PerfBoard U4
U 1 1 606ADA4C
P 8300 5850
F 0 "U4" H 8300 7065 50  0000 C CNN
F 1 "Pico" H 8300 6974 50  0000 C CNN
F 2 "MCU_RaspberryPi_and_Boards:RPi_Pico_TH_Perfboard" V 8300 5850 50  0001 C CNN
F 3 "" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
NoConn ~ 2200 9800
Text Notes 12050 1900 0    98   Italic 20
DISABLED
Text Notes 14000 1800 0    118  Italic 24
DISABLED
Text Notes 13950 2850 0    118  Italic 24
DISABLED
Text Notes 3600 1550 0    118  Italic 24
DISABLED
Text Notes 1500 8800 0    118  Italic 24
DISABLED
Wire Wire Line
	750  4550 1000 4550
Wire Wire Line
	5450 2750 5450 2600
Wire Wire Line
	5450 2600 5500 2600
Wire Wire Line
	5450 2750 5450 2900
Wire Wire Line
	5450 2900 5600 2900
Connection ~ 5450 2750
$Comp
L power:GND #PWR027
U 1 1 61343C63
P 6150 2650
F 0 "#PWR027" H 6150 2400 50  0001 C CNN
F 1 "GND" H 6155 2477 50  0000 C CNN
F 2 "" H 6150 2650 50  0001 C CNN
F 3 "" H 6150 2650 50  0001 C CNN
	1    6150 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2650 6150 2600
Wire Wire Line
	6150 2600 6100 2600
$Comp
L Device:R R4
U 1 1 6132BE9A
P 5950 2600
F 0 "R4" V 6050 2600 50  0000 C CNN
F 1 "220" V 5850 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5880 2600 50  0001 C CNN
F 3 "~" H 5950 2600 50  0001 C CNN
	1    5950 2600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6130E651
P 5650 2600
F 0 "D2" H 5650 2700 50  0000 C CNN
F 1 "LED (RED)" H 5650 2450 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 5650 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 613DF5E3
P 5250 3850
F 0 "#PWR029" H 5250 3600 50  0001 C CNN
F 1 "GND" H 5255 3677 50  0000 C CNN
F 2 "" H 5250 3850 50  0001 C CNN
F 3 "" H 5250 3850 50  0001 C CNN
	1    5250 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR028
U 1 1 613DFA23
P 5250 3550
F 0 "#PWR028" H 5250 3400 50  0001 C CNN
F 1 "+BATT" H 5250 3700 50  0000 C CNN
F 2 "" H 5250 3550 50  0001 C CNN
F 3 "" H 5250 3550 50  0001 C CNN
	1    5250 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3550 5250 3600
Wire Wire Line
	5250 3600 5300 3600
Wire Wire Line
	5300 3800 5250 3800
Wire Wire Line
	5250 3800 5250 3850
Text GLabel 5300 3700 0    50   Input ~ 0
Parachute_Deploy
Text GLabel 9000 6000 2    50   Output ~ 0
Parachute_Deploy
Wire Notes Line
	4550 3300 5800 3300
Wire Notes Line
	5800 3300 5800 4100
Wire Notes Line
	5800 4100 4550 4100
Wire Notes Line
	4550 4100 4550 3300
Text Notes 4550 3300 0    50   ~ 0
Parachute
Text GLabel 7600 6200 0    50   Output ~ 0
PWM_Servo_X
Text GLabel 9000 6300 2    50   Output ~ 0
FRAM_CS
Text GLabel 9000 6200 2    50   Output ~ 0
BMP280_CS
NoConn ~ 7600 6500
NoConn ~ 7600 5700
NoConn ~ 7600 6700
NoConn ~ 3850 2000
$Comp
L Device:D_Schottky D3
U 1 1 614C419D
P 1150 4550
F 0 "D3" H 1150 4767 50  0000 C CNN
F 1 "D_Schottky" H 1150 4676 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 1150 4550 50  0001 C CNN
F 3 "~" H 1150 4550 50  0001 C CNN
	1    1150 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 4550 1900 4550
$Comp
L Device:D_Schottky D5
U 1 1 6070DD54
P 9350 4600
F 0 "D5" H 9200 4850 50  0000 L CNN
F 1 "D_Schottky" H 9200 4750 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9350 4600 50  0001 C CNN
F 3 "~" H 9350 4600 50  0001 C CNN
	1    9350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5000 9100 4600
Wire Wire Line
	9100 4600 9200 4600
Connection ~ 9100 5000
Wire Wire Line
	9500 4600 9750 4600
Connection ~ 9100 4600
Wire Wire Line
	9000 5000 9100 5000
$Comp
L Device:D_Schottky D4
U 1 1 60D2E50B
P 9350 5000
F 0 "D4" H 9200 5250 50  0000 L CNN
F 1 "D_Schottky" H 9200 5150 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 9350 5000 50  0001 C CNN
F 3 "~" H 9350 5000 50  0001 C CNN
	1    9350 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 613D5FF7
P 5500 3700
F 0 "J1" H 5650 3850 50  0000 C CNN
F 1 "Parachute" V 5450 3700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5500 3700 50  0001 C CNN
F 3 "~" H 5500 3700 50  0001 C CNN
	1    5500 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 5000 9850 5000
Wire Wire Line
	9850 5000 9850 4900
Wire Wire Line
	9850 4900 9900 4900
Connection ~ 9850 5000
Wire Wire Line
	9850 5000 9900 5000
Wire Wire Line
	9850 5100 9850 5200
Wire Wire Line
	9850 5200 9900 5200
Wire Wire Line
	9850 5100 9900 5100
Text Notes 9800 5850 0    50   ~ 0
ADC Connections:\n3: (Internal) Temperature Sensor\n2: Battery voltage divider\n1: Ground reference\n0:
$Comp
L Device:Net-Tie_2 NT1
U 1 1 608A8144
P 9250 5700
F 0 "NT1" H 9300 5650 50  0000 C CNN
F 1 "ADC Ground Reference" H 9200 5750 31  0000 C CNN
F 2 "NetTie:NetTie-2_SMD_Pad0.5mm" H 9250 5700 50  0001 C CNN
F 3 "~" H 9250 5700 50  0001 C CNN
	1    9250 5700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 7100 9750 6600
Connection ~ 9750 6600
Wire Wire Line
	9750 6600 9000 6600
Wire Wire Line
	9750 6100 9750 6600
Connection ~ 9750 6100
Wire Wire Line
	9000 6100 9750 6100
Wire Wire Line
	9750 5700 9750 6100
Connection ~ 9750 5700
Wire Wire Line
	9350 5700 9750 5700
Wire Wire Line
	9750 5100 9750 5600
Wire Wire Line
	9750 5600 9750 5700
Connection ~ 9750 5600
Wire Wire Line
	9000 5600 9750 5600
Connection ~ 9850 5100
Wire Wire Line
	9750 5100 9850 5100
Connection ~ 9750 5100
Wire Wire Line
	9000 5100 9750 5100
Connection ~ 8300 7100
Wire Wire Line
	8300 7100 9750 7100
Wire Wire Line
	6850 7100 8300 7100
Wire Bus Line
	11500 1000 11500 4650
Wire Bus Line
	13800 1000 13800 4650
Wire Wire Line
	6850 5100 7600 5100
Wire Wire Line
	6850 5100 6850 5600
Connection ~ 6850 5600
Wire Wire Line
	7600 5600 6850 5600
Wire Wire Line
	6850 5600 6850 6100
Connection ~ 6850 6100
Wire Wire Line
	7600 6100 6850 6100
Wire Wire Line
	6850 6600 6850 7100
Wire Wire Line
	6850 6100 6850 6600
Connection ~ 6850 6600
Wire Wire Line
	7600 6600 6850 6600
$Comp
L power:GND #PWR022
U 1 1 606B9AD8
P 8300 7100
F 0 "#PWR022" H 8300 6850 50  0001 C CNN
F 1 "GND" H 8305 6927 50  0000 C CNN
F 2 "" H 8300 7100 50  0001 C CNN
F 3 "" H 8300 7100 50  0001 C CNN
	1    8300 7100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J2
U 1 1 60D36276
P 10100 5000
F 0 "J2" H 10300 4750 50  0000 R CNN
F 1 "UC Debug PWR" V 10050 4950 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10100 5000 50  0001 C CNN
F 3 "~" H 10100 5000 50  0001 C CNN
	1    10100 5000
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
