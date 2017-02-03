                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
                              4 ; This file was generated Fri Feb 03 00:37:36 2017
                              5 ;--------------------------------------------------------
                              6 	.module mdrip
                              7 	.optsdcc -mmcs51 --model-medium
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _configBt
                             14 	.globl _setADCInputs
                             15 	.globl _get_packet
                             16 	.globl _delayFor
                             17 	.globl _WaitForPacket
                             18 	.globl _strobe_radio
                             19 	.globl _swap_channel
                             20 	.globl _printfUSB
                             21 	.globl _goToSleep
                             22 	.globl _killWithWatchdog
                             23 	.globl _reset_offsets
                             24 	.globl _makeAllOutputsLow
                             25 	.globl _makeAllOutputs
                             26 	.globl _print_packet
                             27 	.globl _getFonaGPS
                             28 	.globl _getFonaMillivolts
                             29 	.globl _fonaConnect
                             30 	.globl _fonaDisable
                             31 	.globl _enableFona
                             32 	.globl _configFona
                             33 	.globl _sendAT
                             34 	.globl _getFonaString
                             35 	.globl _initUart1
                             36 	.globl _doServices
                             37 	.globl _clearRxErrors
                             38 	.globl _dexcom_src_to_ascii
                             39 	.globl _dex_num_decoder
                             40 	.globl _bit_reverse_bytes
                             41 	.globl _min8
                             42 	.globl _bit_reverse_byte
                             43 	.globl _getPacketPassedChecksum
                             44 	.globl _blink_red_led
                             45 	.globl _blink_yellow_led
                             46 	.globl _uartDisable
                             47 	.globl _uartEnable
                             48 	.globl _switchToRCOSC
                             49 	.globl _ISR_ST
                             50 	.globl _sleepInit
                             51 	.globl _AES128_CBC_encrypt_buffer
                             52 	.globl _adcSetMillivoltCalibration
                             53 	.globl _adcReadVddMillivolts
                             54 	.globl _strlen
                             55 	.globl _memset
                             56 	.globl _strcmp
                             57 	.globl _strcat
                             58 	.globl _strcpy
                             59 	.globl _memcpy
                             60 	.globl _sprintf
                             61 	.globl _printf
                             62 	.globl _uart1RxReceiveByte
                             63 	.globl _uart1RxAvailable
                             64 	.globl _uart1TxSendByte
                             65 	.globl _uart1TxAvailable
                             66 	.globl _uart1SetBaudRate
                             67 	.globl _uart1Init
                             68 	.globl _setDigitalOutput
                             69 	.globl _radioQueueRxDoneWithPacket
                             70 	.globl _radioQueueRxCurrentPacket
                             71 	.globl _radioQueueInit
                             72 	.globl _radioMacResume
                             73 	.globl _radioMacSleep
                             74 	.globl _radioMacStrobe
                             75 	.globl _radioMacInit
                             76 	.globl _radioCrcPassed
                             77 	.globl _usbComTxSend
                             78 	.globl _usbComTxSendByte
                             79 	.globl _usbComTxAvailable
                             80 	.globl _usbComService
                             81 	.globl _usbShowStatusWithGreenLed
                             82 	.globl _delayMs
                             83 	.globl _getMs
                             84 	.globl _disableUsbPullup
                             85 	.globl _enableUsbPullup
                             86 	.globl _usbPowerPresent
                             87 	.globl _boardService
                             88 	.globl _boardClockInit
                             89 	.globl _systemInit
                             90 	.globl _SrcNameTable
                             91 	.globl _AT_TIMEOUT
                             92 	.globl _dmaDesc
                             93 	.globl _PM2_BUF
                             94 	.globl _WaitForPacket_PARM_3
                             95 	.globl _swap_channel_PARM_2
                             96 	.globl _dexcom_src_to_ascii_PARM_2
                             97 	.globl _WaitForPacket_PARM_2
                             98 	.globl _bit_reverse_bytes_PARM_2
                             99 	.globl _min8_PARM_2
                            100 	.globl _intMaxStrLen
                            101 	.globl _sequential_missed_packets
                            102 	.globl _usbEnabled
                            103 	.globl _needsTimingCalibration
                            104 	.globl _getSrcValue
                            105 	.globl _putchar
                            106 ;--------------------------------------------------------
                            107 ; special function registers
                            108 ;--------------------------------------------------------
                            109 	.area RSEG    (ABS,DATA)
   0000                     110 	.org 0x0000
                    0080    111 Fmdrip$P0$0$0 == 0x0080
                    0080    112 _P0	=	0x0080
                    0081    113 Fmdrip$SP$0$0 == 0x0081
                    0081    114 _SP	=	0x0081
                    0082    115 Fmdrip$DPL0$0$0 == 0x0082
                    0082    116 _DPL0	=	0x0082
                    0083    117 Fmdrip$DPH0$0$0 == 0x0083
                    0083    118 _DPH0	=	0x0083
                    0084    119 Fmdrip$DPL1$0$0 == 0x0084
                    0084    120 _DPL1	=	0x0084
                    0085    121 Fmdrip$DPH1$0$0 == 0x0085
                    0085    122 _DPH1	=	0x0085
                    0086    123 Fmdrip$U0CSR$0$0 == 0x0086
                    0086    124 _U0CSR	=	0x0086
                    0087    125 Fmdrip$PCON$0$0 == 0x0087
                    0087    126 _PCON	=	0x0087
                    0088    127 Fmdrip$TCON$0$0 == 0x0088
                    0088    128 _TCON	=	0x0088
                    0089    129 Fmdrip$P0IFG$0$0 == 0x0089
                    0089    130 _P0IFG	=	0x0089
                    008A    131 Fmdrip$P1IFG$0$0 == 0x008a
                    008A    132 _P1IFG	=	0x008a
                    008B    133 Fmdrip$P2IFG$0$0 == 0x008b
                    008B    134 _P2IFG	=	0x008b
                    008C    135 Fmdrip$PICTL$0$0 == 0x008c
                    008C    136 _PICTL	=	0x008c
                    008D    137 Fmdrip$P1IEN$0$0 == 0x008d
                    008D    138 _P1IEN	=	0x008d
                    008F    139 Fmdrip$P0INP$0$0 == 0x008f
                    008F    140 _P0INP	=	0x008f
                    0090    141 Fmdrip$P1$0$0 == 0x0090
                    0090    142 _P1	=	0x0090
                    0091    143 Fmdrip$RFIM$0$0 == 0x0091
                    0091    144 _RFIM	=	0x0091
                    0092    145 Fmdrip$DPS$0$0 == 0x0092
                    0092    146 _DPS	=	0x0092
                    0093    147 Fmdrip$MPAGE$0$0 == 0x0093
                    0093    148 _MPAGE	=	0x0093
                    0095    149 Fmdrip$ENDIAN$0$0 == 0x0095
                    0095    150 _ENDIAN	=	0x0095
                    0098    151 Fmdrip$S0CON$0$0 == 0x0098
                    0098    152 _S0CON	=	0x0098
                    009A    153 Fmdrip$IEN2$0$0 == 0x009a
                    009A    154 _IEN2	=	0x009a
                    009B    155 Fmdrip$S1CON$0$0 == 0x009b
                    009B    156 _S1CON	=	0x009b
                    009C    157 Fmdrip$T2CT$0$0 == 0x009c
                    009C    158 _T2CT	=	0x009c
                    009D    159 Fmdrip$T2PR$0$0 == 0x009d
                    009D    160 _T2PR	=	0x009d
                    009E    161 Fmdrip$T2CTL$0$0 == 0x009e
                    009E    162 _T2CTL	=	0x009e
                    00A0    163 Fmdrip$P2$0$0 == 0x00a0
                    00A0    164 _P2	=	0x00a0
                    00A1    165 Fmdrip$WORIRQ$0$0 == 0x00a1
                    00A1    166 _WORIRQ	=	0x00a1
                    00A2    167 Fmdrip$WORCTRL$0$0 == 0x00a2
                    00A2    168 _WORCTRL	=	0x00a2
                    00A3    169 Fmdrip$WOREVT0$0$0 == 0x00a3
                    00A3    170 _WOREVT0	=	0x00a3
                    00A4    171 Fmdrip$WOREVT1$0$0 == 0x00a4
                    00A4    172 _WOREVT1	=	0x00a4
                    00A5    173 Fmdrip$WORTIME0$0$0 == 0x00a5
                    00A5    174 _WORTIME0	=	0x00a5
                    00A6    175 Fmdrip$WORTIME1$0$0 == 0x00a6
                    00A6    176 _WORTIME1	=	0x00a6
                    00A8    177 Fmdrip$IEN0$0$0 == 0x00a8
                    00A8    178 _IEN0	=	0x00a8
                    00A9    179 Fmdrip$IP0$0$0 == 0x00a9
                    00A9    180 _IP0	=	0x00a9
                    00AB    181 Fmdrip$FWT$0$0 == 0x00ab
                    00AB    182 _FWT	=	0x00ab
                    00AC    183 Fmdrip$FADDRL$0$0 == 0x00ac
                    00AC    184 _FADDRL	=	0x00ac
                    00AD    185 Fmdrip$FADDRH$0$0 == 0x00ad
                    00AD    186 _FADDRH	=	0x00ad
                    00AE    187 Fmdrip$FCTL$0$0 == 0x00ae
                    00AE    188 _FCTL	=	0x00ae
                    00AF    189 Fmdrip$FWDATA$0$0 == 0x00af
                    00AF    190 _FWDATA	=	0x00af
                    00B1    191 Fmdrip$ENCDI$0$0 == 0x00b1
                    00B1    192 _ENCDI	=	0x00b1
                    00B2    193 Fmdrip$ENCDO$0$0 == 0x00b2
                    00B2    194 _ENCDO	=	0x00b2
                    00B3    195 Fmdrip$ENCCS$0$0 == 0x00b3
                    00B3    196 _ENCCS	=	0x00b3
                    00B4    197 Fmdrip$ADCCON1$0$0 == 0x00b4
                    00B4    198 _ADCCON1	=	0x00b4
                    00B5    199 Fmdrip$ADCCON2$0$0 == 0x00b5
                    00B5    200 _ADCCON2	=	0x00b5
                    00B6    201 Fmdrip$ADCCON3$0$0 == 0x00b6
                    00B6    202 _ADCCON3	=	0x00b6
                    00B8    203 Fmdrip$IEN1$0$0 == 0x00b8
                    00B8    204 _IEN1	=	0x00b8
                    00B9    205 Fmdrip$IP1$0$0 == 0x00b9
                    00B9    206 _IP1	=	0x00b9
                    00BA    207 Fmdrip$ADCL$0$0 == 0x00ba
                    00BA    208 _ADCL	=	0x00ba
                    00BB    209 Fmdrip$ADCH$0$0 == 0x00bb
                    00BB    210 _ADCH	=	0x00bb
                    00BC    211 Fmdrip$RNDL$0$0 == 0x00bc
                    00BC    212 _RNDL	=	0x00bc
                    00BD    213 Fmdrip$RNDH$0$0 == 0x00bd
                    00BD    214 _RNDH	=	0x00bd
                    00BE    215 Fmdrip$SLEEP$0$0 == 0x00be
                    00BE    216 _SLEEP	=	0x00be
                    00C0    217 Fmdrip$IRCON$0$0 == 0x00c0
                    00C0    218 _IRCON	=	0x00c0
                    00C1    219 Fmdrip$U0DBUF$0$0 == 0x00c1
                    00C1    220 _U0DBUF	=	0x00c1
                    00C2    221 Fmdrip$U0BAUD$0$0 == 0x00c2
                    00C2    222 _U0BAUD	=	0x00c2
                    00C4    223 Fmdrip$U0UCR$0$0 == 0x00c4
                    00C4    224 _U0UCR	=	0x00c4
                    00C5    225 Fmdrip$U0GCR$0$0 == 0x00c5
                    00C5    226 _U0GCR	=	0x00c5
                    00C6    227 Fmdrip$CLKCON$0$0 == 0x00c6
                    00C6    228 _CLKCON	=	0x00c6
                    00C7    229 Fmdrip$MEMCTR$0$0 == 0x00c7
                    00C7    230 _MEMCTR	=	0x00c7
                    00C9    231 Fmdrip$WDCTL$0$0 == 0x00c9
                    00C9    232 _WDCTL	=	0x00c9
                    00CA    233 Fmdrip$T3CNT$0$0 == 0x00ca
                    00CA    234 _T3CNT	=	0x00ca
                    00CB    235 Fmdrip$T3CTL$0$0 == 0x00cb
                    00CB    236 _T3CTL	=	0x00cb
                    00CC    237 Fmdrip$T3CCTL0$0$0 == 0x00cc
                    00CC    238 _T3CCTL0	=	0x00cc
                    00CD    239 Fmdrip$T3CC0$0$0 == 0x00cd
                    00CD    240 _T3CC0	=	0x00cd
                    00CE    241 Fmdrip$T3CCTL1$0$0 == 0x00ce
                    00CE    242 _T3CCTL1	=	0x00ce
                    00CF    243 Fmdrip$T3CC1$0$0 == 0x00cf
                    00CF    244 _T3CC1	=	0x00cf
                    00D0    245 Fmdrip$PSW$0$0 == 0x00d0
                    00D0    246 _PSW	=	0x00d0
                    00D1    247 Fmdrip$DMAIRQ$0$0 == 0x00d1
                    00D1    248 _DMAIRQ	=	0x00d1
                    00D2    249 Fmdrip$DMA1CFGL$0$0 == 0x00d2
                    00D2    250 _DMA1CFGL	=	0x00d2
                    00D3    251 Fmdrip$DMA1CFGH$0$0 == 0x00d3
                    00D3    252 _DMA1CFGH	=	0x00d3
                    00D4    253 Fmdrip$DMA0CFGL$0$0 == 0x00d4
                    00D4    254 _DMA0CFGL	=	0x00d4
                    00D5    255 Fmdrip$DMA0CFGH$0$0 == 0x00d5
                    00D5    256 _DMA0CFGH	=	0x00d5
                    00D6    257 Fmdrip$DMAARM$0$0 == 0x00d6
                    00D6    258 _DMAARM	=	0x00d6
                    00D7    259 Fmdrip$DMAREQ$0$0 == 0x00d7
                    00D7    260 _DMAREQ	=	0x00d7
                    00D8    261 Fmdrip$TIMIF$0$0 == 0x00d8
                    00D8    262 _TIMIF	=	0x00d8
                    00D9    263 Fmdrip$RFD$0$0 == 0x00d9
                    00D9    264 _RFD	=	0x00d9
                    00DA    265 Fmdrip$T1CC0L$0$0 == 0x00da
                    00DA    266 _T1CC0L	=	0x00da
                    00DB    267 Fmdrip$T1CC0H$0$0 == 0x00db
                    00DB    268 _T1CC0H	=	0x00db
                    00DC    269 Fmdrip$T1CC1L$0$0 == 0x00dc
                    00DC    270 _T1CC1L	=	0x00dc
                    00DD    271 Fmdrip$T1CC1H$0$0 == 0x00dd
                    00DD    272 _T1CC1H	=	0x00dd
                    00DE    273 Fmdrip$T1CC2L$0$0 == 0x00de
                    00DE    274 _T1CC2L	=	0x00de
                    00DF    275 Fmdrip$T1CC2H$0$0 == 0x00df
                    00DF    276 _T1CC2H	=	0x00df
                    00E0    277 Fmdrip$ACC$0$0 == 0x00e0
                    00E0    278 _ACC	=	0x00e0
                    00E1    279 Fmdrip$RFST$0$0 == 0x00e1
                    00E1    280 _RFST	=	0x00e1
                    00E2    281 Fmdrip$T1CNTL$0$0 == 0x00e2
                    00E2    282 _T1CNTL	=	0x00e2
                    00E3    283 Fmdrip$T1CNTH$0$0 == 0x00e3
                    00E3    284 _T1CNTH	=	0x00e3
                    00E4    285 Fmdrip$T1CTL$0$0 == 0x00e4
                    00E4    286 _T1CTL	=	0x00e4
                    00E5    287 Fmdrip$T1CCTL0$0$0 == 0x00e5
                    00E5    288 _T1CCTL0	=	0x00e5
                    00E6    289 Fmdrip$T1CCTL1$0$0 == 0x00e6
                    00E6    290 _T1CCTL1	=	0x00e6
                    00E7    291 Fmdrip$T1CCTL2$0$0 == 0x00e7
                    00E7    292 _T1CCTL2	=	0x00e7
                    00E8    293 Fmdrip$IRCON2$0$0 == 0x00e8
                    00E8    294 _IRCON2	=	0x00e8
                    00E9    295 Fmdrip$RFIF$0$0 == 0x00e9
                    00E9    296 _RFIF	=	0x00e9
                    00EA    297 Fmdrip$T4CNT$0$0 == 0x00ea
                    00EA    298 _T4CNT	=	0x00ea
                    00EB    299 Fmdrip$T4CTL$0$0 == 0x00eb
                    00EB    300 _T4CTL	=	0x00eb
                    00EC    301 Fmdrip$T4CCTL0$0$0 == 0x00ec
                    00EC    302 _T4CCTL0	=	0x00ec
                    00ED    303 Fmdrip$T4CC0$0$0 == 0x00ed
                    00ED    304 _T4CC0	=	0x00ed
                    00EE    305 Fmdrip$T4CCTL1$0$0 == 0x00ee
                    00EE    306 _T4CCTL1	=	0x00ee
                    00EF    307 Fmdrip$T4CC1$0$0 == 0x00ef
                    00EF    308 _T4CC1	=	0x00ef
                    00F0    309 Fmdrip$B$0$0 == 0x00f0
                    00F0    310 _B	=	0x00f0
                    00F1    311 Fmdrip$PERCFG$0$0 == 0x00f1
                    00F1    312 _PERCFG	=	0x00f1
                    00F2    313 Fmdrip$ADCCFG$0$0 == 0x00f2
                    00F2    314 _ADCCFG	=	0x00f2
                    00F3    315 Fmdrip$P0SEL$0$0 == 0x00f3
                    00F3    316 _P0SEL	=	0x00f3
                    00F4    317 Fmdrip$P1SEL$0$0 == 0x00f4
                    00F4    318 _P1SEL	=	0x00f4
                    00F5    319 Fmdrip$P2SEL$0$0 == 0x00f5
                    00F5    320 _P2SEL	=	0x00f5
                    00F6    321 Fmdrip$P1INP$0$0 == 0x00f6
                    00F6    322 _P1INP	=	0x00f6
                    00F7    323 Fmdrip$P2INP$0$0 == 0x00f7
                    00F7    324 _P2INP	=	0x00f7
                    00F8    325 Fmdrip$U1CSR$0$0 == 0x00f8
                    00F8    326 _U1CSR	=	0x00f8
                    00F9    327 Fmdrip$U1DBUF$0$0 == 0x00f9
                    00F9    328 _U1DBUF	=	0x00f9
                    00FA    329 Fmdrip$U1BAUD$0$0 == 0x00fa
                    00FA    330 _U1BAUD	=	0x00fa
                    00FB    331 Fmdrip$U1UCR$0$0 == 0x00fb
                    00FB    332 _U1UCR	=	0x00fb
                    00FC    333 Fmdrip$U1GCR$0$0 == 0x00fc
                    00FC    334 _U1GCR	=	0x00fc
                    00FD    335 Fmdrip$P0DIR$0$0 == 0x00fd
                    00FD    336 _P0DIR	=	0x00fd
                    00FE    337 Fmdrip$P1DIR$0$0 == 0x00fe
                    00FE    338 _P1DIR	=	0x00fe
                    00FF    339 Fmdrip$P2DIR$0$0 == 0x00ff
                    00FF    340 _P2DIR	=	0x00ff
                    FFFFD5D4    341 Fmdrip$DMA0CFG$0$0 == 0xffffd5d4
                    FFFFD5D4    342 _DMA0CFG	=	0xffffd5d4
                    FFFFD3D2    343 Fmdrip$DMA1CFG$0$0 == 0xffffd3d2
                    FFFFD3D2    344 _DMA1CFG	=	0xffffd3d2
                    FFFFADAC    345 Fmdrip$FADDR$0$0 == 0xffffadac
                    FFFFADAC    346 _FADDR	=	0xffffadac
                    FFFFBBBA    347 Fmdrip$ADC$0$0 == 0xffffbbba
                    FFFFBBBA    348 _ADC	=	0xffffbbba
                    FFFFDBDA    349 Fmdrip$T1CC0$0$0 == 0xffffdbda
                    FFFFDBDA    350 _T1CC0	=	0xffffdbda
                    FFFFDDDC    351 Fmdrip$T1CC1$0$0 == 0xffffdddc
                    FFFFDDDC    352 _T1CC1	=	0xffffdddc
                    FFFFDFDE    353 Fmdrip$T1CC2$0$0 == 0xffffdfde
                    FFFFDFDE    354 _T1CC2	=	0xffffdfde
                            355 ;--------------------------------------------------------
                            356 ; special function bits
                            357 ;--------------------------------------------------------
                            358 	.area RSEG    (ABS,DATA)
   0000                     359 	.org 0x0000
                    0080    360 Fmdrip$P0_0$0$0 == 0x0080
                    0080    361 _P0_0	=	0x0080
                    0081    362 Fmdrip$P0_1$0$0 == 0x0081
                    0081    363 _P0_1	=	0x0081
                    0082    364 Fmdrip$P0_2$0$0 == 0x0082
                    0082    365 _P0_2	=	0x0082
                    0083    366 Fmdrip$P0_3$0$0 == 0x0083
                    0083    367 _P0_3	=	0x0083
                    0084    368 Fmdrip$P0_4$0$0 == 0x0084
                    0084    369 _P0_4	=	0x0084
                    0085    370 Fmdrip$P0_5$0$0 == 0x0085
                    0085    371 _P0_5	=	0x0085
                    0086    372 Fmdrip$P0_6$0$0 == 0x0086
                    0086    373 _P0_6	=	0x0086
                    0087    374 Fmdrip$P0_7$0$0 == 0x0087
                    0087    375 _P0_7	=	0x0087
                    0088    376 Fmdrip$_TCON_0$0$0 == 0x0088
                    0088    377 __TCON_0	=	0x0088
                    0089    378 Fmdrip$RFTXRXIF$0$0 == 0x0089
                    0089    379 _RFTXRXIF	=	0x0089
                    008A    380 Fmdrip$_TCON_2$0$0 == 0x008a
                    008A    381 __TCON_2	=	0x008a
                    008B    382 Fmdrip$URX0IF$0$0 == 0x008b
                    008B    383 _URX0IF	=	0x008b
                    008C    384 Fmdrip$_TCON_4$0$0 == 0x008c
                    008C    385 __TCON_4	=	0x008c
                    008D    386 Fmdrip$ADCIF$0$0 == 0x008d
                    008D    387 _ADCIF	=	0x008d
                    008E    388 Fmdrip$_TCON_6$0$0 == 0x008e
                    008E    389 __TCON_6	=	0x008e
                    008F    390 Fmdrip$URX1IF$0$0 == 0x008f
                    008F    391 _URX1IF	=	0x008f
                    0090    392 Fmdrip$P1_0$0$0 == 0x0090
                    0090    393 _P1_0	=	0x0090
                    0091    394 Fmdrip$P1_1$0$0 == 0x0091
                    0091    395 _P1_1	=	0x0091
                    0092    396 Fmdrip$P1_2$0$0 == 0x0092
                    0092    397 _P1_2	=	0x0092
                    0093    398 Fmdrip$P1_3$0$0 == 0x0093
                    0093    399 _P1_3	=	0x0093
                    0094    400 Fmdrip$P1_4$0$0 == 0x0094
                    0094    401 _P1_4	=	0x0094
                    0095    402 Fmdrip$P1_5$0$0 == 0x0095
                    0095    403 _P1_5	=	0x0095
                    0096    404 Fmdrip$P1_6$0$0 == 0x0096
                    0096    405 _P1_6	=	0x0096
                    0097    406 Fmdrip$P1_7$0$0 == 0x0097
                    0097    407 _P1_7	=	0x0097
                    0098    408 Fmdrip$ENCIF_0$0$0 == 0x0098
                    0098    409 _ENCIF_0	=	0x0098
                    0099    410 Fmdrip$ENCIF_1$0$0 == 0x0099
                    0099    411 _ENCIF_1	=	0x0099
                    009A    412 Fmdrip$_SOCON2$0$0 == 0x009a
                    009A    413 __SOCON2	=	0x009a
                    009B    414 Fmdrip$_SOCON3$0$0 == 0x009b
                    009B    415 __SOCON3	=	0x009b
                    009C    416 Fmdrip$_SOCON4$0$0 == 0x009c
                    009C    417 __SOCON4	=	0x009c
                    009D    418 Fmdrip$_SOCON5$0$0 == 0x009d
                    009D    419 __SOCON5	=	0x009d
                    009E    420 Fmdrip$_SOCON6$0$0 == 0x009e
                    009E    421 __SOCON6	=	0x009e
                    009F    422 Fmdrip$_SOCON7$0$0 == 0x009f
                    009F    423 __SOCON7	=	0x009f
                    00A0    424 Fmdrip$P2_0$0$0 == 0x00a0
                    00A0    425 _P2_0	=	0x00a0
                    00A1    426 Fmdrip$P2_1$0$0 == 0x00a1
                    00A1    427 _P2_1	=	0x00a1
                    00A2    428 Fmdrip$P2_2$0$0 == 0x00a2
                    00A2    429 _P2_2	=	0x00a2
                    00A3    430 Fmdrip$P2_3$0$0 == 0x00a3
                    00A3    431 _P2_3	=	0x00a3
                    00A4    432 Fmdrip$P2_4$0$0 == 0x00a4
                    00A4    433 _P2_4	=	0x00a4
                    00A5    434 Fmdrip$P2_5$0$0 == 0x00a5
                    00A5    435 _P2_5	=	0x00a5
                    00A6    436 Fmdrip$P2_6$0$0 == 0x00a6
                    00A6    437 _P2_6	=	0x00a6
                    00A7    438 Fmdrip$P2_7$0$0 == 0x00a7
                    00A7    439 _P2_7	=	0x00a7
                    00A8    440 Fmdrip$RFTXRXIE$0$0 == 0x00a8
                    00A8    441 _RFTXRXIE	=	0x00a8
                    00A9    442 Fmdrip$ADCIE$0$0 == 0x00a9
                    00A9    443 _ADCIE	=	0x00a9
                    00AA    444 Fmdrip$URX0IE$0$0 == 0x00aa
                    00AA    445 _URX0IE	=	0x00aa
                    00AB    446 Fmdrip$URX1IE$0$0 == 0x00ab
                    00AB    447 _URX1IE	=	0x00ab
                    00AC    448 Fmdrip$ENCIE$0$0 == 0x00ac
                    00AC    449 _ENCIE	=	0x00ac
                    00AD    450 Fmdrip$STIE$0$0 == 0x00ad
                    00AD    451 _STIE	=	0x00ad
                    00AE    452 Fmdrip$_IEN06$0$0 == 0x00ae
                    00AE    453 __IEN06	=	0x00ae
                    00AF    454 Fmdrip$EA$0$0 == 0x00af
                    00AF    455 _EA	=	0x00af
                    00B8    456 Fmdrip$DMAIE$0$0 == 0x00b8
                    00B8    457 _DMAIE	=	0x00b8
                    00B9    458 Fmdrip$T1IE$0$0 == 0x00b9
                    00B9    459 _T1IE	=	0x00b9
                    00BA    460 Fmdrip$T2IE$0$0 == 0x00ba
                    00BA    461 _T2IE	=	0x00ba
                    00BB    462 Fmdrip$T3IE$0$0 == 0x00bb
                    00BB    463 _T3IE	=	0x00bb
                    00BC    464 Fmdrip$T4IE$0$0 == 0x00bc
                    00BC    465 _T4IE	=	0x00bc
                    00BD    466 Fmdrip$P0IE$0$0 == 0x00bd
                    00BD    467 _P0IE	=	0x00bd
                    00BE    468 Fmdrip$_IEN16$0$0 == 0x00be
                    00BE    469 __IEN16	=	0x00be
                    00BF    470 Fmdrip$_IEN17$0$0 == 0x00bf
                    00BF    471 __IEN17	=	0x00bf
                    00C0    472 Fmdrip$DMAIF$0$0 == 0x00c0
                    00C0    473 _DMAIF	=	0x00c0
                    00C1    474 Fmdrip$T1IF$0$0 == 0x00c1
                    00C1    475 _T1IF	=	0x00c1
                    00C2    476 Fmdrip$T2IF$0$0 == 0x00c2
                    00C2    477 _T2IF	=	0x00c2
                    00C3    478 Fmdrip$T3IF$0$0 == 0x00c3
                    00C3    479 _T3IF	=	0x00c3
                    00C4    480 Fmdrip$T4IF$0$0 == 0x00c4
                    00C4    481 _T4IF	=	0x00c4
                    00C5    482 Fmdrip$P0IF$0$0 == 0x00c5
                    00C5    483 _P0IF	=	0x00c5
                    00C6    484 Fmdrip$_IRCON6$0$0 == 0x00c6
                    00C6    485 __IRCON6	=	0x00c6
                    00C7    486 Fmdrip$STIF$0$0 == 0x00c7
                    00C7    487 _STIF	=	0x00c7
                    00D0    488 Fmdrip$P$0$0 == 0x00d0
                    00D0    489 _P	=	0x00d0
                    00D1    490 Fmdrip$F1$0$0 == 0x00d1
                    00D1    491 _F1	=	0x00d1
                    00D2    492 Fmdrip$OV$0$0 == 0x00d2
                    00D2    493 _OV	=	0x00d2
                    00D3    494 Fmdrip$RS0$0$0 == 0x00d3
                    00D3    495 _RS0	=	0x00d3
                    00D4    496 Fmdrip$RS1$0$0 == 0x00d4
                    00D4    497 _RS1	=	0x00d4
                    00D5    498 Fmdrip$F0$0$0 == 0x00d5
                    00D5    499 _F0	=	0x00d5
                    00D6    500 Fmdrip$AC$0$0 == 0x00d6
                    00D6    501 _AC	=	0x00d6
                    00D7    502 Fmdrip$CY$0$0 == 0x00d7
                    00D7    503 _CY	=	0x00d7
                    00D8    504 Fmdrip$T3OVFIF$0$0 == 0x00d8
                    00D8    505 _T3OVFIF	=	0x00d8
                    00D9    506 Fmdrip$T3CH0IF$0$0 == 0x00d9
                    00D9    507 _T3CH0IF	=	0x00d9
                    00DA    508 Fmdrip$T3CH1IF$0$0 == 0x00da
                    00DA    509 _T3CH1IF	=	0x00da
                    00DB    510 Fmdrip$T4OVFIF$0$0 == 0x00db
                    00DB    511 _T4OVFIF	=	0x00db
                    00DC    512 Fmdrip$T4CH0IF$0$0 == 0x00dc
                    00DC    513 _T4CH0IF	=	0x00dc
                    00DD    514 Fmdrip$T4CH1IF$0$0 == 0x00dd
                    00DD    515 _T4CH1IF	=	0x00dd
                    00DE    516 Fmdrip$OVFIM$0$0 == 0x00de
                    00DE    517 _OVFIM	=	0x00de
                    00DF    518 Fmdrip$_TIMIF7$0$0 == 0x00df
                    00DF    519 __TIMIF7	=	0x00df
                    00E0    520 Fmdrip$ACC_0$0$0 == 0x00e0
                    00E0    521 _ACC_0	=	0x00e0
                    00E1    522 Fmdrip$ACC_1$0$0 == 0x00e1
                    00E1    523 _ACC_1	=	0x00e1
                    00E2    524 Fmdrip$ACC_2$0$0 == 0x00e2
                    00E2    525 _ACC_2	=	0x00e2
                    00E3    526 Fmdrip$ACC_3$0$0 == 0x00e3
                    00E3    527 _ACC_3	=	0x00e3
                    00E4    528 Fmdrip$ACC_4$0$0 == 0x00e4
                    00E4    529 _ACC_4	=	0x00e4
                    00E5    530 Fmdrip$ACC_5$0$0 == 0x00e5
                    00E5    531 _ACC_5	=	0x00e5
                    00E6    532 Fmdrip$ACC_6$0$0 == 0x00e6
                    00E6    533 _ACC_6	=	0x00e6
                    00E7    534 Fmdrip$ACC_7$0$0 == 0x00e7
                    00E7    535 _ACC_7	=	0x00e7
                    00E8    536 Fmdrip$P2IF$0$0 == 0x00e8
                    00E8    537 _P2IF	=	0x00e8
                    00E9    538 Fmdrip$UTX0IF$0$0 == 0x00e9
                    00E9    539 _UTX0IF	=	0x00e9
                    00EA    540 Fmdrip$UTX1IF$0$0 == 0x00ea
                    00EA    541 _UTX1IF	=	0x00ea
                    00EB    542 Fmdrip$P1IF$0$0 == 0x00eb
                    00EB    543 _P1IF	=	0x00eb
                    00EC    544 Fmdrip$WDTIF$0$0 == 0x00ec
                    00EC    545 _WDTIF	=	0x00ec
                    00ED    546 Fmdrip$_IRCON25$0$0 == 0x00ed
                    00ED    547 __IRCON25	=	0x00ed
                    00EE    548 Fmdrip$_IRCON26$0$0 == 0x00ee
                    00EE    549 __IRCON26	=	0x00ee
                    00EF    550 Fmdrip$_IRCON27$0$0 == 0x00ef
                    00EF    551 __IRCON27	=	0x00ef
                    00F0    552 Fmdrip$B_0$0$0 == 0x00f0
                    00F0    553 _B_0	=	0x00f0
                    00F1    554 Fmdrip$B_1$0$0 == 0x00f1
                    00F1    555 _B_1	=	0x00f1
                    00F2    556 Fmdrip$B_2$0$0 == 0x00f2
                    00F2    557 _B_2	=	0x00f2
                    00F3    558 Fmdrip$B_3$0$0 == 0x00f3
                    00F3    559 _B_3	=	0x00f3
                    00F4    560 Fmdrip$B_4$0$0 == 0x00f4
                    00F4    561 _B_4	=	0x00f4
                    00F5    562 Fmdrip$B_5$0$0 == 0x00f5
                    00F5    563 _B_5	=	0x00f5
                    00F6    564 Fmdrip$B_6$0$0 == 0x00f6
                    00F6    565 _B_6	=	0x00f6
                    00F7    566 Fmdrip$B_7$0$0 == 0x00f7
                    00F7    567 _B_7	=	0x00f7
                    00F8    568 Fmdrip$U1ACTIVE$0$0 == 0x00f8
                    00F8    569 _U1ACTIVE	=	0x00f8
                    00F9    570 Fmdrip$U1TX_BYTE$0$0 == 0x00f9
                    00F9    571 _U1TX_BYTE	=	0x00f9
                    00FA    572 Fmdrip$U1RX_BYTE$0$0 == 0x00fa
                    00FA    573 _U1RX_BYTE	=	0x00fa
                    00FB    574 Fmdrip$U1ERR$0$0 == 0x00fb
                    00FB    575 _U1ERR	=	0x00fb
                    00FC    576 Fmdrip$U1FE$0$0 == 0x00fc
                    00FC    577 _U1FE	=	0x00fc
                    00FD    578 Fmdrip$U1SLAVE$0$0 == 0x00fd
                    00FD    579 _U1SLAVE	=	0x00fd
                    00FE    580 Fmdrip$U1RE$0$0 == 0x00fe
                    00FE    581 _U1RE	=	0x00fe
                    00FF    582 Fmdrip$U1MODE$0$0 == 0x00ff
                    00FF    583 _U1MODE	=	0x00ff
                            584 ;--------------------------------------------------------
                            585 ; overlayable register banks
                            586 ;--------------------------------------------------------
                            587 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     588 	.ds 8
                            589 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     590 	.ds 8
                            591 ;--------------------------------------------------------
                            592 ; overlayable bit register bank
                            593 ;--------------------------------------------------------
                            594 	.area BIT_BANK	(REL,OVR,DATA)
   0025                     595 bits:
   0025                     596 	.ds 1
                    8000    597 	b0 = bits[0]
                    8100    598 	b1 = bits[1]
                    8200    599 	b2 = bits[2]
                    8300    600 	b3 = bits[3]
                    8400    601 	b4 = bits[4]
                    8500    602 	b5 = bits[5]
                    8600    603 	b6 = bits[6]
                    8700    604 	b7 = bits[7]
                            605 ;--------------------------------------------------------
                            606 ; internal ram data
                            607 ;--------------------------------------------------------
                            608 	.area DSEG    (DATA)
                    0000    609 Lmdrip.getFonaString$sloc0$1$0==.
   0026                     610 _getFonaString_sloc0_1_0:
   0026                     611 	.ds 4
                    0004    612 Lmdrip.getFonaMillivolts$sloc0$1$0==.
   002A                     613 _getFonaMillivolts_sloc0_1_0:
   002A                     614 	.ds 2
                    0006    615 Lmdrip.getFonaGPS$sloc0$1$0==.
   002C                     616 _getFonaGPS_sloc0_1_0:
   002C                     617 	.ds 1
                    0007    618 Lmdrip.getFonaGPS$sloc1$1$0==.
   002D                     619 _getFonaGPS_sloc1_1_0:
   002D                     620 	.ds 1
                    0008    621 Lmdrip.print_packet$sloc0$1$0==.
   002E                     622 _print_packet_sloc0_1_0:
   002E                     623 	.ds 2
                    000A    624 Lmdrip.print_packet$sloc1$1$0==.
   0030                     625 _print_packet_sloc1_1_0:
   0030                     626 	.ds 2
                    000C    627 Lmdrip.print_packet$sloc2$1$0==.
   0032                     628 _print_packet_sloc2_1_0:
   0032                     629 	.ds 2
                    000E    630 Lmdrip.print_packet$sloc3$1$0==.
   0034                     631 _print_packet_sloc3_1_0:
   0034                     632 	.ds 4
                    0012    633 Lmdrip.goToSleep$sloc0$1$0==.
   0038                     634 _goToSleep_sloc0_1_0:
   0038                     635 	.ds 2
                    0014    636 Lmdrip.goToSleep$sloc1$1$0==.
   003A                     637 _goToSleep_sloc1_1_0:
   003A                     638 	.ds 4
                    0018    639 Lmdrip.WaitForPacket$sloc0$1$0==.
   003E                     640 _WaitForPacket_sloc0_1_0:
   003E                     641 	.ds 1
                    0019    642 Lmdrip.WaitForPacket$sloc1$1$0==.
   003F                     643 _WaitForPacket_sloc1_1_0:
   003F                     644 	.ds 2
                    001B    645 Lmdrip.WaitForPacket$sloc2$1$0==.
   0041                     646 _WaitForPacket_sloc2_1_0:
   0041                     647 	.ds 4
                    001F    648 Lmdrip.WaitForPacket$sloc3$1$0==.
   0045                     649 _WaitForPacket_sloc3_1_0:
   0045                     650 	.ds 4
                    0023    651 Lmdrip.WaitForPacket$sloc4$1$0==.
   0049                     652 _WaitForPacket_sloc4_1_0:
   0049                     653 	.ds 4
                    0027    654 Lmdrip.delayFor$sloc0$1$0==.
   004D                     655 _delayFor_sloc0_1_0:
   004D                     656 	.ds 4
                            657 ;--------------------------------------------------------
                            658 ; overlayable items in internal ram 
                            659 ;--------------------------------------------------------
                            660 	.area	OSEG    (OVR,DATA)
                    0000    661 Lmdrip.dexcom_src_to_ascii$sloc0$1$0==.
   007B                     662 _dexcom_src_to_ascii_sloc0_1_0:
   007B                     663 	.ds 4
                            664 ;--------------------------------------------------------
                            665 ; Stack segment in internal ram 
                            666 ;--------------------------------------------------------
                            667 	.area	SSEG	(DATA)
   0080                     668 __start__stack:
   0080                     669 	.ds	1
                            670 
                            671 ;--------------------------------------------------------
                            672 ; indirectly addressable internal ram data
                            673 ;--------------------------------------------------------
                            674 	.area ISEG    (DATA)
                            675 ;--------------------------------------------------------
                            676 ; absolute internal ram data
                            677 ;--------------------------------------------------------
                            678 	.area IABS    (ABS,DATA)
                            679 	.area IABS    (ABS,DATA)
                            680 ;--------------------------------------------------------
                            681 ; bit data
                            682 ;--------------------------------------------------------
                            683 	.area BSEG    (BIT)
                    0000    684 Fmdrip$only_listen_for_my_transmitter$0$0==.
   0000                     685 _only_listen_for_my_transmitter:
   0000                     686 	.ds 1
                    0001    687 Fmdrip$status_lights$0$0==.
   0001                     688 _status_lights:
   0001                     689 	.ds 1
                    0002    690 Fmdrip$allow_alternate_usb_protocol$0$0==.
   0002                     691 _allow_alternate_usb_protocol:
   0002                     692 	.ds 1
                    0003    693 Fmdrip$enable_wixfone$0$0==.
   0003                     694 _enable_wixfone:
   0003                     695 	.ds 1
                    0004    696 Fmdrip$encrypt_output$0$0==.
   0004                     697 _encrypt_output:
   0004                     698 	.ds 1
                    0005    699 G$needsTimingCalibration$0$0==.
   0005                     700 _needsTimingCalibration::
   0005                     701 	.ds 1
                    0006    702 G$usbEnabled$0$0==.
   0006                     703 _usbEnabled::
   0006                     704 	.ds 1
                    0007    705 Lmdrip.goToSleep$storedDma0Armed$3$3==.
   0007                     706 _goToSleep_storedDma0Armed_3_3:
   0007                     707 	.ds 1
                    0008    708 Lmdrip.goToSleep$savedP0IE$3$3==.
   0008                     709 _goToSleep_savedP0IE_3_3:
   0008                     710 	.ds 1
                            711 ;--------------------------------------------------------
                            712 ; paged external ram data
                            713 ;--------------------------------------------------------
                            714 	.area PSEG    (PAG,XDATA)
                    0000    715 Fmdrip$wake_earlier_for_next_miss$0$0==.
   F000                     716 _wake_earlier_for_next_miss:
   F000                     717 	.ds 1
                    0001    718 Fmdrip$misses_until_failure$0$0==.
   F001                     719 _misses_until_failure:
   F001                     720 	.ds 1
                    0002    721 Fmdrip$fOffset$0$0==.
   F002                     722 _fOffset:
   F002                     723 	.ds 4
                    0006    724 Fmdrip$nChannels$0$0==.
   F006                     725 _nChannels:
   F006                     726 	.ds 4
                    000A    727 Fmdrip$waitTimes$0$0==.
   F00A                     728 _waitTimes:
   F00A                     729 	.ds 16
                    001A    730 Fmdrip$delayedWaitTimes$0$0==.
   F01A                     731 _delayedWaitTimes:
   F01A                     732 	.ds 16
                    002A    733 Fmdrip$catch_offsets$0$0==.
   F02A                     734 _catch_offsets:
   F02A                     735 	.ds 16
                    003A    736 Fmdrip$last_catch_channel$0$0==.
   F03A                     737 _last_catch_channel:
   F03A                     738 	.ds 1
                    003B    739 Fmdrip$save_IEN0$0$0==.
   F03B                     740 _save_IEN0:
   F03B                     741 	.ds 1
                    003C    742 Fmdrip$save_IEN1$0$0==.
   F03C                     743 _save_IEN1:
   F03C                     744 	.ds 1
                    003D    745 Fmdrip$save_IEN2$0$0==.
   F03D                     746 _save_IEN2:
   F03D                     747 	.ds 1
                    003E    748 G$sequential_missed_packets$0$0==.
   F03E                     749 _sequential_missed_packets::
   F03E                     750 	.ds 1
                    003F    751 G$intMaxStrLen$0$0==.
   F03F                     752 _intMaxStrLen::
   F03F                     753 	.ds 1
                    0040    754 Lmdrip.min8$b$1$1==.
   F040                     755 _min8_PARM_2:
   F040                     756 	.ds 1
                    0041    757 Lmdrip.bit_reverse_bytes$nLen$1$1==.
   F041                     758 _bit_reverse_bytes_PARM_2:
   F041                     759 	.ds 1
                    0042    760 Lmdrip.bit_reverse_bytes$buf$1$1==.
   F042                     761 _bit_reverse_bytes_buf_1_1:
   F042                     762 	.ds 3
                    0045    763 Lmdrip.getFonaGPS$CIPGSMLOC$1$1==.
   F045                     764 _getFonaGPS_CIPGSMLOC_1_1:
   F045                     765 	.ds 2
                    0047    766 Lmdrip.print_packet$pPkt$1$1==.
   F047                     767 _print_packet_pPkt_1_1:
   F047                     768 	.ds 2
                    0049    769 Lmdrip.goToSleep$storedDescHigh$3$3==.
   F049                     770 _goToSleep_storedDescHigh_3_3:
   F049                     771 	.ds 1
                    004A    772 Lmdrip.goToSleep$storedDescLow$3$3==.
   F04A                     773 _goToSleep_storedDescLow_3_3:
   F04A                     774 	.ds 1
                    004B    775 Lmdrip.goToSleep$storedIEN1$3$3==.
   F04B                     776 _goToSleep_storedIEN1_3_3:
   F04B                     777 	.ds 1
                    004C    778 Lmdrip.goToSleep$storedIEN2$3$3==.
   F04C                     779 _goToSleep_storedIEN2_3_3:
   F04C                     780 	.ds 1
                    004D    781 Lmdrip.goToSleep$savedP1SEL$3$3==.
   F04D                     782 _goToSleep_savedP1SEL_3_3:
   F04D                     783 	.ds 1
                    004E    784 Lmdrip.goToSleep$savedP1DIR$3$3==.
   F04E                     785 _goToSleep_savedP1DIR_3_3:
   F04E                     786 	.ds 1
                    004F    787 Lmdrip.goToSleep$start_waiting$3$8==.
   F04F                     788 _goToSleep_start_waiting_3_8:
   F04F                     789 	.ds 4
                    0053    790 Lmdrip.WaitForPacket$pkt$1$1==.
   F053                     791 _WaitForPacket_PARM_2:
   F053                     792 	.ds 2
                    0055    793 Lmdrip.get_packet$pPkt$1$1==.
   F055                     794 _get_packet_pPkt_1_1:
   F055                     795 	.ds 2
                            796 ;--------------------------------------------------------
                            797 ; external ram data
                            798 ;--------------------------------------------------------
                            799 	.area XSEG    (XDATA)
                    DF00    800 Fmdrip$SYNC1$0$0 == 0xdf00
                    DF00    801 _SYNC1	=	0xdf00
                    DF01    802 Fmdrip$SYNC0$0$0 == 0xdf01
                    DF01    803 _SYNC0	=	0xdf01
                    DF02    804 Fmdrip$PKTLEN$0$0 == 0xdf02
                    DF02    805 _PKTLEN	=	0xdf02
                    DF03    806 Fmdrip$PKTCTRL1$0$0 == 0xdf03
                    DF03    807 _PKTCTRL1	=	0xdf03
                    DF04    808 Fmdrip$PKTCTRL0$0$0 == 0xdf04
                    DF04    809 _PKTCTRL0	=	0xdf04
                    DF05    810 Fmdrip$ADDR$0$0 == 0xdf05
                    DF05    811 _ADDR	=	0xdf05
                    DF06    812 Fmdrip$CHANNR$0$0 == 0xdf06
                    DF06    813 _CHANNR	=	0xdf06
                    DF07    814 Fmdrip$FSCTRL1$0$0 == 0xdf07
                    DF07    815 _FSCTRL1	=	0xdf07
                    DF08    816 Fmdrip$FSCTRL0$0$0 == 0xdf08
                    DF08    817 _FSCTRL0	=	0xdf08
                    DF09    818 Fmdrip$FREQ2$0$0 == 0xdf09
                    DF09    819 _FREQ2	=	0xdf09
                    DF0A    820 Fmdrip$FREQ1$0$0 == 0xdf0a
                    DF0A    821 _FREQ1	=	0xdf0a
                    DF0B    822 Fmdrip$FREQ0$0$0 == 0xdf0b
                    DF0B    823 _FREQ0	=	0xdf0b
                    DF0C    824 Fmdrip$MDMCFG4$0$0 == 0xdf0c
                    DF0C    825 _MDMCFG4	=	0xdf0c
                    DF0D    826 Fmdrip$MDMCFG3$0$0 == 0xdf0d
                    DF0D    827 _MDMCFG3	=	0xdf0d
                    DF0E    828 Fmdrip$MDMCFG2$0$0 == 0xdf0e
                    DF0E    829 _MDMCFG2	=	0xdf0e
                    DF0F    830 Fmdrip$MDMCFG1$0$0 == 0xdf0f
                    DF0F    831 _MDMCFG1	=	0xdf0f
                    DF10    832 Fmdrip$MDMCFG0$0$0 == 0xdf10
                    DF10    833 _MDMCFG0	=	0xdf10
                    DF11    834 Fmdrip$DEVIATN$0$0 == 0xdf11
                    DF11    835 _DEVIATN	=	0xdf11
                    DF12    836 Fmdrip$MCSM2$0$0 == 0xdf12
                    DF12    837 _MCSM2	=	0xdf12
                    DF13    838 Fmdrip$MCSM1$0$0 == 0xdf13
                    DF13    839 _MCSM1	=	0xdf13
                    DF14    840 Fmdrip$MCSM0$0$0 == 0xdf14
                    DF14    841 _MCSM0	=	0xdf14
                    DF15    842 Fmdrip$FOCCFG$0$0 == 0xdf15
                    DF15    843 _FOCCFG	=	0xdf15
                    DF16    844 Fmdrip$BSCFG$0$0 == 0xdf16
                    DF16    845 _BSCFG	=	0xdf16
                    DF17    846 Fmdrip$AGCCTRL2$0$0 == 0xdf17
                    DF17    847 _AGCCTRL2	=	0xdf17
                    DF18    848 Fmdrip$AGCCTRL1$0$0 == 0xdf18
                    DF18    849 _AGCCTRL1	=	0xdf18
                    DF19    850 Fmdrip$AGCCTRL0$0$0 == 0xdf19
                    DF19    851 _AGCCTRL0	=	0xdf19
                    DF1A    852 Fmdrip$FREND1$0$0 == 0xdf1a
                    DF1A    853 _FREND1	=	0xdf1a
                    DF1B    854 Fmdrip$FREND0$0$0 == 0xdf1b
                    DF1B    855 _FREND0	=	0xdf1b
                    DF1C    856 Fmdrip$FSCAL3$0$0 == 0xdf1c
                    DF1C    857 _FSCAL3	=	0xdf1c
                    DF1D    858 Fmdrip$FSCAL2$0$0 == 0xdf1d
                    DF1D    859 _FSCAL2	=	0xdf1d
                    DF1E    860 Fmdrip$FSCAL1$0$0 == 0xdf1e
                    DF1E    861 _FSCAL1	=	0xdf1e
                    DF1F    862 Fmdrip$FSCAL0$0$0 == 0xdf1f
                    DF1F    863 _FSCAL0	=	0xdf1f
                    DF23    864 Fmdrip$TEST2$0$0 == 0xdf23
                    DF23    865 _TEST2	=	0xdf23
                    DF24    866 Fmdrip$TEST1$0$0 == 0xdf24
                    DF24    867 _TEST1	=	0xdf24
                    DF25    868 Fmdrip$TEST0$0$0 == 0xdf25
                    DF25    869 _TEST0	=	0xdf25
                    DF2E    870 Fmdrip$PA_TABLE0$0$0 == 0xdf2e
                    DF2E    871 _PA_TABLE0	=	0xdf2e
                    DF2F    872 Fmdrip$IOCFG2$0$0 == 0xdf2f
                    DF2F    873 _IOCFG2	=	0xdf2f
                    DF30    874 Fmdrip$IOCFG1$0$0 == 0xdf30
                    DF30    875 _IOCFG1	=	0xdf30
                    DF31    876 Fmdrip$IOCFG0$0$0 == 0xdf31
                    DF31    877 _IOCFG0	=	0xdf31
                    DF36    878 Fmdrip$PARTNUM$0$0 == 0xdf36
                    DF36    879 _PARTNUM	=	0xdf36
                    DF37    880 Fmdrip$VERSION$0$0 == 0xdf37
                    DF37    881 _VERSION	=	0xdf37
                    DF38    882 Fmdrip$FREQEST$0$0 == 0xdf38
                    DF38    883 _FREQEST	=	0xdf38
                    DF39    884 Fmdrip$LQI$0$0 == 0xdf39
                    DF39    885 _LQI	=	0xdf39
                    DF3A    886 Fmdrip$RSSI$0$0 == 0xdf3a
                    DF3A    887 _RSSI	=	0xdf3a
                    DF3B    888 Fmdrip$MARCSTATE$0$0 == 0xdf3b
                    DF3B    889 _MARCSTATE	=	0xdf3b
                    DF3C    890 Fmdrip$PKTSTATUS$0$0 == 0xdf3c
                    DF3C    891 _PKTSTATUS	=	0xdf3c
                    DF3D    892 Fmdrip$VCO_VC_DAC$0$0 == 0xdf3d
                    DF3D    893 _VCO_VC_DAC	=	0xdf3d
                    DF40    894 Fmdrip$I2SCFG0$0$0 == 0xdf40
                    DF40    895 _I2SCFG0	=	0xdf40
                    DF41    896 Fmdrip$I2SCFG1$0$0 == 0xdf41
                    DF41    897 _I2SCFG1	=	0xdf41
                    DF42    898 Fmdrip$I2SDATL$0$0 == 0xdf42
                    DF42    899 _I2SDATL	=	0xdf42
                    DF43    900 Fmdrip$I2SDATH$0$0 == 0xdf43
                    DF43    901 _I2SDATH	=	0xdf43
                    DF44    902 Fmdrip$I2SWCNT$0$0 == 0xdf44
                    DF44    903 _I2SWCNT	=	0xdf44
                    DF45    904 Fmdrip$I2SSTAT$0$0 == 0xdf45
                    DF45    905 _I2SSTAT	=	0xdf45
                    DF46    906 Fmdrip$I2SCLKF0$0$0 == 0xdf46
                    DF46    907 _I2SCLKF0	=	0xdf46
                    DF47    908 Fmdrip$I2SCLKF1$0$0 == 0xdf47
                    DF47    909 _I2SCLKF1	=	0xdf47
                    DF48    910 Fmdrip$I2SCLKF2$0$0 == 0xdf48
                    DF48    911 _I2SCLKF2	=	0xdf48
                    DE00    912 Fmdrip$USBADDR$0$0 == 0xde00
                    DE00    913 _USBADDR	=	0xde00
                    DE01    914 Fmdrip$USBPOW$0$0 == 0xde01
                    DE01    915 _USBPOW	=	0xde01
                    DE02    916 Fmdrip$USBIIF$0$0 == 0xde02
                    DE02    917 _USBIIF	=	0xde02
                    DE04    918 Fmdrip$USBOIF$0$0 == 0xde04
                    DE04    919 _USBOIF	=	0xde04
                    DE06    920 Fmdrip$USBCIF$0$0 == 0xde06
                    DE06    921 _USBCIF	=	0xde06
                    DE07    922 Fmdrip$USBIIE$0$0 == 0xde07
                    DE07    923 _USBIIE	=	0xde07
                    DE09    924 Fmdrip$USBOIE$0$0 == 0xde09
                    DE09    925 _USBOIE	=	0xde09
                    DE0B    926 Fmdrip$USBCIE$0$0 == 0xde0b
                    DE0B    927 _USBCIE	=	0xde0b
                    DE0C    928 Fmdrip$USBFRML$0$0 == 0xde0c
                    DE0C    929 _USBFRML	=	0xde0c
                    DE0D    930 Fmdrip$USBFRMH$0$0 == 0xde0d
                    DE0D    931 _USBFRMH	=	0xde0d
                    DE0E    932 Fmdrip$USBINDEX$0$0 == 0xde0e
                    DE0E    933 _USBINDEX	=	0xde0e
                    DE10    934 Fmdrip$USBMAXI$0$0 == 0xde10
                    DE10    935 _USBMAXI	=	0xde10
                    DE11    936 Fmdrip$USBCSIL$0$0 == 0xde11
                    DE11    937 _USBCSIL	=	0xde11
                    DE12    938 Fmdrip$USBCSIH$0$0 == 0xde12
                    DE12    939 _USBCSIH	=	0xde12
                    DE13    940 Fmdrip$USBMAXO$0$0 == 0xde13
                    DE13    941 _USBMAXO	=	0xde13
                    DE14    942 Fmdrip$USBCSOL$0$0 == 0xde14
                    DE14    943 _USBCSOL	=	0xde14
                    DE15    944 Fmdrip$USBCSOH$0$0 == 0xde15
                    DE15    945 _USBCSOH	=	0xde15
                    DE16    946 Fmdrip$USBCNTL$0$0 == 0xde16
                    DE16    947 _USBCNTL	=	0xde16
                    DE17    948 Fmdrip$USBCNTH$0$0 == 0xde17
                    DE17    949 _USBCNTH	=	0xde17
                    DE20    950 Fmdrip$USBF0$0$0 == 0xde20
                    DE20    951 _USBF0	=	0xde20
                    DE22    952 Fmdrip$USBF1$0$0 == 0xde22
                    DE22    953 _USBF1	=	0xde22
                    DE24    954 Fmdrip$USBF2$0$0 == 0xde24
                    DE24    955 _USBF2	=	0xde24
                    DE26    956 Fmdrip$USBF3$0$0 == 0xde26
                    DE26    957 _USBF3	=	0xde26
                    DE28    958 Fmdrip$USBF4$0$0 == 0xde28
                    DE28    959 _USBF4	=	0xde28
                    DE2A    960 Fmdrip$USBF5$0$0 == 0xde2a
                    DE2A    961 _USBF5	=	0xde2a
                    0000    962 Lmdrip.bit_reverse_byte$bRet$1$1==.
   F0F3                     963 _bit_reverse_byte_bRet_1_1:
   F0F3                     964 	.ds 1
                    0001    965 Lmdrip.dex_num_decoder$usReversed$1$1==.
   F0F4                     966 _dex_num_decoder_usReversed_1_1:
   F0F4                     967 	.ds 2
                    0003    968 Lmdrip.dexcom_src_to_ascii$addr$1$1==.
   F0F6                     969 _dexcom_src_to_ascii_PARM_2:
   F0F6                     970 	.ds 2
                    0005    971 Lmdrip.dexcom_src_to_ascii$src$1$1==.
   F0F8                     972 _dexcom_src_to_ascii_src_1_1:
   F0F8                     973 	.ds 4
                    0009    974 Lmdrip.getSrcValue$srcVal$1$1==.
   F0FC                     975 _getSrcValue_srcVal_1_1:
   F0FC                     976 	.ds 1
                    000A    977 Lmdrip.getFonaString$uartCharacters$1$1==.
   F0FD                     978 _getFonaString_uartCharacters_1_1:
   F0FD                     979 	.ds 80
                    005A    980 Lmdrip.getFonaString$stop$1$1==.
   F14D                     981 _getFonaString_stop_1_1:
   F14D                     982 	.ds 4
                    005E    983 Lmdrip.getFonaString$now$1$1==.
   F151                     984 _getFonaString_now_1_1:
   F151                     985 	.ds 4
                    0062    986 Lmdrip.sendAT$atString$1$1==.
   F155                     987 _sendAT_atString_1_1:
   F155                     988 	.ds 2
                    0064    989 Lmdrip.sendAT$ATresponse$1$1==.
   F157                     990 _sendAT_ATresponse_1_1:
   F157                     991 	.ds 80
                    00B4    992 Lmdrip.configFona$atString$1$1==.
   F1A7                     993 _configFona_atString_1_1:
   F1A7                     994 	.ds 40
                    00DC    995 Lmdrip.enableFona$atString$1$1==.
   F1CF                     996 _enableFona_atString_1_1:
   F1CF                     997 	.ds 40
                    0104    998 Lmdrip.fonaDisable$atString$1$1==.
   F1F7                     999 _fonaDisable_atString_1_1:
   F1F7                    1000 	.ds 40
                    012C   1001 Lmdrip.fonaConnect$atString$1$1==.
   F21F                    1002 _fonaConnect_atString_1_1:
   F21F                    1003 	.ds 40
                    0154   1004 Lmdrip.getFonaMillivolts$i$1$1==.
   F247                    1005 _getFonaMillivolts_i_1_1:
   F247                    1006 	.ds 2
                    0156   1007 Lmdrip.getFonaMillivolts$intMV$1$1==.
   F249                    1008 _getFonaMillivolts_intMV_1_1:
   F249                    1009 	.ds 2
                    0158   1010 Lmdrip.getFonaMillivolts$c$1$1==.
   F24B                    1011 _getFonaMillivolts_c_1_1:
   F24B                    1012 	.ds 80
                    01A8   1013 Lmdrip.getFonaMillivolts$atString$1$1==.
   F29B                    1014 _getFonaMillivolts_atString_1_1:
   F29B                    1015 	.ds 40
                    01D0   1016 Lmdrip.getFonaGPS$i$1$1==.
   F2C3                    1017 _getFonaGPS_i_1_1:
   F2C3                    1018 	.ds 1
                    01D1   1019 Lmdrip.getFonaGPS$j$1$1==.
   F2C4                    1020 _getFonaGPS_j_1_1:
   F2C4                    1021 	.ds 1
                    01D2   1022 Lmdrip.getFonaGPS$stage$1$1==.
   F2C5                    1023 _getFonaGPS_stage_1_1:
   F2C5                    1024 	.ds 1
                    01D3   1025 Lmdrip.getFonaGPS$status$1$1==.
   F2C6                    1026 _getFonaGPS_status_1_1:
   F2C6                    1027 	.ds 6
                    01D9   1028 Lmdrip.getFonaGPS$atString$1$1==.
   F2CC                    1029 _getFonaGPS_atString_1_1:
   F2CC                    1030 	.ds 40
                    0201   1031 Lmdrip.getFonaGPS$c$1$1==.
   F2F4                    1032 _getFonaGPS_c_1_1:
   F2F4                    1033 	.ds 80
                    0251   1034 Lmdrip.print_packet$fonaLatLong$1$1==.
   F344                    1035 _print_packet_fonaLatLong_1_1:
   F344                    1036 	.ds 25
                    026A   1037 Lmdrip.print_packet$transID$1$1==.
   F35D                    1038 _print_packet_transID_1_1:
   F35D                    1039 	.ds 6
                    0270   1040 Lmdrip.print_packet$CIPResponse$1$1==.
   F363                    1041 _print_packet_CIPResponse_1_1:
   F363                    1042 	.ds 42
                    029A   1043 Lmdrip.print_packet$iv$1$1==.
   F38D                    1044 _print_packet_iv_1_1:
   F38D                    1045 	.ds 16
                    02AA   1046 Lmdrip.print_packet$sprintfBuffer$1$1==.
   F39D                    1047 _print_packet_sprintfBuffer_1_1:
   F39D                    1048 	.ds 64
                    02EA   1049 Lmdrip.print_packet$AESBuffer$1$1==.
   F3DD                    1050 _print_packet_AESBuffer_1_1:
   F3DD                    1051 	.ds 64
                    032A   1052 Lmdrip.goToSleep$seconds$1$1==.
   F41D                    1053 _goToSleep_seconds_1_1:
   F41D                    1054 	.ds 2
                    032C   1055 Lmdrip.putchar$c$1$1==.
   F41F                    1056 _putchar_c_1_1:
   F41F                    1057 	.ds 1
                    032D   1058 Lmdrip.swap_channel$newFSCTRL0$1$1==.
   F420                    1059 _swap_channel_PARM_2:
   F420                    1060 	.ds 1
                    032E   1061 Lmdrip.swap_channel$channel$1$1==.
   F421                    1062 _swap_channel_channel_1_1:
   F421                    1063 	.ds 1
                    032F   1064 Lmdrip.WaitForPacket$channel$1$1==.
   F422                    1065 _WaitForPacket_PARM_3:
   F422                    1066 	.ds 1
                    0330   1067 Lmdrip.WaitForPacket$milliseconds$1$1==.
   F423                    1068 _WaitForPacket_milliseconds_1_1:
   F423                    1069 	.ds 2
                    0332   1070 Lmdrip.WaitForPacket$transID$1$1==.
   F425                    1071 _WaitForPacket_transID_1_1:
   F425                    1072 	.ds 6
                    0338   1073 Lmdrip.delayFor$wait_chan$1$1==.
   F42B                    1074 _delayFor_wait_chan_1_1:
   F42B                    1075 	.ds 2
                    033A   1076 Lmdrip.main$Pkt$2$4==.
   F42D                    1077 _main_Pkt_2_4:
   F42D                    1078 	.ds 21
                           1079 ;--------------------------------------------------------
                           1080 ; absolute external ram data
                           1081 ;--------------------------------------------------------
                           1082 	.area XABS    (ABS,XDATA)
                           1083 ;--------------------------------------------------------
                           1084 ; external initialized ram data
                           1085 ;--------------------------------------------------------
                           1086 	.area XISEG   (XDATA)
                    0000   1087 Fmdrip$transmitter_id$0$0==.
   F8B9                    1088 _transmitter_id:
   F8B9                    1089 	.ds 6
                    0006   1090 Fmdrip$dexie_host_address$0$0==.
   F8BF                    1091 _dexie_host_address:
   F8BF                    1092 	.ds 28
                    0022   1093 Fmdrip$start_channel$0$0==.
   F8DB                    1094 _start_channel:
   F8DB                    1095 	.ds 1
                    0023   1096 Fmdrip$defaultfOffset$0$0==.
   F8DC                    1097 _defaultfOffset:
   F8DC                    1098 	.ds 4
                    0027   1099 G$PM2_BUF$0$0==.
   F8E0                    1100 _PM2_BUF::
   F8E0                    1101 	.ds 7
                    002E   1102 G$dmaDesc$0$0==.
   F8E7                    1103 _dmaDesc::
   F8E7                    1104 	.ds 8
                    0036   1105 G$AT_TIMEOUT$0$0==.
   F8EF                    1106 _AT_TIMEOUT::
   F8EF                    1107 	.ds 1
                    0037   1108 Fmdrip$defaultATWait$0$0==.
   F8F0                    1109 _defaultATWait:
   F8F0                    1110 	.ds 4
                    003B   1111 Fmdrip$key$0$0==.
   F8F4                    1112 _key:
   F8F4                    1113 	.ds 16
                    004B   1114 G$SrcNameTable$0$0==.
   F904                    1115 _SrcNameTable::
   F904                    1116 	.ds 32
                           1117 	.area HOME    (CODE)
                           1118 	.area GSINIT0 (CODE)
                           1119 	.area GSINIT1 (CODE)
                           1120 	.area GSINIT2 (CODE)
                           1121 	.area GSINIT3 (CODE)
                           1122 	.area GSINIT4 (CODE)
                           1123 	.area GSINIT5 (CODE)
                           1124 	.area GSINIT  (CODE)
                           1125 	.area GSFINAL (CODE)
                           1126 	.area CSEG    (CODE)
                           1127 ;--------------------------------------------------------
                           1128 ; interrupt vector 
                           1129 ;--------------------------------------------------------
                           1130 	.area HOME    (CODE)
   0400                    1131 __interrupt_vect:
   0400 02 04 8D           1132 	ljmp	__sdcc_gsinit_startup
   0403 32                 1133 	reti
   0404                    1134 	.ds	7
   040B 32                 1135 	reti
   040C                    1136 	.ds	7
   0413 32                 1137 	reti
   0414                    1138 	.ds	7
   041B 02 28 2E           1139 	ljmp	_ISR_URX1
   041E                    1140 	.ds	5
   0423 32                 1141 	reti
   0424                    1142 	.ds	7
   042B 02 06 2C           1143 	ljmp	_ISR_ST
   042E                    1144 	.ds	5
   0433 32                 1145 	reti
   0434                    1146 	.ds	7
   043B 32                 1147 	reti
   043C                    1148 	.ds	7
   0443 32                 1149 	reti
   0444                    1150 	.ds	7
   044B 32                 1151 	reti
   044C                    1152 	.ds	7
   0453 32                 1153 	reti
   0454                    1154 	.ds	7
   045B 32                 1155 	reti
   045C                    1156 	.ds	7
   0463 02 45 87           1157 	ljmp	_ISR_T4
   0466                    1158 	.ds	5
   046B 32                 1159 	reti
   046C                    1160 	.ds	7
   0473 02 27 F0           1161 	ljmp	_ISR_UTX1
   0476                    1162 	.ds	5
   047B 32                 1163 	reti
   047C                    1164 	.ds	7
   0483 02 29 6A           1165 	ljmp	_ISR_RF
                           1166 ;--------------------------------------------------------
                           1167 ; global & static initialisations
                           1168 ;--------------------------------------------------------
                           1169 	.area HOME    (CODE)
                           1170 	.area GSINIT  (CODE)
                           1171 	.area GSFINAL (CODE)
                           1172 	.area GSINIT  (CODE)
                           1173 	.globl __sdcc_gsinit_startup
                           1174 	.globl __sdcc_program_startup
                           1175 	.globl __start__stack
                           1176 	.globl __mcs51_genXINIT
                           1177 	.globl __mcs51_genXRAMCLEAR
                           1178 	.globl __mcs51_genRAMCLEAR
                           1179 ;------------------------------------------------------------
                           1180 ;Allocation info for local variables in function 'getFonaMillivolts'
                           1181 ;------------------------------------------------------------
                           1182 ;sloc0                     Allocated with name '_getFonaMillivolts_sloc0_1_0'
                           1183 ;i                         Allocated with name '_getFonaMillivolts_i_1_1'
                           1184 ;counter                   Allocated with name '_getFonaMillivolts_counter_1_1'
                           1185 ;loop                      Allocated with name '_getFonaMillivolts_loop_1_1'
                           1186 ;rxCount                   Allocated with name '_getFonaMillivolts_rxCount_1_1'
                           1187 ;intMV                     Allocated with name '_getFonaMillivolts_intMV_1_1'
                           1188 ;c                         Allocated with name '_getFonaMillivolts_c_1_1'
                           1189 ;atString                  Allocated with name '_getFonaMillivolts_atString_1_1'
                           1190 ;------------------------------------------------------------
                    0000   1191 	G$getFonaMillivolts$0$0 ==.
                    0000   1192 	C$mdrip.c$409$1$1 ==.
                           1193 ;	apps/mdrip/mdrip.c:409: XDATA static int16 i=0;
   04E6 90 F2 47           1194 	mov	dptr,#_getFonaMillivolts_i_1_1
   04E9 E4                 1195 	clr	a
   04EA F0                 1196 	movx	@dptr,a
   04EB A3                 1197 	inc	dptr
   04EC F0                 1198 	movx	@dptr,a
                    0007   1199 	G$main$0$0 ==.
                    0007   1200 	C$mdrip.c$48$1$1 ==.
                           1201 ;	apps/mdrip/mdrip.c:48: static volatile BIT only_listen_for_my_transmitter = 1;                                           //
   04ED D2 00              1202 	setb	_only_listen_for_my_transmitter
                    0009   1203 	G$main$0$0 ==.
                    0009   1204 	C$mdrip.c$51$1$1 ==.
                           1205 ;	apps/mdrip/mdrip.c:51: static volatile BIT status_lights = 1;                                                            //
   04EF D2 01              1206 	setb	_status_lights
                    000B   1207 	G$main$0$0 ==.
                    000B   1208 	C$mdrip.c$55$1$1 ==.
                           1209 ;	apps/mdrip/mdrip.c:55: static volatile BIT allow_alternate_usb_protocol = 0;
   04F1 C2 02              1210 	clr	_allow_alternate_usb_protocol
                    000D   1211 	G$main$0$0 ==.
                    000D   1212 	C$mdrip.c$79$1$1 ==.
                           1213 ;	apps/mdrip/mdrip.c:79: static volatile BIT enable_wixfone = 1;	
   04F3 D2 03              1214 	setb	_enable_wixfone
                    000F   1215 	G$main$0$0 ==.
                    000F   1216 	C$mdrip.c$82$1$1 ==.
                           1217 ;	apps/mdrip/mdrip.c:82: static volatile BIT encrypt_output = 1;
   04F5 D2 04              1218 	setb	_encrypt_output
                    0011   1219 	G$main$0$0 ==.
                    0011   1220 	C$mdrip.c$118$1$1 ==.
                           1221 ;	apps/mdrip/mdrip.c:118: BIT needsTimingCalibration = 1;
   04F7 D2 05              1222 	setb	_needsTimingCalibration
                    0013   1223 	G$main$0$0 ==.
                    0013   1224 	C$mdrip.c$119$1$1 ==.
                           1225 ;	apps/mdrip/mdrip.c:119: BIT usbEnabled = 1;
   04F9 D2 06              1226 	setb	_usbEnabled
                    0015   1227 	G$main$0$0 ==.
                    0015   1228 	C$mdrip.c$68$1$1 ==.
                           1229 ;	apps/mdrip/mdrip.c:68: static volatile uint8 wake_earlier_for_next_miss = 20;                                            //
   04FB 78 00              1230 	mov	r0,#_wake_earlier_for_next_miss
   04FD 74 14              1231 	mov	a,#0x14
   04FF F2                 1232 	movx	@r0,a
                    001A   1233 	G$main$0$0 ==.
                    001A   1234 	C$mdrip.c$72$1$1 ==.
                           1235 ;	apps/mdrip/mdrip.c:72: static volatile uint8 misses_until_failure = 1;                                                   //
   0500 78 01              1236 	mov	r0,#_misses_until_failure
   0502 74 01              1237 	mov	a,#0x01
   0504 F2                 1238 	movx	@r0,a
                    001F   1239 	G$main$0$0 ==.
                    001F   1240 	C$mdrip.c$110$1$1 ==.
                           1241 ;	apps/mdrip/mdrip.c:110: static int8 fOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
   0505 78 02              1242 	mov	r0,#_fOffset
   0507 74 CE              1243 	mov	a,#0xCE
   0509 F2                 1244 	movx	@r0,a
   050A 78 03              1245 	mov	r0,#(_fOffset + 0x0001)
   050C 74 D5              1246 	mov	a,#0xD5
   050E F2                 1247 	movx	@r0,a
   050F 78 04              1248 	mov	r0,#(_fOffset + 0x0002)
   0511 74 E6              1249 	mov	a,#0xE6
   0513 F2                 1250 	movx	@r0,a
   0514 78 05              1251 	mov	r0,#(_fOffset + 0x0003)
   0516 74 E5              1252 	mov	a,#0xE5
   0518 F2                 1253 	movx	@r0,a
                    0033   1254 	G$main$0$0 ==.
                    0033   1255 	C$mdrip.c$112$1$1 ==.
                           1256 ;	apps/mdrip/mdrip.c:112: static uint8 nChannels[NUM_CHANNELS] = { 0, 100, 199, 209 };
   0519 78 06              1257 	mov	r0,#_nChannels
   051B E4                 1258 	clr	a
   051C F2                 1259 	movx	@r0,a
   051D 78 07              1260 	mov	r0,#(_nChannels + 0x0001)
   051F 74 64              1261 	mov	a,#0x64
   0521 F2                 1262 	movx	@r0,a
   0522 78 08              1263 	mov	r0,#(_nChannels + 0x0002)
   0524 74 C7              1264 	mov	a,#0xC7
   0526 F2                 1265 	movx	@r0,a
   0527 78 09              1266 	mov	r0,#(_nChannels + 0x0003)
   0529 74 D1              1267 	mov	a,#0xD1
   052B F2                 1268 	movx	@r0,a
                    0046   1269 	G$main$0$0 ==.
                    0046   1270 	C$mdrip.c$113$1$1 ==.
                           1271 ;	apps/mdrip/mdrip.c:113: static uint32 waitTimes[NUM_CHANNELS] = { 13500, 500, 500, 500 };
   052C 78 0A              1272 	mov	r0,#_waitTimes
   052E 74 BC              1273 	mov	a,#0xBC
   0530 F2                 1274 	movx	@r0,a
   0531 08                 1275 	inc	r0
   0532 74 34              1276 	mov	a,#0x34
   0534 F2                 1277 	movx	@r0,a
   0535 08                 1278 	inc	r0
   0536 E4                 1279 	clr	a
   0537 F2                 1280 	movx	@r0,a
   0538 08                 1281 	inc	r0
   0539 F2                 1282 	movx	@r0,a
   053A 78 0E              1283 	mov	r0,#(_waitTimes + 0x0004)
   053C 74 F4              1284 	mov	a,#0xF4
   053E F2                 1285 	movx	@r0,a
   053F 08                 1286 	inc	r0
   0540 74 01              1287 	mov	a,#0x01
   0542 F2                 1288 	movx	@r0,a
   0543 08                 1289 	inc	r0
   0544 E4                 1290 	clr	a
   0545 F2                 1291 	movx	@r0,a
   0546 08                 1292 	inc	r0
   0547 F2                 1293 	movx	@r0,a
   0548 78 12              1294 	mov	r0,#(_waitTimes + 0x0008)
   054A 74 F4              1295 	mov	a,#0xF4
   054C F2                 1296 	movx	@r0,a
   054D 08                 1297 	inc	r0
   054E 74 01              1298 	mov	a,#0x01
   0550 F2                 1299 	movx	@r0,a
   0551 08                 1300 	inc	r0
   0552 E4                 1301 	clr	a
   0553 F2                 1302 	movx	@r0,a
   0554 08                 1303 	inc	r0
   0555 F2                 1304 	movx	@r0,a
   0556 78 16              1305 	mov	r0,#(_waitTimes + 0x000c)
   0558 74 F4              1306 	mov	a,#0xF4
   055A F2                 1307 	movx	@r0,a
   055B 08                 1308 	inc	r0
   055C 74 01              1309 	mov	a,#0x01
   055E F2                 1310 	movx	@r0,a
   055F 08                 1311 	inc	r0
   0560 E4                 1312 	clr	a
   0561 F2                 1313 	movx	@r0,a
   0562 08                 1314 	inc	r0
   0563 F2                 1315 	movx	@r0,a
                    007E   1316 	G$main$0$0 ==.
                    007E   1317 	C$mdrip.c$115$1$1 ==.
                           1318 ;	apps/mdrip/mdrip.c:115: static uint32 delayedWaitTimes[NUM_CHANNELS] = { 0, 700, 700, 700 };
   0564 78 1A              1319 	mov	r0,#_delayedWaitTimes
   0566 E4                 1320 	clr	a
   0567 F2                 1321 	movx	@r0,a
   0568 08                 1322 	inc	r0
   0569 F2                 1323 	movx	@r0,a
   056A 08                 1324 	inc	r0
   056B F2                 1325 	movx	@r0,a
   056C 08                 1326 	inc	r0
   056D F2                 1327 	movx	@r0,a
   056E 78 1E              1328 	mov	r0,#(_delayedWaitTimes + 0x0004)
   0570 74 BC              1329 	mov	a,#0xBC
   0572 F2                 1330 	movx	@r0,a
   0573 08                 1331 	inc	r0
   0574 74 02              1332 	mov	a,#0x02
   0576 F2                 1333 	movx	@r0,a
   0577 08                 1334 	inc	r0
   0578 E4                 1335 	clr	a
   0579 F2                 1336 	movx	@r0,a
   057A 08                 1337 	inc	r0
   057B F2                 1338 	movx	@r0,a
   057C 78 22              1339 	mov	r0,#(_delayedWaitTimes + 0x0008)
   057E 74 BC              1340 	mov	a,#0xBC
   0580 F2                 1341 	movx	@r0,a
   0581 08                 1342 	inc	r0
   0582 74 02              1343 	mov	a,#0x02
   0584 F2                 1344 	movx	@r0,a
   0585 08                 1345 	inc	r0
   0586 E4                 1346 	clr	a
   0587 F2                 1347 	movx	@r0,a
   0588 08                 1348 	inc	r0
   0589 F2                 1349 	movx	@r0,a
   058A 78 26              1350 	mov	r0,#(_delayedWaitTimes + 0x000c)
   058C 74 BC              1351 	mov	a,#0xBC
   058E F2                 1352 	movx	@r0,a
   058F 08                 1353 	inc	r0
   0590 74 02              1354 	mov	a,#0x02
   0592 F2                 1355 	movx	@r0,a
   0593 08                 1356 	inc	r0
   0594 E4                 1357 	clr	a
   0595 F2                 1358 	movx	@r0,a
   0596 08                 1359 	inc	r0
   0597 F2                 1360 	movx	@r0,a
                    00B2   1361 	G$main$0$0 ==.
                    00B2   1362 	C$mdrip.c$116$1$1 ==.
                           1363 ;	apps/mdrip/mdrip.c:116: static uint32 catch_offsets[NUM_CHANNELS] = { 0, 0, 0, 0 };
   0598 78 2A              1364 	mov	r0,#_catch_offsets
   059A E4                 1365 	clr	a
   059B F2                 1366 	movx	@r0,a
   059C 08                 1367 	inc	r0
   059D F2                 1368 	movx	@r0,a
   059E 08                 1369 	inc	r0
   059F F2                 1370 	movx	@r0,a
   05A0 08                 1371 	inc	r0
   05A1 F2                 1372 	movx	@r0,a
   05A2 78 2E              1373 	mov	r0,#(_catch_offsets + 0x0004)
   05A4 E4                 1374 	clr	a
   05A5 F2                 1375 	movx	@r0,a
   05A6 08                 1376 	inc	r0
   05A7 F2                 1377 	movx	@r0,a
   05A8 08                 1378 	inc	r0
   05A9 F2                 1379 	movx	@r0,a
   05AA 08                 1380 	inc	r0
   05AB F2                 1381 	movx	@r0,a
   05AC 78 32              1382 	mov	r0,#(_catch_offsets + 0x0008)
   05AE E4                 1383 	clr	a
   05AF F2                 1384 	movx	@r0,a
   05B0 08                 1385 	inc	r0
   05B1 F2                 1386 	movx	@r0,a
   05B2 08                 1387 	inc	r0
   05B3 F2                 1388 	movx	@r0,a
   05B4 08                 1389 	inc	r0
   05B5 F2                 1390 	movx	@r0,a
   05B6 78 36              1391 	mov	r0,#(_catch_offsets + 0x000c)
   05B8 E4                 1392 	clr	a
   05B9 F2                 1393 	movx	@r0,a
   05BA 08                 1394 	inc	r0
   05BB F2                 1395 	movx	@r0,a
   05BC 08                 1396 	inc	r0
   05BD F2                 1397 	movx	@r0,a
   05BE 08                 1398 	inc	r0
   05BF F2                 1399 	movx	@r0,a
                    00DA   1400 	G$main$0$0 ==.
                    00DA   1401 	C$mdrip.c$117$1$1 ==.
                           1402 ;	apps/mdrip/mdrip.c:117: static uint8 last_catch_channel = 0;
   05C0 78 3A              1403 	mov	r0,#_last_catch_channel
   05C2 E4                 1404 	clr	a
   05C3 F2                 1405 	movx	@r0,a
                    00DE   1406 	G$main$0$0 ==.
                    00DE   1407 	C$mdrip.c$125$1$1 ==.
                           1408 ;	apps/mdrip/mdrip.c:125: volatile uint8 sequential_missed_packets = 0;
   05C4 78 3E              1409 	mov	r0,#_sequential_missed_packets
   05C6 E4                 1410 	clr	a
   05C7 F2                 1411 	movx	@r0,a
                    00E2   1412 	G$main$0$0 ==.
                    00E2   1413 	C$mdrip.c$128$1$1 ==.
                           1414 ;	apps/mdrip/mdrip.c:128: uint8 intMaxStrLen = 80;
   05C8 78 3F              1415 	mov	r0,#_intMaxStrLen
   05CA 74 50              1416 	mov	a,#0x50
   05CC F2                 1417 	movx	@r0,a
                           1418 	.area GSFINAL (CODE)
   0625 02 04 86           1419 	ljmp	__sdcc_program_startup
                           1420 ;--------------------------------------------------------
                           1421 ; Home
                           1422 ;--------------------------------------------------------
                           1423 	.area HOME    (CODE)
                           1424 	.area HOME    (CODE)
   0486                    1425 __sdcc_program_startup:
   0486 12 25 24           1426 	lcall	_main
                           1427 ;	return from main will lock up
   0489 80 FE              1428 	sjmp .
                           1429 ;--------------------------------------------------------
                           1430 ; code
                           1431 ;--------------------------------------------------------
                           1432 	.area CSEG    (CODE)
                           1433 ;------------------------------------------------------------
                           1434 ;Allocation info for local variables in function 'sleepInit'
                           1435 ;------------------------------------------------------------
                    0000   1436 	G$sleepInit$0$0 ==.
                    0000   1437 	C$mdrip.c$161$0$0 ==.
                           1438 ;	apps/mdrip/mdrip.c:161: void sleepInit(void) {
                           1439 ;	-----------------------------------------
                           1440 ;	 function sleepInit
                           1441 ;	-----------------------------------------
   0628                    1442 _sleepInit:
                    0007   1443 	ar7 = 0x07
                    0006   1444 	ar6 = 0x06
                    0005   1445 	ar5 = 0x05
                    0004   1446 	ar4 = 0x04
                    0003   1447 	ar3 = 0x03
                    0002   1448 	ar2 = 0x02
                    0001   1449 	ar1 = 0x01
                    0000   1450 	ar0 = 0x00
                    0000   1451 	C$mdrip.c$162$1$1 ==.
                           1452 ;	apps/mdrip/mdrip.c:162: WORIRQ  |= (1<<4);
   0628 43 A1 10           1453 	orl	_WORIRQ,#0x10
                    0003   1454 	C$mdrip.c$163$1$1 ==.
                    0003   1455 	XG$sleepInit$0$0 ==.
   062B 22                 1456 	ret
                           1457 ;------------------------------------------------------------
                           1458 ;Allocation info for local variables in function 'ISR_ST'
                           1459 ;------------------------------------------------------------
                    0004   1460 	G$ISR_ST$0$0 ==.
                    0004   1461 	C$mdrip.c$165$1$1 ==.
                           1462 ;	apps/mdrip/mdrip.c:165: ISR(ST, 1) {
                           1463 ;	-----------------------------------------
                           1464 ;	 function ISR_ST
                           1465 ;	-----------------------------------------
   062C                    1466 _ISR_ST:
                    000F   1467 	ar7 = 0x0F
                    000E   1468 	ar6 = 0x0E
                    000D   1469 	ar5 = 0x0D
                    000C   1470 	ar4 = 0x0C
                    000B   1471 	ar3 = 0x0B
                    000A   1472 	ar2 = 0x0A
                    0009   1473 	ar1 = 0x09
                    0008   1474 	ar0 = 0x08
                    0004   1475 	C$mdrip.c$166$1$1 ==.
                           1476 ;	apps/mdrip/mdrip.c:166: IRCON &= 0x7F;
   062C 53 C0 7F           1477 	anl	_IRCON,#0x7F
                    0007   1478 	C$mdrip.c$167$1$1 ==.
                           1479 ;	apps/mdrip/mdrip.c:167: WORIRQ &= 0xFE;
   062F 53 A1 FE           1480 	anl	_WORIRQ,#0xFE
                    000A   1481 	C$mdrip.c$168$1$1 ==.
                           1482 ;	apps/mdrip/mdrip.c:168: SLEEP &= 0xFC;
   0632 53 BE FC           1483 	anl	_SLEEP,#0xFC
                    000D   1484 	C$mdrip.c$169$1$1 ==.
                    000D   1485 	XG$ISR_ST$0$0 ==.
   0635 32                 1486 	reti
                           1487 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1488 ;	eliminated unneeded push/pop psw
                           1489 ;	eliminated unneeded push/pop dpl
                           1490 ;	eliminated unneeded push/pop dph
                           1491 ;	eliminated unneeded push/pop b
                           1492 ;	eliminated unneeded push/pop acc
                           1493 ;------------------------------------------------------------
                           1494 ;Allocation info for local variables in function 'switchToRCOSC'
                           1495 ;------------------------------------------------------------
                    000E   1496 	G$switchToRCOSC$0$0 ==.
                    000E   1497 	C$mdrip.c$171$1$1 ==.
                           1498 ;	apps/mdrip/mdrip.c:171: void switchToRCOSC(void) {
                           1499 ;	-----------------------------------------
                           1500 ;	 function switchToRCOSC
                           1501 ;	-----------------------------------------
   0636                    1502 _switchToRCOSC:
                    0007   1503 	ar7 = 0x07
                    0006   1504 	ar6 = 0x06
                    0005   1505 	ar5 = 0x05
                    0004   1506 	ar4 = 0x04
                    0003   1507 	ar3 = 0x03
                    0002   1508 	ar2 = 0x02
                    0001   1509 	ar1 = 0x01
                    0000   1510 	ar0 = 0x00
                    000E   1511 	C$mdrip.c$172$1$1 ==.
                           1512 ;	apps/mdrip/mdrip.c:172: SLEEP &= ~0x04;
   0636 AF BE              1513 	mov	r7,_SLEEP
   0638 53 07 FB           1514 	anl	ar7,#0xFB
   063B 8F BE              1515 	mov	_SLEEP,r7
                    0015   1516 	C$mdrip.c$173$1$1 ==.
                           1517 ;	apps/mdrip/mdrip.c:173: while ( ! (SLEEP & 0x20) );
   063D                    1518 00101$:
   063D E5 BE              1519 	mov	a,_SLEEP
   063F 30 E5 FB           1520 	jnb	acc.5,00101$
                    001A   1521 	C$mdrip.c$174$1$1 ==.
                           1522 ;	apps/mdrip/mdrip.c:174: CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
   0642 AF C6              1523 	mov	r7,_CLKCON
   0644 74 F8              1524 	mov	a,#0xF8
   0646 5F                 1525 	anl	a,r7
   0647 44 41              1526 	orl	a,#0x41
   0649 FF                 1527 	mov	r7,a
   064A 8F C6              1528 	mov	_CLKCON,r7
                    0024   1529 	C$mdrip.c$175$1$1 ==.
                           1530 ;	apps/mdrip/mdrip.c:175: while ( !(CLKCON & 0x40) );
   064C                    1531 00104$:
   064C E5 C6              1532 	mov	a,_CLKCON
   064E 30 E6 FB           1533 	jnb	acc.6,00104$
                    0029   1534 	C$mdrip.c$176$1$1 ==.
                           1535 ;	apps/mdrip/mdrip.c:176: SLEEP |= 0x04;
   0651 43 BE 04           1536 	orl	_SLEEP,#0x04
                    002C   1537 	C$mdrip.c$177$1$1 ==.
                    002C   1538 	XG$switchToRCOSC$0$0 ==.
   0654 22                 1539 	ret
                           1540 ;------------------------------------------------------------
                           1541 ;Allocation info for local variables in function 'uartEnable'
                           1542 ;------------------------------------------------------------
                    002D   1543 	G$uartEnable$0$0 ==.
                    002D   1544 	C$mdrip.c$179$1$1 ==.
                           1545 ;	apps/mdrip/mdrip.c:179: void uartEnable() {
                           1546 ;	-----------------------------------------
                           1547 ;	 function uartEnable
                           1548 ;	-----------------------------------------
   0655                    1549 _uartEnable:
                    002D   1550 	C$mdrip.c$181$1$1 ==.
                           1551 ;	apps/mdrip/mdrip.c:181: U1UCR &= ~0x40; //CTS/RTS Off
   0655 AF FB              1552 	mov	r7,_U1UCR
   0657 53 07 BF           1553 	anl	ar7,#0xBF
   065A 8F FB              1554 	mov	_U1UCR,r7
                    0034   1555 	C$mdrip.c$182$1$1 ==.
                           1556 ;	apps/mdrip/mdrip.c:182: U1CSR |= 0x40;
   065C 43 F8 40           1557 	orl	_U1CSR,#0x40
                    0037   1558 	C$mdrip.c$183$1$1 ==.
                           1559 ;	apps/mdrip/mdrip.c:183: delayMs(100);
   065F 90 00 64           1560 	mov	dptr,#0x0064
   0662 12 45 D8           1561 	lcall	_delayMs
                    003D   1562 	C$mdrip.c$184$1$1 ==.
                    003D   1563 	XG$uartEnable$0$0 ==.
   0665 22                 1564 	ret
                           1565 ;------------------------------------------------------------
                           1566 ;Allocation info for local variables in function 'uartDisable'
                           1567 ;------------------------------------------------------------
                    003E   1568 	G$uartDisable$0$0 ==.
                    003E   1569 	C$mdrip.c$186$1$1 ==.
                           1570 ;	apps/mdrip/mdrip.c:186: void uartDisable() {
                           1571 ;	-----------------------------------------
                           1572 ;	 function uartDisable
                           1573 ;	-----------------------------------------
   0666                    1574 _uartDisable:
                    003E   1575 	C$mdrip.c$187$1$1 ==.
                           1576 ;	apps/mdrip/mdrip.c:187: delayMs(100);
   0666 90 00 64           1577 	mov	dptr,#0x0064
   0669 12 45 D8           1578 	lcall	_delayMs
                    0044   1579 	C$mdrip.c$188$1$1 ==.
                           1580 ;	apps/mdrip/mdrip.c:188: U1UCR &= ~0x40; //CTS/RTS Off
   066C AF FB              1581 	mov	r7,_U1UCR
   066E 53 07 BF           1582 	anl	ar7,#0xBF
   0671 8F FB              1583 	mov	_U1UCR,r7
                    004B   1584 	C$mdrip.c$189$1$1 ==.
                           1585 ;	apps/mdrip/mdrip.c:189: U1CSR &= ~0x40; // Receiver disable
   0673 AF F8              1586 	mov	r7,_U1CSR
   0675 53 07 BF           1587 	anl	ar7,#0xBF
   0678 8F F8              1588 	mov	_U1CSR,r7
                    0052   1589 	C$mdrip.c$190$1$1 ==.
                    0052   1590 	XG$uartDisable$0$0 ==.
   067A 22                 1591 	ret
                           1592 ;------------------------------------------------------------
                           1593 ;Allocation info for local variables in function 'blink_yellow_led'
                           1594 ;------------------------------------------------------------
                    0053   1595 	G$blink_yellow_led$0$0 ==.
                    0053   1596 	C$mdrip.c$192$1$1 ==.
                           1597 ;	apps/mdrip/mdrip.c:192: void blink_yellow_led() {
                           1598 ;	-----------------------------------------
                           1599 ;	 function blink_yellow_led
                           1600 ;	-----------------------------------------
   067B                    1601 _blink_yellow_led:
                    0053   1602 	C$mdrip.c$193$1$1 ==.
                           1603 ;	apps/mdrip/mdrip.c:193: if(status_lights) {
   067B 30 01 37           1604 	jnb	_status_lights,00103$
                    0056   1605 	C$mdrip.c$194$3$3 ==.
                           1606 ;	apps/mdrip/mdrip.c:194: LED_YELLOW(((getMs()/250) % 2));//Blink quarter seconds
   067E 12 45 AC           1607 	lcall	_getMs
   0681 AC 82              1608 	mov	r4,dpl
   0683 AD 83              1609 	mov	r5,dph
   0685 AE F0              1610 	mov	r6,b
   0687 FF                 1611 	mov	r7,a
   0688 78 67              1612 	mov	r0,#__divulong_PARM_2
   068A 74 FA              1613 	mov	a,#0xFA
   068C F2                 1614 	movx	@r0,a
   068D 08                 1615 	inc	r0
   068E E4                 1616 	clr	a
   068F F2                 1617 	movx	@r0,a
   0690 08                 1618 	inc	r0
   0691 F2                 1619 	movx	@r0,a
   0692 08                 1620 	inc	r0
   0693 F2                 1621 	movx	@r0,a
   0694 8C 82              1622 	mov	dpl,r4
   0696 8D 83              1623 	mov	dph,r5
   0698 8E F0              1624 	mov	b,r6
   069A EF                 1625 	mov	a,r7
   069B 12 2C 0B           1626 	lcall	__divulong
   069E AC 82              1627 	mov	r4,dpl
   06A0 AD 83              1628 	mov	r5,dph
   06A2 AE F0              1629 	mov	r6,b
   06A4 FF                 1630 	mov	r7,a
   06A5 EC                 1631 	mov	a,r4
   06A6 30 E0 05           1632 	jnb	acc.0,00105$
   06A9 43 FF 04           1633 	orl	_P2DIR,#0x04
   06AC 80 07              1634 	sjmp	00103$
   06AE                    1635 00105$:
   06AE AF FF              1636 	mov	r7,_P2DIR
   06B0 53 07 FB           1637 	anl	ar7,#0xFB
   06B3 8F FF              1638 	mov	_P2DIR,r7
   06B5                    1639 00103$:
                    008D   1640 	C$mdrip.c$196$3$1 ==.
                    008D   1641 	XG$blink_yellow_led$0$0 ==.
   06B5 22                 1642 	ret
                           1643 ;------------------------------------------------------------
                           1644 ;Allocation info for local variables in function 'blink_red_led'
                           1645 ;------------------------------------------------------------
                    008E   1646 	G$blink_red_led$0$0 ==.
                    008E   1647 	C$mdrip.c$198$3$1 ==.
                           1648 ;	apps/mdrip/mdrip.c:198: void blink_red_led() {
                           1649 ;	-----------------------------------------
                           1650 ;	 function blink_red_led
                           1651 ;	-----------------------------------------
   06B6                    1652 _blink_red_led:
                    008E   1653 	C$mdrip.c$199$1$1 ==.
                           1654 ;	apps/mdrip/mdrip.c:199: if(status_lights) {
   06B6 30 01 39           1655 	jnb	_status_lights,00103$
                    0091   1656 	C$mdrip.c$200$3$3 ==.
                           1657 ;	apps/mdrip/mdrip.c:200: LED_RED(((getMs()/500) % 2));//Blink half seconds
   06B9 12 45 AC           1658 	lcall	_getMs
   06BC AC 82              1659 	mov	r4,dpl
   06BE AD 83              1660 	mov	r5,dph
   06C0 AE F0              1661 	mov	r6,b
   06C2 FF                 1662 	mov	r7,a
   06C3 78 67              1663 	mov	r0,#__divulong_PARM_2
   06C5 74 F4              1664 	mov	a,#0xF4
   06C7 F2                 1665 	movx	@r0,a
   06C8 08                 1666 	inc	r0
   06C9 74 01              1667 	mov	a,#0x01
   06CB F2                 1668 	movx	@r0,a
   06CC 08                 1669 	inc	r0
   06CD E4                 1670 	clr	a
   06CE F2                 1671 	movx	@r0,a
   06CF 08                 1672 	inc	r0
   06D0 F2                 1673 	movx	@r0,a
   06D1 8C 82              1674 	mov	dpl,r4
   06D3 8D 83              1675 	mov	dph,r5
   06D5 8E F0              1676 	mov	b,r6
   06D7 EF                 1677 	mov	a,r7
   06D8 12 2C 0B           1678 	lcall	__divulong
   06DB AC 82              1679 	mov	r4,dpl
   06DD AD 83              1680 	mov	r5,dph
   06DF AE F0              1681 	mov	r6,b
   06E1 FF                 1682 	mov	r7,a
   06E2 EC                 1683 	mov	a,r4
   06E3 30 E0 05           1684 	jnb	acc.0,00105$
   06E6 43 FF 02           1685 	orl	_P2DIR,#0x02
   06E9 80 07              1686 	sjmp	00103$
   06EB                    1687 00105$:
   06EB AF FF              1688 	mov	r7,_P2DIR
   06ED 53 07 FD           1689 	anl	ar7,#0xFD
   06F0 8F FF              1690 	mov	_P2DIR,r7
   06F2                    1691 00103$:
                    00CA   1692 	C$mdrip.c$202$3$1 ==.
                    00CA   1693 	XG$blink_red_led$0$0 ==.
   06F2 22                 1694 	ret
                           1695 ;------------------------------------------------------------
                           1696 ;Allocation info for local variables in function 'getPacketPassedChecksum'
                           1697 ;------------------------------------------------------------
                    00CB   1698 	G$getPacketPassedChecksum$0$0 ==.
                    00CB   1699 	C$mdrip.c$204$3$1 ==.
                           1700 ;	apps/mdrip/mdrip.c:204: uint8 getPacketPassedChecksum(Dexcom_packet* p) {
                           1701 ;	-----------------------------------------
                           1702 ;	 function getPacketPassedChecksum
                           1703 ;	-----------------------------------------
   06F3                    1704 _getPacketPassedChecksum:
   06F3 AE 82              1705 	mov	r6,dpl
   06F5 AF 83              1706 	mov	r7,dph
                    00CF   1707 	C$mdrip.c$205$1$1 ==.
                           1708 ;	apps/mdrip/mdrip.c:205: return ((p->LQI & 0x80)==0x80) ? 1:0;
   06F7 74 14              1709 	mov	a,#0x14
   06F9 2E                 1710 	add	a,r6
   06FA F5 82              1711 	mov	dpl,a
   06FC E4                 1712 	clr	a
   06FD 3F                 1713 	addc	a,r7
   06FE F5 83              1714 	mov	dph,a
   0700 E0                 1715 	movx	a,@dptr
   0701 FF                 1716 	mov	r7,a
   0702 53 07 80           1717 	anl	ar7,#0x80
   0705 BF 80 04           1718 	cjne	r7,#0x80,00103$
   0708 7F 01              1719 	mov	r7,#0x01
   070A 80 02              1720 	sjmp	00104$
   070C                    1721 00103$:
   070C 7F 00              1722 	mov	r7,#0x00
   070E                    1723 00104$:
   070E 8F 82              1724 	mov	dpl,r7
                    00E8   1725 	C$mdrip.c$206$1$1 ==.
                    00E8   1726 	XG$getPacketPassedChecksum$0$0 ==.
   0710 22                 1727 	ret
                           1728 ;------------------------------------------------------------
                           1729 ;Allocation info for local variables in function 'bit_reverse_byte'
                           1730 ;------------------------------------------------------------
                           1731 ;bRet                      Allocated with name '_bit_reverse_byte_bRet_1_1'
                           1732 ;------------------------------------------------------------
                    00E9   1733 	G$bit_reverse_byte$0$0 ==.
                    00E9   1734 	C$mdrip.c$208$1$1 ==.
                           1735 ;	apps/mdrip/mdrip.c:208: uint8 bit_reverse_byte(uint8 in) {
                           1736 ;	-----------------------------------------
                           1737 ;	 function bit_reverse_byte
                           1738 ;	-----------------------------------------
   0711                    1739 _bit_reverse_byte:
   0711 AF 82              1740 	mov	r7,dpl
                    00EB   1741 	C$mdrip.c$209$1$1 ==.
                           1742 ;	apps/mdrip/mdrip.c:209: uint8 XDATA bRet = 0;
   0713 90 F0 F3           1743 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0716 E4                 1744 	clr	a
   0717 F0                 1745 	movx	@dptr,a
                    00F0   1746 	C$mdrip.c$210$1$1 ==.
                           1747 ;	apps/mdrip/mdrip.c:210: if(in & 0x01)
   0718 EF                 1748 	mov	a,r7
   0719 30 E0 06           1749 	jnb	acc.0,00102$
                    00F4   1750 	C$mdrip.c$211$1$1 ==.
                           1751 ;	apps/mdrip/mdrip.c:211: bRet |= 0x80;
   071C 90 F0 F3           1752 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   071F 74 80              1753 	mov	a,#0x80
   0721 F0                 1754 	movx	@dptr,a
   0722                    1755 00102$:
                    00FA   1756 	C$mdrip.c$212$1$1 ==.
                           1757 ;	apps/mdrip/mdrip.c:212: if(in & 0x02)
   0722 EF                 1758 	mov	a,r7
   0723 30 E1 08           1759 	jnb	acc.1,00104$
                    00FE   1760 	C$mdrip.c$213$1$1 ==.
                           1761 ;	apps/mdrip/mdrip.c:213: bRet |= 0x40;
   0726 90 F0 F3           1762 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0729 E0                 1763 	movx	a,@dptr
   072A FE                 1764 	mov	r6,a
   072B 44 40              1765 	orl	a,#0x40
   072D F0                 1766 	movx	@dptr,a
   072E                    1767 00104$:
                    0106   1768 	C$mdrip.c$214$1$1 ==.
                           1769 ;	apps/mdrip/mdrip.c:214: if(in & 0x04)
   072E EF                 1770 	mov	a,r7
   072F 30 E2 08           1771 	jnb	acc.2,00106$
                    010A   1772 	C$mdrip.c$215$1$1 ==.
                           1773 ;	apps/mdrip/mdrip.c:215: bRet |= 0x20;
   0732 90 F0 F3           1774 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0735 E0                 1775 	movx	a,@dptr
   0736 FE                 1776 	mov	r6,a
   0737 44 20              1777 	orl	a,#0x20
   0739 F0                 1778 	movx	@dptr,a
   073A                    1779 00106$:
                    0112   1780 	C$mdrip.c$216$1$1 ==.
                           1781 ;	apps/mdrip/mdrip.c:216: if(in & 0x08)
   073A EF                 1782 	mov	a,r7
   073B 30 E3 08           1783 	jnb	acc.3,00108$
                    0116   1784 	C$mdrip.c$217$1$1 ==.
                           1785 ;	apps/mdrip/mdrip.c:217: bRet |= 0x10;
   073E 90 F0 F3           1786 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0741 E0                 1787 	movx	a,@dptr
   0742 FE                 1788 	mov	r6,a
   0743 44 10              1789 	orl	a,#0x10
   0745 F0                 1790 	movx	@dptr,a
   0746                    1791 00108$:
                    011E   1792 	C$mdrip.c$218$1$1 ==.
                           1793 ;	apps/mdrip/mdrip.c:218: if(in & 0x10)
   0746 EF                 1794 	mov	a,r7
   0747 30 E4 08           1795 	jnb	acc.4,00110$
                    0122   1796 	C$mdrip.c$219$1$1 ==.
                           1797 ;	apps/mdrip/mdrip.c:219: bRet |= 0x08;
   074A 90 F0 F3           1798 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   074D E0                 1799 	movx	a,@dptr
   074E FE                 1800 	mov	r6,a
   074F 44 08              1801 	orl	a,#0x08
   0751 F0                 1802 	movx	@dptr,a
   0752                    1803 00110$:
                    012A   1804 	C$mdrip.c$220$1$1 ==.
                           1805 ;	apps/mdrip/mdrip.c:220: if(in & 0x20)
   0752 EF                 1806 	mov	a,r7
   0753 30 E5 08           1807 	jnb	acc.5,00112$
                    012E   1808 	C$mdrip.c$221$1$1 ==.
                           1809 ;	apps/mdrip/mdrip.c:221: bRet |= 0x04;
   0756 90 F0 F3           1810 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0759 E0                 1811 	movx	a,@dptr
   075A FE                 1812 	mov	r6,a
   075B 44 04              1813 	orl	a,#0x04
   075D F0                 1814 	movx	@dptr,a
   075E                    1815 00112$:
                    0136   1816 	C$mdrip.c$222$1$1 ==.
                           1817 ;	apps/mdrip/mdrip.c:222: if(in & 0x40)
   075E EF                 1818 	mov	a,r7
   075F 30 E6 08           1819 	jnb	acc.6,00114$
                    013A   1820 	C$mdrip.c$223$1$1 ==.
                           1821 ;	apps/mdrip/mdrip.c:223: bRet |= 0x02;
   0762 90 F0 F3           1822 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0765 E0                 1823 	movx	a,@dptr
   0766 FE                 1824 	mov	r6,a
   0767 44 02              1825 	orl	a,#0x02
   0769 F0                 1826 	movx	@dptr,a
   076A                    1827 00114$:
                    0142   1828 	C$mdrip.c$224$1$1 ==.
                           1829 ;	apps/mdrip/mdrip.c:224: if(in & 0x80)
   076A EF                 1830 	mov	a,r7
   076B 30 E7 08           1831 	jnb	acc.7,00116$
                    0146   1832 	C$mdrip.c$225$1$1 ==.
                           1833 ;	apps/mdrip/mdrip.c:225: bRet |= 0x01;
   076E 90 F0 F3           1834 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0771 E0                 1835 	movx	a,@dptr
   0772 FF                 1836 	mov	r7,a
   0773 44 01              1837 	orl	a,#0x01
   0775 F0                 1838 	movx	@dptr,a
   0776                    1839 00116$:
                    014E   1840 	C$mdrip.c$226$1$1 ==.
                           1841 ;	apps/mdrip/mdrip.c:226: return bRet;
   0776 90 F0 F3           1842 	mov	dptr,#_bit_reverse_byte_bRet_1_1
   0779 E0                 1843 	movx	a,@dptr
                    0152   1844 	C$mdrip.c$227$1$1 ==.
                    0152   1845 	XG$bit_reverse_byte$0$0 ==.
   077A F5 82              1846 	mov	dpl,a
   077C 22                 1847 	ret
                           1848 ;------------------------------------------------------------
                           1849 ;Allocation info for local variables in function 'min8'
                           1850 ;------------------------------------------------------------
                    0155   1851 	G$min8$0$0 ==.
                    0155   1852 	C$mdrip.c$229$1$1 ==.
                           1853 ;	apps/mdrip/mdrip.c:229: uint8 min8(uint8 a, uint8 b) {
                           1854 ;	-----------------------------------------
                           1855 ;	 function min8
                           1856 ;	-----------------------------------------
   077D                    1857 _min8:
   077D AF 82              1858 	mov	r7,dpl
                    0157   1859 	C$mdrip.c$230$1$1 ==.
                           1860 ;	apps/mdrip/mdrip.c:230: if(a < b) return a;
   077F 78 40              1861 	mov	r0,#_min8_PARM_2
   0781 C3                 1862 	clr	c
   0782 E2                 1863 	movx	a,@r0
   0783 F5 F0              1864 	mov	b,a
   0785 EF                 1865 	mov	a,r7
   0786 95 F0              1866 	subb	a,b
   0788 50 04              1867 	jnc	00102$
   078A 8F 82              1868 	mov	dpl,r7
   078C 80 05              1869 	sjmp	00103$
   078E                    1870 00102$:
                    0166   1871 	C$mdrip.c$231$1$1 ==.
                           1872 ;	apps/mdrip/mdrip.c:231: return b;
   078E 78 40              1873 	mov	r0,#_min8_PARM_2
   0790 E2                 1874 	movx	a,@r0
   0791 F5 82              1875 	mov	dpl,a
   0793                    1876 00103$:
                    016B   1877 	C$mdrip.c$232$1$1 ==.
                    016B   1878 	XG$min8$0$0 ==.
   0793 22                 1879 	ret
                           1880 ;------------------------------------------------------------
                           1881 ;Allocation info for local variables in function 'bit_reverse_bytes'
                           1882 ;------------------------------------------------------------
                           1883 ;i                         Allocated with name '_bit_reverse_bytes_i_1_1'
                           1884 ;------------------------------------------------------------
                    016C   1885 	G$bit_reverse_bytes$0$0 ==.
                    016C   1886 	C$mdrip.c$234$1$1 ==.
                           1887 ;	apps/mdrip/mdrip.c:234: void bit_reverse_bytes(uint8* buf, uint8 nLen) {
                           1888 ;	-----------------------------------------
                           1889 ;	 function bit_reverse_bytes
                           1890 ;	-----------------------------------------
   0794                    1891 _bit_reverse_bytes:
   0794 AF F0              1892 	mov	r7,b
   0796 AE 83              1893 	mov	r6,dph
   0798 E5 82              1894 	mov	a,dpl
   079A 78 42              1895 	mov	r0,#_bit_reverse_bytes_buf_1_1
   079C F2                 1896 	movx	@r0,a
   079D 08                 1897 	inc	r0
   079E EE                 1898 	mov	a,r6
   079F F2                 1899 	movx	@r0,a
   07A0 08                 1900 	inc	r0
   07A1 EF                 1901 	mov	a,r7
   07A2 F2                 1902 	movx	@r0,a
                    017B   1903 	C$mdrip.c$235$1$1 ==.
                           1904 ;	apps/mdrip/mdrip.c:235: uint8 XDATA i = 0;
   07A3 7C 00              1905 	mov	r4,#0x00
   07A5                    1906 00101$:
                    017D   1907 	C$mdrip.c$236$1$1 ==.
                           1908 ;	apps/mdrip/mdrip.c:236: for(; i < nLen; i++) {
   07A5 78 41              1909 	mov	r0,#_bit_reverse_bytes_PARM_2
   07A7 C3                 1910 	clr	c
   07A8 E2                 1911 	movx	a,@r0
   07A9 F5 F0              1912 	mov	b,a
   07AB EC                 1913 	mov	a,r4
   07AC 95 F0              1914 	subb	a,b
   07AE 50 3A              1915 	jnc	00105$
                    0188   1916 	C$mdrip.c$237$2$2 ==.
                           1917 ;	apps/mdrip/mdrip.c:237: buf[i] = bit_reverse_byte(buf[i]);
   07B0 78 42              1918 	mov	r0,#_bit_reverse_bytes_buf_1_1
   07B2 E2                 1919 	movx	a,@r0
   07B3 2C                 1920 	add	a,r4
   07B4 FA                 1921 	mov	r2,a
   07B5 08                 1922 	inc	r0
   07B6 E2                 1923 	movx	a,@r0
   07B7 34 00              1924 	addc	a,#0x00
   07B9 FB                 1925 	mov	r3,a
   07BA 08                 1926 	inc	r0
   07BB E2                 1927 	movx	a,@r0
   07BC FF                 1928 	mov	r7,a
   07BD 8A 82              1929 	mov	dpl,r2
   07BF 8B 83              1930 	mov	dph,r3
   07C1 8F F0              1931 	mov	b,r7
   07C3 12 54 E8           1932 	lcall	__gptrget
   07C6 F5 82              1933 	mov	dpl,a
   07C8 C0 07              1934 	push	ar7
   07CA C0 04              1935 	push	ar4
   07CC C0 03              1936 	push	ar3
   07CE C0 02              1937 	push	ar2
   07D0 12 07 11           1938 	lcall	_bit_reverse_byte
   07D3 AE 82              1939 	mov	r6,dpl
   07D5 D0 02              1940 	pop	ar2
   07D7 D0 03              1941 	pop	ar3
   07D9 D0 04              1942 	pop	ar4
   07DB D0 07              1943 	pop	ar7
   07DD 8A 82              1944 	mov	dpl,r2
   07DF 8B 83              1945 	mov	dph,r3
   07E1 8F F0              1946 	mov	b,r7
   07E3 EE                 1947 	mov	a,r6
   07E4 12 30 67           1948 	lcall	__gptrput
                    01BF   1949 	C$mdrip.c$236$1$1 ==.
                           1950 ;	apps/mdrip/mdrip.c:236: for(; i < nLen; i++) {
   07E7 0C                 1951 	inc	r4
   07E8 80 BB              1952 	sjmp	00101$
   07EA                    1953 00105$:
                    01C2   1954 	C$mdrip.c$239$1$1 ==.
                    01C2   1955 	XG$bit_reverse_bytes$0$0 ==.
   07EA 22                 1956 	ret
                           1957 ;------------------------------------------------------------
                           1958 ;Allocation info for local variables in function 'dex_num_decoder'
                           1959 ;------------------------------------------------------------
                           1960 ;usReversed                Allocated with name '_dex_num_decoder_usReversed_1_1'
                           1961 ;usExponent                Allocated with name '_dex_num_decoder_usExponent_1_1'
                           1962 ;usMantissa                Allocated with name '_dex_num_decoder_usMantissa_1_1'
                           1963 ;------------------------------------------------------------
                    01C3   1964 	G$dex_num_decoder$0$0 ==.
                    01C3   1965 	C$mdrip.c$241$1$1 ==.
                           1966 ;	apps/mdrip/mdrip.c:241: uint32 dex_num_decoder(uint16 usShortFloat) {
                           1967 ;	-----------------------------------------
                           1968 ;	 function dex_num_decoder
                           1969 ;	-----------------------------------------
   07EB                    1970 _dex_num_decoder:
   07EB AE 82              1971 	mov	r6,dpl
   07ED AF 83              1972 	mov	r7,dph
                    01C7   1973 	C$mdrip.c$242$1$1 ==.
                           1974 ;	apps/mdrip/mdrip.c:242: uint16 XDATA usReversed = usShortFloat;
   07EF 90 F0 F4           1975 	mov	dptr,#_dex_num_decoder_usReversed_1_1
   07F2 EE                 1976 	mov	a,r6
   07F3 F0                 1977 	movx	@dptr,a
   07F4 A3                 1978 	inc	dptr
   07F5 EF                 1979 	mov	a,r7
   07F6 F0                 1980 	movx	@dptr,a
                    01CF   1981 	C$mdrip.c$245$1$1 ==.
                           1982 ;	apps/mdrip/mdrip.c:245: bit_reverse_bytes((uint8*)&usReversed, 2);
   07F7 7E F4              1983 	mov	r6,#_dex_num_decoder_usReversed_1_1
   07F9 7F F0              1984 	mov	r7,#(_dex_num_decoder_usReversed_1_1 >> 8)
   07FB 7D 00              1985 	mov	r5,#0x00
   07FD 78 41              1986 	mov	r0,#_bit_reverse_bytes_PARM_2
   07FF 74 02              1987 	mov	a,#0x02
   0801 F2                 1988 	movx	@r0,a
   0802 8E 82              1989 	mov	dpl,r6
   0804 8F 83              1990 	mov	dph,r7
   0806 8D F0              1991 	mov	b,r5
   0808 12 07 94           1992 	lcall	_bit_reverse_bytes
                    01E3   1993 	C$mdrip.c$246$1$1 ==.
                           1994 ;	apps/mdrip/mdrip.c:246: usExponent = ((usReversed & 0xE000) >> 13);
   080B 90 F0 F4           1995 	mov	dptr,#_dex_num_decoder_usReversed_1_1
   080E E0                 1996 	movx	a,@dptr
   080F FE                 1997 	mov	r6,a
   0810 A3                 1998 	inc	dptr
   0811 E0                 1999 	movx	a,@dptr
   0812 FF                 2000 	mov	r7,a
   0813 74 E0              2001 	mov	a,#0xE0
   0815 5F                 2002 	anl	a,r7
   0816 C4                 2003 	swap	a
   0817 03                 2004 	rr	a
   0818 54 07              2005 	anl	a,#0x07
   081A FC                 2006 	mov	r4,a
                    01F3   2007 	C$mdrip.c$247$1$1 ==.
                           2008 ;	apps/mdrip/mdrip.c:247: usMantissa = (usReversed & 0x1FFF);
   081B 53 07 1F           2009 	anl	ar7,#0x1F
   081E 7D 00              2010 	mov	r5,#0x00
   0820 7B 00              2011 	mov	r3,#0x00
                    01FA   2012 	C$mdrip.c$248$1$1 ==.
                           2013 ;	apps/mdrip/mdrip.c:248: return usMantissa << usExponent;
   0822 8C F0              2014 	mov	b,r4
   0824 05 F0              2015 	inc	b
   0826 80 0C              2016 	sjmp	00104$
   0828                    2017 00103$:
   0828 EE                 2018 	mov	a,r6
   0829 2E                 2019 	add	a,r6
   082A FE                 2020 	mov	r6,a
   082B EF                 2021 	mov	a,r7
   082C 33                 2022 	rlc	a
   082D FF                 2023 	mov	r7,a
   082E ED                 2024 	mov	a,r5
   082F 33                 2025 	rlc	a
   0830 FD                 2026 	mov	r5,a
   0831 EB                 2027 	mov	a,r3
   0832 33                 2028 	rlc	a
   0833 FB                 2029 	mov	r3,a
   0834                    2030 00104$:
   0834 D5 F0 F1           2031 	djnz	b,00103$
   0837 8E 82              2032 	mov	dpl,r6
   0839 8F 83              2033 	mov	dph,r7
   083B 8D F0              2034 	mov	b,r5
   083D EB                 2035 	mov	a,r3
                    0216   2036 	C$mdrip.c$249$1$1 ==.
                    0216   2037 	XG$dex_num_decoder$0$0 ==.
   083E 22                 2038 	ret
                           2039 ;------------------------------------------------------------
                           2040 ;Allocation info for local variables in function 'dexcom_src_to_ascii'
                           2041 ;------------------------------------------------------------
                           2042 ;addr                      Allocated with name '_dexcom_src_to_ascii_PARM_2'
                           2043 ;src                       Allocated with name '_dexcom_src_to_ascii_src_1_1'
                           2044 ;sloc0                     Allocated with name '_dexcom_src_to_ascii_sloc0_1_0'
                           2045 ;------------------------------------------------------------
                    0217   2046 	G$dexcom_src_to_ascii$0$0 ==.
                    0217   2047 	C$mdrip.c$256$1$1 ==.
                           2048 ;	apps/mdrip/mdrip.c:256: void dexcom_src_to_ascii(XDATA uint32 src, XDATA char addr[6]) {
                           2049 ;	-----------------------------------------
                           2050 ;	 function dexcom_src_to_ascii
                           2051 ;	-----------------------------------------
   083F                    2052 _dexcom_src_to_ascii:
   083F AF 82              2053 	mov	r7,dpl
   0841 AE 83              2054 	mov	r6,dph
   0843 AD F0              2055 	mov	r5,b
   0845 FC                 2056 	mov	r4,a
   0846 90 F0 F8           2057 	mov	dptr,#_dexcom_src_to_ascii_src_1_1
   0849 EF                 2058 	mov	a,r7
   084A F0                 2059 	movx	@dptr,a
   084B A3                 2060 	inc	dptr
   084C EE                 2061 	mov	a,r6
   084D F0                 2062 	movx	@dptr,a
   084E A3                 2063 	inc	dptr
   084F ED                 2064 	mov	a,r5
   0850 F0                 2065 	movx	@dptr,a
   0851 A3                 2066 	inc	dptr
   0852 EC                 2067 	mov	a,r4
   0853 F0                 2068 	movx	@dptr,a
                    022C   2069 	C$mdrip.c$257$1$1 ==.
                           2070 ;	apps/mdrip/mdrip.c:257: addr[0] = SrcNameTable[(src >> 20) & 0x1F];
   0854 90 F0 F6           2071 	mov	dptr,#_dexcom_src_to_ascii_PARM_2
   0857 E0                 2072 	movx	a,@dptr
   0858 FE                 2073 	mov	r6,a
   0859 A3                 2074 	inc	dptr
   085A E0                 2075 	movx	a,@dptr
   085B FF                 2076 	mov	r7,a
   085C 90 F0 F8           2077 	mov	dptr,#_dexcom_src_to_ascii_src_1_1
   085F E0                 2078 	movx	a,@dptr
   0860 F5 7B              2079 	mov	_dexcom_src_to_ascii_sloc0_1_0,a
   0862 A3                 2080 	inc	dptr
   0863 E0                 2081 	movx	a,@dptr
   0864 F5 7C              2082 	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 1),a
   0866 A3                 2083 	inc	dptr
   0867 E0                 2084 	movx	a,@dptr
   0868 F5 7D              2085 	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 2),a
   086A A3                 2086 	inc	dptr
   086B E0                 2087 	movx	a,@dptr
   086C F5 7E              2088 	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 3),a
   086E A8 7D              2089 	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
   0870 C4                 2090 	swap	a
   0871 C8                 2091 	xch	a,r0
   0872 C4                 2092 	swap	a
   0873 54 0F              2093 	anl	a,#0x0F
   0875 68                 2094 	xrl	a,r0
   0876 C8                 2095 	xch	a,r0
   0877 54 0F              2096 	anl	a,#0x0F
   0879 C8                 2097 	xch	a,r0
   087A 68                 2098 	xrl	a,r0
   087B C8                 2099 	xch	a,r0
   087C 53 00 1F           2100 	anl	ar0,#0x1F
   087F E4                 2101 	clr	a
   0880 F9                 2102 	mov	r1,a
   0881 E8                 2103 	mov	a,r0
   0882 24 04              2104 	add	a,#_SrcNameTable
   0884 F5 82              2105 	mov	dpl,a
   0886 E9                 2106 	mov	a,r1
   0887 34 F9              2107 	addc	a,#(_SrcNameTable >> 8)
   0889 F5 83              2108 	mov	dph,a
   088B E0                 2109 	movx	a,@dptr
   088C 8E 82              2110 	mov	dpl,r6
   088E 8F 83              2111 	mov	dph,r7
   0890 F0                 2112 	movx	@dptr,a
                    0269   2113 	C$mdrip.c$258$1$1 ==.
                           2114 ;	apps/mdrip/mdrip.c:258: addr[1] = SrcNameTable[(src >> 15) & 0x1F];
   0891 74 01              2115 	mov	a,#0x01
   0893 2E                 2116 	add	a,r6
   0894 FC                 2117 	mov	r4,a
   0895 E4                 2118 	clr	a
   0896 3F                 2119 	addc	a,r7
   0897 FD                 2120 	mov	r5,a
   0898 A8 7C              2121 	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
   089A E5 7D              2122 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
   089C A2 E7              2123 	mov	c,acc.7
   089E C8                 2124 	xch	a,r0
   089F 33                 2125 	rlc	a
   08A0 C8                 2126 	xch	a,r0
   08A1 33                 2127 	rlc	a
   08A2 C8                 2128 	xch	a,r0
   08A3 54 01              2129 	anl	a,#0x01
   08A5 F9                 2130 	mov	r1,a
   08A6 E5 7E              2131 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   08A8 25 7E              2132 	add	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   08AA 49                 2133 	orl	a,r1
   08AB E5 7E              2134 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   08AD 23                 2135 	rl	a
   08AE 54 01              2136 	anl	a,#0x01
   08B0 53 00 1F           2137 	anl	ar0,#0x1F
   08B3 E4                 2138 	clr	a
   08B4 F9                 2139 	mov	r1,a
   08B5 E8                 2140 	mov	a,r0
   08B6 24 04              2141 	add	a,#_SrcNameTable
   08B8 F5 82              2142 	mov	dpl,a
   08BA E9                 2143 	mov	a,r1
   08BB 34 F9              2144 	addc	a,#(_SrcNameTable >> 8)
   08BD F5 83              2145 	mov	dph,a
   08BF E0                 2146 	movx	a,@dptr
   08C0 8C 82              2147 	mov	dpl,r4
   08C2 8D 83              2148 	mov	dph,r5
   08C4 F0                 2149 	movx	@dptr,a
                    029D   2150 	C$mdrip.c$259$1$1 ==.
                           2151 ;	apps/mdrip/mdrip.c:259: addr[2] = SrcNameTable[(src >> 10) & 0x1F];
   08C5 74 02              2152 	mov	a,#0x02
   08C7 2E                 2153 	add	a,r6
   08C8 FC                 2154 	mov	r4,a
   08C9 E4                 2155 	clr	a
   08CA 3F                 2156 	addc	a,r7
   08CB FD                 2157 	mov	r5,a
   08CC A8 7C              2158 	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
   08CE E5 7D              2159 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
   08D0 C3                 2160 	clr	c
   08D1 13                 2161 	rrc	a
   08D2 C8                 2162 	xch	a,r0
   08D3 13                 2163 	rrc	a
   08D4 C8                 2164 	xch	a,r0
   08D5 C3                 2165 	clr	c
   08D6 13                 2166 	rrc	a
   08D7 C8                 2167 	xch	a,r0
   08D8 13                 2168 	rrc	a
   08D9 C8                 2169 	xch	a,r0
   08DA F9                 2170 	mov	r1,a
   08DB E5 7E              2171 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   08DD 03                 2172 	rr	a
   08DE 03                 2173 	rr	a
   08DF 54 C0              2174 	anl	a,#0xC0
   08E1 49                 2175 	orl	a,r1
   08E2 E5 7E              2176 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   08E4 03                 2177 	rr	a
   08E5 03                 2178 	rr	a
   08E6 54 3F              2179 	anl	a,#0x3F
   08E8 53 00 1F           2180 	anl	ar0,#0x1F
   08EB E4                 2181 	clr	a
   08EC F9                 2182 	mov	r1,a
   08ED E8                 2183 	mov	a,r0
   08EE 24 04              2184 	add	a,#_SrcNameTable
   08F0 F5 82              2185 	mov	dpl,a
   08F2 E9                 2186 	mov	a,r1
   08F3 34 F9              2187 	addc	a,#(_SrcNameTable >> 8)
   08F5 F5 83              2188 	mov	dph,a
   08F7 E0                 2189 	movx	a,@dptr
   08F8 8C 82              2190 	mov	dpl,r4
   08FA 8D 83              2191 	mov	dph,r5
   08FC F0                 2192 	movx	@dptr,a
                    02D5   2193 	C$mdrip.c$260$1$1 ==.
                           2194 ;	apps/mdrip/mdrip.c:260: addr[3] = SrcNameTable[(src >> 5) & 0x1F];
   08FD 74 03              2195 	mov	a,#0x03
   08FF 2E                 2196 	add	a,r6
   0900 FC                 2197 	mov	r4,a
   0901 E4                 2198 	clr	a
   0902 3F                 2199 	addc	a,r7
   0903 FD                 2200 	mov	r5,a
   0904 A8 7B              2201 	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
   0906 E5 7C              2202 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
   0908 C4                 2203 	swap	a
   0909 03                 2204 	rr	a
   090A C8                 2205 	xch	a,r0
   090B C4                 2206 	swap	a
   090C 03                 2207 	rr	a
   090D 54 07              2208 	anl	a,#0x07
   090F 68                 2209 	xrl	a,r0
   0910 C8                 2210 	xch	a,r0
   0911 54 07              2211 	anl	a,#0x07
   0913 C8                 2212 	xch	a,r0
   0914 68                 2213 	xrl	a,r0
   0915 C8                 2214 	xch	a,r0
   0916 F9                 2215 	mov	r1,a
   0917 E5 7D              2216 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
   0919 C4                 2217 	swap	a
   091A 03                 2218 	rr	a
   091B 54 F8              2219 	anl	a,#0xF8
   091D 49                 2220 	orl	a,r1
   091E AA 7D              2221 	mov	r2,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
   0920 E5 7E              2222 	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
   0922 C4                 2223 	swap	a
   0923 03                 2224 	rr	a
   0924 CA                 2225 	xch	a,r2
   0925 C4                 2226 	swap	a
   0926 03                 2227 	rr	a
   0927 54 07              2228 	anl	a,#0x07
   0929 6A                 2229 	xrl	a,r2
   092A CA                 2230 	xch	a,r2
   092B 54 07              2231 	anl	a,#0x07
   092D CA                 2232 	xch	a,r2
   092E 6A                 2233 	xrl	a,r2
   092F CA                 2234 	xch	a,r2
   0930 53 00 1F           2235 	anl	ar0,#0x1F
   0933 E4                 2236 	clr	a
   0934 F9                 2237 	mov	r1,a
   0935 E8                 2238 	mov	a,r0
   0936 24 04              2239 	add	a,#_SrcNameTable
   0938 F5 82              2240 	mov	dpl,a
   093A E9                 2241 	mov	a,r1
   093B 34 F9              2242 	addc	a,#(_SrcNameTable >> 8)
   093D F5 83              2243 	mov	dph,a
   093F E0                 2244 	movx	a,@dptr
   0940 8C 82              2245 	mov	dpl,r4
   0942 8D 83              2246 	mov	dph,r5
   0944 F0                 2247 	movx	@dptr,a
                    031D   2248 	C$mdrip.c$261$1$1 ==.
                           2249 ;	apps/mdrip/mdrip.c:261: addr[4] = SrcNameTable[(src >> 0) & 0x1F];
   0945 74 04              2250 	mov	a,#0x04
   0947 2E                 2251 	add	a,r6
   0948 FC                 2252 	mov	r4,a
   0949 E4                 2253 	clr	a
   094A 3F                 2254 	addc	a,r7
   094B FD                 2255 	mov	r5,a
   094C A8 7B              2256 	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
   094E 53 00 1F           2257 	anl	ar0,#0x1F
   0951 E4                 2258 	clr	a
   0952 F9                 2259 	mov	r1,a
   0953 E8                 2260 	mov	a,r0
   0954 24 04              2261 	add	a,#_SrcNameTable
   0956 F5 82              2262 	mov	dpl,a
   0958 E9                 2263 	mov	a,r1
   0959 34 F9              2264 	addc	a,#(_SrcNameTable >> 8)
   095B F5 83              2265 	mov	dph,a
   095D E0                 2266 	movx	a,@dptr
   095E 8C 82              2267 	mov	dpl,r4
   0960 8D 83              2268 	mov	dph,r5
   0962 F0                 2269 	movx	@dptr,a
                    033B   2270 	C$mdrip.c$262$1$1 ==.
                           2271 ;	apps/mdrip/mdrip.c:262: addr[5] = 0;
   0963 8E 82              2272 	mov	dpl,r6
   0965 8F 83              2273 	mov	dph,r7
   0967 A3                 2274 	inc	dptr
   0968 A3                 2275 	inc	dptr
   0969 A3                 2276 	inc	dptr
   096A A3                 2277 	inc	dptr
   096B A3                 2278 	inc	dptr
   096C E4                 2279 	clr	a
   096D F0                 2280 	movx	@dptr,a
                    0346   2281 	C$mdrip.c$263$1$1 ==.
                    0346   2282 	XG$dexcom_src_to_ascii$0$0 ==.
   096E 22                 2283 	ret
                           2284 ;------------------------------------------------------------
                           2285 ;Allocation info for local variables in function 'clearRxErrors'
                           2286 ;------------------------------------------------------------
                    0347   2287 	G$clearRxErrors$0$0 ==.
                    0347   2288 	C$mdrip.c$265$1$1 ==.
                           2289 ;	apps/mdrip/mdrip.c:265: void clearRxErrors() {	
                           2290 ;	-----------------------------------------
                           2291 ;	 function clearRxErrors
                           2292 ;	-----------------------------------------
   096F                    2293 _clearRxErrors:
                    0347   2294 	C$mdrip.c$266$1$1 ==.
                           2295 ;	apps/mdrip/mdrip.c:266: if (uart1RxBufferFullOccurred)
                    0347   2296 	C$mdrip.c$267$2$2 ==.
                           2297 ;	apps/mdrip/mdrip.c:267: {   uart1RxBufferFullOccurred = 0;							// Clear Buffer Full Errors
   096F 10 0B 02           2298 	jbc	_uart1RxBufferFullOccurred,00112$
   0972 80 03              2299 	sjmp	00102$
   0974                    2300 00112$:
                    034C   2301 	C$mdrip.c$268$3$3 ==.
                           2302 ;	apps/mdrip/mdrip.c:268: LED_RED(1);												// Error Indicator
   0974 43 FF 02           2303 	orl	_P2DIR,#0x02
   0977                    2304 00102$:
                    034F   2305 	C$mdrip.c$270$1$1 ==.
                           2306 ;	apps/mdrip/mdrip.c:270: if (uart1RxParityErrorOccurred)
                    034F   2307 	C$mdrip.c$271$2$4 ==.
                           2308 ;	apps/mdrip/mdrip.c:271: {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
   0977 10 09 02           2309 	jbc	_uart1RxParityErrorOccurred,00113$
   097A 80 03              2310 	sjmp	00104$
   097C                    2311 00113$:
                    0354   2312 	C$mdrip.c$272$3$5 ==.
                           2313 ;	apps/mdrip/mdrip.c:272: LED_RED(1);												// Error Indicator
   097C 43 FF 02           2314 	orl	_P2DIR,#0x02
   097F                    2315 00104$:
                    0357   2316 	C$mdrip.c$274$1$1 ==.
                           2317 ;	apps/mdrip/mdrip.c:274: if (uart1RxFramingErrorOccurred)
                    0357   2318 	C$mdrip.c$275$2$6 ==.
                           2319 ;	apps/mdrip/mdrip.c:275: {   uart1RxFramingErrorOccurred = 0;
   097F 10 0A 02           2320 	jbc	_uart1RxFramingErrorOccurred,00114$
   0982 80 0F              2321 	sjmp	00106$
   0984                    2322 00114$:
                    035C   2323 	C$mdrip.c$276$3$7 ==.
                           2324 ;	apps/mdrip/mdrip.c:276: LED_RED(1);												// Put the red LED on to show there was an error
   0984 43 FF 02           2325 	orl	_P2DIR,#0x02
                    035F   2326 	C$mdrip.c$277$2$6 ==.
                           2327 ;	apps/mdrip/mdrip.c:277: uartDisable();
   0987 12 06 66           2328 	lcall	_uartDisable
                    0362   2329 	C$mdrip.c$279$2$6 ==.
                           2330 ;	apps/mdrip/mdrip.c:279: delayMs(250);											// Crude and will slow us down but we can take the small hit
   098A 90 00 FA           2331 	mov	dptr,#0x00FA
   098D 12 45 D8           2332 	lcall	_delayMs
                    0368   2333 	C$mdrip.c$282$2$6 ==.
                           2334 ;	apps/mdrip/mdrip.c:282: uartEnable();
   0990 12 06 55           2335 	lcall	_uartEnable
   0993                    2336 00106$:
                    036B   2337 	C$mdrip.c$284$2$8 ==.
                           2338 ;	apps/mdrip/mdrip.c:284: LED_RED(0);												// Error Indicator
   0993 AF FF              2339 	mov	r7,_P2DIR
   0995 53 07 FD           2340 	anl	ar7,#0xFD
   0998 8F FF              2341 	mov	_P2DIR,r7
                    0372   2342 	C$mdrip.c$285$2$8 ==.
                    0372   2343 	XG$clearRxErrors$0$0 ==.
   099A 22                 2344 	ret
                           2345 ;------------------------------------------------------------
                           2346 ;Allocation info for local variables in function 'doServices'
                           2347 ;------------------------------------------------------------
                    0373   2348 	G$doServices$0$0 ==.
                    0373   2349 	C$mdrip.c$287$2$8 ==.
                           2350 ;	apps/mdrip/mdrip.c:287: void doServices() {
                           2351 ;	-----------------------------------------
                           2352 ;	 function doServices
                           2353 ;	-----------------------------------------
   099B                    2354 _doServices:
                    0373   2355 	C$mdrip.c$288$1$1 ==.
                           2356 ;	apps/mdrip/mdrip.c:288: boardService();
   099B 12 39 AB           2357 	lcall	_boardService
                    0376   2358 	C$mdrip.c$289$1$1 ==.
                           2359 ;	apps/mdrip/mdrip.c:289: if(usbPowerPresent()) {
   099E 12 3A 62           2360 	lcall	_usbPowerPresent
   09A1 50 06              2361 	jnc	00103$
                    037B   2362 	C$mdrip.c$290$2$2 ==.
                           2363 ;	apps/mdrip/mdrip.c:290: usbComService();
   09A3 12 31 D6           2364 	lcall	_usbComService
                    037E   2365 	C$mdrip.c$291$2$2 ==.
                           2366 ;	apps/mdrip/mdrip.c:291: usbShowStatusWithGreenLed();
   09A6 12 48 F6           2367 	lcall	_usbShowStatusWithGreenLed
   09A9                    2368 00103$:
                    0381   2369 	C$mdrip.c$295$2$1 ==.
                    0381   2370 	XG$doServices$0$0 ==.
   09A9 22                 2371 	ret
                           2372 ;------------------------------------------------------------
                           2373 ;Allocation info for local variables in function 'initUart1'
                           2374 ;------------------------------------------------------------
                    0382   2375 	G$initUart1$0$0 ==.
                    0382   2376 	C$mdrip.c$297$2$1 ==.
                           2377 ;	apps/mdrip/mdrip.c:297: void initUart1() {
                           2378 ;	-----------------------------------------
                           2379 ;	 function initUart1
                           2380 ;	-----------------------------------------
   09AA                    2381 _initUart1:
                    0382   2382 	C$mdrip.c$298$1$1 ==.
                           2383 ;	apps/mdrip/mdrip.c:298: uart1Init();
   09AA 12 26 1F           2384 	lcall	_uart1Init
                    0385   2385 	C$mdrip.c$299$1$1 ==.
                           2386 ;	apps/mdrip/mdrip.c:299: uart1SetBaudRate(9600);
   09AD 90 25 80           2387 	mov	dptr,#0x2580
   09B0 E4                 2388 	clr	a
   09B1 F5 F0              2389 	mov	b,a
   09B3 12 26 53           2390 	lcall	_uart1SetBaudRate
                    038E   2391 	C$mdrip.c$300$1$1 ==.
                    038E   2392 	XG$initUart1$0$0 ==.
   09B6 22                 2393 	ret
                           2394 ;------------------------------------------------------------
                           2395 ;Allocation info for local variables in function 'getSrcValue'
                           2396 ;------------------------------------------------------------
                           2397 ;srcVal                    Allocated with name '_getSrcValue_srcVal_1_1'
                           2398 ;i                         Allocated with name '_getSrcValue_i_1_1'
                           2399 ;------------------------------------------------------------
                    038F   2400 	G$getSrcValue$0$0 ==.
                    038F   2401 	C$mdrip.c$302$1$1 ==.
                           2402 ;	apps/mdrip/mdrip.c:302: uint32 getSrcValue(XDATA char srcVal) {
                           2403 ;	-----------------------------------------
                           2404 ;	 function getSrcValue
                           2405 ;	-----------------------------------------
   09B7                    2406 _getSrcValue:
   09B7 E5 82              2407 	mov	a,dpl
                    0391   2408 	C$mdrip.c$304$2$2 ==.
                           2409 ;	apps/mdrip/mdrip.c:304: for(i = 0; i < 32; i++) {
   09B9 90 F0 FC           2410 	mov	dptr,#_getSrcValue_srcVal_1_1
   09BC F0                 2411 	movx	@dptr,a
   09BD FF                 2412 	mov	r7,a
   09BE 7E 00              2413 	mov	r6,#0x00
   09C0                    2414 00103$:
   09C0 BE 20 00           2415 	cjne	r6,#0x20,00113$
   09C3                    2416 00113$:
   09C3 50 14              2417 	jnc	00106$
                    039D   2418 	C$mdrip.c$305$2$2 ==.
                           2419 ;	apps/mdrip/mdrip.c:305: if (SrcNameTable[i]==srcVal) break;
   09C5 EE                 2420 	mov	a,r6
   09C6 24 04              2421 	add	a,#_SrcNameTable
   09C8 F5 82              2422 	mov	dpl,a
   09CA E4                 2423 	clr	a
   09CB 34 F9              2424 	addc	a,#(_SrcNameTable >> 8)
   09CD F5 83              2425 	mov	dph,a
   09CF E0                 2426 	movx	a,@dptr
   09D0 FD                 2427 	mov	r5,a
   09D1 B5 07 02           2428 	cjne	a,ar7,00115$
   09D4 80 03              2429 	sjmp	00106$
   09D6                    2430 00115$:
                    03AE   2431 	C$mdrip.c$304$1$1 ==.
                           2432 ;	apps/mdrip/mdrip.c:304: for(i = 0; i < 32; i++) {
   09D6 0E                 2433 	inc	r6
   09D7 80 E7              2434 	sjmp	00103$
   09D9                    2435 00106$:
                    03B1   2436 	C$mdrip.c$307$1$1 ==.
                           2437 ;	apps/mdrip/mdrip.c:307: return i & 0xFF;
   09D9 7F 00              2438 	mov	r7,#0x00
   09DB 7D 00              2439 	mov	r5,#0x00
   09DD 7C 00              2440 	mov	r4,#0x00
   09DF 8E 82              2441 	mov	dpl,r6
   09E1 8F 83              2442 	mov	dph,r7
   09E3 8D F0              2443 	mov	b,r5
   09E5 EC                 2444 	mov	a,r4
                    03BE   2445 	C$mdrip.c$308$1$1 ==.
                    03BE   2446 	XG$getSrcValue$0$0 ==.
   09E6 22                 2447 	ret
                           2448 ;------------------------------------------------------------
                           2449 ;Allocation info for local variables in function 'getFonaString'
                           2450 ;------------------------------------------------------------
                           2451 ;sloc0                     Allocated with name '_getFonaString_sloc0_1_0'
                           2452 ;uartCharacters            Allocated with name '_getFonaString_uartCharacters_1_1'
                           2453 ;i                         Allocated with name '_getFonaString_i_1_1'
                           2454 ;stop                      Allocated with name '_getFonaString_stop_1_1'
                           2455 ;now                       Allocated with name '_getFonaString_now_1_1'
                           2456 ;------------------------------------------------------------
                    03BF   2457 	G$getFonaString$0$0 ==.
                    03BF   2458 	C$mdrip.c$310$1$1 ==.
                           2459 ;	apps/mdrip/mdrip.c:310: XDATA char * getFonaString() {					// Read the uart input buffer once character at a time
                           2460 ;	-----------------------------------------
                           2461 ;	 function getFonaString
                           2462 ;	-----------------------------------------
   09E7                    2463 _getFonaString:
                    03BF   2464 	C$mdrip.c$318$1$1 ==.
                           2465 ;	apps/mdrip/mdrip.c:318: stop = (getMs() + (AT_TIMEOUT * 1000));
   09E7 12 45 AC           2466 	lcall	_getMs
   09EA 85 82 26           2467 	mov	_getFonaString_sloc0_1_0,dpl
   09ED 85 83 27           2468 	mov	(_getFonaString_sloc0_1_0 + 1),dph
   09F0 85 F0 28           2469 	mov	(_getFonaString_sloc0_1_0 + 2),b
   09F3 F5 29              2470 	mov	(_getFonaString_sloc0_1_0 + 3),a
   09F5 90 F8 EF           2471 	mov	dptr,#_AT_TIMEOUT
   09F8 E0                 2472 	movx	a,@dptr
   09F9 78 A4              2473 	mov	r0,#__mulint_PARM_2
   09FB F2                 2474 	movx	@r0,a
   09FC 08                 2475 	inc	r0
   09FD E4                 2476 	clr	a
   09FE F2                 2477 	movx	@r0,a
   09FF 90 03 E8           2478 	mov	dptr,#0x03E8
   0A02 12 3A 79           2479 	lcall	__mulint
   0A05 AA 82              2480 	mov	r2,dpl
   0A07 E5 83              2481 	mov	a,dph
   0A09 FB                 2482 	mov	r3,a
   0A0A 33                 2483 	rlc	a
   0A0B 95 E0              2484 	subb	a,acc
   0A0D FE                 2485 	mov	r6,a
   0A0E FF                 2486 	mov	r7,a
   0A0F EA                 2487 	mov	a,r2
   0A10 25 26              2488 	add	a,_getFonaString_sloc0_1_0
   0A12 FA                 2489 	mov	r2,a
   0A13 EB                 2490 	mov	a,r3
   0A14 35 27              2491 	addc	a,(_getFonaString_sloc0_1_0 + 1)
   0A16 FB                 2492 	mov	r3,a
   0A17 EE                 2493 	mov	a,r6
   0A18 35 28              2494 	addc	a,(_getFonaString_sloc0_1_0 + 2)
   0A1A FE                 2495 	mov	r6,a
   0A1B EF                 2496 	mov	a,r7
   0A1C 35 29              2497 	addc	a,(_getFonaString_sloc0_1_0 + 3)
   0A1E FF                 2498 	mov	r7,a
   0A1F 90 F1 4D           2499 	mov	dptr,#_getFonaString_stop_1_1
   0A22 EA                 2500 	mov	a,r2
   0A23 F0                 2501 	movx	@dptr,a
   0A24 A3                 2502 	inc	dptr
   0A25 EB                 2503 	mov	a,r3
   0A26 F0                 2504 	movx	@dptr,a
   0A27 A3                 2505 	inc	dptr
   0A28 EE                 2506 	mov	a,r6
   0A29 F0                 2507 	movx	@dptr,a
   0A2A A3                 2508 	inc	dptr
   0A2B EF                 2509 	mov	a,r7
   0A2C F0                 2510 	movx	@dptr,a
                    0405   2511 	C$mdrip.c$319$1$1 ==.
                           2512 ;	apps/mdrip/mdrip.c:319: now  = getMs();
   0A2D 12 45 AC           2513 	lcall	_getMs
   0A30 AC 82              2514 	mov	r4,dpl
   0A32 AD 83              2515 	mov	r5,dph
   0A34 AE F0              2516 	mov	r6,b
   0A36 FF                 2517 	mov	r7,a
   0A37 90 F1 51           2518 	mov	dptr,#_getFonaString_now_1_1
   0A3A EC                 2519 	mov	a,r4
   0A3B F0                 2520 	movx	@dptr,a
   0A3C A3                 2521 	inc	dptr
   0A3D ED                 2522 	mov	a,r5
   0A3E F0                 2523 	movx	@dptr,a
   0A3F A3                 2524 	inc	dptr
   0A40 EE                 2525 	mov	a,r6
   0A41 F0                 2526 	movx	@dptr,a
   0A42 A3                 2527 	inc	dptr
   0A43 EF                 2528 	mov	a,r7
   0A44 F0                 2529 	movx	@dptr,a
                    041D   2530 	C$mdrip.c$320$1$1 ==.
                           2531 ;	apps/mdrip/mdrip.c:320: while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
   0A45 90 F1 4D           2532 	mov	dptr,#_getFonaString_stop_1_1
   0A48 E0                 2533 	movx	a,@dptr
   0A49 F5 26              2534 	mov	_getFonaString_sloc0_1_0,a
   0A4B A3                 2535 	inc	dptr
   0A4C E0                 2536 	movx	a,@dptr
   0A4D F5 27              2537 	mov	(_getFonaString_sloc0_1_0 + 1),a
   0A4F A3                 2538 	inc	dptr
   0A50 E0                 2539 	movx	a,@dptr
   0A51 F5 28              2540 	mov	(_getFonaString_sloc0_1_0 + 2),a
   0A53 A3                 2541 	inc	dptr
   0A54 E0                 2542 	movx	a,@dptr
   0A55 F5 29              2543 	mov	(_getFonaString_sloc0_1_0 + 3),a
   0A57                    2544 00102$:
   0A57 12 27 D2           2545 	lcall	_uart1RxAvailable
   0A5A E5 82              2546 	mov	a,dpl
   0A5C 70 45              2547 	jnz	00123$
   0A5E 90 F1 51           2548 	mov	dptr,#_getFonaString_now_1_1
   0A61 E0                 2549 	movx	a,@dptr
   0A62 FA                 2550 	mov	r2,a
   0A63 A3                 2551 	inc	dptr
   0A64 E0                 2552 	movx	a,@dptr
   0A65 FB                 2553 	mov	r3,a
   0A66 A3                 2554 	inc	dptr
   0A67 E0                 2555 	movx	a,@dptr
   0A68 FE                 2556 	mov	r6,a
   0A69 A3                 2557 	inc	dptr
   0A6A E0                 2558 	movx	a,@dptr
   0A6B FF                 2559 	mov	r7,a
   0A6C C3                 2560 	clr	c
   0A6D EA                 2561 	mov	a,r2
   0A6E 95 26              2562 	subb	a,_getFonaString_sloc0_1_0
   0A70 EB                 2563 	mov	a,r3
   0A71 95 27              2564 	subb	a,(_getFonaString_sloc0_1_0 + 1)
   0A73 EE                 2565 	mov	a,r6
   0A74 95 28              2566 	subb	a,(_getFonaString_sloc0_1_0 + 2)
   0A76 EF                 2567 	mov	a,r7
   0A77 64 80              2568 	xrl	a,#0x80
   0A79 85 29 F0           2569 	mov	b,(_getFonaString_sloc0_1_0 + 3)
   0A7C 63 F0 80           2570 	xrl	b,#0x80
   0A7F 95 F0              2571 	subb	a,b
   0A81 50 20              2572 	jnc	00123$
                    045B   2573 	C$mdrip.c$321$2$2 ==.
                           2574 ;	apps/mdrip/mdrip.c:321: now  = getMs();
   0A83 12 45 AC           2575 	lcall	_getMs
   0A86 AC 82              2576 	mov	r4,dpl
   0A88 AD 83              2577 	mov	r5,dph
   0A8A AE F0              2578 	mov	r6,b
   0A8C FF                 2579 	mov	r7,a
   0A8D 90 F1 51           2580 	mov	dptr,#_getFonaString_now_1_1
   0A90 EC                 2581 	mov	a,r4
   0A91 F0                 2582 	movx	@dptr,a
   0A92 A3                 2583 	inc	dptr
   0A93 ED                 2584 	mov	a,r5
   0A94 F0                 2585 	movx	@dptr,a
   0A95 A3                 2586 	inc	dptr
   0A96 EE                 2587 	mov	a,r6
   0A97 F0                 2588 	movx	@dptr,a
   0A98 A3                 2589 	inc	dptr
   0A99 EF                 2590 	mov	a,r7
   0A9A F0                 2591 	movx	@dptr,a
                    0473   2592 	C$mdrip.c$322$2$2 ==.
                           2593 ;	apps/mdrip/mdrip.c:322: delayMs(10);
   0A9B 90 00 0A           2594 	mov	dptr,#0x000A
   0A9E 12 45 D8           2595 	lcall	_delayMs
                    0479   2596 	C$mdrip.c$325$1$1 ==.
                           2597 ;	apps/mdrip/mdrip.c:325: while (uart1RxAvailable() && i < 80) {
   0AA1 80 B4              2598 	sjmp	00102$
   0AA3                    2599 00123$:
   0AA3 7F 00              2600 	mov	r7,#0x00
   0AA5                    2601 00111$:
   0AA5 C0 07              2602 	push	ar7
   0AA7 12 27 D2           2603 	lcall	_uart1RxAvailable
   0AAA E5 82              2604 	mov	a,dpl
   0AAC D0 07              2605 	pop	ar7
   0AAE 60 61              2606 	jz	00113$
   0AB0 C3                 2607 	clr	c
   0AB1 EF                 2608 	mov	a,r7
   0AB2 64 80              2609 	xrl	a,#0x80
   0AB4 94 D0              2610 	subb	a,#0xd0
   0AB6 50 59              2611 	jnc	00113$
                    0490   2612 	C$mdrip.c$326$2$3 ==.
                           2613 ;	apps/mdrip/mdrip.c:326: uartCharacters[i] = uart1RxReceiveByte();
   0AB8 EF                 2614 	mov	a,r7
   0AB9 24 FD              2615 	add	a,#_getFonaString_uartCharacters_1_1
   0ABB FD                 2616 	mov	r5,a
   0ABC E4                 2617 	clr	a
   0ABD 34 F0              2618 	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
   0ABF FE                 2619 	mov	r6,a
   0AC0 C0 07              2620 	push	ar7
   0AC2 C0 06              2621 	push	ar6
   0AC4 C0 05              2622 	push	ar5
   0AC6 12 27 DA           2623 	lcall	_uart1RxReceiveByte
   0AC9 AC 82              2624 	mov	r4,dpl
   0ACB D0 05              2625 	pop	ar5
   0ACD D0 06              2626 	pop	ar6
   0ACF 8D 82              2627 	mov	dpl,r5
   0AD1 8E 83              2628 	mov	dph,r6
   0AD3 EC                 2629 	mov	a,r4
   0AD4 F0                 2630 	movx	@dptr,a
                    04AD   2631 	C$mdrip.c$328$2$3 ==.
                           2632 ;	apps/mdrip/mdrip.c:328: if (usbPowerPresent()) {
   0AD5 12 3A 62           2633 	lcall	_usbPowerPresent
   0AD8 D0 07              2634 	pop	ar7
   0ADA 50 28              2635 	jnc	00109$
                    04B4   2636 	C$mdrip.c$329$3$4 ==.
                           2637 ;	apps/mdrip/mdrip.c:329: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
   0ADC                    2638 00105$:
   0ADC C0 07              2639 	push	ar7
   0ADE 12 32 7B           2640 	lcall	_usbComTxAvailable
   0AE1 E5 82              2641 	mov	a,dpl
   0AE3 D0 07              2642 	pop	ar7
   0AE5 70 09              2643 	jnz	00107$
                    04BF   2644 	C$mdrip.c$331$4$5 ==.
                           2645 ;	apps/mdrip/mdrip.c:331: doServices();
   0AE7 C0 07              2646 	push	ar7
   0AE9 12 09 9B           2647 	lcall	_doServices
   0AEC D0 07              2648 	pop	ar7
   0AEE 80 EC              2649 	sjmp	00105$
   0AF0                    2650 00107$:
                    04C8   2651 	C$mdrip.c$333$3$4 ==.
                           2652 ;	apps/mdrip/mdrip.c:333: usbComTxSendByte(uartCharacters[i]);
   0AF0 EF                 2653 	mov	a,r7
   0AF1 24 FD              2654 	add	a,#_getFonaString_uartCharacters_1_1
   0AF3 F5 82              2655 	mov	dpl,a
   0AF5 E4                 2656 	clr	a
   0AF6 34 F0              2657 	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
   0AF8 F5 83              2658 	mov	dph,a
   0AFA E0                 2659 	movx	a,@dptr
   0AFB F5 82              2660 	mov	dpl,a
   0AFD C0 07              2661 	push	ar7
   0AFF 12 33 0D           2662 	lcall	_usbComTxSendByte
   0B02 D0 07              2663 	pop	ar7
   0B04                    2664 00109$:
                    04DC   2665 	C$mdrip.c$335$2$3 ==.
                           2666 ;	apps/mdrip/mdrip.c:335: delayMs(10);
   0B04 90 00 0A           2667 	mov	dptr,#0x000A
   0B07 C0 07              2668 	push	ar7
   0B09 12 45 D8           2669 	lcall	_delayMs
   0B0C D0 07              2670 	pop	ar7
                    04E6   2671 	C$mdrip.c$336$2$3 ==.
                           2672 ;	apps/mdrip/mdrip.c:336: i++;
   0B0E 0F                 2673 	inc	r7
   0B0F 80 94              2674 	sjmp	00111$
   0B11                    2675 00113$:
                    04E9   2676 	C$mdrip.c$338$1$1 ==.
                           2677 ;	apps/mdrip/mdrip.c:338: uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
   0B11 EF                 2678 	mov	a,r7
   0B12 24 FD              2679 	add	a,#_getFonaString_uartCharacters_1_1
   0B14 F5 82              2680 	mov	dpl,a
   0B16 E4                 2681 	clr	a
   0B17 34 F0              2682 	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
   0B19 F5 83              2683 	mov	dph,a
   0B1B E4                 2684 	clr	a
   0B1C F0                 2685 	movx	@dptr,a
                    04F5   2686 	C$mdrip.c$339$1$1 ==.
                           2687 ;	apps/mdrip/mdrip.c:339: return uartCharacters;
   0B1D 90 F0 FD           2688 	mov	dptr,#_getFonaString_uartCharacters_1_1
                    04F8   2689 	C$mdrip.c$340$1$1 ==.
                    04F8   2690 	XG$getFonaString$0$0 ==.
   0B20 22                 2691 	ret
                           2692 ;------------------------------------------------------------
                           2693 ;Allocation info for local variables in function 'sendAT'
                           2694 ;------------------------------------------------------------
                           2695 ;atString                  Allocated with name '_sendAT_atString_1_1'
                           2696 ;ATresponse                Allocated with name '_sendAT_ATresponse_1_1'
                           2697 ;------------------------------------------------------------
                    04F9   2698 	G$sendAT$0$0 ==.
                    04F9   2699 	C$mdrip.c$342$1$1 ==.
                           2700 ;	apps/mdrip/mdrip.c:342: void sendAT(XDATA char atString[40]) {
                           2701 ;	-----------------------------------------
                           2702 ;	 function sendAT
                           2703 ;	-----------------------------------------
   0B21                    2704 _sendAT:
   0B21 AF 83              2705 	mov	r7,dph
   0B23 E5 82              2706 	mov	a,dpl
   0B25 90 F1 55           2707 	mov	dptr,#_sendAT_atString_1_1
   0B28 F0                 2708 	movx	@dptr,a
   0B29 A3                 2709 	inc	dptr
   0B2A EF                 2710 	mov	a,r7
   0B2B F0                 2711 	movx	@dptr,a
                    0504   2712 	C$mdrip.c$343$1$1 ==.
                           2713 ;	apps/mdrip/mdrip.c:343: XDATA char ATresponse[80]={0};
   0B2C 90 F1 57           2714 	mov	dptr,#_sendAT_ATresponse_1_1
   0B2F E4                 2715 	clr	a
   0B30 F0                 2716 	movx	@dptr,a
   0B31 90 F1 58           2717 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0001)
   0B34 F0                 2718 	movx	@dptr,a
   0B35 90 F1 59           2719 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0002)
   0B38 F0                 2720 	movx	@dptr,a
   0B39 90 F1 5A           2721 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0003)
   0B3C F0                 2722 	movx	@dptr,a
   0B3D 90 F1 5B           2723 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0004)
   0B40 E4                 2724 	clr	a
   0B41 F0                 2725 	movx	@dptr,a
   0B42 90 F1 5C           2726 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0005)
   0B45 F0                 2727 	movx	@dptr,a
   0B46 90 F1 5D           2728 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0006)
   0B49 F0                 2729 	movx	@dptr,a
   0B4A 90 F1 5E           2730 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0007)
   0B4D F0                 2731 	movx	@dptr,a
   0B4E 90 F1 5F           2732 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0008)
   0B51 E4                 2733 	clr	a
   0B52 F0                 2734 	movx	@dptr,a
   0B53 90 F1 60           2735 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0009)
   0B56 F0                 2736 	movx	@dptr,a
   0B57 90 F1 61           2737 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000a)
   0B5A F0                 2738 	movx	@dptr,a
   0B5B 90 F1 62           2739 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000b)
   0B5E F0                 2740 	movx	@dptr,a
   0B5F 90 F1 63           2741 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000c)
   0B62 E4                 2742 	clr	a
   0B63 F0                 2743 	movx	@dptr,a
   0B64 90 F1 64           2744 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000d)
   0B67 F0                 2745 	movx	@dptr,a
   0B68 90 F1 65           2746 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000e)
   0B6B F0                 2747 	movx	@dptr,a
   0B6C 90 F1 66           2748 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000f)
   0B6F F0                 2749 	movx	@dptr,a
   0B70 90 F1 67           2750 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0010)
   0B73 E4                 2751 	clr	a
   0B74 F0                 2752 	movx	@dptr,a
   0B75 90 F1 68           2753 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0011)
   0B78 F0                 2754 	movx	@dptr,a
   0B79 90 F1 69           2755 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0012)
   0B7C F0                 2756 	movx	@dptr,a
   0B7D 90 F1 6A           2757 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0013)
   0B80 F0                 2758 	movx	@dptr,a
   0B81 90 F1 6B           2759 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0014)
   0B84 E4                 2760 	clr	a
   0B85 F0                 2761 	movx	@dptr,a
   0B86 90 F1 6C           2762 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0015)
   0B89 F0                 2763 	movx	@dptr,a
   0B8A 90 F1 6D           2764 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0016)
   0B8D F0                 2765 	movx	@dptr,a
   0B8E 90 F1 6E           2766 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0017)
   0B91 F0                 2767 	movx	@dptr,a
   0B92 90 F1 6F           2768 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0018)
   0B95 E4                 2769 	clr	a
   0B96 F0                 2770 	movx	@dptr,a
   0B97 90 F1 70           2771 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0019)
   0B9A F0                 2772 	movx	@dptr,a
   0B9B 90 F1 71           2773 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001a)
   0B9E F0                 2774 	movx	@dptr,a
   0B9F 90 F1 72           2775 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001b)
   0BA2 F0                 2776 	movx	@dptr,a
   0BA3 90 F1 73           2777 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001c)
   0BA6 E4                 2778 	clr	a
   0BA7 F0                 2779 	movx	@dptr,a
   0BA8 90 F1 74           2780 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001d)
   0BAB F0                 2781 	movx	@dptr,a
   0BAC 90 F1 75           2782 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001e)
   0BAF F0                 2783 	movx	@dptr,a
   0BB0 90 F1 76           2784 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001f)
   0BB3 F0                 2785 	movx	@dptr,a
   0BB4 90 F1 77           2786 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0020)
   0BB7 E4                 2787 	clr	a
   0BB8 F0                 2788 	movx	@dptr,a
   0BB9 90 F1 78           2789 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0021)
   0BBC F0                 2790 	movx	@dptr,a
   0BBD 90 F1 79           2791 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0022)
   0BC0 F0                 2792 	movx	@dptr,a
   0BC1 90 F1 7A           2793 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0023)
   0BC4 F0                 2794 	movx	@dptr,a
   0BC5 90 F1 7B           2795 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0024)
   0BC8 E4                 2796 	clr	a
   0BC9 F0                 2797 	movx	@dptr,a
   0BCA 90 F1 7C           2798 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0025)
   0BCD F0                 2799 	movx	@dptr,a
   0BCE 90 F1 7D           2800 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0026)
   0BD1 F0                 2801 	movx	@dptr,a
   0BD2 90 F1 7E           2802 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0027)
   0BD5 F0                 2803 	movx	@dptr,a
   0BD6 90 F1 7F           2804 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0028)
   0BD9 E4                 2805 	clr	a
   0BDA F0                 2806 	movx	@dptr,a
   0BDB 90 F1 80           2807 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0029)
   0BDE F0                 2808 	movx	@dptr,a
   0BDF 90 F1 81           2809 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002a)
   0BE2 F0                 2810 	movx	@dptr,a
   0BE3 90 F1 82           2811 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002b)
   0BE6 F0                 2812 	movx	@dptr,a
   0BE7 90 F1 83           2813 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002c)
   0BEA E4                 2814 	clr	a
   0BEB F0                 2815 	movx	@dptr,a
   0BEC 90 F1 84           2816 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002d)
   0BEF F0                 2817 	movx	@dptr,a
   0BF0 90 F1 85           2818 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002e)
   0BF3 F0                 2819 	movx	@dptr,a
   0BF4 90 F1 86           2820 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002f)
   0BF7 F0                 2821 	movx	@dptr,a
   0BF8 90 F1 87           2822 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0030)
   0BFB E4                 2823 	clr	a
   0BFC F0                 2824 	movx	@dptr,a
   0BFD 90 F1 88           2825 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0031)
   0C00 F0                 2826 	movx	@dptr,a
   0C01 90 F1 89           2827 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0032)
   0C04 F0                 2828 	movx	@dptr,a
   0C05 90 F1 8A           2829 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0033)
   0C08 F0                 2830 	movx	@dptr,a
   0C09 90 F1 8B           2831 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0034)
   0C0C E4                 2832 	clr	a
   0C0D F0                 2833 	movx	@dptr,a
   0C0E 90 F1 8C           2834 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0035)
   0C11 F0                 2835 	movx	@dptr,a
   0C12 90 F1 8D           2836 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0036)
   0C15 F0                 2837 	movx	@dptr,a
   0C16 90 F1 8E           2838 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0037)
   0C19 F0                 2839 	movx	@dptr,a
   0C1A 90 F1 8F           2840 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0038)
   0C1D E4                 2841 	clr	a
   0C1E F0                 2842 	movx	@dptr,a
   0C1F 90 F1 90           2843 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0039)
   0C22 F0                 2844 	movx	@dptr,a
   0C23 90 F1 91           2845 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003a)
   0C26 F0                 2846 	movx	@dptr,a
   0C27 90 F1 92           2847 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003b)
   0C2A F0                 2848 	movx	@dptr,a
   0C2B 90 F1 93           2849 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003c)
   0C2E E4                 2850 	clr	a
   0C2F F0                 2851 	movx	@dptr,a
   0C30 90 F1 94           2852 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003d)
   0C33 F0                 2853 	movx	@dptr,a
   0C34 90 F1 95           2854 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003e)
   0C37 F0                 2855 	movx	@dptr,a
   0C38 90 F1 96           2856 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003f)
   0C3B F0                 2857 	movx	@dptr,a
   0C3C 90 F1 97           2858 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0040)
   0C3F E4                 2859 	clr	a
   0C40 F0                 2860 	movx	@dptr,a
   0C41 90 F1 98           2861 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0041)
   0C44 F0                 2862 	movx	@dptr,a
   0C45 90 F1 99           2863 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0042)
   0C48 F0                 2864 	movx	@dptr,a
   0C49 90 F1 9A           2865 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0043)
   0C4C F0                 2866 	movx	@dptr,a
   0C4D 90 F1 9B           2867 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0044)
   0C50 E4                 2868 	clr	a
   0C51 F0                 2869 	movx	@dptr,a
   0C52 90 F1 9C           2870 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0045)
   0C55 F0                 2871 	movx	@dptr,a
   0C56 90 F1 9D           2872 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0046)
   0C59 F0                 2873 	movx	@dptr,a
   0C5A 90 F1 9E           2874 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0047)
   0C5D F0                 2875 	movx	@dptr,a
   0C5E 90 F1 9F           2876 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0048)
   0C61 E4                 2877 	clr	a
   0C62 F0                 2878 	movx	@dptr,a
   0C63 90 F1 A0           2879 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0049)
   0C66 F0                 2880 	movx	@dptr,a
   0C67 90 F1 A1           2881 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004a)
   0C6A F0                 2882 	movx	@dptr,a
   0C6B 90 F1 A2           2883 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004b)
   0C6E F0                 2884 	movx	@dptr,a
   0C6F 90 F1 A3           2885 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004c)
   0C72 E4                 2886 	clr	a
   0C73 F0                 2887 	movx	@dptr,a
   0C74 90 F1 A4           2888 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004d)
   0C77 F0                 2889 	movx	@dptr,a
   0C78 90 F1 A5           2890 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004e)
   0C7B F0                 2891 	movx	@dptr,a
   0C7C 90 F1 A6           2892 	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004f)
   0C7F F0                 2893 	movx	@dptr,a
                    0658   2894 	C$mdrip.c$344$1$1 ==.
                           2895 ;	apps/mdrip/mdrip.c:344: uartEnable();
   0C80 12 06 55           2896 	lcall	_uartEnable
                    065B   2897 	C$mdrip.c$345$1$1 ==.
                           2898 ;	apps/mdrip/mdrip.c:345: printf(atString);
   0C83 90 F1 55           2899 	mov	dptr,#_sendAT_atString_1_1
   0C86 E0                 2900 	movx	a,@dptr
   0C87 FE                 2901 	mov	r6,a
   0C88 A3                 2902 	inc	dptr
   0C89 E0                 2903 	movx	a,@dptr
   0C8A FF                 2904 	mov	r7,a
   0C8B 7D 00              2905 	mov	r5,#0x00
   0C8D C0 06              2906 	push	ar6
   0C8F C0 07              2907 	push	ar7
   0C91 C0 05              2908 	push	ar5
   0C93 12 49 B3           2909 	lcall	_printf
   0C96 15 81              2910 	dec	sp
   0C98 15 81              2911 	dec	sp
   0C9A 15 81              2912 	dec	sp
                    0674   2913 	C$mdrip.c$346$1$1 ==.
                           2914 ;	apps/mdrip/mdrip.c:346: delayMs(defaultATWait);
   0C9C 90 F8 F0           2915 	mov	dptr,#_defaultATWait
   0C9F E0                 2916 	movx	a,@dptr
   0CA0 FC                 2917 	mov	r4,a
   0CA1 A3                 2918 	inc	dptr
   0CA2 E0                 2919 	movx	a,@dptr
   0CA3 FD                 2920 	mov	r5,a
   0CA4 A3                 2921 	inc	dptr
   0CA5 E0                 2922 	movx	a,@dptr
   0CA6 A3                 2923 	inc	dptr
   0CA7 E0                 2924 	movx	a,@dptr
   0CA8 8C 82              2925 	mov	dpl,r4
   0CAA 8D 83              2926 	mov	dph,r5
   0CAC 12 45 D8           2927 	lcall	_delayMs
                    0687   2928 	C$mdrip.c$347$1$1 ==.
                           2929 ;	apps/mdrip/mdrip.c:347: strcpy(ATresponse, getFonaString());
   0CAF 12 09 E7           2930 	lcall	_getFonaString
   0CB2 AE 82              2931 	mov	r6,dpl
   0CB4 AF 83              2932 	mov	r7,dph
   0CB6 78 5E              2933 	mov	r0,#_strcpy_PARM_2
   0CB8 EE                 2934 	mov	a,r6
   0CB9 F2                 2935 	movx	@r0,a
   0CBA 08                 2936 	inc	r0
   0CBB EF                 2937 	mov	a,r7
   0CBC F2                 2938 	movx	@r0,a
   0CBD 08                 2939 	inc	r0
   0CBE E4                 2940 	clr	a
   0CBF F2                 2941 	movx	@r0,a
   0CC0 90 F1 57           2942 	mov	dptr,#_sendAT_ATresponse_1_1
   0CC3 75 F0 00           2943 	mov	b,#0x00
   0CC6 12 2B A9           2944 	lcall	_strcpy
                    06A1   2945 	C$mdrip.c$348$1$1 ==.
                    06A1   2946 	XG$sendAT$0$0 ==.
   0CC9 22                 2947 	ret
                           2948 ;------------------------------------------------------------
                           2949 ;Allocation info for local variables in function 'configFona'
                           2950 ;------------------------------------------------------------
                           2951 ;atString                  Allocated with name '_configFona_atString_1_1'
                           2952 ;------------------------------------------------------------
                    06A2   2953 	G$configFona$0$0 ==.
                    06A2   2954 	C$mdrip.c$350$1$1 ==.
                           2955 ;	apps/mdrip/mdrip.c:350: void configFona () {											// Set up lights and any other preferences here
                           2956 ;	-----------------------------------------
                           2957 ;	 function configFona
                           2958 ;	-----------------------------------------
   0CCA                    2959 _configFona:
                    06A2   2960 	C$mdrip.c$351$1$1 ==.
                           2961 ;	apps/mdrip/mdrip.c:351: XDATA char atString[40]={0};
   0CCA 90 F1 A7           2962 	mov	dptr,#_configFona_atString_1_1
   0CCD E4                 2963 	clr	a
   0CCE F0                 2964 	movx	@dptr,a
   0CCF 90 F1 A8           2965 	mov	dptr,#(_configFona_atString_1_1 + 0x0001)
   0CD2 F0                 2966 	movx	@dptr,a
   0CD3 90 F1 A9           2967 	mov	dptr,#(_configFona_atString_1_1 + 0x0002)
   0CD6 F0                 2968 	movx	@dptr,a
   0CD7 90 F1 AA           2969 	mov	dptr,#(_configFona_atString_1_1 + 0x0003)
   0CDA F0                 2970 	movx	@dptr,a
   0CDB 90 F1 AB           2971 	mov	dptr,#(_configFona_atString_1_1 + 0x0004)
   0CDE E4                 2972 	clr	a
   0CDF F0                 2973 	movx	@dptr,a
   0CE0 90 F1 AC           2974 	mov	dptr,#(_configFona_atString_1_1 + 0x0005)
   0CE3 F0                 2975 	movx	@dptr,a
   0CE4 90 F1 AD           2976 	mov	dptr,#(_configFona_atString_1_1 + 0x0006)
   0CE7 F0                 2977 	movx	@dptr,a
   0CE8 90 F1 AE           2978 	mov	dptr,#(_configFona_atString_1_1 + 0x0007)
   0CEB F0                 2979 	movx	@dptr,a
   0CEC 90 F1 AF           2980 	mov	dptr,#(_configFona_atString_1_1 + 0x0008)
   0CEF E4                 2981 	clr	a
   0CF0 F0                 2982 	movx	@dptr,a
   0CF1 90 F1 B0           2983 	mov	dptr,#(_configFona_atString_1_1 + 0x0009)
   0CF4 F0                 2984 	movx	@dptr,a
   0CF5 90 F1 B1           2985 	mov	dptr,#(_configFona_atString_1_1 + 0x000a)
   0CF8 F0                 2986 	movx	@dptr,a
   0CF9 90 F1 B2           2987 	mov	dptr,#(_configFona_atString_1_1 + 0x000b)
   0CFC F0                 2988 	movx	@dptr,a
   0CFD 90 F1 B3           2989 	mov	dptr,#(_configFona_atString_1_1 + 0x000c)
   0D00 E4                 2990 	clr	a
   0D01 F0                 2991 	movx	@dptr,a
   0D02 90 F1 B4           2992 	mov	dptr,#(_configFona_atString_1_1 + 0x000d)
   0D05 F0                 2993 	movx	@dptr,a
   0D06 90 F1 B5           2994 	mov	dptr,#(_configFona_atString_1_1 + 0x000e)
   0D09 F0                 2995 	movx	@dptr,a
   0D0A 90 F1 B6           2996 	mov	dptr,#(_configFona_atString_1_1 + 0x000f)
   0D0D F0                 2997 	movx	@dptr,a
   0D0E 90 F1 B7           2998 	mov	dptr,#(_configFona_atString_1_1 + 0x0010)
   0D11 E4                 2999 	clr	a
   0D12 F0                 3000 	movx	@dptr,a
   0D13 90 F1 B8           3001 	mov	dptr,#(_configFona_atString_1_1 + 0x0011)
   0D16 F0                 3002 	movx	@dptr,a
   0D17 90 F1 B9           3003 	mov	dptr,#(_configFona_atString_1_1 + 0x0012)
   0D1A F0                 3004 	movx	@dptr,a
   0D1B 90 F1 BA           3005 	mov	dptr,#(_configFona_atString_1_1 + 0x0013)
   0D1E F0                 3006 	movx	@dptr,a
   0D1F 90 F1 BB           3007 	mov	dptr,#(_configFona_atString_1_1 + 0x0014)
   0D22 E4                 3008 	clr	a
   0D23 F0                 3009 	movx	@dptr,a
   0D24 90 F1 BC           3010 	mov	dptr,#(_configFona_atString_1_1 + 0x0015)
   0D27 F0                 3011 	movx	@dptr,a
   0D28 90 F1 BD           3012 	mov	dptr,#(_configFona_atString_1_1 + 0x0016)
   0D2B F0                 3013 	movx	@dptr,a
   0D2C 90 F1 BE           3014 	mov	dptr,#(_configFona_atString_1_1 + 0x0017)
   0D2F F0                 3015 	movx	@dptr,a
   0D30 90 F1 BF           3016 	mov	dptr,#(_configFona_atString_1_1 + 0x0018)
   0D33 E4                 3017 	clr	a
   0D34 F0                 3018 	movx	@dptr,a
   0D35 90 F1 C0           3019 	mov	dptr,#(_configFona_atString_1_1 + 0x0019)
   0D38 F0                 3020 	movx	@dptr,a
   0D39 90 F1 C1           3021 	mov	dptr,#(_configFona_atString_1_1 + 0x001a)
   0D3C F0                 3022 	movx	@dptr,a
   0D3D 90 F1 C2           3023 	mov	dptr,#(_configFona_atString_1_1 + 0x001b)
   0D40 F0                 3024 	movx	@dptr,a
   0D41 90 F1 C3           3025 	mov	dptr,#(_configFona_atString_1_1 + 0x001c)
   0D44 E4                 3026 	clr	a
   0D45 F0                 3027 	movx	@dptr,a
   0D46 90 F1 C4           3028 	mov	dptr,#(_configFona_atString_1_1 + 0x001d)
   0D49 F0                 3029 	movx	@dptr,a
   0D4A 90 F1 C5           3030 	mov	dptr,#(_configFona_atString_1_1 + 0x001e)
   0D4D F0                 3031 	movx	@dptr,a
   0D4E 90 F1 C6           3032 	mov	dptr,#(_configFona_atString_1_1 + 0x001f)
   0D51 F0                 3033 	movx	@dptr,a
   0D52 90 F1 C7           3034 	mov	dptr,#(_configFona_atString_1_1 + 0x0020)
   0D55 E4                 3035 	clr	a
   0D56 F0                 3036 	movx	@dptr,a
   0D57 90 F1 C8           3037 	mov	dptr,#(_configFona_atString_1_1 + 0x0021)
   0D5A F0                 3038 	movx	@dptr,a
   0D5B 90 F1 C9           3039 	mov	dptr,#(_configFona_atString_1_1 + 0x0022)
   0D5E F0                 3040 	movx	@dptr,a
   0D5F 90 F1 CA           3041 	mov	dptr,#(_configFona_atString_1_1 + 0x0023)
   0D62 F0                 3042 	movx	@dptr,a
   0D63 90 F1 CB           3043 	mov	dptr,#(_configFona_atString_1_1 + 0x0024)
   0D66 E4                 3044 	clr	a
   0D67 F0                 3045 	movx	@dptr,a
   0D68 90 F1 CC           3046 	mov	dptr,#(_configFona_atString_1_1 + 0x0025)
   0D6B F0                 3047 	movx	@dptr,a
   0D6C 90 F1 CD           3048 	mov	dptr,#(_configFona_atString_1_1 + 0x0026)
   0D6F F0                 3049 	movx	@dptr,a
   0D70 90 F1 CE           3050 	mov	dptr,#(_configFona_atString_1_1 + 0x0027)
   0D73 F0                 3051 	movx	@dptr,a
                    074C   3052 	C$mdrip.c$352$1$1 ==.
                           3053 ;	apps/mdrip/mdrip.c:352: uartEnable();												// Enable the serial connection
   0D74 12 06 55           3054 	lcall	_uartEnable
                    074F   3055 	C$mdrip.c$353$1$1 ==.
                           3056 ;	apps/mdrip/mdrip.c:353: strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(4000);				// Sleep my little Fona		- Response should be "OK"
   0D77 78 5E              3057 	mov	r0,#_strcpy_PARM_2
   0D79 74 A0              3058 	mov	a,#__str_0
   0D7B F2                 3059 	movx	@r0,a
   0D7C 08                 3060 	inc	r0
   0D7D 74 55              3061 	mov	a,#(__str_0 >> 8)
   0D7F F2                 3062 	movx	@r0,a
   0D80 08                 3063 	inc	r0
   0D81 74 80              3064 	mov	a,#0x80
   0D83 F2                 3065 	movx	@r0,a
   0D84 90 F1 A7           3066 	mov	dptr,#_configFona_atString_1_1
   0D87 75 F0 00           3067 	mov	b,#0x00
   0D8A 12 2B A9           3068 	lcall	_strcpy
   0D8D 90 F1 A7           3069 	mov	dptr,#_configFona_atString_1_1
   0D90 12 0B 21           3070 	lcall	_sendAT
                    076B   3071 	C$mdrip.c$354$1$1 ==.
                           3072 ;	apps/mdrip/mdrip.c:354: strcpy(atString, "ATE0&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly
   0D93 78 5E              3073 	mov	r0,#_strcpy_PARM_2
   0D95 74 AC              3074 	mov	a,#__str_1
   0D97 F2                 3075 	movx	@r0,a
   0D98 08                 3076 	inc	r0
   0D99 74 55              3077 	mov	a,#(__str_1 >> 8)
   0D9B F2                 3078 	movx	@r0,a
   0D9C 08                 3079 	inc	r0
   0D9D 74 80              3080 	mov	a,#0x80
   0D9F F2                 3081 	movx	@r0,a
   0DA0 90 F1 A7           3082 	mov	dptr,#_configFona_atString_1_1
   0DA3 75 F0 00           3083 	mov	b,#0x00
   0DA6 12 2B A9           3084 	lcall	_strcpy
   0DA9 90 F1 A7           3085 	mov	dptr,#_configFona_atString_1_1
   0DAC 12 0B 21           3086 	lcall	_sendAT
                    0787   3087 	C$mdrip.c$355$1$1 ==.
                           3088 ;	apps/mdrip/mdrip.c:355: strcpy(atString, "AT+SLEDS=1,50,7500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for no connection - .05/7.5 secs: brief blink
   0DAF 78 5E              3089 	mov	r0,#_strcpy_PARM_2
   0DB1 74 B5              3090 	mov	a,#__str_2
   0DB3 F2                 3091 	movx	@r0,a
   0DB4 08                 3092 	inc	r0
   0DB5 74 55              3093 	mov	a,#(__str_2 >> 8)
   0DB7 F2                 3094 	movx	@r0,a
   0DB8 08                 3095 	inc	r0
   0DB9 74 80              3096 	mov	a,#0x80
   0DBB F2                 3097 	movx	@r0,a
   0DBC 90 F1 A7           3098 	mov	dptr,#_configFona_atString_1_1
   0DBF 75 F0 00           3099 	mov	b,#0x00
   0DC2 12 2B A9           3100 	lcall	_strcpy
   0DC5 90 F1 A7           3101 	mov	dptr,#_configFona_atString_1_1
   0DC8 12 0B 21           3102 	lcall	_sendAT
                    07A3   3103 	C$mdrip.c$356$1$1 ==.
                           3104 ;	apps/mdrip/mdrip.c:356: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
   0DCB 78 5E              3105 	mov	r0,#_strcpy_PARM_2
   0DCD 74 CA              3106 	mov	a,#__str_3
   0DCF F2                 3107 	movx	@r0,a
   0DD0 08                 3108 	inc	r0
   0DD1 74 55              3109 	mov	a,#(__str_3 >> 8)
   0DD3 F2                 3110 	movx	@r0,a
   0DD4 08                 3111 	inc	r0
   0DD5 74 80              3112 	mov	a,#0x80
   0DD7 F2                 3113 	movx	@r0,a
   0DD8 90 F1 A7           3114 	mov	dptr,#_configFona_atString_1_1
   0DDB 75 F0 00           3115 	mov	b,#0x00
   0DDE 12 2B A9           3116 	lcall	_strcpy
   0DE1 90 F1 A7           3117 	mov	dptr,#_configFona_atString_1_1
   0DE4 12 0B 21           3118 	lcall	_sendAT
                    07BF   3119 	C$mdrip.c$357$1$1 ==.
                           3120 ;	apps/mdrip/mdrip.c:357: strcpy(atString, "AT+SLEDS=2,500,2500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for network connection - .5/2.5 secs: slow
   0DE7 78 5E              3121 	mov	r0,#_strcpy_PARM_2
   0DE9 74 D1              3122 	mov	a,#__str_4
   0DEB F2                 3123 	movx	@r0,a
   0DEC 08                 3124 	inc	r0
   0DED 74 55              3125 	mov	a,#(__str_4 >> 8)
   0DEF F2                 3126 	movx	@r0,a
   0DF0 08                 3127 	inc	r0
   0DF1 74 80              3128 	mov	a,#0x80
   0DF3 F2                 3129 	movx	@r0,a
   0DF4 90 F1 A7           3130 	mov	dptr,#_configFona_atString_1_1
   0DF7 75 F0 00           3131 	mov	b,#0x00
   0DFA 12 2B A9           3132 	lcall	_strcpy
   0DFD 90 F1 A7           3133 	mov	dptr,#_configFona_atString_1_1
   0E00 12 0B 21           3134 	lcall	_sendAT
                    07DB   3135 	C$mdrip.c$358$1$1 ==.
                           3136 ;	apps/mdrip/mdrip.c:358: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
   0E03 78 5E              3137 	mov	r0,#_strcpy_PARM_2
   0E05 74 CA              3138 	mov	a,#__str_3
   0E07 F2                 3139 	movx	@r0,a
   0E08 08                 3140 	inc	r0
   0E09 74 55              3141 	mov	a,#(__str_3 >> 8)
   0E0B F2                 3142 	movx	@r0,a
   0E0C 08                 3143 	inc	r0
   0E0D 74 80              3144 	mov	a,#0x80
   0E0F F2                 3145 	movx	@r0,a
   0E10 90 F1 A7           3146 	mov	dptr,#_configFona_atString_1_1
   0E13 75 F0 00           3147 	mov	b,#0x00
   0E16 12 2B A9           3148 	lcall	_strcpy
   0E19 90 F1 A7           3149 	mov	dptr,#_configFona_atString_1_1
   0E1C 12 0B 21           3150 	lcall	_sendAT
                    07F7   3151 	C$mdrip.c$359$1$1 ==.
                           3152 ;	apps/mdrip/mdrip.c:359: strcpy(atString, "AT+SLEDS=3,50,50\r\n"); sendAT(atString); // delayMs(defaultATWait);		// Change timing of LED flashes for GPRS connection - very fast
   0E1F 78 5E              3153 	mov	r0,#_strcpy_PARM_2
   0E21 74 E7              3154 	mov	a,#__str_5
   0E23 F2                 3155 	movx	@r0,a
   0E24 08                 3156 	inc	r0
   0E25 74 55              3157 	mov	a,#(__str_5 >> 8)
   0E27 F2                 3158 	movx	@r0,a
   0E28 08                 3159 	inc	r0
   0E29 74 80              3160 	mov	a,#0x80
   0E2B F2                 3161 	movx	@r0,a
   0E2C 90 F1 A7           3162 	mov	dptr,#_configFona_atString_1_1
   0E2F 75 F0 00           3163 	mov	b,#0x00
   0E32 12 2B A9           3164 	lcall	_strcpy
   0E35 90 F1 A7           3165 	mov	dptr,#_configFona_atString_1_1
   0E38 12 0B 21           3166 	lcall	_sendAT
                    0813   3167 	C$mdrip.c$360$1$1 ==.
                           3168 ;	apps/mdrip/mdrip.c:360: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
   0E3B 78 5E              3169 	mov	r0,#_strcpy_PARM_2
   0E3D 74 CA              3170 	mov	a,#__str_3
   0E3F F2                 3171 	movx	@r0,a
   0E40 08                 3172 	inc	r0
   0E41 74 55              3173 	mov	a,#(__str_3 >> 8)
   0E43 F2                 3174 	movx	@r0,a
   0E44 08                 3175 	inc	r0
   0E45 74 80              3176 	mov	a,#0x80
   0E47 F2                 3177 	movx	@r0,a
   0E48 90 F1 A7           3178 	mov	dptr,#_configFona_atString_1_1
   0E4B 75 F0 00           3179 	mov	b,#0x00
   0E4E 12 2B A9           3180 	lcall	_strcpy
   0E51 90 F1 A7           3181 	mov	dptr,#_configFona_atString_1_1
   0E54 12 0B 21           3182 	lcall	_sendAT
                    082F   3183 	C$mdrip.c$361$1$1 ==.
                    082F   3184 	XG$configFona$0$0 ==.
   0E57 22                 3185 	ret
                           3186 ;------------------------------------------------------------
                           3187 ;Allocation info for local variables in function 'enableFona'
                           3188 ;------------------------------------------------------------
                           3189 ;atString                  Allocated with name '_enableFona_atString_1_1'
                           3190 ;------------------------------------------------------------
                    0830   3191 	G$enableFona$0$0 ==.
                    0830   3192 	C$mdrip.c$363$1$1 ==.
                           3193 ;	apps/mdrip/mdrip.c:363: BIT enableFona() {
                           3194 ;	-----------------------------------------
                           3195 ;	 function enableFona
                           3196 ;	-----------------------------------------
   0E58                    3197 _enableFona:
                    0830   3198 	C$mdrip.c$367$1$1 ==.
                           3199 ;	apps/mdrip/mdrip.c:367: uartEnable();												// Enable the serial connection
   0E58 12 06 55           3200 	lcall	_uartEnable
                    0833   3201 	C$mdrip.c$368$1$1 ==.
                           3202 ;	apps/mdrip/mdrip.c:368: strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
   0E5B 78 5E              3203 	mov	r0,#_strcpy_PARM_2
   0E5D 74 FA              3204 	mov	a,#__str_6
   0E5F F2                 3205 	movx	@r0,a
   0E60 08                 3206 	inc	r0
   0E61 74 55              3207 	mov	a,#(__str_6 >> 8)
   0E63 F2                 3208 	movx	@r0,a
   0E64 08                 3209 	inc	r0
   0E65 74 80              3210 	mov	a,#0x80
   0E67 F2                 3211 	movx	@r0,a
   0E68 90 F1 CF           3212 	mov	dptr,#_enableFona_atString_1_1
   0E6B 75 F0 00           3213 	mov	b,#0x00
   0E6E 12 2B A9           3214 	lcall	_strcpy
   0E71 90 F1 CF           3215 	mov	dptr,#_enableFona_atString_1_1
   0E74 12 0B 21           3216 	lcall	_sendAT
                    084F   3217 	C$mdrip.c$369$1$1 ==.
                           3218 ;	apps/mdrip/mdrip.c:369: strcpy(atString, "AT+CFUN=1,1\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Wake up Baby
   0E77 78 5E              3219 	mov	r0,#_strcpy_PARM_2
   0E79 74 FF              3220 	mov	a,#__str_7
   0E7B F2                 3221 	movx	@r0,a
   0E7C 08                 3222 	inc	r0
   0E7D 74 55              3223 	mov	a,#(__str_7 >> 8)
   0E7F F2                 3224 	movx	@r0,a
   0E80 08                 3225 	inc	r0
   0E81 74 80              3226 	mov	a,#0x80
   0E83 F2                 3227 	movx	@r0,a
   0E84 90 F1 CF           3228 	mov	dptr,#_enableFona_atString_1_1
   0E87 75 F0 00           3229 	mov	b,#0x00
   0E8A 12 2B A9           3230 	lcall	_strcpy
   0E8D 90 F1 CF           3231 	mov	dptr,#_enableFona_atString_1_1
   0E90 12 0B 21           3232 	lcall	_sendAT
                    086B   3233 	C$mdrip.c$370$1$1 ==.
                           3234 ;	apps/mdrip/mdrip.c:370: delayMs(4000);												// Wait for Fona to reboot
   0E93 90 0F A0           3235 	mov	dptr,#0x0FA0
   0E96 12 45 D8           3236 	lcall	_delayMs
                    0871   3237 	C$mdrip.c$371$1$1 ==.
                           3238 ;	apps/mdrip/mdrip.c:371: strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
   0E99 78 5E              3239 	mov	r0,#_strcpy_PARM_2
   0E9B 74 FA              3240 	mov	a,#__str_6
   0E9D F2                 3241 	movx	@r0,a
   0E9E 08                 3242 	inc	r0
   0E9F 74 55              3243 	mov	a,#(__str_6 >> 8)
   0EA1 F2                 3244 	movx	@r0,a
   0EA2 08                 3245 	inc	r0
   0EA3 74 80              3246 	mov	a,#0x80
   0EA5 F2                 3247 	movx	@r0,a
   0EA6 90 F1 CF           3248 	mov	dptr,#_enableFona_atString_1_1
   0EA9 75 F0 00           3249 	mov	b,#0x00
   0EAC 12 2B A9           3250 	lcall	_strcpy
   0EAF 90 F1 CF           3251 	mov	dptr,#_enableFona_atString_1_1
   0EB2 12 0B 21           3252 	lcall	_sendAT
                    088D   3253 	C$mdrip.c$372$1$1 ==.
                           3254 ;	apps/mdrip/mdrip.c:372: return 1;													// I might take this out altogether if I'm not going to bother checking responses
   0EB5 D3                 3255 	setb	c
                    088E   3256 	C$mdrip.c$373$1$1 ==.
                    088E   3257 	XG$enableFona$0$0 ==.
   0EB6 22                 3258 	ret
                           3259 ;------------------------------------------------------------
                           3260 ;Allocation info for local variables in function 'fonaDisable'
                           3261 ;------------------------------------------------------------
                           3262 ;atString                  Allocated with name '_fonaDisable_atString_1_1'
                           3263 ;------------------------------------------------------------
                    088F   3264 	G$fonaDisable$0$0 ==.
                    088F   3265 	C$mdrip.c$375$1$1 ==.
                           3266 ;	apps/mdrip/mdrip.c:375: void fonaDisable () {
                           3267 ;	-----------------------------------------
                           3268 ;	 function fonaDisable
                           3269 ;	-----------------------------------------
   0EB7                    3270 _fonaDisable:
                    088F   3271 	C$mdrip.c$378$1$1 ==.
                           3272 ;	apps/mdrip/mdrip.c:378: strcpy(atString, "AT+CIPCLOSE\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Close the TCP connection	- Response should be CLOSE OK
   0EB7 78 5E              3273 	mov	r0,#_strcpy_PARM_2
   0EB9 74 0D              3274 	mov	a,#__str_8
   0EBB F2                 3275 	movx	@r0,a
   0EBC 08                 3276 	inc	r0
   0EBD 74 56              3277 	mov	a,#(__str_8 >> 8)
   0EBF F2                 3278 	movx	@r0,a
   0EC0 08                 3279 	inc	r0
   0EC1 74 80              3280 	mov	a,#0x80
   0EC3 F2                 3281 	movx	@r0,a
   0EC4 90 F1 F7           3282 	mov	dptr,#_fonaDisable_atString_1_1
   0EC7 75 F0 00           3283 	mov	b,#0x00
   0ECA 12 2B A9           3284 	lcall	_strcpy
   0ECD 90 F1 F7           3285 	mov	dptr,#_fonaDisable_atString_1_1
   0ED0 12 0B 21           3286 	lcall	_sendAT
                    08AB   3287 	C$mdrip.c$379$1$1 ==.
                           3288 ;	apps/mdrip/mdrip.c:379: strcpy(atString, "AT+CGATT=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
   0ED3 78 5E              3289 	mov	r0,#_strcpy_PARM_2
   0ED5 74 1B              3290 	mov	a,#__str_9
   0ED7 F2                 3291 	movx	@r0,a
   0ED8 08                 3292 	inc	r0
   0ED9 74 56              3293 	mov	a,#(__str_9 >> 8)
   0EDB F2                 3294 	movx	@r0,a
   0EDC 08                 3295 	inc	r0
   0EDD 74 80              3296 	mov	a,#0x80
   0EDF F2                 3297 	movx	@r0,a
   0EE0 90 F1 F7           3298 	mov	dptr,#_fonaDisable_atString_1_1
   0EE3 75 F0 00           3299 	mov	b,#0x00
   0EE6 12 2B A9           3300 	lcall	_strcpy
   0EE9 90 F1 F7           3301 	mov	dptr,#_fonaDisable_atString_1_1
   0EEC 12 0B 21           3302 	lcall	_sendAT
                    08C7   3303 	C$mdrip.c$380$1$1 ==.
                           3304 ;	apps/mdrip/mdrip.c:380: strcpy(atString, "AT+CIPSHUT\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Shut down GPRS			- Response should be SHUT OK
   0EEF 78 5E              3305 	mov	r0,#_strcpy_PARM_2
   0EF1 74 28              3306 	mov	a,#__str_10
   0EF3 F2                 3307 	movx	@r0,a
   0EF4 08                 3308 	inc	r0
   0EF5 74 56              3309 	mov	a,#(__str_10 >> 8)
   0EF7 F2                 3310 	movx	@r0,a
   0EF8 08                 3311 	inc	r0
   0EF9 74 80              3312 	mov	a,#0x80
   0EFB F2                 3313 	movx	@r0,a
   0EFC 90 F1 F7           3314 	mov	dptr,#_fonaDisable_atString_1_1
   0EFF 75 F0 00           3315 	mov	b,#0x00
   0F02 12 2B A9           3316 	lcall	_strcpy
   0F05 90 F1 F7           3317 	mov	dptr,#_fonaDisable_atString_1_1
   0F08 12 0B 21           3318 	lcall	_sendAT
                    08E3   3319 	C$mdrip.c$381$1$1 ==.
                           3320 ;	apps/mdrip/mdrip.c:381: strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Sleep my little Fona		- Response should be "OK"
   0F0B 78 5E              3321 	mov	r0,#_strcpy_PARM_2
   0F0D 74 A0              3322 	mov	a,#__str_0
   0F0F F2                 3323 	movx	@r0,a
   0F10 08                 3324 	inc	r0
   0F11 74 55              3325 	mov	a,#(__str_0 >> 8)
   0F13 F2                 3326 	movx	@r0,a
   0F14 08                 3327 	inc	r0
   0F15 74 80              3328 	mov	a,#0x80
   0F17 F2                 3329 	movx	@r0,a
   0F18 90 F1 F7           3330 	mov	dptr,#_fonaDisable_atString_1_1
   0F1B 75 F0 00           3331 	mov	b,#0x00
   0F1E 12 2B A9           3332 	lcall	_strcpy
   0F21 90 F1 F7           3333 	mov	dptr,#_fonaDisable_atString_1_1
   0F24 12 0B 21           3334 	lcall	_sendAT
                    08FF   3335 	C$mdrip.c$384$1$1 ==.
                    08FF   3336 	XG$fonaDisable$0$0 ==.
   0F27 22                 3337 	ret
                           3338 ;------------------------------------------------------------
                           3339 ;Allocation info for local variables in function 'fonaConnect'
                           3340 ;------------------------------------------------------------
                           3341 ;atString                  Allocated with name '_fonaConnect_atString_1_1'
                           3342 ;------------------------------------------------------------
                    0900   3343 	G$fonaConnect$0$0 ==.
                    0900   3344 	C$mdrip.c$386$1$1 ==.
                           3345 ;	apps/mdrip/mdrip.c:386: void fonaConnect() {
                           3346 ;	-----------------------------------------
                           3347 ;	 function fonaConnect
                           3348 ;	-----------------------------------------
   0F28                    3349 _fonaConnect:
                    0900   3350 	C$mdrip.c$389$1$1 ==.
                           3351 ;	apps/mdrip/mdrip.c:389: strcpy(atString, "AT+CSTT=");
   0F28 78 5E              3352 	mov	r0,#_strcpy_PARM_2
   0F2A 74 35              3353 	mov	a,#__str_11
   0F2C F2                 3354 	movx	@r0,a
   0F2D 08                 3355 	inc	r0
   0F2E 74 56              3356 	mov	a,#(__str_11 >> 8)
   0F30 F2                 3357 	movx	@r0,a
   0F31 08                 3358 	inc	r0
   0F32 74 80              3359 	mov	a,#0x80
   0F34 F2                 3360 	movx	@r0,a
   0F35 90 F2 1F           3361 	mov	dptr,#_fonaConnect_atString_1_1
   0F38 75 F0 00           3362 	mov	b,#0x00
   0F3B 12 2B A9           3363 	lcall	_strcpy
                    0916   3364 	C$mdrip.c$390$1$1 ==.
                           3365 ;	apps/mdrip/mdrip.c:390: strcat(atString, apnString);
   0F3E 78 84              3366 	mov	r0,#_strcat_PARM_2
   0F40 74 90              3367 	mov	a,#_apnString
   0F42 F2                 3368 	movx	@r0,a
   0F43 08                 3369 	inc	r0
   0F44 74 55              3370 	mov	a,#(_apnString >> 8)
   0F46 F2                 3371 	movx	@r0,a
   0F47 08                 3372 	inc	r0
   0F48 74 80              3373 	mov	a,#0x80
   0F4A F2                 3374 	movx	@r0,a
   0F4B 90 F2 1F           3375 	mov	dptr,#_fonaConnect_atString_1_1
   0F4E 75 F0 00           3376 	mov	b,#0x00
   0F51 12 2F ED           3377 	lcall	_strcat
                    092C   3378 	C$mdrip.c$391$1$1 ==.
                           3379 ;	apps/mdrip/mdrip.c:391: strcat(atString, "\r\n");
   0F54 78 84              3380 	mov	r0,#_strcat_PARM_2
   0F56 74 3E              3381 	mov	a,#__str_12
   0F58 F2                 3382 	movx	@r0,a
   0F59 08                 3383 	inc	r0
   0F5A 74 56              3384 	mov	a,#(__str_12 >> 8)
   0F5C F2                 3385 	movx	@r0,a
   0F5D 08                 3386 	inc	r0
   0F5E 74 80              3387 	mov	a,#0x80
   0F60 F2                 3388 	movx	@r0,a
   0F61 90 F2 1F           3389 	mov	dptr,#_fonaConnect_atString_1_1
   0F64 75 F0 00           3390 	mov	b,#0x00
   0F67 12 2F ED           3391 	lcall	_strcat
                    0942   3392 	C$mdrip.c$392$1$1 ==.
                           3393 ;	apps/mdrip/mdrip.c:392: sendAT(atString);
   0F6A 90 F2 1F           3394 	mov	dptr,#_fonaConnect_atString_1_1
   0F6D 12 0B 21           3395 	lcall	_sendAT
                    0948   3396 	C$mdrip.c$393$1$1 ==.
                           3397 ;	apps/mdrip/mdrip.c:393: strcpy(atString, "AT+CGATT?\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
   0F70 78 5E              3398 	mov	r0,#_strcpy_PARM_2
   0F72 74 41              3399 	mov	a,#__str_13
   0F74 F2                 3400 	movx	@r0,a
   0F75 08                 3401 	inc	r0
   0F76 74 56              3402 	mov	a,#(__str_13 >> 8)
   0F78 F2                 3403 	movx	@r0,a
   0F79 08                 3404 	inc	r0
   0F7A 74 80              3405 	mov	a,#0x80
   0F7C F2                 3406 	movx	@r0,a
   0F7D 90 F2 1F           3407 	mov	dptr,#_fonaConnect_atString_1_1
   0F80 75 F0 00           3408 	mov	b,#0x00
   0F83 12 2B A9           3409 	lcall	_strcpy
   0F86 90 F2 1F           3410 	mov	dptr,#_fonaConnect_atString_1_1
   0F89 12 0B 21           3411 	lcall	_sendAT
                    0964   3412 	C$mdrip.c$394$1$1 ==.
                           3413 ;	apps/mdrip/mdrip.c:394: strcpy(atString, "AT+CIICR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Bring up wireless connection with GPRS		- Response should be "OK"
   0F8C 78 5E              3414 	mov	r0,#_strcpy_PARM_2
   0F8E 74 4D              3415 	mov	a,#__str_14
   0F90 F2                 3416 	movx	@r0,a
   0F91 08                 3417 	inc	r0
   0F92 74 56              3418 	mov	a,#(__str_14 >> 8)
   0F94 F2                 3419 	movx	@r0,a
   0F95 08                 3420 	inc	r0
   0F96 74 80              3421 	mov	a,#0x80
   0F98 F2                 3422 	movx	@r0,a
   0F99 90 F2 1F           3423 	mov	dptr,#_fonaConnect_atString_1_1
   0F9C 75 F0 00           3424 	mov	b,#0x00
   0F9F 12 2B A9           3425 	lcall	_strcpy
   0FA2 90 F2 1F           3426 	mov	dptr,#_fonaConnect_atString_1_1
   0FA5 12 0B 21           3427 	lcall	_sendAT
                    0980   3428 	C$mdrip.c$395$1$1 ==.
                           3429 ;	apps/mdrip/mdrip.c:395: strcpy(atString, "AT+CIFSR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Get local IP address (not sure why)          - Response should be IP
   0FA8 78 5E              3430 	mov	r0,#_strcpy_PARM_2
   0FAA 74 58              3431 	mov	a,#__str_15
   0FAC F2                 3432 	movx	@r0,a
   0FAD 08                 3433 	inc	r0
   0FAE 74 56              3434 	mov	a,#(__str_15 >> 8)
   0FB0 F2                 3435 	movx	@r0,a
   0FB1 08                 3436 	inc	r0
   0FB2 74 80              3437 	mov	a,#0x80
   0FB4 F2                 3438 	movx	@r0,a
   0FB5 90 F2 1F           3439 	mov	dptr,#_fonaConnect_atString_1_1
   0FB8 75 F0 00           3440 	mov	b,#0x00
   0FBB 12 2B A9           3441 	lcall	_strcpy
   0FBE 90 F2 1F           3442 	mov	dptr,#_fonaConnect_atString_1_1
   0FC1 12 0B 21           3443 	lcall	_sendAT
                    099C   3444 	C$mdrip.c$396$1$1 ==.
                           3445 ;	apps/mdrip/mdrip.c:396: strcpy(atString, "AT+CIPSTART=tcp,");
   0FC4 78 5E              3446 	mov	r0,#_strcpy_PARM_2
   0FC6 74 63              3447 	mov	a,#__str_16
   0FC8 F2                 3448 	movx	@r0,a
   0FC9 08                 3449 	inc	r0
   0FCA 74 56              3450 	mov	a,#(__str_16 >> 8)
   0FCC F2                 3451 	movx	@r0,a
   0FCD 08                 3452 	inc	r0
   0FCE 74 80              3453 	mov	a,#0x80
   0FD0 F2                 3454 	movx	@r0,a
   0FD1 90 F2 1F           3455 	mov	dptr,#_fonaConnect_atString_1_1
   0FD4 75 F0 00           3456 	mov	b,#0x00
   0FD7 12 2B A9           3457 	lcall	_strcpy
                    09B2   3458 	C$mdrip.c$397$1$1 ==.
                           3459 ;	apps/mdrip/mdrip.c:397: strcat(atString, dexie_host_address);
   0FDA 78 84              3460 	mov	r0,#_strcat_PARM_2
   0FDC 74 BF              3461 	mov	a,#_dexie_host_address
   0FDE F2                 3462 	movx	@r0,a
   0FDF 08                 3463 	inc	r0
   0FE0 74 F8              3464 	mov	a,#(_dexie_host_address >> 8)
   0FE2 F2                 3465 	movx	@r0,a
   0FE3 08                 3466 	inc	r0
   0FE4 E4                 3467 	clr	a
   0FE5 F2                 3468 	movx	@r0,a
   0FE6 90 F2 1F           3469 	mov	dptr,#_fonaConnect_atString_1_1
   0FE9 75 F0 00           3470 	mov	b,#0x00
   0FEC 12 2F ED           3471 	lcall	_strcat
                    09C7   3472 	C$mdrip.c$398$1$1 ==.
                           3473 ;	apps/mdrip/mdrip.c:398: strcat(atString, "\r\n");
   0FEF 78 84              3474 	mov	r0,#_strcat_PARM_2
   0FF1 74 3E              3475 	mov	a,#__str_12
   0FF3 F2                 3476 	movx	@r0,a
   0FF4 08                 3477 	inc	r0
   0FF5 74 56              3478 	mov	a,#(__str_12 >> 8)
   0FF7 F2                 3479 	movx	@r0,a
   0FF8 08                 3480 	inc	r0
   0FF9 74 80              3481 	mov	a,#0x80
   0FFB F2                 3482 	movx	@r0,a
   0FFC 90 F2 1F           3483 	mov	dptr,#_fonaConnect_atString_1_1
   0FFF 75 F0 00           3484 	mov	b,#0x00
   1002 12 2F ED           3485 	lcall	_strcat
                    09DD   3486 	C$mdrip.c$399$1$1 ==.
                           3487 ;	apps/mdrip/mdrip.c:399: sendAT(atString);
   1005 90 F2 1F           3488 	mov	dptr,#_fonaConnect_atString_1_1
   1008 12 0B 21           3489 	lcall	_sendAT
                    09E3   3490 	C$mdrip.c$400$1$1 ==.
                           3491 ;	apps/mdrip/mdrip.c:400: printf("AT+CIPSEND\r\n");									// Just send this once as a second one confuses Dexie
   100B 74 74              3492 	mov	a,#__str_17
   100D C0 E0              3493 	push	acc
   100F 74 56              3494 	mov	a,#(__str_17 >> 8)
   1011 C0 E0              3495 	push	acc
   1013 74 80              3496 	mov	a,#0x80
   1015 C0 E0              3497 	push	acc
   1017 12 49 B3           3498 	lcall	_printf
   101A 15 81              3499 	dec	sp
   101C 15 81              3500 	dec	sp
   101E 15 81              3501 	dec	sp
                    09F8   3502 	C$mdrip.c$401$1$1 ==.
                           3503 ;	apps/mdrip/mdrip.c:401: delayMs(defaultATWait);
   1020 90 F8 F0           3504 	mov	dptr,#_defaultATWait
   1023 E0                 3505 	movx	a,@dptr
   1024 FC                 3506 	mov	r4,a
   1025 A3                 3507 	inc	dptr
   1026 E0                 3508 	movx	a,@dptr
   1027 FD                 3509 	mov	r5,a
   1028 A3                 3510 	inc	dptr
   1029 E0                 3511 	movx	a,@dptr
   102A A3                 3512 	inc	dptr
   102B E0                 3513 	movx	a,@dptr
   102C 8C 82              3514 	mov	dpl,r4
   102E 8D 83              3515 	mov	dph,r5
   1030 12 45 D8           3516 	lcall	_delayMs
                    0A0B   3517 	C$mdrip.c$402$1$1 ==.
                           3518 ;	apps/mdrip/mdrip.c:402: delayMs(defaultATWait);								        // another delay to be sure server is listening
   1033 90 F8 F0           3519 	mov	dptr,#_defaultATWait
   1036 E0                 3520 	movx	a,@dptr
   1037 FC                 3521 	mov	r4,a
   1038 A3                 3522 	inc	dptr
   1039 E0                 3523 	movx	a,@dptr
   103A FD                 3524 	mov	r5,a
   103B A3                 3525 	inc	dptr
   103C E0                 3526 	movx	a,@dptr
   103D A3                 3527 	inc	dptr
   103E E0                 3528 	movx	a,@dptr
   103F 8C 82              3529 	mov	dpl,r4
   1041 8D 83              3530 	mov	dph,r5
   1043 12 45 D8           3531 	lcall	_delayMs
                    0A1E   3532 	C$mdrip.c$405$1$1 ==.
                    0A1E   3533 	XG$fonaConnect$0$0 ==.
   1046 22                 3534 	ret
                           3535 ;------------------------------------------------------------
                           3536 ;Allocation info for local variables in function 'getFonaMillivolts'
                           3537 ;------------------------------------------------------------
                           3538 ;sloc0                     Allocated with name '_getFonaMillivolts_sloc0_1_0'
                           3539 ;i                         Allocated with name '_getFonaMillivolts_i_1_1'
                           3540 ;counter                   Allocated with name '_getFonaMillivolts_counter_1_1'
                           3541 ;loop                      Allocated with name '_getFonaMillivolts_loop_1_1'
                           3542 ;rxCount                   Allocated with name '_getFonaMillivolts_rxCount_1_1'
                           3543 ;intMV                     Allocated with name '_getFonaMillivolts_intMV_1_1'
                           3544 ;c                         Allocated with name '_getFonaMillivolts_c_1_1'
                           3545 ;atString                  Allocated with name '_getFonaMillivolts_atString_1_1'
                           3546 ;------------------------------------------------------------
                    0A1F   3547 	G$getFonaMillivolts$0$0 ==.
                    0A1F   3548 	C$mdrip.c$408$1$1 ==.
                           3549 ;	apps/mdrip/mdrip.c:408: XDATA int16 getFonaMillivolts() {										// Get battery strength using Fona AT command - no extra resistors required!
                           3550 ;	-----------------------------------------
                           3551 ;	 function getFonaMillivolts
                           3552 ;	-----------------------------------------
   1047                    3553 _getFonaMillivolts:
                    0A1F   3554 	C$mdrip.c$414$1$1 ==.
                           3555 ;	apps/mdrip/mdrip.c:414: XDATA char c[80] = {0};
   1047 90 F2 4B           3556 	mov	dptr,#_getFonaMillivolts_c_1_1
   104A E4                 3557 	clr	a
   104B F0                 3558 	movx	@dptr,a
   104C 90 F2 4C           3559 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0001)
   104F F0                 3560 	movx	@dptr,a
   1050 90 F2 4D           3561 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0002)
   1053 F0                 3562 	movx	@dptr,a
   1054 90 F2 4E           3563 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0003)
   1057 F0                 3564 	movx	@dptr,a
   1058 90 F2 4F           3565 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0004)
   105B E4                 3566 	clr	a
   105C F0                 3567 	movx	@dptr,a
   105D 90 F2 50           3568 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0005)
   1060 F0                 3569 	movx	@dptr,a
   1061 90 F2 51           3570 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0006)
   1064 F0                 3571 	movx	@dptr,a
   1065 90 F2 52           3572 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0007)
   1068 F0                 3573 	movx	@dptr,a
   1069 90 F2 53           3574 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0008)
   106C E4                 3575 	clr	a
   106D F0                 3576 	movx	@dptr,a
   106E 90 F2 54           3577 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0009)
   1071 F0                 3578 	movx	@dptr,a
   1072 90 F2 55           3579 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000a)
   1075 F0                 3580 	movx	@dptr,a
   1076 90 F2 56           3581 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000b)
   1079 F0                 3582 	movx	@dptr,a
   107A 90 F2 57           3583 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000c)
   107D E4                 3584 	clr	a
   107E F0                 3585 	movx	@dptr,a
   107F 90 F2 58           3586 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000d)
   1082 F0                 3587 	movx	@dptr,a
   1083 90 F2 59           3588 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000e)
   1086 F0                 3589 	movx	@dptr,a
   1087 90 F2 5A           3590 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000f)
   108A F0                 3591 	movx	@dptr,a
   108B 90 F2 5B           3592 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0010)
   108E E4                 3593 	clr	a
   108F F0                 3594 	movx	@dptr,a
   1090 90 F2 5C           3595 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0011)
   1093 F0                 3596 	movx	@dptr,a
   1094 90 F2 5D           3597 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0012)
   1097 F0                 3598 	movx	@dptr,a
   1098 90 F2 5E           3599 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0013)
   109B F0                 3600 	movx	@dptr,a
   109C 90 F2 5F           3601 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0014)
   109F E4                 3602 	clr	a
   10A0 F0                 3603 	movx	@dptr,a
   10A1 90 F2 60           3604 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0015)
   10A4 F0                 3605 	movx	@dptr,a
   10A5 90 F2 61           3606 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0016)
   10A8 F0                 3607 	movx	@dptr,a
   10A9 90 F2 62           3608 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0017)
   10AC F0                 3609 	movx	@dptr,a
   10AD 90 F2 63           3610 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0018)
   10B0 E4                 3611 	clr	a
   10B1 F0                 3612 	movx	@dptr,a
   10B2 90 F2 64           3613 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0019)
   10B5 F0                 3614 	movx	@dptr,a
   10B6 90 F2 65           3615 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001a)
   10B9 F0                 3616 	movx	@dptr,a
   10BA 90 F2 66           3617 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001b)
   10BD F0                 3618 	movx	@dptr,a
   10BE 90 F2 67           3619 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001c)
   10C1 E4                 3620 	clr	a
   10C2 F0                 3621 	movx	@dptr,a
   10C3 90 F2 68           3622 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001d)
   10C6 F0                 3623 	movx	@dptr,a
   10C7 90 F2 69           3624 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001e)
   10CA F0                 3625 	movx	@dptr,a
   10CB 90 F2 6A           3626 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001f)
   10CE F0                 3627 	movx	@dptr,a
   10CF 90 F2 6B           3628 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0020)
   10D2 E4                 3629 	clr	a
   10D3 F0                 3630 	movx	@dptr,a
   10D4 90 F2 6C           3631 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0021)
   10D7 F0                 3632 	movx	@dptr,a
   10D8 90 F2 6D           3633 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0022)
   10DB F0                 3634 	movx	@dptr,a
   10DC 90 F2 6E           3635 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0023)
   10DF F0                 3636 	movx	@dptr,a
   10E0 90 F2 6F           3637 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0024)
   10E3 E4                 3638 	clr	a
   10E4 F0                 3639 	movx	@dptr,a
   10E5 90 F2 70           3640 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0025)
   10E8 F0                 3641 	movx	@dptr,a
   10E9 90 F2 71           3642 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0026)
   10EC F0                 3643 	movx	@dptr,a
   10ED 90 F2 72           3644 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0027)
   10F0 F0                 3645 	movx	@dptr,a
   10F1 90 F2 73           3646 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0028)
   10F4 E4                 3647 	clr	a
   10F5 F0                 3648 	movx	@dptr,a
   10F6 90 F2 74           3649 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0029)
   10F9 F0                 3650 	movx	@dptr,a
   10FA 90 F2 75           3651 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002a)
   10FD F0                 3652 	movx	@dptr,a
   10FE 90 F2 76           3653 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002b)
   1101 F0                 3654 	movx	@dptr,a
   1102 90 F2 77           3655 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002c)
   1105 E4                 3656 	clr	a
   1106 F0                 3657 	movx	@dptr,a
   1107 90 F2 78           3658 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002d)
   110A F0                 3659 	movx	@dptr,a
   110B 90 F2 79           3660 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002e)
   110E F0                 3661 	movx	@dptr,a
   110F 90 F2 7A           3662 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002f)
   1112 F0                 3663 	movx	@dptr,a
   1113 90 F2 7B           3664 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0030)
   1116 E4                 3665 	clr	a
   1117 F0                 3666 	movx	@dptr,a
   1118 90 F2 7C           3667 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0031)
   111B F0                 3668 	movx	@dptr,a
   111C 90 F2 7D           3669 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0032)
   111F F0                 3670 	movx	@dptr,a
   1120 90 F2 7E           3671 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0033)
   1123 F0                 3672 	movx	@dptr,a
   1124 90 F2 7F           3673 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0034)
   1127 E4                 3674 	clr	a
   1128 F0                 3675 	movx	@dptr,a
   1129 90 F2 80           3676 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0035)
   112C F0                 3677 	movx	@dptr,a
   112D 90 F2 81           3678 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0036)
   1130 F0                 3679 	movx	@dptr,a
   1131 90 F2 82           3680 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0037)
   1134 F0                 3681 	movx	@dptr,a
   1135 90 F2 83           3682 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0038)
   1138 E4                 3683 	clr	a
   1139 F0                 3684 	movx	@dptr,a
   113A 90 F2 84           3685 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0039)
   113D F0                 3686 	movx	@dptr,a
   113E 90 F2 85           3687 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003a)
   1141 F0                 3688 	movx	@dptr,a
   1142 90 F2 86           3689 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003b)
   1145 F0                 3690 	movx	@dptr,a
   1146 90 F2 87           3691 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003c)
   1149 E4                 3692 	clr	a
   114A F0                 3693 	movx	@dptr,a
   114B 90 F2 88           3694 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003d)
   114E F0                 3695 	movx	@dptr,a
   114F 90 F2 89           3696 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003e)
   1152 F0                 3697 	movx	@dptr,a
   1153 90 F2 8A           3698 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003f)
   1156 F0                 3699 	movx	@dptr,a
   1157 90 F2 8B           3700 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0040)
   115A E4                 3701 	clr	a
   115B F0                 3702 	movx	@dptr,a
   115C 90 F2 8C           3703 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0041)
   115F F0                 3704 	movx	@dptr,a
   1160 90 F2 8D           3705 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0042)
   1163 F0                 3706 	movx	@dptr,a
   1164 90 F2 8E           3707 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0043)
   1167 F0                 3708 	movx	@dptr,a
   1168 90 F2 8F           3709 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0044)
   116B E4                 3710 	clr	a
   116C F0                 3711 	movx	@dptr,a
   116D 90 F2 90           3712 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0045)
   1170 F0                 3713 	movx	@dptr,a
   1171 90 F2 91           3714 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0046)
   1174 F0                 3715 	movx	@dptr,a
   1175 90 F2 92           3716 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0047)
   1178 F0                 3717 	movx	@dptr,a
   1179 90 F2 93           3718 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0048)
   117C E4                 3719 	clr	a
   117D F0                 3720 	movx	@dptr,a
   117E 90 F2 94           3721 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0049)
   1181 F0                 3722 	movx	@dptr,a
   1182 90 F2 95           3723 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004a)
   1185 F0                 3724 	movx	@dptr,a
   1186 90 F2 96           3725 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004b)
   1189 F0                 3726 	movx	@dptr,a
   118A 90 F2 97           3727 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004c)
   118D E4                 3728 	clr	a
   118E F0                 3729 	movx	@dptr,a
   118F 90 F2 98           3730 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004d)
   1192 F0                 3731 	movx	@dptr,a
   1193 90 F2 99           3732 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004e)
   1196 F0                 3733 	movx	@dptr,a
   1197 90 F2 9A           3734 	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004f)
   119A F0                 3735 	movx	@dptr,a
                    0B73   3736 	C$mdrip.c$416$1$1 ==.
                           3737 ;	apps/mdrip/mdrip.c:416: XDATA char atString[40] = {0};
   119B 90 F2 9B           3738 	mov	dptr,#_getFonaMillivolts_atString_1_1
   119E E4                 3739 	clr	a
   119F F0                 3740 	movx	@dptr,a
   11A0 90 F2 9C           3741 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0001)
   11A3 F0                 3742 	movx	@dptr,a
   11A4 90 F2 9D           3743 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0002)
   11A7 F0                 3744 	movx	@dptr,a
   11A8 90 F2 9E           3745 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0003)
   11AB F0                 3746 	movx	@dptr,a
   11AC 90 F2 9F           3747 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0004)
   11AF E4                 3748 	clr	a
   11B0 F0                 3749 	movx	@dptr,a
   11B1 90 F2 A0           3750 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0005)
   11B4 F0                 3751 	movx	@dptr,a
   11B5 90 F2 A1           3752 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0006)
   11B8 F0                 3753 	movx	@dptr,a
   11B9 90 F2 A2           3754 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0007)
   11BC F0                 3755 	movx	@dptr,a
   11BD 90 F2 A3           3756 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0008)
   11C0 E4                 3757 	clr	a
   11C1 F0                 3758 	movx	@dptr,a
   11C2 90 F2 A4           3759 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0009)
   11C5 F0                 3760 	movx	@dptr,a
   11C6 90 F2 A5           3761 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000a)
   11C9 F0                 3762 	movx	@dptr,a
   11CA 90 F2 A6           3763 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000b)
   11CD F0                 3764 	movx	@dptr,a
   11CE 90 F2 A7           3765 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000c)
   11D1 E4                 3766 	clr	a
   11D2 F0                 3767 	movx	@dptr,a
   11D3 90 F2 A8           3768 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000d)
   11D6 F0                 3769 	movx	@dptr,a
   11D7 90 F2 A9           3770 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000e)
   11DA F0                 3771 	movx	@dptr,a
   11DB 90 F2 AA           3772 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000f)
   11DE F0                 3773 	movx	@dptr,a
   11DF 90 F2 AB           3774 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0010)
   11E2 E4                 3775 	clr	a
   11E3 F0                 3776 	movx	@dptr,a
   11E4 90 F2 AC           3777 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0011)
   11E7 F0                 3778 	movx	@dptr,a
   11E8 90 F2 AD           3779 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0012)
   11EB F0                 3780 	movx	@dptr,a
   11EC 90 F2 AE           3781 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0013)
   11EF F0                 3782 	movx	@dptr,a
   11F0 90 F2 AF           3783 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0014)
   11F3 E4                 3784 	clr	a
   11F4 F0                 3785 	movx	@dptr,a
   11F5 90 F2 B0           3786 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0015)
   11F8 F0                 3787 	movx	@dptr,a
   11F9 90 F2 B1           3788 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0016)
   11FC F0                 3789 	movx	@dptr,a
   11FD 90 F2 B2           3790 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0017)
   1200 F0                 3791 	movx	@dptr,a
   1201 90 F2 B3           3792 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0018)
   1204 E4                 3793 	clr	a
   1205 F0                 3794 	movx	@dptr,a
   1206 90 F2 B4           3795 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0019)
   1209 F0                 3796 	movx	@dptr,a
   120A 90 F2 B5           3797 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001a)
   120D F0                 3798 	movx	@dptr,a
   120E 90 F2 B6           3799 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001b)
   1211 F0                 3800 	movx	@dptr,a
   1212 90 F2 B7           3801 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001c)
   1215 E4                 3802 	clr	a
   1216 F0                 3803 	movx	@dptr,a
   1217 90 F2 B8           3804 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001d)
   121A F0                 3805 	movx	@dptr,a
   121B 90 F2 B9           3806 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001e)
   121E F0                 3807 	movx	@dptr,a
   121F 90 F2 BA           3808 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001f)
   1222 F0                 3809 	movx	@dptr,a
   1223 90 F2 BB           3810 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0020)
   1226 E4                 3811 	clr	a
   1227 F0                 3812 	movx	@dptr,a
   1228 90 F2 BC           3813 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0021)
   122B F0                 3814 	movx	@dptr,a
   122C 90 F2 BD           3815 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0022)
   122F F0                 3816 	movx	@dptr,a
   1230 90 F2 BE           3817 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0023)
   1233 F0                 3818 	movx	@dptr,a
   1234 90 F2 BF           3819 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0024)
   1237 E4                 3820 	clr	a
   1238 F0                 3821 	movx	@dptr,a
   1239 90 F2 C0           3822 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0025)
   123C F0                 3823 	movx	@dptr,a
   123D 90 F2 C1           3824 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0026)
   1240 F0                 3825 	movx	@dptr,a
   1241 90 F2 C2           3826 	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0027)
   1244 F0                 3827 	movx	@dptr,a
                    0C1D   3828 	C$mdrip.c$418$1$1 ==.
                           3829 ;	apps/mdrip/mdrip.c:418: strcpy(atString, "ATE0\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly
   1245 78 5E              3830 	mov	r0,#_strcpy_PARM_2
   1247 74 81              3831 	mov	a,#__str_18
   1249 F2                 3832 	movx	@r0,a
   124A 08                 3833 	inc	r0
   124B 74 56              3834 	mov	a,#(__str_18 >> 8)
   124D F2                 3835 	movx	@r0,a
   124E 08                 3836 	inc	r0
   124F 74 80              3837 	mov	a,#0x80
   1251 F2                 3838 	movx	@r0,a
   1252 90 F2 9B           3839 	mov	dptr,#_getFonaMillivolts_atString_1_1
   1255 75 F0 00           3840 	mov	b,#0x00
   1258 12 2B A9           3841 	lcall	_strcpy
   125B 90 F2 9B           3842 	mov	dptr,#_getFonaMillivolts_atString_1_1
   125E 12 0B 21           3843 	lcall	_sendAT
                    0C39   3844 	C$mdrip.c$420$1$1 ==.
                           3845 ;	apps/mdrip/mdrip.c:420: c[0]=0;														// And mark string as empty
   1261 90 F2 4B           3846 	mov	dptr,#_getFonaMillivolts_c_1_1
   1264 E4                 3847 	clr	a
   1265 F0                 3848 	movx	@dptr,a
                    0C3E   3849 	C$mdrip.c$421$1$1 ==.
                           3850 ;	apps/mdrip/mdrip.c:421: clearRxErrors();
   1266 12 09 6F           3851 	lcall	_clearRxErrors
                    0C41   3852 	C$mdrip.c$423$1$1 ==.
                           3853 ;	apps/mdrip/mdrip.c:423: boardService();
   1269 12 39 AB           3854 	lcall	_boardService
                    0C44   3855 	C$mdrip.c$424$1$1 ==.
                           3856 ;	apps/mdrip/mdrip.c:424: strcpy(atString, "AT+CBC\r\n"); //  sendAT(atString); //delayMs(1000);	// Ask for battery info - charging state, percentage and millivolts
   126C 78 5E              3857 	mov	r0,#_strcpy_PARM_2
   126E 74 88              3858 	mov	a,#__str_19
   1270 F2                 3859 	movx	@r0,a
   1271 08                 3860 	inc	r0
   1272 74 56              3861 	mov	a,#(__str_19 >> 8)
   1274 F2                 3862 	movx	@r0,a
   1275 08                 3863 	inc	r0
   1276 74 80              3864 	mov	a,#0x80
   1278 F2                 3865 	movx	@r0,a
   1279 90 F2 9B           3866 	mov	dptr,#_getFonaMillivolts_atString_1_1
   127C 75 F0 00           3867 	mov	b,#0x00
   127F 12 2B A9           3868 	lcall	_strcpy
                    0C5A   3869 	C$mdrip.c$427$1$1 ==.
                           3870 ;	apps/mdrip/mdrip.c:427: uartEnable();
   1282 12 06 55           3871 	lcall	_uartEnable
                    0C5D   3872 	C$mdrip.c$428$1$1 ==.
                           3873 ;	apps/mdrip/mdrip.c:428: printf(atString);
   1285 74 9B              3874 	mov	a,#_getFonaMillivolts_atString_1_1
   1287 C0 E0              3875 	push	acc
   1289 74 F2              3876 	mov	a,#(_getFonaMillivolts_atString_1_1 >> 8)
   128B C0 E0              3877 	push	acc
   128D E4                 3878 	clr	a
   128E C0 E0              3879 	push	acc
   1290 12 49 B3           3880 	lcall	_printf
   1293 15 81              3881 	dec	sp
   1295 15 81              3882 	dec	sp
   1297 15 81              3883 	dec	sp
                    0C71   3884 	C$mdrip.c$429$1$1 ==.
                           3885 ;	apps/mdrip/mdrip.c:429: delayMs(100);
   1299 90 00 64           3886 	mov	dptr,#0x0064
   129C 12 45 D8           3887 	lcall	_delayMs
                    0C77   3888 	C$mdrip.c$431$1$1 ==.
                           3889 ;	apps/mdrip/mdrip.c:431: rxCount = uart1RxAvailable();
   129F 12 27 D2           3890 	lcall	_uart1RxAvailable
   12A2 AF 82              3891 	mov	r7,dpl
                    0C7C   3892 	C$mdrip.c$432$1$1 ==.
                           3893 ;	apps/mdrip/mdrip.c:432: strcpy(c, (getFonaString()));
   12A4 C0 07              3894 	push	ar7
   12A6 12 09 E7           3895 	lcall	_getFonaString
   12A9 AD 82              3896 	mov	r5,dpl
   12AB AE 83              3897 	mov	r6,dph
   12AD 78 5E              3898 	mov	r0,#_strcpy_PARM_2
   12AF ED                 3899 	mov	a,r5
   12B0 F2                 3900 	movx	@r0,a
   12B1 08                 3901 	inc	r0
   12B2 EE                 3902 	mov	a,r6
   12B3 F2                 3903 	movx	@r0,a
   12B4 08                 3904 	inc	r0
   12B5 E4                 3905 	clr	a
   12B6 F2                 3906 	movx	@r0,a
   12B7 90 F2 4B           3907 	mov	dptr,#_getFonaMillivolts_c_1_1
   12BA 75 F0 00           3908 	mov	b,#0x00
   12BD 12 2B A9           3909 	lcall	_strcpy
                    0C98   3910 	C$mdrip.c$434$1$1 ==.
                           3911 ;	apps/mdrip/mdrip.c:434: if (usbPowerPresent()) {
   12C0 12 3A 62           3912 	lcall	_usbPowerPresent
   12C3 D0 07              3913 	pop	ar7
   12C5 50 62              3914 	jnc	00104$
                    0C9F   3915 	C$mdrip.c$435$2$2 ==.
                           3916 ;	apps/mdrip/mdrip.c:435: if(usbComTxAvailable() > 40) {							//  Check if room to send string
   12C7 C0 07              3917 	push	ar7
   12C9 12 32 7B           3918 	lcall	_usbComTxAvailable
   12CC AE 82              3919 	mov	r6,dpl
   12CE D0 07              3920 	pop	ar7
   12D0 EE                 3921 	mov	a,r6
   12D1 24 D7              3922 	add	a,#0xff - 0x28
   12D3 50 54              3923 	jnc	00104$
                    0CAD   3924 	C$mdrip.c$436$3$3 ==.
                           3925 ;	apps/mdrip/mdrip.c:436: strcpy(atString, "CBC> ");
   12D5 78 5E              3926 	mov	r0,#_strcpy_PARM_2
   12D7 74 91              3927 	mov	a,#__str_20
   12D9 F2                 3928 	movx	@r0,a
   12DA 08                 3929 	inc	r0
   12DB 74 56              3930 	mov	a,#(__str_20 >> 8)
   12DD F2                 3931 	movx	@r0,a
   12DE 08                 3932 	inc	r0
   12DF 74 80              3933 	mov	a,#0x80
   12E1 F2                 3934 	movx	@r0,a
   12E2 90 F2 9B           3935 	mov	dptr,#_getFonaMillivolts_atString_1_1
   12E5 75 F0 00           3936 	mov	b,#0x00
   12E8 C0 07              3937 	push	ar7
   12EA 12 2B A9           3938 	lcall	_strcpy
                    0CC5   3939 	C$mdrip.c$437$3$3 ==.
                           3940 ;	apps/mdrip/mdrip.c:437: strcat(atString, c);
   12ED 78 84              3941 	mov	r0,#_strcat_PARM_2
   12EF 74 4B              3942 	mov	a,#_getFonaMillivolts_c_1_1
   12F1 F2                 3943 	movx	@r0,a
   12F2 08                 3944 	inc	r0
   12F3 74 F2              3945 	mov	a,#(_getFonaMillivolts_c_1_1 >> 8)
   12F5 F2                 3946 	movx	@r0,a
   12F6 08                 3947 	inc	r0
   12F7 E4                 3948 	clr	a
   12F8 F2                 3949 	movx	@r0,a
   12F9 90 F2 9B           3950 	mov	dptr,#_getFonaMillivolts_atString_1_1
   12FC 75 F0 00           3951 	mov	b,#0x00
   12FF 12 2F ED           3952 	lcall	_strcat
                    0CDA   3953 	C$mdrip.c$438$3$3 ==.
                           3954 ;	apps/mdrip/mdrip.c:438: usbComTxSend(atString, strlen(atString));
   1302 7D 9B              3955 	mov	r5,#_getFonaMillivolts_atString_1_1
   1304 7E F2              3956 	mov	r6,#(_getFonaMillivolts_atString_1_1 >> 8)
   1306 90 F2 9B           3957 	mov	dptr,#_getFonaMillivolts_atString_1_1
   1309 75 F0 00           3958 	mov	b,#0x00
   130C C0 06              3959 	push	ar6
   130E C0 05              3960 	push	ar5
   1310 12 50 F2           3961 	lcall	_strlen
   1313 AB 82              3962 	mov	r3,dpl
   1315 D0 05              3963 	pop	ar5
   1317 D0 06              3964 	pop	ar6
   1319 78 94              3965 	mov	r0,#_usbComTxSend_PARM_2
   131B EB                 3966 	mov	a,r3
   131C F2                 3967 	movx	@r0,a
   131D 8D 82              3968 	mov	dpl,r5
   131F 8E 83              3969 	mov	dph,r6
   1321 12 32 B2           3970 	lcall	_usbComTxSend
                    0CFC   3971 	C$mdrip.c$439$3$3 ==.
                           3972 ;	apps/mdrip/mdrip.c:439: doServices();
   1324 12 09 9B           3973 	lcall	_doServices
   1327 D0 07              3974 	pop	ar7
   1329                    3975 00104$:
                    0D01   3976 	C$mdrip.c$446$1$1 ==.
                           3977 ;	apps/mdrip/mdrip.c:446: i = strlen(c);
   1329 90 F2 4B           3978 	mov	dptr,#_getFonaMillivolts_c_1_1
   132C 75 F0 00           3979 	mov	b,#0x00
   132F C0 07              3980 	push	ar7
   1331 12 50 F2           3981 	lcall	_strlen
   1334 AD 82              3982 	mov	r5,dpl
   1336 AE 83              3983 	mov	r6,dph
   1338 D0 07              3984 	pop	ar7
   133A 90 F2 47           3985 	mov	dptr,#_getFonaMillivolts_i_1_1
   133D ED                 3986 	mov	a,r5
   133E F0                 3987 	movx	@dptr,a
   133F A3                 3988 	inc	dptr
   1340 EE                 3989 	mov	a,r6
   1341 F0                 3990 	movx	@dptr,a
                    0D1A   3991 	C$mdrip.c$448$1$1 ==.
                           3992 ;	apps/mdrip/mdrip.c:448: if  (c[0]!=0) {
   1342 90 F2 4B           3993 	mov	dptr,#_getFonaMillivolts_c_1_1
   1345 E0                 3994 	movx	a,@dptr
   1346 70 03              3995 	jnz	00126$
   1348 02 13 F3           3996 	ljmp	00112$
   134B                    3997 00126$:
                    0D23   3998 	C$mdrip.c$449$2$4 ==.
                           3999 ;	apps/mdrip/mdrip.c:449: if (c[i-13]==',') 	// Was 16 but that is before not after the percentage
   134B 8D 04              4000 	mov	ar4,r5
   134D EC                 4001 	mov	a,r4
   134E 24 F3              4002 	add	a,#0xF3
   1350 24 4B              4003 	add	a,#_getFonaMillivolts_c_1_1
   1352 F5 82              4004 	mov	dpl,a
   1354 E4                 4005 	clr	a
   1355 34 F2              4006 	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
   1357 F5 83              4007 	mov	dph,a
   1359 E0                 4008 	movx	a,@dptr
   135A FB                 4009 	mov	r3,a
   135B BB 2C 55           4010 	cjne	r3,#0x2C,00109$
                    0D36   4011 	C$mdrip.c$452$3$5 ==.
                           4012 ;	apps/mdrip/mdrip.c:452: intMV=(((((c[i-15])-'0')*10))+((((c[i-14])-'0'))));		// Bit of maths to work out the percentage from these two characters
   135E EC                 4013 	mov	a,r4
   135F 24 F1              4014 	add	a,#0xF1
   1361 24 4B              4015 	add	a,#_getFonaMillivolts_c_1_1
   1363 F5 82              4016 	mov	dpl,a
   1365 E4                 4017 	clr	a
   1366 34 F2              4018 	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
   1368 F5 83              4019 	mov	dph,a
   136A E0                 4020 	movx	a,@dptr
   136B FB                 4021 	mov	r3,a
   136C 33                 4022 	rlc	a
   136D 95 E0              4023 	subb	a,acc
   136F FA                 4024 	mov	r2,a
   1370 78 A4              4025 	mov	r0,#__mulint_PARM_2
   1372 EB                 4026 	mov	a,r3
   1373 24 D0              4027 	add	a,#0xD0
   1375 F2                 4028 	movx	@r0,a
   1376 EA                 4029 	mov	a,r2
   1377 34 FF              4030 	addc	a,#0xFF
   1379 08                 4031 	inc	r0
   137A F2                 4032 	movx	@r0,a
   137B 90 00 0A           4033 	mov	dptr,#0x000A
   137E C0 04              4034 	push	ar4
   1380 12 3A 79           4035 	lcall	__mulint
   1383 85 82 2A           4036 	mov	_getFonaMillivolts_sloc0_1_0,dpl
   1386 85 83 2B           4037 	mov	(_getFonaMillivolts_sloc0_1_0 + 1),dph
   1389 D0 04              4038 	pop	ar4
   138B EC                 4039 	mov	a,r4
   138C 24 F2              4040 	add	a,#0xF2
   138E 24 4B              4041 	add	a,#_getFonaMillivolts_c_1_1
   1390 F5 82              4042 	mov	dpl,a
   1392 E4                 4043 	clr	a
   1393 34 F2              4044 	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
   1395 F5 83              4045 	mov	dph,a
   1397 E0                 4046 	movx	a,@dptr
   1398 FB                 4047 	mov	r3,a
   1399 33                 4048 	rlc	a
   139A 95 E0              4049 	subb	a,acc
   139C FA                 4050 	mov	r2,a
   139D EB                 4051 	mov	a,r3
   139E 24 D0              4052 	add	a,#0xD0
   13A0 FB                 4053 	mov	r3,a
   13A1 EA                 4054 	mov	a,r2
   13A2 34 FF              4055 	addc	a,#0xFF
   13A4 FA                 4056 	mov	r2,a
   13A5 90 F2 49           4057 	mov	dptr,#_getFonaMillivolts_intMV_1_1
   13A8 EB                 4058 	mov	a,r3
   13A9 25 2A              4059 	add	a,_getFonaMillivolts_sloc0_1_0
   13AB F0                 4060 	movx	@dptr,a
   13AC EA                 4061 	mov	a,r2
   13AD 35 2B              4062 	addc	a,(_getFonaMillivolts_sloc0_1_0 + 1)
   13AF A3                 4063 	inc	dptr
   13B0 F0                 4064 	movx	@dptr,a
   13B1 80 6D              4065 	sjmp	00113$
   13B3                    4066 00109$:
                    0D8B   4067 	C$mdrip.c$455$3$6 ==.
                           4068 ;	apps/mdrip/mdrip.c:455: if (c[i-14]==',') 											// There are only two digits if the 16th last character is a comma
   13B3 EC                 4069 	mov	a,r4
   13B4 24 F2              4070 	add	a,#0xF2
   13B6 24 4B              4071 	add	a,#_getFonaMillivolts_c_1_1
   13B8 F5 82              4072 	mov	dpl,a
   13BA E4                 4073 	clr	a
   13BB 34 F2              4074 	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
   13BD F5 83              4075 	mov	dph,a
   13BF E0                 4076 	movx	a,@dptr
   13C0 FB                 4077 	mov	r3,a
   13C1 BB 2C 24           4078 	cjne	r3,#0x2C,00106$
                    0D9C   4079 	C$mdrip.c$457$4$7 ==.
                           4080 ;	apps/mdrip/mdrip.c:457: intMV=((((c[i-15])-'0')));		// Bit of maths to work out the percentage from these two characters
   13C4 EC                 4081 	mov	a,r4
   13C5 24 F1              4082 	add	a,#0xF1
   13C7 24 4B              4083 	add	a,#_getFonaMillivolts_c_1_1
   13C9 F5 82              4084 	mov	dpl,a
   13CB E4                 4085 	clr	a
   13CC 34 F2              4086 	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
   13CE F5 83              4087 	mov	dph,a
   13D0 E0                 4088 	movx	a,@dptr
   13D1 FC                 4089 	mov	r4,a
   13D2 33                 4090 	rlc	a
   13D3 95 E0              4091 	subb	a,acc
   13D5 FB                 4092 	mov	r3,a
   13D6 EC                 4093 	mov	a,r4
   13D7 24 D0              4094 	add	a,#0xD0
   13D9 FC                 4095 	mov	r4,a
   13DA EB                 4096 	mov	a,r3
   13DB 34 FF              4097 	addc	a,#0xFF
   13DD FB                 4098 	mov	r3,a
   13DE 90 F2 49           4099 	mov	dptr,#_getFonaMillivolts_intMV_1_1
   13E1 EC                 4100 	mov	a,r4
   13E2 F0                 4101 	movx	@dptr,a
   13E3 A3                 4102 	inc	dptr
   13E4 EB                 4103 	mov	a,r3
   13E5 F0                 4104 	movx	@dptr,a
   13E6 80 38              4105 	sjmp	00113$
   13E8                    4106 00106$:
                    0DC0   4107 	C$mdrip.c$459$4$8 ==.
                           4108 ;	apps/mdrip/mdrip.c:459: intMV=(100);											// Oherwise presumably the battery is 100% as 3 digits were found
   13E8 90 F2 49           4109 	mov	dptr,#_getFonaMillivolts_intMV_1_1
   13EB 74 64              4110 	mov	a,#0x64
   13ED F0                 4111 	movx	@dptr,a
   13EE A3                 4112 	inc	dptr
   13EF E4                 4113 	clr	a
   13F0 F0                 4114 	movx	@dptr,a
   13F1 80 2D              4115 	sjmp	00113$
   13F3                    4116 00112$:
                    0DCB   4117 	C$mdrip.c$464$2$9 ==.
                           4118 ;	apps/mdrip/mdrip.c:464: intMV=((1000*rxCount)+(100+i));							// If we get no response back then default to 100% as we don't know.
   13F3 78 A4              4119 	mov	r0,#__mulint_PARM_2
   13F5 EF                 4120 	mov	a,r7
   13F6 F2                 4121 	movx	@r0,a
   13F7 EF                 4122 	mov	a,r7
   13F8 33                 4123 	rlc	a
   13F9 95 E0              4124 	subb	a,acc
   13FB 08                 4125 	inc	r0
   13FC F2                 4126 	movx	@r0,a
   13FD 90 03 E8           4127 	mov	dptr,#0x03E8
   1400 C0 06              4128 	push	ar6
   1402 C0 05              4129 	push	ar5
   1404 12 3A 79           4130 	lcall	__mulint
   1407 AC 82              4131 	mov	r4,dpl
   1409 AF 83              4132 	mov	r7,dph
   140B D0 05              4133 	pop	ar5
   140D D0 06              4134 	pop	ar6
   140F 74 64              4135 	mov	a,#0x64
   1411 2D                 4136 	add	a,r5
   1412 FD                 4137 	mov	r5,a
   1413 E4                 4138 	clr	a
   1414 3E                 4139 	addc	a,r6
   1415 FE                 4140 	mov	r6,a
   1416 90 F2 49           4141 	mov	dptr,#_getFonaMillivolts_intMV_1_1
   1419 ED                 4142 	mov	a,r5
   141A 2C                 4143 	add	a,r4
   141B F0                 4144 	movx	@dptr,a
   141C EE                 4145 	mov	a,r6
   141D 3F                 4146 	addc	a,r7
   141E A3                 4147 	inc	dptr
   141F F0                 4148 	movx	@dptr,a
   1420                    4149 00113$:
                    0DF8   4150 	C$mdrip.c$467$1$1 ==.
                           4151 ;	apps/mdrip/mdrip.c:467: if (intMV < 15) {												// If battery is less than a third then
   1420 90 F2 49           4152 	mov	dptr,#_getFonaMillivolts_intMV_1_1
   1423 E0                 4153 	movx	a,@dptr
   1424 FE                 4154 	mov	r6,a
   1425 A3                 4155 	inc	dptr
   1426 E0                 4156 	movx	a,@dptr
   1427 FF                 4157 	mov	r7,a
   1428 C3                 4158 	clr	c
   1429 EE                 4159 	mov	a,r6
   142A 94 0F              4160 	subb	a,#0x0F
   142C EF                 4161 	mov	a,r7
   142D 64 80              4162 	xrl	a,#0x80
   142F 94 80              4163 	subb	a,#0x80
   1431 50 03              4164 	jnc	00115$
                    0E0B   4165 	C$mdrip.c$468$3$11 ==.
                           4166 ;	apps/mdrip/mdrip.c:468: LED_RED(1);	 }												// Switch on Red LED on Wixel to show low battery
   1433 43 FF 02           4167 	orl	_P2DIR,#0x02
   1436                    4168 00115$:
                    0E0E   4169 	C$mdrip.c$470$1$1 ==.
                           4170 ;	apps/mdrip/mdrip.c:470: return intMV;
   1436 8E 82              4171 	mov	dpl,r6
   1438 8F 83              4172 	mov	dph,r7
                    0E12   4173 	C$mdrip.c$471$1$1 ==.
                    0E12   4174 	XG$getFonaMillivolts$0$0 ==.
   143A 22                 4175 	ret
                           4176 ;------------------------------------------------------------
                           4177 ;Allocation info for local variables in function 'getFonaGPS'
                           4178 ;------------------------------------------------------------
                           4179 ;sloc0                     Allocated with name '_getFonaGPS_sloc0_1_0'
                           4180 ;sloc1                     Allocated with name '_getFonaGPS_sloc1_1_0'
                           4181 ;i                         Allocated with name '_getFonaGPS_i_1_1'
                           4182 ;j                         Allocated with name '_getFonaGPS_j_1_1'
                           4183 ;clen                      Allocated with name '_getFonaGPS_clen_1_1'
                           4184 ;stage                     Allocated with name '_getFonaGPS_stage_1_1'
                           4185 ;status                    Allocated with name '_getFonaGPS_status_1_1'
                           4186 ;atString                  Allocated with name '_getFonaGPS_atString_1_1'
                           4187 ;c                         Allocated with name '_getFonaGPS_c_1_1'
                           4188 ;------------------------------------------------------------
                    0E13   4189 	G$getFonaGPS$0$0 ==.
                    0E13   4190 	C$mdrip.c$482$1$1 ==.
                           4191 ;	apps/mdrip/mdrip.c:482: void getFonaGPS(GSMlocInfo* CIPGSMLOC) {
                           4192 ;	-----------------------------------------
                           4193 ;	 function getFonaGPS
                           4194 ;	-----------------------------------------
   143B                    4195 _getFonaGPS:
   143B AF 83              4196 	mov	r7,dph
   143D E5 82              4197 	mov	a,dpl
   143F 78 45              4198 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   1441 F2                 4199 	movx	@r0,a
   1442 08                 4200 	inc	r0
   1443 EF                 4201 	mov	a,r7
   1444 F2                 4202 	movx	@r0,a
                    0E1D   4203 	C$mdrip.c$485$1$1 ==.
                           4204 ;	apps/mdrip/mdrip.c:485: XDATA char status[6] = {0};								//	Maximum of 5 characters and a termination character
   1445 90 F2 C6           4205 	mov	dptr,#_getFonaGPS_status_1_1
   1448 E4                 4206 	clr	a
   1449 F0                 4207 	movx	@dptr,a
   144A 90 F2 C7           4208 	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0001)
   144D F0                 4209 	movx	@dptr,a
   144E 90 F2 C8           4210 	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0002)
   1451 F0                 4211 	movx	@dptr,a
   1452 90 F2 C9           4212 	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0003)
   1455 F0                 4213 	movx	@dptr,a
   1456 90 F2 CA           4214 	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0004)
                    0E31   4215 	C$mdrip.c$487$1$1 ==.
                           4216 ;	apps/mdrip/mdrip.c:487: XDATA char c[80] = {0};
   1459 E4                 4217 	clr	a
   145A F0                 4218 	movx	@dptr,a
   145B 90 F2 CB           4219 	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0005)
   145E F0                 4220 	movx	@dptr,a
   145F 90 F2 F4           4221 	mov	dptr,#_getFonaGPS_c_1_1
   1462 F0                 4222 	movx	@dptr,a
   1463 90 F2 F5           4223 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0001)
   1466 F0                 4224 	movx	@dptr,a
   1467 90 F2 F6           4225 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0002)
   146A E4                 4226 	clr	a
   146B F0                 4227 	movx	@dptr,a
   146C 90 F2 F7           4228 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0003)
   146F F0                 4229 	movx	@dptr,a
   1470 90 F2 F8           4230 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0004)
   1473 F0                 4231 	movx	@dptr,a
   1474 90 F2 F9           4232 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0005)
   1477 F0                 4233 	movx	@dptr,a
   1478 90 F2 FA           4234 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0006)
   147B E4                 4235 	clr	a
   147C F0                 4236 	movx	@dptr,a
   147D 90 F2 FB           4237 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0007)
   1480 F0                 4238 	movx	@dptr,a
   1481 90 F2 FC           4239 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0008)
   1484 F0                 4240 	movx	@dptr,a
   1485 90 F2 FD           4241 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0009)
   1488 F0                 4242 	movx	@dptr,a
   1489 90 F2 FE           4243 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000a)
   148C E4                 4244 	clr	a
   148D F0                 4245 	movx	@dptr,a
   148E 90 F2 FF           4246 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000b)
   1491 F0                 4247 	movx	@dptr,a
   1492 90 F3 00           4248 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000c)
   1495 F0                 4249 	movx	@dptr,a
   1496 90 F3 01           4250 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000d)
   1499 F0                 4251 	movx	@dptr,a
   149A 90 F3 02           4252 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000e)
   149D E4                 4253 	clr	a
   149E F0                 4254 	movx	@dptr,a
   149F 90 F3 03           4255 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000f)
   14A2 F0                 4256 	movx	@dptr,a
   14A3 90 F3 04           4257 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0010)
   14A6 F0                 4258 	movx	@dptr,a
   14A7 90 F3 05           4259 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0011)
   14AA F0                 4260 	movx	@dptr,a
   14AB 90 F3 06           4261 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0012)
   14AE E4                 4262 	clr	a
   14AF F0                 4263 	movx	@dptr,a
   14B0 90 F3 07           4264 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0013)
   14B3 F0                 4265 	movx	@dptr,a
   14B4 90 F3 08           4266 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0014)
   14B7 F0                 4267 	movx	@dptr,a
   14B8 90 F3 09           4268 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0015)
   14BB F0                 4269 	movx	@dptr,a
   14BC 90 F3 0A           4270 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0016)
   14BF E4                 4271 	clr	a
   14C0 F0                 4272 	movx	@dptr,a
   14C1 90 F3 0B           4273 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0017)
   14C4 F0                 4274 	movx	@dptr,a
   14C5 90 F3 0C           4275 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0018)
   14C8 F0                 4276 	movx	@dptr,a
   14C9 90 F3 0D           4277 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0019)
   14CC F0                 4278 	movx	@dptr,a
   14CD 90 F3 0E           4279 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001a)
   14D0 E4                 4280 	clr	a
   14D1 F0                 4281 	movx	@dptr,a
   14D2 90 F3 0F           4282 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001b)
   14D5 F0                 4283 	movx	@dptr,a
   14D6 90 F3 10           4284 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001c)
   14D9 F0                 4285 	movx	@dptr,a
   14DA 90 F3 11           4286 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001d)
   14DD F0                 4287 	movx	@dptr,a
   14DE 90 F3 12           4288 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001e)
   14E1 E4                 4289 	clr	a
   14E2 F0                 4290 	movx	@dptr,a
   14E3 90 F3 13           4291 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001f)
   14E6 F0                 4292 	movx	@dptr,a
   14E7 90 F3 14           4293 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0020)
   14EA F0                 4294 	movx	@dptr,a
   14EB 90 F3 15           4295 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0021)
   14EE F0                 4296 	movx	@dptr,a
   14EF 90 F3 16           4297 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0022)
   14F2 E4                 4298 	clr	a
   14F3 F0                 4299 	movx	@dptr,a
   14F4 90 F3 17           4300 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0023)
   14F7 F0                 4301 	movx	@dptr,a
   14F8 90 F3 18           4302 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0024)
   14FB F0                 4303 	movx	@dptr,a
   14FC 90 F3 19           4304 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0025)
   14FF F0                 4305 	movx	@dptr,a
   1500 90 F3 1A           4306 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0026)
   1503 E4                 4307 	clr	a
   1504 F0                 4308 	movx	@dptr,a
   1505 90 F3 1B           4309 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0027)
   1508 F0                 4310 	movx	@dptr,a
   1509 90 F3 1C           4311 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0028)
   150C F0                 4312 	movx	@dptr,a
   150D 90 F3 1D           4313 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0029)
   1510 F0                 4314 	movx	@dptr,a
   1511 90 F3 1E           4315 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002a)
   1514 E4                 4316 	clr	a
   1515 F0                 4317 	movx	@dptr,a
   1516 90 F3 1F           4318 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002b)
   1519 F0                 4319 	movx	@dptr,a
   151A 90 F3 20           4320 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002c)
   151D F0                 4321 	movx	@dptr,a
   151E 90 F3 21           4322 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002d)
   1521 F0                 4323 	movx	@dptr,a
   1522 90 F3 22           4324 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002e)
   1525 E4                 4325 	clr	a
   1526 F0                 4326 	movx	@dptr,a
   1527 90 F3 23           4327 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002f)
   152A F0                 4328 	movx	@dptr,a
   152B 90 F3 24           4329 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0030)
   152E F0                 4330 	movx	@dptr,a
   152F 90 F3 25           4331 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0031)
   1532 F0                 4332 	movx	@dptr,a
   1533 90 F3 26           4333 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0032)
   1536 E4                 4334 	clr	a
   1537 F0                 4335 	movx	@dptr,a
   1538 90 F3 27           4336 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0033)
   153B F0                 4337 	movx	@dptr,a
   153C 90 F3 28           4338 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0034)
   153F F0                 4339 	movx	@dptr,a
   1540 90 F3 29           4340 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0035)
   1543 F0                 4341 	movx	@dptr,a
   1544 90 F3 2A           4342 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0036)
   1547 E4                 4343 	clr	a
   1548 F0                 4344 	movx	@dptr,a
   1549 90 F3 2B           4345 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0037)
   154C F0                 4346 	movx	@dptr,a
   154D 90 F3 2C           4347 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0038)
   1550 F0                 4348 	movx	@dptr,a
   1551 90 F3 2D           4349 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0039)
   1554 F0                 4350 	movx	@dptr,a
   1555 90 F3 2E           4351 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003a)
   1558 E4                 4352 	clr	a
   1559 F0                 4353 	movx	@dptr,a
   155A 90 F3 2F           4354 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003b)
   155D F0                 4355 	movx	@dptr,a
   155E 90 F3 30           4356 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003c)
   1561 F0                 4357 	movx	@dptr,a
   1562 90 F3 31           4358 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003d)
   1565 F0                 4359 	movx	@dptr,a
   1566 90 F3 32           4360 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003e)
   1569 E4                 4361 	clr	a
   156A F0                 4362 	movx	@dptr,a
   156B 90 F3 33           4363 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003f)
   156E F0                 4364 	movx	@dptr,a
   156F 90 F3 34           4365 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0040)
   1572 F0                 4366 	movx	@dptr,a
   1573 90 F3 35           4367 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0041)
   1576 F0                 4368 	movx	@dptr,a
   1577 90 F3 36           4369 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0042)
   157A E4                 4370 	clr	a
   157B F0                 4371 	movx	@dptr,a
   157C 90 F3 37           4372 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0043)
   157F F0                 4373 	movx	@dptr,a
   1580 90 F3 38           4374 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0044)
   1583 F0                 4375 	movx	@dptr,a
   1584 90 F3 39           4376 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0045)
   1587 F0                 4377 	movx	@dptr,a
   1588 90 F3 3A           4378 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0046)
   158B E4                 4379 	clr	a
   158C F0                 4380 	movx	@dptr,a
   158D 90 F3 3B           4381 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0047)
   1590 F0                 4382 	movx	@dptr,a
   1591 90 F3 3C           4383 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0048)
   1594 F0                 4384 	movx	@dptr,a
   1595 90 F3 3D           4385 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0049)
   1598 F0                 4386 	movx	@dptr,a
   1599 90 F3 3E           4387 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004a)
   159C E4                 4388 	clr	a
   159D F0                 4389 	movx	@dptr,a
   159E 90 F3 3F           4390 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004b)
   15A1 F0                 4391 	movx	@dptr,a
   15A2 90 F3 40           4392 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004c)
   15A5 F0                 4393 	movx	@dptr,a
   15A6 90 F3 41           4394 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004d)
   15A9 F0                 4395 	movx	@dptr,a
   15AA 90 F3 42           4396 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004e)
   15AD E4                 4397 	clr	a
   15AE F0                 4398 	movx	@dptr,a
   15AF 90 F3 43           4399 	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004f)
   15B2 F0                 4400 	movx	@dptr,a
                    0F8B   4401 	C$mdrip.c$489$1$1 ==.
                           4402 ;	apps/mdrip/mdrip.c:489: strcpy(atString, "AT+CDNSCFG=8.8.8.8\r\n"); sendAT(atString);					// Using google for DNS here - you can replace if you like!
   15B3 78 5E              4403 	mov	r0,#_strcpy_PARM_2
   15B5 74 97              4404 	mov	a,#__str_21
   15B7 F2                 4405 	movx	@r0,a
   15B8 08                 4406 	inc	r0
   15B9 74 56              4407 	mov	a,#(__str_21 >> 8)
   15BB F2                 4408 	movx	@r0,a
   15BC 08                 4409 	inc	r0
   15BD 74 80              4410 	mov	a,#0x80
   15BF F2                 4411 	movx	@r0,a
   15C0 90 F2 CC           4412 	mov	dptr,#_getFonaGPS_atString_1_1
   15C3 75 F0 00           4413 	mov	b,#0x00
   15C6 12 2B A9           4414 	lcall	_strcpy
   15C9 90 F2 CC           4415 	mov	dptr,#_getFonaGPS_atString_1_1
   15CC 12 0B 21           4416 	lcall	_sendAT
                    0FA7   4417 	C$mdrip.c$490$1$1 ==.
                           4418 ;	apps/mdrip/mdrip.c:490: strcpy(atString, "AT+SAPBR=0,1\r\n"); sendAT(atString);							// Not sure if I need this one
   15CF 78 5E              4419 	mov	r0,#_strcpy_PARM_2
   15D1 74 AC              4420 	mov	a,#__str_22
   15D3 F2                 4421 	movx	@r0,a
   15D4 08                 4422 	inc	r0
   15D5 74 56              4423 	mov	a,#(__str_22 >> 8)
   15D7 F2                 4424 	movx	@r0,a
   15D8 08                 4425 	inc	r0
   15D9 74 80              4426 	mov	a,#0x80
   15DB F2                 4427 	movx	@r0,a
   15DC 90 F2 CC           4428 	mov	dptr,#_getFonaGPS_atString_1_1
   15DF 75 F0 00           4429 	mov	b,#0x00
   15E2 12 2B A9           4430 	lcall	_strcpy
   15E5 90 F2 CC           4431 	mov	dptr,#_getFonaGPS_atString_1_1
   15E8 12 0B 21           4432 	lcall	_sendAT
                    0FC3   4433 	C$mdrip.c$491$1$1 ==.
                           4434 ;	apps/mdrip/mdrip.c:491: strcpy(atString, "AT+SAPBR=3,1,\"Contype\",GPRS\r\n"); sendAT(atString);
   15EB 78 5E              4435 	mov	r0,#_strcpy_PARM_2
   15ED 74 BB              4436 	mov	a,#__str_23
   15EF F2                 4437 	movx	@r0,a
   15F0 08                 4438 	inc	r0
   15F1 74 56              4439 	mov	a,#(__str_23 >> 8)
   15F3 F2                 4440 	movx	@r0,a
   15F4 08                 4441 	inc	r0
   15F5 74 80              4442 	mov	a,#0x80
   15F7 F2                 4443 	movx	@r0,a
   15F8 90 F2 CC           4444 	mov	dptr,#_getFonaGPS_atString_1_1
   15FB 75 F0 00           4445 	mov	b,#0x00
   15FE 12 2B A9           4446 	lcall	_strcpy
   1601 90 F2 CC           4447 	mov	dptr,#_getFonaGPS_atString_1_1
   1604 12 0B 21           4448 	lcall	_sendAT
                    0FDF   4449 	C$mdrip.c$497$1$1 ==.
                           4450 ;	apps/mdrip/mdrip.c:497: strcpy(atString, "AT+SAPBR=3,1,\"APN\",\"internet\"\r\n"); sendAT(atString);
   1607 78 5E              4451 	mov	r0,#_strcpy_PARM_2
   1609 74 D9              4452 	mov	a,#__str_24
   160B F2                 4453 	movx	@r0,a
   160C 08                 4454 	inc	r0
   160D 74 56              4455 	mov	a,#(__str_24 >> 8)
   160F F2                 4456 	movx	@r0,a
   1610 08                 4457 	inc	r0
   1611 74 80              4458 	mov	a,#0x80
   1613 F2                 4459 	movx	@r0,a
   1614 90 F2 CC           4460 	mov	dptr,#_getFonaGPS_atString_1_1
   1617 75 F0 00           4461 	mov	b,#0x00
   161A 12 2B A9           4462 	lcall	_strcpy
   161D 90 F2 CC           4463 	mov	dptr,#_getFonaGPS_atString_1_1
   1620 12 0B 21           4464 	lcall	_sendAT
                    0FFB   4465 	C$mdrip.c$514$1$1 ==.
                           4466 ;	apps/mdrip/mdrip.c:514: strcpy(atString, "AT+SAPBR=1,1\r\n"); sendAT(atString);
   1623 78 5E              4467 	mov	r0,#_strcpy_PARM_2
   1625 74 F9              4468 	mov	a,#__str_25
   1627 F2                 4469 	movx	@r0,a
   1628 08                 4470 	inc	r0
   1629 74 56              4471 	mov	a,#(__str_25 >> 8)
   162B F2                 4472 	movx	@r0,a
   162C 08                 4473 	inc	r0
   162D 74 80              4474 	mov	a,#0x80
   162F F2                 4475 	movx	@r0,a
   1630 90 F2 CC           4476 	mov	dptr,#_getFonaGPS_atString_1_1
   1633 75 F0 00           4477 	mov	b,#0x00
   1636 12 2B A9           4478 	lcall	_strcpy
   1639 90 F2 CC           4479 	mov	dptr,#_getFonaGPS_atString_1_1
   163C 12 0B 21           4480 	lcall	_sendAT
                    1017   4481 	C$mdrip.c$516$1$1 ==.
                           4482 ;	apps/mdrip/mdrip.c:516: strcpy(atString, "AT+CIPGSMLOC=1,1\r\n");
   163F 78 5E              4483 	mov	r0,#_strcpy_PARM_2
   1641 74 08              4484 	mov	a,#__str_26
   1643 F2                 4485 	movx	@r0,a
   1644 08                 4486 	inc	r0
   1645 74 57              4487 	mov	a,#(__str_26 >> 8)
   1647 F2                 4488 	movx	@r0,a
   1648 08                 4489 	inc	r0
   1649 74 80              4490 	mov	a,#0x80
   164B F2                 4491 	movx	@r0,a
   164C 90 F2 CC           4492 	mov	dptr,#_getFonaGPS_atString_1_1
   164F 75 F0 00           4493 	mov	b,#0x00
   1652 12 2B A9           4494 	lcall	_strcpy
                    102D   4495 	C$mdrip.c$517$1$1 ==.
                           4496 ;	apps/mdrip/mdrip.c:517: printf(atString);
   1655 74 CC              4497 	mov	a,#_getFonaGPS_atString_1_1
   1657 C0 E0              4498 	push	acc
   1659 74 F2              4499 	mov	a,#(_getFonaGPS_atString_1_1 >> 8)
   165B C0 E0              4500 	push	acc
   165D E4                 4501 	clr	a
   165E C0 E0              4502 	push	acc
   1660 12 49 B3           4503 	lcall	_printf
   1663 15 81              4504 	dec	sp
   1665 15 81              4505 	dec	sp
   1667 15 81              4506 	dec	sp
                    1041   4507 	C$mdrip.c$519$1$1 ==.
                           4508 ;	apps/mdrip/mdrip.c:519: strcpy(c, getFonaString());		// I don't know if this is working - seem to be blanks if I don't muck about with responseStr
   1669 12 09 E7           4509 	lcall	_getFonaString
   166C AC 82              4510 	mov	r4,dpl
   166E AD 83              4511 	mov	r5,dph
   1670 78 5E              4512 	mov	r0,#_strcpy_PARM_2
   1672 EC                 4513 	mov	a,r4
   1673 F2                 4514 	movx	@r0,a
   1674 08                 4515 	inc	r0
   1675 ED                 4516 	mov	a,r5
   1676 F2                 4517 	movx	@r0,a
   1677 08                 4518 	inc	r0
   1678 E4                 4519 	clr	a
   1679 F2                 4520 	movx	@r0,a
   167A 90 F2 F4           4521 	mov	dptr,#_getFonaGPS_c_1_1
   167D 75 F0 00           4522 	mov	b,#0x00
   1680 12 2B A9           4523 	lcall	_strcpy
                    105B   4524 	C$mdrip.c$520$1$1 ==.
                           4525 ;	apps/mdrip/mdrip.c:520: clen=strlen(c);
   1683 90 F2 F4           4526 	mov	dptr,#_getFonaGPS_c_1_1
   1686 75 F0 00           4527 	mov	b,#0x00
   1689 12 50 F2           4528 	lcall	_strlen
   168C AC 82              4529 	mov	r4,dpl
                    1066   4530 	C$mdrip.c$522$1$1 ==.
                           4531 ;	apps/mdrip/mdrip.c:522: stage = 1;												//	Start with scanning for "+CIPGSMLOC: "
   168E 90 F2 C5           4532 	mov	dptr,#_getFonaGPS_stage_1_1
   1691 74 01              4533 	mov	a,#0x01
   1693 F0                 4534 	movx	@dptr,a
                    106C   4535 	C$mdrip.c$523$1$1 ==.
                           4536 ;	apps/mdrip/mdrip.c:523: j=0;
   1694 90 F2 C4           4537 	mov	dptr,#_getFonaGPS_j_1_1
                    106F   4538 	C$mdrip.c$524$1$1 ==.
                           4539 ;	apps/mdrip/mdrip.c:524: for(i=0; i<clen; i++) {									//	Loop through every character of the response from the Fona to the AT command
   1697 E4                 4540 	clr	a
   1698 F0                 4541 	movx	@dptr,a
   1699 90 F2 C3           4542 	mov	dptr,#_getFonaGPS_i_1_1
   169C F0                 4543 	movx	@dptr,a
   169D 78 45              4544 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   169F E2                 4545 	movx	a,@r0
   16A0 24 19              4546 	add	a,#0x19
   16A2 FB                 4547 	mov	r3,a
   16A3 08                 4548 	inc	r0
   16A4 E2                 4549 	movx	a,@r0
   16A5 34 00              4550 	addc	a,#0x00
   16A7 FD                 4551 	mov	r5,a
   16A8                    4552 00137$:
   16A8 90 F2 C3           4553 	mov	dptr,#_getFonaGPS_i_1_1
   16AB E0                 4554 	movx	a,@dptr
   16AC FA                 4555 	mov	r2,a
   16AD C3                 4556 	clr	c
   16AE 9C                 4557 	subb	a,r4
   16AF 40 03              4558 	jc	00170$
   16B1 02 18 F9           4559 	ljmp	00140$
   16B4                    4560 00170$:
                    108C   4561 	C$mdrip.c$526$2$2 ==.
                           4562 ;	apps/mdrip/mdrip.c:526: if (stage == 1) {									//	Stage 1 - Find the '+' sign
   16B4 90 F2 C5           4563 	mov	dptr,#_getFonaGPS_stage_1_1
   16B7 E0                 4564 	movx	a,@dptr
   16B8 F5 2C              4565 	mov	_getFonaGPS_sloc0_1_0,a
   16BA 74 01              4566 	mov	a,#0x01
   16BC B5 2C 32           4567 	cjne	a,_getFonaGPS_sloc0_1_0,00104$
                    1097   4568 	C$mdrip.c$527$2$1 ==.
                           4569 ;	apps/mdrip/mdrip.c:527: if (c[i]=='+') {								//	Seemingly valid CIPGSMLOC response
   16BF C0 03              4570 	push	ar3
   16C1 C0 05              4571 	push	ar5
   16C3 EA                 4572 	mov	a,r2
   16C4 24 F4              4573 	add	a,#_getFonaGPS_c_1_1
   16C6 F5 82              4574 	mov	dpl,a
   16C8 E4                 4575 	clr	a
   16C9 34 F2              4576 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   16CB F5 83              4577 	mov	dph,a
   16CD E0                 4578 	movx	a,@dptr
   16CE FD                 4579 	mov	r5,a
   16CF BD 2B 02           4580 	cjne	r5,#0x2B,00173$
   16D2 80 06              4581 	sjmp	00174$
   16D4                    4582 00173$:
   16D4 D0 05              4583 	pop	ar5
   16D6 D0 03              4584 	pop	ar3
   16D8 80 17              4585 	sjmp	00104$
   16DA                    4586 00174$:
   16DA D0 05              4587 	pop	ar5
   16DC D0 03              4588 	pop	ar3
                    10B6   4589 	C$mdrip.c$528$4$4 ==.
                           4590 ;	apps/mdrip/mdrip.c:528: i=i+12;										//	Position index to start of status field
   16DE 90 F2 C3           4591 	mov	dptr,#_getFonaGPS_i_1_1
   16E1 74 0C              4592 	mov	a,#0x0C
   16E3 2A                 4593 	add	a,r2
   16E4 F0                 4594 	movx	@dptr,a
                    10BD   4595 	C$mdrip.c$529$4$4 ==.
                           4596 ;	apps/mdrip/mdrip.c:529: stage++;									//	Finish this stage of string processing and get ready for the next one
   16E5 90 F2 C5           4597 	mov	dptr,#_getFonaGPS_stage_1_1
   16E8 E5 2C              4598 	mov	a,_getFonaGPS_sloc0_1_0
   16EA 04                 4599 	inc	a
   16EB F0                 4600 	movx	@dptr,a
                    10C4   4601 	C$mdrip.c$530$4$4 ==.
                           4602 ;	apps/mdrip/mdrip.c:530: j=0;
   16EC 90 F2 C4           4603 	mov	dptr,#_getFonaGPS_j_1_1
   16EF E4                 4604 	clr	a
   16F0 F0                 4605 	movx	@dptr,a
   16F1                    4606 00104$:
                    10C9   4607 	C$mdrip.c$533$2$2 ==.
                           4608 ;	apps/mdrip/mdrip.c:533: if (stage == 2) {									//	Stage 2 - Get the status of the command
   16F1 90 F2 C5           4609 	mov	dptr,#_getFonaGPS_stage_1_1
   16F4 E0                 4610 	movx	a,@dptr
   16F5 FA                 4611 	mov	r2,a
   16F6 BA 02 02           4612 	cjne	r2,#0x02,00175$
   16F9 80 03              4613 	sjmp	00176$
   16FB                    4614 00175$:
   16FB 02 17 82           4615 	ljmp	00112$
   16FE                    4616 00176$:
                    10D6   4617 	C$mdrip.c$534$3$5 ==.
                           4618 ;	apps/mdrip/mdrip.c:534: if (c[i]==',') {
   16FE 90 F2 C3           4619 	mov	dptr,#_getFonaGPS_i_1_1
   1701 E0                 4620 	movx	a,@dptr
   1702 F5 2C              4621 	mov	_getFonaGPS_sloc0_1_0,a
   1704 24 F4              4622 	add	a,#_getFonaGPS_c_1_1
   1706 F5 82              4623 	mov	dpl,a
   1708 E4                 4624 	clr	a
   1709 34 F2              4625 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   170B F5 83              4626 	mov	dph,a
   170D E0                 4627 	movx	a,@dptr
   170E F5 2D              4628 	mov	_getFonaGPS_sloc1_1_0,a
   1710 74 2C              4629 	mov	a,#0x2C
   1712 B5 2D 56           4630 	cjne	a,_getFonaGPS_sloc1_1_0,00109$
                    10ED   4631 	C$mdrip.c$535$2$1 ==.
                           4632 ;	apps/mdrip/mdrip.c:535: status[j]=0;								//	We have all of the status so terminate the string
   1715 C0 03              4633 	push	ar3
   1717 C0 05              4634 	push	ar5
   1719 90 F2 C4           4635 	mov	dptr,#_getFonaGPS_j_1_1
   171C E0                 4636 	movx	a,@dptr
   171D 24 C6              4637 	add	a,#_getFonaGPS_status_1_1
   171F F5 82              4638 	mov	dpl,a
   1721 E4                 4639 	clr	a
   1722 34 F2              4640 	addc	a,#(_getFonaGPS_status_1_1 >> 8)
   1724 F5 83              4641 	mov	dph,a
   1726 E4                 4642 	clr	a
   1727 F0                 4643 	movx	@dptr,a
                    1100   4644 	C$mdrip.c$536$4$6 ==.
                           4645 ;	apps/mdrip/mdrip.c:536: if (strlen(status) == 1) {					//	If staus is 0 then move to next stage
   1728 90 F2 C6           4646 	mov	dptr,#_getFonaGPS_status_1_1
   172B 75 F0 00           4647 	mov	b,#0x00
   172E C0 04              4648 	push	ar4
   1730 C0 02              4649 	push	ar2
   1732 12 50 F2           4650 	lcall	_strlen
   1735 AB 82              4651 	mov	r3,dpl
   1737 AD 83              4652 	mov	r5,dph
   1739 D0 02              4653 	pop	ar2
   173B D0 04              4654 	pop	ar4
   173D BB 01 05           4655 	cjne	r3,#0x01,00179$
   1740 BD 00 02           4656 	cjne	r5,#0x00,00179$
   1743 80 06              4657 	sjmp	00180$
   1745                    4658 00179$:
   1745 D0 05              4659 	pop	ar5
   1747 D0 03              4660 	pop	ar3
   1749 80 18              4661 	sjmp	00106$
   174B                    4662 00180$:
   174B D0 05              4663 	pop	ar5
   174D D0 03              4664 	pop	ar3
                    1127   4665 	C$mdrip.c$537$5$7 ==.
                           4666 ;	apps/mdrip/mdrip.c:537: i++;									//	Skip past this comma before starting Stage 3
   174F 90 F2 C3           4667 	mov	dptr,#_getFonaGPS_i_1_1
   1752 E5 2C              4668 	mov	a,_getFonaGPS_sloc0_1_0
   1754 04                 4669 	inc	a
   1755 F0                 4670 	movx	@dptr,a
                    112E   4671 	C$mdrip.c$538$5$7 ==.
                           4672 ;	apps/mdrip/mdrip.c:538: stage++;								//	Finish this stage of string processing and get ready for the next one
   1756 90 F2 C5           4673 	mov	dptr,#_getFonaGPS_stage_1_1
   1759 EA                 4674 	mov	a,r2
   175A 04                 4675 	inc	a
   175B F0                 4676 	movx	@dptr,a
                    1134   4677 	C$mdrip.c$539$5$7 ==.
                           4678 ;	apps/mdrip/mdrip.c:539: j=0;
   175C 90 F2 C4           4679 	mov	dptr,#_getFonaGPS_j_1_1
   175F E4                 4680 	clr	a
   1760 F0                 4681 	movx	@dptr,a
   1761 80 1F              4682 	sjmp	00112$
   1763                    4683 00106$:
                    113B   4684 	C$mdrip.c$541$5$8 ==.
                           4685 ;	apps/mdrip/mdrip.c:541: stage=9;								//	Flag that we are complete as we got an error
   1763 90 F2 C5           4686 	mov	dptr,#_getFonaGPS_stage_1_1
   1766 74 09              4687 	mov	a,#0x09
   1768 F0                 4688 	movx	@dptr,a
   1769 80 17              4689 	sjmp	00112$
   176B                    4690 00109$:
                    1143   4691 	C$mdrip.c$544$4$9 ==.
                           4692 ;	apps/mdrip/mdrip.c:544: status[j]=c[i];								//	Copy into the status variable, one character at a time
   176B 90 F2 C4           4693 	mov	dptr,#_getFonaGPS_j_1_1
   176E E0                 4694 	movx	a,@dptr
   176F FA                 4695 	mov	r2,a
   1770 24 C6              4696 	add	a,#_getFonaGPS_status_1_1
   1772 F5 82              4697 	mov	dpl,a
   1774 E4                 4698 	clr	a
   1775 34 F2              4699 	addc	a,#(_getFonaGPS_status_1_1 >> 8)
   1777 F5 83              4700 	mov	dph,a
   1779 E5 2D              4701 	mov	a,_getFonaGPS_sloc1_1_0
   177B F0                 4702 	movx	@dptr,a
                    1154   4703 	C$mdrip.c$545$4$9 ==.
                           4704 ;	apps/mdrip/mdrip.c:545: j++;
   177C 90 F2 C4           4705 	mov	dptr,#_getFonaGPS_j_1_1
   177F EA                 4706 	mov	a,r2
   1780 04                 4707 	inc	a
   1781 F0                 4708 	movx	@dptr,a
   1782                    4709 00112$:
                    115A   4710 	C$mdrip.c$554$2$2 ==.
                           4711 ;	apps/mdrip/mdrip.c:554: if (stage == 3) {									//	Stage 3 - Get the GPS coordinates and place them in the pointered string
   1782 90 F2 C5           4712 	mov	dptr,#_getFonaGPS_stage_1_1
   1785 E0                 4713 	movx	a,@dptr
   1786 FA                 4714 	mov	r2,a
   1787 BA 03 02           4715 	cjne	r2,#0x03,00181$
   178A 80 03              4716 	sjmp	00182$
   178C                    4717 00181$:
   178C 02 18 11           4718 	ljmp	00118$
   178F                    4719 00182$:
                    1167   4720 	C$mdrip.c$555$2$1 ==.
                           4721 ;	apps/mdrip/mdrip.c:555: if (c[i]==',' && j> 11) {						//	Check if we found the second comma in the longitude/latitude
   178F C0 03              4722 	push	ar3
   1791 C0 05              4723 	push	ar5
   1793 90 F2 C3           4724 	mov	dptr,#_getFonaGPS_i_1_1
   1796 E0                 4725 	movx	a,@dptr
   1797 F5 2D              4726 	mov	_getFonaGPS_sloc1_1_0,a
   1799 24 F4              4727 	add	a,#_getFonaGPS_c_1_1
   179B F5 82              4728 	mov	dpl,a
   179D E4                 4729 	clr	a
   179E 34 F2              4730 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   17A0 F5 83              4731 	mov	dph,a
   17A2 E0                 4732 	movx	a,@dptr
   17A3 FD                 4733 	mov	r5,a
   17A4 BD 2C 02           4734 	cjne	r5,#0x2C,00183$
   17A7 80 06              4735 	sjmp	00184$
   17A9                    4736 00183$:
   17A9 D0 05              4737 	pop	ar5
   17AB D0 03              4738 	pop	ar3
   17AD 80 31              4739 	sjmp	00114$
   17AF                    4740 00184$:
   17AF D0 05              4741 	pop	ar5
   17B1 D0 03              4742 	pop	ar3
   17B3 90 F2 C4           4743 	mov	dptr,#_getFonaGPS_j_1_1
   17B6 E0                 4744 	movx	a,@dptr
   17B7 F5 2C              4745 	mov  _getFonaGPS_sloc0_1_0,a
   17B9 24 F4              4746 	add	a,#0xff - 0x0B
   17BB 50 23              4747 	jnc	00114$
                    1195   4748 	C$mdrip.c$557$4$11 ==.
                           4749 ;	apps/mdrip/mdrip.c:557: CIPGSMLOC->LatLong[j]='\0';
   17BD 78 45              4750 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   17BF E2                 4751 	movx	a,@r0
   17C0 25 2C              4752 	add	a,_getFonaGPS_sloc0_1_0
   17C2 F5 82              4753 	mov	dpl,a
   17C4 08                 4754 	inc	r0
   17C5 E2                 4755 	movx	a,@r0
   17C6 34 00              4756 	addc	a,#0x00
   17C8 F5 83              4757 	mov	dph,a
   17CA E4                 4758 	clr	a
   17CB F0                 4759 	movx	@dptr,a
                    11A4   4760 	C$mdrip.c$558$4$11 ==.
                           4761 ;	apps/mdrip/mdrip.c:558: i++;										//	Skip past this comma before starting stage 4
   17CC 90 F2 C3           4762 	mov	dptr,#_getFonaGPS_i_1_1
   17CF E5 2D              4763 	mov	a,_getFonaGPS_sloc1_1_0
   17D1 04                 4764 	inc	a
   17D2 F0                 4765 	movx	@dptr,a
                    11AB   4766 	C$mdrip.c$559$4$11 ==.
                           4767 ;	apps/mdrip/mdrip.c:559: stage++;									//	Finish this stage of string processing and get ready for the next one
   17D3 90 F2 C5           4768 	mov	dptr,#_getFonaGPS_stage_1_1
   17D6 EA                 4769 	mov	a,r2
   17D7 04                 4770 	inc	a
   17D8 F0                 4771 	movx	@dptr,a
                    11B1   4772 	C$mdrip.c$560$4$11 ==.
                           4773 ;	apps/mdrip/mdrip.c:560: j=0;
   17D9 90 F2 C4           4774 	mov	dptr,#_getFonaGPS_j_1_1
   17DC E4                 4775 	clr	a
   17DD F0                 4776 	movx	@dptr,a
   17DE 80 31              4777 	sjmp	00118$
   17E0                    4778 00114$:
                    11B8   4779 	C$mdrip.c$563$2$1 ==.
                           4780 ;	apps/mdrip/mdrip.c:563: CIPGSMLOC->LatLong[j]=c[i];
   17E0 C0 03              4781 	push	ar3
   17E2 C0 05              4782 	push	ar5
   17E4 90 F2 C4           4783 	mov	dptr,#_getFonaGPS_j_1_1
   17E7 E0                 4784 	movx	a,@dptr
   17E8 FA                 4785 	mov	r2,a
   17E9 78 45              4786 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   17EB E2                 4787 	movx	a,@r0
   17EC 2A                 4788 	add	a,r2
   17ED FB                 4789 	mov	r3,a
   17EE 08                 4790 	inc	r0
   17EF E2                 4791 	movx	a,@r0
   17F0 34 00              4792 	addc	a,#0x00
   17F2 FD                 4793 	mov	r5,a
   17F3 90 F2 C3           4794 	mov	dptr,#_getFonaGPS_i_1_1
   17F6 E0                 4795 	movx	a,@dptr
   17F7 24 F4              4796 	add	a,#_getFonaGPS_c_1_1
   17F9 F5 82              4797 	mov	dpl,a
   17FB E4                 4798 	clr	a
   17FC 34 F2              4799 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   17FE F5 83              4800 	mov	dph,a
   1800 E0                 4801 	movx	a,@dptr
   1801 FF                 4802 	mov	r7,a
   1802 8B 82              4803 	mov	dpl,r3
   1804 8D 83              4804 	mov	dph,r5
   1806 F0                 4805 	movx	@dptr,a
                    11DF   4806 	C$mdrip.c$566$4$12 ==.
                           4807 ;	apps/mdrip/mdrip.c:566: j++;
   1807 90 F2 C4           4808 	mov	dptr,#_getFonaGPS_j_1_1
   180A EA                 4809 	mov	a,r2
   180B 04                 4810 	inc	a
   180C F0                 4811 	movx	@dptr,a
                    11E5   4812 	C$mdrip.c$610$2$1 ==.
                           4813 ;	apps/mdrip/mdrip.c:610: CIPGSMLOC->returncode=clen;
   180D D0 05              4814 	pop	ar5
   180F D0 03              4815 	pop	ar3
                    11E9   4816 	C$mdrip.c$566$2$2 ==.
                           4817 ;	apps/mdrip/mdrip.c:566: j++;
   1811                    4818 00118$:
                    11E9   4819 	C$mdrip.c$570$2$2 ==.
                           4820 ;	apps/mdrip/mdrip.c:570: if (stage == 4) {									//	Stage 4 - Use the Date & Time to populate the first 14 bytes of the IV
   1811 90 F2 C5           4821 	mov	dptr,#_getFonaGPS_stage_1_1
   1814 E0                 4822 	movx	a,@dptr
   1815 FF                 4823 	mov	r7,a
   1816 BF 04 02           4824 	cjne	r7,#0x04,00186$
   1819 80 03              4825 	sjmp	00187$
   181B                    4826 00186$:
   181B 02 18 96           4827 	ljmp	00126$
   181E                    4828 00187$:
                    11F6   4829 	C$mdrip.c$571$3$13 ==.
                           4830 ;	apps/mdrip/mdrip.c:571: if(c[i]<'0') {
   181E 90 F2 C3           4831 	mov	dptr,#_getFonaGPS_i_1_1
   1821 E0                 4832 	movx	a,@dptr
   1822 FF                 4833 	mov	r7,a
   1823 24 F4              4834 	add	a,#_getFonaGPS_c_1_1
   1825 F5 82              4835 	mov	dpl,a
   1827 E4                 4836 	clr	a
   1828 34 F2              4837 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   182A F5 83              4838 	mov	dph,a
   182C E0                 4839 	movx	a,@dptr
   182D FE                 4840 	mov	r6,a
   182E C3                 4841 	clr	c
   182F 64 80              4842 	xrl	a,#0x80
   1831 94 B0              4843 	subb	a,#0xb0
   1833 50 06              4844 	jnc	00120$
                    120D   4845 	C$mdrip.c$572$4$14 ==.
                           4846 ;	apps/mdrip/mdrip.c:572: i++;									// NEW	//	Skip the special character and assume next one is a number
   1835 90 F2 C3           4847 	mov	dptr,#_getFonaGPS_i_1_1
   1838 EF                 4848 	mov	a,r7
   1839 04                 4849 	inc	a
   183A F0                 4850 	movx	@dptr,a
   183B                    4851 00120$:
                    1213   4852 	C$mdrip.c$574$3$13 ==.
                           4853 ;	apps/mdrip/mdrip.c:574: if(c[i]>'9') {
   183B 90 F2 C3           4854 	mov	dptr,#_getFonaGPS_i_1_1
   183E E0                 4855 	movx	a,@dptr
   183F FF                 4856 	mov	r7,a
   1840 24 F4              4857 	add	a,#_getFonaGPS_c_1_1
   1842 F5 82              4858 	mov	dpl,a
   1844 E4                 4859 	clr	a
   1845 34 F2              4860 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   1847 F5 83              4861 	mov	dph,a
   1849 E0                 4862 	movx	a,@dptr
   184A FE                 4863 	mov	r6,a
   184B C3                 4864 	clr	c
   184C 74 B9              4865 	mov	a,#(0x39 ^ 0x80)
   184E 8E F0              4866 	mov	b,r6
   1850 63 F0 80           4867 	xrl	b,#0x80
   1853 95 F0              4868 	subb	a,b
   1855 50 06              4869 	jnc	00122$
                    122F   4870 	C$mdrip.c$575$4$15 ==.
                           4871 ;	apps/mdrip/mdrip.c:575: i++;									// NEW	//	Skip the special character and assume next one is a number
   1857 90 F2 C3           4872 	mov	dptr,#_getFonaGPS_i_1_1
   185A EF                 4873 	mov	a,r7
   185B 04                 4874 	inc	a
   185C F0                 4875 	movx	@dptr,a
   185D                    4876 00122$:
                    1235   4877 	C$mdrip.c$577$2$1 ==.
                           4878 ;	apps/mdrip/mdrip.c:577: CIPGSMLOC->iv[j]=c[i];
   185D C0 04              4879 	push	ar4
   185F 90 F2 C4           4880 	mov	dptr,#_getFonaGPS_j_1_1
   1862 E0                 4881 	movx	a,@dptr
   1863 FF                 4882 	mov	r7,a
   1864 2B                 4883 	add	a,r3
   1865 FA                 4884 	mov	r2,a
   1866 E4                 4885 	clr	a
   1867 3D                 4886 	addc	a,r5
   1868 FE                 4887 	mov	r6,a
   1869 90 F2 C3           4888 	mov	dptr,#_getFonaGPS_i_1_1
   186C E0                 4889 	movx	a,@dptr
   186D 24 F4              4890 	add	a,#_getFonaGPS_c_1_1
   186F F5 82              4891 	mov	dpl,a
   1871 E4                 4892 	clr	a
   1872 34 F2              4893 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   1874 F5 83              4894 	mov	dph,a
   1876 E0                 4895 	movx	a,@dptr
   1877 8A 82              4896 	mov	dpl,r2
   1879 8E 83              4897 	mov	dph,r6
   187B F0                 4898 	movx	@dptr,a
                    1254   4899 	C$mdrip.c$580$3$13 ==.
                           4900 ;	apps/mdrip/mdrip.c:580: j++;
   187C 90 F2 C4           4901 	mov	dptr,#_getFonaGPS_j_1_1
   187F EF                 4902 	mov	a,r7
   1880 04                 4903 	inc	a
   1881 F0                 4904 	movx	@dptr,a
                    125A   4905 	C$mdrip.c$581$3$13 ==.
                           4906 ;	apps/mdrip/mdrip.c:581: if(j>13) {
   1882 90 F2 C4           4907 	mov	dptr,#_getFonaGPS_j_1_1
   1885 E0                 4908 	movx	a,@dptr
   1886 FF                 4909 	mov	r7,a
   1887 C3                 4910 	clr	c
   1888 74 0D              4911 	mov	a,#0x0D
   188A 9F                 4912 	subb	a,r7
   188B D0 04              4913 	pop	ar4
   188D 50 07              4914 	jnc	00126$
                    1267   4915 	C$mdrip.c$582$4$16 ==.
                           4916 ;	apps/mdrip/mdrip.c:582: stage++;
   188F 90 F2 C5           4917 	mov	dptr,#_getFonaGPS_stage_1_1
   1892 E0                 4918 	movx	a,@dptr
   1893 24 01              4919 	add	a,#0x01
   1895 F0                 4920 	movx	@dptr,a
   1896                    4921 00126$:
                    126E   4922 	C$mdrip.c$587$2$2 ==.
                           4923 ;	apps/mdrip/mdrip.c:587: if (stage == 9) {									//	Stage 9 - If we are here then Heuston, we have a problem.
   1896 90 F2 C5           4924 	mov	dptr,#_getFonaGPS_stage_1_1
   1899 E0                 4925 	movx	a,@dptr
   189A FF                 4926 	mov	r7,a
   189B BF 09 47           4927 	cjne	r7,#0x09,00128$
                    1276   4928 	C$mdrip.c$588$3$17 ==.
                           4929 ;	apps/mdrip/mdrip.c:588: for(i=0; i>j; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
   189E 90 F2 C4           4930 	mov	dptr,#_getFonaGPS_j_1_1
   18A1 E0                 4931 	movx	a,@dptr
   18A2 F5 2D              4932 	mov	_getFonaGPS_sloc1_1_0,a
   18A4 7A 00              4933 	mov	r2,#0x00
   18A6                    4934 00133$:
   18A6 C3                 4935 	clr	c
   18A7 E5 2D              4936 	mov	a,_getFonaGPS_sloc1_1_0
   18A9 9A                 4937 	subb	a,r2
   18AA 50 26              4938 	jnc	00168$
                    1284   4939 	C$mdrip.c$590$2$1 ==.
                           4940 ;	apps/mdrip/mdrip.c:590: CIPGSMLOC->LatLong[i]=status[i];
   18AC C0 03              4941 	push	ar3
   18AE C0 05              4942 	push	ar5
   18B0 78 45              4943 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   18B2 E2                 4944 	movx	a,@r0
   18B3 2A                 4945 	add	a,r2
   18B4 FB                 4946 	mov	r3,a
   18B5 08                 4947 	inc	r0
   18B6 E2                 4948 	movx	a,@r0
   18B7 34 00              4949 	addc	a,#0x00
   18B9 FD                 4950 	mov	r5,a
   18BA EA                 4951 	mov	a,r2
   18BB 24 C6              4952 	add	a,#_getFonaGPS_status_1_1
   18BD F5 82              4953 	mov	dpl,a
   18BF E4                 4954 	clr	a
   18C0 34 F2              4955 	addc	a,#(_getFonaGPS_status_1_1 >> 8)
   18C2 F5 83              4956 	mov	dph,a
   18C4 E0                 4957 	movx	a,@dptr
   18C5 FE                 4958 	mov	r6,a
   18C6 8B 82              4959 	mov	dpl,r3
   18C8 8D 83              4960 	mov	dph,r5
   18CA F0                 4961 	movx	@dptr,a
                    12A3   4962 	C$mdrip.c$588$3$17 ==.
                           4963 ;	apps/mdrip/mdrip.c:588: for(i=0; i>j; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
   18CB 0A                 4964 	inc	r2
   18CC D0 05              4965 	pop	ar5
   18CE D0 03              4966 	pop	ar3
   18D0 80 D4              4967 	sjmp	00133$
   18D2                    4968 00168$:
   18D2 90 F2 C3           4969 	mov	dptr,#_getFonaGPS_i_1_1
   18D5 EA                 4970 	mov	a,r2
   18D6 F0                 4971 	movx	@dptr,a
                    12AF   4972 	C$mdrip.c$592$3$17 ==.
                           4973 ;	apps/mdrip/mdrip.c:592: CIPGSMLOC->LatLong[i]='\0';						//	Terminate the copy of the status string
   18D7 78 45              4974 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   18D9 E2                 4975 	movx	a,@r0
   18DA 2A                 4976 	add	a,r2
   18DB F5 82              4977 	mov	dpl,a
   18DD 08                 4978 	inc	r0
   18DE E2                 4979 	movx	a,@r0
   18DF 34 00              4980 	addc	a,#0x00
   18E1 F5 83              4981 	mov	dph,a
   18E3 E4                 4982 	clr	a
   18E4 F0                 4983 	movx	@dptr,a
   18E5                    4984 00128$:
                    12BD   4985 	C$mdrip.c$594$2$2 ==.
                           4986 ;	apps/mdrip/mdrip.c:594: if (stage>4) {										//	Terminate the loop if we are finished all the processing (or have an error)
   18E5 EF                 4987 	mov	a,r7
   18E6 24 FB              4988 	add	a,#0xff - 0x04
   18E8 50 05              4989 	jnc	00139$
                    12C2   4990 	C$mdrip.c$595$3$19 ==.
                           4991 ;	apps/mdrip/mdrip.c:595: i=clen;
   18EA 90 F2 C3           4992 	mov	dptr,#_getFonaGPS_i_1_1
   18ED EC                 4993 	mov	a,r4
   18EE F0                 4994 	movx	@dptr,a
   18EF                    4995 00139$:
                    12C7   4996 	C$mdrip.c$524$1$1 ==.
                           4997 ;	apps/mdrip/mdrip.c:524: for(i=0; i<clen; i++) {									//	Loop through every character of the response from the Fona to the AT command
   18EF 90 F2 C3           4998 	mov	dptr,#_getFonaGPS_i_1_1
   18F2 E0                 4999 	movx	a,@dptr
   18F3 24 01              5000 	add	a,#0x01
   18F5 F0                 5001 	movx	@dptr,a
   18F6 02 16 A8           5002 	ljmp	00137$
   18F9                    5003 00140$:
                    12D1   5004 	C$mdrip.c$600$1$1 ==.
                           5005 ;	apps/mdrip/mdrip.c:600: if (stage == 1) {										// If we did not get values then we want to indicate this with a unique error code
   18F9 90 F2 C5           5006 	mov	dptr,#_getFonaGPS_stage_1_1
   18FC E0                 5007 	movx	a,@dptr
   18FD FF                 5008 	mov	r7,a
   18FE BF 01 02           5009 	cjne	r7,#0x01,00195$
   1901 80 03              5010 	sjmp	00196$
   1903                    5011 00195$:
   1903 02 19 AE           5012 	ljmp	00145$
   1906                    5013 00196$:
                    12DE   5014 	C$mdrip.c$602$2$20 ==.
                           5015 ;	apps/mdrip/mdrip.c:602: strcpy(CIPGSMLOC->LatLong,"999");
   1906 78 45              5016 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   1908 E2                 5017 	movx	a,@r0
   1909 FE                 5018 	mov	r6,a
   190A 08                 5019 	inc	r0
   190B E2                 5020 	movx	a,@r0
   190C FF                 5021 	mov	r7,a
   190D 7D 00              5022 	mov	r5,#0x00
   190F 78 5E              5023 	mov	r0,#_strcpy_PARM_2
   1911 74 1B              5024 	mov	a,#__str_27
   1913 F2                 5025 	movx	@r0,a
   1914 08                 5026 	inc	r0
   1915 74 57              5027 	mov	a,#(__str_27 >> 8)
   1917 F2                 5028 	movx	@r0,a
   1918 08                 5029 	inc	r0
   1919 74 80              5030 	mov	a,#0x80
   191B F2                 5031 	movx	@r0,a
   191C 8E 82              5032 	mov	dpl,r6
   191E 8F 83              5033 	mov	dph,r7
   1920 8D F0              5034 	mov	b,r5
   1922 C0 04              5035 	push	ar4
   1924 12 2B A9           5036 	lcall	_strcpy
   1927 D0 04              5037 	pop	ar4
                    1301   5038 	C$mdrip.c$603$2$1 ==.
                           5039 ;	apps/mdrip/mdrip.c:603: for(i=0; i==23; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
   1929 7F 00              5040 	mov	r7,#0x00
   192B                    5041 00141$:
   192B BF 17 1E           5042 	cjne	r7,#0x17,00144$
                    1306   5043 	C$mdrip.c$604$3$21 ==.
                           5044 ;	apps/mdrip/mdrip.c:604: CIPGSMLOC->LatLong[i]=c[i];
   192E 78 45              5045 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   1930 E2                 5046 	movx	a,@r0
   1931 2F                 5047 	add	a,r7
   1932 FD                 5048 	mov	r5,a
   1933 08                 5049 	inc	r0
   1934 E2                 5050 	movx	a,@r0
   1935 34 00              5051 	addc	a,#0x00
   1937 FE                 5052 	mov	r6,a
   1938 EF                 5053 	mov	a,r7
   1939 24 F4              5054 	add	a,#_getFonaGPS_c_1_1
   193B F5 82              5055 	mov	dpl,a
   193D E4                 5056 	clr	a
   193E 34 F2              5057 	addc	a,#(_getFonaGPS_c_1_1 >> 8)
   1940 F5 83              5058 	mov	dph,a
   1942 E0                 5059 	movx	a,@dptr
   1943 FB                 5060 	mov	r3,a
   1944 8D 82              5061 	mov	dpl,r5
   1946 8E 83              5062 	mov	dph,r6
   1948 F0                 5063 	movx	@dptr,a
                    1321   5064 	C$mdrip.c$603$2$20 ==.
                           5065 ;	apps/mdrip/mdrip.c:603: for(i=0; i==23; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
   1949 0F                 5066 	inc	r7
   194A 80 DF              5067 	sjmp	00141$
   194C                    5068 00144$:
                    1324   5069 	C$mdrip.c$606$2$20 ==.
                           5070 ;	apps/mdrip/mdrip.c:606: CIPGSMLOC->LatLong[24]='\0';
   194C 78 45              5071 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   194E E2                 5072 	movx	a,@r0
   194F 24 18              5073 	add	a,#0x18
   1951 F5 82              5074 	mov	dpl,a
   1953 08                 5075 	inc	r0
   1954 E2                 5076 	movx	a,@r0
   1955 34 00              5077 	addc	a,#0x00
   1957 F5 83              5078 	mov	dph,a
   1959 E4                 5079 	clr	a
   195A F0                 5080 	movx	@dptr,a
                    1333   5081 	C$mdrip.c$607$2$20 ==.
                           5082 ;	apps/mdrip/mdrip.c:607: strcpy(CIPGSMLOC->LatLong,"999");
   195B 78 45              5083 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   195D E2                 5084 	movx	a,@r0
   195E FE                 5085 	mov	r6,a
   195F 08                 5086 	inc	r0
   1960 E2                 5087 	movx	a,@r0
   1961 FF                 5088 	mov	r7,a
   1962 7D 00              5089 	mov	r5,#0x00
   1964 78 5E              5090 	mov	r0,#_strcpy_PARM_2
   1966 74 1B              5091 	mov	a,#__str_27
   1968 F2                 5092 	movx	@r0,a
   1969 08                 5093 	inc	r0
   196A 74 57              5094 	mov	a,#(__str_27 >> 8)
   196C F2                 5095 	movx	@r0,a
   196D 08                 5096 	inc	r0
   196E 74 80              5097 	mov	a,#0x80
   1970 F2                 5098 	movx	@r0,a
   1971 8E 82              5099 	mov	dpl,r6
   1973 8F 83              5100 	mov	dph,r7
   1975 8D F0              5101 	mov	b,r5
   1977 C0 04              5102 	push	ar4
   1979 12 2B A9           5103 	lcall	_strcpy
   197C D0 04              5104 	pop	ar4
                    1356   5105 	C$mdrip.c$608$2$20 ==.
                           5106 ;	apps/mdrip/mdrip.c:608: CIPGSMLOC->iv[0]=clen;
   197E 78 45              5107 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   1980 E2                 5108 	movx	a,@r0
   1981 24 19              5109 	add	a,#0x19
   1983 F5 82              5110 	mov	dpl,a
   1985 08                 5111 	inc	r0
   1986 E2                 5112 	movx	a,@r0
   1987 34 00              5113 	addc	a,#0x00
   1989 F5 83              5114 	mov	dph,a
   198B EC                 5115 	mov	a,r4
   198C F0                 5116 	movx	@dptr,a
                    1365   5117 	C$mdrip.c$609$2$20 ==.
                           5118 ;	apps/mdrip/mdrip.c:609: CIPGSMLOC->iv[1]=clen;
   198D 78 45              5119 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   198F E2                 5120 	movx	a,@r0
   1990 24 19              5121 	add	a,#0x19
   1992 FE                 5122 	mov	r6,a
   1993 08                 5123 	inc	r0
   1994 E2                 5124 	movx	a,@r0
   1995 34 00              5125 	addc	a,#0x00
   1997 FF                 5126 	mov	r7,a
   1998 8E 82              5127 	mov	dpl,r6
   199A 8F 83              5128 	mov	dph,r7
   199C A3                 5129 	inc	dptr
   199D EC                 5130 	mov	a,r4
   199E F0                 5131 	movx	@dptr,a
                    1377   5132 	C$mdrip.c$610$2$20 ==.
                           5133 ;	apps/mdrip/mdrip.c:610: CIPGSMLOC->returncode=clen;
   199F 78 45              5134 	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
   19A1 E2                 5135 	movx	a,@r0
   19A2 24 29              5136 	add	a,#0x29
   19A4 F5 82              5137 	mov	dpl,a
   19A6 08                 5138 	inc	r0
   19A7 E2                 5139 	movx	a,@r0
   19A8 34 00              5140 	addc	a,#0x00
   19AA F5 83              5141 	mov	dph,a
   19AC EC                 5142 	mov	a,r4
   19AD F0                 5143 	movx	@dptr,a
   19AE                    5144 00145$:
                    1386   5145 	C$mdrip.c$613$2$1 ==.
                    1386   5146 	XG$getFonaGPS$0$0 ==.
   19AE 22                 5147 	ret
                           5148 ;------------------------------------------------------------
                           5149 ;Allocation info for local variables in function 'print_packet'
                           5150 ;------------------------------------------------------------
                           5151 ;sloc0                     Allocated with name '_print_packet_sloc0_1_0'
                           5152 ;sloc1                     Allocated with name '_print_packet_sloc1_1_0'
                           5153 ;sloc2                     Allocated with name '_print_packet_sloc2_1_0'
                           5154 ;sloc3                     Allocated with name '_print_packet_sloc3_1_0'
                           5155 ;fonaBat                   Allocated with name '_print_packet_fonaBat_1_1'
                           5156 ;fonaLatLong               Allocated with name '_print_packet_fonaLatLong_1_1'
                           5157 ;transID                   Allocated with name '_print_packet_transID_1_1'
                           5158 ;CIPResponse               Allocated with name '_print_packet_CIPResponse_1_1'
                           5159 ;iv                        Allocated with name '_print_packet_iv_1_1'
                           5160 ;i                         Allocated with name '_print_packet_i_1_1'
                           5161 ;sprintfBuffer             Allocated with name '_print_packet_sprintfBuffer_1_1'
                           5162 ;AESBuffer                 Allocated with name '_print_packet_AESBuffer_1_1'
                           5163 ;prtlen                    Allocated with name '_print_packet_prtlen_1_1'
                           5164 ;------------------------------------------------------------
                    1387   5165 	G$print_packet$0$0 ==.
                    1387   5166 	C$mdrip.c$616$2$1 ==.
                           5167 ;	apps/mdrip/mdrip.c:616: void print_packet(Dexcom_packet* pPkt) {
                           5168 ;	-----------------------------------------
                           5169 ;	 function print_packet
                           5170 ;	-----------------------------------------
   19AF                    5171 _print_packet:
   19AF AF 83              5172 	mov	r7,dph
   19B1 E5 82              5173 	mov	a,dpl
   19B3 78 47              5174 	mov	r0,#_print_packet_pPkt_1_1
   19B5 F2                 5175 	movx	@r0,a
   19B6 08                 5176 	inc	r0
   19B7 EF                 5177 	mov	a,r7
   19B8 F2                 5178 	movx	@r0,a
                    1391   5179 	C$mdrip.c$618$1$1 ==.
                           5180 ;	apps/mdrip/mdrip.c:618: XDATA char fonaLatLong[25] = {0};
   19B9 90 F3 44           5181 	mov	dptr,#_print_packet_fonaLatLong_1_1
   19BC E4                 5182 	clr	a
   19BD F0                 5183 	movx	@dptr,a
   19BE 90 F3 45           5184 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0001)
   19C1 F0                 5185 	movx	@dptr,a
   19C2 90 F3 46           5186 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0002)
   19C5 F0                 5187 	movx	@dptr,a
   19C6 90 F3 47           5188 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0003)
   19C9 F0                 5189 	movx	@dptr,a
   19CA 90 F3 48           5190 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0004)
   19CD E4                 5191 	clr	a
   19CE F0                 5192 	movx	@dptr,a
   19CF 90 F3 49           5193 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0005)
   19D2 F0                 5194 	movx	@dptr,a
   19D3 90 F3 4A           5195 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0006)
   19D6 F0                 5196 	movx	@dptr,a
   19D7 90 F3 4B           5197 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0007)
   19DA F0                 5198 	movx	@dptr,a
   19DB 90 F3 4C           5199 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0008)
   19DE E4                 5200 	clr	a
   19DF F0                 5201 	movx	@dptr,a
   19E0 90 F3 4D           5202 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0009)
   19E3 F0                 5203 	movx	@dptr,a
   19E4 90 F3 4E           5204 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000a)
   19E7 F0                 5205 	movx	@dptr,a
   19E8 90 F3 4F           5206 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000b)
   19EB F0                 5207 	movx	@dptr,a
   19EC 90 F3 50           5208 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000c)
   19EF E4                 5209 	clr	a
   19F0 F0                 5210 	movx	@dptr,a
   19F1 90 F3 51           5211 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000d)
   19F4 F0                 5212 	movx	@dptr,a
   19F5 90 F3 52           5213 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000e)
   19F8 F0                 5214 	movx	@dptr,a
   19F9 90 F3 53           5215 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000f)
   19FC F0                 5216 	movx	@dptr,a
   19FD 90 F3 54           5217 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0010)
   1A00 E4                 5218 	clr	a
   1A01 F0                 5219 	movx	@dptr,a
   1A02 90 F3 55           5220 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0011)
   1A05 F0                 5221 	movx	@dptr,a
   1A06 90 F3 56           5222 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0012)
   1A09 F0                 5223 	movx	@dptr,a
   1A0A 90 F3 57           5224 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0013)
   1A0D F0                 5225 	movx	@dptr,a
   1A0E 90 F3 58           5226 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0014)
   1A11 E4                 5227 	clr	a
   1A12 F0                 5228 	movx	@dptr,a
   1A13 90 F3 59           5229 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0015)
   1A16 F0                 5230 	movx	@dptr,a
   1A17 90 F3 5A           5231 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0016)
   1A1A F0                 5232 	movx	@dptr,a
   1A1B 90 F3 5B           5233 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0017)
   1A1E F0                 5234 	movx	@dptr,a
   1A1F 90 F3 5C           5235 	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0018)
   1A22 E4                 5236 	clr	a
   1A23 F0                 5237 	movx	@dptr,a
                    13FC   5238 	C$mdrip.c$619$1$1 ==.
                           5239 ;	apps/mdrip/mdrip.c:619: XDATA char transID[] = "BLANK"; 
   1A24 90 F3 5D           5240 	mov	dptr,#_print_packet_transID_1_1
   1A27 74 42              5241 	mov	a,#0x42
   1A29 F0                 5242 	movx	@dptr,a
   1A2A 90 F3 5E           5243 	mov	dptr,#(_print_packet_transID_1_1 + 0x0001)
   1A2D 74 4C              5244 	mov	a,#0x4C
   1A2F F0                 5245 	movx	@dptr,a
   1A30 90 F3 5F           5246 	mov	dptr,#(_print_packet_transID_1_1 + 0x0002)
   1A33 74 41              5247 	mov	a,#0x41
   1A35 F0                 5248 	movx	@dptr,a
   1A36 90 F3 60           5249 	mov	dptr,#(_print_packet_transID_1_1 + 0x0003)
   1A39 74 4E              5250 	mov	a,#0x4E
   1A3B F0                 5251 	movx	@dptr,a
   1A3C 90 F3 61           5252 	mov	dptr,#(_print_packet_transID_1_1 + 0x0004)
   1A3F 74 4B              5253 	mov	a,#0x4B
   1A41 F0                 5254 	movx	@dptr,a
   1A42 90 F3 62           5255 	mov	dptr,#(_print_packet_transID_1_1 + 0x0005)
                    141D   5256 	C$mdrip.c$626$1$1 ==.
                           5257 ;	apps/mdrip/mdrip.c:626: XDATA uint8_t iv[16]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
   1A45 E4                 5258 	clr	a
   1A46 F0                 5259 	movx	@dptr,a
   1A47 90 F3 8D           5260 	mov	dptr,#_print_packet_iv_1_1
   1A4A F0                 5261 	movx	@dptr,a
   1A4B 90 F3 8E           5262 	mov	dptr,#(_print_packet_iv_1_1 + 0x0001)
   1A4E 74 01              5263 	mov	a,#0x01
   1A50 F0                 5264 	movx	@dptr,a
   1A51 90 F3 8F           5265 	mov	dptr,#(_print_packet_iv_1_1 + 0x0002)
   1A54 74 02              5266 	mov	a,#0x02
   1A56 F0                 5267 	movx	@dptr,a
   1A57 90 F3 90           5268 	mov	dptr,#(_print_packet_iv_1_1 + 0x0003)
   1A5A 74 03              5269 	mov	a,#0x03
   1A5C F0                 5270 	movx	@dptr,a
   1A5D 90 F3 91           5271 	mov	dptr,#(_print_packet_iv_1_1 + 0x0004)
   1A60 74 04              5272 	mov	a,#0x04
   1A62 F0                 5273 	movx	@dptr,a
   1A63 90 F3 92           5274 	mov	dptr,#(_print_packet_iv_1_1 + 0x0005)
   1A66 74 05              5275 	mov	a,#0x05
   1A68 F0                 5276 	movx	@dptr,a
   1A69 90 F3 93           5277 	mov	dptr,#(_print_packet_iv_1_1 + 0x0006)
   1A6C 74 06              5278 	mov	a,#0x06
   1A6E F0                 5279 	movx	@dptr,a
   1A6F 90 F3 94           5280 	mov	dptr,#(_print_packet_iv_1_1 + 0x0007)
   1A72 74 07              5281 	mov	a,#0x07
   1A74 F0                 5282 	movx	@dptr,a
   1A75 90 F3 95           5283 	mov	dptr,#(_print_packet_iv_1_1 + 0x0008)
   1A78 74 08              5284 	mov	a,#0x08
   1A7A F0                 5285 	movx	@dptr,a
   1A7B 90 F3 96           5286 	mov	dptr,#(_print_packet_iv_1_1 + 0x0009)
   1A7E 74 09              5287 	mov	a,#0x09
   1A80 F0                 5288 	movx	@dptr,a
   1A81 90 F3 97           5289 	mov	dptr,#(_print_packet_iv_1_1 + 0x000a)
   1A84 74 0A              5290 	mov	a,#0x0A
   1A86 F0                 5291 	movx	@dptr,a
   1A87 90 F3 98           5292 	mov	dptr,#(_print_packet_iv_1_1 + 0x000b)
   1A8A 74 0B              5293 	mov	a,#0x0B
   1A8C F0                 5294 	movx	@dptr,a
   1A8D 90 F3 99           5295 	mov	dptr,#(_print_packet_iv_1_1 + 0x000c)
   1A90 74 0C              5296 	mov	a,#0x0C
   1A92 F0                 5297 	movx	@dptr,a
   1A93 90 F3 9A           5298 	mov	dptr,#(_print_packet_iv_1_1 + 0x000d)
   1A96 74 0D              5299 	mov	a,#0x0D
   1A98 F0                 5300 	movx	@dptr,a
   1A99 90 F3 9B           5301 	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
   1A9C 74 0E              5302 	mov	a,#0x0E
   1A9E F0                 5303 	movx	@dptr,a
   1A9F 90 F3 9C           5304 	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
   1AA2 74 0F              5305 	mov	a,#0x0F
   1AA4 F0                 5306 	movx	@dptr,a
                    147D   5307 	C$mdrip.c$637$1$1 ==.
                           5308 ;	apps/mdrip/mdrip.c:637: uartEnable();
   1AA5 12 06 55           5309 	lcall	_uartEnable
                    1480   5310 	C$mdrip.c$640$1$1 ==.
                           5311 ;	apps/mdrip/mdrip.c:640: if(enable_wixfone==1) {
   1AA8 20 03 03           5312 	jb	_enable_wixfone,00127$
   1AAB 02 1D 84           5313 	ljmp	00102$
   1AAE                    5314 00127$:
                    1486   5315 	C$mdrip.c$642$2$2 ==.
                           5316 ;	apps/mdrip/mdrip.c:642: fonaBat=getFonaMillivolts();							//	Ask the fona for the battery health - best to do gets immediately after uart enabled
   1AAE 12 10 47           5317 	lcall	_getFonaMillivolts
   1AB1 85 82 2E           5318 	mov	_print_packet_sloc0_1_0,dpl
   1AB4 85 83 2F           5319 	mov	(_print_packet_sloc0_1_0 + 1),dph
                    148F   5320 	C$mdrip.c$646$2$2 ==.
                           5321 ;	apps/mdrip/mdrip.c:646: enableFona();
   1AB7 12 0E 58           5322 	lcall	_enableFona
                    1492   5323 	C$mdrip.c$647$2$2 ==.
                           5324 ;	apps/mdrip/mdrip.c:647: getFonaGPS( &CIPResponse );
   1ABA 90 F3 63           5325 	mov	dptr,#_print_packet_CIPResponse_1_1
   1ABD 12 14 3B           5326 	lcall	_getFonaGPS
                    1498   5327 	C$mdrip.c$648$2$2 ==.
                           5328 ;	apps/mdrip/mdrip.c:648: strcpy(fonaLatLong, CIPResponse.LatLong);
   1AC0 78 5E              5329 	mov	r0,#_strcpy_PARM_2
   1AC2 74 63              5330 	mov	a,#_print_packet_CIPResponse_1_1
   1AC4 F2                 5331 	movx	@r0,a
   1AC5 08                 5332 	inc	r0
   1AC6 74 F3              5333 	mov	a,#(_print_packet_CIPResponse_1_1 >> 8)
   1AC8 F2                 5334 	movx	@r0,a
   1AC9 08                 5335 	inc	r0
   1ACA E4                 5336 	clr	a
   1ACB F2                 5337 	movx	@r0,a
   1ACC 90 F3 44           5338 	mov	dptr,#_print_packet_fonaLatLong_1_1
   1ACF 75 F0 00           5339 	mov	b,#0x00
   1AD2 12 2B A9           5340 	lcall	_strcpy
                    14AD   5341 	C$mdrip.c$649$2$2 ==.
                           5342 ;	apps/mdrip/mdrip.c:649: strcpy(iv, CIPResponse.iv);
   1AD5 78 5E              5343 	mov	r0,#_strcpy_PARM_2
   1AD7 74 7C              5344 	mov	a,#(_print_packet_CIPResponse_1_1 + 0x0019)
   1AD9 F2                 5345 	movx	@r0,a
   1ADA 08                 5346 	inc	r0
   1ADB 74 F3              5347 	mov	a,#((_print_packet_CIPResponse_1_1 + 0x0019) >> 8)
   1ADD F2                 5348 	movx	@r0,a
   1ADE 08                 5349 	inc	r0
   1ADF E4                 5350 	clr	a
   1AE0 F2                 5351 	movx	@r0,a
   1AE1 90 F3 8D           5352 	mov	dptr,#_print_packet_iv_1_1
   1AE4 75 F0 00           5353 	mov	b,#0x00
   1AE7 12 2B A9           5354 	lcall	_strcpy
                    14C2   5355 	C$mdrip.c$650$2$2 ==.
                           5356 ;	apps/mdrip/mdrip.c:650: iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
   1AEA 78 47              5357 	mov	r0,#_print_packet_pPkt_1_1
   1AEC E2                 5358 	movx	a,@r0
   1AED 24 0B              5359 	add	a,#0x0B
   1AEF FA                 5360 	mov	r2,a
   1AF0 08                 5361 	inc	r0
   1AF1 E2                 5362 	movx	a,@r0
   1AF2 34 00              5363 	addc	a,#0x00
   1AF4 FB                 5364 	mov	r3,a
   1AF5 8A 82              5365 	mov	dpl,r2
   1AF7 8B 83              5366 	mov	dph,r3
   1AF9 E0                 5367 	movx	a,@dptr
   1AFA 90 F3 9B           5368 	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
   1AFD F0                 5369 	movx	@dptr,a
                    14D6   5370 	C$mdrip.c$651$2$2 ==.
                           5371 ;	apps/mdrip/mdrip.c:651: iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum
   1AFE 78 47              5372 	mov	r0,#_print_packet_pPkt_1_1
   1B00 E2                 5373 	movx	a,@r0
   1B01 24 12              5374 	add	a,#0x12
   1B03 F5 82              5375 	mov	dpl,a
   1B05 08                 5376 	inc	r0
   1B06 E2                 5377 	movx	a,@r0
   1B07 34 00              5378 	addc	a,#0x00
   1B09 F5 83              5379 	mov	dph,a
   1B0B E0                 5380 	movx	a,@dptr
   1B0C 90 F3 9C           5381 	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
   1B0F F0                 5382 	movx	@dptr,a
                    14E8   5383 	C$mdrip.c$654$2$2 ==.
                           5384 ;	apps/mdrip/mdrip.c:654: fonaConnect();		// Establish a connection to the Dexie server
   1B10 C0 03              5385 	push	ar3
   1B12 C0 02              5386 	push	ar2
   1B14 12 0F 28           5387 	lcall	_fonaConnect
                    14EF   5388 	C$mdrip.c$655$2$2 ==.
                           5389 ;	apps/mdrip/mdrip.c:655: dexcom_src_to_ascii(pPkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
   1B17 78 47              5390 	mov	r0,#_print_packet_pPkt_1_1
   1B19 E2                 5391 	movx	a,@r0
   1B1A 24 05              5392 	add	a,#0x05
   1B1C F5 82              5393 	mov	dpl,a
   1B1E 08                 5394 	inc	r0
   1B1F E2                 5395 	movx	a,@r0
   1B20 34 00              5396 	addc	a,#0x00
   1B22 F5 83              5397 	mov	dph,a
   1B24 E0                 5398 	movx	a,@dptr
   1B25 FC                 5399 	mov	r4,a
   1B26 A3                 5400 	inc	dptr
   1B27 E0                 5401 	movx	a,@dptr
   1B28 FD                 5402 	mov	r5,a
   1B29 A3                 5403 	inc	dptr
   1B2A E0                 5404 	movx	a,@dptr
   1B2B FE                 5405 	mov	r6,a
   1B2C A3                 5406 	inc	dptr
   1B2D E0                 5407 	movx	a,@dptr
   1B2E FF                 5408 	mov	r7,a
   1B2F 90 F0 F6           5409 	mov	dptr,#_dexcom_src_to_ascii_PARM_2
   1B32 74 5D              5410 	mov	a,#_print_packet_transID_1_1
   1B34 F0                 5411 	movx	@dptr,a
   1B35 A3                 5412 	inc	dptr
   1B36 74 F3              5413 	mov	a,#(_print_packet_transID_1_1 >> 8)
   1B38 F0                 5414 	movx	@dptr,a
   1B39 8C 82              5415 	mov	dpl,r4
   1B3B 8D 83              5416 	mov	dph,r5
   1B3D 8E F0              5417 	mov	b,r6
   1B3F EF                 5418 	mov	a,r7
   1B40 12 08 3F           5419 	lcall	_dexcom_src_to_ascii
   1B43 D0 02              5420 	pop	ar2
   1B45 D0 03              5421 	pop	ar3
                    151F   5422 	C$mdrip.c$692$2$2 ==.
                           5423 ;	apps/mdrip/mdrip.c:692: fonaLatLong);									//		GPS Coordinates of cell tower(derived by Fona)
                    151F   5424 	C$mdrip.c$690$2$2 ==.
                           5425 ;	apps/mdrip/mdrip.c:690: (((pPkt->RSSI)/2)-73),							//		Received Signal Strength Indicator
   1B47 78 47              5426 	mov	r0,#_print_packet_pPkt_1_1
   1B49 E2                 5427 	movx	a,@r0
   1B4A 24 13              5428 	add	a,#0x13
   1B4C F5 82              5429 	mov	dpl,a
   1B4E 08                 5430 	inc	r0
   1B4F E2                 5431 	movx	a,@r0
   1B50 34 00              5432 	addc	a,#0x00
   1B52 F5 83              5433 	mov	dph,a
   1B54 E0                 5434 	movx	a,@dptr
   1B55 FF                 5435 	mov	r7,a
   1B56 C2 D5              5436 	clr	F0
   1B58 75 F0 02           5437 	mov	b,#0x02
   1B5B EF                 5438 	mov	a,r7
   1B5C 30 E7 04           5439 	jnb	acc.7,00128$
   1B5F B2 D5              5440 	cpl	F0
   1B61 F4                 5441 	cpl	a
   1B62 04                 5442 	inc	a
   1B63                    5443 00128$:
   1B63 84                 5444 	div	ab
   1B64 30 D5 02           5445 	jnb	F0,00129$
   1B67 F4                 5446 	cpl	a
   1B68 04                 5447 	inc	a
   1B69                    5448 00129$:
   1B69 C0 E0              5449 	push	acc
   1B6B A2 D5              5450 	mov	c,F0
   1B6D 95 E0              5451 	subb	a,acc
   1B6F F5 F0              5452 	mov	b,a
   1B71 D0 E0              5453 	pop	acc
   1B73 24 B7              5454 	add	a,#0xB7
   1B75 F5 32              5455 	mov	_print_packet_sloc2_1_0,a
   1B77 E5 F0              5456 	mov	a,b
   1B79 34 FF              5457 	addc	a,#0xFF
   1B7B F5 33              5458 	mov	(_print_packet_sloc2_1_0 + 1),a
                    1555   5459 	C$mdrip.c$689$2$2 ==.
                           5460 ;	apps/mdrip/mdrip.c:689: pPkt->battery, 					 				// 		Dexcom Transmitter Battery
   1B7D 78 47              5461 	mov	r0,#_print_packet_pPkt_1_1
   1B7F E2                 5462 	movx	a,@r0
   1B80 24 10              5463 	add	a,#0x10
   1B82 F5 82              5464 	mov	dpl,a
   1B84 08                 5465 	inc	r0
   1B85 E2                 5466 	movx	a,@r0
   1B86 34 00              5467 	addc	a,#0x00
   1B88 F5 83              5468 	mov	dph,a
   1B8A E0                 5469 	movx	a,@dptr
   1B8B FD                 5470 	mov	r5,a
   1B8C 8D 30              5471 	mov	_print_packet_sloc1_1_0,r5
   1B8E 75 31 00           5472 	mov	(_print_packet_sloc1_1_0 + 1),#0x00
                    1569   5473 	C$mdrip.c$688$2$2 ==.
                           5474 ;	apps/mdrip/mdrip.c:688: dex_num_decoder(pPkt->filtered)*2,				// 		Filtered BG Value
   1B91 78 47              5475 	mov	r0,#_print_packet_pPkt_1_1
   1B93 E2                 5476 	movx	a,@r0
   1B94 24 0E              5477 	add	a,#0x0E
   1B96 F5 82              5478 	mov	dpl,a
   1B98 08                 5479 	inc	r0
   1B99 E2                 5480 	movx	a,@r0
   1B9A 34 00              5481 	addc	a,#0x00
   1B9C F5 83              5482 	mov	dph,a
   1B9E E0                 5483 	movx	a,@dptr
   1B9F FC                 5484 	mov	r4,a
   1BA0 A3                 5485 	inc	dptr
   1BA1 E0                 5486 	movx	a,@dptr
   1BA2 FD                 5487 	mov	r5,a
   1BA3 8C 82              5488 	mov	dpl,r4
   1BA5 8D 83              5489 	mov	dph,r5
   1BA7 C0 03              5490 	push	ar3
   1BA9 C0 02              5491 	push	ar2
   1BAB 12 07 EB           5492 	lcall	_dex_num_decoder
   1BAE AC 82              5493 	mov	r4,dpl
   1BB0 AD 83              5494 	mov	r5,dph
   1BB2 AE F0              5495 	mov	r6,b
   1BB4 FF                 5496 	mov	r7,a
   1BB5 EC                 5497 	mov	a,r4
   1BB6 2C                 5498 	add	a,r4
   1BB7 F5 34              5499 	mov	_print_packet_sloc3_1_0,a
   1BB9 ED                 5500 	mov	a,r5
   1BBA 33                 5501 	rlc	a
   1BBB F5 35              5502 	mov	(_print_packet_sloc3_1_0 + 1),a
   1BBD EE                 5503 	mov	a,r6
   1BBE 33                 5504 	rlc	a
   1BBF F5 36              5505 	mov	(_print_packet_sloc3_1_0 + 2),a
   1BC1 EF                 5506 	mov	a,r7
   1BC2 33                 5507 	rlc	a
   1BC3 F5 37              5508 	mov	(_print_packet_sloc3_1_0 + 3),a
                    159D   5509 	C$mdrip.c$687$2$2 ==.
                           5510 ;	apps/mdrip/mdrip.c:687: dex_num_decoder(pPkt->raw),		 				// 		Raw BQ Value
   1BC5 78 47              5511 	mov	r0,#_print_packet_pPkt_1_1
   1BC7 E2                 5512 	movx	a,@r0
   1BC8 24 0C              5513 	add	a,#0x0C
   1BCA F5 82              5514 	mov	dpl,a
   1BCC 08                 5515 	inc	r0
   1BCD E2                 5516 	movx	a,@r0
   1BCE 34 00              5517 	addc	a,#0x00
   1BD0 F5 83              5518 	mov	dph,a
   1BD2 E0                 5519 	movx	a,@dptr
   1BD3 FE                 5520 	mov	r6,a
   1BD4 A3                 5521 	inc	dptr
   1BD5 E0                 5522 	movx	a,@dptr
   1BD6 FF                 5523 	mov	r7,a
   1BD7 8E 82              5524 	mov	dpl,r6
   1BD9 8F 83              5525 	mov	dph,r7
   1BDB 12 07 EB           5526 	lcall	_dex_num_decoder
   1BDE AC 82              5527 	mov	r4,dpl
   1BE0 AD 83              5528 	mov	r5,dph
   1BE2 AE F0              5529 	mov	r6,b
   1BE4 FF                 5530 	mov	r7,a
   1BE5 D0 02              5531 	pop	ar2
   1BE7 D0 03              5532 	pop	ar3
                    15C1   5533 	C$mdrip.c$686$2$2 ==.
                           5534 ;	apps/mdrip/mdrip.c:686: transID,						 				// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
                    15C1   5535 	C$mdrip.c$685$2$2 ==.
                           5536 ;	apps/mdrip/mdrip.c:685: pPkt->txId, 					 				// 		Transmission ID - unique-ish identifier
   1BE9 8A 82              5537 	mov	dpl,r2
   1BEB 8B 83              5538 	mov	dph,r3
   1BED E0                 5539 	movx	a,@dptr
   1BEE FA                 5540 	mov	r2,a
   1BEF 7B 00              5541 	mov	r3,#0x00
                    15C9   5542 	C$mdrip.c$684$2$2 ==.
                           5543 ;	apps/mdrip/mdrip.c:684: wixFone_ID, 					 				// 		xDrip2g Device Identifier
                    15C9   5544 	C$mdrip.c$683$2$2 ==.
                           5545 ;	apps/mdrip/mdrip.c:683: prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d %hhu %s",	
   1BF1 74 44              5546 	mov	a,#_print_packet_fonaLatLong_1_1
   1BF3 C0 E0              5547 	push	acc
   1BF5 74 F3              5548 	mov	a,#(_print_packet_fonaLatLong_1_1 >> 8)
   1BF7 C0 E0              5549 	push	acc
   1BF9 E4                 5550 	clr	a
   1BFA C0 E0              5551 	push	acc
   1BFC C0 2E              5552 	push	_print_packet_sloc0_1_0
   1BFE C0 2F              5553 	push	(_print_packet_sloc0_1_0 + 1)
   1C00 C0 32              5554 	push	_print_packet_sloc2_1_0
   1C02 C0 33              5555 	push	(_print_packet_sloc2_1_0 + 1)
   1C04 C0 30              5556 	push	_print_packet_sloc1_1_0
   1C06 C0 31              5557 	push	(_print_packet_sloc1_1_0 + 1)
   1C08 C0 34              5558 	push	_print_packet_sloc3_1_0
   1C0A C0 35              5559 	push	(_print_packet_sloc3_1_0 + 1)
   1C0C C0 36              5560 	push	(_print_packet_sloc3_1_0 + 2)
   1C0E C0 37              5561 	push	(_print_packet_sloc3_1_0 + 3)
   1C10 C0 04              5562 	push	ar4
   1C12 C0 05              5563 	push	ar5
   1C14 C0 06              5564 	push	ar6
   1C16 C0 07              5565 	push	ar7
   1C18 74 5D              5566 	mov	a,#_print_packet_transID_1_1
   1C1A C0 E0              5567 	push	acc
   1C1C 74 F3              5568 	mov	a,#(_print_packet_transID_1_1 >> 8)
   1C1E C0 E0              5569 	push	acc
   1C20 E4                 5570 	clr	a
   1C21 C0 E0              5571 	push	acc
   1C23 C0 02              5572 	push	ar2
   1C25 C0 03              5573 	push	ar3
   1C27 74 99              5574 	mov	a,#_wixFone_ID
   1C29 C0 E0              5575 	push	acc
   1C2B 74 55              5576 	mov	a,#(_wixFone_ID >> 8)
   1C2D C0 E0              5577 	push	acc
   1C2F 74 80              5578 	mov	a,#0x80
   1C31 C0 E0              5579 	push	acc
   1C33 74 1F              5580 	mov	a,#__str_29
   1C35 C0 E0              5581 	push	acc
   1C37 74 57              5582 	mov	a,#(__str_29 >> 8)
   1C39 C0 E0              5583 	push	acc
   1C3B 74 80              5584 	mov	a,#0x80
   1C3D C0 E0              5585 	push	acc
   1C3F 74 9D              5586 	mov	a,#_print_packet_sprintfBuffer_1_1
   1C41 C0 E0              5587 	push	acc
   1C43 74 F3              5588 	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
   1C45 C0 E0              5589 	push	acc
   1C47 E4                 5590 	clr	a
   1C48 C0 E0              5591 	push	acc
   1C4A 12 47 AA           5592 	lcall	_sprintf
   1C4D AE 82              5593 	mov	r6,dpl
   1C4F E5 81              5594 	mov	a,sp
   1C51 24 E1              5595 	add	a,#0xe1
   1C53 F5 81              5596 	mov	sp,a
                    162D   5597 	C$mdrip.c$696$2$2 ==.
                           5598 ;	apps/mdrip/mdrip.c:696: for(i = prtlen; i < 64; ++i)
   1C55 8E 07              5599 	mov	ar7,r6
   1C57                    5600 00103$:
   1C57 BF 40 00           5601 	cjne	r7,#0x40,00130$
   1C5A                    5602 00130$:
   1C5A 50 10              5603 	jnc	00106$
                    1634   5604 	C$mdrip.c$697$2$2 ==.
                           5605 ;	apps/mdrip/mdrip.c:697: sprintfBuffer[i]=' ';							//		Fill rest of array with spaces
   1C5C EF                 5606 	mov	a,r7
   1C5D 24 9D              5607 	add	a,#_print_packet_sprintfBuffer_1_1
   1C5F F5 82              5608 	mov	dpl,a
   1C61 E4                 5609 	clr	a
   1C62 34 F3              5610 	addc	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
   1C64 F5 83              5611 	mov	dph,a
   1C66 74 20              5612 	mov	a,#0x20
   1C68 F0                 5613 	movx	@dptr,a
                    1641   5614 	C$mdrip.c$696$2$2 ==.
                           5615 ;	apps/mdrip/mdrip.c:696: for(i = prtlen; i < 64; ++i)
   1C69 0F                 5616 	inc	r7
   1C6A 80 EB              5617 	sjmp	00103$
   1C6C                    5618 00106$:
                    1644   5619 	C$mdrip.c$702$2$2 ==.
                           5620 ;	apps/mdrip/mdrip.c:702: AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, 64, key, iv);   // swap prtlen for 64 here?
   1C6C 90 F8 8D           5621 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_2
   1C6F 74 9D              5622 	mov	a,#_print_packet_sprintfBuffer_1_1
   1C71 F0                 5623 	movx	@dptr,a
   1C72 A3                 5624 	inc	dptr
   1C73 74 F3              5625 	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
   1C75 F0                 5626 	movx	@dptr,a
   1C76 90 F8 8F           5627 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_3
   1C79 74 40              5628 	mov	a,#0x40
   1C7B F0                 5629 	movx	@dptr,a
   1C7C A3                 5630 	inc	dptr
   1C7D E4                 5631 	clr	a
   1C7E F0                 5632 	movx	@dptr,a
   1C7F A3                 5633 	inc	dptr
   1C80 F0                 5634 	movx	@dptr,a
   1C81 A3                 5635 	inc	dptr
   1C82 F0                 5636 	movx	@dptr,a
   1C83 90 F8 93           5637 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_4
   1C86 74 F4              5638 	mov	a,#_key
   1C88 F0                 5639 	movx	@dptr,a
   1C89 A3                 5640 	inc	dptr
   1C8A 74 F8              5641 	mov	a,#(_key >> 8)
   1C8C F0                 5642 	movx	@dptr,a
   1C8D 90 F8 95           5643 	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_5
   1C90 74 8D              5644 	mov	a,#_print_packet_iv_1_1
   1C92 F0                 5645 	movx	@dptr,a
   1C93 A3                 5646 	inc	dptr
   1C94 74 F3              5647 	mov	a,#(_print_packet_iv_1_1 >> 8)
   1C96 F0                 5648 	movx	@dptr,a
   1C97 90 F3 DD           5649 	mov	dptr,#_print_packet_AESBuffer_1_1
   1C9A 12 41 D0           5650 	lcall	_AES128_CBC_encrypt_buffer
                    1675   5651 	C$mdrip.c$713$2$2 ==.
                           5652 ;	apps/mdrip/mdrip.c:713: printf("xDrip2g(AES): ");
   1C9D 74 40              5653 	mov	a,#__str_30
   1C9F C0 E0              5654 	push	acc
   1CA1 74 57              5655 	mov	a,#(__str_30 >> 8)
   1CA3 C0 E0              5656 	push	acc
   1CA5 74 80              5657 	mov	a,#0x80
   1CA7 C0 E0              5658 	push	acc
   1CA9 12 49 B3           5659 	lcall	_printf
   1CAC 15 81              5660 	dec	sp
   1CAE 15 81              5661 	dec	sp
   1CB0 15 81              5662 	dec	sp
                    168A   5663 	C$mdrip.c$715$1$1 ==.
                           5664 ;	apps/mdrip/mdrip.c:715: for(i = 0; i < 16; ++i)
   1CB2 7F 00              5665 	mov	r7,#0x00
   1CB4                    5666 00107$:
   1CB4 BF 10 00           5667 	cjne	r7,#0x10,00132$
   1CB7                    5668 00132$:
   1CB7 50 2E              5669 	jnc	00110$
                    1691   5670 	C$mdrip.c$716$2$2 ==.
                           5671 ;	apps/mdrip/mdrip.c:716: printf("%02x", iv[i]);							//		Print initialisation vector as this is not a secret, just unique
   1CB9 EF                 5672 	mov	a,r7
   1CBA 24 8D              5673 	add	a,#_print_packet_iv_1_1
   1CBC F5 82              5674 	mov	dpl,a
   1CBE E4                 5675 	clr	a
   1CBF 34 F3              5676 	addc	a,#(_print_packet_iv_1_1 >> 8)
   1CC1 F5 83              5677 	mov	dph,a
   1CC3 E0                 5678 	movx	a,@dptr
   1CC4 FE                 5679 	mov	r6,a
   1CC5 7D 00              5680 	mov	r5,#0x00
   1CC7 C0 07              5681 	push	ar7
   1CC9 C0 06              5682 	push	ar6
   1CCB C0 05              5683 	push	ar5
   1CCD 74 4F              5684 	mov	a,#__str_31
   1CCF C0 E0              5685 	push	acc
   1CD1 74 57              5686 	mov	a,#(__str_31 >> 8)
   1CD3 C0 E0              5687 	push	acc
   1CD5 74 80              5688 	mov	a,#0x80
   1CD7 C0 E0              5689 	push	acc
   1CD9 12 49 B3           5690 	lcall	_printf
   1CDC E5 81              5691 	mov	a,sp
   1CDE 24 FB              5692 	add	a,#0xfb
   1CE0 F5 81              5693 	mov	sp,a
   1CE2 D0 07              5694 	pop	ar7
                    16BC   5695 	C$mdrip.c$715$2$2 ==.
                           5696 ;	apps/mdrip/mdrip.c:715: for(i = 0; i < 16; ++i)
   1CE4 0F                 5697 	inc	r7
   1CE5 80 CD              5698 	sjmp	00107$
   1CE7                    5699 00110$:
                    16BF   5700 	C$mdrip.c$718$2$2 ==.
                           5701 ;	apps/mdrip/mdrip.c:718: printf(" ");	
   1CE7 74 54              5702 	mov	a,#__str_32
   1CE9 C0 E0              5703 	push	acc
   1CEB 74 57              5704 	mov	a,#(__str_32 >> 8)
   1CED C0 E0              5705 	push	acc
   1CEF 74 80              5706 	mov	a,#0x80
   1CF1 C0 E0              5707 	push	acc
   1CF3 12 49 B3           5708 	lcall	_printf
   1CF6 15 81              5709 	dec	sp
   1CF8 15 81              5710 	dec	sp
   1CFA 15 81              5711 	dec	sp
                    16D4   5712 	C$mdrip.c$720$2$2 ==.
                           5713 ;	apps/mdrip/mdrip.c:720: for(i = 0; i < 64; ++i) 
   1CFC 7F 00              5714 	mov	r7,#0x00
   1CFE                    5715 00111$:
   1CFE BF 40 00           5716 	cjne	r7,#0x40,00134$
   1D01                    5717 00134$:
   1D01 50 2E              5718 	jnc	00114$
                    16DB   5719 	C$mdrip.c$721$2$2 ==.
                           5720 ;	apps/mdrip/mdrip.c:721: printf("%02x", AESBuffer[i]);
   1D03 EF                 5721 	mov	a,r7
   1D04 24 DD              5722 	add	a,#_print_packet_AESBuffer_1_1
   1D06 F5 82              5723 	mov	dpl,a
   1D08 E4                 5724 	clr	a
   1D09 34 F3              5725 	addc	a,#(_print_packet_AESBuffer_1_1 >> 8)
   1D0B F5 83              5726 	mov	dph,a
   1D0D E0                 5727 	movx	a,@dptr
   1D0E FE                 5728 	mov	r6,a
   1D0F 7D 00              5729 	mov	r5,#0x00
   1D11 C0 07              5730 	push	ar7
   1D13 C0 06              5731 	push	ar6
   1D15 C0 05              5732 	push	ar5
   1D17 74 4F              5733 	mov	a,#__str_31
   1D19 C0 E0              5734 	push	acc
   1D1B 74 57              5735 	mov	a,#(__str_31 >> 8)
   1D1D C0 E0              5736 	push	acc
   1D1F 74 80              5737 	mov	a,#0x80
   1D21 C0 E0              5738 	push	acc
   1D23 12 49 B3           5739 	lcall	_printf
   1D26 E5 81              5740 	mov	a,sp
   1D28 24 FB              5741 	add	a,#0xfb
   1D2A F5 81              5742 	mov	sp,a
   1D2C D0 07              5743 	pop	ar7
                    1706   5744 	C$mdrip.c$720$2$2 ==.
                           5745 ;	apps/mdrip/mdrip.c:720: for(i = 0; i < 64; ++i) 
   1D2E 0F                 5746 	inc	r7
   1D2F 80 CD              5747 	sjmp	00111$
   1D31                    5748 00114$:
                    1709   5749 	C$mdrip.c$723$2$2 ==.
                           5750 ;	apps/mdrip/mdrip.c:723: printf("\r\n\032");									// CR/LF and Escape ctrl-z character
   1D31 74 56              5751 	mov	a,#__str_33
   1D33 C0 E0              5752 	push	acc
   1D35 74 57              5753 	mov	a,#(__str_33 >> 8)
   1D37 C0 E0              5754 	push	acc
   1D39 74 80              5755 	mov	a,#0x80
   1D3B C0 E0              5756 	push	acc
   1D3D 12 49 B3           5757 	lcall	_printf
   1D40 15 81              5758 	dec	sp
   1D42 15 81              5759 	dec	sp
   1D44 15 81              5760 	dec	sp
                    171E   5761 	C$mdrip.c$727$2$2 ==.
                           5762 ;	apps/mdrip/mdrip.c:727: delayMs(defaultATWait);									// Need to wait here also as sometimes missing ctrl-z
   1D46 90 F8 F0           5763 	mov	dptr,#_defaultATWait
   1D49 E0                 5764 	movx	a,@dptr
   1D4A FC                 5765 	mov	r4,a
   1D4B A3                 5766 	inc	dptr
   1D4C E0                 5767 	movx	a,@dptr
   1D4D FD                 5768 	mov	r5,a
   1D4E A3                 5769 	inc	dptr
   1D4F E0                 5770 	movx	a,@dptr
   1D50 A3                 5771 	inc	dptr
   1D51 E0                 5772 	movx	a,@dptr
   1D52 8C 82              5773 	mov	dpl,r4
   1D54 8D 83              5774 	mov	dph,r5
   1D56 12 45 D8           5775 	lcall	_delayMs
                    1731   5776 	C$mdrip.c$728$2$2 ==.
                           5777 ;	apps/mdrip/mdrip.c:728: printf("\032");											// Send all the data with ctrl-z (do it again to be sure)
   1D59 74 5A              5778 	mov	a,#__str_34
   1D5B C0 E0              5779 	push	acc
   1D5D 74 57              5780 	mov	a,#(__str_34 >> 8)
   1D5F C0 E0              5781 	push	acc
   1D61 74 80              5782 	mov	a,#0x80
   1D63 C0 E0              5783 	push	acc
   1D65 12 49 B3           5784 	lcall	_printf
   1D68 15 81              5785 	dec	sp
   1D6A 15 81              5786 	dec	sp
   1D6C 15 81              5787 	dec	sp
                    1746   5788 	C$mdrip.c$729$2$2 ==.
                           5789 ;	apps/mdrip/mdrip.c:729: delayMs(defaultATWait);
   1D6E 90 F8 F0           5790 	mov	dptr,#_defaultATWait
   1D71 E0                 5791 	movx	a,@dptr
   1D72 FC                 5792 	mov	r4,a
   1D73 A3                 5793 	inc	dptr
   1D74 E0                 5794 	movx	a,@dptr
   1D75 FD                 5795 	mov	r5,a
   1D76 A3                 5796 	inc	dptr
   1D77 E0                 5797 	movx	a,@dptr
   1D78 A3                 5798 	inc	dptr
   1D79 E0                 5799 	movx	a,@dptr
   1D7A 8C 82              5800 	mov	dpl,r4
   1D7C 8D 83              5801 	mov	dph,r5
   1D7E 12 45 D8           5802 	lcall	_delayMs
                    1759   5803 	C$mdrip.c$730$2$2 ==.
                           5804 ;	apps/mdrip/mdrip.c:730: fonaDisable();											// Disconnect and send the fona asleep
   1D81 12 0E B7           5805 	lcall	_fonaDisable
   1D84                    5806 00102$:
                    175C   5807 	C$mdrip.c$733$1$1 ==.
                           5808 ;	apps/mdrip/mdrip.c:733: uartDisable();
   1D84 12 06 66           5809 	lcall	_uartDisable
                    175F   5810 	C$mdrip.c$734$1$1 ==.
                    175F   5811 	XG$print_packet$0$0 ==.
   1D87 22                 5812 	ret
                           5813 ;------------------------------------------------------------
                           5814 ;Allocation info for local variables in function 'makeAllOutputs'
                           5815 ;------------------------------------------------------------
                           5816 ;i                         Allocated with name '_makeAllOutputs_i_1_1'
                           5817 ;------------------------------------------------------------
                    1760   5818 	G$makeAllOutputs$0$0 ==.
                    1760   5819 	C$mdrip.c$736$1$1 ==.
                           5820 ;	apps/mdrip/mdrip.c:736: void makeAllOutputs() {
                           5821 ;	-----------------------------------------
                           5822 ;	 function makeAllOutputs
                           5823 ;	-----------------------------------------
   1D88                    5824 _makeAllOutputs:
                    1760   5825 	C$mdrip.c$738$1$1 ==.
                           5826 ;	apps/mdrip/mdrip.c:738: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
   1D88 7E 01              5827 	mov	r6,#0x01
   1D8A 7F 00              5828 	mov	r7,#0x00
   1D8C                    5829 00101$:
   1D8C C3                 5830 	clr	c
   1D8D EE                 5831 	mov	a,r6
   1D8E 94 10              5832 	subb	a,#0x10
   1D90 EF                 5833 	mov	a,r7
   1D91 64 80              5834 	xrl	a,#0x80
   1D93 94 80              5835 	subb	a,#0x80
   1D95 50 19              5836 	jnc	00105$
                    176F   5837 	C$mdrip.c$739$2$2 ==.
                           5838 ;	apps/mdrip/mdrip.c:739: setDigitalOutput(i, LOW);
   1D97 8E 82              5839 	mov	dpl,r6
   1D99 C2 F0              5840 	clr	b[0]
   1D9B C0 07              5841 	push	ar7
   1D9D C0 06              5842 	push	ar6
   1D9F 85 F0 25           5843 	mov	bits,b
   1DA2 12 51 0A           5844 	lcall	_setDigitalOutput
   1DA5 D0 06              5845 	pop	ar6
   1DA7 D0 07              5846 	pop	ar7
                    1781   5847 	C$mdrip.c$738$1$1 ==.
                           5848 ;	apps/mdrip/mdrip.c:738: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
   1DA9 0E                 5849 	inc	r6
   1DAA BE 00 DF           5850 	cjne	r6,#0x00,00101$
   1DAD 0F                 5851 	inc	r7
   1DAE 80 DC              5852 	sjmp	00101$
   1DB0                    5853 00105$:
                    1788   5854 	C$mdrip.c$741$1$1 ==.
                    1788   5855 	XG$makeAllOutputs$0$0 ==.
   1DB0 22                 5856 	ret
                           5857 ;------------------------------------------------------------
                           5858 ;Allocation info for local variables in function 'makeAllOutputsLow'
                           5859 ;------------------------------------------------------------
                           5860 ;i                         Allocated with name '_makeAllOutputsLow_i_1_1'
                           5861 ;------------------------------------------------------------
                    1789   5862 	G$makeAllOutputsLow$0$0 ==.
                    1789   5863 	C$mdrip.c$742$1$1 ==.
                           5864 ;	apps/mdrip/mdrip.c:742: void makeAllOutputsLow() {
                           5865 ;	-----------------------------------------
                           5866 ;	 function makeAllOutputsLow
                           5867 ;	-----------------------------------------
   1DB1                    5868 _makeAllOutputsLow:
                    1789   5869 	C$mdrip.c$744$1$1 ==.
                           5870 ;	apps/mdrip/mdrip.c:744: for (i=0; i < 16; i++) {
   1DB1 7E 00              5871 	mov	r6,#0x00
   1DB3 7F 00              5872 	mov	r7,#0x00
   1DB5                    5873 00101$:
   1DB5 C3                 5874 	clr	c
   1DB6 EE                 5875 	mov	a,r6
   1DB7 94 10              5876 	subb	a,#0x10
   1DB9 EF                 5877 	mov	a,r7
   1DBA 64 80              5878 	xrl	a,#0x80
   1DBC 94 80              5879 	subb	a,#0x80
   1DBE 50 19              5880 	jnc	00105$
                    1798   5881 	C$mdrip.c$745$2$2 ==.
                           5882 ;	apps/mdrip/mdrip.c:745: setDigitalOutput(i, LOW);
   1DC0 8E 82              5883 	mov	dpl,r6
   1DC2 C2 F0              5884 	clr	b[0]
   1DC4 C0 07              5885 	push	ar7
   1DC6 C0 06              5886 	push	ar6
   1DC8 85 F0 25           5887 	mov	bits,b
   1DCB 12 51 0A           5888 	lcall	_setDigitalOutput
   1DCE D0 06              5889 	pop	ar6
   1DD0 D0 07              5890 	pop	ar7
                    17AA   5891 	C$mdrip.c$744$1$1 ==.
                           5892 ;	apps/mdrip/mdrip.c:744: for (i=0; i < 16; i++) {
   1DD2 0E                 5893 	inc	r6
   1DD3 BE 00 DF           5894 	cjne	r6,#0x00,00101$
   1DD6 0F                 5895 	inc	r7
   1DD7 80 DC              5896 	sjmp	00101$
   1DD9                    5897 00105$:
                    17B1   5898 	C$mdrip.c$747$1$1 ==.
                    17B1   5899 	XG$makeAllOutputsLow$0$0 ==.
   1DD9 22                 5900 	ret
                           5901 ;------------------------------------------------------------
                           5902 ;Allocation info for local variables in function 'reset_offsets'
                           5903 ;------------------------------------------------------------
                           5904 ;i                         Allocated with name '_reset_offsets_i_1_1'
                           5905 ;------------------------------------------------------------
                    17B2   5906 	G$reset_offsets$0$0 ==.
                    17B2   5907 	C$mdrip.c$749$1$1 ==.
                           5908 ;	apps/mdrip/mdrip.c:749: void reset_offsets() {
                           5909 ;	-----------------------------------------
                           5910 ;	 function reset_offsets
                           5911 ;	-----------------------------------------
   1DDA                    5912 _reset_offsets:
                    17B2   5913 	C$mdrip.c$751$2$2 ==.
                           5914 ;	apps/mdrip/mdrip.c:751: for(i=0; i<4; i++) {
   1DDA 7E 00              5915 	mov	r6,#0x00
   1DDC 7F 00              5916 	mov	r7,#0x00
   1DDE                    5917 00101$:
   1DDE C3                 5918 	clr	c
   1DDF EE                 5919 	mov	a,r6
   1DE0 94 04              5920 	subb	a,#0x04
   1DE2 EF                 5921 	mov	a,r7
   1DE3 64 80              5922 	xrl	a,#0x80
   1DE5 94 80              5923 	subb	a,#0x80
   1DE7 50 18              5924 	jnc	00105$
                    17C1   5925 	C$mdrip.c$752$2$2 ==.
                           5926 ;	apps/mdrip/mdrip.c:752: fOffset[i] = defaultfOffset[i];
   1DE9 EE                 5927 	mov	a,r6
   1DEA 24 02              5928 	add	a,#_fOffset
   1DEC F9                 5929 	mov	r1,a
   1DED EE                 5930 	mov	a,r6
   1DEE 24 DC              5931 	add	a,#_defaultfOffset
   1DF0 F5 82              5932 	mov	dpl,a
   1DF2 EF                 5933 	mov	a,r7
   1DF3 34 F8              5934 	addc	a,#(_defaultfOffset >> 8)
   1DF5 F5 83              5935 	mov	dph,a
   1DF7 E0                 5936 	movx	a,@dptr
   1DF8 FD                 5937 	mov	r5,a
   1DF9 F3                 5938 	movx	@r1,a
                    17D2   5939 	C$mdrip.c$751$1$1 ==.
                           5940 ;	apps/mdrip/mdrip.c:751: for(i=0; i<4; i++) {
   1DFA 0E                 5941 	inc	r6
   1DFB BE 00 E0           5942 	cjne	r6,#0x00,00101$
   1DFE 0F                 5943 	inc	r7
   1DFF 80 DD              5944 	sjmp	00101$
   1E01                    5945 00105$:
                    17D9   5946 	C$mdrip.c$754$1$1 ==.
                    17D9   5947 	XG$reset_offsets$0$0 ==.
   1E01 22                 5948 	ret
                           5949 ;------------------------------------------------------------
                           5950 ;Allocation info for local variables in function 'killWithWatchdog'
                           5951 ;------------------------------------------------------------
                    17DA   5952 	G$killWithWatchdog$0$0 ==.
                    17DA   5953 	C$mdrip.c$756$1$1 ==.
                           5954 ;	apps/mdrip/mdrip.c:756: void killWithWatchdog() {
                           5955 ;	-----------------------------------------
                           5956 ;	 function killWithWatchdog
                           5957 ;	-----------------------------------------
   1E02                    5958 _killWithWatchdog:
                    17DA   5959 	C$mdrip.c$757$1$1 ==.
                           5960 ;	apps/mdrip/mdrip.c:757: WDCTL = (WDCTL & ~0x03) | 0x00;
   1E02 AF C9              5961 	mov	r7,_WDCTL
   1E04 53 07 FC           5962 	anl	ar7,#0xFC
   1E07 8F C9              5963 	mov	_WDCTL,r7
                    17E1   5964 	C$mdrip.c$758$1$1 ==.
                           5965 ;	apps/mdrip/mdrip.c:758: WDCTL = (WDCTL & ~0x04) | 0x08;
   1E09 AF C9              5966 	mov	r7,_WDCTL
   1E0B 74 FB              5967 	mov	a,#0xFB
   1E0D 5F                 5968 	anl	a,r7
   1E0E 44 08              5969 	orl	a,#0x08
   1E10 FF                 5970 	mov	r7,a
   1E11 8F C9              5971 	mov	_WDCTL,r7
                    17EB   5972 	C$mdrip.c$759$1$1 ==.
                    17EB   5973 	XG$killWithWatchdog$0$0 ==.
   1E13 22                 5974 	ret
                           5975 ;------------------------------------------------------------
                           5976 ;Allocation info for local variables in function 'goToSleep'
                           5977 ;------------------------------------------------------------
                           5978 ;sloc0                     Allocated with name '_goToSleep_sloc0_1_0'
                           5979 ;sloc1                     Allocated with name '_goToSleep_sloc1_1_0'
                           5980 ;seconds                   Allocated with name '_goToSleep_seconds_1_1'
                           5981 ;------------------------------------------------------------
                    17EC   5982 	G$goToSleep$0$0 ==.
                    17EC   5983 	C$mdrip.c$761$1$1 ==.
                           5984 ;	apps/mdrip/mdrip.c:761: XDATA void goToSleep (XDATA int16 seconds) {
                           5985 ;	-----------------------------------------
                           5986 ;	 function goToSleep
                           5987 ;	-----------------------------------------
   1E14                    5988 _goToSleep:
   1E14 AF 83              5989 	mov	r7,dph
   1E16 E5 82              5990 	mov	a,dpl
   1E18 90 F4 1D           5991 	mov	dptr,#_goToSleep_seconds_1_1
   1E1B F0                 5992 	movx	@dptr,a
   1E1C A3                 5993 	inc	dptr
   1E1D EF                 5994 	mov	a,r7
   1E1E F0                 5995 	movx	@dptr,a
                    17F7   5996 	C$mdrip.c$762$1$1 ==.
                           5997 ;	apps/mdrip/mdrip.c:762: adcSetMillivoltCalibration(adcReadVddMillivolts());
   1E1F 12 2F 43           5998 	lcall	_adcReadVddMillivolts
   1E22 12 2F 90           5999 	lcall	_adcSetMillivoltCalibration
                    17FD   6000 	C$mdrip.c$763$1$1 ==.
                           6001 ;	apps/mdrip/mdrip.c:763: makeAllOutputsLow();
   1E25 12 1D B1           6002 	lcall	_makeAllOutputsLow
                    1800   6003 	C$mdrip.c$765$1$1 ==.
                           6004 ;	apps/mdrip/mdrip.c:765: if(!needsTimingCalibration) {
   1E28 30 05 03           6005 	jnb	_needsTimingCalibration,00134$
   1E2B 02 1F DD           6006 	ljmp	00120$
   1E2E                    6007 00134$:
                    1806   6008 	C$mdrip.c$766$2$2 ==.
                           6009 ;	apps/mdrip/mdrip.c:766: if(!usbPowerPresent()){
   1E2E 12 3A 62           6010 	lcall	_usbPowerPresent
   1E31 50 03              6011 	jnc	00135$
   1E33 02 1F 50           6012 	ljmp	00117$
   1E36                    6013 00135$:
                    180E   6014 	C$mdrip.c$772$3$2 ==.
                           6015 ;	apps/mdrip/mdrip.c:772: uint8 savedPICTL = PICTL;
   1E36 AF 8C              6016 	mov	r7,_PICTL
                    1810   6017 	C$mdrip.c$773$3$2 ==.
                           6018 ;	apps/mdrip/mdrip.c:773: BIT savedP0IE = P0IE;
   1E38 A2 BD              6019 	mov	c,_P0IE
   1E3A 92 08              6020 	mov	_goToSleep_savedP0IE_3_3,c
                    1814   6021 	C$mdrip.c$774$3$2 ==.
                           6022 ;	apps/mdrip/mdrip.c:774: uint8 savedP0SEL = P0SEL;
   1E3C AE F3              6023 	mov	r6,_P0SEL
                    1816   6024 	C$mdrip.c$775$3$2 ==.
                           6025 ;	apps/mdrip/mdrip.c:775: uint8 savedP0DIR = P0DIR;
   1E3E AD FD              6026 	mov	r5,_P0DIR
                    1818   6027 	C$mdrip.c$776$3$2 ==.
                           6028 ;	apps/mdrip/mdrip.c:776: uint8 savedP1SEL = P1SEL;
   1E40 78 4D              6029 	mov	r0,#_goToSleep_savedP1SEL_3_3
   1E42 E5 F4              6030 	mov	a,_P1SEL
   1E44 F2                 6031 	movx	@r0,a
                    181D   6032 	C$mdrip.c$777$3$2 ==.
                           6033 ;	apps/mdrip/mdrip.c:777: uint8 savedP1DIR = P1DIR;
   1E45 78 4E              6034 	mov	r0,#_goToSleep_savedP1DIR_3_3
   1E47 E5 FE              6035 	mov	a,_P1DIR
   1E49 F2                 6036 	movx	@r0,a
                    1822   6037 	C$mdrip.c$779$3$3 ==.
                           6038 ;	apps/mdrip/mdrip.c:779: sleepInit();
   1E4A C0 07              6039 	push	ar7
   1E4C C0 06              6040 	push	ar6
   1E4E C0 05              6041 	push	ar5
   1E50 12 06 28           6042 	lcall	_sleepInit
                    182B   6043 	C$mdrip.c$781$3$3 ==.
                           6044 ;	apps/mdrip/mdrip.c:781: disableUsbPullup();
   1E53 12 3A 6B           6045 	lcall	_disableUsbPullup
                    182E   6046 	C$mdrip.c$782$3$3 ==.
                           6047 ;	apps/mdrip/mdrip.c:782: usbDeviceState = USB_STATE_DETACHED;
   1E56 90 F9 2B           6048 	mov	dptr,#_usbDeviceState
   1E59 E4                 6049 	clr	a
   1E5A F0                 6050 	movx	@dptr,a
                    1833   6051 	C$mdrip.c$783$3$3 ==.
                           6052 ;	apps/mdrip/mdrip.c:783: usbEnabled = 0;
   1E5B C2 06              6053 	clr	_usbEnabled
                    1835   6054 	C$mdrip.c$784$3$3 ==.
                           6055 ;	apps/mdrip/mdrip.c:784: SLEEP &= ~(1<<7);
   1E5D AA BE              6056 	mov	r2,_SLEEP
   1E5F 53 02 7F           6057 	anl	ar2,#0x7F
   1E62 8A BE              6058 	mov	_SLEEP,r2
                    183C   6059 	C$mdrip.c$786$3$3 ==.
                           6060 ;	apps/mdrip/mdrip.c:786: WORCTRL |= 0x03; // 2^5 periods
   1E64 43 A2 03           6061 	orl	_WORCTRL,#0x03
                    183F   6062 	C$mdrip.c$787$3$3 ==.
                           6063 ;	apps/mdrip/mdrip.c:787: switchToRCOSC();
   1E67 12 06 36           6064 	lcall	_switchToRCOSC
   1E6A D0 05              6065 	pop	ar5
   1E6C D0 06              6066 	pop	ar6
   1E6E D0 07              6067 	pop	ar7
                    1848   6068 	C$mdrip.c$789$3$3 ==.
                           6069 ;	apps/mdrip/mdrip.c:789: storedDescHigh = DMA0CFGH;
   1E70 78 49              6070 	mov	r0,#_goToSleep_storedDescHigh_3_3
   1E72 E5 D5              6071 	mov	a,_DMA0CFGH
   1E74 F2                 6072 	movx	@r0,a
                    184D   6073 	C$mdrip.c$790$3$3 ==.
                           6074 ;	apps/mdrip/mdrip.c:790: storedDescLow = DMA0CFGL;
   1E75 78 4A              6075 	mov	r0,#_goToSleep_storedDescLow_3_3
   1E77 E5 D4              6076 	mov	a,_DMA0CFGL
   1E79 F2                 6077 	movx	@r0,a
                    1852   6078 	C$mdrip.c$791$3$3 ==.
                           6079 ;	apps/mdrip/mdrip.c:791: storedDma0Armed = DMAARM & 0x01;
   1E7A E5 D6              6080 	mov	a,_DMAARM
   1E7C 54 01              6081 	anl	a,#0x01
   1E7E 24 FF              6082 	add	a,#0xff
   1E80 92 07              6083 	mov	_goToSleep_storedDma0Armed_3_3,c
                    185A   6084 	C$mdrip.c$792$3$3 ==.
                           6085 ;	apps/mdrip/mdrip.c:792: DMAARM |= 0x81;
   1E82 43 D6 81           6086 	orl	_DMAARM,#0x81
                    185D   6087 	C$mdrip.c$793$3$3 ==.
                           6088 ;	apps/mdrip/mdrip.c:793: dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
   1E85 7A E0              6089 	mov	r2,#_PM2_BUF
   1E87 7B F8              6090 	mov	r3,#(_PM2_BUF >> 8)
   1E89 8B 02              6091 	mov	ar2,r3
   1E8B 90 F8 E7           6092 	mov	dptr,#_dmaDesc
   1E8E EA                 6093 	mov	a,r2
   1E8F F0                 6094 	movx	@dptr,a
                    1868   6095 	C$mdrip.c$794$3$3 ==.
                           6096 ;	apps/mdrip/mdrip.c:794: dmaDesc[1] = (unsigned int)& PM2_BUF;
   1E90 7A E0              6097 	mov	r2,#_PM2_BUF
   1E92 7B F8              6098 	mov	r3,#(_PM2_BUF >> 8)
   1E94 90 F8 E8           6099 	mov	dptr,#(_dmaDesc + 0x0001)
   1E97 EA                 6100 	mov	a,r2
   1E98 F0                 6101 	movx	@dptr,a
                    1871   6102 	C$mdrip.c$796$3$3 ==.
                           6103 ;	apps/mdrip/mdrip.c:796: DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
   1E99 7A E7              6104 	mov	r2,#_dmaDesc
   1E9B 7B F8              6105 	mov	r3,#(_dmaDesc >> 8)
   1E9D 8B D5              6106 	mov	_DMA0CFGH,r3
                    1877   6107 	C$mdrip.c$797$3$3 ==.
                           6108 ;	apps/mdrip/mdrip.c:797: DMA0CFGL = (unsigned int)&dmaDesc;
   1E9F 7A E7              6109 	mov	r2,#_dmaDesc
   1EA1 7B F8              6110 	mov	r3,#(_dmaDesc >> 8)
   1EA3 8A D4              6111 	mov	_DMA0CFGL,r2
                    187D   6112 	C$mdrip.c$798$3$3 ==.
                           6113 ;	apps/mdrip/mdrip.c:798: DMAARM = 0x01;
   1EA5 75 D6 01           6114 	mov	_DMAARM,#0x01
                    1880   6115 	C$mdrip.c$801$3$3 ==.
                           6116 ;	apps/mdrip/mdrip.c:801: storedIEN0 = IEN0;
   1EA8 AB A8              6117 	mov	r3,_IEN0
                    1882   6118 	C$mdrip.c$802$3$3 ==.
                           6119 ;	apps/mdrip/mdrip.c:802: storedIEN1 = IEN1;
   1EAA 78 4B              6120 	mov	r0,#_goToSleep_storedIEN1_3_3
   1EAC E5 B8              6121 	mov	a,_IEN1
   1EAE F2                 6122 	movx	@r0,a
                    1887   6123 	C$mdrip.c$803$3$3 ==.
                           6124 ;	apps/mdrip/mdrip.c:803: storedIEN2 = IEN2;
   1EAF 78 4C              6125 	mov	r0,#_goToSleep_storedIEN2_3_3
   1EB1 E5 9A              6126 	mov	a,_IEN2
   1EB3 F2                 6127 	movx	@r0,a
                    188C   6128 	C$mdrip.c$806$3$3 ==.
                           6129 ;	apps/mdrip/mdrip.c:806: IEN0 |= 0xA0;
   1EB4 43 A8 A0           6130 	orl	_IEN0,#0xA0
                    188F   6131 	C$mdrip.c$809$3$3 ==.
                           6132 ;	apps/mdrip/mdrip.c:809: IEN0 &= 0xA0;
   1EB7 53 A8 A0           6133 	anl	_IEN0,#0xA0
                    1892   6134 	C$mdrip.c$810$3$3 ==.
                           6135 ;	apps/mdrip/mdrip.c:810: IEN1 &= ~0x3F;
   1EBA AA B8              6136 	mov	r2,_IEN1
   1EBC 53 02 C0           6137 	anl	ar2,#0xC0
   1EBF 8A B8              6138 	mov	_IEN1,r2
                    1899   6139 	C$mdrip.c$811$3$3 ==.
                           6140 ;	apps/mdrip/mdrip.c:811: IEN2 &= ~0x3F;
   1EC1 AA 9A              6141 	mov	r2,_IEN2
   1EC3 53 02 C0           6142 	anl	ar2,#0xC0
   1EC6 8A 9A              6143 	mov	_IEN2,r2
                    18A0   6144 	C$mdrip.c$813$3$3 ==.
                           6145 ;	apps/mdrip/mdrip.c:813: WORCTRL |= 0x04;  // Reset
   1EC8 43 A2 04           6146 	orl	_WORCTRL,#0x04
                    18A3   6147 	C$mdrip.c$814$3$3 ==.
                           6148 ;	apps/mdrip/mdrip.c:814: temp = WORTIME0;
   1ECB AA A5              6149 	mov	r2,_WORTIME0
                    18A5   6150 	C$mdrip.c$815$3$3 ==.
                           6151 ;	apps/mdrip/mdrip.c:815: while(temp == WORTIME0) {};
   1ECD                    6152 00101$:
   1ECD EA                 6153 	mov	a,r2
   1ECE B5 A5 02           6154 	cjne	a,_WORTIME0,00136$
   1ED1 80 FA              6155 	sjmp	00101$
   1ED3                    6156 00136$:
                    18AB   6157 	C$mdrip.c$816$1$1 ==.
                           6158 ;	apps/mdrip/mdrip.c:816: WOREVT1 = seconds >> 8;
   1ED3 C0 03              6159 	push	ar3
   1ED5 90 F4 1D           6160 	mov	dptr,#_goToSleep_seconds_1_1
   1ED8 E0                 6161 	movx	a,@dptr
   1ED9 FB                 6162 	mov	r3,a
   1EDA A3                 6163 	inc	dptr
   1EDB E0                 6164 	movx	a,@dptr
   1EDC FC                 6165 	mov	r4,a
   1EDD 8C A4              6166 	mov	_WOREVT1,r4
                    18B7   6167 	C$mdrip.c$817$3$3 ==.
                           6168 ;	apps/mdrip/mdrip.c:817: WOREVT0 = seconds;
   1EDF 8B A3              6169 	mov	_WOREVT0,r3
                    18B9   6170 	C$mdrip.c$819$3$3 ==.
                           6171 ;	apps/mdrip/mdrip.c:819: temp = WORTIME0;
   1EE1 AA A5              6172 	mov	r2,_WORTIME0
                    18BB   6173 	C$mdrip.c$865$1$1 ==.
                           6174 ;	apps/mdrip/mdrip.c:865: makeAllOutputs();
   1EE3 D0 03              6175 	pop	ar3
                    18BD   6176 	C$mdrip.c$820$3$3 ==.
                           6177 ;	apps/mdrip/mdrip.c:820: while(temp == WORTIME0) {};
   1EE5                    6178 00104$:
   1EE5 EA                 6179 	mov	a,r2
   1EE6 B5 A5 02           6180 	cjne	a,_WORTIME0,00137$
   1EE9 80 FA              6181 	sjmp	00104$
   1EEB                    6182 00137$:
                    18C3   6183 	C$mdrip.c$822$3$3 ==.
                           6184 ;	apps/mdrip/mdrip.c:822: MEMCTR |= 0x02;
   1EEB 43 C7 02           6185 	orl	_MEMCTR,#0x02
                    18C6   6186 	C$mdrip.c$823$3$3 ==.
                           6187 ;	apps/mdrip/mdrip.c:823: SLEEP = 0x06;
   1EEE 75 BE 06           6188 	mov	_SLEEP,#0x06
                    18C9   6189 	C$mdrip.c$824$3$3 ==.
                           6190 ;	apps/mdrip/mdrip.c:824: __asm nop __endasm;
   1EF1 00                 6191 	 nop 
                    18CA   6192 	C$mdrip.c$825$3$3 ==.
                           6193 ;	apps/mdrip/mdrip.c:825: __asm nop __endasm;
   1EF2 00                 6194 	 nop 
                    18CB   6195 	C$mdrip.c$826$3$3 ==.
                           6196 ;	apps/mdrip/mdrip.c:826: __asm nop __endasm;
   1EF3 00                 6197 	 nop 
                    18CC   6198 	C$mdrip.c$827$3$3 ==.
                           6199 ;	apps/mdrip/mdrip.c:827: if(SLEEP & 0x03){
   1EF4 E5 BE              6200 	mov	a,_SLEEP
   1EF6 54 03              6201 	anl	a,#0x03
   1EF8 60 08              6202 	jz	00108$
                    18D2   6203 	C$mdrip.c$828$4$6 ==.
                           6204 ;	apps/mdrip/mdrip.c:828: __asm mov 0xD7, #0x01 __endasm;
   1EFA 75 D7 01           6205 	 mov 0xD7, #0x01 
                    18D5   6206 	C$mdrip.c$829$4$6 ==.
                           6207 ;	apps/mdrip/mdrip.c:829: __asm nop __endasm;
   1EFD 00                 6208 	 nop 
                    18D6   6209 	C$mdrip.c$830$4$6 ==.
                           6210 ;	apps/mdrip/mdrip.c:830: __asm orl 0x87, #0x01 __endasm;
   1EFE 43 87 01           6211 	 orl 0x87, #0x01 
                    18D9   6212 	C$mdrip.c$831$4$6 ==.
                           6213 ;	apps/mdrip/mdrip.c:831: __asm nop __endasm;
   1F01 00                 6214 	 nop 
   1F02                    6215 00108$:
                    18DA   6216 	C$mdrip.c$833$3$3 ==.
                           6217 ;	apps/mdrip/mdrip.c:833: IEN0 = storedIEN0;
   1F02 8B A8              6218 	mov	_IEN0,r3
                    18DC   6219 	C$mdrip.c$834$3$3 ==.
                           6220 ;	apps/mdrip/mdrip.c:834: IEN1 = storedIEN1;
   1F04 78 4B              6221 	mov	r0,#_goToSleep_storedIEN1_3_3
   1F06 E2                 6222 	movx	a,@r0
   1F07 F5 B8              6223 	mov	_IEN1,a
                    18E1   6224 	C$mdrip.c$835$3$3 ==.
                           6225 ;	apps/mdrip/mdrip.c:835: IEN2 = storedIEN2;
   1F09 78 4C              6226 	mov	r0,#_goToSleep_storedIEN2_3_3
   1F0B E2                 6227 	movx	a,@r0
   1F0C F5 9A              6228 	mov	_IEN2,a
                    18E6   6229 	C$mdrip.c$836$3$3 ==.
                           6230 ;	apps/mdrip/mdrip.c:836: DMA0CFGH = storedDescHigh;
   1F0E 78 49              6231 	mov	r0,#_goToSleep_storedDescHigh_3_3
   1F10 E2                 6232 	movx	a,@r0
   1F11 F5 D5              6233 	mov	_DMA0CFGH,a
                    18EB   6234 	C$mdrip.c$837$3$3 ==.
                           6235 ;	apps/mdrip/mdrip.c:837: DMA0CFGL = storedDescLow;
   1F13 78 4A              6236 	mov	r0,#_goToSleep_storedDescLow_3_3
   1F15 E2                 6237 	movx	a,@r0
   1F16 F5 D4              6238 	mov	_DMA0CFGL,a
                    18F0   6239 	C$mdrip.c$838$3$3 ==.
                           6240 ;	apps/mdrip/mdrip.c:838: if(storedDma0Armed){
   1F18 30 07 03           6241 	jnb	_goToSleep_storedDma0Armed_3_3,00110$
                    18F3   6242 	C$mdrip.c$839$4$7 ==.
                           6243 ;	apps/mdrip/mdrip.c:839: DMAARM |= 0x01;
   1F1B 43 D6 01           6244 	orl	_DMAARM,#0x01
   1F1E                    6245 00110$:
                    18F6   6246 	C$mdrip.c$842$3$3 ==.
                           6247 ;	apps/mdrip/mdrip.c:842: boardClockInit();
   1F1E C0 07              6248 	push	ar7
   1F20 C0 06              6249 	push	ar6
   1F22 C0 05              6250 	push	ar5
   1F24 12 39 AF           6251 	lcall	_boardClockInit
   1F27 D0 05              6252 	pop	ar5
   1F29 D0 06              6253 	pop	ar6
   1F2B D0 07              6254 	pop	ar7
                    1905   6255 	C$mdrip.c$844$3$3 ==.
                           6256 ;	apps/mdrip/mdrip.c:844: PICTL = savedPICTL;
   1F2D 8F 8C              6257 	mov	_PICTL,r7
                    1907   6258 	C$mdrip.c$845$3$3 ==.
                           6259 ;	apps/mdrip/mdrip.c:845: P0IE = savedP0IE;
   1F2F A2 08              6260 	mov	c,_goToSleep_savedP0IE_3_3
   1F31 92 BD              6261 	mov	_P0IE,c
                    190B   6262 	C$mdrip.c$846$3$3 ==.
                           6263 ;	apps/mdrip/mdrip.c:846: P0SEL = savedP0SEL;
   1F33 8E F3              6264 	mov	_P0SEL,r6
                    190D   6265 	C$mdrip.c$847$3$3 ==.
                           6266 ;	apps/mdrip/mdrip.c:847: P0DIR = savedP0DIR;
   1F35 8D FD              6267 	mov	_P0DIR,r5
                    190F   6268 	C$mdrip.c$848$3$3 ==.
                           6269 ;	apps/mdrip/mdrip.c:848: P1SEL = savedP1SEL;
   1F37 78 4D              6270 	mov	r0,#_goToSleep_savedP1SEL_3_3
   1F39 E2                 6271 	movx	a,@r0
   1F3A F5 F4              6272 	mov	_P1SEL,a
                    1914   6273 	C$mdrip.c$849$3$3 ==.
                           6274 ;	apps/mdrip/mdrip.c:849: P1DIR = savedP1DIR;
   1F3C 78 4E              6275 	mov	r0,#_goToSleep_savedP1DIR_3_3
   1F3E E2                 6276 	movx	a,@r0
   1F3F F5 FE              6277 	mov	_P1DIR,a
                    1919   6278 	C$mdrip.c$850$3$3 ==.
                           6279 ;	apps/mdrip/mdrip.c:850: USBPOW = 1;
   1F41 90 DE 01           6280 	mov	dptr,#_USBPOW
   1F44 74 01              6281 	mov	a,#0x01
   1F46 F0                 6282 	movx	@dptr,a
                    191F   6283 	C$mdrip.c$851$3$3 ==.
                           6284 ;	apps/mdrip/mdrip.c:851: USBCIE = 0b0111;
   1F47 90 DE 0B           6285 	mov	dptr,#_USBCIE
   1F4A 74 07              6286 	mov	a,#0x07
   1F4C F0                 6287 	movx	@dptr,a
   1F4D 02 1F DD           6288 	ljmp	00120$
   1F50                    6289 00117$:
                    1928   6290 	C$mdrip.c$853$3$8 ==.
                           6291 ;	apps/mdrip/mdrip.c:853: uint32 start_waiting = getMs();
   1F50 12 45 AC           6292 	lcall	_getMs
   1F53 78 4F              6293 	mov	r0,#_goToSleep_start_waiting_3_8
   1F55 C0 E0              6294 	push	acc
   1F57 E5 82              6295 	mov	a,dpl
   1F59 F2                 6296 	movx	@r0,a
   1F5A 08                 6297 	inc	r0
   1F5B E5 83              6298 	mov	a,dph
   1F5D F2                 6299 	movx	@r0,a
   1F5E 08                 6300 	inc	r0
   1F5F E5 F0              6301 	mov	a,b
   1F61 F2                 6302 	movx	@r0,a
   1F62 D0 E0              6303 	pop	acc
   1F64 08                 6304 	inc	r0
   1F65 F2                 6305 	movx	@r0,a
                    193E   6306 	C$mdrip.c$854$3$8 ==.
                           6307 ;	apps/mdrip/mdrip.c:854: if(!usbEnabled) {
   1F66 20 06 0B           6308 	jb	_usbEnabled,00112$
                    1941   6309 	C$mdrip.c$855$4$9 ==.
                           6310 ;	apps/mdrip/mdrip.c:855: usbDeviceState = USB_STATE_POWERED;
   1F69 90 F9 2B           6311 	mov	dptr,#_usbDeviceState
   1F6C 74 02              6312 	mov	a,#0x02
   1F6E F0                 6313 	movx	@dptr,a
                    1947   6314 	C$mdrip.c$856$4$9 ==.
                           6315 ;	apps/mdrip/mdrip.c:856: enableUsbPullup();
   1F6F 12 3A 73           6316 	lcall	_enableUsbPullup
                    194A   6317 	C$mdrip.c$857$4$9 ==.
                           6318 ;	apps/mdrip/mdrip.c:857: usbEnabled = 1;
   1F72 D2 06              6319 	setb	_usbEnabled
   1F74                    6320 00112$:
                    194C   6321 	C$mdrip.c$859$3$8 ==.
                           6322 ;	apps/mdrip/mdrip.c:859: delayMs(100);
   1F74 90 00 64           6323 	mov	dptr,#0x0064
   1F77 12 45 D8           6324 	lcall	_delayMs
                    1952   6325 	C$mdrip.c$860$3$8 ==.
                           6326 ;	apps/mdrip/mdrip.c:860: while((getMs() - start_waiting) < (seconds * 1000)) {
   1F7A 90 F4 1D           6327 	mov	dptr,#_goToSleep_seconds_1_1
   1F7D E0                 6328 	movx	a,@dptr
   1F7E FA                 6329 	mov	r2,a
   1F7F A3                 6330 	inc	dptr
   1F80 E0                 6331 	movx	a,@dptr
   1F81 FB                 6332 	mov	r3,a
   1F82 78 A4              6333 	mov	r0,#__mulint_PARM_2
   1F84 EA                 6334 	mov	a,r2
   1F85 F2                 6335 	movx	@r0,a
   1F86 08                 6336 	inc	r0
   1F87 EB                 6337 	mov	a,r3
   1F88 F2                 6338 	movx	@r0,a
   1F89 90 03 E8           6339 	mov	dptr,#0x03E8
   1F8C 12 3A 79           6340 	lcall	__mulint
   1F8F 85 82 38           6341 	mov	_goToSleep_sloc0_1_0,dpl
   1F92 85 83 39           6342 	mov	(_goToSleep_sloc0_1_0 + 1),dph
   1F95                    6343 00113$:
   1F95 12 45 AC           6344 	lcall	_getMs
   1F98 AC 82              6345 	mov	r4,dpl
   1F9A AD 83              6346 	mov	r5,dph
   1F9C AE F0              6347 	mov	r6,b
   1F9E FF                 6348 	mov	r7,a
   1F9F 78 4F              6349 	mov	r0,#_goToSleep_start_waiting_3_8
   1FA1 D3                 6350 	setb	c
   1FA2 E2                 6351 	movx	a,@r0
   1FA3 9C                 6352 	subb	a,r4
   1FA4 F4                 6353 	cpl	a
   1FA5 B3                 6354 	cpl	c
   1FA6 F5 3A              6355 	mov	_goToSleep_sloc1_1_0,a
   1FA8 B3                 6356 	cpl	c
   1FA9 08                 6357 	inc	r0
   1FAA E2                 6358 	movx	a,@r0
   1FAB 9D                 6359 	subb	a,r5
   1FAC F4                 6360 	cpl	a
   1FAD B3                 6361 	cpl	c
   1FAE F5 3B              6362 	mov	(_goToSleep_sloc1_1_0 + 1),a
   1FB0 B3                 6363 	cpl	c
   1FB1 08                 6364 	inc	r0
   1FB2 E2                 6365 	movx	a,@r0
   1FB3 9E                 6366 	subb	a,r6
   1FB4 F4                 6367 	cpl	a
   1FB5 B3                 6368 	cpl	c
   1FB6 F5 3C              6369 	mov	(_goToSleep_sloc1_1_0 + 2),a
   1FB8 B3                 6370 	cpl	c
   1FB9 08                 6371 	inc	r0
   1FBA E2                 6372 	movx	a,@r0
   1FBB 9F                 6373 	subb	a,r7
   1FBC F4                 6374 	cpl	a
   1FBD F5 3D              6375 	mov	(_goToSleep_sloc1_1_0 + 3),a
   1FBF AA 38              6376 	mov	r2,_goToSleep_sloc0_1_0
   1FC1 E5 39              6377 	mov	a,(_goToSleep_sloc0_1_0 + 1)
   1FC3 FB                 6378 	mov	r3,a
   1FC4 33                 6379 	rlc	a
   1FC5 95 E0              6380 	subb	a,acc
   1FC7 FE                 6381 	mov	r6,a
   1FC8 FF                 6382 	mov	r7,a
   1FC9 C3                 6383 	clr	c
   1FCA E5 3A              6384 	mov	a,_goToSleep_sloc1_1_0
   1FCC 9A                 6385 	subb	a,r2
   1FCD E5 3B              6386 	mov	a,(_goToSleep_sloc1_1_0 + 1)
   1FCF 9B                 6387 	subb	a,r3
   1FD0 E5 3C              6388 	mov	a,(_goToSleep_sloc1_1_0 + 2)
   1FD2 9E                 6389 	subb	a,r6
   1FD3 E5 3D              6390 	mov	a,(_goToSleep_sloc1_1_0 + 3)
   1FD5 9F                 6391 	subb	a,r7
   1FD6 50 05              6392 	jnc	00120$
                    19B0   6393 	C$mdrip.c$861$4$10 ==.
                           6394 ;	apps/mdrip/mdrip.c:861: doServices();
   1FD8 12 09 9B           6395 	lcall	_doServices
   1FDB 80 B8              6396 	sjmp	00113$
   1FDD                    6397 00120$:
                    19B5   6398 	C$mdrip.c$865$1$1 ==.
                           6399 ;	apps/mdrip/mdrip.c:865: makeAllOutputs();
   1FDD 12 1D 88           6400 	lcall	_makeAllOutputs
                    19B8   6401 	C$mdrip.c$866$1$1 ==.
                    19B8   6402 	XG$goToSleep$0$0 ==.
   1FE0 22                 6403 	ret
                           6404 ;------------------------------------------------------------
                           6405 ;Allocation info for local variables in function 'putchar'
                           6406 ;------------------------------------------------------------
                           6407 ;c                         Allocated with name '_putchar_c_1_1'
                           6408 ;------------------------------------------------------------
                    19B9   6409 	G$putchar$0$0 ==.
                    19B9   6410 	C$mdrip.c$869$1$1 ==.
                           6411 ;	apps/mdrip/mdrip.c:869: void putchar(XDATA char c) {
                           6412 ;	-----------------------------------------
                           6413 ;	 function putchar
                           6414 ;	-----------------------------------------
   1FE1                    6415 _putchar:
   1FE1 E5 82              6416 	mov	a,dpl
   1FE3 90 F4 1F           6417 	mov	dptr,#_putchar_c_1_1
   1FE6 F0                 6418 	movx	@dptr,a
                    19BF   6419 	C$mdrip.c$870$1$1 ==.
                           6420 ;	apps/mdrip/mdrip.c:870: while(uart1TxAvailable() == 0) {								//  Loop until space in the TX buffer to send a character
   1FE7                    6421 00101$:
   1FE7 12 27 7E           6422 	lcall	_uart1TxAvailable
   1FEA E5 82              6423 	mov	a,dpl
   1FEC 70 08              6424 	jnz	00103$
                    19C6   6425 	C$mdrip.c$871$3$3 ==.
                           6426 ;	apps/mdrip/mdrip.c:871: LED_RED(1);													// Error Indicator
   1FEE 43 FF 02           6427 	orl	_P2DIR,#0x02
                    19C9   6428 	C$mdrip.c$872$2$2 ==.
                           6429 ;	apps/mdrip/mdrip.c:872: boardService();
   1FF1 12 39 AB           6430 	lcall	_boardService
   1FF4 80 F1              6431 	sjmp	00101$
   1FF6                    6432 00103$:
                    19CE   6433 	C$mdrip.c$874$1$1 ==.
                           6434 ;	apps/mdrip/mdrip.c:874: uart1TxSendByte(c);
   1FF6 90 F4 1F           6435 	mov	dptr,#_putchar_c_1_1
   1FF9 E0                 6436 	movx	a,@dptr
   1FFA FF                 6437 	mov	r7,a
   1FFB F5 82              6438 	mov	dpl,a
   1FFD C0 07              6439 	push	ar7
   1FFF 12 27 B9           6440 	lcall	_uart1TxSendByte
                    19DA   6441 	C$mdrip.c$875$1$1 ==.
                           6442 ;	apps/mdrip/mdrip.c:875: if (usbPowerPresent()) {
   2002 12 3A 62           6443 	lcall	_usbPowerPresent
   2005 D0 07              6444 	pop	ar7
   2007 50 1C              6445 	jnc	00108$
                    19E1   6446 	C$mdrip.c$876$2$4 ==.
                           6447 ;	apps/mdrip/mdrip.c:876: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
   2009                    6448 00104$:
   2009 C0 07              6449 	push	ar7
   200B 12 32 7B           6450 	lcall	_usbComTxAvailable
   200E E5 82              6451 	mov	a,dpl
   2010 D0 07              6452 	pop	ar7
   2012 70 09              6453 	jnz	00106$
                    19EC   6454 	C$mdrip.c$878$3$5 ==.
                           6455 ;	apps/mdrip/mdrip.c:878: boardService();
   2014 C0 07              6456 	push	ar7
   2016 12 39 AB           6457 	lcall	_boardService
   2019 D0 07              6458 	pop	ar7
   201B 80 EC              6459 	sjmp	00104$
   201D                    6460 00106$:
                    19F5   6461 	C$mdrip.c$880$2$4 ==.
                           6462 ;	apps/mdrip/mdrip.c:880: usbComTxSendByte(c);
   201D 8F 82              6463 	mov	dpl,r7
   201F 12 33 0D           6464 	lcall	_usbComTxSendByte
                    19FA   6465 	C$mdrip.c$881$2$4 ==.
                           6466 ;	apps/mdrip/mdrip.c:881: boardService();
   2022 12 39 AB           6467 	lcall	_boardService
   2025                    6468 00108$:
                    19FD   6469 	C$mdrip.c$883$2$6 ==.
                           6470 ;	apps/mdrip/mdrip.c:883: LED_RED(0);														// Error gone
   2025 AF FF              6471 	mov	r7,_P2DIR
   2027 53 07 FD           6472 	anl	ar7,#0xFD
   202A 8F FF              6473 	mov	_P2DIR,r7
                    1A04   6474 	C$mdrip.c$884$2$6 ==.
                    1A04   6475 	XG$putchar$0$0 ==.
   202C 22                 6476 	ret
                           6477 ;------------------------------------------------------------
                           6478 ;Allocation info for local variables in function 'printfUSB'
                           6479 ;------------------------------------------------------------
                           6480 ;length                    Allocated with name '_printfUSB_length_1_1'
                           6481 ;i                         Allocated with name '_printfUSB_i_1_1'
                           6482 ;------------------------------------------------------------
                    1A05   6483 	G$printfUSB$0$0 ==.
                    1A05   6484 	C$mdrip.c$886$2$6 ==.
                           6485 ;	apps/mdrip/mdrip.c:886: void printfUSB(char * stringForUSB) {
                           6486 ;	-----------------------------------------
                           6487 ;	 function printfUSB
                           6488 ;	-----------------------------------------
   202D                    6489 _printfUSB:
   202D AD 82              6490 	mov	r5,dpl
   202F AE 83              6491 	mov	r6,dph
   2031 AF F0              6492 	mov	r7,b
                    1A0B   6493 	C$mdrip.c$889$1$1 ==.
                           6494 ;	apps/mdrip/mdrip.c:889: if (usbPowerPresent()) {
   2033 C0 07              6495 	push	ar7
   2035 C0 06              6496 	push	ar6
   2037 C0 05              6497 	push	ar5
   2039 12 3A 62           6498 	lcall	_usbPowerPresent
   203C D0 05              6499 	pop	ar5
   203E D0 06              6500 	pop	ar6
   2040 D0 07              6501 	pop	ar7
   2042 40 03              6502 	jc	00117$
   2044 02 20 F1           6503 	ljmp	00110$
   2047                    6504 00117$:
                    1A1F   6505 	C$mdrip.c$891$2$2 ==.
                           6506 ;	apps/mdrip/mdrip.c:891: length = strlen(stringForUSB);
   2047 8D 82              6507 	mov	dpl,r5
   2049 8E 83              6508 	mov	dph,r6
   204B 8F F0              6509 	mov	b,r7
   204D C0 07              6510 	push	ar7
   204F C0 06              6511 	push	ar6
   2051 C0 05              6512 	push	ar5
   2053 12 50 F2           6513 	lcall	_strlen
   2056 AB 82              6514 	mov	r3,dpl
   2058 D0 05              6515 	pop	ar5
   205A D0 06              6516 	pop	ar6
   205C D0 07              6517 	pop	ar7
                    1A36   6518 	C$mdrip.c$892$2$2 ==.
                           6519 ;	apps/mdrip/mdrip.c:892: stringForUSB[length++] = ('/r');
   205E EB                 6520 	mov	a,r3
   205F 04                 6521 	inc	a
   2060 FC                 6522 	mov	r4,a
   2061 EB                 6523 	mov	a,r3
   2062 2D                 6524 	add	a,r5
   2063 F8                 6525 	mov	r0,a
   2064 E4                 6526 	clr	a
   2065 3E                 6527 	addc	a,r6
   2066 F9                 6528 	mov	r1,a
   2067 8F 02              6529 	mov	ar2,r7
   2069 88 82              6530 	mov	dpl,r0
   206B 89 83              6531 	mov	dph,r1
   206D 8A F0              6532 	mov	b,r2
   206F 74 2F              6533 	mov	a,#0x2F
   2071 12 30 67           6534 	lcall	__gptrput
                    1A4C   6535 	C$mdrip.c$893$2$2 ==.
                           6536 ;	apps/mdrip/mdrip.c:893: stringForUSB[length++] = ('/n');
   2074 0B                 6537 	inc	r3
   2075 0B                 6538 	inc	r3
   2076 EC                 6539 	mov	a,r4
   2077 2D                 6540 	add	a,r5
   2078 F9                 6541 	mov	r1,a
   2079 E4                 6542 	clr	a
   207A 3E                 6543 	addc	a,r6
   207B FA                 6544 	mov	r2,a
   207C 8F 04              6545 	mov	ar4,r7
   207E 89 82              6546 	mov	dpl,r1
   2080 8A 83              6547 	mov	dph,r2
   2082 8C F0              6548 	mov	b,r4
   2084 74 2F              6549 	mov	a,#0x2F
   2086 12 30 67           6550 	lcall	__gptrput
                    1A61   6551 	C$mdrip.c$895$2$1 ==.
                           6552 ;	apps/mdrip/mdrip.c:895: for(i = 0; i < length; ++i) {
   2089 7C 00              6553 	mov	r4,#0x00
   208B                    6554 00106$:
   208B C3                 6555 	clr	c
   208C EC                 6556 	mov	a,r4
   208D 9B                 6557 	subb	a,r3
   208E 50 61              6558 	jnc	00110$
                    1A68   6559 	C$mdrip.c$896$3$3 ==.
                           6560 ;	apps/mdrip/mdrip.c:896: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send each character
   2090                    6561 00101$:
   2090 C0 07              6562 	push	ar7
   2092 C0 06              6563 	push	ar6
   2094 C0 05              6564 	push	ar5
   2096 C0 04              6565 	push	ar4
   2098 C0 03              6566 	push	ar3
   209A 12 32 7B           6567 	lcall	_usbComTxAvailable
   209D E5 82              6568 	mov	a,dpl
   209F D0 03              6569 	pop	ar3
   20A1 D0 04              6570 	pop	ar4
   20A3 D0 05              6571 	pop	ar5
   20A5 D0 06              6572 	pop	ar6
   20A7 D0 07              6573 	pop	ar7
   20A9 70 19              6574 	jnz	00103$
                    1A83   6575 	C$mdrip.c$897$4$4 ==.
                           6576 ;	apps/mdrip/mdrip.c:897: doServices();
   20AB C0 07              6577 	push	ar7
   20AD C0 06              6578 	push	ar6
   20AF C0 05              6579 	push	ar5
   20B1 C0 04              6580 	push	ar4
   20B3 C0 03              6581 	push	ar3
   20B5 12 09 9B           6582 	lcall	_doServices
   20B8 D0 03              6583 	pop	ar3
   20BA D0 04              6584 	pop	ar4
   20BC D0 05              6585 	pop	ar5
   20BE D0 06              6586 	pop	ar6
   20C0 D0 07              6587 	pop	ar7
   20C2 80 CC              6588 	sjmp	00101$
   20C4                    6589 00103$:
                    1A9C   6590 	C$mdrip.c$899$3$3 ==.
                           6591 ;	apps/mdrip/mdrip.c:899: usbComTxSendByte(stringForUSB[i]);		
   20C4 EC                 6592 	mov	a,r4
   20C5 2D                 6593 	add	a,r5
   20C6 F8                 6594 	mov	r0,a
   20C7 E4                 6595 	clr	a
   20C8 3E                 6596 	addc	a,r6
   20C9 F9                 6597 	mov	r1,a
   20CA 8F 02              6598 	mov	ar2,r7
   20CC 88 82              6599 	mov	dpl,r0
   20CE 89 83              6600 	mov	dph,r1
   20D0 8A F0              6601 	mov	b,r2
   20D2 12 54 E8           6602 	lcall	__gptrget
   20D5 F5 82              6603 	mov	dpl,a
   20D7 C0 07              6604 	push	ar7
   20D9 C0 06              6605 	push	ar6
   20DB C0 05              6606 	push	ar5
   20DD C0 04              6607 	push	ar4
   20DF C0 03              6608 	push	ar3
   20E1 12 33 0D           6609 	lcall	_usbComTxSendByte
   20E4 D0 03              6610 	pop	ar3
   20E6 D0 04              6611 	pop	ar4
   20E8 D0 05              6612 	pop	ar5
   20EA D0 06              6613 	pop	ar6
   20EC D0 07              6614 	pop	ar7
                    1AC6   6615 	C$mdrip.c$895$2$2 ==.
                           6616 ;	apps/mdrip/mdrip.c:895: for(i = 0; i < length; ++i) {
   20EE 0C                 6617 	inc	r4
   20EF 80 9A              6618 	sjmp	00106$
   20F1                    6619 00110$:
                    1AC9   6620 	C$mdrip.c$904$2$1 ==.
                    1AC9   6621 	XG$printfUSB$0$0 ==.
   20F1 22                 6622 	ret
                           6623 ;------------------------------------------------------------
                           6624 ;Allocation info for local variables in function 'swap_channel'
                           6625 ;------------------------------------------------------------
                           6626 ;newFSCTRL0                Allocated with name '_swap_channel_PARM_2'
                           6627 ;channel                   Allocated with name '_swap_channel_channel_1_1'
                           6628 ;------------------------------------------------------------
                    1ACA   6629 	G$swap_channel$0$0 ==.
                    1ACA   6630 	C$mdrip.c$907$2$1 ==.
                           6631 ;	apps/mdrip/mdrip.c:907: void swap_channel(XDATA uint8 channel, XDATA uint8 newFSCTRL0) {
                           6632 ;	-----------------------------------------
                           6633 ;	 function swap_channel
                           6634 ;	-----------------------------------------
   20F2                    6635 _swap_channel:
   20F2 E5 82              6636 	mov	a,dpl
   20F4 90 F4 21           6637 	mov	dptr,#_swap_channel_channel_1_1
   20F7 F0                 6638 	movx	@dptr,a
                    1AD0   6639 	C$mdrip.c$908$1$1 ==.
                           6640 ;	apps/mdrip/mdrip.c:908: do {
   20F8                    6641 00101$:
                    1AD0   6642 	C$mdrip.c$909$2$2 ==.
                           6643 ;	apps/mdrip/mdrip.c:909: RFST = 4;   //SIDLE
   20F8 75 E1 04           6644 	mov	_RFST,#0x04
                    1AD3   6645 	C$mdrip.c$910$1$1 ==.
                           6646 ;	apps/mdrip/mdrip.c:910: } while (MARCSTATE != 0x01);
   20FB 90 DF 3B           6647 	mov	dptr,#_MARCSTATE
   20FE E0                 6648 	movx	a,@dptr
   20FF FF                 6649 	mov	r7,a
   2100 BF 01 F5           6650 	cjne	r7,#0x01,00101$
                    1ADB   6651 	C$mdrip.c$912$1$1 ==.
                           6652 ;	apps/mdrip/mdrip.c:912: FSCTRL0 = newFSCTRL0;
   2103 90 F4 20           6653 	mov	dptr,#_swap_channel_PARM_2
   2106 E0                 6654 	movx	a,@dptr
   2107 90 DF 08           6655 	mov	dptr,#_FSCTRL0
   210A F0                 6656 	movx	@dptr,a
                    1AE3   6657 	C$mdrip.c$913$1$1 ==.
                           6658 ;	apps/mdrip/mdrip.c:913: CHANNR = channel;
   210B 90 F4 21           6659 	mov	dptr,#_swap_channel_channel_1_1
   210E E0                 6660 	movx	a,@dptr
   210F 90 DF 06           6661 	mov	dptr,#_CHANNR
   2112 F0                 6662 	movx	@dptr,a
                    1AEB   6663 	C$mdrip.c$914$1$1 ==.
                           6664 ;	apps/mdrip/mdrip.c:914: RFST = 2;   //RX
   2113 75 E1 02           6665 	mov	_RFST,#0x02
                    1AEE   6666 	C$mdrip.c$915$1$1 ==.
                    1AEE   6667 	XG$swap_channel$0$0 ==.
   2116 22                 6668 	ret
                           6669 ;------------------------------------------------------------
                           6670 ;Allocation info for local variables in function 'strobe_radio'
                           6671 ;------------------------------------------------------------
                    1AEF   6672 	G$strobe_radio$0$0 ==.
                    1AEF   6673 	C$mdrip.c$917$1$1 ==.
                           6674 ;	apps/mdrip/mdrip.c:917: void strobe_radio(int radio_chan) {
                           6675 ;	-----------------------------------------
                           6676 ;	 function strobe_radio
                           6677 ;	-----------------------------------------
   2117                    6678 _strobe_radio:
   2117 AE 82              6679 	mov	r6,dpl
   2119 AF 83              6680 	mov	r7,dph
                    1AF3   6681 	C$mdrip.c$918$1$1 ==.
                           6682 ;	apps/mdrip/mdrip.c:918: radioMacInit();
   211B C0 07              6683 	push	ar7
   211D C0 06              6684 	push	ar6
   211F 12 2A E8           6685 	lcall	_radioMacInit
                    1AFA   6686 	C$mdrip.c$919$1$1 ==.
                           6687 ;	apps/mdrip/mdrip.c:919: MCSM1 = 0;
   2122 90 DF 13           6688 	mov	dptr,#_MCSM1
   2125 E4                 6689 	clr	a
   2126 F0                 6690 	movx	@dptr,a
                    1AFF   6691 	C$mdrip.c$920$1$1 ==.
                           6692 ;	apps/mdrip/mdrip.c:920: radioMacStrobe();
   2127 12 2A AA           6693 	lcall	_radioMacStrobe
   212A D0 06              6694 	pop	ar6
   212C D0 07              6695 	pop	ar7
                    1B06   6696 	C$mdrip.c$921$1$1 ==.
                           6697 ;	apps/mdrip/mdrip.c:921: swap_channel(nChannels[radio_chan], fOffset[radio_chan]);
   212E EE                 6698 	mov	a,r6
   212F 24 06              6699 	add	a,#_nChannels
   2131 F9                 6700 	mov	r1,a
   2132 E3                 6701 	movx	a,@r1
   2133 FD                 6702 	mov	r5,a
   2134 EE                 6703 	mov	a,r6
   2135 24 02              6704 	add	a,#_fOffset
   2137 F9                 6705 	mov	r1,a
   2138 E3                 6706 	movx	a,@r1
   2139 90 F4 20           6707 	mov	dptr,#_swap_channel_PARM_2
   213C F0                 6708 	movx	@dptr,a
   213D 8D 82              6709 	mov	dpl,r5
   213F 12 20 F2           6710 	lcall	_swap_channel
                    1B1A   6711 	C$mdrip.c$922$1$1 ==.
                    1B1A   6712 	XG$strobe_radio$0$0 ==.
   2142 22                 6713 	ret
                           6714 ;------------------------------------------------------------
                           6715 ;Allocation info for local variables in function 'WaitForPacket'
                           6716 ;------------------------------------------------------------
                           6717 ;sloc0                     Allocated with name '_WaitForPacket_sloc0_1_0'
                           6718 ;sloc1                     Allocated with name '_WaitForPacket_sloc1_1_0'
                           6719 ;sloc2                     Allocated with name '_WaitForPacket_sloc2_1_0'
                           6720 ;sloc3                     Allocated with name '_WaitForPacket_sloc3_1_0'
                           6721 ;sloc4                     Allocated with name '_WaitForPacket_sloc4_1_0'
                           6722 ;channel                   Allocated with name '_WaitForPacket_PARM_3'
                           6723 ;milliseconds              Allocated with name '_WaitForPacket_milliseconds_1_1'
                           6724 ;start                     Allocated with name '_WaitForPacket_start_1_1'
                           6725 ;i                         Allocated with name '_WaitForPacket_i_1_1'
                           6726 ;six_minutes               Allocated with name '_WaitForPacket_six_minutes_1_1'
                           6727 ;nRet                      Allocated with name '_WaitForPacket_nRet_1_1'
                           6728 ;transID                   Allocated with name '_WaitForPacket_transID_1_1'
                           6729 ;------------------------------------------------------------
                    1B1B   6730 	G$WaitForPacket$0$0 ==.
                    1B1B   6731 	C$mdrip.c$925$1$1 ==.
                           6732 ;	apps/mdrip/mdrip.c:925: int WaitForPacket(XDATA uint16 milliseconds, Dexcom_packet* pkt, XDATA uint8 channel) {
                           6733 ;	-----------------------------------------
                           6734 ;	 function WaitForPacket
                           6735 ;	-----------------------------------------
   2143                    6736 _WaitForPacket:
   2143 AF 83              6737 	mov	r7,dph
   2145 E5 82              6738 	mov	a,dpl
   2147 90 F4 23           6739 	mov	dptr,#_WaitForPacket_milliseconds_1_1
   214A F0                 6740 	movx	@dptr,a
   214B A3                 6741 	inc	dptr
   214C EF                 6742 	mov	a,r7
   214D F0                 6743 	movx	@dptr,a
                    1B26   6744 	C$mdrip.c$926$1$1 ==.
                           6745 ;	apps/mdrip/mdrip.c:926: XDATA uint32 start = getMs();
   214E 12 45 AC           6746 	lcall	_getMs
   2151 85 82 45           6747 	mov	_WaitForPacket_sloc3_1_0,dpl
   2154 85 83 46           6748 	mov	(_WaitForPacket_sloc3_1_0 + 1),dph
   2157 85 F0 47           6749 	mov	(_WaitForPacket_sloc3_1_0 + 2),b
   215A F5 48              6750 	mov	(_WaitForPacket_sloc3_1_0 + 3),a
                    1B34   6751 	C$mdrip.c$931$1$1 ==.
                           6752 ;	apps/mdrip/mdrip.c:931: XDATA char transID[] = "BLANK"; 	// Line added
   215C 90 F4 25           6753 	mov	dptr,#_WaitForPacket_transID_1_1
   215F 74 42              6754 	mov	a,#0x42
   2161 F0                 6755 	movx	@dptr,a
   2162 90 F4 26           6756 	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0001)
   2165 74 4C              6757 	mov	a,#0x4C
   2167 F0                 6758 	movx	@dptr,a
   2168 90 F4 27           6759 	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0002)
   216B 74 41              6760 	mov	a,#0x41
   216D F0                 6761 	movx	@dptr,a
   216E 90 F4 28           6762 	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0003)
   2171 74 4E              6763 	mov	a,#0x4E
   2173 F0                 6764 	movx	@dptr,a
   2174 90 F4 29           6765 	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0004)
   2177 74 4B              6766 	mov	a,#0x4B
   2179 F0                 6767 	movx	@dptr,a
   217A 90 F4 2A           6768 	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0005)
   217D E4                 6769 	clr	a
   217E F0                 6770 	movx	@dptr,a
                    1B57   6771 	C$mdrip.c$932$1$1 ==.
                           6772 ;	apps/mdrip/mdrip.c:932: swap_channel(nChannels[channel], fOffset[channel]);
   217F 90 F4 22           6773 	mov	dptr,#_WaitForPacket_PARM_3
   2182 E0                 6774 	movx	a,@dptr
   2183 FB                 6775 	mov	r3,a
   2184 24 06              6776 	add	a,#_nChannels
   2186 F9                 6777 	mov	r1,a
   2187 E3                 6778 	movx	a,@r1
   2188 F5 3E              6779 	mov	_WaitForPacket_sloc0_1_0,a
   218A EB                 6780 	mov	a,r3
   218B 24 02              6781 	add	a,#_fOffset
   218D F9                 6782 	mov	r1,a
   218E E3                 6783 	movx	a,@r1
   218F 90 F4 20           6784 	mov	dptr,#_swap_channel_PARM_2
   2192 F0                 6785 	movx	@dptr,a
   2193 85 3E 82           6786 	mov	dpl,_WaitForPacket_sloc0_1_0
   2196 C0 03              6787 	push	ar3
   2198 12 20 F2           6788 	lcall	_swap_channel
   219B D0 03              6789 	pop	ar3
                    1B75   6790 	C$mdrip.c$934$1$1 ==.
                           6791 ;	apps/mdrip/mdrip.c:934: while (!milliseconds || (getMs() - start) < milliseconds) {
   219D 90 F4 23           6792 	mov	dptr,#_WaitForPacket_milliseconds_1_1
   21A0 E0                 6793 	movx	a,@dptr
   21A1 F5 3F              6794 	mov	_WaitForPacket_sloc1_1_0,a
   21A3 A3                 6795 	inc	dptr
   21A4 E0                 6796 	movx	a,@dptr
   21A5 F5 40              6797 	mov	(_WaitForPacket_sloc1_1_0 + 1),a
   21A7 E4                 6798 	clr	a
   21A8 F5 41              6799 	mov	_WaitForPacket_sloc2_1_0,a
   21AA F5 42              6800 	mov	(_WaitForPacket_sloc2_1_0 + 1),a
   21AC F5 43              6801 	mov	(_WaitForPacket_sloc2_1_0 + 2),a
   21AE F5 44              6802 	mov	(_WaitForPacket_sloc2_1_0 + 3),a
   21B0                    6803 00115$:
   21B0 E5 3F              6804 	mov	a,_WaitForPacket_sloc1_1_0
   21B2 45 40              6805 	orl	a,(_WaitForPacket_sloc1_1_0 + 1)
   21B4 60 3D              6806 	jz	00116$
   21B6 C0 03              6807 	push	ar3
   21B8 12 45 AC           6808 	lcall	_getMs
   21BB AA 82              6809 	mov	r2,dpl
   21BD AB 83              6810 	mov	r3,dph
   21BF AE F0              6811 	mov	r6,b
   21C1 FF                 6812 	mov	r7,a
   21C2 EA                 6813 	mov	a,r2
   21C3 C3                 6814 	clr	c
   21C4 95 45              6815 	subb	a,_WaitForPacket_sloc3_1_0
   21C6 F5 49              6816 	mov	_WaitForPacket_sloc4_1_0,a
   21C8 EB                 6817 	mov	a,r3
   21C9 95 46              6818 	subb	a,(_WaitForPacket_sloc3_1_0 + 1)
   21CB F5 4A              6819 	mov	(_WaitForPacket_sloc4_1_0 + 1),a
   21CD EE                 6820 	mov	a,r6
   21CE 95 47              6821 	subb	a,(_WaitForPacket_sloc3_1_0 + 2)
   21D0 F5 4B              6822 	mov	(_WaitForPacket_sloc4_1_0 + 2),a
   21D2 EF                 6823 	mov	a,r7
   21D3 95 48              6824 	subb	a,(_WaitForPacket_sloc3_1_0 + 3)
   21D5 F5 4C              6825 	mov	(_WaitForPacket_sloc4_1_0 + 3),a
   21D7 AC 3F              6826 	mov	r4,_WaitForPacket_sloc1_1_0
   21D9 AD 40              6827 	mov	r5,(_WaitForPacket_sloc1_1_0 + 1)
   21DB 7E 00              6828 	mov	r6,#0x00
   21DD 7F 00              6829 	mov	r7,#0x00
   21DF C3                 6830 	clr	c
   21E0 E5 49              6831 	mov	a,_WaitForPacket_sloc4_1_0
   21E2 9C                 6832 	subb	a,r4
   21E3 E5 4A              6833 	mov	a,(_WaitForPacket_sloc4_1_0 + 1)
   21E5 9D                 6834 	subb	a,r5
   21E6 E5 4B              6835 	mov	a,(_WaitForPacket_sloc4_1_0 + 2)
   21E8 9E                 6836 	subb	a,r6
   21E9 E5 4C              6837 	mov	a,(_WaitForPacket_sloc4_1_0 + 3)
   21EB 9F                 6838 	subb	a,r7
   21EC D0 03              6839 	pop	ar3
   21EE 40 03              6840 	jc	00128$
   21F0 02 23 A7           6841 	ljmp	00117$
   21F3                    6842 00128$:
   21F3                    6843 00116$:
                    1BCB   6844 	C$mdrip.c$935$2$2 ==.
                           6845 ;	apps/mdrip/mdrip.c:935: doServices();
   21F3 C0 03              6846 	push	ar3
   21F5 12 09 9B           6847 	lcall	_doServices
                    1BD0   6848 	C$mdrip.c$936$2$2 ==.
                           6849 ;	apps/mdrip/mdrip.c:936: blink_yellow_led();
   21F8 12 06 7B           6850 	lcall	_blink_yellow_led
   21FB D0 03              6851 	pop	ar3
                    1BD5   6852 	C$mdrip.c$937$2$2 ==.
                           6853 ;	apps/mdrip/mdrip.c:937: i++;
   21FD 05 41              6854 	inc	_WaitForPacket_sloc2_1_0
   21FF E4                 6855 	clr	a
   2200 B5 41 0C           6856 	cjne	a,_WaitForPacket_sloc2_1_0,00129$
   2203 05 42              6857 	inc	(_WaitForPacket_sloc2_1_0 + 1)
   2205 B5 42 07           6858 	cjne	a,(_WaitForPacket_sloc2_1_0 + 1),00129$
   2208 05 43              6859 	inc	(_WaitForPacket_sloc2_1_0 + 2)
   220A B5 43 02           6860 	cjne	a,(_WaitForPacket_sloc2_1_0 + 2),00129$
   220D 05 44              6861 	inc	(_WaitForPacket_sloc2_1_0 + 3)
   220F                    6862 00129$:
                    1BE7   6863 	C$mdrip.c$938$1$1 ==.
                           6864 ;	apps/mdrip/mdrip.c:938: if(!(i % 40000)) {
   220F 78 58              6865 	mov	r0,#__modulong_PARM_2
   2211 74 40              6866 	mov	a,#0x40
   2213 F2                 6867 	movx	@r0,a
   2214 08                 6868 	inc	r0
   2215 74 9C              6869 	mov	a,#0x9C
   2217 F2                 6870 	movx	@r0,a
   2218 08                 6871 	inc	r0
   2219 E4                 6872 	clr	a
   221A F2                 6873 	movx	@r0,a
   221B 08                 6874 	inc	r0
   221C F2                 6875 	movx	@r0,a
   221D 85 41 82           6876 	mov	dpl,_WaitForPacket_sloc2_1_0
   2220 85 42 83           6877 	mov	dph,(_WaitForPacket_sloc2_1_0 + 1)
   2223 85 43 F0           6878 	mov	b,(_WaitForPacket_sloc2_1_0 + 2)
   2226 E5 44              6879 	mov	a,(_WaitForPacket_sloc2_1_0 + 3)
   2228 C0 03              6880 	push	ar3
   222A 12 28 A6           6881 	lcall	__modulong
   222D AC 82              6882 	mov	r4,dpl
   222F AD 83              6883 	mov	r5,dph
   2231 AE F0              6884 	mov	r6,b
   2233 FF                 6885 	mov	r7,a
   2234 D0 03              6886 	pop	ar3
   2236 EC                 6887 	mov	a,r4
   2237 4D                 6888 	orl	a,r5
   2238 4E                 6889 	orl	a,r6
   2239 4F                 6890 	orl	a,r7
                    1C12   6891 	C$mdrip.c$939$3$3 ==.
                           6892 ;	apps/mdrip/mdrip.c:939: strobe_radio(channel);
   223A 70 0E              6893 	jnz	00102$
   223C 8B 06              6894 	mov	ar6,r3
   223E FF                 6895 	mov	r7,a
   223F 8E 82              6896 	mov	dpl,r6
   2241 8F 83              6897 	mov	dph,r7
   2243 C0 03              6898 	push	ar3
   2245 12 21 17           6899 	lcall	_strobe_radio
   2248 D0 03              6900 	pop	ar3
   224A                    6901 00102$:
                    1C22   6902 	C$mdrip.c$941$2$2 ==.
                           6903 ;	apps/mdrip/mdrip.c:941: if(getMs() - start > six_minutes) {
   224A C0 03              6904 	push	ar3
   224C 12 45 AC           6905 	lcall	_getMs
   224F AC 82              6906 	mov	r4,dpl
   2251 AD 83              6907 	mov	r5,dph
   2253 AE F0              6908 	mov	r6,b
   2255 FF                 6909 	mov	r7,a
   2256 D0 03              6910 	pop	ar3
   2258 EC                 6911 	mov	a,r4
   2259 C3                 6912 	clr	c
   225A 95 45              6913 	subb	a,_WaitForPacket_sloc3_1_0
   225C FC                 6914 	mov	r4,a
   225D ED                 6915 	mov	a,r5
   225E 95 46              6916 	subb	a,(_WaitForPacket_sloc3_1_0 + 1)
   2260 FD                 6917 	mov	r5,a
   2261 EE                 6918 	mov	a,r6
   2262 95 47              6919 	subb	a,(_WaitForPacket_sloc3_1_0 + 2)
   2264 FE                 6920 	mov	r6,a
   2265 EF                 6921 	mov	a,r7
   2266 95 48              6922 	subb	a,(_WaitForPacket_sloc3_1_0 + 3)
   2268 FF                 6923 	mov	r7,a
   2269 C3                 6924 	clr	c
   226A 74 40              6925 	mov	a,#0x40
   226C 9C                 6926 	subb	a,r4
   226D 74 7E              6927 	mov	a,#0x7E
   226F 9D                 6928 	subb	a,r5
   2270 74 05              6929 	mov	a,#0x05
   2272 9E                 6930 	subb	a,r6
   2273 E4                 6931 	clr	a
   2274 9F                 6932 	subb	a,r7
   2275 50 0D              6933 	jnc	00104$
                    1C4F   6934 	C$mdrip.c$942$3$4 ==.
                           6935 ;	apps/mdrip/mdrip.c:942: killWithWatchdog();
   2277 C0 03              6936 	push	ar3
   2279 12 1E 02           6937 	lcall	_killWithWatchdog
                    1C54   6938 	C$mdrip.c$943$3$4 ==.
                           6939 ;	apps/mdrip/mdrip.c:943: delayMs(2000);
   227C 90 07 D0           6940 	mov	dptr,#0x07D0
   227F 12 45 D8           6941 	lcall	_delayMs
   2282 D0 03              6942 	pop	ar3
   2284                    6943 00104$:
                    1C5C   6944 	C$mdrip.c$945$2$2 ==.
                           6945 ;	apps/mdrip/mdrip.c:945: if (packet = radioQueueRxCurrentPacket()) {
   2284 C0 03              6946 	push	ar3
   2286 12 2D 2D           6947 	lcall	_radioQueueRxCurrentPacket
   2289 AE 82              6948 	mov	r6,dpl
   228B AF 83              6949 	mov	r7,dph
   228D D0 03              6950 	pop	ar3
   228F 8E 04              6951 	mov	ar4,r6
   2291 8F 05              6952 	mov	ar5,r7
   2293 EE                 6953 	mov	a,r6
   2294 4F                 6954 	orl	a,r7
   2295 70 03              6955 	jnz	00132$
   2297 02 21 B0           6956 	ljmp	00115$
   229A                    6957 00132$:
                    1C72   6958 	C$mdrip.c$946$3$5 ==.
                           6959 ;	apps/mdrip/mdrip.c:946: uint8 len = packet[0];
   229A 8C 82              6960 	mov	dpl,r4
   229C 8D 83              6961 	mov	dph,r5
   229E E0                 6962 	movx	a,@dptr
   229F FF                 6963 	mov	r7,a
                    1C78   6964 	C$mdrip.c$947$3$5 ==.
                           6965 ;	apps/mdrip/mdrip.c:947: fOffset[channel] += FREQEST;
   22A0 EB                 6966 	mov	a,r3
   22A1 24 02              6967 	add	a,#_fOffset
   22A3 F9                 6968 	mov	r1,a
   22A4 E3                 6969 	movx	a,@r1
   22A5 FE                 6970 	mov	r6,a
   22A6 90 DF 38           6971 	mov	dptr,#_FREQEST
   22A9 E0                 6972 	movx	a,@dptr
   22AA 2E                 6973 	add	a,r6
   22AB F3                 6974 	movx	@r1,a
                    1C84   6975 	C$mdrip.c$948$1$1 ==.
                           6976 ;	apps/mdrip/mdrip.c:948: memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
   22AC C0 03              6977 	push	ar3
   22AE 78 53              6978 	mov	r0,#_WaitForPacket_PARM_2
   22B0 E2                 6979 	movx	a,@r0
   22B1 FA                 6980 	mov	r2,a
   22B2 08                 6981 	inc	r0
   22B3 E2                 6982 	movx	a,@r0
   22B4 FB                 6983 	mov	r3,a
   22B5 7E 00              6984 	mov	r6,#0x00
   22B7 8C 49              6985 	mov	_WaitForPacket_sloc4_1_0,r4
   22B9 8D 4A              6986 	mov	(_WaitForPacket_sloc4_1_0 + 1),r5
   22BB 75 4B 00           6987 	mov	(_WaitForPacket_sloc4_1_0 + 2),#0x00
   22BE 74 02              6988 	mov	a,#0x02
   22C0 2F                 6989 	add	a,r7
   22C1 F5 82              6990 	mov	dpl,a
   22C3 78 40              6991 	mov	r0,#_min8_PARM_2
   22C5 74 15              6992 	mov	a,#0x15
   22C7 F2                 6993 	movx	@r0,a
   22C8 C0 06              6994 	push	ar6
   22CA C0 03              6995 	push	ar3
   22CC C0 02              6996 	push	ar2
   22CE 12 07 7D           6997 	lcall	_min8
   22D1 AF 82              6998 	mov	r7,dpl
   22D3 D0 02              6999 	pop	ar2
   22D5 D0 03              7000 	pop	ar3
   22D7 D0 06              7001 	pop	ar6
   22D9 78 77              7002 	mov	r0,#_memcpy_PARM_3
   22DB EF                 7003 	mov	a,r7
   22DC F2                 7004 	movx	@r0,a
   22DD 08                 7005 	inc	r0
   22DE E4                 7006 	clr	a
   22DF F2                 7007 	movx	@r0,a
   22E0 78 74              7008 	mov	r0,#_memcpy_PARM_2
   22E2 E5 49              7009 	mov	a,_WaitForPacket_sloc4_1_0
   22E4 F2                 7010 	movx	@r0,a
   22E5 08                 7011 	inc	r0
   22E6 E5 4A              7012 	mov	a,(_WaitForPacket_sloc4_1_0 + 1)
   22E8 F2                 7013 	movx	@r0,a
   22E9 08                 7014 	inc	r0
   22EA E5 4B              7015 	mov	a,(_WaitForPacket_sloc4_1_0 + 2)
   22EC F2                 7016 	movx	@r0,a
   22ED 8A 82              7017 	mov	dpl,r2
   22EF 8B 83              7018 	mov	dph,r3
   22F1 8E F0              7019 	mov	b,r6
   22F3 C0 03              7020 	push	ar3
   22F5 12 2E 7C           7021 	lcall	_memcpy
                    1CD0   7022 	C$mdrip.c$949$3$5 ==.
                           7023 ;	apps/mdrip/mdrip.c:949: if(radioCrcPassed()) {
   22F8 12 48 C4           7024 	lcall	_radioCrcPassed
   22FB D0 03              7025 	pop	ar3
   22FD D0 03              7026 	pop	ar3
   22FF 40 03              7027 	jc	00133$
   2301 02 23 98           7028 	ljmp	00110$
   2304                    7029 00133$:
                    1CDC   7030 	C$mdrip.c$950$1$1 ==.
                           7031 ;	apps/mdrip/mdrip.c:950: dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
   2304 C0 03              7032 	push	ar3
   2306 78 53              7033 	mov	r0,#_WaitForPacket_PARM_2
   2308 E2                 7034 	movx	a,@r0
   2309 FE                 7035 	mov	r6,a
   230A 08                 7036 	inc	r0
   230B E2                 7037 	movx	a,@r0
   230C FF                 7038 	mov	r7,a
   230D 8E 82              7039 	mov	dpl,r6
   230F 8F 83              7040 	mov	dph,r7
   2311 A3                 7041 	inc	dptr
   2312 A3                 7042 	inc	dptr
   2313 A3                 7043 	inc	dptr
   2314 A3                 7044 	inc	dptr
   2315 A3                 7045 	inc	dptr
   2316 E0                 7046 	movx	a,@dptr
   2317 FA                 7047 	mov	r2,a
   2318 A3                 7048 	inc	dptr
   2319 E0                 7049 	movx	a,@dptr
   231A FB                 7050 	mov	r3,a
   231B A3                 7051 	inc	dptr
   231C E0                 7052 	movx	a,@dptr
   231D FC                 7053 	mov	r4,a
   231E A3                 7054 	inc	dptr
   231F E0                 7055 	movx	a,@dptr
   2320 FD                 7056 	mov	r5,a
   2321 90 F0 F6           7057 	mov	dptr,#_dexcom_src_to_ascii_PARM_2
   2324 74 25              7058 	mov	a,#_WaitForPacket_transID_1_1
   2326 F0                 7059 	movx	@dptr,a
   2327 A3                 7060 	inc	dptr
   2328 74 F4              7061 	mov	a,#(_WaitForPacket_transID_1_1 >> 8)
   232A F0                 7062 	movx	@dptr,a
   232B 8A 82              7063 	mov	dpl,r2
   232D 8B 83              7064 	mov	dph,r3
   232F 8C F0              7065 	mov	b,r4
   2331 ED                 7066 	mov	a,r5
   2332 C0 07              7067 	push	ar7
   2334 C0 06              7068 	push	ar6
   2336 C0 03              7069 	push	ar3
   2338 12 08 3F           7070 	lcall	_dexcom_src_to_ascii
                    1D13   7071 	C$mdrip.c$953$4$6 ==.
                           7072 ;	apps/mdrip/mdrip.c:953: if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
   233B 78 B2              7073 	mov	r0,#_strcmp_PARM_2
   233D 74 B9              7074 	mov	a,#_transmitter_id
   233F F2                 7075 	movx	@r0,a
   2340 08                 7076 	inc	r0
   2341 74 F8              7077 	mov	a,#(_transmitter_id >> 8)
   2343 F2                 7078 	movx	@r0,a
   2344 08                 7079 	inc	r0
   2345 E4                 7080 	clr	a
   2346 F2                 7081 	movx	@r0,a
   2347 90 F4 25           7082 	mov	dptr,#_WaitForPacket_transID_1_1
   234A 75 F0 00           7083 	mov	b,#0x00
   234D 12 43 9D           7084 	lcall	_strcmp
   2350 E5 82              7085 	mov	a,dpl
   2352 85 83 F0           7086 	mov	b,dph
   2355 D0 03              7087 	pop	ar3
   2357 D0 06              7088 	pop	ar6
   2359 D0 07              7089 	pop	ar7
   235B D0 03              7090 	pop	ar3
   235D 45 F0              7091 	orl	a,b
   235F 60 03              7092 	jz	00105$
   2361 20 00 2A           7093 	jb	_only_listen_for_my_transmitter,00106$
   2364                    7094 00105$:
                    1D3C   7095 	C$mdrip.c$954$5$7 ==.
                           7096 ;	apps/mdrip/mdrip.c:954: pkt->txId -= channel;
   2364 74 0B              7097 	mov	a,#0x0B
   2366 2E                 7098 	add	a,r6
   2367 FE                 7099 	mov	r6,a
   2368 E4                 7100 	clr	a
   2369 3F                 7101 	addc	a,r7
   236A FF                 7102 	mov	r7,a
   236B 8E 82              7103 	mov	dpl,r6
   236D 8F 83              7104 	mov	dph,r7
   236F E0                 7105 	movx	a,@dptr
   2370 C3                 7106 	clr	c
   2371 9B                 7107 	subb	a,r3
   2372 8E 82              7108 	mov	dpl,r6
   2374 8F 83              7109 	mov	dph,r7
   2376 F0                 7110 	movx	@dptr,a
                    1D4F   7111 	C$mdrip.c$955$5$7 ==.
                           7112 ;	apps/mdrip/mdrip.c:955: radioQueueRxDoneWithPacket();
   2377 C0 03              7113 	push	ar3
   2379 12 2D 48           7114 	lcall	_radioQueueRxDoneWithPacket
   237C D0 03              7115 	pop	ar3
                    1D56   7116 	C$mdrip.c$956$6$8 ==.
                           7117 ;	apps/mdrip/mdrip.c:956: LED_YELLOW(0);
   237E AF FF              7118 	mov	r7,_P2DIR
   2380 53 07 FB           7119 	anl	ar7,#0xFB
   2383 8F FF              7120 	mov	_P2DIR,r7
                    1D5D   7121 	C$mdrip.c$957$5$7 ==.
                           7122 ;	apps/mdrip/mdrip.c:957: last_catch_channel = channel;
   2385 78 3A              7123 	mov	r0,#_last_catch_channel
   2387 EB                 7124 	mov	a,r3
   2388 F2                 7125 	movx	@r0,a
                    1D61   7126 	C$mdrip.c$958$5$7 ==.
                           7127 ;	apps/mdrip/mdrip.c:958: return 1;
   2389 90 00 01           7128 	mov	dptr,#0x0001
   238C 80 23              7129 	sjmp	00118$
   238E                    7130 00106$:
                    1D66   7131 	C$mdrip.c$960$5$9 ==.
                           7132 ;	apps/mdrip/mdrip.c:960: radioQueueRxDoneWithPacket();
   238E C0 03              7133 	push	ar3
   2390 12 2D 48           7134 	lcall	_radioQueueRxDoneWithPacket
   2393 D0 03              7135 	pop	ar3
   2395 02 21 B0           7136 	ljmp	00115$
   2398                    7137 00110$:
                    1D70   7138 	C$mdrip.c$963$4$10 ==.
                           7139 ;	apps/mdrip/mdrip.c:963: radioQueueRxDoneWithPacket();
   2398 12 2D 48           7140 	lcall	_radioQueueRxDoneWithPacket
                    1D73   7141 	C$mdrip.c$964$5$11 ==.
                           7142 ;	apps/mdrip/mdrip.c:964: LED_YELLOW(0);
   239B AF FF              7143 	mov	r7,_P2DIR
   239D 53 07 FB           7144 	anl	ar7,#0xFB
   23A0 8F FF              7145 	mov	_P2DIR,r7
                    1D7A   7146 	C$mdrip.c$965$4$10 ==.
                           7147 ;	apps/mdrip/mdrip.c:965: return 0;
   23A2 90 00 00           7148 	mov	dptr,#0x0000
   23A5 80 0A              7149 	sjmp	00118$
   23A7                    7150 00117$:
                    1D7F   7151 	C$mdrip.c$969$2$12 ==.
                           7152 ;	apps/mdrip/mdrip.c:969: LED_YELLOW(0);
   23A7 AF FF              7153 	mov	r7,_P2DIR
   23A9 53 07 FB           7154 	anl	ar7,#0xFB
   23AC 8F FF              7155 	mov	_P2DIR,r7
                    1D86   7156 	C$mdrip.c$970$1$1 ==.
                           7157 ;	apps/mdrip/mdrip.c:970: return nRet;
   23AE 90 00 00           7158 	mov	dptr,#0x0000
   23B1                    7159 00118$:
                    1D89   7160 	C$mdrip.c$971$1$1 ==.
                    1D89   7161 	XG$WaitForPacket$0$0 ==.
   23B1 22                 7162 	ret
                           7163 ;------------------------------------------------------------
                           7164 ;Allocation info for local variables in function 'delayFor'
                           7165 ;------------------------------------------------------------
                           7166 ;sloc0                     Allocated with name '_delayFor_sloc0_1_0'
                           7167 ;wait_chan                 Allocated with name '_delayFor_wait_chan_1_1'
                           7168 ;------------------------------------------------------------
                    1D8A   7169 	G$delayFor$0$0 ==.
                    1D8A   7170 	C$mdrip.c$973$1$1 ==.
                           7171 ;	apps/mdrip/mdrip.c:973: XDATA uint32 delayFor(XDATA int wait_chan) {
                           7172 ;	-----------------------------------------
                           7173 ;	 function delayFor
                           7174 ;	-----------------------------------------
   23B2                    7175 _delayFor:
   23B2 AF 83              7176 	mov	r7,dph
   23B4 E5 82              7177 	mov	a,dpl
   23B6 90 F4 2B           7178 	mov	dptr,#_delayFor_wait_chan_1_1
   23B9 F0                 7179 	movx	@dptr,a
   23BA A3                 7180 	inc	dptr
   23BB EF                 7181 	mov	a,r7
   23BC F0                 7182 	movx	@dptr,a
                    1D95   7183 	C$mdrip.c$974$1$1 ==.
                           7184 ;	apps/mdrip/mdrip.c:974: if(needsTimingCalibration) {
   23BD 30 05 29           7185 	jnb	_needsTimingCalibration,00102$
                    1D98   7186 	C$mdrip.c$975$2$2 ==.
                           7187 ;	apps/mdrip/mdrip.c:975: return delayedWaitTimes[wait_chan];
   23C0 90 F4 2B           7188 	mov	dptr,#_delayFor_wait_chan_1_1
   23C3 E0                 7189 	movx	a,@dptr
   23C4 FE                 7190 	mov	r6,a
   23C5 A3                 7191 	inc	dptr
   23C6 E0                 7192 	movx	a,@dptr
   23C7 CE                 7193 	xch	a,r6
   23C8 25 E0              7194 	add	a,acc
   23CA CE                 7195 	xch	a,r6
   23CB 33                 7196 	rlc	a
   23CC CE                 7197 	xch	a,r6
   23CD 25 E0              7198 	add	a,acc
   23CF CE                 7199 	xch	a,r6
   23D0 33                 7200 	rlc	a
   23D1 EE                 7201 	mov	a,r6
   23D2 24 1A              7202 	add	a,#_delayedWaitTimes
   23D4 F9                 7203 	mov	r1,a
   23D5 E3                 7204 	movx	a,@r1
   23D6 FC                 7205 	mov	r4,a
   23D7 09                 7206 	inc	r1
   23D8 E3                 7207 	movx	a,@r1
   23D9 FD                 7208 	mov	r5,a
   23DA 09                 7209 	inc	r1
   23DB E3                 7210 	movx	a,@r1
   23DC FE                 7211 	mov	r6,a
   23DD 09                 7212 	inc	r1
   23DE E3                 7213 	movx	a,@r1
   23DF FF                 7214 	mov	r7,a
   23E0 8C 82              7215 	mov	dpl,r4
   23E2 8D 83              7216 	mov	dph,r5
   23E4 8E F0              7217 	mov	b,r6
   23E6 02 24 74           7218 	ljmp	00107$
   23E9                    7219 00102$:
                    1DC1   7220 	C$mdrip.c$977$1$1 ==.
                           7221 ;	apps/mdrip/mdrip.c:977: if(!wait_chan && sequential_missed_packets) {
   23E9 90 F4 2B           7222 	mov	dptr,#_delayFor_wait_chan_1_1
   23EC E0                 7223 	movx	a,@dptr
   23ED FE                 7224 	mov	r6,a
   23EE A3                 7225 	inc	dptr
   23EF E0                 7226 	movx	a,@dptr
   23F0 FF                 7227 	mov	r7,a
   23F1 4E                 7228 	orl	a,r6
   23F2 70 60              7229 	jnz	00104$
   23F4 78 3E              7230 	mov	r0,#_sequential_missed_packets
   23F6 E2                 7231 	movx	a,@r0
   23F7 60 5B              7232 	jz	00104$
                    1DD1   7233 	C$mdrip.c$978$2$3 ==.
                           7234 ;	apps/mdrip/mdrip.c:978: return waitTimes[wait_chan] + (sequential_missed_packets * wake_earlier_for_next_miss * 2 * 1000);
   23F9 8E 04              7235 	mov	ar4,r6
   23FB EF                 7236 	mov	a,r7
   23FC CC                 7237 	xch	a,r4
   23FD 25 E0              7238 	add	a,acc
   23FF CC                 7239 	xch	a,r4
   2400 33                 7240 	rlc	a
   2401 CC                 7241 	xch	a,r4
   2402 25 E0              7242 	add	a,acc
   2404 CC                 7243 	xch	a,r4
   2405 33                 7244 	rlc	a
   2406 EC                 7245 	mov	a,r4
   2407 24 0A              7246 	add	a,#_waitTimes
   2409 F9                 7247 	mov	r1,a
   240A E3                 7248 	movx	a,@r1
   240B F5 4D              7249 	mov	_delayFor_sloc0_1_0,a
   240D 09                 7250 	inc	r1
   240E E3                 7251 	movx	a,@r1
   240F F5 4E              7252 	mov	(_delayFor_sloc0_1_0 + 1),a
   2411 09                 7253 	inc	r1
   2412 E3                 7254 	movx	a,@r1
   2413 F5 4F              7255 	mov	(_delayFor_sloc0_1_0 + 2),a
   2415 09                 7256 	inc	r1
   2416 E3                 7257 	movx	a,@r1
   2417 F5 50              7258 	mov	(_delayFor_sloc0_1_0 + 3),a
   2419 78 3E              7259 	mov	r0,#_sequential_missed_packets
   241B 79 00              7260 	mov	r1,#_wake_earlier_for_next_miss
   241D E2                 7261 	movx	a,@r0
   241E F5 F0              7262 	mov	b,a
   2420 E3                 7263 	movx	a,@r1
   2421 A4                 7264 	mul	ab
   2422 FC                 7265 	mov	r4,a
   2423 AD F0              7266 	mov	r5,b
   2425 78 A4              7267 	mov	r0,#__mulint_PARM_2
   2427 EC                 7268 	mov	a,r4
   2428 F2                 7269 	movx	@r0,a
   2429 08                 7270 	inc	r0
   242A ED                 7271 	mov	a,r5
   242B F2                 7272 	movx	@r0,a
   242C 90 07 D0           7273 	mov	dptr,#0x07D0
   242F 12 3A 79           7274 	lcall	__mulint
   2432 AC 82              7275 	mov	r4,dpl
   2434 E5 83              7276 	mov	a,dph
   2436 FD                 7277 	mov	r5,a
   2437 33                 7278 	rlc	a
   2438 95 E0              7279 	subb	a,acc
   243A FB                 7280 	mov	r3,a
   243B FA                 7281 	mov	r2,a
   243C EC                 7282 	mov	a,r4
   243D 25 4D              7283 	add	a,_delayFor_sloc0_1_0
   243F FC                 7284 	mov	r4,a
   2440 ED                 7285 	mov	a,r5
   2441 35 4E              7286 	addc	a,(_delayFor_sloc0_1_0 + 1)
   2443 FD                 7287 	mov	r5,a
   2444 EB                 7288 	mov	a,r3
   2445 35 4F              7289 	addc	a,(_delayFor_sloc0_1_0 + 2)
   2447 FB                 7290 	mov	r3,a
   2448 EA                 7291 	mov	a,r2
   2449 35 50              7292 	addc	a,(_delayFor_sloc0_1_0 + 3)
   244B FA                 7293 	mov	r2,a
   244C 8C 82              7294 	mov	dpl,r4
   244E 8D 83              7295 	mov	dph,r5
   2450 8B F0              7296 	mov	b,r3
   2452 80 20              7297 	sjmp	00107$
   2454                    7298 00104$:
                    1E2C   7299 	C$mdrip.c$980$2$4 ==.
                           7300 ;	apps/mdrip/mdrip.c:980: return waitTimes[wait_chan];
   2454 EF                 7301 	mov	a,r7
   2455 CE                 7302 	xch	a,r6
   2456 25 E0              7303 	add	a,acc
   2458 CE                 7304 	xch	a,r6
   2459 33                 7305 	rlc	a
   245A CE                 7306 	xch	a,r6
   245B 25 E0              7307 	add	a,acc
   245D CE                 7308 	xch	a,r6
   245E 33                 7309 	rlc	a
   245F EE                 7310 	mov	a,r6
   2460 24 0A              7311 	add	a,#_waitTimes
   2462 F9                 7312 	mov	r1,a
   2463 E3                 7313 	movx	a,@r1
   2464 FC                 7314 	mov	r4,a
   2465 09                 7315 	inc	r1
   2466 E3                 7316 	movx	a,@r1
   2467 FD                 7317 	mov	r5,a
   2468 09                 7318 	inc	r1
   2469 E3                 7319 	movx	a,@r1
   246A FE                 7320 	mov	r6,a
   246B 09                 7321 	inc	r1
   246C E3                 7322 	movx	a,@r1
   246D FF                 7323 	mov	r7,a
   246E 8C 82              7324 	mov	dpl,r4
   2470 8D 83              7325 	mov	dph,r5
   2472 8E F0              7326 	mov	b,r6
   2474                    7327 00107$:
                    1E4C   7328 	C$mdrip.c$982$1$1 ==.
                    1E4C   7329 	XG$delayFor$0$0 ==.
   2474 22                 7330 	ret
                           7331 ;------------------------------------------------------------
                           7332 ;Allocation info for local variables in function 'get_packet'
                           7333 ;------------------------------------------------------------
                    1E4D   7334 	G$get_packet$0$0 ==.
                    1E4D   7335 	C$mdrip.c$984$1$1 ==.
                           7336 ;	apps/mdrip/mdrip.c:984: BIT get_packet(Dexcom_packet* pPkt) {
                           7337 ;	-----------------------------------------
                           7338 ;	 function get_packet
                           7339 ;	-----------------------------------------
   2475                    7340 _get_packet:
   2475 AF 83              7341 	mov	r7,dph
   2477 E5 82              7342 	mov	a,dpl
   2479 78 55              7343 	mov	r0,#_get_packet_pPkt_1_1
   247B F2                 7344 	movx	@r0,a
   247C 08                 7345 	inc	r0
   247D EF                 7346 	mov	a,r7
   247E F2                 7347 	movx	@r0,a
                    1E57   7348 	C$mdrip.c$986$1$1 ==.
                           7349 ;	apps/mdrip/mdrip.c:986: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
   247F 90 F8 DB           7350 	mov	dptr,#_start_channel
   2482 E0                 7351 	movx	a,@dptr
   2483 FC                 7352 	mov	r4,a
   2484 33                 7353 	rlc	a
   2485 95 E0              7354 	subb	a,acc
   2487 FD                 7355 	mov	r5,a
   2488                    7356 00104$:
   2488 C3                 7357 	clr	c
   2489 EC                 7358 	mov	a,r4
   248A 94 04              7359 	subb	a,#0x04
   248C ED                 7360 	mov	a,r5
   248D 64 80              7361 	xrl	a,#0x80
   248F 94 80              7362 	subb	a,#0x80
   2491 50 4F              7363 	jnc	00107$
                    1E6B   7364 	C$mdrip.c$987$2$2 ==.
                           7365 ;	apps/mdrip/mdrip.c:987: switch(WaitForPacket(delayFor(nChannel), pPkt, nChannel)) {
   2493 8C 82              7366 	mov	dpl,r4
   2495 8D 83              7367 	mov	dph,r5
   2497 C0 05              7368 	push	ar5
   2499 C0 04              7369 	push	ar4
   249B 12 23 B2           7370 	lcall	_delayFor
   249E AA 82              7371 	mov	r2,dpl
   24A0 AB 83              7372 	mov	r3,dph
   24A2 D0 04              7373 	pop	ar4
   24A4 90 F4 22           7374 	mov	dptr,#_WaitForPacket_PARM_3
   24A7 EC                 7375 	mov	a,r4
   24A8 F0                 7376 	movx	@dptr,a
   24A9 78 55              7377 	mov	r0,#_get_packet_pPkt_1_1
   24AB 79 53              7378 	mov	r1,#_WaitForPacket_PARM_2
   24AD E2                 7379 	movx	a,@r0
   24AE F3                 7380 	movx	@r1,a
   24AF 08                 7381 	inc	r0
   24B0 E2                 7382 	movx	a,@r0
   24B1 09                 7383 	inc	r1
   24B2 F3                 7384 	movx	@r1,a
   24B3 8A 82              7385 	mov	dpl,r2
   24B5 8B 83              7386 	mov	dph,r3
   24B7 C0 04              7387 	push	ar4
   24B9 12 21 43           7388 	lcall	_WaitForPacket
   24BC AE 82              7389 	mov	r6,dpl
   24BE AF 83              7390 	mov	r7,dph
   24C0 D0 04              7391 	pop	ar4
   24C2 D0 05              7392 	pop	ar5
   24C4 BE 00 05           7393 	cjne	r6,#0x00,00118$
   24C7 BF 00 02           7394 	cjne	r7,#0x00,00118$
   24CA 80 0F              7395 	sjmp	00106$
   24CC                    7396 00118$:
   24CC BE 01 0C           7397 	cjne	r6,#0x01,00106$
   24CF BF 00 09           7398 	cjne	r7,#0x00,00106$
                    1EAA   7399 	C$mdrip.c$989$3$3 ==.
                           7400 ;	apps/mdrip/mdrip.c:989: needsTimingCalibration = 0;
   24D2 C2 05              7401 	clr	_needsTimingCalibration
                    1EAC   7402 	C$mdrip.c$990$3$3 ==.
                           7403 ;	apps/mdrip/mdrip.c:990: sequential_missed_packets = 0;
   24D4 78 3E              7404 	mov	r0,#_sequential_missed_packets
   24D6 E4                 7405 	clr	a
   24D7 F2                 7406 	movx	@r0,a
                    1EB0   7407 	C$mdrip.c$991$3$3 ==.
                           7408 ;	apps/mdrip/mdrip.c:991: return 1;
   24D8 D3                 7409 	setb	c
                    1EB1   7410 	C$mdrip.c$994$1$1 ==.
                           7411 ;	apps/mdrip/mdrip.c:994: }
   24D9 80 28              7412 	sjmp	00110$
   24DB                    7413 00106$:
                    1EB3   7414 	C$mdrip.c$986$1$1 ==.
                           7415 ;	apps/mdrip/mdrip.c:986: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
   24DB 0C                 7416 	inc	r4
   24DC BC 00 A9           7417 	cjne	r4,#0x00,00104$
   24DF 0D                 7418 	inc	r5
   24E0 80 A6              7419 	sjmp	00104$
   24E2                    7420 00107$:
                    1EBA   7421 	C$mdrip.c$996$1$1 ==.
                           7422 ;	apps/mdrip/mdrip.c:996: sequential_missed_packets ++;
   24E2 78 3E              7423 	mov	r0,#_sequential_missed_packets
   24E4 E2                 7424 	movx	a,@r0
   24E5 24 01              7425 	add	a,#0x01
   24E7 F2                 7426 	movx	@r0,a
                    1EC0   7427 	C$mdrip.c$997$1$1 ==.
                           7428 ;	apps/mdrip/mdrip.c:997: if(sequential_missed_packets > misses_until_failure) {
   24E8 78 3E              7429 	mov	r0,#_sequential_missed_packets
   24EA 79 01              7430 	mov	r1,#_misses_until_failure
   24EC C3                 7431 	clr	c
   24ED E2                 7432 	movx	a,@r0
   24EE F5 F0              7433 	mov	b,a
   24F0 E3                 7434 	movx	a,@r1
   24F1 95 F0              7435 	subb	a,b
   24F3 50 06              7436 	jnc	00109$
                    1ECD   7437 	C$mdrip.c$998$2$4 ==.
                           7438 ;	apps/mdrip/mdrip.c:998: sequential_missed_packets = 0;
   24F5 78 3E              7439 	mov	r0,#_sequential_missed_packets
   24F7 E4                 7440 	clr	a
   24F8 F2                 7441 	movx	@r0,a
                    1ED1   7442 	C$mdrip.c$999$2$4 ==.
                           7443 ;	apps/mdrip/mdrip.c:999: needsTimingCalibration = 1;
   24F9 D2 05              7444 	setb	_needsTimingCalibration
   24FB                    7445 00109$:
                    1ED3   7446 	C$mdrip.c$1001$1$1 ==.
                           7447 ;	apps/mdrip/mdrip.c:1001: reset_offsets();
   24FB 12 1D DA           7448 	lcall	_reset_offsets
                    1ED6   7449 	C$mdrip.c$1002$1$1 ==.
                           7450 ;	apps/mdrip/mdrip.c:1002: last_catch_channel = 0;
   24FE 78 3A              7451 	mov	r0,#_last_catch_channel
   2500 E4                 7452 	clr	a
   2501 F2                 7453 	movx	@r0,a
                    1EDA   7454 	C$mdrip.c$1003$1$1 ==.
                           7455 ;	apps/mdrip/mdrip.c:1003: return 0;
   2502 C3                 7456 	clr	c
   2503                    7457 00110$:
                    1EDB   7458 	C$mdrip.c$1004$1$1 ==.
                    1EDB   7459 	XG$get_packet$0$0 ==.
   2503 22                 7460 	ret
                           7461 ;------------------------------------------------------------
                           7462 ;Allocation info for local variables in function 'setADCInputs'
                           7463 ;------------------------------------------------------------
                    1EDC   7464 	G$setADCInputs$0$0 ==.
                    1EDC   7465 	C$mdrip.c$1006$1$1 ==.
                           7466 ;	apps/mdrip/mdrip.c:1006: void setADCInputs() {
                           7467 ;	-----------------------------------------
                           7468 ;	 function setADCInputs
                           7469 ;	-----------------------------------------
   2504                    7470 _setADCInputs:
                    1EDC   7471 	C$mdrip.c$1007$1$1 ==.
                           7472 ;	apps/mdrip/mdrip.c:1007: P0INP=0; //set pull resistors on pins 0_0 - 0_5 to low
   2504 75 8F 00           7473 	mov	_P0INP,#0x00
                    1EDF   7474 	C$mdrip.c$1008$1$1 ==.
                    1EDF   7475 	XG$setADCInputs$0$0 ==.
   2507 22                 7476 	ret
                           7477 ;------------------------------------------------------------
                           7478 ;Allocation info for local variables in function 'configBt'
                           7479 ;------------------------------------------------------------
                    1EE0   7480 	G$configBt$0$0 ==.
                    1EE0   7481 	C$mdrip.c$1010$1$1 ==.
                           7482 ;	apps/mdrip/mdrip.c:1010: void configBt() {
                           7483 ;	-----------------------------------------
                           7484 ;	 function configBt
                           7485 ;	-----------------------------------------
   2508                    7486 _configBt:
                    1EE0   7487 	C$mdrip.c$1011$1$1 ==.
                           7488 ;	apps/mdrip/mdrip.c:1011: uartEnable();
   2508 12 06 55           7489 	lcall	_uartEnable
                    1EE3   7490 	C$mdrip.c$1012$1$1 ==.
                           7491 ;	apps/mdrip/mdrip.c:1012: printf("AT+NAMExDrip");
   250B 74 5C              7492 	mov	a,#__str_36
   250D C0 E0              7493 	push	acc
   250F 74 57              7494 	mov	a,#(__str_36 >> 8)
   2511 C0 E0              7495 	push	acc
   2513 74 80              7496 	mov	a,#0x80
   2515 C0 E0              7497 	push	acc
   2517 12 49 B3           7498 	lcall	_printf
   251A 15 81              7499 	dec	sp
   251C 15 81              7500 	dec	sp
   251E 15 81              7501 	dec	sp
                    1EF8   7502 	C$mdrip.c$1013$1$1 ==.
                           7503 ;	apps/mdrip/mdrip.c:1013: uartDisable();
   2520 12 06 66           7504 	lcall	_uartDisable
                    1EFB   7505 	C$mdrip.c$1014$1$1 ==.
                    1EFB   7506 	XG$configBt$0$0 ==.
   2523 22                 7507 	ret
                           7508 ;------------------------------------------------------------
                           7509 ;Allocation info for local variables in function 'main'
                           7510 ;------------------------------------------------------------
                           7511 ;Pkt                       Allocated with name '_main_Pkt_2_4'
                           7512 ;------------------------------------------------------------
                    1EFC   7513 	G$main$0$0 ==.
                    1EFC   7514 	C$mdrip.c$1016$1$1 ==.
                           7515 ;	apps/mdrip/mdrip.c:1016: void main() {
                           7516 ;	-----------------------------------------
                           7517 ;	 function main
                           7518 ;	-----------------------------------------
   2524                    7519 _main:
                    1EFC   7520 	C$mdrip.c$1017$1$1 ==.
                           7521 ;	apps/mdrip/mdrip.c:1017: systemInit();
   2524 12 39 9E           7522 	lcall	_systemInit
                    1EFF   7523 	C$mdrip.c$1018$1$1 ==.
                           7524 ;	apps/mdrip/mdrip.c:1018: initUart1();
   2527 12 09 AA           7525 	lcall	_initUart1
                    1F02   7526 	C$mdrip.c$1020$1$1 ==.
                           7527 ;	apps/mdrip/mdrip.c:1020: P1DIR |= 0x08; // RTS
   252A 43 FE 08           7528 	orl	_P1DIR,#0x08
                    1F05   7529 	C$mdrip.c$1021$1$1 ==.
                           7530 ;	apps/mdrip/mdrip.c:1021: sleepInit();
   252D 12 06 28           7531 	lcall	_sleepInit
                    1F08   7532 	C$mdrip.c$1023$1$1 ==.
                           7533 ;	apps/mdrip/mdrip.c:1023: makeAllOutputs();
   2530 12 1D 88           7534 	lcall	_makeAllOutputs
                    1F0B   7535 	C$mdrip.c$1024$1$1 ==.
                           7536 ;	apps/mdrip/mdrip.c:1024: setADCInputs();
   2533 12 25 04           7537 	lcall	_setADCInputs
                    1F0E   7538 	C$mdrip.c$1025$1$1 ==.
                           7539 ;	apps/mdrip/mdrip.c:1025: delayMs(1000);
   2536 90 03 E8           7540 	mov	dptr,#0x03E8
   2539 12 45 D8           7541 	lcall	_delayMs
                    1F14   7542 	C$mdrip.c$1027$1$1 ==.
                           7543 ;	apps/mdrip/mdrip.c:1027: if(enable_wixfone==0) { 										// Don't do Bluetooth piece if there is a Fona attached instead of a HM1x
   253C 20 03 05           7544 	jb	_enable_wixfone,00102$
                    1F17   7545 	C$mdrip.c$1028$2$2 ==.
                           7546 ;	apps/mdrip/mdrip.c:1028: configBt();
   253F 12 25 08           7547 	lcall	_configBt
   2542 80 03              7548 	sjmp	00103$
   2544                    7549 00102$:
                    1F1C   7550 	C$mdrip.c$1030$2$3 ==.
                           7551 ;	apps/mdrip/mdrip.c:1030: enableFona();
   2544 12 0E 58           7552 	lcall	_enableFona
   2547                    7553 00103$:
                    1F1F   7554 	C$mdrip.c$1032$1$1 ==.
                           7555 ;	apps/mdrip/mdrip.c:1032: delayMs(1000);
   2547 90 03 E8           7556 	mov	dptr,#0x03E8
   254A 12 45 D8           7557 	lcall	_delayMs
                    1F25   7558 	C$mdrip.c$1034$1$1 ==.
                           7559 ;	apps/mdrip/mdrip.c:1034: radioQueueInit();
   254D 12 2C AC           7560 	lcall	_radioQueueInit
                    1F28   7561 	C$mdrip.c$1035$1$1 ==.
                           7562 ;	apps/mdrip/mdrip.c:1035: radioQueueAllowCrcErrors = 1;
   2550 D2 12              7563 	setb	_radioQueueAllowCrcErrors
                    1F2A   7564 	C$mdrip.c$1036$1$1 ==.
                           7565 ;	apps/mdrip/mdrip.c:1036: MCSM1 = 0;
   2552 90 DF 13           7566 	mov	dptr,#_MCSM1
   2555 E4                 7567 	clr	a
   2556 F0                 7568 	movx	@dptr,a
                    1F2F   7569 	C$mdrip.c$1038$1$1 ==.
                           7570 ;	apps/mdrip/mdrip.c:1038: while(1) {
   2557                    7571 00110$:
                    1F2F   7572 	C$mdrip.c$1040$2$4 ==.
                           7573 ;	apps/mdrip/mdrip.c:1040: memset(&Pkt, 0, sizeof(Dexcom_packet));
   2557 78 7C              7574 	mov	r0,#_memset_PARM_2
   2559 E4                 7575 	clr	a
   255A F2                 7576 	movx	@r0,a
   255B 78 7D              7577 	mov	r0,#_memset_PARM_3
   255D 74 15              7578 	mov	a,#0x15
   255F F2                 7579 	movx	@r0,a
   2560 08                 7580 	inc	r0
   2561 E4                 7581 	clr	a
   2562 F2                 7582 	movx	@r0,a
   2563 90 F4 2D           7583 	mov	dptr,#_main_Pkt_2_4
   2566 75 F0 00           7584 	mov	b,#0x00
   2569 12 2E EF           7585 	lcall	_memset
                    1F44   7586 	C$mdrip.c$1041$2$4 ==.
                           7587 ;	apps/mdrip/mdrip.c:1041: boardService();
   256C 12 39 AB           7588 	lcall	_boardService
                    1F47   7589 	C$mdrip.c$1044$2$4 ==.
                           7590 ;	apps/mdrip/mdrip.c:1044: get_packet(&Pkt);		// Always try to get a packet but now print even if none received so we can still update devicestatus, etc.
   256F 90 F4 2D           7591 	mov	dptr,#_main_Pkt_2_4
   2572 12 24 75           7592 	lcall	_get_packet
                    1F4D   7593 	C$mdrip.c$1045$2$4 ==.
                           7594 ;	apps/mdrip/mdrip.c:1045: print_packet(&Pkt);
   2575 90 F4 2D           7595 	mov	dptr,#_main_Pkt_2_4
   2578 12 19 AF           7596 	lcall	_print_packet
                    1F53   7597 	C$mdrip.c$1048$2$4 ==.
                           7598 ;	apps/mdrip/mdrip.c:1048: RFST = 4;
   257B 75 E1 04           7599 	mov	_RFST,#0x04
                    1F56   7600 	C$mdrip.c$1049$2$4 ==.
                           7601 ;	apps/mdrip/mdrip.c:1049: delayMs(100);
   257E 90 00 64           7602 	mov	dptr,#0x0064
   2581 12 45 D8           7603 	lcall	_delayMs
                    1F5C   7604 	C$mdrip.c$1051$2$4 ==.
                           7605 ;	apps/mdrip/mdrip.c:1051: radioMacSleep();
   2584 12 2A B0           7606 	lcall	_radioMacSleep
                    1F5F   7607 	C$mdrip.c$1052$2$4 ==.
                           7608 ;	apps/mdrip/mdrip.c:1052: if(usbPowerPresent()){
   2587 12 3A 62           7609 	lcall	_usbPowerPresent
   258A 50 06              7610 	jnc	00105$
                    1F64   7611 	C$mdrip.c$1053$3$5 ==.
                           7612 ;	apps/mdrip/mdrip.c:1053: sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
   258C 78 3E              7613 	mov	r0,#_sequential_missed_packets
   258E E2                 7614 	movx	a,@r0
   258F 24 01              7615 	add	a,#0x01
   2591 F2                 7616 	movx	@r0,a
   2592                    7617 00105$:
                    1F6A   7618 	C$mdrip.c$1055$2$4 ==.
                           7619 ;	apps/mdrip/mdrip.c:1055: if(sequential_missed_packets > 0) {
   2592 78 3E              7620 	mov	r0,#_sequential_missed_packets
   2594 E2                 7621 	movx	a,@r0
   2595 60 73              7622 	jz	00107$
                    1F6F   7623 	C$mdrip.c$1056$3$6 ==.
                           7624 ;	apps/mdrip/mdrip.c:1056: int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
   2597 78 3E              7625 	mov	r0,#_sequential_missed_packets
   2599 E2                 7626 	movx	a,@r0
   259A F5 F0              7627 	mov	b,a
   259C E2                 7628 	movx	a,@r0
   259D A4                 7629 	mul	ab
   259E F5 82              7630 	mov	dpl,a
   25A0 85 F0 83           7631 	mov	dph,b
   25A3 78 00              7632 	mov	r0,#_wake_earlier_for_next_miss
   25A5 79 A4              7633 	mov	r1,#__mulint_PARM_2
   25A7 E2                 7634 	movx	a,@r0
   25A8 F3                 7635 	movx	@r1,a
   25A9 09                 7636 	inc	r1
   25AA E4                 7637 	clr	a
   25AB F3                 7638 	movx	@r1,a
   25AC 12 3A 79           7639 	lcall	__mulint
   25AF AE 82              7640 	mov	r6,dpl
   25B1 AF 83              7641 	mov	r7,dph
                    1F8B   7642 	C$mdrip.c$1057$3$6 ==.
                           7643 ;	apps/mdrip/mdrip.c:1057: int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
   25B3 78 3E              7644 	mov	r0,#_sequential_missed_packets
   25B5 E2                 7645 	movx	a,@r0
   25B6 7D 00              7646 	mov	r5,#0x00
   25B8 24 FF              7647 	add	a,#0xFF
   25BA F5 82              7648 	mov	dpl,a
   25BC ED                 7649 	mov	a,r5
   25BD 34 FF              7650 	addc	a,#0xFF
   25BF F5 83              7651 	mov	dph,a
   25C1 78 3E              7652 	mov	r0,#_sequential_missed_packets
   25C3 E2                 7653 	movx	a,@r0
   25C4 FC                 7654 	mov	r4,a
   25C5 7D 00              7655 	mov	r5,#0x00
   25C7 78 A4              7656 	mov	r0,#__mulint_PARM_2
   25C9 EC                 7657 	mov	a,r4
   25CA 24 FF              7658 	add	a,#0xFF
   25CC F2                 7659 	movx	@r0,a
   25CD ED                 7660 	mov	a,r5
   25CE 34 FF              7661 	addc	a,#0xFF
   25D0 08                 7662 	inc	r0
   25D1 F2                 7663 	movx	@r0,a
   25D2 C0 07              7664 	push	ar7
   25D4 C0 06              7665 	push	ar6
   25D6 12 3A 79           7666 	lcall	__mulint
   25D9 AC 82              7667 	mov	r4,dpl
   25DB AD 83              7668 	mov	r5,dph
   25DD 78 00              7669 	mov	r0,#_wake_earlier_for_next_miss
   25DF 79 A4              7670 	mov	r1,#__mulint_PARM_2
   25E1 E2                 7671 	movx	a,@r0
   25E2 F3                 7672 	movx	@r1,a
   25E3 09                 7673 	inc	r1
   25E4 E4                 7674 	clr	a
   25E5 F3                 7675 	movx	@r1,a
   25E6 8C 82              7676 	mov	dpl,r4
   25E8 8D 83              7677 	mov	dph,r5
   25EA 12 3A 79           7678 	lcall	__mulint
   25ED AC 82              7679 	mov	r4,dpl
   25EF AD 83              7680 	mov	r5,dph
   25F1 D0 06              7681 	pop	ar6
   25F3 D0 07              7682 	pop	ar7
                    1FCD   7683 	C$mdrip.c$1059$3$6 ==.
                           7684 ;	apps/mdrip/mdrip.c:1059: int sleep_time = (195 - first_square + second_square);
   25F5 74 C3              7685 	mov	a,#0xC3
   25F7 C3                 7686 	clr	c
   25F8 9E                 7687 	subb	a,r6
   25F9 FE                 7688 	mov	r6,a
   25FA E4                 7689 	clr	a
   25FB 9F                 7690 	subb	a,r7
   25FC FF                 7691 	mov	r7,a
   25FD EC                 7692 	mov	a,r4
   25FE 2E                 7693 	add	a,r6
   25FF F5 82              7694 	mov	dpl,a
   2601 ED                 7695 	mov	a,r5
   2602 3F                 7696 	addc	a,r7
   2603 F5 83              7697 	mov	dph,a
                    1FDD   7698 	C$mdrip.c$1060$3$6 ==.
                           7699 ;	apps/mdrip/mdrip.c:1060: goToSleep(sleep_time);
   2605 12 1E 14           7700 	lcall	_goToSleep
   2608 80 06              7701 	sjmp	00108$
   260A                    7702 00107$:
                    1FE2   7703 	C$mdrip.c$1062$3$7 ==.
                           7704 ;	apps/mdrip/mdrip.c:1062: goToSleep(210); // Might need to be 200
   260A 90 00 D2           7705 	mov	dptr,#0x00D2
   260D 12 1E 14           7706 	lcall	_goToSleep
   2610                    7707 00108$:
                    1FE8   7708 	C$mdrip.c$1064$2$4 ==.
                           7709 ;	apps/mdrip/mdrip.c:1064: radioMacResume();
   2610 12 2A B9           7710 	lcall	_radioMacResume
                    1FEB   7711 	C$mdrip.c$1065$2$4 ==.
                           7712 ;	apps/mdrip/mdrip.c:1065: MCSM1 = 0;
   2613 90 DF 13           7713 	mov	dptr,#_MCSM1
   2616 E4                 7714 	clr	a
   2617 F0                 7715 	movx	@dptr,a
                    1FF0   7716 	C$mdrip.c$1066$2$4 ==.
                           7717 ;	apps/mdrip/mdrip.c:1066: radioMacStrobe();
   2618 12 2A AA           7718 	lcall	_radioMacStrobe
   261B 02 25 57           7719 	ljmp	00110$
                    1FF6   7720 	C$mdrip.c$1068$1$1 ==.
                    1FF6   7721 	XG$main$0$0 ==.
   261E 22                 7722 	ret
                           7723 	.area CSEG    (CODE)
                           7724 	.area CONST   (CODE)
                    0000   7725 Fmdrip$apnString$0$0 == .
   5590                    7726 _apnString:
   5590 69 6E 74 65 72 6E  7727 	.ascii "internet"
        65 74
   5598 00                 7728 	.db 0x00
                    0009   7729 Fmdrip$wixFone_ID$0$0 == .
   5599                    7730 _wixFone_ID:
   5599 59 6F 75 72 49 44  7731 	.ascii "YourID"
   559F 00                 7732 	.db 0x00
                    0010   7733 Fmdrip$_str_0$0$0 == .
   55A0                    7734 __str_0:
   55A0 41 54 2B 43 46 55  7735 	.ascii "AT+CFUN=0"
        4E 3D 30
   55A9 0D                 7736 	.db 0x0D
   55AA 0A                 7737 	.db 0x0A
   55AB 00                 7738 	.db 0x00
                    001C   7739 Fmdrip$_str_1$0$0 == .
   55AC                    7740 __str_1:
   55AC 41 54 45 30 26 57  7741 	.ascii "ATE0&W"
   55B2 0D                 7742 	.db 0x0D
   55B3 0A                 7743 	.db 0x0A
   55B4 00                 7744 	.db 0x00
                    0025   7745 Fmdrip$_str_2$0$0 == .
   55B5                    7746 __str_2:
   55B5 41 54 2B 53 4C 45  7747 	.ascii "AT+SLEDS=1,50,7500"
        44 53 3D 31 2C 35
        30 2C 37 35 30 30
   55C7 0D                 7748 	.db 0x0D
   55C8 0A                 7749 	.db 0x0A
   55C9 00                 7750 	.db 0x00
                    003A   7751 Fmdrip$_str_3$0$0 == .
   55CA                    7752 __str_3:
   55CA 41 54 26 57        7753 	.ascii "AT&W"
   55CE 0D                 7754 	.db 0x0D
   55CF 0A                 7755 	.db 0x0A
   55D0 00                 7756 	.db 0x00
                    0041   7757 Fmdrip$_str_4$0$0 == .
   55D1                    7758 __str_4:
   55D1 41 54 2B 53 4C 45  7759 	.ascii "AT+SLEDS=2,500,2500"
        44 53 3D 32 2C 35
        30 30 2C 32 35 30
        30
   55E4 0D                 7760 	.db 0x0D
   55E5 0A                 7761 	.db 0x0A
   55E6 00                 7762 	.db 0x00
                    0057   7763 Fmdrip$_str_5$0$0 == .
   55E7                    7764 __str_5:
   55E7 41 54 2B 53 4C 45  7765 	.ascii "AT+SLEDS=3,50,50"
        44 53 3D 33 2C 35
        30 2C 35 30
   55F7 0D                 7766 	.db 0x0D
   55F8 0A                 7767 	.db 0x0A
   55F9 00                 7768 	.db 0x00
                    006A   7769 Fmdrip$_str_6$0$0 == .
   55FA                    7770 __str_6:
   55FA 41 54              7771 	.ascii "AT"
   55FC 0D                 7772 	.db 0x0D
   55FD 0A                 7773 	.db 0x0A
   55FE 00                 7774 	.db 0x00
                    006F   7775 Fmdrip$_str_7$0$0 == .
   55FF                    7776 __str_7:
   55FF 41 54 2B 43 46 55  7777 	.ascii "AT+CFUN=1,1"
        4E 3D 31 2C 31
   560A 0D                 7778 	.db 0x0D
   560B 0A                 7779 	.db 0x0A
   560C 00                 7780 	.db 0x00
                    007D   7781 Fmdrip$_str_8$0$0 == .
   560D                    7782 __str_8:
   560D 41 54 2B 43 49 50  7783 	.ascii "AT+CIPCLOSE"
        43 4C 4F 53 45
   5618 0D                 7784 	.db 0x0D
   5619 0A                 7785 	.db 0x0A
   561A 00                 7786 	.db 0x00
                    008B   7787 Fmdrip$_str_9$0$0 == .
   561B                    7788 __str_9:
   561B 41 54 2B 43 47 41  7789 	.ascii "AT+CGATT=0"
        54 54 3D 30
   5625 0D                 7790 	.db 0x0D
   5626 0A                 7791 	.db 0x0A
   5627 00                 7792 	.db 0x00
                    0098   7793 Fmdrip$_str_10$0$0 == .
   5628                    7794 __str_10:
   5628 41 54 2B 43 49 50  7795 	.ascii "AT+CIPSHUT"
        53 48 55 54
   5632 0D                 7796 	.db 0x0D
   5633 0A                 7797 	.db 0x0A
   5634 00                 7798 	.db 0x00
                    00A5   7799 Fmdrip$_str_11$0$0 == .
   5635                    7800 __str_11:
   5635 41 54 2B 43 53 54  7801 	.ascii "AT+CSTT="
        54 3D
   563D 00                 7802 	.db 0x00
                    00AE   7803 Fmdrip$_str_12$0$0 == .
   563E                    7804 __str_12:
   563E 0D                 7805 	.db 0x0D
   563F 0A                 7806 	.db 0x0A
   5640 00                 7807 	.db 0x00
                    00B1   7808 Fmdrip$_str_13$0$0 == .
   5641                    7809 __str_13:
   5641 41 54 2B 43 47 41  7810 	.ascii "AT+CGATT?"
        54 54 3F
   564A 0D                 7811 	.db 0x0D
   564B 0A                 7812 	.db 0x0A
   564C 00                 7813 	.db 0x00
                    00BD   7814 Fmdrip$_str_14$0$0 == .
   564D                    7815 __str_14:
   564D 41 54 2B 43 49 49  7816 	.ascii "AT+CIICR"
        43 52
   5655 0D                 7817 	.db 0x0D
   5656 0A                 7818 	.db 0x0A
   5657 00                 7819 	.db 0x00
                    00C8   7820 Fmdrip$_str_15$0$0 == .
   5658                    7821 __str_15:
   5658 41 54 2B 43 49 46  7822 	.ascii "AT+CIFSR"
        53 52
   5660 0D                 7823 	.db 0x0D
   5661 0A                 7824 	.db 0x0A
   5662 00                 7825 	.db 0x00
                    00D3   7826 Fmdrip$_str_16$0$0 == .
   5663                    7827 __str_16:
   5663 41 54 2B 43 49 50  7828 	.ascii "AT+CIPSTART=tcp,"
        53 54 41 52 54 3D
        74 63 70 2C
   5673 00                 7829 	.db 0x00
                    00E4   7830 Fmdrip$_str_17$0$0 == .
   5674                    7831 __str_17:
   5674 41 54 2B 43 49 50  7832 	.ascii "AT+CIPSEND"
        53 45 4E 44
   567E 0D                 7833 	.db 0x0D
   567F 0A                 7834 	.db 0x0A
   5680 00                 7835 	.db 0x00
                    00F1   7836 Fmdrip$_str_18$0$0 == .
   5681                    7837 __str_18:
   5681 41 54 45 30        7838 	.ascii "ATE0"
   5685 0D                 7839 	.db 0x0D
   5686 0A                 7840 	.db 0x0A
   5687 00                 7841 	.db 0x00
                    00F8   7842 Fmdrip$_str_19$0$0 == .
   5688                    7843 __str_19:
   5688 41 54 2B 43 42 43  7844 	.ascii "AT+CBC"
   568E 0D                 7845 	.db 0x0D
   568F 0A                 7846 	.db 0x0A
   5690 00                 7847 	.db 0x00
                    0101   7848 Fmdrip$_str_20$0$0 == .
   5691                    7849 __str_20:
   5691 43 42 43 3E 20     7850 	.ascii "CBC> "
   5696 00                 7851 	.db 0x00
                    0107   7852 Fmdrip$_str_21$0$0 == .
   5697                    7853 __str_21:
   5697 41 54 2B 43 44 4E  7854 	.ascii "AT+CDNSCFG=8.8.8.8"
        53 43 46 47 3D 38
        2E 38 2E 38 2E 38
   56A9 0D                 7855 	.db 0x0D
   56AA 0A                 7856 	.db 0x0A
   56AB 00                 7857 	.db 0x00
                    011C   7858 Fmdrip$_str_22$0$0 == .
   56AC                    7859 __str_22:
   56AC 41 54 2B 53 41 50  7860 	.ascii "AT+SAPBR=0,1"
        42 52 3D 30 2C 31
   56B8 0D                 7861 	.db 0x0D
   56B9 0A                 7862 	.db 0x0A
   56BA 00                 7863 	.db 0x00
                    012B   7864 Fmdrip$_str_23$0$0 == .
   56BB                    7865 __str_23:
   56BB 41 54 2B 53 41 50  7866 	.ascii "AT+SAPBR=3,1,"
        42 52 3D 33 2C 31
        2C
   56C8 22                 7867 	.db 0x22
   56C9 43 6F 6E 74 79 70  7868 	.ascii "Contype"
        65
   56D0 22                 7869 	.db 0x22
   56D1 2C 47 50 52 53     7870 	.ascii ",GPRS"
   56D6 0D                 7871 	.db 0x0D
   56D7 0A                 7872 	.db 0x0A
   56D8 00                 7873 	.db 0x00
                    0149   7874 Fmdrip$_str_24$0$0 == .
   56D9                    7875 __str_24:
   56D9 41 54 2B 53 41 50  7876 	.ascii "AT+SAPBR=3,1,"
        42 52 3D 33 2C 31
        2C
   56E6 22                 7877 	.db 0x22
   56E7 41 50 4E           7878 	.ascii "APN"
   56EA 22                 7879 	.db 0x22
   56EB 2C                 7880 	.ascii ","
   56EC 22                 7881 	.db 0x22
   56ED 69 6E 74 65 72 6E  7882 	.ascii "internet"
        65 74
   56F5 22                 7883 	.db 0x22
   56F6 0D                 7884 	.db 0x0D
   56F7 0A                 7885 	.db 0x0A
   56F8 00                 7886 	.db 0x00
                    0169   7887 Fmdrip$_str_25$0$0 == .
   56F9                    7888 __str_25:
   56F9 41 54 2B 53 41 50  7889 	.ascii "AT+SAPBR=1,1"
        42 52 3D 31 2C 31
   5705 0D                 7890 	.db 0x0D
   5706 0A                 7891 	.db 0x0A
   5707 00                 7892 	.db 0x00
                    0178   7893 Fmdrip$_str_26$0$0 == .
   5708                    7894 __str_26:
   5708 41 54 2B 43 49 50  7895 	.ascii "AT+CIPGSMLOC=1,1"
        47 53 4D 4C 4F 43
        3D 31 2C 31
   5718 0D                 7896 	.db 0x0D
   5719 0A                 7897 	.db 0x0A
   571A 00                 7898 	.db 0x00
                    018B   7899 Fmdrip$_str_27$0$0 == .
   571B                    7900 __str_27:
   571B 39 39 39           7901 	.ascii "999"
   571E 00                 7902 	.db 0x00
                    018F   7903 Fmdrip$_str_29$0$0 == .
   571F                    7904 __str_29:
   571F 25 73 20 25 68 68  7905 	.ascii "%s %hhu %s %lu %lu %d %d %hhu %s"
        75 20 25 73 20 25
        6C 75 20 25 6C 75
        20 25 64 20 25 64
        20 25 68 68 75 20
        25 73
   573F 00                 7906 	.db 0x00
                    01B0   7907 Fmdrip$_str_30$0$0 == .
   5740                    7908 __str_30:
   5740 78 44 72 69 70 32  7909 	.ascii "xDrip2g(AES): "
        67 28 41 45 53 29
        3A 20
   574E 00                 7910 	.db 0x00
                    01BF   7911 Fmdrip$_str_31$0$0 == .
   574F                    7912 __str_31:
   574F 25 30 32 78        7913 	.ascii "%02x"
   5753 00                 7914 	.db 0x00
                    01C4   7915 Fmdrip$_str_32$0$0 == .
   5754                    7916 __str_32:
   5754 20                 7917 	.ascii " "
   5755 00                 7918 	.db 0x00
                    01C6   7919 Fmdrip$_str_33$0$0 == .
   5756                    7920 __str_33:
   5756 0D                 7921 	.db 0x0D
   5757 0A                 7922 	.db 0x0A
   5758 1A                 7923 	.db 0x1A
   5759 00                 7924 	.db 0x00
                    01CA   7925 Fmdrip$_str_34$0$0 == .
   575A                    7926 __str_34:
   575A 1A                 7927 	.db 0x1A
   575B 00                 7928 	.db 0x00
                    01CC   7929 Fmdrip$_str_36$0$0 == .
   575C                    7930 __str_36:
   575C 41 54 2B 4E 41 4D  7931 	.ascii "AT+NAMExDrip"
        45 78 44 72 69 70
   5768 00                 7932 	.db 0x00
                    01D9   7933 Fmdrip$_str_37$0$0 == .
   5769                    7934 __str_37:
   5769 36 46 35 59 50     7935 	.ascii "6F5YP"
   576E 00                 7936 	.db 0x00
                    01DF   7937 Fmdrip$_str_38$0$0 == .
   576F                    7938 __str_38:
   576F 52 45 50 4C 41 43  7939 	.ascii "REPLACEME.DuckDNS.org,17611"
        45 4D 45 2E 44 75
        63 6B 44 4E 53 2E
        6F 72 67 2C 31 37
        36 31 31
   578A 00                 7940 	.db 0x00
                           7941 	.area XINIT   (CODE)
                    0000   7942 Fmdrip$__xinit_transmitter_id$0$0 == .
   5A2D                    7943 __xinit__transmitter_id:
   5A2D 36 46 35 59 50     7944 	.ascii "6F5YP"
   5A32 00                 7945 	.db 0x00
                    0006   7946 Fmdrip$__xinit_dexie_host_address$0$0 == .
   5A33                    7947 __xinit__dexie_host_address:
   5A33 52 45 50 4C 41 43  7948 	.ascii "REPLACEME.DuckDNS.org,17611"
        45 4D 45 2E 44 75
        63 6B 44 4E 53 2E
        6F 72 67 2C 31 37
        36 31 31
   5A4E 00                 7949 	.db 0x00
                    0022   7950 Fmdrip$__xinit_start_channel$0$0 == .
   5A4F                    7951 __xinit__start_channel:
   5A4F 00                 7952 	.db #0x00	;  0
                    0023   7953 Fmdrip$__xinit_defaultfOffset$0$0 == .
   5A50                    7954 __xinit__defaultfOffset:
   5A50 CE                 7955 	.db #0xCE	; -50
   5A51 D5                 7956 	.db #0xD5	; -43
   5A52 E6                 7957 	.db #0xE6	; -26
   5A53 E5                 7958 	.db #0xE5	; -27
                    0027   7959 Fmdrip$__xinit_PM2_BUF$0$0 == .
   5A54                    7960 __xinit__PM2_BUF:
   5A54 06                 7961 	.db #0x06	; 6
   5A55 06                 7962 	.db #0x06	; 6
   5A56 06                 7963 	.db #0x06	; 6
   5A57 06                 7964 	.db #0x06	; 6
   5A58 06                 7965 	.db #0x06	; 6
   5A59 06                 7966 	.db #0x06	; 6
   5A5A 04                 7967 	.db #0x04	; 4
                    002E   7968 Fmdrip$__xinit_dmaDesc$0$0 == .
   5A5B                    7969 __xinit__dmaDesc:
   5A5B 00                 7970 	.db #0x00	; 0
   5A5C 00                 7971 	.db #0x00	; 0
   5A5D DF                 7972 	.db #0xDF	; 223
   5A5E BE                 7973 	.db #0xBE	; 190
   5A5F 00                 7974 	.db #0x00	; 0
   5A60 07                 7975 	.db #0x07	; 7
   5A61 20                 7976 	.db #0x20	; 32
   5A62 42                 7977 	.db #0x42	; 66	'B'
                    0036   7978 Fmdrip$__xinit_AT_TIMEOUT$0$0 == .
   5A63                    7979 __xinit__AT_TIMEOUT:
   5A63 14                 7980 	.db #0x14	; 20
                    0037   7981 Fmdrip$__xinit_defaultATWait$0$0 == .
   5A64                    7982 __xinit__defaultATWait:
   5A64 B8 0B 00 00        7983 	.byte #0xB8,#0x0B,#0x00,#0x00	; 3000
                    003B   7984 Fmdrip$__xinit_key$0$0 == .
   5A68                    7985 __xinit__key:
   5A68 4D                 7986 	.db #0x4D	; 77	'M'
   5A69 79                 7987 	.db #0x79	; 121	'y'
   5A6A 6D                 7988 	.db #0x6D	; 109	'm'
   5A6B 44                 7989 	.db #0x44	; 68	'D'
   5A6C 72                 7990 	.db #0x72	; 114	'r'
   5A6D 7C                 7991 	.db #0x7C	; 124
   5A6E 50                 7992 	.db #0x50	; 80	'P'
   5A6F 26                 7993 	.db #0x26	; 38
   5A70 41                 7994 	.db #0x41	; 65	'A'
   5A71 45                 7995 	.db #0x45	; 69	'E'
   5A72 53                 7996 	.db #0x53	; 83	'S'
   5A73 72                 7997 	.db #0x72	; 114	'r'
   5A74 40                 7998 	.db #0x40	; 64
   5A75 5B                 7999 	.db #0x5B	; 91
   5A76 4B                 8000 	.db #0x4B	; 75	'K'
   5A77 21                 8001 	.db #0x21	; 33
                    004B   8002 Fmdrip$__xinit_SrcNameTable$0$0 == .
   5A78                    8003 __xinit__SrcNameTable:
   5A78 30                 8004 	.db #0x30	;  48	'0'
   5A79 31                 8005 	.db #0x31	;  49	'1'
   5A7A 32                 8006 	.db #0x32	;  50	'2'
   5A7B 33                 8007 	.db #0x33	;  51	'3'
   5A7C 34                 8008 	.db #0x34	;  52	'4'
   5A7D 35                 8009 	.db #0x35	;  53	'5'
   5A7E 36                 8010 	.db #0x36	;  54	'6'
   5A7F 37                 8011 	.db #0x37	;  55	'7'
   5A80 38                 8012 	.db #0x38	;  56	'8'
   5A81 39                 8013 	.db #0x39	;  57	'9'
   5A82 41                 8014 	.db #0x41	;  65	'A'
   5A83 42                 8015 	.db #0x42	;  66	'B'
   5A84 43                 8016 	.db #0x43	;  67	'C'
   5A85 44                 8017 	.db #0x44	;  68	'D'
   5A86 45                 8018 	.db #0x45	;  69	'E'
   5A87 46                 8019 	.db #0x46	;  70	'F'
   5A88 47                 8020 	.db #0x47	;  71	'G'
   5A89 48                 8021 	.db #0x48	;  72	'H'
   5A8A 4A                 8022 	.db #0x4A	;  74	'J'
   5A8B 4B                 8023 	.db #0x4B	;  75	'K'
   5A8C 4C                 8024 	.db #0x4C	;  76	'L'
   5A8D 4D                 8025 	.db #0x4D	;  77	'M'
   5A8E 4E                 8026 	.db #0x4E	;  78	'N'
   5A8F 50                 8027 	.db #0x50	;  80	'P'
   5A90 51                 8028 	.db #0x51	;  81	'Q'
   5A91 52                 8029 	.db #0x52	;  82	'R'
   5A92 53                 8030 	.db #0x53	;  83	'S'
   5A93 54                 8031 	.db #0x54	;  84	'T'
   5A94 55                 8032 	.db #0x55	;  85	'U'
   5A95 57                 8033 	.db #0x57	;  87	'W'
   5A96 58                 8034 	.db #0x58	;  88	'X'
   5A97 59                 8035 	.db #0x59	;  89	'Y'
                           8036 	.area CABS    (ABS,CODE)
