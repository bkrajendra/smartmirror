EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SmartMirror v1.0.0"
Date "2021-06-16"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transformer:CST1 T?
U 1 1 60C9D442
P 1600 3450
F 0 "T?" V 1646 3406 50  0000 R CNN
F 1 "CST1" V 1555 3406 50  0000 R CNN
F 2 "Transformer_SMD:Transformer_Coilcraft_CST1" H 1600 3450 50  0001 C CNN
F 3 "https://www.coilcraft.com/pdfs/cst.pdf" H 1600 3450 50  0001 C CNN
	1    1600 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60CA3B85
P 1950 3450
F 0 "R?" H 2020 3496 50  0000 L CNN
F 1 "33" H 2020 3405 50  0000 L CNN
F 2 "" V 1880 3450 50  0001 C CNN
F 3 "~" H 1950 3450 50  0001 C CNN
	1    1950 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60CA5059
P 2250 3450
F 0 "R?" H 2320 3496 50  0000 L CNN
F 1 "10k" H 2320 3405 50  0000 L CNN
F 2 "" V 2180 3450 50  0001 C CNN
F 3 "~" H 2250 3450 50  0001 C CNN
	1    2250 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60CA5419
P 2250 4100
F 0 "R?" H 2320 4146 50  0000 L CNN
F 1 "10k" H 2320 4055 50  0000 L CNN
F 2 "" V 2180 4100 50  0001 C CNN
F 3 "~" H 2250 4100 50  0001 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60CA5A63
P 1950 4100
F 0 "C?" H 2065 4146 50  0000 L CNN
F 1 "10uf" H 2065 4055 50  0000 L CNN
F 2 "" H 1988 3950 50  0001 C CNN
F 3 "~" H 1950 4100 50  0001 C CNN
	1    1950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3750 1600 3950
Wire Wire Line
	1600 3950 1950 3950
Wire Wire Line
	1950 3600 1950 3950
Connection ~ 1950 3950
Wire Wire Line
	1950 4250 1950 4450
Wire Wire Line
	1950 4450 2100 4450
Wire Wire Line
	2250 4450 2250 4250
Wire Wire Line
	1950 3950 2250 3950
Connection ~ 2250 3950
$Comp
L power:+5V #PWR?
U 1 1 60CA7466
P 2250 2450
F 0 "#PWR?" H 2250 2300 50  0001 C CNN
F 1 "+5V" H 2265 2623 50  0000 C CNN
F 2 "" H 2250 2450 50  0001 C CNN
F 3 "" H 2250 2450 50  0001 C CNN
	1    2250 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CA7D2B
P 2100 4450
F 0 "#PWR?" H 2100 4200 50  0001 C CNN
F 1 "GND" H 2105 4277 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
Connection ~ 2100 4450
Wire Wire Line
	2100 4450 2250 4450
$Comp
L Analog_ADC:ADS1115IDGS U?
U 1 1 60CAEFC8
P 3700 2500
F 0 "U?" H 3700 3181 50  0000 C CNN
F 1 "ADS1115IDGS" H 3700 3090 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 3700 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 3650 1600 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CB04AB
P 3700 3000
F 0 "#PWR?" H 3700 2750 50  0001 C CNN
F 1 "GND" H 3705 2827 50  0000 C CNN
F 2 "" H 3700 3000 50  0001 C CNN
F 3 "" H 3700 3000 50  0001 C CNN
	1    3700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 2500 4300 2500
Wire Wire Line
	4100 2600 4300 2600
Text Label 4300 2500 0    50   ~ 0
SCL
Text Label 4300 2600 0    50   ~ 0
SDA
Text Label 6550 2850 0    50   ~ 0
SDA
Text Label 6550 2950 0    50   ~ 0
SCL
$Comp
L power:+5V #PWR?
U 1 1 60CB769B
P 4750 2050
F 0 "#PWR?" H 4750 1900 50  0001 C CNN
F 1 "+5V" H 4765 2223 50  0000 C CNN
F 2 "" H 4750 2050 50  0001 C CNN
F 3 "" H 4750 2050 50  0001 C CNN
	1    4750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2150 4750 2050
$Comp
L power:+3.3V #PWR?
U 1 1 60CB95CB
P 6300 2050
F 0 "#PWR?" H 6300 1900 50  0001 C CNN
F 1 "+3.3V" H 6315 2223 50  0000 C CNN
F 2 "" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60CB9EE8
P 4200 1900
F 0 "#PWR?" H 4200 1750 50  0001 C CNN
F 1 "+3.3V" H 4215 2073 50  0000 C CNN
F 2 "" H 4200 1900 50  0001 C CNN
F 3 "" H 4200 1900 50  0001 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2150 6300 2050
$Comp
L Sensor:DHT11 U?
U 1 1 60CBB416
P 3750 4250
F 0 "U?" H 3506 4296 50  0000 R CNN
F 1 "DHT11" H 3506 4205 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 3750 3850 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 3900 4500 50  0001 C CNN
	1    3750 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CBC3C6
P 3750 4600
F 0 "#PWR?" H 3750 4350 50  0001 C CNN
F 1 "GND" H 3755 4427 50  0000 C CNN
F 2 "" H 3750 4600 50  0001 C CNN
F 3 "" H 3750 4600 50  0001 C CNN
	1    3750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 4550 3750 4600
Wire Wire Line
	3700 2900 3700 3000
$Comp
L power:+3.3V #PWR?
U 1 1 60CBD2A9
P 3750 3800
F 0 "#PWR?" H 3750 3650 50  0001 C CNN
F 1 "+3.3V" H 3765 3973 50  0000 C CNN
F 2 "" H 3750 3800 50  0001 C CNN
F 3 "" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60CBE951
P 4100 4000
F 0 "R?" H 4170 4046 50  0000 L CNN
F 1 "4.7k" H 4170 3955 50  0000 L CNN
F 2 "" V 4030 4000 50  0001 C CNN
F 3 "~" H 4100 4000 50  0001 C CNN
	1    4100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3850 4100 3850
Wire Wire Line
	4050 4250 4100 4250
Wire Wire Line
	4100 4250 4100 4150
Wire Wire Line
	1600 2850 1600 3150
Wire Wire Line
	1600 2850 1950 2850
Wire Wire Line
	1950 2850 1950 3300
Wire Wire Line
	2250 3300 2250 2450
Wire Wire Line
	2250 3600 2250 3950
Wire Wire Line
	3750 3850 3750 3950
$Comp
L power:GND #PWR?
U 1 1 60CC9B0E
P 6100 4750
F 0 "#PWR?" H 6100 4500 50  0001 C CNN
F 1 "GND" H 6105 4577 50  0000 C CNN
F 2 "" H 6100 4750 50  0001 C CNN
F 3 "" H 6100 4750 50  0001 C CNN
	1    6100 4750
	1    0    0    -1  
$EndComp
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60CCB29F
P 9350 2400
F 0 "K?" H 9680 2446 50  0000 L CNN
F 1 "DIPxx-1Axx-11x" H 9680 2355 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9700 2350 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9350 2400 50  0001 C CNN
	1    9350 2400
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U?
U 1 1 60CCE1B2
P 8200 2300
F 0 "U?" H 8200 2625 50  0000 C CNN
F 1 "PC817" H 8200 2534 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8000 2100 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8200 2300 50  0001 L CNN
	1    8200 2300
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U?
U 1 1 60CD04FD
P 8200 3350
F 0 "U?" H 8200 3675 50  0000 C CNN
F 1 "PC817" H 8200 3584 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8000 3150 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8200 3350 50  0001 L CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U?
U 1 1 60CD198F
P 8200 4250
F 0 "U?" H 8200 4575 50  0000 C CNN
F 1 "PC817" H 8200 4484 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 8000 4050 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8200 4250 50  0001 L CNN
	1    8200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60CDBCED
P 7650 2200
F 0 "R?" V 7443 2200 50  0000 C CNN
F 1 "600" V 7534 2200 50  0000 C CNN
F 2 "" V 7580 2200 50  0001 C CNN
F 3 "~" H 7650 2200 50  0001 C CNN
	1    7650 2200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60CDCA8D
P 7650 3250
F 0 "R?" V 7443 3250 50  0000 C CNN
F 1 "600" V 7534 3250 50  0000 C CNN
F 2 "" V 7580 3250 50  0001 C CNN
F 3 "~" H 7650 3250 50  0001 C CNN
	1    7650 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60CDCED2
P 7650 4150
F 0 "R?" V 7443 4150 50  0000 C CNN
F 1 "600" V 7534 4150 50  0000 C CNN
F 2 "" V 7580 4150 50  0001 C CNN
F 3 "~" H 7650 4150 50  0001 C CNN
	1    7650 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CE0011
P 7850 2450
F 0 "#PWR?" H 7850 2200 50  0001 C CNN
F 1 "GND" H 7855 2277 50  0000 C CNN
F 2 "" H 7850 2450 50  0001 C CNN
F 3 "" H 7850 2450 50  0001 C CNN
	1    7850 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CE06CA
P 7850 3550
F 0 "#PWR?" H 7850 3300 50  0001 C CNN
F 1 "GND" H 7855 3377 50  0000 C CNN
F 2 "" H 7850 3550 50  0001 C CNN
F 3 "" H 7850 3550 50  0001 C CNN
	1    7850 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CE09E9
P 7850 4450
F 0 "#PWR?" H 7850 4200 50  0001 C CNN
F 1 "GND" H 7855 4277 50  0000 C CNN
F 2 "" H 7850 4450 50  0001 C CNN
F 3 "" H 7850 4450 50  0001 C CNN
	1    7850 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CE8C2C
P 9300 2750
F 0 "#PWR?" H 9300 2500 50  0001 C CNN
F 1 "GND" H 9305 2577 50  0000 C CNN
F 2 "" H 9300 2750 50  0001 C CNN
F 3 "" H 9300 2750 50  0001 C CNN
	1    9300 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CEA0C9
P 9300 3700
F 0 "#PWR?" H 9300 3450 50  0001 C CNN
F 1 "GND" H 9305 3527 50  0000 C CNN
F 2 "" H 9300 3700 50  0001 C CNN
F 3 "" H 9300 3700 50  0001 C CNN
	1    9300 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60CEA577
P 9300 4650
F 0 "#PWR?" H 9300 4400 50  0001 C CNN
F 1 "GND" H 9305 4477 50  0000 C CNN
F 2 "" H 9300 4650 50  0001 C CNN
F 3 "" H 9300 4650 50  0001 C CNN
	1    9300 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4600 9300 4600
Wire Wire Line
	9300 4600 9300 4650
Wire Wire Line
	9150 3650 9300 3650
Wire Wire Line
	9300 3650 9300 3700
Wire Wire Line
	9150 2700 9300 2700
Wire Wire Line
	9300 2700 9300 2750
$Comp
L power:+5V #PWR?
U 1 1 60CEF22C
P 8650 2050
F 0 "#PWR?" H 8650 1900 50  0001 C CNN
F 1 "+5V" H 8665 2223 50  0000 C CNN
F 2 "" H 8650 2050 50  0001 C CNN
F 3 "" H 8650 2050 50  0001 C CNN
	1    8650 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60CEF90B
P 8650 3050
F 0 "#PWR?" H 8650 2900 50  0001 C CNN
F 1 "+5V" H 8665 3223 50  0000 C CNN
F 2 "" H 8650 3050 50  0001 C CNN
F 3 "" H 8650 3050 50  0001 C CNN
	1    8650 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60CEFD64
P 8650 3950
F 0 "#PWR?" H 8650 3800 50  0001 C CNN
F 1 "+5V" H 8665 4123 50  0000 C CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
Wire Notes Line
	1100 1600 2700 1600
Wire Notes Line
	2700 1600 2700 4850
Wire Notes Line
	2700 4850 1100 4850
Wire Notes Line
	1100 4850 1100 1600
Text Notes 1150 1750 0    79   ~ 16
Current Transformer
Wire Notes Line
	3000 1600 3000 3450
Wire Notes Line
	3000 3450 4500 3450
Wire Notes Line
	4500 3450 4500 1600
Wire Notes Line
	4500 1600 3000 1600
Connection ~ 3700 3000
Wire Wire Line
	3700 3000 3700 3100
Wire Wire Line
	2400 2400 3300 2400
Wire Wire Line
	3700 2000 3700 1900
Wire Wire Line
	3700 1900 4200 1900
Wire Wire Line
	1950 2850 2400 2850
Wire Wire Line
	2400 2850 2400 2400
Connection ~ 1950 2850
Connection ~ 3750 4600
Wire Wire Line
	3750 4600 3750 4700
Wire Wire Line
	4100 4250 4450 4250
Wire Wire Line
	4450 4250 4450 3850
Wire Wire Line
	4450 3850 4800 3850
Connection ~ 4100 4250
Wire Notes Line
	3000 3550 4550 3550
Wire Notes Line
	4550 3550 4550 4850
Wire Notes Line
	4550 4850 3000 4850
Wire Notes Line
	3000 4850 3000 3550
Text Notes 3050 1750 0    79   ~ 16
ADC
Wire Wire Line
	3750 3800 3750 3850
Connection ~ 3750 3850
Text Notes 3050 3700 0    79   ~ 16
DHT11
Wire Wire Line
	5200 4750 5300 4750
Connection ~ 5300 4750
Wire Wire Line
	5800 4750 5900 4750
Connection ~ 5800 4750
Wire Wire Line
	5700 4750 5800 4750
Connection ~ 5700 4750
Wire Wire Line
	5600 4750 5700 4750
Connection ~ 5600 4750
Wire Wire Line
	5500 4750 5600 4750
Connection ~ 5500 4750
Wire Wire Line
	5400 2150 4750 2150
Wire Wire Line
	5500 2150 5400 2150
Connection ~ 5400 2150
Wire Wire Line
	5800 2150 6300 2150
Wire Wire Line
	5700 2150 5800 2150
Connection ~ 5800 2150
Wire Wire Line
	5400 4750 5500 4750
Wire Wire Line
	5300 4750 5400 4750
Connection ~ 5400 4750
$Comp
L Connector:Raspberry_Pi_2_3 J?
U 1 1 60CA90B6
P 5600 3450
F 0 "J?" H 5600 4931 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 5600 4840 50  0000 C CNN
F 2 "" H 5600 3450 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 5600 3450 50  0001 C CNN
	1    5600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4750 6100 4750
Wire Wire Line
	6100 4750 6100 4800
Connection ~ 5900 4750
Wire Notes Line
	4700 1600 4700 4850
Wire Notes Line
	4700 4850 6850 4850
Wire Notes Line
	6850 4850 6850 1600
Wire Notes Line
	6850 1600 4700 1600
Connection ~ 6100 4750
Wire Wire Line
	6400 3150 6900 3150
Wire Wire Line
	6900 3150 6900 2750
Wire Wire Line
	6900 2750 7250 2750
Wire Wire Line
	6400 3350 7150 3350
Wire Wire Line
	6400 2850 6550 2850
Wire Wire Line
	6400 2950 6550 2950
Wire Notes Line
	7100 1600 7100 4850
Wire Notes Line
	7100 4850 10600 4850
Wire Notes Line
	10600 4850 10600 1600
Wire Notes Line
	10600 1600 7100 1600
Wire Wire Line
	8500 2400 8850 2400
Wire Wire Line
	8850 2400 8850 2050
Wire Wire Line
	8850 2050 9150 2050
Wire Wire Line
	9150 2050 9150 2100
Wire Wire Line
	8650 2050 8650 2200
Wire Wire Line
	8650 2200 8500 2200
Wire Wire Line
	7250 2750 7250 2200
Wire Wire Line
	7250 2200 7500 2200
Wire Wire Line
	7800 2200 7900 2200
Wire Wire Line
	7850 2450 7850 2400
Wire Wire Line
	7850 2400 7900 2400
Wire Wire Line
	7850 4450 7850 4350
Wire Wire Line
	7850 4350 7900 4350
Wire Wire Line
	7800 4150 7900 4150
Wire Wire Line
	7150 3350 7150 4150
Wire Wire Line
	7150 4150 7500 4150
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60CCD832
P 9350 4300
F 0 "K?" H 9680 4346 50  0000 L CNN
F 1 "DIPxx-1Axx-11x" H 9680 4255 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9700 4250 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9350 4300 50  0001 C CNN
	1    9350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4350 8850 4350
Wire Wire Line
	8850 4350 8850 3950
Wire Wire Line
	8850 3950 9150 3950
Wire Wire Line
	9150 3950 9150 4000
Wire Wire Line
	8500 4150 8650 4150
Wire Wire Line
	8650 4150 8650 3950
Connection ~ 8650 3950
Wire Wire Line
	8650 3950 8650 3850
$Comp
L Relay:DIPxx-1Axx-11x K?
U 1 1 60CCCFD7
P 9350 3350
F 0 "K?" H 9680 3396 50  0000 L CNN
F 1 "DIPxx-1Axx-11x" H 9680 3305 50  0000 L CNN
F 2 "Relay_THT:Relay_StandexMeder_DIP_LowProfile" H 9700 3300 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9350 3350 50  0001 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8650 3250
Wire Wire Line
	8650 3250 8650 3050
Wire Wire Line
	8500 3450 8850 3450
Wire Wire Line
	8850 3450 8850 3000
Wire Wire Line
	8850 3000 9150 3000
Wire Wire Line
	9150 3000 9150 3050
Wire Wire Line
	7850 3550 7850 3450
Wire Wire Line
	7850 3450 7900 3450
Wire Wire Line
	6400 3250 7500 3250
Wire Wire Line
	7800 3250 7900 3250
Text Notes 4750 1750 0    79   ~ 16
Raspberry Pi 4 Model B
Text Notes 7150 1750 0    79   ~ 16
Relay Driver and Relays
Text Notes 9950 2200 0    50   ~ 0
Kitchen
Text Notes 9950 3150 0    50   ~ 0
Bedroom
Text Notes 9950 4150 0    50   ~ 0
Hall
Text Notes 7150 7000 0    236  ~ 47
SmartMirror v 1.0.0
$EndSCHEMATC
