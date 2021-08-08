EESchema Schematic File Version 4
EELAYER 30 0
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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 60D38B20
P 7800 3150
F 0 "A1" V 7846 2106 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 7755 2106 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 7800 3150 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 7800 3150 50  0001 C CNN
	1    7800 3150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 60D39AF5
P 6500 1700
F 0 "J1" V 6464 1512 50  0000 R CNN
F 1 "DHT out" V 6373 1512 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-3_P5.00mm" H 6500 1700 50  0001 C CNN
F 3 "~" H 6500 1700 50  0001 C CNN
	1    6500 1700
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60D3A72C
P 6700 1700
F 0 "J2" V 6664 1512 50  0000 R CNN
F 1 "12V" V 6573 1512 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 6700 1700 50  0001 C CNN
F 3 "~" H 6700 1700 50  0001 C CNN
	1    6700 1700
	0    -1   -1   0   
$EndComp
$Comp
L Sensor:DHT11 U1
U 1 1 60D3BFFE
P 6350 5000
F 0 "U1" V 6061 5000 50  0000 C CNN
F 1 "DHT in" V 5970 5000 50  0000 C CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 6350 4600 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 6500 5250 50  0001 C CNN
	1    6350 5000
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 60D3CE53
P 5650 2350
F 0 "H1" V 5887 2353 50  0000 C CNN
F 1 "MOSFET Vin" V 5796 2353 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x01_D1.4mm_OD2.7mm" H 5650 2350 50  0001 C CNN
F 3 "~" H 5650 2350 50  0001 C CNN
	1    5650 2350
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 60D3D552
P 5650 2750
F 0 "H2" V 5887 2753 50  0000 C CNN
F 1 "MOSFET GND" V 5796 2753 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-1sqmm_1x01_D1.4mm_OD2.7mm" H 5650 2750 50  0001 C CNN
F 3 "~" H 5650 2750 50  0001 C CNN
	1    5650 2750
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60D3EC7E
P 10050 1650
F 0 "H3" H 10150 1699 50  0000 L CNN
F 1 "OLED GND" H 10150 1608 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 10050 1650 50  0001 C CNN
F 3 "~" H 10050 1650 50  0001 C CNN
	1    10050 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 60D3F0D3
P 9550 1650
F 0 "H4" H 9650 1699 50  0000 L CNN
F 1 "OLED Vcc" H 9650 1608 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 9550 1650 50  0001 C CNN
F 3 "~" H 9550 1650 50  0001 C CNN
	1    9550 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 60D3F528
P 9100 1650
F 0 "H5" H 9200 1699 50  0000 L CNN
F 1 "OLED SCL" H 9200 1608 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 9100 1650 50  0001 C CNN
F 3 "~" H 9100 1650 50  0001 C CNN
	1    9100 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 60D3FAC6
P 8600 1650
F 0 "H6" H 8700 1699 50  0000 L CNN
F 1 "OLED SDA" H 8700 1608 50  0000 L CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 8600 1650 50  0001 C CNN
F 3 "~" H 8600 1650 50  0001 C CNN
	1    8600 1650
	1    0    0    -1  
$EndComp
Text Notes 6450 1600 1    50   ~ 0
VCC
Text Notes 6550 1600 1    50   ~ 0
IO
Text Notes 6650 1600 1    50   ~ 0
GND
Text Notes 6750 1600 1    50   ~ 0
Vin
Text Notes 6850 1600 1    50   ~ 0
GND
Wire Wire Line
	6700 1900 6700 3250
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 60D422EB
P 5650 3200
F 0 "H7" V 5887 3203 50  0000 C CNN
F 1 "Fan Vcc" V 5796 3203 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 5650 3200 50  0001 C CNN
F 3 "~" H 5650 3200 50  0001 C CNN
	1    5650 3200
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 60D428EF
P 5650 3500
F 0 "H8" V 5887 3503 50  0000 C CNN
F 1 "Fan GND" V 5796 3503 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 5650 3500 50  0001 C CNN
F 3 "~" H 5650 3500 50  0001 C CNN
	1    5650 3500
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 60D43409
P 5650 3850
F 0 "H9" V 5887 3853 50  0000 C CNN
F 1 "Fan IO" V 5796 3853 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.5sqmm_1x01_D0.9mm_OD2.1mm" H 5650 3850 50  0001 C CNN
F 3 "~" H 5650 3850 50  0001 C CNN
	1    5650 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3250 6450 2350
Wire Wire Line
	6450 2350 5750 2350
Wire Wire Line
	6450 3250 6700 3250
Connection ~ 6700 3250
Wire Wire Line
	6700 3250 6800 3250
Wire Wire Line
	6800 1900 6800 2300
Wire Wire Line
	6800 2300 9150 2300
Wire Wire Line
	9150 2300 9150 3050
Wire Wire Line
	9150 3050 8950 3050
Wire Wire Line
	7400 4400 6050 4400
Wire Wire Line
	6050 4400 6050 5000
Wire Wire Line
	7400 3900 6400 3900
Wire Wire Line
	6400 3900 6400 1900
Wire Wire Line
	7400 3650 7400 3900
Connection ~ 7400 3900
Wire Wire Line
	7400 3900 7400 4400
Wire Wire Line
	7500 3650 7500 4600
Wire Wire Line
	7500 4600 6350 4600
Wire Wire Line
	6350 4600 6350 4700
Wire Wire Line
	6600 4200 6600 2100
Wire Wire Line
	6600 2100 6500 2100
Wire Wire Line
	6500 2100 6500 1900
Wire Wire Line
	8800 4050 6100 4050
Wire Wire Line
	6100 4050 6100 3500
Wire Wire Line
	6100 3500 5750 3500
Wire Wire Line
	8800 3050 8800 2450
Wire Wire Line
	8800 2450 6200 2450
Wire Wire Line
	6200 2450 6200 2750
Wire Wire Line
	6200 2750 5750 2750
Connection ~ 8800 3050
Wire Wire Line
	10050 1750 10050 3150
Wire Wire Line
	10050 3150 8850 3150
Connection ~ 8800 3150
Wire Wire Line
	9550 1750 9550 2100
Wire Wire Line
	9550 2100 6650 2100
Wire Wire Line
	6650 2100 6650 2950
Wire Wire Line
	6200 2950 6200 3200
Wire Wire Line
	6200 3200 5750 3200
Wire Wire Line
	6200 2950 6650 2950
Connection ~ 6650 2950
Wire Wire Line
	6650 2950 6800 2950
Wire Wire Line
	8800 3150 8800 4050
Wire Wire Line
	5750 3850 5750 4000
Wire Wire Line
	5750 4000 8500 4000
Wire Wire Line
	8500 4000 8500 3650
Wire Wire Line
	6600 1900 6600 2000
Wire Wire Line
	6600 2000 8950 2000
Wire Wire Line
	8950 2000 8950 3050
Wire Wire Line
	8950 3050 8800 3050
Connection ~ 8950 3050
Wire Wire Line
	6600 4200 7600 4200
Wire Wire Line
	7600 4200 7600 3650
Wire Wire Line
	8600 1750 8200 1750
Wire Wire Line
	8200 1750 8200 2650
Wire Wire Line
	9100 1750 9100 2250
Wire Wire Line
	9100 2250 8300 2250
Wire Wire Line
	8300 2250 8300 2650
Wire Wire Line
	6650 5000 8850 5000
Wire Wire Line
	8850 5000 8850 3150
Wire Wire Line
	8850 3150 8800 3150
Connection ~ 8850 3150
$Comp
L Mechanical:MountingHole H12
U 1 1 60D5A137
P 10500 1350
F 0 "H12" H 10600 1396 50  0000 L CNN
F 1 "MountingHole" H 10600 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 10500 1350 50  0001 C CNN
F 3 "~" H 10500 1350 50  0001 C CNN
	1    10500 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H13
U 1 1 60D5A775
P 10550 5150
F 0 "H13" H 10650 5196 50  0000 L CNN
F 1 "MountingHole" H 10650 5105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 10550 5150 50  0001 C CNN
F 3 "~" H 10550 5150 50  0001 C CNN
	1    10550 5150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H11
U 1 1 60D5AF6D
P 4850 5150
F 0 "H11" H 4950 5196 50  0000 L CNN
F 1 "MountingHole" H 4950 5105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4850 5150 50  0001 C CNN
F 3 "~" H 4850 5150 50  0001 C CNN
	1    4850 5150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H10
U 1 1 60D5B4AA
P 4800 1400
F 0 "H10" H 4900 1446 50  0000 L CNN
F 1 "MountingHole" H 4900 1355 50  0000 L CNN
F 2 "MountingHole:MountingHole_3mm" H 4800 1400 50  0001 C CNN
F 3 "~" H 4800 1400 50  0001 C CNN
	1    4800 1400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
