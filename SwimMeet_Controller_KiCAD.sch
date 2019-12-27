EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Swim Meet Commander"
Date "2019-12-27"
Rev "2019-12-27"
Comp "Samm Du"
Comment1 "https://sammdu.com"
Comment2 "Creative Commons Attribution 4.0 International License"
Comment3 "for HY-TEK Swim Meet Manager Software"
Comment4 "Macro Keyboard"
$EndDescr
$Comp
L Digistump:Digispark_USB-A_16.5MHz U1
U 1 1 5E02D658
P 1800 1990
F 0 "U1" H 1858 2577 60  0000 C CNN
F 1 "Digispark_USB-A_16.5MHz" H 1858 2471 60  0000 C CNN
F 2 "Digistump:Digispark_USB-A" H 2550 2090 60  0001 L CNN
F 3 "http://digistump.com/products/1" H 2550 2190 60  0001 L CNN
F 4 "Integrated Circuits (ICs)" H 1800 2940 60  0001 L CNN "Category"
F 5 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589894" H 1800 3040 60  0001 L CNN "DK_Datasheet_Link"
F 6 "/product-detail/en/microchip-technology/ATTINY85-20SU/ATTINY85-20SU-ND/735470" H 1800 3140 60  0001 L CNN "DK_Detail_Page"
F 7 "IC MCU 8BIT 8KB FLASH 8SOIC" H 1800 3240 60  0001 L CNN "Description"
F 8 "Digispark" H 1800 3340 60  0001 L CNN "Manufacturer"
	1    1800 1990
	1    0    0    -1  
$EndComp
Text GLabel 1500 2790 3    80   Input ~ 0
GND
Wire Wire Line
	1500 2790 1500 2590
Text GLabel 1300 4590 3    80   Input ~ 0
5V
Wire Wire Line
	1300 3290 1300 2690
Wire Wire Line
	1300 2690 1400 2690
Wire Wire Line
	1400 2690 1400 2590
Text GLabel 5100 1790 0    80   Input ~ 0
GND
Text GLabel 5100 4390 0    80   Input ~ 0
5V
Wire Wire Line
	5600 1890 5600 1790
NoConn ~ 1600 2590
$Comp
L dk_Interface-I-O-Expanders:MCP23017-E_SO U2
U 1 1 5E076B20
P 5700 3490
F 0 "U2" H 5800 1560 60  0000 C CNN
F 1 "MCP23017-E_SO" H 5800 1670 60  0000 C CNN
F 2 "digikey-footprints:SOIC-28_W7.5mm" H 5900 3690 60  0001 L CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 5900 3790 60  0001 L CNN
F 4 "MCP23017-E/SO-ND" H 5900 3890 60  0001 L CNN "Digi-Key_PN"
F 5 "MCP23017-E/SO" H 5900 3990 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5900 4090 60  0001 L CNN "Category"
F 7 "Interface - I/O Expanders" H 5900 4190 60  0001 L CNN "Family"
F 8 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en023709" H 5900 4290 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/microchip-technology/MCP23017-E-SO/MCP23017-E-SO-ND/894271" H 5900 4390 60  0001 L CNN "DK_Detail_Page"
F 10 "IC I/O EXPANDER I2C 16B 28SOIC" H 5900 4490 60  0001 L CNN "Description"
F 11 "Microchip Technology" H 5900 4590 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5900 4690 60  0001 L CNN "Status"
	1    5700 3490
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 1790 5600 1790
Wire Wire Line
	6000 2390 6200 2390
Wire Wire Line
	6200 2390 6200 2190
Wire Wire Line
	6300 2390 6300 2490
Wire Wire Line
	6300 2490 6000 2490
Wire Wire Line
	5200 3890 5200 4390
Wire Wire Line
	5200 4390 5100 4390
Wire Wire Line
	5600 4290 5600 4390
Wire Wire Line
	5600 4390 5200 4390
Connection ~ 5200 4390
Wire Wire Line
	5600 1790 6100 1790
Wire Wire Line
	6100 1790 6100 2090
Wire Wire Line
	6100 2090 6000 2090
Connection ~ 5600 1790
Wire Wire Line
	6100 2090 6100 2190
Wire Wire Line
	6100 2190 6000 2190
Connection ~ 6100 2090
Wire Wire Line
	6100 2190 6100 2290
Wire Wire Line
	6100 2290 6000 2290
Connection ~ 6100 2190
NoConn ~ 5200 3690
NoConn ~ 5200 3790
Wire Wire Line
	6200 2190 6460 2190
Text GLabel 6460 2190 2    80   BiDi ~ 0
SCL
Wire Wire Line
	6460 2390 6300 2390
Text GLabel 6460 2390 2    80   BiDi ~ 0
SDA
Wire Wire Line
	2400 1990 2600 1990
Text GLabel 3100 1990 2    80   BiDi ~ 0
SCL
Wire Wire Line
	2400 2190 2900 2190
Text GLabel 3100 2190 2    80   BiDi ~ 0
SDA
$Comp
L SAMM_Misc:R_US R3
U 1 1 5E0AA561
P 2600 2190
F 0 "R3" H 2668 2236 50  0000 L CNN
F 1 "47k" H 2668 2145 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2530 2190 50  0001 C CNN
F 3 "~" H 2600 2190 50  0001 C CNN
	1    2600 2190
	1    0    0    -1  
$EndComp
Connection ~ 2600 1990
Wire Wire Line
	2600 1990 3100 1990
$Comp
L SAMM_Misc:R_US R4
U 1 1 5E0AAD92
P 2900 2390
F 0 "R4" H 2968 2436 50  0000 L CNN
F 1 "47k" H 2968 2345 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2830 2390 50  0001 C CNN
F 3 "~" H 2900 2390 50  0001 C CNN
	1    2900 2390
	1    0    0    -1  
$EndComp
Connection ~ 2900 2190
Wire Wire Line
	2900 2190 3100 2190
Text GLabel 2600 2690 3    80   Input ~ 0
5V
Wire Wire Line
	2600 2390 2600 2590
Wire Wire Line
	2900 2590 2600 2590
Connection ~ 2600 2590
Wire Wire Line
	2600 2590 2600 2690
Wire Wire Line
	1300 3690 1300 3890
$Comp
L Device:LED_Small D1
U 1 1 5E0C2E73
P 1500 3990
F 0 "D1" V 1546 3922 50  0000 R CNN
F 1 "LED_PWR" V 1455 3922 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" V 1500 3990 50  0001 C CNN
F 3 "~" V 1500 3990 50  0001 C CNN
	1    1500 3990
	0    -1   -1   0   
$EndComp
$Comp
L SAMM_Misc:R_US R1
U 1 1 5E0C439E
P 1500 4290
F 0 "R1" H 1568 4336 50  0000 L CNN
F 1 "1k" H 1568 4245 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 4290 50  0001 C CNN
F 3 "~" H 1500 4290 50  0001 C CNN
	1    1500 4290
	1    0    0    -1  
$EndComp
Text GLabel 1500 4590 3    80   Input ~ 0
GND
Wire Wire Line
	1500 4490 1500 4590
Wire Wire Line
	1500 3890 1300 3890
Connection ~ 1300 3890
Wire Wire Line
	1300 3890 1300 4590
$Comp
L SAMM_Misc:R_US R2
U 1 1 5E0CBACF
P 3200 1690
F 0 "R2" V 3300 1640 50  0000 L CNN
F 1 "1k" V 3080 1640 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3130 1690 50  0001 C CNN
F 3 "~" H 3200 1690 50  0001 C CNN
	1    3200 1690
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2400 1890 2600 1890
Text GLabel 3500 1690 2    80   Input ~ 0
GND
Wire Wire Line
	3500 1690 3400 1690
Wire Notes Line
	1000 4990 1000 1290
Wire Notes Line
	1000 1290 3900 1290
Wire Notes Line
	3900 1290 3900 4990
Wire Notes Line
	3900 4990 1000 4990
Text Notes 3800 4890 2    80   ~ 0
OUTPUTS:\n\n    [5V]\n    [GND]\n    [SCL]\n    [SDA]
$Comp
L Switch:SW_Push SW7
U 1 1 5E0F4EA8
P 7100 3490
F 0 "SW7" H 6900 3590 50  0000 C CNN
F 1 "KEY" H 7300 3590 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 7100 3690 50  0001 C CNN
F 3 "~" H 7100 3690 50  0001 C CNN
	1    7100 3490
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R11
U 1 1 5E0F4EAE
P 7100 3690
F 0 "R11" V 7000 3490 50  0000 L CNN
F 1 "1k" V 7000 3790 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 3690 50  0001 C CNN
F 3 "~" H 7100 3690 50  0001 C CNN
	1    7100 3690
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3690 6800 3690
Wire Wire Line
	6800 3690 6800 3490
Wire Wire Line
	6800 3490 6900 3490
Connection ~ 6800 3490
Text GLabel 7400 3690 2    80   Input ~ 0
5V
Wire Wire Line
	7400 3690 7300 3690
Text GLabel 7400 3490 2    80   Input ~ 0
GND
Wire Wire Line
	7400 3490 7300 3490
$Comp
L Switch:SW_Push SW5
U 1 1 5E262F57
P 7100 3990
F 0 "SW5" H 6900 4090 50  0000 C CNN
F 1 "KEY" H 7300 4090 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 7100 4190 50  0001 C CNN
F 3 "~" H 7100 4190 50  0001 C CNN
	1    7100 3990
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R9
U 1 1 5E262F5D
P 7100 4190
F 0 "R9" V 7000 3990 50  0000 L CNN
F 1 "1k" V 7000 4290 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 4190 50  0001 C CNN
F 3 "~" H 7100 4190 50  0001 C CNN
	1    7100 4190
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4190 6800 4190
Wire Wire Line
	6800 4190 6800 3990
Wire Wire Line
	6800 3990 6900 3990
Connection ~ 6800 3990
Text GLabel 7400 4190 2    80   Input ~ 0
5V
Wire Wire Line
	7400 4190 7300 4190
Text GLabel 7400 3990 2    80   Input ~ 0
GND
Wire Wire Line
	7400 3990 7300 3990
$Comp
L Switch:SW_Push SW3
U 1 1 5E26726B
P 7100 4490
F 0 "SW3" H 6900 4590 50  0000 C CNN
F 1 "KEY" H 7300 4590 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 7100 4690 50  0001 C CNN
F 3 "~" H 7100 4690 50  0001 C CNN
	1    7100 4490
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R7
U 1 1 5E267271
P 7100 4690
F 0 "R7" V 7000 4490 50  0000 L CNN
F 1 "1k" V 7000 4790 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 4690 50  0001 C CNN
F 3 "~" H 7100 4690 50  0001 C CNN
	1    7100 4690
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4690 6800 4690
Wire Wire Line
	6800 4690 6800 4490
Wire Wire Line
	6800 4490 6900 4490
Connection ~ 6800 4490
Text GLabel 7400 4690 2    80   Input ~ 0
5V
Wire Wire Line
	7400 4690 7300 4690
Text GLabel 7400 4490 2    80   Input ~ 0
GND
Wire Wire Line
	7400 4490 7300 4490
$Comp
L Switch:SW_Push SW1
U 1 1 5E267280
P 7100 4990
F 0 "SW1" H 6900 5090 50  0000 C CNN
F 1 "KEY" H 7300 5090 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 7100 5190 50  0001 C CNN
F 3 "~" H 7100 5190 50  0001 C CNN
	1    7100 4990
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R5
U 1 1 5E267286
P 7100 5190
F 0 "R5" V 7000 4990 50  0000 L CNN
F 1 "1k" V 7000 5290 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7030 5190 50  0001 C CNN
F 3 "~" H 7100 5190 50  0001 C CNN
	1    7100 5190
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 5190 6800 5190
Wire Wire Line
	6800 5190 6800 4990
Wire Wire Line
	6800 4990 6900 4990
Connection ~ 6800 4990
Text GLabel 7400 5190 2    80   Input ~ 0
5V
Wire Wire Line
	7400 5190 7300 5190
Text GLabel 7400 4990 2    80   Input ~ 0
GND
Wire Wire Line
	7400 4990 7300 4990
$Comp
L Switch:SW_Push SW6
U 1 1 5E26D5CD
P 8200 3790
F 0 "SW6" H 8000 3890 50  0000 C CNN
F 1 "KEY" H 8400 3890 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 3990 50  0001 C CNN
F 3 "~" H 8200 3990 50  0001 C CNN
	1    8200 3790
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R10
U 1 1 5E26D5D3
P 8200 3990
F 0 "R10" V 8100 3790 50  0000 L CNN
F 1 "1k" V 8100 4090 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 3990 50  0001 C CNN
F 3 "~" H 8200 3990 50  0001 C CNN
	1    8200 3990
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 3990 7900 3990
Wire Wire Line
	7900 3990 7900 3790
Wire Wire Line
	7900 3790 8000 3790
Connection ~ 7900 3790
Text GLabel 8500 3990 2    80   Input ~ 0
5V
Wire Wire Line
	8500 3990 8400 3990
Text GLabel 8500 3790 2    80   Input ~ 0
GND
Wire Wire Line
	8500 3790 8400 3790
$Comp
L Switch:SW_Push SW4
U 1 1 5E26D5E2
P 8200 4290
F 0 "SW4" H 8000 4390 50  0000 C CNN
F 1 "KEY" H 8400 4390 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 4490 50  0001 C CNN
F 3 "~" H 8200 4490 50  0001 C CNN
	1    8200 4290
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R8
U 1 1 5E26D5E8
P 8200 4490
F 0 "R8" V 8100 4290 50  0000 L CNN
F 1 "1k" V 8100 4590 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 4490 50  0001 C CNN
F 3 "~" H 8200 4490 50  0001 C CNN
	1    8200 4490
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4490 7900 4490
Wire Wire Line
	7900 4490 7900 4290
Wire Wire Line
	7900 4290 8000 4290
Connection ~ 7900 4290
Text GLabel 8500 4490 2    80   Input ~ 0
5V
Wire Wire Line
	8500 4490 8400 4490
Text GLabel 8500 4290 2    80   Input ~ 0
GND
Wire Wire Line
	8500 4290 8400 4290
$Comp
L Switch:SW_Push SW2
U 1 1 5E26D5F7
P 8200 4790
F 0 "SW2" H 8000 4890 50  0000 C CNN
F 1 "KEY" H 8400 4890 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 4990 50  0001 C CNN
F 3 "~" H 8200 4990 50  0001 C CNN
	1    8200 4790
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R6
U 1 1 5E26D5FD
P 8200 4990
F 0 "R6" V 8100 4790 50  0000 L CNN
F 1 "1k" V 8100 5090 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 4990 50  0001 C CNN
F 3 "~" H 8200 4990 50  0001 C CNN
	1    8200 4990
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 4990 7900 4990
Wire Wire Line
	7900 4990 7900 4790
Wire Wire Line
	7900 4790 8000 4790
Connection ~ 7900 4790
Text GLabel 8500 4990 2    80   Input ~ 0
5V
Wire Wire Line
	8500 4990 8400 4990
Text GLabel 8500 4790 2    80   Input ~ 0
GND
Wire Wire Line
	8500 4790 8400 4790
Wire Wire Line
	6000 3490 6800 3490
Wire Wire Line
	6000 3590 6700 3590
Wire Wire Line
	6700 3590 6700 3790
Wire Wire Line
	6700 3790 7900 3790
Wire Wire Line
	6000 3690 6600 3690
Wire Wire Line
	6600 3690 6600 3990
Wire Wire Line
	6600 3990 6800 3990
Wire Wire Line
	6000 3790 6500 3790
Wire Wire Line
	6500 3790 6500 4290
Wire Wire Line
	6500 4290 7900 4290
Wire Wire Line
	6000 3890 6400 3890
Wire Wire Line
	6400 3890 6400 4490
Wire Wire Line
	6400 4490 6800 4490
Wire Wire Line
	6000 3990 6300 3990
Wire Wire Line
	6300 3990 6300 4790
Wire Wire Line
	6300 4790 7900 4790
Wire Wire Line
	6000 4090 6200 4090
Wire Wire Line
	6200 4090 6200 4990
Wire Wire Line
	6200 4990 6800 4990
$Comp
L Switch:SW_Push SW12
U 1 1 5E2A1480
P 8200 1890
F 0 "SW12" H 8000 1990 50  0000 C CNN
F 1 "KEY" H 8400 1990 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 2090 50  0001 C CNN
F 3 "~" H 8200 2090 50  0001 C CNN
	1    8200 1890
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R16
U 1 1 5E2A1486
P 8200 2090
F 0 "R16" V 8100 1890 50  0000 L CNN
F 1 "1k" V 8100 2190 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 2090 50  0001 C CNN
F 3 "~" H 8200 2090 50  0001 C CNN
	1    8200 2090
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2090 7900 2090
Wire Wire Line
	7900 2090 7900 1890
Wire Wire Line
	7900 1890 8000 1890
Text GLabel 8500 2090 2    80   Input ~ 0
5V
Wire Wire Line
	8500 2090 8400 2090
Text GLabel 8500 1890 2    80   Input ~ 0
GND
Wire Wire Line
	8500 1890 8400 1890
$Comp
L Switch:SW_Push SW10
U 1 1 5E2A1494
P 8200 2390
F 0 "SW10" H 8000 2490 50  0000 C CNN
F 1 "KEY" H 8400 2490 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 2590 50  0001 C CNN
F 3 "~" H 8200 2590 50  0001 C CNN
	1    8200 2390
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R14
U 1 1 5E2A149A
P 8200 2590
F 0 "R14" V 8100 2390 50  0000 L CNN
F 1 "1k" V 8100 2690 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 2590 50  0001 C CNN
F 3 "~" H 8200 2590 50  0001 C CNN
	1    8200 2590
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 2590 7900 2590
Wire Wire Line
	7900 2590 7900 2390
Wire Wire Line
	7900 2390 8000 2390
Text GLabel 8500 2590 2    80   Input ~ 0
5V
Wire Wire Line
	8500 2590 8400 2590
Text GLabel 8500 2390 2    80   Input ~ 0
GND
Wire Wire Line
	8500 2390 8400 2390
$Comp
L Switch:SW_Push SW8
U 1 1 5E2A14A8
P 8200 2890
F 0 "SW8" H 8000 2990 50  0000 C CNN
F 1 "KEY" H 8400 2990 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 8200 3090 50  0001 C CNN
F 3 "~" H 8200 3090 50  0001 C CNN
	1    8200 2890
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R12
U 1 1 5E2A14AE
P 8200 3090
F 0 "R12" V 8100 2890 50  0000 L CNN
F 1 "1k" V 8100 3190 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8130 3090 50  0001 C CNN
F 3 "~" H 8200 3090 50  0001 C CNN
	1    8200 3090
	0    1    1    0   
$EndComp
Wire Wire Line
	8000 3090 7900 3090
Wire Wire Line
	7900 3090 7900 2890
Wire Wire Line
	7900 2890 8000 2890
Text GLabel 8500 3090 2    80   Input ~ 0
5V
Wire Wire Line
	8500 3090 8400 3090
Text GLabel 8500 2890 2    80   Input ~ 0
GND
Wire Wire Line
	8500 2890 8400 2890
$Comp
L Switch:SW_Push SW13
U 1 1 5E2A14D0
P 9300 1490
F 0 "SW13" H 9100 1590 50  0000 C CNN
F 1 "KEY" H 9500 1590 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 9300 1690 50  0001 C CNN
F 3 "~" H 9300 1690 50  0001 C CNN
	1    9300 1490
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R17
U 1 1 5E2A14D6
P 9300 1690
F 0 "R17" V 9200 1490 50  0000 L CNN
F 1 "1k" V 9200 1790 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 1690 50  0001 C CNN
F 3 "~" H 9300 1690 50  0001 C CNN
	1    9300 1690
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1690 9000 1490
Wire Wire Line
	9000 1490 9100 1490
Text GLabel 9600 1690 2    80   Input ~ 0
5V
Wire Wire Line
	9600 1690 9500 1690
Text GLabel 9600 1490 2    80   Input ~ 0
GND
Wire Wire Line
	9600 1490 9500 1490
$Comp
L Switch:SW_Push SW11
U 1 1 5E2A14E4
P 9300 1990
F 0 "SW11" H 9100 2090 50  0000 C CNN
F 1 "KEY" H 9500 2090 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 9300 2190 50  0001 C CNN
F 3 "~" H 9300 2190 50  0001 C CNN
	1    9300 1990
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R15
U 1 1 5E2A14EA
P 9300 2190
F 0 "R15" V 9200 1990 50  0000 L CNN
F 1 "1k" V 9200 2290 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 2190 50  0001 C CNN
F 3 "~" H 9300 2190 50  0001 C CNN
	1    9300 2190
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 2190 9000 2190
Wire Wire Line
	9000 2190 9000 1990
Wire Wire Line
	9000 1990 9100 1990
Text GLabel 9600 2190 2    80   Input ~ 0
5V
Wire Wire Line
	9600 2190 9500 2190
Text GLabel 9600 1990 2    80   Input ~ 0
GND
Wire Wire Line
	9600 1990 9500 1990
$Comp
L Switch:SW_Push SW9
U 1 1 5E2A14F8
P 9300 2490
F 0 "SW9" H 9100 2590 50  0000 C CNN
F 1 "KEY" H 9500 2590 50  0000 C CNN
F 2 "SAMM_Misc:SW_KeySwitch_KS1100_E-SWITCH" H 9300 2690 50  0001 C CNN
F 3 "~" H 9300 2690 50  0001 C CNN
	1    9300 2490
	1    0    0    -1  
$EndComp
$Comp
L SAMM_Misc:R_US R13
U 1 1 5E2A14FE
P 9300 2690
F 0 "R13" V 9200 2490 50  0000 L CNN
F 1 "1k" V 9200 2790 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 2690 50  0001 C CNN
F 3 "~" H 9300 2690 50  0001 C CNN
	1    9300 2690
	0    1    1    0   
$EndComp
Wire Wire Line
	9100 2690 9000 2690
Wire Wire Line
	9000 2690 9000 2490
Wire Wire Line
	9000 2490 9100 2490
Text GLabel 9600 2690 2    80   Input ~ 0
5V
Wire Wire Line
	9600 2690 9500 2690
Text GLabel 9600 2490 2    80   Input ~ 0
GND
Wire Wire Line
	9600 2490 9500 2490
Wire Wire Line
	9000 1690 9100 1690
Connection ~ 9000 1690
Wire Wire Line
	7400 1690 9000 1690
Wire Wire Line
	7400 2590 7400 1690
Wire Wire Line
	6000 2590 7400 2590
Connection ~ 7900 2090
Wire Wire Line
	7500 2090 7900 2090
Wire Wire Line
	7500 2690 7500 2090
Wire Wire Line
	6000 2690 7500 2690
Wire Wire Line
	7600 2790 6000 2790
Wire Wire Line
	7600 2190 7600 2790
Connection ~ 9000 2190
Wire Wire Line
	9000 2190 7600 2190
Connection ~ 7900 2590
Wire Wire Line
	7700 2590 7900 2590
Wire Wire Line
	7700 2890 7700 2590
Wire Wire Line
	6000 2890 7700 2890
Wire Wire Line
	7800 2990 6000 2990
Wire Wire Line
	7800 2690 7800 2990
Connection ~ 9000 2690
Wire Wire Line
	9000 2690 7800 2690
Connection ~ 7900 3090
Wire Wire Line
	7900 3090 6000 3090
Wire Notes Line
	8900 5390 6700 5390
Wire Notes Line
	6700 5390 6700 3290
Wire Notes Line
	7800 3290 7800 1290
Wire Notes Line
	7800 1290 10000 1290
Wire Notes Line
	10000 1290 10000 3290
Wire Notes Line
	6700 3290 10000 3290
Wire Notes Line
	3900 4090 3200 4090
Wire Notes Line
	3200 4090 3200 4990
Wire Notes Line
	8900 5090 7800 5090
Wire Notes Line
	7800 5090 7800 5390
Wire Notes Line
	10000 2990 8900 2990
Wire Notes Line
	8900 2990 8900 5390
Text Notes 8800 5290 2    60   ~ 0
Buttons 1-7 [7x]
Text Notes 9900 3190 2    60   ~ 0
Buttons 23-28 [6x]
NoConn ~ 6000 3390
NoConn ~ 6000 3190
NoConn ~ 6000 3290
Text Notes 2700 5290 2    80   ~ 16
Control Unit
Text Notes 8000 5690 2    80   ~ 16
Keys Unit
$Comp
L Device:LED_Small D2
U 1 1 5E0CB191
P 2900 1690
F 0 "D2" H 2900 1590 50  0000 C CNN
F 1 "LED_DATA" H 2900 1810 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" V 2900 1690 50  0001 C CNN
F 3 "~" V 2900 1690 50  0001 C CNN
	1    2900 1690
	-1   0    0    1   
$EndComp
NoConn ~ 2400 1690
NoConn ~ 2400 1790
NoConn ~ 2400 2090
$Comp
L SparkFun-Switches:ROCKER_SWITCH-SPST_PTH_RIGHT_ANGLE S1
U 1 1 5E057500
P 1300 3490
F 0 "S1" V 1300 3550 45  0000 L CNN
F 1 "Sparkfun Toggle Switch" V 1300 2660 45  0000 L CNN
F 2 "spk_Switches:TOGGLE_PANEL_COM-09276" H 1300 3690 20  0001 C CNN
F 3 "" H 1300 3490 50  0001 C CNN
F 4 "SWCH-08863" V 1420 2790 60  0001 L CNN "Field4"
	1    1300 3490
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1890 2600 1690
Wire Wire Line
	2600 1690 2800 1690
$EndSCHEMATC