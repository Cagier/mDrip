;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.1.0 #7066 (Nov 22 2011) (MINGW32)
; This file was generated Fri Feb 03 00:37:36 2017
;--------------------------------------------------------
	.module mdrip
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _configBt
	.globl _setADCInputs
	.globl _get_packet
	.globl _delayFor
	.globl _WaitForPacket
	.globl _strobe_radio
	.globl _swap_channel
	.globl _printfUSB
	.globl _goToSleep
	.globl _killWithWatchdog
	.globl _reset_offsets
	.globl _makeAllOutputsLow
	.globl _makeAllOutputs
	.globl _print_packet
	.globl _getFonaGPS
	.globl _getFonaMillivolts
	.globl _fonaConnect
	.globl _fonaDisable
	.globl _enableFona
	.globl _configFona
	.globl _sendAT
	.globl _getFonaString
	.globl _initUart1
	.globl _doServices
	.globl _clearRxErrors
	.globl _dexcom_src_to_ascii
	.globl _dex_num_decoder
	.globl _bit_reverse_bytes
	.globl _min8
	.globl _bit_reverse_byte
	.globl _getPacketPassedChecksum
	.globl _blink_red_led
	.globl _blink_yellow_led
	.globl _uartDisable
	.globl _uartEnable
	.globl _switchToRCOSC
	.globl _ISR_ST
	.globl _sleepInit
	.globl _AES128_CBC_encrypt_buffer
	.globl _adcSetMillivoltCalibration
	.globl _adcReadVddMillivolts
	.globl _strlen
	.globl _memset
	.globl _strcmp
	.globl _strcat
	.globl _strcpy
	.globl _memcpy
	.globl _sprintf
	.globl _printf
	.globl _uart1RxReceiveByte
	.globl _uart1RxAvailable
	.globl _uart1TxSendByte
	.globl _uart1TxAvailable
	.globl _uart1SetBaudRate
	.globl _uart1Init
	.globl _setDigitalOutput
	.globl _radioQueueRxDoneWithPacket
	.globl _radioQueueRxCurrentPacket
	.globl _radioQueueInit
	.globl _radioMacResume
	.globl _radioMacSleep
	.globl _radioMacStrobe
	.globl _radioMacInit
	.globl _radioCrcPassed
	.globl _usbComTxSend
	.globl _usbComTxSendByte
	.globl _usbComTxAvailable
	.globl _usbComService
	.globl _usbShowStatusWithGreenLed
	.globl _delayMs
	.globl _getMs
	.globl _disableUsbPullup
	.globl _enableUsbPullup
	.globl _usbPowerPresent
	.globl _boardService
	.globl _boardClockInit
	.globl _systemInit
	.globl _SrcNameTable
	.globl _AT_TIMEOUT
	.globl _dmaDesc
	.globl _PM2_BUF
	.globl _WaitForPacket_PARM_3
	.globl _swap_channel_PARM_2
	.globl _dexcom_src_to_ascii_PARM_2
	.globl _WaitForPacket_PARM_2
	.globl _bit_reverse_bytes_PARM_2
	.globl _min8_PARM_2
	.globl _intMaxStrLen
	.globl _sequential_missed_packets
	.globl _usbEnabled
	.globl _needsTimingCalibration
	.globl _getSrcValue
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fmdrip$P0$0$0 == 0x0080
_P0	=	0x0080
Fmdrip$SP$0$0 == 0x0081
_SP	=	0x0081
Fmdrip$DPL0$0$0 == 0x0082
_DPL0	=	0x0082
Fmdrip$DPH0$0$0 == 0x0083
_DPH0	=	0x0083
Fmdrip$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
Fmdrip$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
Fmdrip$U0CSR$0$0 == 0x0086
_U0CSR	=	0x0086
Fmdrip$PCON$0$0 == 0x0087
_PCON	=	0x0087
Fmdrip$TCON$0$0 == 0x0088
_TCON	=	0x0088
Fmdrip$P0IFG$0$0 == 0x0089
_P0IFG	=	0x0089
Fmdrip$P1IFG$0$0 == 0x008a
_P1IFG	=	0x008a
Fmdrip$P2IFG$0$0 == 0x008b
_P2IFG	=	0x008b
Fmdrip$PICTL$0$0 == 0x008c
_PICTL	=	0x008c
Fmdrip$P1IEN$0$0 == 0x008d
_P1IEN	=	0x008d
Fmdrip$P0INP$0$0 == 0x008f
_P0INP	=	0x008f
Fmdrip$P1$0$0 == 0x0090
_P1	=	0x0090
Fmdrip$RFIM$0$0 == 0x0091
_RFIM	=	0x0091
Fmdrip$DPS$0$0 == 0x0092
_DPS	=	0x0092
Fmdrip$MPAGE$0$0 == 0x0093
_MPAGE	=	0x0093
Fmdrip$ENDIAN$0$0 == 0x0095
_ENDIAN	=	0x0095
Fmdrip$S0CON$0$0 == 0x0098
_S0CON	=	0x0098
Fmdrip$IEN2$0$0 == 0x009a
_IEN2	=	0x009a
Fmdrip$S1CON$0$0 == 0x009b
_S1CON	=	0x009b
Fmdrip$T2CT$0$0 == 0x009c
_T2CT	=	0x009c
Fmdrip$T2PR$0$0 == 0x009d
_T2PR	=	0x009d
Fmdrip$T2CTL$0$0 == 0x009e
_T2CTL	=	0x009e
Fmdrip$P2$0$0 == 0x00a0
_P2	=	0x00a0
Fmdrip$WORIRQ$0$0 == 0x00a1
_WORIRQ	=	0x00a1
Fmdrip$WORCTRL$0$0 == 0x00a2
_WORCTRL	=	0x00a2
Fmdrip$WOREVT0$0$0 == 0x00a3
_WOREVT0	=	0x00a3
Fmdrip$WOREVT1$0$0 == 0x00a4
_WOREVT1	=	0x00a4
Fmdrip$WORTIME0$0$0 == 0x00a5
_WORTIME0	=	0x00a5
Fmdrip$WORTIME1$0$0 == 0x00a6
_WORTIME1	=	0x00a6
Fmdrip$IEN0$0$0 == 0x00a8
_IEN0	=	0x00a8
Fmdrip$IP0$0$0 == 0x00a9
_IP0	=	0x00a9
Fmdrip$FWT$0$0 == 0x00ab
_FWT	=	0x00ab
Fmdrip$FADDRL$0$0 == 0x00ac
_FADDRL	=	0x00ac
Fmdrip$FADDRH$0$0 == 0x00ad
_FADDRH	=	0x00ad
Fmdrip$FCTL$0$0 == 0x00ae
_FCTL	=	0x00ae
Fmdrip$FWDATA$0$0 == 0x00af
_FWDATA	=	0x00af
Fmdrip$ENCDI$0$0 == 0x00b1
_ENCDI	=	0x00b1
Fmdrip$ENCDO$0$0 == 0x00b2
_ENCDO	=	0x00b2
Fmdrip$ENCCS$0$0 == 0x00b3
_ENCCS	=	0x00b3
Fmdrip$ADCCON1$0$0 == 0x00b4
_ADCCON1	=	0x00b4
Fmdrip$ADCCON2$0$0 == 0x00b5
_ADCCON2	=	0x00b5
Fmdrip$ADCCON3$0$0 == 0x00b6
_ADCCON3	=	0x00b6
Fmdrip$IEN1$0$0 == 0x00b8
_IEN1	=	0x00b8
Fmdrip$IP1$0$0 == 0x00b9
_IP1	=	0x00b9
Fmdrip$ADCL$0$0 == 0x00ba
_ADCL	=	0x00ba
Fmdrip$ADCH$0$0 == 0x00bb
_ADCH	=	0x00bb
Fmdrip$RNDL$0$0 == 0x00bc
_RNDL	=	0x00bc
Fmdrip$RNDH$0$0 == 0x00bd
_RNDH	=	0x00bd
Fmdrip$SLEEP$0$0 == 0x00be
_SLEEP	=	0x00be
Fmdrip$IRCON$0$0 == 0x00c0
_IRCON	=	0x00c0
Fmdrip$U0DBUF$0$0 == 0x00c1
_U0DBUF	=	0x00c1
Fmdrip$U0BAUD$0$0 == 0x00c2
_U0BAUD	=	0x00c2
Fmdrip$U0UCR$0$0 == 0x00c4
_U0UCR	=	0x00c4
Fmdrip$U0GCR$0$0 == 0x00c5
_U0GCR	=	0x00c5
Fmdrip$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
Fmdrip$MEMCTR$0$0 == 0x00c7
_MEMCTR	=	0x00c7
Fmdrip$WDCTL$0$0 == 0x00c9
_WDCTL	=	0x00c9
Fmdrip$T3CNT$0$0 == 0x00ca
_T3CNT	=	0x00ca
Fmdrip$T3CTL$0$0 == 0x00cb
_T3CTL	=	0x00cb
Fmdrip$T3CCTL0$0$0 == 0x00cc
_T3CCTL0	=	0x00cc
Fmdrip$T3CC0$0$0 == 0x00cd
_T3CC0	=	0x00cd
Fmdrip$T3CCTL1$0$0 == 0x00ce
_T3CCTL1	=	0x00ce
Fmdrip$T3CC1$0$0 == 0x00cf
_T3CC1	=	0x00cf
Fmdrip$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
Fmdrip$DMAIRQ$0$0 == 0x00d1
_DMAIRQ	=	0x00d1
Fmdrip$DMA1CFGL$0$0 == 0x00d2
_DMA1CFGL	=	0x00d2
Fmdrip$DMA1CFGH$0$0 == 0x00d3
_DMA1CFGH	=	0x00d3
Fmdrip$DMA0CFGL$0$0 == 0x00d4
_DMA0CFGL	=	0x00d4
Fmdrip$DMA0CFGH$0$0 == 0x00d5
_DMA0CFGH	=	0x00d5
Fmdrip$DMAARM$0$0 == 0x00d6
_DMAARM	=	0x00d6
Fmdrip$DMAREQ$0$0 == 0x00d7
_DMAREQ	=	0x00d7
Fmdrip$TIMIF$0$0 == 0x00d8
_TIMIF	=	0x00d8
Fmdrip$RFD$0$0 == 0x00d9
_RFD	=	0x00d9
Fmdrip$T1CC0L$0$0 == 0x00da
_T1CC0L	=	0x00da
Fmdrip$T1CC0H$0$0 == 0x00db
_T1CC0H	=	0x00db
Fmdrip$T1CC1L$0$0 == 0x00dc
_T1CC1L	=	0x00dc
Fmdrip$T1CC1H$0$0 == 0x00dd
_T1CC1H	=	0x00dd
Fmdrip$T1CC2L$0$0 == 0x00de
_T1CC2L	=	0x00de
Fmdrip$T1CC2H$0$0 == 0x00df
_T1CC2H	=	0x00df
Fmdrip$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
Fmdrip$RFST$0$0 == 0x00e1
_RFST	=	0x00e1
Fmdrip$T1CNTL$0$0 == 0x00e2
_T1CNTL	=	0x00e2
Fmdrip$T1CNTH$0$0 == 0x00e3
_T1CNTH	=	0x00e3
Fmdrip$T1CTL$0$0 == 0x00e4
_T1CTL	=	0x00e4
Fmdrip$T1CCTL0$0$0 == 0x00e5
_T1CCTL0	=	0x00e5
Fmdrip$T1CCTL1$0$0 == 0x00e6
_T1CCTL1	=	0x00e6
Fmdrip$T1CCTL2$0$0 == 0x00e7
_T1CCTL2	=	0x00e7
Fmdrip$IRCON2$0$0 == 0x00e8
_IRCON2	=	0x00e8
Fmdrip$RFIF$0$0 == 0x00e9
_RFIF	=	0x00e9
Fmdrip$T4CNT$0$0 == 0x00ea
_T4CNT	=	0x00ea
Fmdrip$T4CTL$0$0 == 0x00eb
_T4CTL	=	0x00eb
Fmdrip$T4CCTL0$0$0 == 0x00ec
_T4CCTL0	=	0x00ec
Fmdrip$T4CC0$0$0 == 0x00ed
_T4CC0	=	0x00ed
Fmdrip$T4CCTL1$0$0 == 0x00ee
_T4CCTL1	=	0x00ee
Fmdrip$T4CC1$0$0 == 0x00ef
_T4CC1	=	0x00ef
Fmdrip$B$0$0 == 0x00f0
_B	=	0x00f0
Fmdrip$PERCFG$0$0 == 0x00f1
_PERCFG	=	0x00f1
Fmdrip$ADCCFG$0$0 == 0x00f2
_ADCCFG	=	0x00f2
Fmdrip$P0SEL$0$0 == 0x00f3
_P0SEL	=	0x00f3
Fmdrip$P1SEL$0$0 == 0x00f4
_P1SEL	=	0x00f4
Fmdrip$P2SEL$0$0 == 0x00f5
_P2SEL	=	0x00f5
Fmdrip$P1INP$0$0 == 0x00f6
_P1INP	=	0x00f6
Fmdrip$P2INP$0$0 == 0x00f7
_P2INP	=	0x00f7
Fmdrip$U1CSR$0$0 == 0x00f8
_U1CSR	=	0x00f8
Fmdrip$U1DBUF$0$0 == 0x00f9
_U1DBUF	=	0x00f9
Fmdrip$U1BAUD$0$0 == 0x00fa
_U1BAUD	=	0x00fa
Fmdrip$U1UCR$0$0 == 0x00fb
_U1UCR	=	0x00fb
Fmdrip$U1GCR$0$0 == 0x00fc
_U1GCR	=	0x00fc
Fmdrip$P0DIR$0$0 == 0x00fd
_P0DIR	=	0x00fd
Fmdrip$P1DIR$0$0 == 0x00fe
_P1DIR	=	0x00fe
Fmdrip$P2DIR$0$0 == 0x00ff
_P2DIR	=	0x00ff
Fmdrip$DMA0CFG$0$0 == 0xffffd5d4
_DMA0CFG	=	0xffffd5d4
Fmdrip$DMA1CFG$0$0 == 0xffffd3d2
_DMA1CFG	=	0xffffd3d2
Fmdrip$FADDR$0$0 == 0xffffadac
_FADDR	=	0xffffadac
Fmdrip$ADC$0$0 == 0xffffbbba
_ADC	=	0xffffbbba
Fmdrip$T1CC0$0$0 == 0xffffdbda
_T1CC0	=	0xffffdbda
Fmdrip$T1CC1$0$0 == 0xffffdddc
_T1CC1	=	0xffffdddc
Fmdrip$T1CC2$0$0 == 0xffffdfde
_T1CC2	=	0xffffdfde
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
Fmdrip$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
Fmdrip$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
Fmdrip$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
Fmdrip$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
Fmdrip$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
Fmdrip$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
Fmdrip$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
Fmdrip$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
Fmdrip$_TCON_0$0$0 == 0x0088
__TCON_0	=	0x0088
Fmdrip$RFTXRXIF$0$0 == 0x0089
_RFTXRXIF	=	0x0089
Fmdrip$_TCON_2$0$0 == 0x008a
__TCON_2	=	0x008a
Fmdrip$URX0IF$0$0 == 0x008b
_URX0IF	=	0x008b
Fmdrip$_TCON_4$0$0 == 0x008c
__TCON_4	=	0x008c
Fmdrip$ADCIF$0$0 == 0x008d
_ADCIF	=	0x008d
Fmdrip$_TCON_6$0$0 == 0x008e
__TCON_6	=	0x008e
Fmdrip$URX1IF$0$0 == 0x008f
_URX1IF	=	0x008f
Fmdrip$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
Fmdrip$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
Fmdrip$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
Fmdrip$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
Fmdrip$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
Fmdrip$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
Fmdrip$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
Fmdrip$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
Fmdrip$ENCIF_0$0$0 == 0x0098
_ENCIF_0	=	0x0098
Fmdrip$ENCIF_1$0$0 == 0x0099
_ENCIF_1	=	0x0099
Fmdrip$_SOCON2$0$0 == 0x009a
__SOCON2	=	0x009a
Fmdrip$_SOCON3$0$0 == 0x009b
__SOCON3	=	0x009b
Fmdrip$_SOCON4$0$0 == 0x009c
__SOCON4	=	0x009c
Fmdrip$_SOCON5$0$0 == 0x009d
__SOCON5	=	0x009d
Fmdrip$_SOCON6$0$0 == 0x009e
__SOCON6	=	0x009e
Fmdrip$_SOCON7$0$0 == 0x009f
__SOCON7	=	0x009f
Fmdrip$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
Fmdrip$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
Fmdrip$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
Fmdrip$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
Fmdrip$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
Fmdrip$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
Fmdrip$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
Fmdrip$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
Fmdrip$RFTXRXIE$0$0 == 0x00a8
_RFTXRXIE	=	0x00a8
Fmdrip$ADCIE$0$0 == 0x00a9
_ADCIE	=	0x00a9
Fmdrip$URX0IE$0$0 == 0x00aa
_URX0IE	=	0x00aa
Fmdrip$URX1IE$0$0 == 0x00ab
_URX1IE	=	0x00ab
Fmdrip$ENCIE$0$0 == 0x00ac
_ENCIE	=	0x00ac
Fmdrip$STIE$0$0 == 0x00ad
_STIE	=	0x00ad
Fmdrip$_IEN06$0$0 == 0x00ae
__IEN06	=	0x00ae
Fmdrip$EA$0$0 == 0x00af
_EA	=	0x00af
Fmdrip$DMAIE$0$0 == 0x00b8
_DMAIE	=	0x00b8
Fmdrip$T1IE$0$0 == 0x00b9
_T1IE	=	0x00b9
Fmdrip$T2IE$0$0 == 0x00ba
_T2IE	=	0x00ba
Fmdrip$T3IE$0$0 == 0x00bb
_T3IE	=	0x00bb
Fmdrip$T4IE$0$0 == 0x00bc
_T4IE	=	0x00bc
Fmdrip$P0IE$0$0 == 0x00bd
_P0IE	=	0x00bd
Fmdrip$_IEN16$0$0 == 0x00be
__IEN16	=	0x00be
Fmdrip$_IEN17$0$0 == 0x00bf
__IEN17	=	0x00bf
Fmdrip$DMAIF$0$0 == 0x00c0
_DMAIF	=	0x00c0
Fmdrip$T1IF$0$0 == 0x00c1
_T1IF	=	0x00c1
Fmdrip$T2IF$0$0 == 0x00c2
_T2IF	=	0x00c2
Fmdrip$T3IF$0$0 == 0x00c3
_T3IF	=	0x00c3
Fmdrip$T4IF$0$0 == 0x00c4
_T4IF	=	0x00c4
Fmdrip$P0IF$0$0 == 0x00c5
_P0IF	=	0x00c5
Fmdrip$_IRCON6$0$0 == 0x00c6
__IRCON6	=	0x00c6
Fmdrip$STIF$0$0 == 0x00c7
_STIF	=	0x00c7
Fmdrip$P$0$0 == 0x00d0
_P	=	0x00d0
Fmdrip$F1$0$0 == 0x00d1
_F1	=	0x00d1
Fmdrip$OV$0$0 == 0x00d2
_OV	=	0x00d2
Fmdrip$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
Fmdrip$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
Fmdrip$F0$0$0 == 0x00d5
_F0	=	0x00d5
Fmdrip$AC$0$0 == 0x00d6
_AC	=	0x00d6
Fmdrip$CY$0$0 == 0x00d7
_CY	=	0x00d7
Fmdrip$T3OVFIF$0$0 == 0x00d8
_T3OVFIF	=	0x00d8
Fmdrip$T3CH0IF$0$0 == 0x00d9
_T3CH0IF	=	0x00d9
Fmdrip$T3CH1IF$0$0 == 0x00da
_T3CH1IF	=	0x00da
Fmdrip$T4OVFIF$0$0 == 0x00db
_T4OVFIF	=	0x00db
Fmdrip$T4CH0IF$0$0 == 0x00dc
_T4CH0IF	=	0x00dc
Fmdrip$T4CH1IF$0$0 == 0x00dd
_T4CH1IF	=	0x00dd
Fmdrip$OVFIM$0$0 == 0x00de
_OVFIM	=	0x00de
Fmdrip$_TIMIF7$0$0 == 0x00df
__TIMIF7	=	0x00df
Fmdrip$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
Fmdrip$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
Fmdrip$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
Fmdrip$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
Fmdrip$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
Fmdrip$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
Fmdrip$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
Fmdrip$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
Fmdrip$P2IF$0$0 == 0x00e8
_P2IF	=	0x00e8
Fmdrip$UTX0IF$0$0 == 0x00e9
_UTX0IF	=	0x00e9
Fmdrip$UTX1IF$0$0 == 0x00ea
_UTX1IF	=	0x00ea
Fmdrip$P1IF$0$0 == 0x00eb
_P1IF	=	0x00eb
Fmdrip$WDTIF$0$0 == 0x00ec
_WDTIF	=	0x00ec
Fmdrip$_IRCON25$0$0 == 0x00ed
__IRCON25	=	0x00ed
Fmdrip$_IRCON26$0$0 == 0x00ee
__IRCON26	=	0x00ee
Fmdrip$_IRCON27$0$0 == 0x00ef
__IRCON27	=	0x00ef
Fmdrip$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
Fmdrip$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
Fmdrip$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
Fmdrip$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
Fmdrip$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
Fmdrip$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
Fmdrip$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
Fmdrip$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
Fmdrip$U1ACTIVE$0$0 == 0x00f8
_U1ACTIVE	=	0x00f8
Fmdrip$U1TX_BYTE$0$0 == 0x00f9
_U1TX_BYTE	=	0x00f9
Fmdrip$U1RX_BYTE$0$0 == 0x00fa
_U1RX_BYTE	=	0x00fa
Fmdrip$U1ERR$0$0 == 0x00fb
_U1ERR	=	0x00fb
Fmdrip$U1FE$0$0 == 0x00fc
_U1FE	=	0x00fc
Fmdrip$U1SLAVE$0$0 == 0x00fd
_U1SLAVE	=	0x00fd
Fmdrip$U1RE$0$0 == 0x00fe
_U1RE	=	0x00fe
Fmdrip$U1MODE$0$0 == 0x00ff
_U1MODE	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
Lmdrip.getFonaString$sloc0$1$0==.
_getFonaString_sloc0_1_0:
	.ds 4
Lmdrip.getFonaMillivolts$sloc0$1$0==.
_getFonaMillivolts_sloc0_1_0:
	.ds 2
Lmdrip.getFonaGPS$sloc0$1$0==.
_getFonaGPS_sloc0_1_0:
	.ds 1
Lmdrip.getFonaGPS$sloc1$1$0==.
_getFonaGPS_sloc1_1_0:
	.ds 1
Lmdrip.print_packet$sloc0$1$0==.
_print_packet_sloc0_1_0:
	.ds 2
Lmdrip.print_packet$sloc1$1$0==.
_print_packet_sloc1_1_0:
	.ds 2
Lmdrip.print_packet$sloc2$1$0==.
_print_packet_sloc2_1_0:
	.ds 2
Lmdrip.print_packet$sloc3$1$0==.
_print_packet_sloc3_1_0:
	.ds 4
Lmdrip.goToSleep$sloc0$1$0==.
_goToSleep_sloc0_1_0:
	.ds 2
Lmdrip.goToSleep$sloc1$1$0==.
_goToSleep_sloc1_1_0:
	.ds 4
Lmdrip.WaitForPacket$sloc0$1$0==.
_WaitForPacket_sloc0_1_0:
	.ds 1
Lmdrip.WaitForPacket$sloc1$1$0==.
_WaitForPacket_sloc1_1_0:
	.ds 2
Lmdrip.WaitForPacket$sloc2$1$0==.
_WaitForPacket_sloc2_1_0:
	.ds 4
Lmdrip.WaitForPacket$sloc3$1$0==.
_WaitForPacket_sloc3_1_0:
	.ds 4
Lmdrip.WaitForPacket$sloc4$1$0==.
_WaitForPacket_sloc4_1_0:
	.ds 4
Lmdrip.delayFor$sloc0$1$0==.
_delayFor_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
Lmdrip.dexcom_src_to_ascii$sloc0$1$0==.
_dexcom_src_to_ascii_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
Fmdrip$only_listen_for_my_transmitter$0$0==.
_only_listen_for_my_transmitter:
	.ds 1
Fmdrip$status_lights$0$0==.
_status_lights:
	.ds 1
Fmdrip$allow_alternate_usb_protocol$0$0==.
_allow_alternate_usb_protocol:
	.ds 1
Fmdrip$enable_wixfone$0$0==.
_enable_wixfone:
	.ds 1
Fmdrip$encrypt_output$0$0==.
_encrypt_output:
	.ds 1
G$needsTimingCalibration$0$0==.
_needsTimingCalibration::
	.ds 1
G$usbEnabled$0$0==.
_usbEnabled::
	.ds 1
Lmdrip.goToSleep$storedDma0Armed$3$3==.
_goToSleep_storedDma0Armed_3_3:
	.ds 1
Lmdrip.goToSleep$savedP0IE$3$3==.
_goToSleep_savedP0IE_3_3:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
Fmdrip$wake_earlier_for_next_miss$0$0==.
_wake_earlier_for_next_miss:
	.ds 1
Fmdrip$misses_until_failure$0$0==.
_misses_until_failure:
	.ds 1
Fmdrip$fOffset$0$0==.
_fOffset:
	.ds 4
Fmdrip$nChannels$0$0==.
_nChannels:
	.ds 4
Fmdrip$waitTimes$0$0==.
_waitTimes:
	.ds 16
Fmdrip$delayedWaitTimes$0$0==.
_delayedWaitTimes:
	.ds 16
Fmdrip$catch_offsets$0$0==.
_catch_offsets:
	.ds 16
Fmdrip$last_catch_channel$0$0==.
_last_catch_channel:
	.ds 1
Fmdrip$save_IEN0$0$0==.
_save_IEN0:
	.ds 1
Fmdrip$save_IEN1$0$0==.
_save_IEN1:
	.ds 1
Fmdrip$save_IEN2$0$0==.
_save_IEN2:
	.ds 1
G$sequential_missed_packets$0$0==.
_sequential_missed_packets::
	.ds 1
G$intMaxStrLen$0$0==.
_intMaxStrLen::
	.ds 1
Lmdrip.min8$b$1$1==.
_min8_PARM_2:
	.ds 1
Lmdrip.bit_reverse_bytes$nLen$1$1==.
_bit_reverse_bytes_PARM_2:
	.ds 1
Lmdrip.bit_reverse_bytes$buf$1$1==.
_bit_reverse_bytes_buf_1_1:
	.ds 3
Lmdrip.getFonaGPS$CIPGSMLOC$1$1==.
_getFonaGPS_CIPGSMLOC_1_1:
	.ds 2
Lmdrip.print_packet$pPkt$1$1==.
_print_packet_pPkt_1_1:
	.ds 2
Lmdrip.goToSleep$storedDescHigh$3$3==.
_goToSleep_storedDescHigh_3_3:
	.ds 1
Lmdrip.goToSleep$storedDescLow$3$3==.
_goToSleep_storedDescLow_3_3:
	.ds 1
Lmdrip.goToSleep$storedIEN1$3$3==.
_goToSleep_storedIEN1_3_3:
	.ds 1
Lmdrip.goToSleep$storedIEN2$3$3==.
_goToSleep_storedIEN2_3_3:
	.ds 1
Lmdrip.goToSleep$savedP1SEL$3$3==.
_goToSleep_savedP1SEL_3_3:
	.ds 1
Lmdrip.goToSleep$savedP1DIR$3$3==.
_goToSleep_savedP1DIR_3_3:
	.ds 1
Lmdrip.goToSleep$start_waiting$3$8==.
_goToSleep_start_waiting_3_8:
	.ds 4
Lmdrip.WaitForPacket$pkt$1$1==.
_WaitForPacket_PARM_2:
	.ds 2
Lmdrip.get_packet$pPkt$1$1==.
_get_packet_pPkt_1_1:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
Fmdrip$SYNC1$0$0 == 0xdf00
_SYNC1	=	0xdf00
Fmdrip$SYNC0$0$0 == 0xdf01
_SYNC0	=	0xdf01
Fmdrip$PKTLEN$0$0 == 0xdf02
_PKTLEN	=	0xdf02
Fmdrip$PKTCTRL1$0$0 == 0xdf03
_PKTCTRL1	=	0xdf03
Fmdrip$PKTCTRL0$0$0 == 0xdf04
_PKTCTRL0	=	0xdf04
Fmdrip$ADDR$0$0 == 0xdf05
_ADDR	=	0xdf05
Fmdrip$CHANNR$0$0 == 0xdf06
_CHANNR	=	0xdf06
Fmdrip$FSCTRL1$0$0 == 0xdf07
_FSCTRL1	=	0xdf07
Fmdrip$FSCTRL0$0$0 == 0xdf08
_FSCTRL0	=	0xdf08
Fmdrip$FREQ2$0$0 == 0xdf09
_FREQ2	=	0xdf09
Fmdrip$FREQ1$0$0 == 0xdf0a
_FREQ1	=	0xdf0a
Fmdrip$FREQ0$0$0 == 0xdf0b
_FREQ0	=	0xdf0b
Fmdrip$MDMCFG4$0$0 == 0xdf0c
_MDMCFG4	=	0xdf0c
Fmdrip$MDMCFG3$0$0 == 0xdf0d
_MDMCFG3	=	0xdf0d
Fmdrip$MDMCFG2$0$0 == 0xdf0e
_MDMCFG2	=	0xdf0e
Fmdrip$MDMCFG1$0$0 == 0xdf0f
_MDMCFG1	=	0xdf0f
Fmdrip$MDMCFG0$0$0 == 0xdf10
_MDMCFG0	=	0xdf10
Fmdrip$DEVIATN$0$0 == 0xdf11
_DEVIATN	=	0xdf11
Fmdrip$MCSM2$0$0 == 0xdf12
_MCSM2	=	0xdf12
Fmdrip$MCSM1$0$0 == 0xdf13
_MCSM1	=	0xdf13
Fmdrip$MCSM0$0$0 == 0xdf14
_MCSM0	=	0xdf14
Fmdrip$FOCCFG$0$0 == 0xdf15
_FOCCFG	=	0xdf15
Fmdrip$BSCFG$0$0 == 0xdf16
_BSCFG	=	0xdf16
Fmdrip$AGCCTRL2$0$0 == 0xdf17
_AGCCTRL2	=	0xdf17
Fmdrip$AGCCTRL1$0$0 == 0xdf18
_AGCCTRL1	=	0xdf18
Fmdrip$AGCCTRL0$0$0 == 0xdf19
_AGCCTRL0	=	0xdf19
Fmdrip$FREND1$0$0 == 0xdf1a
_FREND1	=	0xdf1a
Fmdrip$FREND0$0$0 == 0xdf1b
_FREND0	=	0xdf1b
Fmdrip$FSCAL3$0$0 == 0xdf1c
_FSCAL3	=	0xdf1c
Fmdrip$FSCAL2$0$0 == 0xdf1d
_FSCAL2	=	0xdf1d
Fmdrip$FSCAL1$0$0 == 0xdf1e
_FSCAL1	=	0xdf1e
Fmdrip$FSCAL0$0$0 == 0xdf1f
_FSCAL0	=	0xdf1f
Fmdrip$TEST2$0$0 == 0xdf23
_TEST2	=	0xdf23
Fmdrip$TEST1$0$0 == 0xdf24
_TEST1	=	0xdf24
Fmdrip$TEST0$0$0 == 0xdf25
_TEST0	=	0xdf25
Fmdrip$PA_TABLE0$0$0 == 0xdf2e
_PA_TABLE0	=	0xdf2e
Fmdrip$IOCFG2$0$0 == 0xdf2f
_IOCFG2	=	0xdf2f
Fmdrip$IOCFG1$0$0 == 0xdf30
_IOCFG1	=	0xdf30
Fmdrip$IOCFG0$0$0 == 0xdf31
_IOCFG0	=	0xdf31
Fmdrip$PARTNUM$0$0 == 0xdf36
_PARTNUM	=	0xdf36
Fmdrip$VERSION$0$0 == 0xdf37
_VERSION	=	0xdf37
Fmdrip$FREQEST$0$0 == 0xdf38
_FREQEST	=	0xdf38
Fmdrip$LQI$0$0 == 0xdf39
_LQI	=	0xdf39
Fmdrip$RSSI$0$0 == 0xdf3a
_RSSI	=	0xdf3a
Fmdrip$MARCSTATE$0$0 == 0xdf3b
_MARCSTATE	=	0xdf3b
Fmdrip$PKTSTATUS$0$0 == 0xdf3c
_PKTSTATUS	=	0xdf3c
Fmdrip$VCO_VC_DAC$0$0 == 0xdf3d
_VCO_VC_DAC	=	0xdf3d
Fmdrip$I2SCFG0$0$0 == 0xdf40
_I2SCFG0	=	0xdf40
Fmdrip$I2SCFG1$0$0 == 0xdf41
_I2SCFG1	=	0xdf41
Fmdrip$I2SDATL$0$0 == 0xdf42
_I2SDATL	=	0xdf42
Fmdrip$I2SDATH$0$0 == 0xdf43
_I2SDATH	=	0xdf43
Fmdrip$I2SWCNT$0$0 == 0xdf44
_I2SWCNT	=	0xdf44
Fmdrip$I2SSTAT$0$0 == 0xdf45
_I2SSTAT	=	0xdf45
Fmdrip$I2SCLKF0$0$0 == 0xdf46
_I2SCLKF0	=	0xdf46
Fmdrip$I2SCLKF1$0$0 == 0xdf47
_I2SCLKF1	=	0xdf47
Fmdrip$I2SCLKF2$0$0 == 0xdf48
_I2SCLKF2	=	0xdf48
Fmdrip$USBADDR$0$0 == 0xde00
_USBADDR	=	0xde00
Fmdrip$USBPOW$0$0 == 0xde01
_USBPOW	=	0xde01
Fmdrip$USBIIF$0$0 == 0xde02
_USBIIF	=	0xde02
Fmdrip$USBOIF$0$0 == 0xde04
_USBOIF	=	0xde04
Fmdrip$USBCIF$0$0 == 0xde06
_USBCIF	=	0xde06
Fmdrip$USBIIE$0$0 == 0xde07
_USBIIE	=	0xde07
Fmdrip$USBOIE$0$0 == 0xde09
_USBOIE	=	0xde09
Fmdrip$USBCIE$0$0 == 0xde0b
_USBCIE	=	0xde0b
Fmdrip$USBFRML$0$0 == 0xde0c
_USBFRML	=	0xde0c
Fmdrip$USBFRMH$0$0 == 0xde0d
_USBFRMH	=	0xde0d
Fmdrip$USBINDEX$0$0 == 0xde0e
_USBINDEX	=	0xde0e
Fmdrip$USBMAXI$0$0 == 0xde10
_USBMAXI	=	0xde10
Fmdrip$USBCSIL$0$0 == 0xde11
_USBCSIL	=	0xde11
Fmdrip$USBCSIH$0$0 == 0xde12
_USBCSIH	=	0xde12
Fmdrip$USBMAXO$0$0 == 0xde13
_USBMAXO	=	0xde13
Fmdrip$USBCSOL$0$0 == 0xde14
_USBCSOL	=	0xde14
Fmdrip$USBCSOH$0$0 == 0xde15
_USBCSOH	=	0xde15
Fmdrip$USBCNTL$0$0 == 0xde16
_USBCNTL	=	0xde16
Fmdrip$USBCNTH$0$0 == 0xde17
_USBCNTH	=	0xde17
Fmdrip$USBF0$0$0 == 0xde20
_USBF0	=	0xde20
Fmdrip$USBF1$0$0 == 0xde22
_USBF1	=	0xde22
Fmdrip$USBF2$0$0 == 0xde24
_USBF2	=	0xde24
Fmdrip$USBF3$0$0 == 0xde26
_USBF3	=	0xde26
Fmdrip$USBF4$0$0 == 0xde28
_USBF4	=	0xde28
Fmdrip$USBF5$0$0 == 0xde2a
_USBF5	=	0xde2a
Lmdrip.bit_reverse_byte$bRet$1$1==.
_bit_reverse_byte_bRet_1_1:
	.ds 1
Lmdrip.dex_num_decoder$usReversed$1$1==.
_dex_num_decoder_usReversed_1_1:
	.ds 2
Lmdrip.dexcom_src_to_ascii$addr$1$1==.
_dexcom_src_to_ascii_PARM_2:
	.ds 2
Lmdrip.dexcom_src_to_ascii$src$1$1==.
_dexcom_src_to_ascii_src_1_1:
	.ds 4
Lmdrip.getSrcValue$srcVal$1$1==.
_getSrcValue_srcVal_1_1:
	.ds 1
Lmdrip.getFonaString$uartCharacters$1$1==.
_getFonaString_uartCharacters_1_1:
	.ds 80
Lmdrip.getFonaString$stop$1$1==.
_getFonaString_stop_1_1:
	.ds 4
Lmdrip.getFonaString$now$1$1==.
_getFonaString_now_1_1:
	.ds 4
Lmdrip.sendAT$atString$1$1==.
_sendAT_atString_1_1:
	.ds 2
Lmdrip.sendAT$ATresponse$1$1==.
_sendAT_ATresponse_1_1:
	.ds 80
Lmdrip.configFona$atString$1$1==.
_configFona_atString_1_1:
	.ds 40
Lmdrip.enableFona$atString$1$1==.
_enableFona_atString_1_1:
	.ds 40
Lmdrip.fonaDisable$atString$1$1==.
_fonaDisable_atString_1_1:
	.ds 40
Lmdrip.fonaConnect$atString$1$1==.
_fonaConnect_atString_1_1:
	.ds 40
Lmdrip.getFonaMillivolts$i$1$1==.
_getFonaMillivolts_i_1_1:
	.ds 2
Lmdrip.getFonaMillivolts$intMV$1$1==.
_getFonaMillivolts_intMV_1_1:
	.ds 2
Lmdrip.getFonaMillivolts$c$1$1==.
_getFonaMillivolts_c_1_1:
	.ds 80
Lmdrip.getFonaMillivolts$atString$1$1==.
_getFonaMillivolts_atString_1_1:
	.ds 40
Lmdrip.getFonaGPS$i$1$1==.
_getFonaGPS_i_1_1:
	.ds 1
Lmdrip.getFonaGPS$j$1$1==.
_getFonaGPS_j_1_1:
	.ds 1
Lmdrip.getFonaGPS$stage$1$1==.
_getFonaGPS_stage_1_1:
	.ds 1
Lmdrip.getFonaGPS$status$1$1==.
_getFonaGPS_status_1_1:
	.ds 6
Lmdrip.getFonaGPS$atString$1$1==.
_getFonaGPS_atString_1_1:
	.ds 40
Lmdrip.getFonaGPS$c$1$1==.
_getFonaGPS_c_1_1:
	.ds 80
Lmdrip.print_packet$fonaLatLong$1$1==.
_print_packet_fonaLatLong_1_1:
	.ds 25
Lmdrip.print_packet$transID$1$1==.
_print_packet_transID_1_1:
	.ds 6
Lmdrip.print_packet$CIPResponse$1$1==.
_print_packet_CIPResponse_1_1:
	.ds 42
Lmdrip.print_packet$iv$1$1==.
_print_packet_iv_1_1:
	.ds 16
Lmdrip.print_packet$sprintfBuffer$1$1==.
_print_packet_sprintfBuffer_1_1:
	.ds 64
Lmdrip.print_packet$AESBuffer$1$1==.
_print_packet_AESBuffer_1_1:
	.ds 64
Lmdrip.goToSleep$seconds$1$1==.
_goToSleep_seconds_1_1:
	.ds 2
Lmdrip.putchar$c$1$1==.
_putchar_c_1_1:
	.ds 1
Lmdrip.swap_channel$newFSCTRL0$1$1==.
_swap_channel_PARM_2:
	.ds 1
Lmdrip.swap_channel$channel$1$1==.
_swap_channel_channel_1_1:
	.ds 1
Lmdrip.WaitForPacket$channel$1$1==.
_WaitForPacket_PARM_3:
	.ds 1
Lmdrip.WaitForPacket$milliseconds$1$1==.
_WaitForPacket_milliseconds_1_1:
	.ds 2
Lmdrip.WaitForPacket$transID$1$1==.
_WaitForPacket_transID_1_1:
	.ds 6
Lmdrip.delayFor$wait_chan$1$1==.
_delayFor_wait_chan_1_1:
	.ds 2
Lmdrip.main$Pkt$2$4==.
_main_Pkt_2_4:
	.ds 21
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
Fmdrip$transmitter_id$0$0==.
_transmitter_id:
	.ds 6
Fmdrip$dexie_host_address$0$0==.
_dexie_host_address:
	.ds 28
Fmdrip$start_channel$0$0==.
_start_channel:
	.ds 1
Fmdrip$defaultfOffset$0$0==.
_defaultfOffset:
	.ds 4
G$PM2_BUF$0$0==.
_PM2_BUF::
	.ds 7
G$dmaDesc$0$0==.
_dmaDesc::
	.ds 8
G$AT_TIMEOUT$0$0==.
_AT_TIMEOUT::
	.ds 1
Fmdrip$defaultATWait$0$0==.
_defaultATWait:
	.ds 4
Fmdrip$key$0$0==.
_key:
	.ds 16
G$SrcNameTable$0$0==.
_SrcNameTable::
	.ds 32
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_URX1
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_ST
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_ISR_T4
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_UTX1
	.ds	5
	reti
	.ds	7
	ljmp	_ISR_RF
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'getFonaMillivolts'
;------------------------------------------------------------
;sloc0                     Allocated with name '_getFonaMillivolts_sloc0_1_0'
;i                         Allocated with name '_getFonaMillivolts_i_1_1'
;counter                   Allocated with name '_getFonaMillivolts_counter_1_1'
;loop                      Allocated with name '_getFonaMillivolts_loop_1_1'
;rxCount                   Allocated with name '_getFonaMillivolts_rxCount_1_1'
;intMV                     Allocated with name '_getFonaMillivolts_intMV_1_1'
;c                         Allocated with name '_getFonaMillivolts_c_1_1'
;atString                  Allocated with name '_getFonaMillivolts_atString_1_1'
;------------------------------------------------------------
	G$getFonaMillivolts$0$0 ==.
	C$mdrip.c$409$1$1 ==.
;	apps/mdrip/mdrip.c:409: XDATA static int16 i=0;
	mov	dptr,#_getFonaMillivolts_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	G$main$0$0 ==.
	C$mdrip.c$48$1$1 ==.
;	apps/mdrip/mdrip.c:48: static volatile BIT only_listen_for_my_transmitter = 1;                                           //
	setb	_only_listen_for_my_transmitter
	G$main$0$0 ==.
	C$mdrip.c$51$1$1 ==.
;	apps/mdrip/mdrip.c:51: static volatile BIT status_lights = 1;                                                            //
	setb	_status_lights
	G$main$0$0 ==.
	C$mdrip.c$55$1$1 ==.
;	apps/mdrip/mdrip.c:55: static volatile BIT allow_alternate_usb_protocol = 0;
	clr	_allow_alternate_usb_protocol
	G$main$0$0 ==.
	C$mdrip.c$79$1$1 ==.
;	apps/mdrip/mdrip.c:79: static volatile BIT enable_wixfone = 1;	
	setb	_enable_wixfone
	G$main$0$0 ==.
	C$mdrip.c$82$1$1 ==.
;	apps/mdrip/mdrip.c:82: static volatile BIT encrypt_output = 1;
	setb	_encrypt_output
	G$main$0$0 ==.
	C$mdrip.c$118$1$1 ==.
;	apps/mdrip/mdrip.c:118: BIT needsTimingCalibration = 1;
	setb	_needsTimingCalibration
	G$main$0$0 ==.
	C$mdrip.c$119$1$1 ==.
;	apps/mdrip/mdrip.c:119: BIT usbEnabled = 1;
	setb	_usbEnabled
	G$main$0$0 ==.
	C$mdrip.c$68$1$1 ==.
;	apps/mdrip/mdrip.c:68: static volatile uint8 wake_earlier_for_next_miss = 20;                                            //
	mov	r0,#_wake_earlier_for_next_miss
	mov	a,#0x14
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$72$1$1 ==.
;	apps/mdrip/mdrip.c:72: static volatile uint8 misses_until_failure = 1;                                                   //
	mov	r0,#_misses_until_failure
	mov	a,#0x01
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$110$1$1 ==.
;	apps/mdrip/mdrip.c:110: static int8 fOffset[NUM_CHANNELS] = {0xCE,0xD5,0xE6,0xE5};
	mov	r0,#_fOffset
	mov	a,#0xCE
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0001)
	mov	a,#0xD5
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0002)
	mov	a,#0xE6
	movx	@r0,a
	mov	r0,#(_fOffset + 0x0003)
	mov	a,#0xE5
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$112$1$1 ==.
;	apps/mdrip/mdrip.c:112: static uint8 nChannels[NUM_CHANNELS] = { 0, 100, 199, 209 };
	mov	r0,#_nChannels
	clr	a
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0001)
	mov	a,#0x64
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0002)
	mov	a,#0xC7
	movx	@r0,a
	mov	r0,#(_nChannels + 0x0003)
	mov	a,#0xD1
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$113$1$1 ==.
;	apps/mdrip/mdrip.c:113: static uint32 waitTimes[NUM_CHANNELS] = { 13500, 500, 500, 500 };
	mov	r0,#_waitTimes
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x0004)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x0008)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_waitTimes + 0x000c)
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$115$1$1 ==.
;	apps/mdrip/mdrip.c:115: static uint32 delayedWaitTimes[NUM_CHANNELS] = { 0, 700, 700, 700 };
	mov	r0,#_delayedWaitTimes
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x0004)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x0008)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_delayedWaitTimes + 0x000c)
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$116$1$1 ==.
;	apps/mdrip/mdrip.c:116: static uint32 catch_offsets[NUM_CHANNELS] = { 0, 0, 0, 0 };
	mov	r0,#_catch_offsets
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x0004)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x0008)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#(_catch_offsets + 0x000c)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$117$1$1 ==.
;	apps/mdrip/mdrip.c:117: static uint8 last_catch_channel = 0;
	mov	r0,#_last_catch_channel
	clr	a
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$125$1$1 ==.
;	apps/mdrip/mdrip.c:125: volatile uint8 sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	G$main$0$0 ==.
	C$mdrip.c$128$1$1 ==.
;	apps/mdrip/mdrip.c:128: uint8 intMaxStrLen = 80;
	mov	r0,#_intMaxStrLen
	mov	a,#0x50
	movx	@r0,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sleepInit'
;------------------------------------------------------------
	G$sleepInit$0$0 ==.
	C$mdrip.c$161$0$0 ==.
;	apps/mdrip/mdrip.c:161: void sleepInit(void) {
;	-----------------------------------------
;	 function sleepInit
;	-----------------------------------------
_sleepInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$mdrip.c$162$1$1 ==.
;	apps/mdrip/mdrip.c:162: WORIRQ  |= (1<<4);
	orl	_WORIRQ,#0x10
	C$mdrip.c$163$1$1 ==.
	XG$sleepInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ISR_ST'
;------------------------------------------------------------
	G$ISR_ST$0$0 ==.
	C$mdrip.c$165$1$1 ==.
;	apps/mdrip/mdrip.c:165: ISR(ST, 1) {
;	-----------------------------------------
;	 function ISR_ST
;	-----------------------------------------
_ISR_ST:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	C$mdrip.c$166$1$1 ==.
;	apps/mdrip/mdrip.c:166: IRCON &= 0x7F;
	anl	_IRCON,#0x7F
	C$mdrip.c$167$1$1 ==.
;	apps/mdrip/mdrip.c:167: WORIRQ &= 0xFE;
	anl	_WORIRQ,#0xFE
	C$mdrip.c$168$1$1 ==.
;	apps/mdrip/mdrip.c:168: SLEEP &= 0xFC;
	anl	_SLEEP,#0xFC
	C$mdrip.c$169$1$1 ==.
	XG$ISR_ST$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'switchToRCOSC'
;------------------------------------------------------------
	G$switchToRCOSC$0$0 ==.
	C$mdrip.c$171$1$1 ==.
;	apps/mdrip/mdrip.c:171: void switchToRCOSC(void) {
;	-----------------------------------------
;	 function switchToRCOSC
;	-----------------------------------------
_switchToRCOSC:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$mdrip.c$172$1$1 ==.
;	apps/mdrip/mdrip.c:172: SLEEP &= ~0x04;
	mov	r7,_SLEEP
	anl	ar7,#0xFB
	mov	_SLEEP,r7
	C$mdrip.c$173$1$1 ==.
;	apps/mdrip/mdrip.c:173: while ( ! (SLEEP & 0x20) );
00101$:
	mov	a,_SLEEP
	jnb	acc.5,00101$
	C$mdrip.c$174$1$1 ==.
;	apps/mdrip/mdrip.c:174: CLKCON = (CLKCON & ~0x07) | 0x40 | 0x01;
	mov	r7,_CLKCON
	mov	a,#0xF8
	anl	a,r7
	orl	a,#0x41
	mov	r7,a
	mov	_CLKCON,r7
	C$mdrip.c$175$1$1 ==.
;	apps/mdrip/mdrip.c:175: while ( !(CLKCON & 0x40) );
00104$:
	mov	a,_CLKCON
	jnb	acc.6,00104$
	C$mdrip.c$176$1$1 ==.
;	apps/mdrip/mdrip.c:176: SLEEP |= 0x04;
	orl	_SLEEP,#0x04
	C$mdrip.c$177$1$1 ==.
	XG$switchToRCOSC$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartEnable'
;------------------------------------------------------------
	G$uartEnable$0$0 ==.
	C$mdrip.c$179$1$1 ==.
;	apps/mdrip/mdrip.c:179: void uartEnable() {
;	-----------------------------------------
;	 function uartEnable
;	-----------------------------------------
_uartEnable:
	C$mdrip.c$181$1$1 ==.
;	apps/mdrip/mdrip.c:181: U1UCR &= ~0x40; //CTS/RTS Off
	mov	r7,_U1UCR
	anl	ar7,#0xBF
	mov	_U1UCR,r7
	C$mdrip.c$182$1$1 ==.
;	apps/mdrip/mdrip.c:182: U1CSR |= 0x40;
	orl	_U1CSR,#0x40
	C$mdrip.c$183$1$1 ==.
;	apps/mdrip/mdrip.c:183: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$mdrip.c$184$1$1 ==.
	XG$uartEnable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartDisable'
;------------------------------------------------------------
	G$uartDisable$0$0 ==.
	C$mdrip.c$186$1$1 ==.
;	apps/mdrip/mdrip.c:186: void uartDisable() {
;	-----------------------------------------
;	 function uartDisable
;	-----------------------------------------
_uartDisable:
	C$mdrip.c$187$1$1 ==.
;	apps/mdrip/mdrip.c:187: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$mdrip.c$188$1$1 ==.
;	apps/mdrip/mdrip.c:188: U1UCR &= ~0x40; //CTS/RTS Off
	mov	r7,_U1UCR
	anl	ar7,#0xBF
	mov	_U1UCR,r7
	C$mdrip.c$189$1$1 ==.
;	apps/mdrip/mdrip.c:189: U1CSR &= ~0x40; // Receiver disable
	mov	r7,_U1CSR
	anl	ar7,#0xBF
	mov	_U1CSR,r7
	C$mdrip.c$190$1$1 ==.
	XG$uartDisable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_yellow_led'
;------------------------------------------------------------
	G$blink_yellow_led$0$0 ==.
	C$mdrip.c$192$1$1 ==.
;	apps/mdrip/mdrip.c:192: void blink_yellow_led() {
;	-----------------------------------------
;	 function blink_yellow_led
;	-----------------------------------------
_blink_yellow_led:
	C$mdrip.c$193$1$1 ==.
;	apps/mdrip/mdrip.c:193: if(status_lights) {
	jnb	_status_lights,00103$
	C$mdrip.c$194$3$3 ==.
;	apps/mdrip/mdrip.c:194: LED_YELLOW(((getMs()/250) % 2));//Blink quarter seconds
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0xFA
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	jnb	acc.0,00105$
	orl	_P2DIR,#0x04
	sjmp	00103$
00105$:
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
00103$:
	C$mdrip.c$196$3$1 ==.
	XG$blink_yellow_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'blink_red_led'
;------------------------------------------------------------
	G$blink_red_led$0$0 ==.
	C$mdrip.c$198$3$1 ==.
;	apps/mdrip/mdrip.c:198: void blink_red_led() {
;	-----------------------------------------
;	 function blink_red_led
;	-----------------------------------------
_blink_red_led:
	C$mdrip.c$199$1$1 ==.
;	apps/mdrip/mdrip.c:199: if(status_lights) {
	jnb	_status_lights,00103$
	C$mdrip.c$200$3$3 ==.
;	apps/mdrip/mdrip.c:200: LED_RED(((getMs()/500) % 2));//Blink half seconds
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#__divulong_PARM_2
	mov	a,#0xF4
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	jnb	acc.0,00105$
	orl	_P2DIR,#0x02
	sjmp	00103$
00105$:
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
00103$:
	C$mdrip.c$202$3$1 ==.
	XG$blink_red_led$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getPacketPassedChecksum'
;------------------------------------------------------------
	G$getPacketPassedChecksum$0$0 ==.
	C$mdrip.c$204$3$1 ==.
;	apps/mdrip/mdrip.c:204: uint8 getPacketPassedChecksum(Dexcom_packet* p) {
;	-----------------------------------------
;	 function getPacketPassedChecksum
;	-----------------------------------------
_getPacketPassedChecksum:
	mov	r6,dpl
	mov	r7,dph
	C$mdrip.c$205$1$1 ==.
;	apps/mdrip/mdrip.c:205: return ((p->LQI & 0x80)==0x80) ? 1:0;
	mov	a,#0x14
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x80
	cjne	r7,#0x80,00103$
	mov	r7,#0x01
	sjmp	00104$
00103$:
	mov	r7,#0x00
00104$:
	mov	dpl,r7
	C$mdrip.c$206$1$1 ==.
	XG$getPacketPassedChecksum$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_reverse_byte'
;------------------------------------------------------------
;bRet                      Allocated with name '_bit_reverse_byte_bRet_1_1'
;------------------------------------------------------------
	G$bit_reverse_byte$0$0 ==.
	C$mdrip.c$208$1$1 ==.
;	apps/mdrip/mdrip.c:208: uint8 bit_reverse_byte(uint8 in) {
;	-----------------------------------------
;	 function bit_reverse_byte
;	-----------------------------------------
_bit_reverse_byte:
	mov	r7,dpl
	C$mdrip.c$209$1$1 ==.
;	apps/mdrip/mdrip.c:209: uint8 XDATA bRet = 0;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	clr	a
	movx	@dptr,a
	C$mdrip.c$210$1$1 ==.
;	apps/mdrip/mdrip.c:210: if(in & 0x01)
	mov	a,r7
	jnb	acc.0,00102$
	C$mdrip.c$211$1$1 ==.
;	apps/mdrip/mdrip.c:211: bRet |= 0x80;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	mov	a,#0x80
	movx	@dptr,a
00102$:
	C$mdrip.c$212$1$1 ==.
;	apps/mdrip/mdrip.c:212: if(in & 0x02)
	mov	a,r7
	jnb	acc.1,00104$
	C$mdrip.c$213$1$1 ==.
;	apps/mdrip/mdrip.c:213: bRet |= 0x40;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x40
	movx	@dptr,a
00104$:
	C$mdrip.c$214$1$1 ==.
;	apps/mdrip/mdrip.c:214: if(in & 0x04)
	mov	a,r7
	jnb	acc.2,00106$
	C$mdrip.c$215$1$1 ==.
;	apps/mdrip/mdrip.c:215: bRet |= 0x20;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x20
	movx	@dptr,a
00106$:
	C$mdrip.c$216$1$1 ==.
;	apps/mdrip/mdrip.c:216: if(in & 0x08)
	mov	a,r7
	jnb	acc.3,00108$
	C$mdrip.c$217$1$1 ==.
;	apps/mdrip/mdrip.c:217: bRet |= 0x10;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x10
	movx	@dptr,a
00108$:
	C$mdrip.c$218$1$1 ==.
;	apps/mdrip/mdrip.c:218: if(in & 0x10)
	mov	a,r7
	jnb	acc.4,00110$
	C$mdrip.c$219$1$1 ==.
;	apps/mdrip/mdrip.c:219: bRet |= 0x08;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x08
	movx	@dptr,a
00110$:
	C$mdrip.c$220$1$1 ==.
;	apps/mdrip/mdrip.c:220: if(in & 0x20)
	mov	a,r7
	jnb	acc.5,00112$
	C$mdrip.c$221$1$1 ==.
;	apps/mdrip/mdrip.c:221: bRet |= 0x04;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x04
	movx	@dptr,a
00112$:
	C$mdrip.c$222$1$1 ==.
;	apps/mdrip/mdrip.c:222: if(in & 0x40)
	mov	a,r7
	jnb	acc.6,00114$
	C$mdrip.c$223$1$1 ==.
;	apps/mdrip/mdrip.c:223: bRet |= 0x02;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x02
	movx	@dptr,a
00114$:
	C$mdrip.c$224$1$1 ==.
;	apps/mdrip/mdrip.c:224: if(in & 0x80)
	mov	a,r7
	jnb	acc.7,00116$
	C$mdrip.c$225$1$1 ==.
;	apps/mdrip/mdrip.c:225: bRet |= 0x01;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x01
	movx	@dptr,a
00116$:
	C$mdrip.c$226$1$1 ==.
;	apps/mdrip/mdrip.c:226: return bRet;
	mov	dptr,#_bit_reverse_byte_bRet_1_1
	movx	a,@dptr
	C$mdrip.c$227$1$1 ==.
	XG$bit_reverse_byte$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'min8'
;------------------------------------------------------------
	G$min8$0$0 ==.
	C$mdrip.c$229$1$1 ==.
;	apps/mdrip/mdrip.c:229: uint8 min8(uint8 a, uint8 b) {
;	-----------------------------------------
;	 function min8
;	-----------------------------------------
_min8:
	mov	r7,dpl
	C$mdrip.c$230$1$1 ==.
;	apps/mdrip/mdrip.c:230: if(a < b) return a;
	mov	r0,#_min8_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00102$
	mov	dpl,r7
	sjmp	00103$
00102$:
	C$mdrip.c$231$1$1 ==.
;	apps/mdrip/mdrip.c:231: return b;
	mov	r0,#_min8_PARM_2
	movx	a,@r0
	mov	dpl,a
00103$:
	C$mdrip.c$232$1$1 ==.
	XG$min8$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'bit_reverse_bytes'
;------------------------------------------------------------
;i                         Allocated with name '_bit_reverse_bytes_i_1_1'
;------------------------------------------------------------
	G$bit_reverse_bytes$0$0 ==.
	C$mdrip.c$234$1$1 ==.
;	apps/mdrip/mdrip.c:234: void bit_reverse_bytes(uint8* buf, uint8 nLen) {
;	-----------------------------------------
;	 function bit_reverse_bytes
;	-----------------------------------------
_bit_reverse_bytes:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	r0,#_bit_reverse_bytes_buf_1_1
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$mdrip.c$235$1$1 ==.
;	apps/mdrip/mdrip.c:235: uint8 XDATA i = 0;
	mov	r4,#0x00
00101$:
	C$mdrip.c$236$1$1 ==.
;	apps/mdrip/mdrip.c:236: for(; i < nLen; i++) {
	mov	r0,#_bit_reverse_bytes_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r4
	subb	a,b
	jnc	00105$
	C$mdrip.c$237$2$2 ==.
;	apps/mdrip/mdrip.c:237: buf[i] = bit_reverse_byte(buf[i]);
	mov	r0,#_bit_reverse_bytes_buf_1_1
	movx	a,@r0
	add	a,r4
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar4
	push	ar3
	push	ar2
	lcall	_bit_reverse_byte
	mov	r6,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	mov	a,r6
	lcall	__gptrput
	C$mdrip.c$236$1$1 ==.
;	apps/mdrip/mdrip.c:236: for(; i < nLen; i++) {
	inc	r4
	sjmp	00101$
00105$:
	C$mdrip.c$239$1$1 ==.
	XG$bit_reverse_bytes$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dex_num_decoder'
;------------------------------------------------------------
;usReversed                Allocated with name '_dex_num_decoder_usReversed_1_1'
;usExponent                Allocated with name '_dex_num_decoder_usExponent_1_1'
;usMantissa                Allocated with name '_dex_num_decoder_usMantissa_1_1'
;------------------------------------------------------------
	G$dex_num_decoder$0$0 ==.
	C$mdrip.c$241$1$1 ==.
;	apps/mdrip/mdrip.c:241: uint32 dex_num_decoder(uint16 usShortFloat) {
;	-----------------------------------------
;	 function dex_num_decoder
;	-----------------------------------------
_dex_num_decoder:
	mov	r6,dpl
	mov	r7,dph
	C$mdrip.c$242$1$1 ==.
;	apps/mdrip/mdrip.c:242: uint16 XDATA usReversed = usShortFloat;
	mov	dptr,#_dex_num_decoder_usReversed_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$245$1$1 ==.
;	apps/mdrip/mdrip.c:245: bit_reverse_bytes((uint8*)&usReversed, 2);
	mov	r6,#_dex_num_decoder_usReversed_1_1
	mov	r7,#(_dex_num_decoder_usReversed_1_1 >> 8)
	mov	r5,#0x00
	mov	r0,#_bit_reverse_bytes_PARM_2
	mov	a,#0x02
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_bit_reverse_bytes
	C$mdrip.c$246$1$1 ==.
;	apps/mdrip/mdrip.c:246: usExponent = ((usReversed & 0xE000) >> 13);
	mov	dptr,#_dex_num_decoder_usReversed_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xE0
	anl	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	mov	r4,a
	C$mdrip.c$247$1$1 ==.
;	apps/mdrip/mdrip.c:247: usMantissa = (usReversed & 0x1FFF);
	anl	ar7,#0x1F
	mov	r5,#0x00
	mov	r3,#0x00
	C$mdrip.c$248$1$1 ==.
;	apps/mdrip/mdrip.c:248: return usMantissa << usExponent;
	mov	b,r4
	inc	b
	sjmp	00104$
00103$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r3
	rlc	a
	mov	r3,a
00104$:
	djnz	b,00103$
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r3
	C$mdrip.c$249$1$1 ==.
	XG$dex_num_decoder$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dexcom_src_to_ascii'
;------------------------------------------------------------
;addr                      Allocated with name '_dexcom_src_to_ascii_PARM_2'
;src                       Allocated with name '_dexcom_src_to_ascii_src_1_1'
;sloc0                     Allocated with name '_dexcom_src_to_ascii_sloc0_1_0'
;------------------------------------------------------------
	G$dexcom_src_to_ascii$0$0 ==.
	C$mdrip.c$256$1$1 ==.
;	apps/mdrip/mdrip.c:256: void dexcom_src_to_ascii(XDATA uint32 src, XDATA char addr[6]) {
;	-----------------------------------------
;	 function dexcom_src_to_ascii
;	-----------------------------------------
_dexcom_src_to_ascii:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_dexcom_src_to_ascii_src_1_1
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	C$mdrip.c$257$1$1 ==.
;	apps/mdrip/mdrip.c:257: addr[0] = SrcNameTable[(src >> 20) & 0x1F];
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dexcom_src_to_ascii_src_1_1
	movx	a,@dptr
	mov	_dexcom_src_to_ascii_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_dexcom_src_to_ascii_sloc0_1_0 + 3),a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	swap	a
	xch	a,r0
	swap	a
	anl	a,#0x0F
	xrl	a,r0
	xch	a,r0
	anl	a,#0x0F
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$mdrip.c$258$1$1 ==.
;	apps/mdrip/mdrip.c:258: addr[1] = SrcNameTable[(src >> 15) & 0x1F];
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	mov	c,acc.7
	xch	a,r0
	rlc	a
	xch	a,r0
	rlc	a
	xch	a,r0
	anl	a,#0x01
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	add	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	orl	a,r1
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rl	a
	anl	a,#0x01
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$259$1$1 ==.
;	apps/mdrip/mdrip.c:259: addr[2] = SrcNameTable[(src >> 10) & 0x1F];
	mov	a,#0x02
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	clr	c
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0xC0
	orl	a,r1
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	rr	a
	rr	a
	anl	a,#0x3F
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$260$1$1 ==.
;	apps/mdrip/mdrip.c:260: addr[3] = SrcNameTable[(src >> 5) & 0x1F];
	mov	a,#0x03
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 1)
	swap	a
	rr	a
	xch	a,r0
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r0
	xch	a,r0
	anl	a,#0x07
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	mov	r1,a
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	swap	a
	rr	a
	anl	a,#0xF8
	orl	a,r1
	mov	r2,(_dexcom_src_to_ascii_sloc0_1_0 + 2)
	mov	a,(_dexcom_src_to_ascii_sloc0_1_0 + 3)
	swap	a
	rr	a
	xch	a,r2
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r2
	xch	a,r2
	anl	a,#0x07
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$261$1$1 ==.
;	apps/mdrip/mdrip.c:261: addr[4] = SrcNameTable[(src >> 0) & 0x1F];
	mov	a,#0x04
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	r0,_dexcom_src_to_ascii_sloc0_1_0
	anl	ar0,#0x1F
	clr	a
	mov	r1,a
	mov	a,r0
	add	a,#_SrcNameTable
	mov	dpl,a
	mov	a,r1
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$262$1$1 ==.
;	apps/mdrip/mdrip.c:262: addr[5] = 0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
	C$mdrip.c$263$1$1 ==.
	XG$dexcom_src_to_ascii$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clearRxErrors'
;------------------------------------------------------------
	G$clearRxErrors$0$0 ==.
	C$mdrip.c$265$1$1 ==.
;	apps/mdrip/mdrip.c:265: void clearRxErrors() {	
;	-----------------------------------------
;	 function clearRxErrors
;	-----------------------------------------
_clearRxErrors:
	C$mdrip.c$266$1$1 ==.
;	apps/mdrip/mdrip.c:266: if (uart1RxBufferFullOccurred)
	C$mdrip.c$267$2$2 ==.
;	apps/mdrip/mdrip.c:267: {   uart1RxBufferFullOccurred = 0;							// Clear Buffer Full Errors
	jbc	_uart1RxBufferFullOccurred,00112$
	sjmp	00102$
00112$:
	C$mdrip.c$268$3$3 ==.
;	apps/mdrip/mdrip.c:268: LED_RED(1);												// Error Indicator
	orl	_P2DIR,#0x02
00102$:
	C$mdrip.c$270$1$1 ==.
;	apps/mdrip/mdrip.c:270: if (uart1RxParityErrorOccurred)
	C$mdrip.c$271$2$4 ==.
;	apps/mdrip/mdrip.c:271: {   uart1RxParityErrorOccurred = 0;							// Clear Parity Errors
	jbc	_uart1RxParityErrorOccurred,00113$
	sjmp	00104$
00113$:
	C$mdrip.c$272$3$5 ==.
;	apps/mdrip/mdrip.c:272: LED_RED(1);												// Error Indicator
	orl	_P2DIR,#0x02
00104$:
	C$mdrip.c$274$1$1 ==.
;	apps/mdrip/mdrip.c:274: if (uart1RxFramingErrorOccurred)
	C$mdrip.c$275$2$6 ==.
;	apps/mdrip/mdrip.c:275: {   uart1RxFramingErrorOccurred = 0;
	jbc	_uart1RxFramingErrorOccurred,00114$
	sjmp	00106$
00114$:
	C$mdrip.c$276$3$7 ==.
;	apps/mdrip/mdrip.c:276: LED_RED(1);												// Put the red LED on to show there was an error
	orl	_P2DIR,#0x02
	C$mdrip.c$277$2$6 ==.
;	apps/mdrip/mdrip.c:277: uartDisable();
	lcall	_uartDisable
	C$mdrip.c$279$2$6 ==.
;	apps/mdrip/mdrip.c:279: delayMs(250);											// Crude and will slow us down but we can take the small hit
	mov	dptr,#0x00FA
	lcall	_delayMs
	C$mdrip.c$282$2$6 ==.
;	apps/mdrip/mdrip.c:282: uartEnable();
	lcall	_uartEnable
00106$:
	C$mdrip.c$284$2$8 ==.
;	apps/mdrip/mdrip.c:284: LED_RED(0);												// Error Indicator
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$mdrip.c$285$2$8 ==.
	XG$clearRxErrors$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'doServices'
;------------------------------------------------------------
	G$doServices$0$0 ==.
	C$mdrip.c$287$2$8 ==.
;	apps/mdrip/mdrip.c:287: void doServices() {
;	-----------------------------------------
;	 function doServices
;	-----------------------------------------
_doServices:
	C$mdrip.c$288$1$1 ==.
;	apps/mdrip/mdrip.c:288: boardService();
	lcall	_boardService
	C$mdrip.c$289$1$1 ==.
;	apps/mdrip/mdrip.c:289: if(usbPowerPresent()) {
	lcall	_usbPowerPresent
	jnc	00103$
	C$mdrip.c$290$2$2 ==.
;	apps/mdrip/mdrip.c:290: usbComService();
	lcall	_usbComService
	C$mdrip.c$291$2$2 ==.
;	apps/mdrip/mdrip.c:291: usbShowStatusWithGreenLed();
	lcall	_usbShowStatusWithGreenLed
00103$:
	C$mdrip.c$295$2$1 ==.
	XG$doServices$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'initUart1'
;------------------------------------------------------------
	G$initUart1$0$0 ==.
	C$mdrip.c$297$2$1 ==.
;	apps/mdrip/mdrip.c:297: void initUart1() {
;	-----------------------------------------
;	 function initUart1
;	-----------------------------------------
_initUart1:
	C$mdrip.c$298$1$1 ==.
;	apps/mdrip/mdrip.c:298: uart1Init();
	lcall	_uart1Init
	C$mdrip.c$299$1$1 ==.
;	apps/mdrip/mdrip.c:299: uart1SetBaudRate(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_uart1SetBaudRate
	C$mdrip.c$300$1$1 ==.
	XG$initUart1$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getSrcValue'
;------------------------------------------------------------
;srcVal                    Allocated with name '_getSrcValue_srcVal_1_1'
;i                         Allocated with name '_getSrcValue_i_1_1'
;------------------------------------------------------------
	G$getSrcValue$0$0 ==.
	C$mdrip.c$302$1$1 ==.
;	apps/mdrip/mdrip.c:302: uint32 getSrcValue(XDATA char srcVal) {
;	-----------------------------------------
;	 function getSrcValue
;	-----------------------------------------
_getSrcValue:
	mov	a,dpl
	C$mdrip.c$304$2$2 ==.
;	apps/mdrip/mdrip.c:304: for(i = 0; i < 32; i++) {
	mov	dptr,#_getSrcValue_srcVal_1_1
	movx	@dptr,a
	mov	r7,a
	mov	r6,#0x00
00103$:
	cjne	r6,#0x20,00113$
00113$:
	jnc	00106$
	C$mdrip.c$305$2$2 ==.
;	apps/mdrip/mdrip.c:305: if (SrcNameTable[i]==srcVal) break;
	mov	a,r6
	add	a,#_SrcNameTable
	mov	dpl,a
	clr	a
	addc	a,#(_SrcNameTable >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	a,ar7,00115$
	sjmp	00106$
00115$:
	C$mdrip.c$304$1$1 ==.
;	apps/mdrip/mdrip.c:304: for(i = 0; i < 32; i++) {
	inc	r6
	sjmp	00103$
00106$:
	C$mdrip.c$307$1$1 ==.
;	apps/mdrip/mdrip.c:307: return i & 0xFF;
	mov	r7,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	C$mdrip.c$308$1$1 ==.
	XG$getSrcValue$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getFonaString'
;------------------------------------------------------------
;sloc0                     Allocated with name '_getFonaString_sloc0_1_0'
;uartCharacters            Allocated with name '_getFonaString_uartCharacters_1_1'
;i                         Allocated with name '_getFonaString_i_1_1'
;stop                      Allocated with name '_getFonaString_stop_1_1'
;now                       Allocated with name '_getFonaString_now_1_1'
;------------------------------------------------------------
	G$getFonaString$0$0 ==.
	C$mdrip.c$310$1$1 ==.
;	apps/mdrip/mdrip.c:310: XDATA char * getFonaString() {					// Read the uart input buffer once character at a time
;	-----------------------------------------
;	 function getFonaString
;	-----------------------------------------
_getFonaString:
	C$mdrip.c$318$1$1 ==.
;	apps/mdrip/mdrip.c:318: stop = (getMs() + (AT_TIMEOUT * 1000));
	lcall	_getMs
	mov	_getFonaString_sloc0_1_0,dpl
	mov	(_getFonaString_sloc0_1_0 + 1),dph
	mov	(_getFonaString_sloc0_1_0 + 2),b
	mov	(_getFonaString_sloc0_1_0 + 3),a
	mov	dptr,#_AT_TIMEOUT
	movx	a,@dptr
	mov	r0,#__mulint_PARM_2
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	r2,dpl
	mov	a,dph
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	a,r2
	add	a,_getFonaString_sloc0_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_getFonaString_sloc0_1_0 + 1)
	mov	r3,a
	mov	a,r6
	addc	a,(_getFonaString_sloc0_1_0 + 2)
	mov	r6,a
	mov	a,r7
	addc	a,(_getFonaString_sloc0_1_0 + 3)
	mov	r7,a
	mov	dptr,#_getFonaString_stop_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$319$1$1 ==.
;	apps/mdrip/mdrip.c:319: now  = getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_getFonaString_now_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$320$1$1 ==.
;	apps/mdrip/mdrip.c:320: while (uart1RxAvailable() == 0 && stop > now) {				// This && is still using up some DSEG but is cheaper than comparing stop to getMS()
	mov	dptr,#_getFonaString_stop_1_1
	movx	a,@dptr
	mov	_getFonaString_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_getFonaString_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_getFonaString_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_getFonaString_sloc0_1_0 + 3),a
00102$:
	lcall	_uart1RxAvailable
	mov	a,dpl
	jnz	00123$
	mov	dptr,#_getFonaString_now_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r2
	subb	a,_getFonaString_sloc0_1_0
	mov	a,r3
	subb	a,(_getFonaString_sloc0_1_0 + 1)
	mov	a,r6
	subb	a,(_getFonaString_sloc0_1_0 + 2)
	mov	a,r7
	xrl	a,#0x80
	mov	b,(_getFonaString_sloc0_1_0 + 3)
	xrl	b,#0x80
	subb	a,b
	jnc	00123$
	C$mdrip.c$321$2$2 ==.
;	apps/mdrip/mdrip.c:321: now  = getMs();
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_getFonaString_now_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$322$2$2 ==.
;	apps/mdrip/mdrip.c:322: delayMs(10);
	mov	dptr,#0x000A
	lcall	_delayMs
	C$mdrip.c$325$1$1 ==.
;	apps/mdrip/mdrip.c:325: while (uart1RxAvailable() && i < 80) {
	sjmp	00102$
00123$:
	mov	r7,#0x00
00111$:
	push	ar7
	lcall	_uart1RxAvailable
	mov	a,dpl
	pop	ar7
	jz	00113$
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xd0
	jnc	00113$
	C$mdrip.c$326$2$3 ==.
;	apps/mdrip/mdrip.c:326: uartCharacters[i] = uart1RxReceiveByte();
	mov	a,r7
	add	a,#_getFonaString_uartCharacters_1_1
	mov	r5,a
	clr	a
	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_uart1RxReceiveByte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	dpl,r5
	mov	dph,r6
	mov	a,r4
	movx	@dptr,a
	C$mdrip.c$328$2$3 ==.
;	apps/mdrip/mdrip.c:328: if (usbPowerPresent()) {
	lcall	_usbPowerPresent
	pop	ar7
	jnc	00109$
	C$mdrip.c$329$3$4 ==.
;	apps/mdrip/mdrip.c:329: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
00105$:
	push	ar7
	lcall	_usbComTxAvailable
	mov	a,dpl
	pop	ar7
	jnz	00107$
	C$mdrip.c$331$4$5 ==.
;	apps/mdrip/mdrip.c:331: doServices();
	push	ar7
	lcall	_doServices
	pop	ar7
	sjmp	00105$
00107$:
	C$mdrip.c$333$3$4 ==.
;	apps/mdrip/mdrip.c:333: usbComTxSendByte(uartCharacters[i]);
	mov	a,r7
	add	a,#_getFonaString_uartCharacters_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_usbComTxSendByte
	pop	ar7
00109$:
	C$mdrip.c$335$2$3 ==.
;	apps/mdrip/mdrip.c:335: delayMs(10);
	mov	dptr,#0x000A
	push	ar7
	lcall	_delayMs
	pop	ar7
	C$mdrip.c$336$2$3 ==.
;	apps/mdrip/mdrip.c:336: i++;
	inc	r7
	sjmp	00111$
00113$:
	C$mdrip.c$338$1$1 ==.
;	apps/mdrip/mdrip.c:338: uartCharacters[i] = 0;										// Add an end-of-string character after copying the input into the character array
	mov	a,r7
	add	a,#_getFonaString_uartCharacters_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaString_uartCharacters_1_1 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$mdrip.c$339$1$1 ==.
;	apps/mdrip/mdrip.c:339: return uartCharacters;
	mov	dptr,#_getFonaString_uartCharacters_1_1
	C$mdrip.c$340$1$1 ==.
	XG$getFonaString$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sendAT'
;------------------------------------------------------------
;atString                  Allocated with name '_sendAT_atString_1_1'
;ATresponse                Allocated with name '_sendAT_ATresponse_1_1'
;------------------------------------------------------------
	G$sendAT$0$0 ==.
	C$mdrip.c$342$1$1 ==.
;	apps/mdrip/mdrip.c:342: void sendAT(XDATA char atString[40]) {
;	-----------------------------------------
;	 function sendAT
;	-----------------------------------------
_sendAT:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_sendAT_atString_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$343$1$1 ==.
;	apps/mdrip/mdrip.c:343: XDATA char ATresponse[80]={0};
	mov	dptr,#_sendAT_ATresponse_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_sendAT_ATresponse_1_1 + 0x004f)
	movx	@dptr,a
	C$mdrip.c$344$1$1 ==.
;	apps/mdrip/mdrip.c:344: uartEnable();
	lcall	_uartEnable
	C$mdrip.c$345$1$1 ==.
;	apps/mdrip/mdrip.c:345: printf(atString);
	mov	dptr,#_sendAT_atString_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x00
	push	ar6
	push	ar7
	push	ar5
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$346$1$1 ==.
;	apps/mdrip/mdrip.c:346: delayMs(defaultATWait);
	mov	dptr,#_defaultATWait
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$mdrip.c$347$1$1 ==.
;	apps/mdrip/mdrip.c:347: strcpy(ATresponse, getFonaString());
	lcall	_getFonaString
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_sendAT_ATresponse_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$348$1$1 ==.
	XG$sendAT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configFona'
;------------------------------------------------------------
;atString                  Allocated with name '_configFona_atString_1_1'
;------------------------------------------------------------
	G$configFona$0$0 ==.
	C$mdrip.c$350$1$1 ==.
;	apps/mdrip/mdrip.c:350: void configFona () {											// Set up lights and any other preferences here
;	-----------------------------------------
;	 function configFona
;	-----------------------------------------
_configFona:
	C$mdrip.c$351$1$1 ==.
;	apps/mdrip/mdrip.c:351: XDATA char atString[40]={0};
	mov	dptr,#_configFona_atString_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_configFona_atString_1_1 + 0x0027)
	movx	@dptr,a
	C$mdrip.c$352$1$1 ==.
;	apps/mdrip/mdrip.c:352: uartEnable();												// Enable the serial connection
	lcall	_uartEnable
	C$mdrip.c$353$1$1 ==.
;	apps/mdrip/mdrip.c:353: strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(4000);				// Sleep my little Fona		- Response should be "OK"
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_0
	movx	@r0,a
	inc	r0
	mov	a,#(__str_0 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$354$1$1 ==.
;	apps/mdrip/mdrip.c:354: strcpy(atString, "ATE0&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_1
	movx	@r0,a
	inc	r0
	mov	a,#(__str_1 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$355$1$1 ==.
;	apps/mdrip/mdrip.c:355: strcpy(atString, "AT+SLEDS=1,50,7500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for no connection - .05/7.5 secs: brief blink
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_2
	movx	@r0,a
	inc	r0
	mov	a,#(__str_2 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$356$1$1 ==.
;	apps/mdrip/mdrip.c:356: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_3
	movx	@r0,a
	inc	r0
	mov	a,#(__str_3 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$357$1$1 ==.
;	apps/mdrip/mdrip.c:357: strcpy(atString, "AT+SLEDS=2,500,2500\r\n"); sendAT(atString); // delayMs(defaultATWait);	// Change timing of LED flashes for network connection - .5/2.5 secs: slow
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_4
	movx	@r0,a
	inc	r0
	mov	a,#(__str_4 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$358$1$1 ==.
;	apps/mdrip/mdrip.c:358: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_3
	movx	@r0,a
	inc	r0
	mov	a,#(__str_3 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$359$1$1 ==.
;	apps/mdrip/mdrip.c:359: strcpy(atString, "AT+SLEDS=3,50,50\r\n"); sendAT(atString); // delayMs(defaultATWait);		// Change timing of LED flashes for GPRS connection - very fast
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_5
	movx	@r0,a
	inc	r0
	mov	a,#(__str_5 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$360$1$1 ==.
;	apps/mdrip/mdrip.c:360: strcpy(atString, "AT&W\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Save changes
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_3
	movx	@r0,a
	inc	r0
	mov	a,#(__str_3 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_configFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_configFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$361$1$1 ==.
	XG$configFona$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableFona'
;------------------------------------------------------------
;atString                  Allocated with name '_enableFona_atString_1_1'
;------------------------------------------------------------
	G$enableFona$0$0 ==.
	C$mdrip.c$363$1$1 ==.
;	apps/mdrip/mdrip.c:363: BIT enableFona() {
;	-----------------------------------------
;	 function enableFona
;	-----------------------------------------
_enableFona:
	C$mdrip.c$367$1$1 ==.
;	apps/mdrip/mdrip.c:367: uartEnable();												// Enable the serial connection
	lcall	_uartEnable
	C$mdrip.c$368$1$1 ==.
;	apps/mdrip/mdrip.c:368: strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_6
	movx	@r0,a
	inc	r0
	mov	a,#(__str_6 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_enableFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_enableFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$369$1$1 ==.
;	apps/mdrip/mdrip.c:369: strcpy(atString, "AT+CFUN=1,1\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Wake up Baby
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_7
	movx	@r0,a
	inc	r0
	mov	a,#(__str_7 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_enableFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_enableFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$370$1$1 ==.
;	apps/mdrip/mdrip.c:370: delayMs(4000);												// Wait for Fona to reboot
	mov	dptr,#0x0FA0
	lcall	_delayMs
	C$mdrip.c$371$1$1 ==.
;	apps/mdrip/mdrip.c:371: strcpy(atString, "AT\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Ignore the first one as we just want to get the baudrate autosynched
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_6
	movx	@r0,a
	inc	r0
	mov	a,#(__str_6 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_enableFona_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_enableFona_atString_1_1
	lcall	_sendAT
	C$mdrip.c$372$1$1 ==.
;	apps/mdrip/mdrip.c:372: return 1;													// I might take this out altogether if I'm not going to bother checking responses
	setb	c
	C$mdrip.c$373$1$1 ==.
	XG$enableFona$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fonaDisable'
;------------------------------------------------------------
;atString                  Allocated with name '_fonaDisable_atString_1_1'
;------------------------------------------------------------
	G$fonaDisable$0$0 ==.
	C$mdrip.c$375$1$1 ==.
;	apps/mdrip/mdrip.c:375: void fonaDisable () {
;	-----------------------------------------
;	 function fonaDisable
;	-----------------------------------------
_fonaDisable:
	C$mdrip.c$378$1$1 ==.
;	apps/mdrip/mdrip.c:378: strcpy(atString, "AT+CIPCLOSE\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Close the TCP connection	- Response should be CLOSE OK
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_8
	movx	@r0,a
	inc	r0
	mov	a,#(__str_8 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaDisable_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaDisable_atString_1_1
	lcall	_sendAT
	C$mdrip.c$379$1$1 ==.
;	apps/mdrip/mdrip.c:379: strcpy(atString, "AT+CGATT=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_9
	movx	@r0,a
	inc	r0
	mov	a,#(__str_9 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaDisable_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaDisable_atString_1_1
	lcall	_sendAT
	C$mdrip.c$380$1$1 ==.
;	apps/mdrip/mdrip.c:380: strcpy(atString, "AT+CIPSHUT\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Shut down GPRS			- Response should be SHUT OK
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_10
	movx	@r0,a
	inc	r0
	mov	a,#(__str_10 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaDisable_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaDisable_atString_1_1
	lcall	_sendAT
	C$mdrip.c$381$1$1 ==.
;	apps/mdrip/mdrip.c:381: strcpy(atString, "AT+CFUN=0\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Sleep my little Fona		- Response should be "OK"
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_0
	movx	@r0,a
	inc	r0
	mov	a,#(__str_0 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaDisable_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaDisable_atString_1_1
	lcall	_sendAT
	C$mdrip.c$384$1$1 ==.
	XG$fonaDisable$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fonaConnect'
;------------------------------------------------------------
;atString                  Allocated with name '_fonaConnect_atString_1_1'
;------------------------------------------------------------
	G$fonaConnect$0$0 ==.
	C$mdrip.c$386$1$1 ==.
;	apps/mdrip/mdrip.c:386: void fonaConnect() {
;	-----------------------------------------
;	 function fonaConnect
;	-----------------------------------------
_fonaConnect:
	C$mdrip.c$389$1$1 ==.
;	apps/mdrip/mdrip.c:389: strcpy(atString, "AT+CSTT=");
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_11
	movx	@r0,a
	inc	r0
	mov	a,#(__str_11 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$390$1$1 ==.
;	apps/mdrip/mdrip.c:390: strcat(atString, apnString);
	mov	r0,#_strcat_PARM_2
	mov	a,#_apnString
	movx	@r0,a
	inc	r0
	mov	a,#(_apnString >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$mdrip.c$391$1$1 ==.
;	apps/mdrip/mdrip.c:391: strcat(atString, "\r\n");
	mov	r0,#_strcat_PARM_2
	mov	a,#__str_12
	movx	@r0,a
	inc	r0
	mov	a,#(__str_12 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$mdrip.c$392$1$1 ==.
;	apps/mdrip/mdrip.c:392: sendAT(atString);
	mov	dptr,#_fonaConnect_atString_1_1
	lcall	_sendAT
	C$mdrip.c$393$1$1 ==.
;	apps/mdrip/mdrip.c:393: strcpy(atString, "AT+CGATT?\r\n"); sendAT(atString); // delayMs(defaultATWait);			// Check if connected to the GPRS network		- Response should be +CGATT: 1
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_13
	movx	@r0,a
	inc	r0
	mov	a,#(__str_13 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaConnect_atString_1_1
	lcall	_sendAT
	C$mdrip.c$394$1$1 ==.
;	apps/mdrip/mdrip.c:394: strcpy(atString, "AT+CIICR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Bring up wireless connection with GPRS		- Response should be "OK"
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_14
	movx	@r0,a
	inc	r0
	mov	a,#(__str_14 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaConnect_atString_1_1
	lcall	_sendAT
	C$mdrip.c$395$1$1 ==.
;	apps/mdrip/mdrip.c:395: strcpy(atString, "AT+CIFSR\r\n"); sendAT(atString); // delayMs(defaultATWait);				// Get local IP address (not sure why)          - Response should be IP
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_15
	movx	@r0,a
	inc	r0
	mov	a,#(__str_15 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_fonaConnect_atString_1_1
	lcall	_sendAT
	C$mdrip.c$396$1$1 ==.
;	apps/mdrip/mdrip.c:396: strcpy(atString, "AT+CIPSTART=tcp,");
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_16
	movx	@r0,a
	inc	r0
	mov	a,#(__str_16 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$397$1$1 ==.
;	apps/mdrip/mdrip.c:397: strcat(atString, dexie_host_address);
	mov	r0,#_strcat_PARM_2
	mov	a,#_dexie_host_address
	movx	@r0,a
	inc	r0
	mov	a,#(_dexie_host_address >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$mdrip.c$398$1$1 ==.
;	apps/mdrip/mdrip.c:398: strcat(atString, "\r\n");
	mov	r0,#_strcat_PARM_2
	mov	a,#__str_12
	movx	@r0,a
	inc	r0
	mov	a,#(__str_12 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_fonaConnect_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$mdrip.c$399$1$1 ==.
;	apps/mdrip/mdrip.c:399: sendAT(atString);
	mov	dptr,#_fonaConnect_atString_1_1
	lcall	_sendAT
	C$mdrip.c$400$1$1 ==.
;	apps/mdrip/mdrip.c:400: printf("AT+CIPSEND\r\n");									// Just send this once as a second one confuses Dexie
	mov	a,#__str_17
	push	acc
	mov	a,#(__str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$401$1$1 ==.
;	apps/mdrip/mdrip.c:401: delayMs(defaultATWait);
	mov	dptr,#_defaultATWait
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$mdrip.c$402$1$1 ==.
;	apps/mdrip/mdrip.c:402: delayMs(defaultATWait);								        // another delay to be sure server is listening
	mov	dptr,#_defaultATWait
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$mdrip.c$405$1$1 ==.
	XG$fonaConnect$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getFonaMillivolts'
;------------------------------------------------------------
;sloc0                     Allocated with name '_getFonaMillivolts_sloc0_1_0'
;i                         Allocated with name '_getFonaMillivolts_i_1_1'
;counter                   Allocated with name '_getFonaMillivolts_counter_1_1'
;loop                      Allocated with name '_getFonaMillivolts_loop_1_1'
;rxCount                   Allocated with name '_getFonaMillivolts_rxCount_1_1'
;intMV                     Allocated with name '_getFonaMillivolts_intMV_1_1'
;c                         Allocated with name '_getFonaMillivolts_c_1_1'
;atString                  Allocated with name '_getFonaMillivolts_atString_1_1'
;------------------------------------------------------------
	G$getFonaMillivolts$0$0 ==.
	C$mdrip.c$408$1$1 ==.
;	apps/mdrip/mdrip.c:408: XDATA int16 getFonaMillivolts() {										// Get battery strength using Fona AT command - no extra resistors required!
;	-----------------------------------------
;	 function getFonaMillivolts
;	-----------------------------------------
_getFonaMillivolts:
	C$mdrip.c$414$1$1 ==.
;	apps/mdrip/mdrip.c:414: XDATA char c[80] = {0};
	mov	dptr,#_getFonaMillivolts_c_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_c_1_1 + 0x004f)
	movx	@dptr,a
	C$mdrip.c$416$1$1 ==.
;	apps/mdrip/mdrip.c:416: XDATA char atString[40] = {0};
	mov	dptr,#_getFonaMillivolts_atString_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_getFonaMillivolts_atString_1_1 + 0x0027)
	movx	@dptr,a
	C$mdrip.c$418$1$1 ==.
;	apps/mdrip/mdrip.c:418: strcpy(atString, "ATE0\r\n"); sendAT(atString); // delayMs(defaultATWait);					// Switch off echo of commands so that wixel can buffer responses properly
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_18
	movx	@r0,a
	inc	r0
	mov	a,#(__str_18 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaMillivolts_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaMillivolts_atString_1_1
	lcall	_sendAT
	C$mdrip.c$420$1$1 ==.
;	apps/mdrip/mdrip.c:420: c[0]=0;														// And mark string as empty
	mov	dptr,#_getFonaMillivolts_c_1_1
	clr	a
	movx	@dptr,a
	C$mdrip.c$421$1$1 ==.
;	apps/mdrip/mdrip.c:421: clearRxErrors();
	lcall	_clearRxErrors
	C$mdrip.c$423$1$1 ==.
;	apps/mdrip/mdrip.c:423: boardService();
	lcall	_boardService
	C$mdrip.c$424$1$1 ==.
;	apps/mdrip/mdrip.c:424: strcpy(atString, "AT+CBC\r\n"); //  sendAT(atString); //delayMs(1000);	// Ask for battery info - charging state, percentage and millivolts
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_19
	movx	@r0,a
	inc	r0
	mov	a,#(__str_19 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaMillivolts_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$427$1$1 ==.
;	apps/mdrip/mdrip.c:427: uartEnable();
	lcall	_uartEnable
	C$mdrip.c$428$1$1 ==.
;	apps/mdrip/mdrip.c:428: printf(atString);
	mov	a,#_getFonaMillivolts_atString_1_1
	push	acc
	mov	a,#(_getFonaMillivolts_atString_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$429$1$1 ==.
;	apps/mdrip/mdrip.c:429: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$mdrip.c$431$1$1 ==.
;	apps/mdrip/mdrip.c:431: rxCount = uart1RxAvailable();
	lcall	_uart1RxAvailable
	mov	r7,dpl
	C$mdrip.c$432$1$1 ==.
;	apps/mdrip/mdrip.c:432: strcpy(c, (getFonaString()));
	push	ar7
	lcall	_getFonaString
	mov	r5,dpl
	mov	r6,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getFonaMillivolts_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$434$1$1 ==.
;	apps/mdrip/mdrip.c:434: if (usbPowerPresent()) {
	lcall	_usbPowerPresent
	pop	ar7
	jnc	00104$
	C$mdrip.c$435$2$2 ==.
;	apps/mdrip/mdrip.c:435: if(usbComTxAvailable() > 40) {							//  Check if room to send string
	push	ar7
	lcall	_usbComTxAvailable
	mov	r6,dpl
	pop	ar7
	mov	a,r6
	add	a,#0xff - 0x28
	jnc	00104$
	C$mdrip.c$436$3$3 ==.
;	apps/mdrip/mdrip.c:436: strcpy(atString, "CBC> ");
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_20
	movx	@r0,a
	inc	r0
	mov	a,#(__str_20 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaMillivolts_atString_1_1
	mov	b,#0x00
	push	ar7
	lcall	_strcpy
	C$mdrip.c$437$3$3 ==.
;	apps/mdrip/mdrip.c:437: strcat(atString, c);
	mov	r0,#_strcat_PARM_2
	mov	a,#_getFonaMillivolts_c_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_getFonaMillivolts_c_1_1 >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getFonaMillivolts_atString_1_1
	mov	b,#0x00
	lcall	_strcat
	C$mdrip.c$438$3$3 ==.
;	apps/mdrip/mdrip.c:438: usbComTxSend(atString, strlen(atString));
	mov	r5,#_getFonaMillivolts_atString_1_1
	mov	r6,#(_getFonaMillivolts_atString_1_1 >> 8)
	mov	dptr,#_getFonaMillivolts_atString_1_1
	mov	b,#0x00
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	pop	ar5
	pop	ar6
	mov	r0,#_usbComTxSend_PARM_2
	mov	a,r3
	movx	@r0,a
	mov	dpl,r5
	mov	dph,r6
	lcall	_usbComTxSend
	C$mdrip.c$439$3$3 ==.
;	apps/mdrip/mdrip.c:439: doServices();
	lcall	_doServices
	pop	ar7
00104$:
	C$mdrip.c$446$1$1 ==.
;	apps/mdrip/mdrip.c:446: i = strlen(c);
	mov	dptr,#_getFonaMillivolts_c_1_1
	mov	b,#0x00
	push	ar7
	lcall	_strlen
	mov	r5,dpl
	mov	r6,dph
	pop	ar7
	mov	dptr,#_getFonaMillivolts_i_1_1
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	C$mdrip.c$448$1$1 ==.
;	apps/mdrip/mdrip.c:448: if  (c[0]!=0) {
	mov	dptr,#_getFonaMillivolts_c_1_1
	movx	a,@dptr
	jnz	00126$
	ljmp	00112$
00126$:
	C$mdrip.c$449$2$4 ==.
;	apps/mdrip/mdrip.c:449: if (c[i-13]==',') 	// Was 16 but that is before not after the percentage
	mov	ar4,r5
	mov	a,r4
	add	a,#0xF3
	add	a,#_getFonaMillivolts_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x2C,00109$
	C$mdrip.c$452$3$5 ==.
;	apps/mdrip/mdrip.c:452: intMV=(((((c[i-15])-'0')*10))+((((c[i-14])-'0'))));		// Bit of maths to work out the percentage from these two characters
	mov	a,r4
	add	a,#0xF1
	add	a,#_getFonaMillivolts_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r0,#__mulint_PARM_2
	mov	a,r3
	add	a,#0xD0
	movx	@r0,a
	mov	a,r2
	addc	a,#0xFF
	inc	r0
	movx	@r0,a
	mov	dptr,#0x000A
	push	ar4
	lcall	__mulint
	mov	_getFonaMillivolts_sloc0_1_0,dpl
	mov	(_getFonaMillivolts_sloc0_1_0 + 1),dph
	pop	ar4
	mov	a,r4
	add	a,#0xF2
	add	a,#_getFonaMillivolts_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r3
	add	a,#0xD0
	mov	r3,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	dptr,#_getFonaMillivolts_intMV_1_1
	mov	a,r3
	add	a,_getFonaMillivolts_sloc0_1_0
	movx	@dptr,a
	mov	a,r2
	addc	a,(_getFonaMillivolts_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	sjmp	00113$
00109$:
	C$mdrip.c$455$3$6 ==.
;	apps/mdrip/mdrip.c:455: if (c[i-14]==',') 											// There are only two digits if the 16th last character is a comma
	mov	a,r4
	add	a,#0xF2
	add	a,#_getFonaMillivolts_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x2C,00106$
	C$mdrip.c$457$4$7 ==.
;	apps/mdrip/mdrip.c:457: intMV=((((c[i-15])-'0')));		// Bit of maths to work out the percentage from these two characters
	mov	a,r4
	add	a,#0xF1
	add	a,#_getFonaMillivolts_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaMillivolts_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r4
	add	a,#0xD0
	mov	r4,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	dptr,#_getFonaMillivolts_intMV_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp	00113$
00106$:
	C$mdrip.c$459$4$8 ==.
;	apps/mdrip/mdrip.c:459: intMV=(100);											// Oherwise presumably the battery is 100% as 3 digits were found
	mov	dptr,#_getFonaMillivolts_intMV_1_1
	mov	a,#0x64
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	sjmp	00113$
00112$:
	C$mdrip.c$464$2$9 ==.
;	apps/mdrip/mdrip.c:464: intMV=((1000*rxCount)+(100+i));							// If we get no response back then default to 100% as we don't know.
	mov	r0,#__mulint_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	a,r7
	rlc	a
	subb	a,acc
	inc	r0
	movx	@r0,a
	mov	dptr,#0x03E8
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r4,dpl
	mov	r7,dph
	pop	ar5
	pop	ar6
	mov	a,#0x64
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#_getFonaMillivolts_intMV_1_1
	mov	a,r5
	add	a,r4
	movx	@dptr,a
	mov	a,r6
	addc	a,r7
	inc	dptr
	movx	@dptr,a
00113$:
	C$mdrip.c$467$1$1 ==.
;	apps/mdrip/mdrip.c:467: if (intMV < 15) {												// If battery is less than a third then
	mov	dptr,#_getFonaMillivolts_intMV_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x0F
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
	C$mdrip.c$468$3$11 ==.
;	apps/mdrip/mdrip.c:468: LED_RED(1);	 }												// Switch on Red LED on Wixel to show low battery
	orl	_P2DIR,#0x02
00115$:
	C$mdrip.c$470$1$1 ==.
;	apps/mdrip/mdrip.c:470: return intMV;
	mov	dpl,r6
	mov	dph,r7
	C$mdrip.c$471$1$1 ==.
	XG$getFonaMillivolts$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getFonaGPS'
;------------------------------------------------------------
;sloc0                     Allocated with name '_getFonaGPS_sloc0_1_0'
;sloc1                     Allocated with name '_getFonaGPS_sloc1_1_0'
;i                         Allocated with name '_getFonaGPS_i_1_1'
;j                         Allocated with name '_getFonaGPS_j_1_1'
;clen                      Allocated with name '_getFonaGPS_clen_1_1'
;stage                     Allocated with name '_getFonaGPS_stage_1_1'
;status                    Allocated with name '_getFonaGPS_status_1_1'
;atString                  Allocated with name '_getFonaGPS_atString_1_1'
;c                         Allocated with name '_getFonaGPS_c_1_1'
;------------------------------------------------------------
	G$getFonaGPS$0$0 ==.
	C$mdrip.c$482$1$1 ==.
;	apps/mdrip/mdrip.c:482: void getFonaGPS(GSMlocInfo* CIPGSMLOC) {
;	-----------------------------------------
;	 function getFonaGPS
;	-----------------------------------------
_getFonaGPS:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$mdrip.c$485$1$1 ==.
;	apps/mdrip/mdrip.c:485: XDATA char status[6] = {0};								//	Maximum of 5 characters and a termination character
	mov	dptr,#_getFonaGPS_status_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0004)
	C$mdrip.c$487$1$1 ==.
;	apps/mdrip/mdrip.c:487: XDATA char c[80] = {0};
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_status_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#_getFonaGPS_c_1_1
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0012)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0016)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0022)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0026)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002c)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0030)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0032)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0034)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0036)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0038)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0042)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0044)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0046)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0048)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004c)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_getFonaGPS_c_1_1 + 0x004f)
	movx	@dptr,a
	C$mdrip.c$489$1$1 ==.
;	apps/mdrip/mdrip.c:489: strcpy(atString, "AT+CDNSCFG=8.8.8.8\r\n"); sendAT(atString);					// Using google for DNS here - you can replace if you like!
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_21
	movx	@r0,a
	inc	r0
	mov	a,#(__str_21 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaGPS_atString_1_1
	lcall	_sendAT
	C$mdrip.c$490$1$1 ==.
;	apps/mdrip/mdrip.c:490: strcpy(atString, "AT+SAPBR=0,1\r\n"); sendAT(atString);							// Not sure if I need this one
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_22
	movx	@r0,a
	inc	r0
	mov	a,#(__str_22 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaGPS_atString_1_1
	lcall	_sendAT
	C$mdrip.c$491$1$1 ==.
;	apps/mdrip/mdrip.c:491: strcpy(atString, "AT+SAPBR=3,1,\"Contype\",GPRS\r\n"); sendAT(atString);
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_23
	movx	@r0,a
	inc	r0
	mov	a,#(__str_23 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaGPS_atString_1_1
	lcall	_sendAT
	C$mdrip.c$497$1$1 ==.
;	apps/mdrip/mdrip.c:497: strcpy(atString, "AT+SAPBR=3,1,\"APN\",\"internet\"\r\n"); sendAT(atString);
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_24
	movx	@r0,a
	inc	r0
	mov	a,#(__str_24 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaGPS_atString_1_1
	lcall	_sendAT
	C$mdrip.c$514$1$1 ==.
;	apps/mdrip/mdrip.c:514: strcpy(atString, "AT+SAPBR=1,1\r\n"); sendAT(atString);
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_25
	movx	@r0,a
	inc	r0
	mov	a,#(__str_25 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	mov	dptr,#_getFonaGPS_atString_1_1
	lcall	_sendAT
	C$mdrip.c$516$1$1 ==.
;	apps/mdrip/mdrip.c:516: strcpy(atString, "AT+CIPGSMLOC=1,1\r\n");
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_26
	movx	@r0,a
	inc	r0
	mov	a,#(__str_26 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dptr,#_getFonaGPS_atString_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$517$1$1 ==.
;	apps/mdrip/mdrip.c:517: printf(atString);
	mov	a,#_getFonaGPS_atString_1_1
	push	acc
	mov	a,#(_getFonaGPS_atString_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$519$1$1 ==.
;	apps/mdrip/mdrip.c:519: strcpy(c, getFonaString());		// I don't know if this is working - seem to be blanks if I don't muck about with responseStr
	lcall	_getFonaString
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_strcpy_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_getFonaGPS_c_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$520$1$1 ==.
;	apps/mdrip/mdrip.c:520: clen=strlen(c);
	mov	dptr,#_getFonaGPS_c_1_1
	mov	b,#0x00
	lcall	_strlen
	mov	r4,dpl
	C$mdrip.c$522$1$1 ==.
;	apps/mdrip/mdrip.c:522: stage = 1;												//	Start with scanning for "+CIPGSMLOC: "
	mov	dptr,#_getFonaGPS_stage_1_1
	mov	a,#0x01
	movx	@dptr,a
	C$mdrip.c$523$1$1 ==.
;	apps/mdrip/mdrip.c:523: j=0;
	mov	dptr,#_getFonaGPS_j_1_1
	C$mdrip.c$524$1$1 ==.
;	apps/mdrip/mdrip.c:524: for(i=0; i<clen; i++) {									//	Loop through every character of the response from the Fona to the AT command
	clr	a
	movx	@dptr,a
	mov	dptr,#_getFonaGPS_i_1_1
	movx	@dptr,a
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,#0x19
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
00137$:
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	mov	r2,a
	clr	c
	subb	a,r4
	jc	00170$
	ljmp	00140$
00170$:
	C$mdrip.c$526$2$2 ==.
;	apps/mdrip/mdrip.c:526: if (stage == 1) {									//	Stage 1 - Find the '+' sign
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	_getFonaGPS_sloc0_1_0,a
	mov	a,#0x01
	cjne	a,_getFonaGPS_sloc0_1_0,00104$
	C$mdrip.c$527$2$1 ==.
;	apps/mdrip/mdrip.c:527: if (c[i]=='+') {								//	Seemingly valid CIPGSMLOC response
	push	ar3
	push	ar5
	mov	a,r2
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2B,00173$
	sjmp	00174$
00173$:
	pop	ar5
	pop	ar3
	sjmp	00104$
00174$:
	pop	ar5
	pop	ar3
	C$mdrip.c$528$4$4 ==.
;	apps/mdrip/mdrip.c:528: i=i+12;										//	Position index to start of status field
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,#0x0C
	add	a,r2
	movx	@dptr,a
	C$mdrip.c$529$4$4 ==.
;	apps/mdrip/mdrip.c:529: stage++;									//	Finish this stage of string processing and get ready for the next one
	mov	dptr,#_getFonaGPS_stage_1_1
	mov	a,_getFonaGPS_sloc0_1_0
	inc	a
	movx	@dptr,a
	C$mdrip.c$530$4$4 ==.
;	apps/mdrip/mdrip.c:530: j=0;
	mov	dptr,#_getFonaGPS_j_1_1
	clr	a
	movx	@dptr,a
00104$:
	C$mdrip.c$533$2$2 ==.
;	apps/mdrip/mdrip.c:533: if (stage == 2) {									//	Stage 2 - Get the status of the command
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x02,00175$
	sjmp	00176$
00175$:
	ljmp	00112$
00176$:
	C$mdrip.c$534$3$5 ==.
;	apps/mdrip/mdrip.c:534: if (c[i]==',') {
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	mov	_getFonaGPS_sloc0_1_0,a
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_getFonaGPS_sloc1_1_0,a
	mov	a,#0x2C
	cjne	a,_getFonaGPS_sloc1_1_0,00109$
	C$mdrip.c$535$2$1 ==.
;	apps/mdrip/mdrip.c:535: status[j]=0;								//	We have all of the status so terminate the string
	push	ar3
	push	ar5
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	add	a,#_getFonaGPS_status_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_status_1_1 >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$mdrip.c$536$4$6 ==.
;	apps/mdrip/mdrip.c:536: if (strlen(status) == 1) {					//	If staus is 0 then move to next stage
	mov	dptr,#_getFonaGPS_status_1_1
	mov	b,#0x00
	push	ar4
	push	ar2
	lcall	_strlen
	mov	r3,dpl
	mov	r5,dph
	pop	ar2
	pop	ar4
	cjne	r3,#0x01,00179$
	cjne	r5,#0x00,00179$
	sjmp	00180$
00179$:
	pop	ar5
	pop	ar3
	sjmp	00106$
00180$:
	pop	ar5
	pop	ar3
	C$mdrip.c$537$5$7 ==.
;	apps/mdrip/mdrip.c:537: i++;									//	Skip past this comma before starting Stage 3
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,_getFonaGPS_sloc0_1_0
	inc	a
	movx	@dptr,a
	C$mdrip.c$538$5$7 ==.
;	apps/mdrip/mdrip.c:538: stage++;								//	Finish this stage of string processing and get ready for the next one
	mov	dptr,#_getFonaGPS_stage_1_1
	mov	a,r2
	inc	a
	movx	@dptr,a
	C$mdrip.c$539$5$7 ==.
;	apps/mdrip/mdrip.c:539: j=0;
	mov	dptr,#_getFonaGPS_j_1_1
	clr	a
	movx	@dptr,a
	sjmp	00112$
00106$:
	C$mdrip.c$541$5$8 ==.
;	apps/mdrip/mdrip.c:541: stage=9;								//	Flag that we are complete as we got an error
	mov	dptr,#_getFonaGPS_stage_1_1
	mov	a,#0x09
	movx	@dptr,a
	sjmp	00112$
00109$:
	C$mdrip.c$544$4$9 ==.
;	apps/mdrip/mdrip.c:544: status[j]=c[i];								//	Copy into the status variable, one character at a time
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov	r2,a
	add	a,#_getFonaGPS_status_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_status_1_1 >> 8)
	mov	dph,a
	mov	a,_getFonaGPS_sloc1_1_0
	movx	@dptr,a
	C$mdrip.c$545$4$9 ==.
;	apps/mdrip/mdrip.c:545: j++;
	mov	dptr,#_getFonaGPS_j_1_1
	mov	a,r2
	inc	a
	movx	@dptr,a
00112$:
	C$mdrip.c$554$2$2 ==.
;	apps/mdrip/mdrip.c:554: if (stage == 3) {									//	Stage 3 - Get the GPS coordinates and place them in the pointered string
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	r2,a
	cjne	r2,#0x03,00181$
	sjmp	00182$
00181$:
	ljmp	00118$
00182$:
	C$mdrip.c$555$2$1 ==.
;	apps/mdrip/mdrip.c:555: if (c[i]==',' && j> 11) {						//	Check if we found the second comma in the longitude/latitude
	push	ar3
	push	ar5
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	mov	_getFonaGPS_sloc1_1_0,a
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x2C,00183$
	sjmp	00184$
00183$:
	pop	ar5
	pop	ar3
	sjmp	00114$
00184$:
	pop	ar5
	pop	ar3
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov  _getFonaGPS_sloc0_1_0,a
	add	a,#0xff - 0x0B
	jnc	00114$
	C$mdrip.c$557$4$11 ==.
;	apps/mdrip/mdrip.c:557: CIPGSMLOC->LatLong[j]='\0';
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,_getFonaGPS_sloc0_1_0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$mdrip.c$558$4$11 ==.
;	apps/mdrip/mdrip.c:558: i++;										//	Skip past this comma before starting stage 4
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,_getFonaGPS_sloc1_1_0
	inc	a
	movx	@dptr,a
	C$mdrip.c$559$4$11 ==.
;	apps/mdrip/mdrip.c:559: stage++;									//	Finish this stage of string processing and get ready for the next one
	mov	dptr,#_getFonaGPS_stage_1_1
	mov	a,r2
	inc	a
	movx	@dptr,a
	C$mdrip.c$560$4$11 ==.
;	apps/mdrip/mdrip.c:560: j=0;
	mov	dptr,#_getFonaGPS_j_1_1
	clr	a
	movx	@dptr,a
	sjmp	00118$
00114$:
	C$mdrip.c$563$2$1 ==.
;	apps/mdrip/mdrip.c:563: CIPGSMLOC->LatLong[j]=c[i];
	push	ar3
	push	ar5
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov	r2,a
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,r2
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r3
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$566$4$12 ==.
;	apps/mdrip/mdrip.c:566: j++;
	mov	dptr,#_getFonaGPS_j_1_1
	mov	a,r2
	inc	a
	movx	@dptr,a
	C$mdrip.c$610$2$1 ==.
;	apps/mdrip/mdrip.c:610: CIPGSMLOC->returncode=clen;
	pop	ar5
	pop	ar3
	C$mdrip.c$566$2$2 ==.
;	apps/mdrip/mdrip.c:566: j++;
00118$:
	C$mdrip.c$570$2$2 ==.
;	apps/mdrip/mdrip.c:570: if (stage == 4) {									//	Stage 4 - Use the Date & Time to populate the first 14 bytes of the IV
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00186$
	sjmp	00187$
00186$:
	ljmp	00126$
00187$:
	C$mdrip.c$571$3$13 ==.
;	apps/mdrip/mdrip.c:571: if(c[i]<'0') {
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	mov	r7,a
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	clr	c
	xrl	a,#0x80
	subb	a,#0xb0
	jnc	00120$
	C$mdrip.c$572$4$14 ==.
;	apps/mdrip/mdrip.c:572: i++;									// NEW	//	Skip the special character and assume next one is a number
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,r7
	inc	a
	movx	@dptr,a
00120$:
	C$mdrip.c$574$3$13 ==.
;	apps/mdrip/mdrip.c:574: if(c[i]>'9') {
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	mov	r7,a
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00122$
	C$mdrip.c$575$4$15 ==.
;	apps/mdrip/mdrip.c:575: i++;									// NEW	//	Skip the special character and assume next one is a number
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,r7
	inc	a
	movx	@dptr,a
00122$:
	C$mdrip.c$577$2$1 ==.
;	apps/mdrip/mdrip.c:577: CIPGSMLOC->iv[j]=c[i];
	push	ar4
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov	r7,a
	add	a,r3
	mov	r2,a
	clr	a
	addc	a,r5
	mov	r6,a
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r6
	movx	@dptr,a
	C$mdrip.c$580$3$13 ==.
;	apps/mdrip/mdrip.c:580: j++;
	mov	dptr,#_getFonaGPS_j_1_1
	mov	a,r7
	inc	a
	movx	@dptr,a
	C$mdrip.c$581$3$13 ==.
;	apps/mdrip/mdrip.c:581: if(j>13) {
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x0D
	subb	a,r7
	pop	ar4
	jnc	00126$
	C$mdrip.c$582$4$16 ==.
;	apps/mdrip/mdrip.c:582: stage++;
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00126$:
	C$mdrip.c$587$2$2 ==.
;	apps/mdrip/mdrip.c:587: if (stage == 9) {									//	Stage 9 - If we are here then Heuston, we have a problem.
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x09,00128$
	C$mdrip.c$588$3$17 ==.
;	apps/mdrip/mdrip.c:588: for(i=0; i>j; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
	mov	dptr,#_getFonaGPS_j_1_1
	movx	a,@dptr
	mov	_getFonaGPS_sloc1_1_0,a
	mov	r2,#0x00
00133$:
	clr	c
	mov	a,_getFonaGPS_sloc1_1_0
	subb	a,r2
	jnc	00168$
	C$mdrip.c$590$2$1 ==.
;	apps/mdrip/mdrip.c:590: CIPGSMLOC->LatLong[i]=status[i];
	push	ar3
	push	ar5
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,r2
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r5,a
	mov	a,r2
	add	a,#_getFonaGPS_status_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_status_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r3
	mov	dph,r5
	movx	@dptr,a
	C$mdrip.c$588$3$17 ==.
;	apps/mdrip/mdrip.c:588: for(i=0; i>j; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
	inc	r2
	pop	ar5
	pop	ar3
	sjmp	00133$
00168$:
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,r2
	movx	@dptr,a
	C$mdrip.c$592$3$17 ==.
;	apps/mdrip/mdrip.c:592: CIPGSMLOC->LatLong[i]='\0';						//	Terminate the copy of the status string
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,r2
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	clr	a
	movx	@dptr,a
00128$:
	C$mdrip.c$594$2$2 ==.
;	apps/mdrip/mdrip.c:594: if (stage>4) {										//	Terminate the loop if we are finished all the processing (or have an error)
	mov	a,r7
	add	a,#0xff - 0x04
	jnc	00139$
	C$mdrip.c$595$3$19 ==.
;	apps/mdrip/mdrip.c:595: i=clen;
	mov	dptr,#_getFonaGPS_i_1_1
	mov	a,r4
	movx	@dptr,a
00139$:
	C$mdrip.c$524$1$1 ==.
;	apps/mdrip/mdrip.c:524: for(i=0; i<clen; i++) {									//	Loop through every character of the response from the Fona to the AT command
	mov	dptr,#_getFonaGPS_i_1_1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	ljmp	00137$
00140$:
	C$mdrip.c$600$1$1 ==.
;	apps/mdrip/mdrip.c:600: if (stage == 1) {										// If we did not get values then we want to indicate this with a unique error code
	mov	dptr,#_getFonaGPS_stage_1_1
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00195$
	sjmp	00196$
00195$:
	ljmp	00145$
00196$:
	C$mdrip.c$602$2$20 ==.
;	apps/mdrip/mdrip.c:602: strcpy(CIPGSMLOC->LatLong,"999");
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r5,#0x00
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_27
	movx	@r0,a
	inc	r0
	mov	a,#(__str_27 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar4
	lcall	_strcpy
	pop	ar4
	C$mdrip.c$603$2$1 ==.
;	apps/mdrip/mdrip.c:603: for(i=0; i==23; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
	mov	r7,#0x00
00141$:
	cjne	r7,#0x17,00144$
	C$mdrip.c$604$3$21 ==.
;	apps/mdrip/mdrip.c:604: CIPGSMLOC->LatLong[i]=c[i];
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,r7
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r6,a
	mov	a,r7
	add	a,#_getFonaGPS_c_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_getFonaGPS_c_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r5
	mov	dph,r6
	movx	@dptr,a
	C$mdrip.c$603$2$20 ==.
;	apps/mdrip/mdrip.c:603: for(i=0; i==23; i++) {							//	Re-using i here is not a problem as we will terminate anyway in the next condition
	inc	r7
	sjmp	00141$
00144$:
	C$mdrip.c$606$2$20 ==.
;	apps/mdrip/mdrip.c:606: CIPGSMLOC->LatLong[24]='\0';
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,#0x18
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$mdrip.c$607$2$20 ==.
;	apps/mdrip/mdrip.c:607: strcpy(CIPGSMLOC->LatLong,"999");
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r5,#0x00
	mov	r0,#_strcpy_PARM_2
	mov	a,#__str_27
	movx	@r0,a
	inc	r0
	mov	a,#(__str_27 >> 8)
	movx	@r0,a
	inc	r0
	mov	a,#0x80
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	push	ar4
	lcall	_strcpy
	pop	ar4
	C$mdrip.c$608$2$20 ==.
;	apps/mdrip/mdrip.c:608: CIPGSMLOC->iv[0]=clen;
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,#0x19
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
	C$mdrip.c$609$2$20 ==.
;	apps/mdrip/mdrip.c:609: CIPGSMLOC->iv[1]=clen;
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,#0x19
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	C$mdrip.c$610$2$20 ==.
;	apps/mdrip/mdrip.c:610: CIPGSMLOC->returncode=clen;
	mov	r0,#_getFonaGPS_CIPGSMLOC_1_1
	movx	a,@r0
	add	a,#0x29
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	mov	a,r4
	movx	@dptr,a
00145$:
	C$mdrip.c$613$2$1 ==.
	XG$getFonaGPS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'print_packet'
;------------------------------------------------------------
;sloc0                     Allocated with name '_print_packet_sloc0_1_0'
;sloc1                     Allocated with name '_print_packet_sloc1_1_0'
;sloc2                     Allocated with name '_print_packet_sloc2_1_0'
;sloc3                     Allocated with name '_print_packet_sloc3_1_0'
;fonaBat                   Allocated with name '_print_packet_fonaBat_1_1'
;fonaLatLong               Allocated with name '_print_packet_fonaLatLong_1_1'
;transID                   Allocated with name '_print_packet_transID_1_1'
;CIPResponse               Allocated with name '_print_packet_CIPResponse_1_1'
;iv                        Allocated with name '_print_packet_iv_1_1'
;i                         Allocated with name '_print_packet_i_1_1'
;sprintfBuffer             Allocated with name '_print_packet_sprintfBuffer_1_1'
;AESBuffer                 Allocated with name '_print_packet_AESBuffer_1_1'
;prtlen                    Allocated with name '_print_packet_prtlen_1_1'
;------------------------------------------------------------
	G$print_packet$0$0 ==.
	C$mdrip.c$616$2$1 ==.
;	apps/mdrip/mdrip.c:616: void print_packet(Dexcom_packet* pPkt) {
;	-----------------------------------------
;	 function print_packet
;	-----------------------------------------
_print_packet:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_print_packet_pPkt_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$mdrip.c$618$1$1 ==.
;	apps/mdrip/mdrip.c:618: XDATA char fonaLatLong[25] = {0};
	mov	dptr,#_print_packet_fonaLatLong_1_1
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_print_packet_fonaLatLong_1_1 + 0x0018)
	clr	a
	movx	@dptr,a
	C$mdrip.c$619$1$1 ==.
;	apps/mdrip/mdrip.c:619: XDATA char transID[] = "BLANK"; 
	mov	dptr,#_print_packet_transID_1_1
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0001)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0002)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0003)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0004)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_print_packet_transID_1_1 + 0x0005)
	C$mdrip.c$626$1$1 ==.
;	apps/mdrip/mdrip.c:626: XDATA uint8_t iv[16]  = { 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f };
	clr	a
	movx	@dptr,a
	mov	dptr,#_print_packet_iv_1_1
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0002)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0003)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0005)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0006)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0007)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0008)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x0009)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000a)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000b)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000c)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000d)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
	mov	a,#0x0F
	movx	@dptr,a
	C$mdrip.c$637$1$1 ==.
;	apps/mdrip/mdrip.c:637: uartEnable();
	lcall	_uartEnable
	C$mdrip.c$640$1$1 ==.
;	apps/mdrip/mdrip.c:640: if(enable_wixfone==1) {
	jb	_enable_wixfone,00127$
	ljmp	00102$
00127$:
	C$mdrip.c$642$2$2 ==.
;	apps/mdrip/mdrip.c:642: fonaBat=getFonaMillivolts();							//	Ask the fona for the battery health - best to do gets immediately after uart enabled
	lcall	_getFonaMillivolts
	mov	_print_packet_sloc0_1_0,dpl
	mov	(_print_packet_sloc0_1_0 + 1),dph
	C$mdrip.c$646$2$2 ==.
;	apps/mdrip/mdrip.c:646: enableFona();
	lcall	_enableFona
	C$mdrip.c$647$2$2 ==.
;	apps/mdrip/mdrip.c:647: getFonaGPS( &CIPResponse );
	mov	dptr,#_print_packet_CIPResponse_1_1
	lcall	_getFonaGPS
	C$mdrip.c$648$2$2 ==.
;	apps/mdrip/mdrip.c:648: strcpy(fonaLatLong, CIPResponse.LatLong);
	mov	r0,#_strcpy_PARM_2
	mov	a,#_print_packet_CIPResponse_1_1
	movx	@r0,a
	inc	r0
	mov	a,#(_print_packet_CIPResponse_1_1 >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_print_packet_fonaLatLong_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$649$2$2 ==.
;	apps/mdrip/mdrip.c:649: strcpy(iv, CIPResponse.iv);
	mov	r0,#_strcpy_PARM_2
	mov	a,#(_print_packet_CIPResponse_1_1 + 0x0019)
	movx	@r0,a
	inc	r0
	mov	a,#((_print_packet_CIPResponse_1_1 + 0x0019) >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_print_packet_iv_1_1
	mov	b,#0x00
	lcall	_strcpy
	C$mdrip.c$650$2$2 ==.
;	apps/mdrip/mdrip.c:650: iv[14]=pPkt->txId;										//	Randomise the IV further by updating this spare byte with the packet sequence number
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0B
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	dptr,#(_print_packet_iv_1_1 + 0x000e)
	movx	@dptr,a
	C$mdrip.c$651$2$2 ==.
;	apps/mdrip/mdrip.c:651: iv[15]=pPkt->checksum;									//	Randomise the IV further by updating this other spare byte with the packet checksum
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x12
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#(_print_packet_iv_1_1 + 0x000f)
	movx	@dptr,a
	C$mdrip.c$654$2$2 ==.
;	apps/mdrip/mdrip.c:654: fonaConnect();		// Establish a connection to the Dexie server
	push	ar3
	push	ar2
	lcall	_fonaConnect
	C$mdrip.c$655$2$2 ==.
;	apps/mdrip/mdrip.c:655: dexcom_src_to_ascii(pPkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x05
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	mov	a,#_print_packet_transID_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_transID_1_1 >> 8)
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_dexcom_src_to_ascii
	pop	ar2
	pop	ar3
	C$mdrip.c$692$2$2 ==.
;	apps/mdrip/mdrip.c:692: fonaLatLong);									//		GPS Coordinates of cell tower(derived by Fona)
	C$mdrip.c$690$2$2 ==.
;	apps/mdrip/mdrip.c:690: (((pPkt->RSSI)/2)-73),							//		Received Signal Strength Indicator
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x13
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	clr	F0
	mov	b,#0x02
	mov	a,r7
	jnb	acc.7,00128$
	cpl	F0
	cpl	a
	inc	a
00128$:
	div	ab
	jnb	F0,00129$
	cpl	a
	inc	a
00129$:
	push	acc
	mov	c,F0
	subb	a,acc
	mov	b,a
	pop	acc
	add	a,#0xB7
	mov	_print_packet_sloc2_1_0,a
	mov	a,b
	addc	a,#0xFF
	mov	(_print_packet_sloc2_1_0 + 1),a
	C$mdrip.c$689$2$2 ==.
;	apps/mdrip/mdrip.c:689: pPkt->battery, 					 				// 		Dexcom Transmitter Battery
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x10
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	_print_packet_sloc1_1_0,r5
	mov	(_print_packet_sloc1_1_0 + 1),#0x00
	C$mdrip.c$688$2$2 ==.
;	apps/mdrip/mdrip.c:688: dex_num_decoder(pPkt->filtered)*2,				// 		Filtered BG Value
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0E
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	lcall	_dex_num_decoder
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	add	a,r4
	mov	_print_packet_sloc3_1_0,a
	mov	a,r5
	rlc	a
	mov	(_print_packet_sloc3_1_0 + 1),a
	mov	a,r6
	rlc	a
	mov	(_print_packet_sloc3_1_0 + 2),a
	mov	a,r7
	rlc	a
	mov	(_print_packet_sloc3_1_0 + 3),a
	C$mdrip.c$687$2$2 ==.
;	apps/mdrip/mdrip.c:687: dex_num_decoder(pPkt->raw),		 				// 		Raw BQ Value
	mov	r0,#_print_packet_pPkt_1_1
	movx	a,@r0
	add	a,#0x0C
	mov	dpl,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_dex_num_decoder
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar2
	pop	ar3
	C$mdrip.c$686$2$2 ==.
;	apps/mdrip/mdrip.c:686: transID,						 				// 		Transmitter ID - from packet in case only_listen_for_my_transmitter false
	C$mdrip.c$685$2$2 ==.
;	apps/mdrip/mdrip.c:685: pPkt->txId, 					 				// 		Transmission ID - unique-ish identifier
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	C$mdrip.c$684$2$2 ==.
;	apps/mdrip/mdrip.c:684: wixFone_ID, 					 				// 		xDrip2g Device Identifier
	C$mdrip.c$683$2$2 ==.
;	apps/mdrip/mdrip.c:683: prtlen = sprintf(sprintfBuffer, "%s %hhu %s %lu %lu %d %d %hhu %s",	
	mov	a,#_print_packet_fonaLatLong_1_1
	push	acc
	mov	a,#(_print_packet_fonaLatLong_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	push	_print_packet_sloc0_1_0
	push	(_print_packet_sloc0_1_0 + 1)
	push	_print_packet_sloc2_1_0
	push	(_print_packet_sloc2_1_0 + 1)
	push	_print_packet_sloc1_1_0
	push	(_print_packet_sloc1_1_0 + 1)
	push	_print_packet_sloc3_1_0
	push	(_print_packet_sloc3_1_0 + 1)
	push	(_print_packet_sloc3_1_0 + 2)
	push	(_print_packet_sloc3_1_0 + 3)
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	a,#_print_packet_transID_1_1
	push	acc
	mov	a,#(_print_packet_transID_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	push	ar2
	push	ar3
	mov	a,#_wixFone_ID
	push	acc
	mov	a,#(_wixFone_ID >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_29
	push	acc
	mov	a,#(__str_29 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_print_packet_sprintfBuffer_1_1
	push	acc
	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	r6,dpl
	mov	a,sp
	add	a,#0xe1
	mov	sp,a
	C$mdrip.c$696$2$2 ==.
;	apps/mdrip/mdrip.c:696: for(i = prtlen; i < 64; ++i)
	mov	ar7,r6
00103$:
	cjne	r7,#0x40,00130$
00130$:
	jnc	00106$
	C$mdrip.c$697$2$2 ==.
;	apps/mdrip/mdrip.c:697: sprintfBuffer[i]=' ';							//		Fill rest of array with spaces
	mov	a,r7
	add	a,#_print_packet_sprintfBuffer_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	mov	dph,a
	mov	a,#0x20
	movx	@dptr,a
	C$mdrip.c$696$2$2 ==.
;	apps/mdrip/mdrip.c:696: for(i = prtlen; i < 64; ++i)
	inc	r7
	sjmp	00103$
00106$:
	C$mdrip.c$702$2$2 ==.
;	apps/mdrip/mdrip.c:702: AES128_CBC_encrypt_buffer(AESBuffer, sprintfBuffer, 64, key, iv);   // swap prtlen for 64 here?
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_2
	mov	a,#_print_packet_sprintfBuffer_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_sprintfBuffer_1_1 >> 8)
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_4
	mov	a,#_key
	movx	@dptr,a
	inc	dptr
	mov	a,#(_key >> 8)
	movx	@dptr,a
	mov	dptr,#_AES128_CBC_encrypt_buffer_PARM_5
	mov	a,#_print_packet_iv_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_print_packet_iv_1_1 >> 8)
	movx	@dptr,a
	mov	dptr,#_print_packet_AESBuffer_1_1
	lcall	_AES128_CBC_encrypt_buffer
	C$mdrip.c$713$2$2 ==.
;	apps/mdrip/mdrip.c:713: printf("xDrip2g(AES): ");
	mov	a,#__str_30
	push	acc
	mov	a,#(__str_30 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$715$1$1 ==.
;	apps/mdrip/mdrip.c:715: for(i = 0; i < 16; ++i)
	mov	r7,#0x00
00107$:
	cjne	r7,#0x10,00132$
00132$:
	jnc	00110$
	C$mdrip.c$716$2$2 ==.
;	apps/mdrip/mdrip.c:716: printf("%02x", iv[i]);							//		Print initialisation vector as this is not a secret, just unique
	mov	a,r7
	add	a,#_print_packet_iv_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_iv_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	C$mdrip.c$715$2$2 ==.
;	apps/mdrip/mdrip.c:715: for(i = 0; i < 16; ++i)
	inc	r7
	sjmp	00107$
00110$:
	C$mdrip.c$718$2$2 ==.
;	apps/mdrip/mdrip.c:718: printf(" ");	
	mov	a,#__str_32
	push	acc
	mov	a,#(__str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$720$2$2 ==.
;	apps/mdrip/mdrip.c:720: for(i = 0; i < 64; ++i) 
	mov	r7,#0x00
00111$:
	cjne	r7,#0x40,00134$
00134$:
	jnc	00114$
	C$mdrip.c$721$2$2 ==.
;	apps/mdrip/mdrip.c:721: printf("%02x", AESBuffer[i]);
	mov	a,r7
	add	a,#_print_packet_AESBuffer_1_1
	mov	dpl,a
	clr	a
	addc	a,#(_print_packet_AESBuffer_1_1 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar5
	mov	a,#__str_31
	push	acc
	mov	a,#(__str_31 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar7
	C$mdrip.c$720$2$2 ==.
;	apps/mdrip/mdrip.c:720: for(i = 0; i < 64; ++i) 
	inc	r7
	sjmp	00111$
00114$:
	C$mdrip.c$723$2$2 ==.
;	apps/mdrip/mdrip.c:723: printf("\r\n\032");									// CR/LF and Escape ctrl-z character
	mov	a,#__str_33
	push	acc
	mov	a,#(__str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$727$2$2 ==.
;	apps/mdrip/mdrip.c:727: delayMs(defaultATWait);									// Need to wait here also as sometimes missing ctrl-z
	mov	dptr,#_defaultATWait
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$mdrip.c$728$2$2 ==.
;	apps/mdrip/mdrip.c:728: printf("\032");											// Send all the data with ctrl-z (do it again to be sure)
	mov	a,#__str_34
	push	acc
	mov	a,#(__str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$729$2$2 ==.
;	apps/mdrip/mdrip.c:729: delayMs(defaultATWait);
	mov	dptr,#_defaultATWait
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	lcall	_delayMs
	C$mdrip.c$730$2$2 ==.
;	apps/mdrip/mdrip.c:730: fonaDisable();											// Disconnect and send the fona asleep
	lcall	_fonaDisable
00102$:
	C$mdrip.c$733$1$1 ==.
;	apps/mdrip/mdrip.c:733: uartDisable();
	lcall	_uartDisable
	C$mdrip.c$734$1$1 ==.
	XG$print_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeAllOutputs'
;------------------------------------------------------------
;i                         Allocated with name '_makeAllOutputs_i_1_1'
;------------------------------------------------------------
	G$makeAllOutputs$0$0 ==.
	C$mdrip.c$736$1$1 ==.
;	apps/mdrip/mdrip.c:736: void makeAllOutputs() {
;	-----------------------------------------
;	 function makeAllOutputs
;	-----------------------------------------
_makeAllOutputs:
	C$mdrip.c$738$1$1 ==.
;	apps/mdrip/mdrip.c:738: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
	mov	r6,#0x01
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$mdrip.c$739$2$2 ==.
;	apps/mdrip/mdrip.c:739: setDigitalOutput(i, LOW);
	mov	dpl,r6
	clr	b[0]
	push	ar7
	push	ar6
	mov	bits,b
	lcall	_setDigitalOutput
	pop	ar6
	pop	ar7
	C$mdrip.c$738$1$1 ==.
;	apps/mdrip/mdrip.c:738: for (i=1; i < 16; i++) { // in the future, this should be set to only the channels being used for output, and add the one for input
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$mdrip.c$741$1$1 ==.
	XG$makeAllOutputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'makeAllOutputsLow'
;------------------------------------------------------------
;i                         Allocated with name '_makeAllOutputsLow_i_1_1'
;------------------------------------------------------------
	G$makeAllOutputsLow$0$0 ==.
	C$mdrip.c$742$1$1 ==.
;	apps/mdrip/mdrip.c:742: void makeAllOutputsLow() {
;	-----------------------------------------
;	 function makeAllOutputsLow
;	-----------------------------------------
_makeAllOutputsLow:
	C$mdrip.c$744$1$1 ==.
;	apps/mdrip/mdrip.c:744: for (i=0; i < 16; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$mdrip.c$745$2$2 ==.
;	apps/mdrip/mdrip.c:745: setDigitalOutput(i, LOW);
	mov	dpl,r6
	clr	b[0]
	push	ar7
	push	ar6
	mov	bits,b
	lcall	_setDigitalOutput
	pop	ar6
	pop	ar7
	C$mdrip.c$744$1$1 ==.
;	apps/mdrip/mdrip.c:744: for (i=0; i < 16; i++) {
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$mdrip.c$747$1$1 ==.
	XG$makeAllOutputsLow$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_offsets'
;------------------------------------------------------------
;i                         Allocated with name '_reset_offsets_i_1_1'
;------------------------------------------------------------
	G$reset_offsets$0$0 ==.
	C$mdrip.c$749$1$1 ==.
;	apps/mdrip/mdrip.c:749: void reset_offsets() {
;	-----------------------------------------
;	 function reset_offsets
;	-----------------------------------------
_reset_offsets:
	C$mdrip.c$751$2$2 ==.
;	apps/mdrip/mdrip.c:751: for(i=0; i<4; i++) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	mov	a,r6
	subb	a,#0x04
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00105$
	C$mdrip.c$752$2$2 ==.
;	apps/mdrip/mdrip.c:752: fOffset[i] = defaultfOffset[i];
	mov	a,r6
	add	a,#_fOffset
	mov	r1,a
	mov	a,r6
	add	a,#_defaultfOffset
	mov	dpl,a
	mov	a,r7
	addc	a,#(_defaultfOffset >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	movx	@r1,a
	C$mdrip.c$751$1$1 ==.
;	apps/mdrip/mdrip.c:751: for(i=0; i<4; i++) {
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00105$:
	C$mdrip.c$754$1$1 ==.
	XG$reset_offsets$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'killWithWatchdog'
;------------------------------------------------------------
	G$killWithWatchdog$0$0 ==.
	C$mdrip.c$756$1$1 ==.
;	apps/mdrip/mdrip.c:756: void killWithWatchdog() {
;	-----------------------------------------
;	 function killWithWatchdog
;	-----------------------------------------
_killWithWatchdog:
	C$mdrip.c$757$1$1 ==.
;	apps/mdrip/mdrip.c:757: WDCTL = (WDCTL & ~0x03) | 0x00;
	mov	r7,_WDCTL
	anl	ar7,#0xFC
	mov	_WDCTL,r7
	C$mdrip.c$758$1$1 ==.
;	apps/mdrip/mdrip.c:758: WDCTL = (WDCTL & ~0x04) | 0x08;
	mov	r7,_WDCTL
	mov	a,#0xFB
	anl	a,r7
	orl	a,#0x08
	mov	r7,a
	mov	_WDCTL,r7
	C$mdrip.c$759$1$1 ==.
	XG$killWithWatchdog$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'goToSleep'
;------------------------------------------------------------
;sloc0                     Allocated with name '_goToSleep_sloc0_1_0'
;sloc1                     Allocated with name '_goToSleep_sloc1_1_0'
;seconds                   Allocated with name '_goToSleep_seconds_1_1'
;------------------------------------------------------------
	G$goToSleep$0$0 ==.
	C$mdrip.c$761$1$1 ==.
;	apps/mdrip/mdrip.c:761: XDATA void goToSleep (XDATA int16 seconds) {
;	-----------------------------------------
;	 function goToSleep
;	-----------------------------------------
_goToSleep:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_goToSleep_seconds_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$762$1$1 ==.
;	apps/mdrip/mdrip.c:762: adcSetMillivoltCalibration(adcReadVddMillivolts());
	lcall	_adcReadVddMillivolts
	lcall	_adcSetMillivoltCalibration
	C$mdrip.c$763$1$1 ==.
;	apps/mdrip/mdrip.c:763: makeAllOutputsLow();
	lcall	_makeAllOutputsLow
	C$mdrip.c$765$1$1 ==.
;	apps/mdrip/mdrip.c:765: if(!needsTimingCalibration) {
	jnb	_needsTimingCalibration,00134$
	ljmp	00120$
00134$:
	C$mdrip.c$766$2$2 ==.
;	apps/mdrip/mdrip.c:766: if(!usbPowerPresent()){
	lcall	_usbPowerPresent
	jnc	00135$
	ljmp	00117$
00135$:
	C$mdrip.c$772$3$2 ==.
;	apps/mdrip/mdrip.c:772: uint8 savedPICTL = PICTL;
	mov	r7,_PICTL
	C$mdrip.c$773$3$2 ==.
;	apps/mdrip/mdrip.c:773: BIT savedP0IE = P0IE;
	mov	c,_P0IE
	mov	_goToSleep_savedP0IE_3_3,c
	C$mdrip.c$774$3$2 ==.
;	apps/mdrip/mdrip.c:774: uint8 savedP0SEL = P0SEL;
	mov	r6,_P0SEL
	C$mdrip.c$775$3$2 ==.
;	apps/mdrip/mdrip.c:775: uint8 savedP0DIR = P0DIR;
	mov	r5,_P0DIR
	C$mdrip.c$776$3$2 ==.
;	apps/mdrip/mdrip.c:776: uint8 savedP1SEL = P1SEL;
	mov	r0,#_goToSleep_savedP1SEL_3_3
	mov	a,_P1SEL
	movx	@r0,a
	C$mdrip.c$777$3$2 ==.
;	apps/mdrip/mdrip.c:777: uint8 savedP1DIR = P1DIR;
	mov	r0,#_goToSleep_savedP1DIR_3_3
	mov	a,_P1DIR
	movx	@r0,a
	C$mdrip.c$779$3$3 ==.
;	apps/mdrip/mdrip.c:779: sleepInit();
	push	ar7
	push	ar6
	push	ar5
	lcall	_sleepInit
	C$mdrip.c$781$3$3 ==.
;	apps/mdrip/mdrip.c:781: disableUsbPullup();
	lcall	_disableUsbPullup
	C$mdrip.c$782$3$3 ==.
;	apps/mdrip/mdrip.c:782: usbDeviceState = USB_STATE_DETACHED;
	mov	dptr,#_usbDeviceState
	clr	a
	movx	@dptr,a
	C$mdrip.c$783$3$3 ==.
;	apps/mdrip/mdrip.c:783: usbEnabled = 0;
	clr	_usbEnabled
	C$mdrip.c$784$3$3 ==.
;	apps/mdrip/mdrip.c:784: SLEEP &= ~(1<<7);
	mov	r2,_SLEEP
	anl	ar2,#0x7F
	mov	_SLEEP,r2
	C$mdrip.c$786$3$3 ==.
;	apps/mdrip/mdrip.c:786: WORCTRL |= 0x03; // 2^5 periods
	orl	_WORCTRL,#0x03
	C$mdrip.c$787$3$3 ==.
;	apps/mdrip/mdrip.c:787: switchToRCOSC();
	lcall	_switchToRCOSC
	pop	ar5
	pop	ar6
	pop	ar7
	C$mdrip.c$789$3$3 ==.
;	apps/mdrip/mdrip.c:789: storedDescHigh = DMA0CFGH;
	mov	r0,#_goToSleep_storedDescHigh_3_3
	mov	a,_DMA0CFGH
	movx	@r0,a
	C$mdrip.c$790$3$3 ==.
;	apps/mdrip/mdrip.c:790: storedDescLow = DMA0CFGL;
	mov	r0,#_goToSleep_storedDescLow_3_3
	mov	a,_DMA0CFGL
	movx	@r0,a
	C$mdrip.c$791$3$3 ==.
;	apps/mdrip/mdrip.c:791: storedDma0Armed = DMAARM & 0x01;
	mov	a,_DMAARM
	anl	a,#0x01
	add	a,#0xff
	mov	_goToSleep_storedDma0Armed_3_3,c
	C$mdrip.c$792$3$3 ==.
;	apps/mdrip/mdrip.c:792: DMAARM |= 0x81;
	orl	_DMAARM,#0x81
	C$mdrip.c$793$3$3 ==.
;	apps/mdrip/mdrip.c:793: dmaDesc[0] = ((unsigned int)& PM2_BUF) >> 8;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	ar2,r3
	mov	dptr,#_dmaDesc
	mov	a,r2
	movx	@dptr,a
	C$mdrip.c$794$3$3 ==.
;	apps/mdrip/mdrip.c:794: dmaDesc[1] = (unsigned int)& PM2_BUF;
	mov	r2,#_PM2_BUF
	mov	r3,#(_PM2_BUF >> 8)
	mov	dptr,#(_dmaDesc + 0x0001)
	mov	a,r2
	movx	@dptr,a
	C$mdrip.c$796$3$3 ==.
;	apps/mdrip/mdrip.c:796: DMA0CFGH = ((unsigned int)&dmaDesc) >> 8;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGH,r3
	C$mdrip.c$797$3$3 ==.
;	apps/mdrip/mdrip.c:797: DMA0CFGL = (unsigned int)&dmaDesc;
	mov	r2,#_dmaDesc
	mov	r3,#(_dmaDesc >> 8)
	mov	_DMA0CFGL,r2
	C$mdrip.c$798$3$3 ==.
;	apps/mdrip/mdrip.c:798: DMAARM = 0x01;
	mov	_DMAARM,#0x01
	C$mdrip.c$801$3$3 ==.
;	apps/mdrip/mdrip.c:801: storedIEN0 = IEN0;
	mov	r3,_IEN0
	C$mdrip.c$802$3$3 ==.
;	apps/mdrip/mdrip.c:802: storedIEN1 = IEN1;
	mov	r0,#_goToSleep_storedIEN1_3_3
	mov	a,_IEN1
	movx	@r0,a
	C$mdrip.c$803$3$3 ==.
;	apps/mdrip/mdrip.c:803: storedIEN2 = IEN2;
	mov	r0,#_goToSleep_storedIEN2_3_3
	mov	a,_IEN2
	movx	@r0,a
	C$mdrip.c$806$3$3 ==.
;	apps/mdrip/mdrip.c:806: IEN0 |= 0xA0;
	orl	_IEN0,#0xA0
	C$mdrip.c$809$3$3 ==.
;	apps/mdrip/mdrip.c:809: IEN0 &= 0xA0;
	anl	_IEN0,#0xA0
	C$mdrip.c$810$3$3 ==.
;	apps/mdrip/mdrip.c:810: IEN1 &= ~0x3F;
	mov	r2,_IEN1
	anl	ar2,#0xC0
	mov	_IEN1,r2
	C$mdrip.c$811$3$3 ==.
;	apps/mdrip/mdrip.c:811: IEN2 &= ~0x3F;
	mov	r2,_IEN2
	anl	ar2,#0xC0
	mov	_IEN2,r2
	C$mdrip.c$813$3$3 ==.
;	apps/mdrip/mdrip.c:813: WORCTRL |= 0x04;  // Reset
	orl	_WORCTRL,#0x04
	C$mdrip.c$814$3$3 ==.
;	apps/mdrip/mdrip.c:814: temp = WORTIME0;
	mov	r2,_WORTIME0
	C$mdrip.c$815$3$3 ==.
;	apps/mdrip/mdrip.c:815: while(temp == WORTIME0) {};
00101$:
	mov	a,r2
	cjne	a,_WORTIME0,00136$
	sjmp	00101$
00136$:
	C$mdrip.c$816$1$1 ==.
;	apps/mdrip/mdrip.c:816: WOREVT1 = seconds >> 8;
	push	ar3
	mov	dptr,#_goToSleep_seconds_1_1
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	_WOREVT1,r4
	C$mdrip.c$817$3$3 ==.
;	apps/mdrip/mdrip.c:817: WOREVT0 = seconds;
	mov	_WOREVT0,r3
	C$mdrip.c$819$3$3 ==.
;	apps/mdrip/mdrip.c:819: temp = WORTIME0;
	mov	r2,_WORTIME0
	C$mdrip.c$865$1$1 ==.
;	apps/mdrip/mdrip.c:865: makeAllOutputs();
	pop	ar3
	C$mdrip.c$820$3$3 ==.
;	apps/mdrip/mdrip.c:820: while(temp == WORTIME0) {};
00104$:
	mov	a,r2
	cjne	a,_WORTIME0,00137$
	sjmp	00104$
00137$:
	C$mdrip.c$822$3$3 ==.
;	apps/mdrip/mdrip.c:822: MEMCTR |= 0x02;
	orl	_MEMCTR,#0x02
	C$mdrip.c$823$3$3 ==.
;	apps/mdrip/mdrip.c:823: SLEEP = 0x06;
	mov	_SLEEP,#0x06
	C$mdrip.c$824$3$3 ==.
;	apps/mdrip/mdrip.c:824: __asm nop __endasm;
	 nop 
	C$mdrip.c$825$3$3 ==.
;	apps/mdrip/mdrip.c:825: __asm nop __endasm;
	 nop 
	C$mdrip.c$826$3$3 ==.
;	apps/mdrip/mdrip.c:826: __asm nop __endasm;
	 nop 
	C$mdrip.c$827$3$3 ==.
;	apps/mdrip/mdrip.c:827: if(SLEEP & 0x03){
	mov	a,_SLEEP
	anl	a,#0x03
	jz	00108$
	C$mdrip.c$828$4$6 ==.
;	apps/mdrip/mdrip.c:828: __asm mov 0xD7, #0x01 __endasm;
	 mov 0xD7, #0x01 
	C$mdrip.c$829$4$6 ==.
;	apps/mdrip/mdrip.c:829: __asm nop __endasm;
	 nop 
	C$mdrip.c$830$4$6 ==.
;	apps/mdrip/mdrip.c:830: __asm orl 0x87, #0x01 __endasm;
	 orl 0x87, #0x01 
	C$mdrip.c$831$4$6 ==.
;	apps/mdrip/mdrip.c:831: __asm nop __endasm;
	 nop 
00108$:
	C$mdrip.c$833$3$3 ==.
;	apps/mdrip/mdrip.c:833: IEN0 = storedIEN0;
	mov	_IEN0,r3
	C$mdrip.c$834$3$3 ==.
;	apps/mdrip/mdrip.c:834: IEN1 = storedIEN1;
	mov	r0,#_goToSleep_storedIEN1_3_3
	movx	a,@r0
	mov	_IEN1,a
	C$mdrip.c$835$3$3 ==.
;	apps/mdrip/mdrip.c:835: IEN2 = storedIEN2;
	mov	r0,#_goToSleep_storedIEN2_3_3
	movx	a,@r0
	mov	_IEN2,a
	C$mdrip.c$836$3$3 ==.
;	apps/mdrip/mdrip.c:836: DMA0CFGH = storedDescHigh;
	mov	r0,#_goToSleep_storedDescHigh_3_3
	movx	a,@r0
	mov	_DMA0CFGH,a
	C$mdrip.c$837$3$3 ==.
;	apps/mdrip/mdrip.c:837: DMA0CFGL = storedDescLow;
	mov	r0,#_goToSleep_storedDescLow_3_3
	movx	a,@r0
	mov	_DMA0CFGL,a
	C$mdrip.c$838$3$3 ==.
;	apps/mdrip/mdrip.c:838: if(storedDma0Armed){
	jnb	_goToSleep_storedDma0Armed_3_3,00110$
	C$mdrip.c$839$4$7 ==.
;	apps/mdrip/mdrip.c:839: DMAARM |= 0x01;
	orl	_DMAARM,#0x01
00110$:
	C$mdrip.c$842$3$3 ==.
;	apps/mdrip/mdrip.c:842: boardClockInit();
	push	ar7
	push	ar6
	push	ar5
	lcall	_boardClockInit
	pop	ar5
	pop	ar6
	pop	ar7
	C$mdrip.c$844$3$3 ==.
;	apps/mdrip/mdrip.c:844: PICTL = savedPICTL;
	mov	_PICTL,r7
	C$mdrip.c$845$3$3 ==.
;	apps/mdrip/mdrip.c:845: P0IE = savedP0IE;
	mov	c,_goToSleep_savedP0IE_3_3
	mov	_P0IE,c
	C$mdrip.c$846$3$3 ==.
;	apps/mdrip/mdrip.c:846: P0SEL = savedP0SEL;
	mov	_P0SEL,r6
	C$mdrip.c$847$3$3 ==.
;	apps/mdrip/mdrip.c:847: P0DIR = savedP0DIR;
	mov	_P0DIR,r5
	C$mdrip.c$848$3$3 ==.
;	apps/mdrip/mdrip.c:848: P1SEL = savedP1SEL;
	mov	r0,#_goToSleep_savedP1SEL_3_3
	movx	a,@r0
	mov	_P1SEL,a
	C$mdrip.c$849$3$3 ==.
;	apps/mdrip/mdrip.c:849: P1DIR = savedP1DIR;
	mov	r0,#_goToSleep_savedP1DIR_3_3
	movx	a,@r0
	mov	_P1DIR,a
	C$mdrip.c$850$3$3 ==.
;	apps/mdrip/mdrip.c:850: USBPOW = 1;
	mov	dptr,#_USBPOW
	mov	a,#0x01
	movx	@dptr,a
	C$mdrip.c$851$3$3 ==.
;	apps/mdrip/mdrip.c:851: USBCIE = 0b0111;
	mov	dptr,#_USBCIE
	mov	a,#0x07
	movx	@dptr,a
	ljmp	00120$
00117$:
	C$mdrip.c$853$3$8 ==.
;	apps/mdrip/mdrip.c:853: uint32 start_waiting = getMs();
	lcall	_getMs
	mov	r0,#_goToSleep_start_waiting_3_8
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	C$mdrip.c$854$3$8 ==.
;	apps/mdrip/mdrip.c:854: if(!usbEnabled) {
	jb	_usbEnabled,00112$
	C$mdrip.c$855$4$9 ==.
;	apps/mdrip/mdrip.c:855: usbDeviceState = USB_STATE_POWERED;
	mov	dptr,#_usbDeviceState
	mov	a,#0x02
	movx	@dptr,a
	C$mdrip.c$856$4$9 ==.
;	apps/mdrip/mdrip.c:856: enableUsbPullup();
	lcall	_enableUsbPullup
	C$mdrip.c$857$4$9 ==.
;	apps/mdrip/mdrip.c:857: usbEnabled = 1;
	setb	_usbEnabled
00112$:
	C$mdrip.c$859$3$8 ==.
;	apps/mdrip/mdrip.c:859: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$mdrip.c$860$3$8 ==.
;	apps/mdrip/mdrip.c:860: while((getMs() - start_waiting) < (seconds * 1000)) {
	mov	dptr,#_goToSleep_seconds_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#__mulint_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	mov	dptr,#0x03E8
	lcall	__mulint
	mov	_goToSleep_sloc0_1_0,dpl
	mov	(_goToSleep_sloc0_1_0 + 1),dph
00113$:
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_goToSleep_start_waiting_3_8
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	mov	_goToSleep_sloc1_1_0,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	cpl	c
	mov	(_goToSleep_sloc1_1_0 + 1),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	(_goToSleep_sloc1_1_0 + 2),a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	(_goToSleep_sloc1_1_0 + 3),a
	mov	r2,_goToSleep_sloc0_1_0
	mov	a,(_goToSleep_sloc0_1_0 + 1)
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	clr	c
	mov	a,_goToSleep_sloc1_1_0
	subb	a,r2
	mov	a,(_goToSleep_sloc1_1_0 + 1)
	subb	a,r3
	mov	a,(_goToSleep_sloc1_1_0 + 2)
	subb	a,r6
	mov	a,(_goToSleep_sloc1_1_0 + 3)
	subb	a,r7
	jnc	00120$
	C$mdrip.c$861$4$10 ==.
;	apps/mdrip/mdrip.c:861: doServices();
	lcall	_doServices
	sjmp	00113$
00120$:
	C$mdrip.c$865$1$1 ==.
;	apps/mdrip/mdrip.c:865: makeAllOutputs();
	lcall	_makeAllOutputs
	C$mdrip.c$866$1$1 ==.
	XG$goToSleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_1'
;------------------------------------------------------------
	G$putchar$0$0 ==.
	C$mdrip.c$869$1$1 ==.
;	apps/mdrip/mdrip.c:869: void putchar(XDATA char c) {
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	a,dpl
	mov	dptr,#_putchar_c_1_1
	movx	@dptr,a
	C$mdrip.c$870$1$1 ==.
;	apps/mdrip/mdrip.c:870: while(uart1TxAvailable() == 0) {								//  Loop until space in the TX buffer to send a character
00101$:
	lcall	_uart1TxAvailable
	mov	a,dpl
	jnz	00103$
	C$mdrip.c$871$3$3 ==.
;	apps/mdrip/mdrip.c:871: LED_RED(1);													// Error Indicator
	orl	_P2DIR,#0x02
	C$mdrip.c$872$2$2 ==.
;	apps/mdrip/mdrip.c:872: boardService();
	lcall	_boardService
	sjmp	00101$
00103$:
	C$mdrip.c$874$1$1 ==.
;	apps/mdrip/mdrip.c:874: uart1TxSendByte(c);
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_uart1TxSendByte
	C$mdrip.c$875$1$1 ==.
;	apps/mdrip/mdrip.c:875: if (usbPowerPresent()) {
	lcall	_usbPowerPresent
	pop	ar7
	jnc	00108$
	C$mdrip.c$876$2$4 ==.
;	apps/mdrip/mdrip.c:876: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send a character
00104$:
	push	ar7
	lcall	_usbComTxAvailable
	mov	a,dpl
	pop	ar7
	jnz	00106$
	C$mdrip.c$878$3$5 ==.
;	apps/mdrip/mdrip.c:878: boardService();
	push	ar7
	lcall	_boardService
	pop	ar7
	sjmp	00104$
00106$:
	C$mdrip.c$880$2$4 ==.
;	apps/mdrip/mdrip.c:880: usbComTxSendByte(c);
	mov	dpl,r7
	lcall	_usbComTxSendByte
	C$mdrip.c$881$2$4 ==.
;	apps/mdrip/mdrip.c:881: boardService();
	lcall	_boardService
00108$:
	C$mdrip.c$883$2$6 ==.
;	apps/mdrip/mdrip.c:883: LED_RED(0);														// Error gone
	mov	r7,_P2DIR
	anl	ar7,#0xFD
	mov	_P2DIR,r7
	C$mdrip.c$884$2$6 ==.
	XG$putchar$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printfUSB'
;------------------------------------------------------------
;length                    Allocated with name '_printfUSB_length_1_1'
;i                         Allocated with name '_printfUSB_i_1_1'
;------------------------------------------------------------
	G$printfUSB$0$0 ==.
	C$mdrip.c$886$2$6 ==.
;	apps/mdrip/mdrip.c:886: void printfUSB(char * stringForUSB) {
;	-----------------------------------------
;	 function printfUSB
;	-----------------------------------------
_printfUSB:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$mdrip.c$889$1$1 ==.
;	apps/mdrip/mdrip.c:889: if (usbPowerPresent()) {
	push	ar7
	push	ar6
	push	ar5
	lcall	_usbPowerPresent
	pop	ar5
	pop	ar6
	pop	ar7
	jc	00117$
	ljmp	00110$
00117$:
	C$mdrip.c$891$2$2 ==.
;	apps/mdrip/mdrip.c:891: length = strlen(stringForUSB);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_strlen
	mov	r3,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	C$mdrip.c$892$2$2 ==.
;	apps/mdrip/mdrip.c:892: stringForUSB[length++] = ('/r');
	mov	a,r3
	inc	a
	mov	r4,a
	mov	a,r3
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,#0x2F
	lcall	__gptrput
	C$mdrip.c$893$2$2 ==.
;	apps/mdrip/mdrip.c:893: stringForUSB[length++] = ('/n');
	inc	r3
	inc	r3
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r4
	mov	a,#0x2F
	lcall	__gptrput
	C$mdrip.c$895$2$1 ==.
;	apps/mdrip/mdrip.c:895: for(i = 0; i < length; ++i) {
	mov	r4,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,r3
	jnc	00110$
	C$mdrip.c$896$3$3 ==.
;	apps/mdrip/mdrip.c:896: while(usbComTxAvailable() == 0) {							//  Loop until space in the TX buffer to send each character
00101$:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_usbComTxAvailable
	mov	a,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jnz	00103$
	C$mdrip.c$897$4$4 ==.
;	apps/mdrip/mdrip.c:897: doServices();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_doServices
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
	C$mdrip.c$899$3$3 ==.
;	apps/mdrip/mdrip.c:899: usbComTxSendByte(stringForUSB[i]);		
	mov	a,r4
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_usbComTxSendByte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$mdrip.c$895$2$2 ==.
;	apps/mdrip/mdrip.c:895: for(i = 0; i < length; ++i) {
	inc	r4
	sjmp	00106$
00110$:
	C$mdrip.c$904$2$1 ==.
	XG$printfUSB$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'swap_channel'
;------------------------------------------------------------
;newFSCTRL0                Allocated with name '_swap_channel_PARM_2'
;channel                   Allocated with name '_swap_channel_channel_1_1'
;------------------------------------------------------------
	G$swap_channel$0$0 ==.
	C$mdrip.c$907$2$1 ==.
;	apps/mdrip/mdrip.c:907: void swap_channel(XDATA uint8 channel, XDATA uint8 newFSCTRL0) {
;	-----------------------------------------
;	 function swap_channel
;	-----------------------------------------
_swap_channel:
	mov	a,dpl
	mov	dptr,#_swap_channel_channel_1_1
	movx	@dptr,a
	C$mdrip.c$908$1$1 ==.
;	apps/mdrip/mdrip.c:908: do {
00101$:
	C$mdrip.c$909$2$2 ==.
;	apps/mdrip/mdrip.c:909: RFST = 4;   //SIDLE
	mov	_RFST,#0x04
	C$mdrip.c$910$1$1 ==.
;	apps/mdrip/mdrip.c:910: } while (MARCSTATE != 0x01);
	mov	dptr,#_MARCSTATE
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00101$
	C$mdrip.c$912$1$1 ==.
;	apps/mdrip/mdrip.c:912: FSCTRL0 = newFSCTRL0;
	mov	dptr,#_swap_channel_PARM_2
	movx	a,@dptr
	mov	dptr,#_FSCTRL0
	movx	@dptr,a
	C$mdrip.c$913$1$1 ==.
;	apps/mdrip/mdrip.c:913: CHANNR = channel;
	mov	dptr,#_swap_channel_channel_1_1
	movx	a,@dptr
	mov	dptr,#_CHANNR
	movx	@dptr,a
	C$mdrip.c$914$1$1 ==.
;	apps/mdrip/mdrip.c:914: RFST = 2;   //RX
	mov	_RFST,#0x02
	C$mdrip.c$915$1$1 ==.
	XG$swap_channel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'strobe_radio'
;------------------------------------------------------------
	G$strobe_radio$0$0 ==.
	C$mdrip.c$917$1$1 ==.
;	apps/mdrip/mdrip.c:917: void strobe_radio(int radio_chan) {
;	-----------------------------------------
;	 function strobe_radio
;	-----------------------------------------
_strobe_radio:
	mov	r6,dpl
	mov	r7,dph
	C$mdrip.c$918$1$1 ==.
;	apps/mdrip/mdrip.c:918: radioMacInit();
	push	ar7
	push	ar6
	lcall	_radioMacInit
	C$mdrip.c$919$1$1 ==.
;	apps/mdrip/mdrip.c:919: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$mdrip.c$920$1$1 ==.
;	apps/mdrip/mdrip.c:920: radioMacStrobe();
	lcall	_radioMacStrobe
	pop	ar6
	pop	ar7
	C$mdrip.c$921$1$1 ==.
;	apps/mdrip/mdrip.c:921: swap_channel(nChannels[radio_chan], fOffset[radio_chan]);
	mov	a,r6
	add	a,#_nChannels
	mov	r1,a
	movx	a,@r1
	mov	r5,a
	mov	a,r6
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	dptr,#_swap_channel_PARM_2
	movx	@dptr,a
	mov	dpl,r5
	lcall	_swap_channel
	C$mdrip.c$922$1$1 ==.
	XG$strobe_radio$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WaitForPacket'
;------------------------------------------------------------
;sloc0                     Allocated with name '_WaitForPacket_sloc0_1_0'
;sloc1                     Allocated with name '_WaitForPacket_sloc1_1_0'
;sloc2                     Allocated with name '_WaitForPacket_sloc2_1_0'
;sloc3                     Allocated with name '_WaitForPacket_sloc3_1_0'
;sloc4                     Allocated with name '_WaitForPacket_sloc4_1_0'
;channel                   Allocated with name '_WaitForPacket_PARM_3'
;milliseconds              Allocated with name '_WaitForPacket_milliseconds_1_1'
;start                     Allocated with name '_WaitForPacket_start_1_1'
;i                         Allocated with name '_WaitForPacket_i_1_1'
;six_minutes               Allocated with name '_WaitForPacket_six_minutes_1_1'
;nRet                      Allocated with name '_WaitForPacket_nRet_1_1'
;transID                   Allocated with name '_WaitForPacket_transID_1_1'
;------------------------------------------------------------
	G$WaitForPacket$0$0 ==.
	C$mdrip.c$925$1$1 ==.
;	apps/mdrip/mdrip.c:925: int WaitForPacket(XDATA uint16 milliseconds, Dexcom_packet* pkt, XDATA uint8 channel) {
;	-----------------------------------------
;	 function WaitForPacket
;	-----------------------------------------
_WaitForPacket:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_WaitForPacket_milliseconds_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$926$1$1 ==.
;	apps/mdrip/mdrip.c:926: XDATA uint32 start = getMs();
	lcall	_getMs
	mov	_WaitForPacket_sloc3_1_0,dpl
	mov	(_WaitForPacket_sloc3_1_0 + 1),dph
	mov	(_WaitForPacket_sloc3_1_0 + 2),b
	mov	(_WaitForPacket_sloc3_1_0 + 3),a
	C$mdrip.c$931$1$1 ==.
;	apps/mdrip/mdrip.c:931: XDATA char transID[] = "BLANK"; 	// Line added
	mov	dptr,#_WaitForPacket_transID_1_1
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0001)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0002)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0003)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0004)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_WaitForPacket_transID_1_1 + 0x0005)
	clr	a
	movx	@dptr,a
	C$mdrip.c$932$1$1 ==.
;	apps/mdrip/mdrip.c:932: swap_channel(nChannels[channel], fOffset[channel]);
	mov	dptr,#_WaitForPacket_PARM_3
	movx	a,@dptr
	mov	r3,a
	add	a,#_nChannels
	mov	r1,a
	movx	a,@r1
	mov	_WaitForPacket_sloc0_1_0,a
	mov	a,r3
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	dptr,#_swap_channel_PARM_2
	movx	@dptr,a
	mov	dpl,_WaitForPacket_sloc0_1_0
	push	ar3
	lcall	_swap_channel
	pop	ar3
	C$mdrip.c$934$1$1 ==.
;	apps/mdrip/mdrip.c:934: while (!milliseconds || (getMs() - start) < milliseconds) {
	mov	dptr,#_WaitForPacket_milliseconds_1_1
	movx	a,@dptr
	mov	_WaitForPacket_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_WaitForPacket_sloc1_1_0 + 1),a
	clr	a
	mov	_WaitForPacket_sloc2_1_0,a
	mov	(_WaitForPacket_sloc2_1_0 + 1),a
	mov	(_WaitForPacket_sloc2_1_0 + 2),a
	mov	(_WaitForPacket_sloc2_1_0 + 3),a
00115$:
	mov	a,_WaitForPacket_sloc1_1_0
	orl	a,(_WaitForPacket_sloc1_1_0 + 1)
	jz	00116$
	push	ar3
	lcall	_getMs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,r2
	clr	c
	subb	a,_WaitForPacket_sloc3_1_0
	mov	_WaitForPacket_sloc4_1_0,a
	mov	a,r3
	subb	a,(_WaitForPacket_sloc3_1_0 + 1)
	mov	(_WaitForPacket_sloc4_1_0 + 1),a
	mov	a,r6
	subb	a,(_WaitForPacket_sloc3_1_0 + 2)
	mov	(_WaitForPacket_sloc4_1_0 + 2),a
	mov	a,r7
	subb	a,(_WaitForPacket_sloc3_1_0 + 3)
	mov	(_WaitForPacket_sloc4_1_0 + 3),a
	mov	r4,_WaitForPacket_sloc1_1_0
	mov	r5,(_WaitForPacket_sloc1_1_0 + 1)
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,_WaitForPacket_sloc4_1_0
	subb	a,r4
	mov	a,(_WaitForPacket_sloc4_1_0 + 1)
	subb	a,r5
	mov	a,(_WaitForPacket_sloc4_1_0 + 2)
	subb	a,r6
	mov	a,(_WaitForPacket_sloc4_1_0 + 3)
	subb	a,r7
	pop	ar3
	jc	00128$
	ljmp	00117$
00128$:
00116$:
	C$mdrip.c$935$2$2 ==.
;	apps/mdrip/mdrip.c:935: doServices();
	push	ar3
	lcall	_doServices
	C$mdrip.c$936$2$2 ==.
;	apps/mdrip/mdrip.c:936: blink_yellow_led();
	lcall	_blink_yellow_led
	pop	ar3
	C$mdrip.c$937$2$2 ==.
;	apps/mdrip/mdrip.c:937: i++;
	inc	_WaitForPacket_sloc2_1_0
	clr	a
	cjne	a,_WaitForPacket_sloc2_1_0,00129$
	inc	(_WaitForPacket_sloc2_1_0 + 1)
	cjne	a,(_WaitForPacket_sloc2_1_0 + 1),00129$
	inc	(_WaitForPacket_sloc2_1_0 + 2)
	cjne	a,(_WaitForPacket_sloc2_1_0 + 2),00129$
	inc	(_WaitForPacket_sloc2_1_0 + 3)
00129$:
	C$mdrip.c$938$1$1 ==.
;	apps/mdrip/mdrip.c:938: if(!(i % 40000)) {
	mov	r0,#__modulong_PARM_2
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0x9C
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,_WaitForPacket_sloc2_1_0
	mov	dph,(_WaitForPacket_sloc2_1_0 + 1)
	mov	b,(_WaitForPacket_sloc2_1_0 + 2)
	mov	a,(_WaitForPacket_sloc2_1_0 + 3)
	push	ar3
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	C$mdrip.c$939$3$3 ==.
;	apps/mdrip/mdrip.c:939: strobe_radio(channel);
	jnz	00102$
	mov	ar6,r3
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar3
	lcall	_strobe_radio
	pop	ar3
00102$:
	C$mdrip.c$941$2$2 ==.
;	apps/mdrip/mdrip.c:941: if(getMs() - start > six_minutes) {
	push	ar3
	lcall	_getMs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar3
	mov	a,r4
	clr	c
	subb	a,_WaitForPacket_sloc3_1_0
	mov	r4,a
	mov	a,r5
	subb	a,(_WaitForPacket_sloc3_1_0 + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_WaitForPacket_sloc3_1_0 + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_WaitForPacket_sloc3_1_0 + 3)
	mov	r7,a
	clr	c
	mov	a,#0x40
	subb	a,r4
	mov	a,#0x7E
	subb	a,r5
	mov	a,#0x05
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00104$
	C$mdrip.c$942$3$4 ==.
;	apps/mdrip/mdrip.c:942: killWithWatchdog();
	push	ar3
	lcall	_killWithWatchdog
	C$mdrip.c$943$3$4 ==.
;	apps/mdrip/mdrip.c:943: delayMs(2000);
	mov	dptr,#0x07D0
	lcall	_delayMs
	pop	ar3
00104$:
	C$mdrip.c$945$2$2 ==.
;	apps/mdrip/mdrip.c:945: if (packet = radioQueueRxCurrentPacket()) {
	push	ar3
	lcall	_radioQueueRxCurrentPacket
	mov	r6,dpl
	mov	r7,dph
	pop	ar3
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r6
	orl	a,r7
	jnz	00132$
	ljmp	00115$
00132$:
	C$mdrip.c$946$3$5 ==.
;	apps/mdrip/mdrip.c:946: uint8 len = packet[0];
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r7,a
	C$mdrip.c$947$3$5 ==.
;	apps/mdrip/mdrip.c:947: fOffset[channel] += FREQEST;
	mov	a,r3
	add	a,#_fOffset
	mov	r1,a
	movx	a,@r1
	mov	r6,a
	mov	dptr,#_FREQEST
	movx	a,@dptr
	add	a,r6
	movx	@r1,a
	C$mdrip.c$948$1$1 ==.
;	apps/mdrip/mdrip.c:948: memcpy(pkt, packet, min8(len+2, sizeof(Dexcom_packet)));
	push	ar3
	mov	r0,#_WaitForPacket_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	r6,#0x00
	mov	_WaitForPacket_sloc4_1_0,r4
	mov	(_WaitForPacket_sloc4_1_0 + 1),r5
	mov	(_WaitForPacket_sloc4_1_0 + 2),#0x00
	mov	a,#0x02
	add	a,r7
	mov	dpl,a
	mov	r0,#_min8_PARM_2
	mov	a,#0x15
	movx	@r0,a
	push	ar6
	push	ar3
	push	ar2
	lcall	_min8
	mov	r7,dpl
	pop	ar2
	pop	ar3
	pop	ar6
	mov	r0,#_memcpy_PARM_3
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	r0,#_memcpy_PARM_2
	mov	a,_WaitForPacket_sloc4_1_0
	movx	@r0,a
	inc	r0
	mov	a,(_WaitForPacket_sloc4_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(_WaitForPacket_sloc4_1_0 + 2)
	movx	@r0,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	push	ar3
	lcall	_memcpy
	C$mdrip.c$949$3$5 ==.
;	apps/mdrip/mdrip.c:949: if(radioCrcPassed()) {
	lcall	_radioCrcPassed
	pop	ar3
	pop	ar3
	jc	00133$
	ljmp	00110$
00133$:
	C$mdrip.c$950$1$1 ==.
;	apps/mdrip/mdrip.c:950: dexcom_src_to_ascii(pkt->src_addr, transID);			// Get a human-readable version of the Dexcom Transmitter ID
	push	ar3
	mov	r0,#_WaitForPacket_PARM_2
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_dexcom_src_to_ascii_PARM_2
	mov	a,#_WaitForPacket_transID_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_WaitForPacket_transID_1_1 >> 8)
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	push	ar3
	lcall	_dexcom_src_to_ascii
	C$mdrip.c$953$4$6 ==.
;	apps/mdrip/mdrip.c:953: if(strcmp(transID,transmitter_id) == 0 || only_listen_for_my_transmitter == 0) { // strcmp will be zero if they match
	mov	r0,#_strcmp_PARM_2
	mov	a,#_transmitter_id
	movx	@r0,a
	inc	r0
	mov	a,#(_transmitter_id >> 8)
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_WaitForPacket_transID_1_1
	mov	b,#0x00
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	pop	ar3
	pop	ar6
	pop	ar7
	pop	ar3
	orl	a,b
	jz	00105$
	jb	_only_listen_for_my_transmitter,00106$
00105$:
	C$mdrip.c$954$5$7 ==.
;	apps/mdrip/mdrip.c:954: pkt->txId -= channel;
	mov	a,#0x0B
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	clr	c
	subb	a,r3
	mov	dpl,r6
	mov	dph,r7
	movx	@dptr,a
	C$mdrip.c$955$5$7 ==.
;	apps/mdrip/mdrip.c:955: radioQueueRxDoneWithPacket();
	push	ar3
	lcall	_radioQueueRxDoneWithPacket
	pop	ar3
	C$mdrip.c$956$6$8 ==.
;	apps/mdrip/mdrip.c:956: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$mdrip.c$957$5$7 ==.
;	apps/mdrip/mdrip.c:957: last_catch_channel = channel;
	mov	r0,#_last_catch_channel
	mov	a,r3
	movx	@r0,a
	C$mdrip.c$958$5$7 ==.
;	apps/mdrip/mdrip.c:958: return 1;
	mov	dptr,#0x0001
	sjmp	00118$
00106$:
	C$mdrip.c$960$5$9 ==.
;	apps/mdrip/mdrip.c:960: radioQueueRxDoneWithPacket();
	push	ar3
	lcall	_radioQueueRxDoneWithPacket
	pop	ar3
	ljmp	00115$
00110$:
	C$mdrip.c$963$4$10 ==.
;	apps/mdrip/mdrip.c:963: radioQueueRxDoneWithPacket();
	lcall	_radioQueueRxDoneWithPacket
	C$mdrip.c$964$5$11 ==.
;	apps/mdrip/mdrip.c:964: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$mdrip.c$965$4$10 ==.
;	apps/mdrip/mdrip.c:965: return 0;
	mov	dptr,#0x0000
	sjmp	00118$
00117$:
	C$mdrip.c$969$2$12 ==.
;	apps/mdrip/mdrip.c:969: LED_YELLOW(0);
	mov	r7,_P2DIR
	anl	ar7,#0xFB
	mov	_P2DIR,r7
	C$mdrip.c$970$1$1 ==.
;	apps/mdrip/mdrip.c:970: return nRet;
	mov	dptr,#0x0000
00118$:
	C$mdrip.c$971$1$1 ==.
	XG$WaitForPacket$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayFor'
;------------------------------------------------------------
;sloc0                     Allocated with name '_delayFor_sloc0_1_0'
;wait_chan                 Allocated with name '_delayFor_wait_chan_1_1'
;------------------------------------------------------------
	G$delayFor$0$0 ==.
	C$mdrip.c$973$1$1 ==.
;	apps/mdrip/mdrip.c:973: XDATA uint32 delayFor(XDATA int wait_chan) {
;	-----------------------------------------
;	 function delayFor
;	-----------------------------------------
_delayFor:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	C$mdrip.c$974$1$1 ==.
;	apps/mdrip/mdrip.c:974: if(needsTimingCalibration) {
	jnb	_needsTimingCalibration,00102$
	C$mdrip.c$975$2$2 ==.
;	apps/mdrip/mdrip.c:975: return delayedWaitTimes[wait_chan];
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	a,r6
	add	a,#_delayedWaitTimes
	mov	r1,a
	movx	a,@r1
	mov	r4,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ljmp	00107$
00102$:
	C$mdrip.c$977$1$1 ==.
;	apps/mdrip/mdrip.c:977: if(!wait_chan && sequential_missed_packets) {
	mov	dptr,#_delayFor_wait_chan_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00104$
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	jz	00104$
	C$mdrip.c$978$2$3 ==.
;	apps/mdrip/mdrip.c:978: return waitTimes[wait_chan] + (sequential_missed_packets * wake_earlier_for_next_miss * 2 * 1000);
	mov	ar4,r6
	mov	a,r7
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	a,r4
	add	a,#_waitTimes
	mov	r1,a
	movx	a,@r1
	mov	_delayFor_sloc0_1_0,a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 1),a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 2),a
	inc	r1
	movx	a,@r1
	mov	(_delayFor_sloc0_1_0 + 3),a
	mov	r0,#_sequential_missed_packets
	mov	r1,#_wake_earlier_for_next_miss
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	r0,#__mulint_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	mov	dptr,#0x07D0
	lcall	__mulint
	mov	r4,dpl
	mov	a,dph
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,r4
	add	a,_delayFor_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_delayFor_sloc0_1_0 + 1)
	mov	r5,a
	mov	a,r3
	addc	a,(_delayFor_sloc0_1_0 + 2)
	mov	r3,a
	mov	a,r2
	addc	a,(_delayFor_sloc0_1_0 + 3)
	mov	r2,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	sjmp	00107$
00104$:
	C$mdrip.c$980$2$4 ==.
;	apps/mdrip/mdrip.c:980: return waitTimes[wait_chan];
	mov	a,r7
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	a,r6
	add	a,#_waitTimes
	mov	r1,a
	movx	a,@r1
	mov	r4,a
	inc	r1
	movx	a,@r1
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
00107$:
	C$mdrip.c$982$1$1 ==.
	XG$delayFor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_packet'
;------------------------------------------------------------
	G$get_packet$0$0 ==.
	C$mdrip.c$984$1$1 ==.
;	apps/mdrip/mdrip.c:984: BIT get_packet(Dexcom_packet* pPkt) {
;	-----------------------------------------
;	 function get_packet
;	-----------------------------------------
_get_packet:
	mov	r7,dph
	mov	a,dpl
	mov	r0,#_get_packet_pPkt_1_1
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	C$mdrip.c$986$1$1 ==.
;	apps/mdrip/mdrip.c:986: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
	mov	dptr,#_start_channel
	movx	a,@dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
00104$:
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00107$
	C$mdrip.c$987$2$2 ==.
;	apps/mdrip/mdrip.c:987: switch(WaitForPacket(delayFor(nChannel), pPkt, nChannel)) {
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	lcall	_delayFor
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	mov	dptr,#_WaitForPacket_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	r0,#_get_packet_pPkt_1_1
	mov	r1,#_WaitForPacket_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r2
	mov	dph,r3
	push	ar4
	lcall	_WaitForPacket
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	cjne	r6,#0x00,00118$
	cjne	r7,#0x00,00118$
	sjmp	00106$
00118$:
	cjne	r6,#0x01,00106$
	cjne	r7,#0x00,00106$
	C$mdrip.c$989$3$3 ==.
;	apps/mdrip/mdrip.c:989: needsTimingCalibration = 0;
	clr	_needsTimingCalibration
	C$mdrip.c$990$3$3 ==.
;	apps/mdrip/mdrip.c:990: sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	C$mdrip.c$991$3$3 ==.
;	apps/mdrip/mdrip.c:991: return 1;
	setb	c
	C$mdrip.c$994$1$1 ==.
;	apps/mdrip/mdrip.c:994: }
	sjmp	00110$
00106$:
	C$mdrip.c$986$1$1 ==.
;	apps/mdrip/mdrip.c:986: for(nChannel = start_channel; nChannel < NUM_CHANNELS; nChannel++) {
	inc	r4
	cjne	r4,#0x00,00104$
	inc	r5
	sjmp	00104$
00107$:
	C$mdrip.c$996$1$1 ==.
;	apps/mdrip/mdrip.c:996: sequential_missed_packets ++;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	C$mdrip.c$997$1$1 ==.
;	apps/mdrip/mdrip.c:997: if(sequential_missed_packets > misses_until_failure) {
	mov	r0,#_sequential_missed_packets
	mov	r1,#_misses_until_failure
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	jnc	00109$
	C$mdrip.c$998$2$4 ==.
;	apps/mdrip/mdrip.c:998: sequential_missed_packets = 0;
	mov	r0,#_sequential_missed_packets
	clr	a
	movx	@r0,a
	C$mdrip.c$999$2$4 ==.
;	apps/mdrip/mdrip.c:999: needsTimingCalibration = 1;
	setb	_needsTimingCalibration
00109$:
	C$mdrip.c$1001$1$1 ==.
;	apps/mdrip/mdrip.c:1001: reset_offsets();
	lcall	_reset_offsets
	C$mdrip.c$1002$1$1 ==.
;	apps/mdrip/mdrip.c:1002: last_catch_channel = 0;
	mov	r0,#_last_catch_channel
	clr	a
	movx	@r0,a
	C$mdrip.c$1003$1$1 ==.
;	apps/mdrip/mdrip.c:1003: return 0;
	clr	c
00110$:
	C$mdrip.c$1004$1$1 ==.
	XG$get_packet$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'setADCInputs'
;------------------------------------------------------------
	G$setADCInputs$0$0 ==.
	C$mdrip.c$1006$1$1 ==.
;	apps/mdrip/mdrip.c:1006: void setADCInputs() {
;	-----------------------------------------
;	 function setADCInputs
;	-----------------------------------------
_setADCInputs:
	C$mdrip.c$1007$1$1 ==.
;	apps/mdrip/mdrip.c:1007: P0INP=0; //set pull resistors on pins 0_0 - 0_5 to low
	mov	_P0INP,#0x00
	C$mdrip.c$1008$1$1 ==.
	XG$setADCInputs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configBt'
;------------------------------------------------------------
	G$configBt$0$0 ==.
	C$mdrip.c$1010$1$1 ==.
;	apps/mdrip/mdrip.c:1010: void configBt() {
;	-----------------------------------------
;	 function configBt
;	-----------------------------------------
_configBt:
	C$mdrip.c$1011$1$1 ==.
;	apps/mdrip/mdrip.c:1011: uartEnable();
	lcall	_uartEnable
	C$mdrip.c$1012$1$1 ==.
;	apps/mdrip/mdrip.c:1012: printf("AT+NAMExDrip");
	mov	a,#__str_36
	push	acc
	mov	a,#(__str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	C$mdrip.c$1013$1$1 ==.
;	apps/mdrip/mdrip.c:1013: uartDisable();
	lcall	_uartDisable
	C$mdrip.c$1014$1$1 ==.
	XG$configBt$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;Pkt                       Allocated with name '_main_Pkt_2_4'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$mdrip.c$1016$1$1 ==.
;	apps/mdrip/mdrip.c:1016: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$mdrip.c$1017$1$1 ==.
;	apps/mdrip/mdrip.c:1017: systemInit();
	lcall	_systemInit
	C$mdrip.c$1018$1$1 ==.
;	apps/mdrip/mdrip.c:1018: initUart1();
	lcall	_initUart1
	C$mdrip.c$1020$1$1 ==.
;	apps/mdrip/mdrip.c:1020: P1DIR |= 0x08; // RTS
	orl	_P1DIR,#0x08
	C$mdrip.c$1021$1$1 ==.
;	apps/mdrip/mdrip.c:1021: sleepInit();
	lcall	_sleepInit
	C$mdrip.c$1023$1$1 ==.
;	apps/mdrip/mdrip.c:1023: makeAllOutputs();
	lcall	_makeAllOutputs
	C$mdrip.c$1024$1$1 ==.
;	apps/mdrip/mdrip.c:1024: setADCInputs();
	lcall	_setADCInputs
	C$mdrip.c$1025$1$1 ==.
;	apps/mdrip/mdrip.c:1025: delayMs(1000);
	mov	dptr,#0x03E8
	lcall	_delayMs
	C$mdrip.c$1027$1$1 ==.
;	apps/mdrip/mdrip.c:1027: if(enable_wixfone==0) { 										// Don't do Bluetooth piece if there is a Fona attached instead of a HM1x
	jb	_enable_wixfone,00102$
	C$mdrip.c$1028$2$2 ==.
;	apps/mdrip/mdrip.c:1028: configBt();
	lcall	_configBt
	sjmp	00103$
00102$:
	C$mdrip.c$1030$2$3 ==.
;	apps/mdrip/mdrip.c:1030: enableFona();
	lcall	_enableFona
00103$:
	C$mdrip.c$1032$1$1 ==.
;	apps/mdrip/mdrip.c:1032: delayMs(1000);
	mov	dptr,#0x03E8
	lcall	_delayMs
	C$mdrip.c$1034$1$1 ==.
;	apps/mdrip/mdrip.c:1034: radioQueueInit();
	lcall	_radioQueueInit
	C$mdrip.c$1035$1$1 ==.
;	apps/mdrip/mdrip.c:1035: radioQueueAllowCrcErrors = 1;
	setb	_radioQueueAllowCrcErrors
	C$mdrip.c$1036$1$1 ==.
;	apps/mdrip/mdrip.c:1036: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$mdrip.c$1038$1$1 ==.
;	apps/mdrip/mdrip.c:1038: while(1) {
00110$:
	C$mdrip.c$1040$2$4 ==.
;	apps/mdrip/mdrip.c:1040: memset(&Pkt, 0, sizeof(Dexcom_packet));
	mov	r0,#_memset_PARM_2
	clr	a
	movx	@r0,a
	mov	r0,#_memset_PARM_3
	mov	a,#0x15
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	mov	dptr,#_main_Pkt_2_4
	mov	b,#0x00
	lcall	_memset
	C$mdrip.c$1041$2$4 ==.
;	apps/mdrip/mdrip.c:1041: boardService();
	lcall	_boardService
	C$mdrip.c$1044$2$4 ==.
;	apps/mdrip/mdrip.c:1044: get_packet(&Pkt);		// Always try to get a packet but now print even if none received so we can still update devicestatus, etc.
	mov	dptr,#_main_Pkt_2_4
	lcall	_get_packet
	C$mdrip.c$1045$2$4 ==.
;	apps/mdrip/mdrip.c:1045: print_packet(&Pkt);
	mov	dptr,#_main_Pkt_2_4
	lcall	_print_packet
	C$mdrip.c$1048$2$4 ==.
;	apps/mdrip/mdrip.c:1048: RFST = 4;
	mov	_RFST,#0x04
	C$mdrip.c$1049$2$4 ==.
;	apps/mdrip/mdrip.c:1049: delayMs(100);
	mov	dptr,#0x0064
	lcall	_delayMs
	C$mdrip.c$1051$2$4 ==.
;	apps/mdrip/mdrip.c:1051: radioMacSleep();
	lcall	_radioMacSleep
	C$mdrip.c$1052$2$4 ==.
;	apps/mdrip/mdrip.c:1052: if(usbPowerPresent()){
	lcall	_usbPowerPresent
	jnc	00105$
	C$mdrip.c$1053$3$5 ==.
;	apps/mdrip/mdrip.c:1053: sequential_missed_packets++;	// Why only increment this if usb connected?  It is incremented in get_packet also so a bit confusing
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
00105$:
	C$mdrip.c$1055$2$4 ==.
;	apps/mdrip/mdrip.c:1055: if(sequential_missed_packets > 0) {
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	jz	00107$
	C$mdrip.c$1056$3$6 ==.
;	apps/mdrip/mdrip.c:1056: int first_square = sequential_missed_packets * sequential_missed_packets * wake_earlier_for_next_miss;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	b,a
	movx	a,@r0
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	r0,#_wake_earlier_for_next_miss
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	C$mdrip.c$1057$3$6 ==.
;	apps/mdrip/mdrip.c:1057: int second_square = (sequential_missed_packets - 1) * (sequential_missed_packets - 1) * wake_earlier_for_next_miss;
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	r5,#0x00
	add	a,#0xFF
	mov	dpl,a
	mov	a,r5
	addc	a,#0xFF
	mov	dph,a
	mov	r0,#_sequential_missed_packets
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r0,#__mulint_PARM_2
	mov	a,r4
	add	a,#0xFF
	movx	@r0,a
	mov	a,r5
	addc	a,#0xFF
	inc	r0
	movx	@r0,a
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	mov	r0,#_wake_earlier_for_next_miss
	mov	r1,#__mulint_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	C$mdrip.c$1059$3$6 ==.
;	apps/mdrip/mdrip.c:1059: int sleep_time = (195 - first_square + second_square);
	mov	a,#0xC3
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,r4
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	C$mdrip.c$1060$3$6 ==.
;	apps/mdrip/mdrip.c:1060: goToSleep(sleep_time);
	lcall	_goToSleep
	sjmp	00108$
00107$:
	C$mdrip.c$1062$3$7 ==.
;	apps/mdrip/mdrip.c:1062: goToSleep(210); // Might need to be 200
	mov	dptr,#0x00D2
	lcall	_goToSleep
00108$:
	C$mdrip.c$1064$2$4 ==.
;	apps/mdrip/mdrip.c:1064: radioMacResume();
	lcall	_radioMacResume
	C$mdrip.c$1065$2$4 ==.
;	apps/mdrip/mdrip.c:1065: MCSM1 = 0;
	mov	dptr,#_MCSM1
	clr	a
	movx	@dptr,a
	C$mdrip.c$1066$2$4 ==.
;	apps/mdrip/mdrip.c:1066: radioMacStrobe();
	lcall	_radioMacStrobe
	ljmp	00110$
	C$mdrip.c$1068$1$1 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Fmdrip$apnString$0$0 == .
_apnString:
	.ascii "internet"
	.db 0x00
Fmdrip$wixFone_ID$0$0 == .
_wixFone_ID:
	.ascii "YourID"
	.db 0x00
Fmdrip$_str_0$0$0 == .
__str_0:
	.ascii "AT+CFUN=0"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_1$0$0 == .
__str_1:
	.ascii "ATE0&W"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_2$0$0 == .
__str_2:
	.ascii "AT+SLEDS=1,50,7500"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_3$0$0 == .
__str_3:
	.ascii "AT&W"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_4$0$0 == .
__str_4:
	.ascii "AT+SLEDS=2,500,2500"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_5$0$0 == .
__str_5:
	.ascii "AT+SLEDS=3,50,50"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_6$0$0 == .
__str_6:
	.ascii "AT"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_7$0$0 == .
__str_7:
	.ascii "AT+CFUN=1,1"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_8$0$0 == .
__str_8:
	.ascii "AT+CIPCLOSE"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_9$0$0 == .
__str_9:
	.ascii "AT+CGATT=0"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_10$0$0 == .
__str_10:
	.ascii "AT+CIPSHUT"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_11$0$0 == .
__str_11:
	.ascii "AT+CSTT="
	.db 0x00
Fmdrip$_str_12$0$0 == .
__str_12:
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_13$0$0 == .
__str_13:
	.ascii "AT+CGATT?"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_14$0$0 == .
__str_14:
	.ascii "AT+CIICR"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_15$0$0 == .
__str_15:
	.ascii "AT+CIFSR"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_16$0$0 == .
__str_16:
	.ascii "AT+CIPSTART=tcp,"
	.db 0x00
Fmdrip$_str_17$0$0 == .
__str_17:
	.ascii "AT+CIPSEND"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_18$0$0 == .
__str_18:
	.ascii "ATE0"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_19$0$0 == .
__str_19:
	.ascii "AT+CBC"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_20$0$0 == .
__str_20:
	.ascii "CBC> "
	.db 0x00
Fmdrip$_str_21$0$0 == .
__str_21:
	.ascii "AT+CDNSCFG=8.8.8.8"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_22$0$0 == .
__str_22:
	.ascii "AT+SAPBR=0,1"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_23$0$0 == .
__str_23:
	.ascii "AT+SAPBR=3,1,"
	.db 0x22
	.ascii "Contype"
	.db 0x22
	.ascii ",GPRS"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_24$0$0 == .
__str_24:
	.ascii "AT+SAPBR=3,1,"
	.db 0x22
	.ascii "APN"
	.db 0x22
	.ascii ","
	.db 0x22
	.ascii "internet"
	.db 0x22
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_25$0$0 == .
__str_25:
	.ascii "AT+SAPBR=1,1"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_26$0$0 == .
__str_26:
	.ascii "AT+CIPGSMLOC=1,1"
	.db 0x0D
	.db 0x0A
	.db 0x00
Fmdrip$_str_27$0$0 == .
__str_27:
	.ascii "999"
	.db 0x00
Fmdrip$_str_29$0$0 == .
__str_29:
	.ascii "%s %hhu %s %lu %lu %d %d %hhu %s"
	.db 0x00
Fmdrip$_str_30$0$0 == .
__str_30:
	.ascii "xDrip2g(AES): "
	.db 0x00
Fmdrip$_str_31$0$0 == .
__str_31:
	.ascii "%02x"
	.db 0x00
Fmdrip$_str_32$0$0 == .
__str_32:
	.ascii " "
	.db 0x00
Fmdrip$_str_33$0$0 == .
__str_33:
	.db 0x0D
	.db 0x0A
	.db 0x1A
	.db 0x00
Fmdrip$_str_34$0$0 == .
__str_34:
	.db 0x1A
	.db 0x00
Fmdrip$_str_36$0$0 == .
__str_36:
	.ascii "AT+NAMExDrip"
	.db 0x00
Fmdrip$_str_37$0$0 == .
__str_37:
	.ascii "6F5YP"
	.db 0x00
Fmdrip$_str_38$0$0 == .
__str_38:
	.ascii "REPLACEME.DuckDNS.org,17611"
	.db 0x00
	.area XINIT   (CODE)
Fmdrip$__xinit_transmitter_id$0$0 == .
__xinit__transmitter_id:
	.ascii "6F5YP"
	.db 0x00
Fmdrip$__xinit_dexie_host_address$0$0 == .
__xinit__dexie_host_address:
	.ascii "REPLACEME.DuckDNS.org,17611"
	.db 0x00
Fmdrip$__xinit_start_channel$0$0 == .
__xinit__start_channel:
	.db #0x00	;  0
Fmdrip$__xinit_defaultfOffset$0$0 == .
__xinit__defaultfOffset:
	.db #0xCE	; -50
	.db #0xD5	; -43
	.db #0xE6	; -26
	.db #0xE5	; -27
Fmdrip$__xinit_PM2_BUF$0$0 == .
__xinit__PM2_BUF:
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x04	; 4
Fmdrip$__xinit_dmaDesc$0$0 == .
__xinit__dmaDesc:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xDF	; 223
	.db #0xBE	; 190
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x20	; 32
	.db #0x42	; 66	'B'
Fmdrip$__xinit_AT_TIMEOUT$0$0 == .
__xinit__AT_TIMEOUT:
	.db #0x14	; 20
Fmdrip$__xinit_defaultATWait$0$0 == .
__xinit__defaultATWait:
	.byte #0xB8,#0x0B,#0x00,#0x00	; 3000
Fmdrip$__xinit_key$0$0 == .
__xinit__key:
	.db #0x4D	; 77	'M'
	.db #0x79	; 121	'y'
	.db #0x6D	; 109	'm'
	.db #0x44	; 68	'D'
	.db #0x72	; 114	'r'
	.db #0x7C	; 124
	.db #0x50	; 80	'P'
	.db #0x26	; 38
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
	.db #0x72	; 114	'r'
	.db #0x40	; 64
	.db #0x5B	; 91
	.db #0x4B	; 75	'K'
	.db #0x21	; 33
Fmdrip$__xinit_SrcNameTable$0$0 == .
__xinit__SrcNameTable:
	.db #0x30	;  48	'0'
	.db #0x31	;  49	'1'
	.db #0x32	;  50	'2'
	.db #0x33	;  51	'3'
	.db #0x34	;  52	'4'
	.db #0x35	;  53	'5'
	.db #0x36	;  54	'6'
	.db #0x37	;  55	'7'
	.db #0x38	;  56	'8'
	.db #0x39	;  57	'9'
	.db #0x41	;  65	'A'
	.db #0x42	;  66	'B'
	.db #0x43	;  67	'C'
	.db #0x44	;  68	'D'
	.db #0x45	;  69	'E'
	.db #0x46	;  70	'F'
	.db #0x47	;  71	'G'
	.db #0x48	;  72	'H'
	.db #0x4A	;  74	'J'
	.db #0x4B	;  75	'K'
	.db #0x4C	;  76	'L'
	.db #0x4D	;  77	'M'
	.db #0x4E	;  78	'N'
	.db #0x50	;  80	'P'
	.db #0x51	;  81	'Q'
	.db #0x52	;  82	'R'
	.db #0x53	;  83	'S'
	.db #0x54	;  84	'T'
	.db #0x55	;  85	'U'
	.db #0x57	;  87	'W'
	.db #0x58	;  88	'X'
	.db #0x59	;  89	'Y'
	.area CABS    (ABS,CODE)
