EESchema Schematic File Version 4
LIBS:Resistive-Soil-Humidity-Sensor-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Soil Humidity Detection Device"
Date ""
Rev ""
Comp ""
Comment1 "Omer Faruk Bayir"
Comment2 "180208063"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 6378B088
P 9800 5350
F 0 "Q1" H 9991 5396 50  0000 L CNN
F 1 "BC547" H 9991 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10000 5275 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 9800 5350 50  0001 L CNN
	1    9800 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery +9V1
U 1 1 6378B518
P 7450 5350
F 0 "+9V1" H 7558 5396 50  0000 L CNN
F 1 "Battery" H 7558 5305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_2466_1xAAA" V 7450 5410 50  0001 C CNN
F 3 "~" V 7450 5410 50  0001 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6378B976
P 9900 4850
F 0 "D1" V 9938 4733 50  0000 R CNN
F 1 "LED" V 9847 4733 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 9900 4850 50  0001 C CNN
F 3 "~" H 9900 4850 50  0001 C CNN
	1    9900 4850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 6378BE2C
P 9900 4350
F 0 "R1" H 9970 4396 50  0000 L CNN
F 1 "1kohm" H 9970 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9830 4350 50  0001 C CNN
F 3 "~" H 9900 4350 50  0001 C CNN
	1    9900 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 6378BECB
P 10400 5000
F 0 "BZ1" H 10553 5029 50  0000 L CNN
F 1 "Buzzer" H 10553 4938 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 10375 5100 50  0001 C CNN
F 3 "~" V 10375 5100 50  0001 C CNN
	1    10400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 6378C025
P 9350 5900
F 0 "RV1" H 9280 5946 50  0000 R CNN
F 1 "R_POT" H 9280 5855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3266Y_Vertical" H 9350 5900 50  0001 C CNN
F 3 "~" H 9350 5900 50  0001 C CNN
	1    9350 5900
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV Voltage-Reg1
U 1 1 6378C6C3
P 8200 4100
F 0 "Voltage-Reg1" H 8200 4387 60  0000 C CNN
F 1 "L7805CV" H 8200 4281 60  0000 C CNN
F 2 "digikey-footprints:TO255P1040X460X1968-3" H 8400 4300 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8400 4400 60  0001 L CNN
F 4 "497-1443-5-ND" H 8400 4500 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 8400 4600 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 8400 4700 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 8400 4800 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8400 4900 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 8400 5000 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 8400 5100 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 8400 5200 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8400 5300 60  0001 L CNN "Status"
	1    8200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5150 7450 4100
Wire Wire Line
	7450 4100 7900 4100
Wire Wire Line
	8500 4100 8500 5000
Wire Wire Line
	9900 5000 9900 5100
Wire Wire Line
	8500 4100 9900 4100
Wire Wire Line
	9900 4100 9900 4200
Connection ~ 8500 4100
Wire Wire Line
	9900 4500 9900 4700
Wire Wire Line
	7450 5550 7450 6300
Wire Wire Line
	7450 6300 8200 6300
Wire Wire Line
	9350 6050 9350 6300
Wire Wire Line
	9900 5550 9900 6300
Wire Wire Line
	9900 6300 9350 6300
Connection ~ 9350 6300
Wire Wire Line
	8200 4400 8200 6300
Connection ~ 8200 6300
Wire Wire Line
	8200 6300 9350 6300
Wire Wire Line
	10300 5100 9900 5100
Connection ~ 9900 5100
Wire Wire Line
	9900 5100 9900 5150
Wire Wire Line
	10300 4900 10300 4100
Wire Wire Line
	10300 4100 9900 4100
Connection ~ 9900 4100
Wire Wire Line
	9600 5350 9600 5000
Wire Wire Line
	9600 5350 9600 5900
Wire Wire Line
	9500 5900 9600 5900
Connection ~ 9600 5350
Wire Wire Line
	8500 5000 8650 5000
Wire Wire Line
	9000 5000 9600 5000
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 63810D2C
P 8650 4900
F 0 "H2" H 8750 4905 50  0000 L CNN
F 1 "MountingHole_Pad" H 8750 4860 50  0001 L CNN
F 2 "custom_libraryies:MountingHole.1.8mm" H 8650 4900 50  0001 C CNN
F 3 "~" H 8650 4900 50  0001 C CNN
	1    8650 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 63810E2E
P 9000 4900
F 0 "H1" H 9100 4905 50  0000 L CNN
F 1 "MountingHole_Pad" H 9100 4860 50  0001 L CNN
F 2 "custom_libraryies:MountingHole.1.8mm" H 9000 4900 50  0001 C CNN
F 3 "~" H 9000 4900 50  0001 C CNN
	1    9000 4900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
