;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.7.0 #4818 (Jan 18 2008)
; This file generated Tue Jul 22 17:50:40 2008
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f2455
	__config 0x300000, 0xf0
	__config 0x300001, 0x32
	__config 0x300002, 0xef
	__config 0x300003, 0xfe
	__config 0x300005, 0xf8
	__config 0x300006, 0x9b
	__config 0x300008, 0xff
	__config 0x300009, 0xff
	__config 0x30000a, 0xff
	__config 0x30000b, 0xff
	__config 0x30000c, 0xff
	__config 0x30000d, 0xff

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _ProcessSetupToken
	global _StandardRequests
	global _ClassRequests
	global _VendorRequests
	global _ProcessInToken
	global _ProcessOutToken
	global _SendDescriptorPacket
	global _BD0O
	global _BD0I
	global _BD1O
	global _BD1I
	global _BD2O
	global _BD2I
	global _BD3O
	global _BD3I
	global _BD4O
	global _BD4I
	global _BD5O
	global _BD5I
	global _BD6O
	global _BD6I
	global _BD7O
	global _BD7I
	global _BD8O
	global _BD8I
	global _BD9O
	global _BD9I
	global _BD10O
	global _BD10I
	global _BD11O
	global _BD11I
	global _BD12O
	global _BD12I
	global _BD13O
	global _BD13I
	global _BD14O
	global _BD14I
	global _BD15O
	global _BD15I
	global _EP0_OUT_buffer
	global _EP0_IN_buffer
	global _EP1_OUT_buffer
	global _EP1_IN_buffer
	global _EP2_OUT_buffer
	global _EP2_IN_buffer
	global _EP3_OUT_buffer
	global _EP3_IN_buffer
	global _EP4_OUT_buffer
	global _EP4_IN_buffer
	global _EP5_OUT_buffer
	global _EP5_IN_buffer
	global _EP6_OUT_buffer
	global _EP6_IN_buffer
	global _EP7_OUT_buffer
	global _EP7_IN_buffer
	global _EP8_OUT_buffer
	global _EP8_IN_buffer
	global _EP9_OUT_buffer
	global _EP9_IN_buffer
	global _EP10_OUT_buffer
	global _EP10_IN_buffer
	global _EP11_OUT_buffer
	global _EP11_IN_buffer
	global _EP12_OUT_buffer
	global _EP12_IN_buffer
	global _EP13_OUT_buffer
	global _EP13_IN_buffer
	global _EP14_OUT_buffer
	global _EP14_IN_buffer
	global _EP15_OUT_buffer
	global _EP15_IN_buffer
	global _USB_buffer_desc
	global _USB_buffer_data
	global _USB_error_flags
	global _USB_curr_config
	global _USB_device_status
	global _USB_dev_req
	global _USB_address_pending
	global _USB_desc_ptr
	global _USB_bytes_left
	global _USB_packet_length
	global _USB_USTAT
	global _USB_USWSTAT
	global _InitUSB
	global _ServiceUSB
	global _main
	global _Device
	global _Configuration1
	global _String0
	global _String1
	global _String2

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern __gptrget1
	extern __gptrput1
	extern _SPPDATAbits
	extern _SPPCFGbits
	extern _SPPEPSbits
	extern _SPPCONbits
	extern _UFRMLbits
	extern _UFRMHbits
	extern _UIRbits
	extern _UIEbits
	extern _UEIRbits
	extern _UEIEbits
	extern _USTATbits
	extern _UCONbits
	extern _UADDRbits
	extern _UCFGbits
	extern _UEP0bits
	extern _UEP1bits
	extern _UEP2bits
	extern _UEP3bits
	extern _UEP4bits
	extern _UEP5bits
	extern _UEP6bits
	extern _UEP7bits
	extern _UEP8bits
	extern _UEP9bits
	extern _UEP10bits
	extern _UEP11bits
	extern _UEP12bits
	extern _UEP13bits
	extern _UEP14bits
	extern _UEP15bits
	extern _PORTAbits
	extern _PORTBbits
	extern _PORTCbits
	extern _PORTDbits
	extern _PORTEbits
	extern _LATAbits
	extern _LATBbits
	extern _LATCbits
	extern _LATDbits
	extern _LATEbits
	extern _TRISAbits
	extern _TRISBbits
	extern _TRISCbits
	extern _TRISDbits
	extern _TRISEbits
	extern _OSCTUNEbits
	extern _PIE1bits
	extern _PIR1bits
	extern _IPR1bits
	extern _PIE2bits
	extern _PIR2bits
	extern _IPR2bits
	extern _EECON1bits
	extern _RCSTAbits
	extern _TXSTAbits
	extern _T3CONbits
	extern _CMCONbits
	extern _CVRCONbits
	extern _ECCP1ASbits
	extern _ECCP1DELbits
	extern _BAUDCONbits
	extern _CCP2CONbits
	extern _CCP1CONbits
	extern _ADCON2bits
	extern _ADCON1bits
	extern _ADCON0bits
	extern _SSPCON2bits
	extern _SSPCON1bits
	extern _SSPSTATbits
	extern _T2CONbits
	extern _T1CONbits
	extern _RCONbits
	extern _WDTCONbits
	extern _HLVDCONbits
	extern _OSCCONbits
	extern _T0CONbits
	extern _STATUSbits
	extern _FSR2Hbits
	extern _BSRbits
	extern _FSR1Hbits
	extern _FSR0Hbits
	extern _INTCON3bits
	extern _INTCON2bits
	extern _INTCONbits
	extern _TBLPTRUbits
	extern _PCLATHbits
	extern _PCLATUbits
	extern _STKPTRbits
	extern _TOSUbits
	extern _SPPDATA
	extern _SPPCFG
	extern _SPPEPS
	extern _SPPCON
	extern _UFRML
	extern _UFRMH
	extern _UIR
	extern _UIE
	extern _UEIR
	extern _UEIE
	extern _USTAT
	extern _UCON
	extern _UADDR
	extern _UCFG
	extern _UEP0
	extern _UEP1
	extern _UEP2
	extern _UEP3
	extern _UEP4
	extern _UEP5
	extern _UEP6
	extern _UEP7
	extern _UEP8
	extern _UEP9
	extern _UEP10
	extern _UEP11
	extern _UEP12
	extern _UEP13
	extern _UEP14
	extern _UEP15
	extern _PORTA
	extern _PORTB
	extern _PORTC
	extern _PORTD
	extern _PORTE
	extern _LATA
	extern _LATB
	extern _LATC
	extern _LATD
	extern _LATE
	extern _TRISA
	extern _TRISB
	extern _TRISC
	extern _TRISD
	extern _TRISE
	extern _OSCTUNE
	extern _PIE1
	extern _PIR1
	extern _IPR1
	extern _PIE2
	extern _PIR2
	extern _IPR2
	extern _EECON1
	extern _EECON2
	extern _EEDATA
	extern _EEADR
	extern _RCSTA
	extern _TXSTA
	extern _TXREG
	extern _RCREG
	extern _SPBRG
	extern _SPBRGH
	extern _T3CON
	extern _TMR3L
	extern _TMR3H
	extern _CMCON
	extern _CVRCON
	extern _ECCP1AS
	extern _ECCP1DEL
	extern _BAUDCON
	extern _CCP2CON
	extern _CCPR2L
	extern _CCPR2H
	extern _CCP1CON
	extern _CCPR1L
	extern _CCPR1H
	extern _ADCON2
	extern _ADCON1
	extern _ADCON0
	extern _ADRESL
	extern _ADRESH
	extern _SSPCON2
	extern _SSPCON1
	extern _SSPSTAT
	extern _SSPADD
	extern _SSPBUF
	extern _T2CON
	extern _PR2
	extern _TMR2
	extern _T1CON
	extern _TMR1L
	extern _TMR1H
	extern _RCON
	extern _WDTCON
	extern _HLVDCON
	extern _OSCCON
	extern _T0CON
	extern _TMR0L
	extern _TMR0H
	extern _STATUS
	extern _FSR2L
	extern _FSR2H
	extern _PLUSW2
	extern _PREINC2
	extern _POSTDEC2
	extern _POSTINC2
	extern _INDF2
	extern _BSR
	extern _FSR1L
	extern _FSR1H
	extern _PLUSW1
	extern _PREINC1
	extern _POSTDEC1
	extern _POSTINC1
	extern _INDF1
	extern _WREG
	extern _FSR0L
	extern _FSR0H
	extern _PLUSW0
	extern _PREINC0
	extern _POSTDEC0
	extern _POSTINC0
	extern _INDF0
	extern _INTCON3
	extern _INTCON2
	extern _INTCON
	extern _PRODL
	extern _PRODH
	extern _TABLAT
	extern _TBLPTRL
	extern _TBLPTRH
	extern _TBLPTRU
	extern _PCL
	extern _PCLATH
	extern _PCLATU
	extern _STKPTR
	extern _TOSL
	extern _TOSH
	extern _TOSU
	extern __mulint
;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
PCL	equ	0xff9
PCLATH	equ	0xffa
PCLATU	equ	0xffb
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC0	equ	0xfee
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1

udata_lab1_0	udata
_USB_curr_config	res	1

udata_lab1_1	udata
_USB_USWSTAT	res	1

udata_lab1_2	udata
_USB_device_status	res	1

udata_lab1_3	udata
_USB_dev_req	res	1

udata_lab1_4	udata
_USB_USTAT	res	1

udata_lab1_5	udata
_USB_error_flags	res	1

udata_lab1_6	udata
_USB_buffer_desc	res	4

udata_lab1_7	udata
_USB_buffer_data	res	8

udata_lab1_8	udata
_USB_address_pending	res	1

udata_lab1_9	udata
_USB_desc_ptr	res	3

udata_lab1_10	udata
_USB_bytes_left	res	1

udata_lab1_11	udata
_USB_packet_length	res	1


ustat_lab1_00	udata	0X0400
_BD0O	res	4
_BD0I	res	4
_BD1O	res	4
_BD1I	res	4
_BD2O	res	4
_BD2I	res	4
_BD3O	res	4
_BD3I	res	4
_BD4O	res	4
_BD4I	res	4
_BD5O	res	4
_BD5I	res	4
_BD6O	res	4
_BD6I	res	4
_BD7O	res	4
_BD7I	res	4
_BD8O	res	4
_BD8I	res	4
_BD9O	res	4
_BD9I	res	4
_BD10O	res	4
_BD10I	res	4
_BD11O	res	4
_BD11I	res	4
_BD12O	res	4
_BD12I	res	4
_BD13O	res	4
_BD13I	res	4
_BD14O	res	4
_BD14I	res	4
_BD15O	res	4
_BD15I	res	4
_EP0_OUT_buffer	res	8
_EP0_IN_buffer	res	8
_EP1_OUT_buffer	res	8
_EP1_IN_buffer	res	8
_EP2_OUT_buffer	res	8
_EP2_IN_buffer	res	8
_EP3_OUT_buffer	res	8
_EP3_IN_buffer	res	8
_EP4_OUT_buffer	res	8
_EP4_IN_buffer	res	8
_EP5_OUT_buffer	res	8
_EP5_IN_buffer	res	8
_EP6_OUT_buffer	res	8
_EP6_IN_buffer	res	8
_EP7_OUT_buffer	res	8
_EP7_IN_buffer	res	8
_EP8_OUT_buffer	res	8
_EP8_IN_buffer	res	8
_EP9_OUT_buffer	res	8
_EP9_IN_buffer	res	8
_EP10_OUT_buffer	res	8
_EP10_IN_buffer	res	8
_EP11_OUT_buffer	res	8
_EP11_IN_buffer	res	8
_EP12_OUT_buffer	res	8
_EP12_IN_buffer	res	8
_EP13_OUT_buffer	res	8
_EP13_IN_buffer	res	8
_EP14_OUT_buffer	res	8
_EP14_IN_buffer	res	8
_EP15_OUT_buffer	res	8
_EP15_IN_buffer	res	8

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_lab1__main	code
_main:
;	.line	722; lab1.c	
	CLRF	_PORTA
;	.line	723; lab1.c	
	MOVLW	0x0f
	MOVWF	_ADCON1
;	.line	724; lab1.c	
	CLRF	_TRISA
;	.line	728; lab1.c	}
	CALL	_InitUSB
_00630_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	729; lab1.c	
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00642_DS_
	GOTO	_00634_DS_
_00642_DS_:
;	.line	730; lab1.c	while (1) {
	CALL	_ServiceUSB
	GOTO	_00630_DS_
_00634_DS_:
;	.line	734; lab1.c	}
	CALL	_ServiceUSB
	GOTO	_00634_DS_
	RETURN	

; ; Starting pCode block
S_lab1__SendDescriptorPacket	code
_SendDescriptorPacket:
;	.line	703; lab1.c	if (USB_bytes_left<MAX_PACKET_SIZE) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
;	.line	706; lab1.c	USB_bytes_left = 0x00;
	MOVLW	0x08
	BANKSEL	_USB_bytes_left
	SUBWF	_USB_bytes_left, W, B
	BTFSC	STATUS, 0
	GOTO	_00615_DS_
;	.line	707; lab1.c	} else {
	MOVLW	0xff
	BANKSEL	_USB_dev_req
	MOVWF	_USB_dev_req, B
;	.line	708; lab1.c	USB_packet_length = MAX_PACKET_SIZE;
	MOVFF	_USB_bytes_left, _USB_packet_length
	BANKSEL	_USB_bytes_left
;	.line	709; lab1.c	USB_bytes_left -= MAX_PACKET_SIZE;
	CLRF	_USB_bytes_left, B
	GOTO	_00625_DS_
_00615_DS_:
;	.line	711; lab1.c	for (n = 0; n<USB_packet_length; n++) {
	MOVLW	0x08
	BANKSEL	_USB_packet_length
	MOVWF	_USB_packet_length, B
;	.line	712; lab1.c	BD0I.address[n] = *USB_desc_ptr++;
	MOVLW	0xf8
	BANKSEL	_USB_bytes_left
	ADDWF	_USB_bytes_left, F, B
_00625_DS_:
;	.line	714; lab1.c	BD0I.bytecount = USB_packet_length;
	CLRF	r0x00
_00617_DS_:
	BANKSEL	_USB_packet_length
	MOVF	_USB_packet_length, W, B
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00620_DS_
;	.line	715; lab1.c	BD0I.status = ((BD0I.status^0x40)&0x40)|0x88; // toggle the DATA01 bit, clear the PIDs bits, and set the UOWN and DTS bits
	MOVF	r0x00, W
	BANKSEL	(_BD0I + 2)
	ADDWF	(_BD0I + 2), W, B
	MOVWF	r0x01
	CLRF	WREG
	BANKSEL	(_BD0I + 3)
	ADDWFC	(_BD0I + 3), W, B
	MOVWF	r0x02
	MOVFF	_USB_desc_ptr, r0x03
	MOVFF	(_USB_desc_ptr + 1), r0x04
	MOVFF	(_USB_desc_ptr + 2), r0x05
	MOVFF	r0x03, TBLPTRL
	MOVFF	r0x04, TBLPTRH
	MOVFF	r0x05, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x03
	BANKSEL	_USB_desc_ptr
	INCF	_USB_desc_ptr, F, B
	BTFSS	STATUS, 0
	BRA	_10630_DS_
	BANKSEL	(_USB_desc_ptr + 1)
	INCF	(_USB_desc_ptr + 1), F, B
_10630_DS_:
	BTFSS	STATUS, 0
	BRA	_20631_DS_
	BANKSEL	(_USB_desc_ptr + 2)
	INCF	(_USB_desc_ptr + 2), F, B
_20631_DS_:
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x03, INDF0
;	.line	714; lab1.c	BD0I.bytecount = USB_packet_length;
	INCF	r0x00, F
	GOTO	_00617_DS_
_00620_DS_:
	BANKSEL	_USB_packet_length
;	.line	717; lab1.c	
	MOVF	_USB_packet_length, W, B
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	718; lab1.c	void main(void) {
	MOVLW	0x40
	BANKSEL	_BD0I
	XORWF	_BD0I, W, B
	MOVWF	r0x00
	MOVLW	0x40
	ANDWF	r0x00, F
	MOVLW	0x88
	IORWF	r0x00, F
	MOVF	r0x00, W
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__ProcessOutToken	code
_ProcessOutToken:
;	.line	657; lab1.c	BD0O.bytecount = MAX_PACKET_SIZE;
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
;	.line	658; lab1.c	BD0O.status = 0x88;
	MOVLW	0x78
	BANKSEL	_USB_USTAT
	ANDWF	_USB_USTAT, W, B
	MOVWF	r0x00
	MOVF	r0x00, W
	BNZ	_00582_DS_
	GOTO	_00546_DS_
_00582_DS_:
	MOVF	r0x00, W
	XORLW	0x08
	BNZ	_00584_DS_
	GOTO	_00547_DS_
_00584_DS_:
	MOVF	r0x00, W
	XORLW	0x10
	BNZ	_00586_DS_
	GOTO	_00563_DS_
_00586_DS_:
	MOVF	r0x00, W
	XORLW	0x18
	BNZ	_00588_DS_
	GOTO	_00563_DS_
_00588_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BNZ	_00590_DS_
	GOTO	_00563_DS_
_00590_DS_:
	MOVF	r0x00, W
	XORLW	0x28
	BNZ	_00592_DS_
	GOTO	_00563_DS_
_00592_DS_:
	MOVF	r0x00, W
	XORLW	0x30
	BNZ	_00594_DS_
	GOTO	_00563_DS_
_00594_DS_:
	MOVF	r0x00, W
	XORLW	0x38
	BNZ	_00596_DS_
	GOTO	_00563_DS_
_00596_DS_:
	MOVF	r0x00, W
	XORLW	0x40
	BNZ	_00598_DS_
	GOTO	_00563_DS_
_00598_DS_:
	MOVF	r0x00, W
	XORLW	0x48
	BNZ	_00600_DS_
	GOTO	_00563_DS_
_00600_DS_:
	MOVF	r0x00, W
	XORLW	0x50
	BNZ	_00602_DS_
	GOTO	_00563_DS_
_00602_DS_:
	MOVF	r0x00, W
	XORLW	0x58
	BNZ	_00604_DS_
	GOTO	_00563_DS_
_00604_DS_:
	MOVF	r0x00, W
	XORLW	0x60
	BNZ	_00606_DS_
	GOTO	_00563_DS_
_00606_DS_:
	MOVF	r0x00, W
	XORLW	0x68
	BNZ	_00608_DS_
	GOTO	_00563_DS_
_00608_DS_:
	MOVF	r0x00, W
	XORLW	0x70
	BNZ	_00610_DS_
_00610_DS_:
	GOTO	_00563_DS_
_00546_DS_:
;	.line	660; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVLW	0x08
	BANKSEL	(_BD0O + 1)
	MOVWF	(_BD0O + 1), B
;	.line	661; lab1.c	break;
	MOVLW	0x88
	BANKSEL	_BD0O
	MOVWF	_BD0O, B
	BANKSEL	(_BD0I + 1)
;	.line	662; lab1.c	case EP1:
	CLRF	(_BD0I + 1), B
;	.line	663; lab1.c	PORTB = BD1O.address[0];
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	664; lab1.c	BD1O.bytecount = MAX_PACKET_SIZE;
	GOTO	_00563_DS_
_00547_DS_:
;	.line	666; lab1.c	BD1I.bytecount = 0x00;		// set EP0 IN byte count to 0
	MOVFF	(_BD1O + 2), _PORTB
;	.line	667; lab1.c	BD1I.status = 0xC8;	
	MOVLW	0x08
	BANKSEL	(_BD1O + 1)
	MOVWF	(_BD1O + 1), B
;	.line	668; lab1.c	break;
	MOVLW	0x88
	BANKSEL	_BD1O
	MOVWF	_BD1O, B
	BANKSEL	(_BD1I + 1)
;	.line	669; lab1.c	case EP2:
	CLRF	(_BD1I + 1), B
;	.line	670; lab1.c	break;
	MOVLW	0xc8
	BANKSEL	_BD1I
	MOVWF	_BD1I, B
_00563_DS_:
;	.line	700; lab1.c	void SendDescriptorPacket(void) {
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__ProcessInToken	code
_ProcessInToken:
;	.line	603; lab1.c	switch (USB_dev_req) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
;	.line	604; lab1.c	case SET_ADDRESS:
	MOVLW	0x78
	BANKSEL	_USB_USTAT
	ANDWF	_USB_USTAT, W, B
	MOVWF	r0x00
	MOVF	r0x00, W
	BNZ	_00507_DS_
	GOTO	_00462_DS_
_00507_DS_:
	MOVF	r0x00, W
	XORLW	0x08
	BNZ	_00509_DS_
	GOTO	_00469_DS_
_00509_DS_:
	MOVF	r0x00, W
	XORLW	0x10
	BNZ	_00511_DS_
	GOTO	_00485_DS_
_00511_DS_:
	MOVF	r0x00, W
	XORLW	0x18
	BNZ	_00513_DS_
	GOTO	_00485_DS_
_00513_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BNZ	_00515_DS_
	GOTO	_00485_DS_
_00515_DS_:
	MOVF	r0x00, W
	XORLW	0x28
	BNZ	_00517_DS_
	GOTO	_00485_DS_
_00517_DS_:
	MOVF	r0x00, W
	XORLW	0x30
	BNZ	_00519_DS_
	GOTO	_00485_DS_
_00519_DS_:
	MOVF	r0x00, W
	XORLW	0x38
	BNZ	_00521_DS_
	GOTO	_00485_DS_
_00521_DS_:
	MOVF	r0x00, W
	XORLW	0x40
	BNZ	_00523_DS_
	GOTO	_00485_DS_
_00523_DS_:
	MOVF	r0x00, W
	XORLW	0x48
	BNZ	_00525_DS_
	GOTO	_00485_DS_
_00525_DS_:
	MOVF	r0x00, W
	XORLW	0x50
	BNZ	_00527_DS_
	GOTO	_00485_DS_
_00527_DS_:
	MOVF	r0x00, W
	XORLW	0x58
	BNZ	_00529_DS_
	GOTO	_00485_DS_
_00529_DS_:
	MOVF	r0x00, W
	XORLW	0x60
	BNZ	_00531_DS_
	GOTO	_00485_DS_
_00531_DS_:
	MOVF	r0x00, W
	XORLW	0x68
	BNZ	_00533_DS_
	GOTO	_00485_DS_
_00533_DS_:
	MOVF	r0x00, W
	XORLW	0x70
	BNZ	_00535_DS_
_00535_DS_:
	GOTO	_00485_DS_
_00462_DS_:
	BANKSEL	_USB_dev_req
;	.line	606; lab1.c	case 0:
	MOVF	_USB_dev_req, W, B
	XORLW	0x05
	BNZ	_00537_DS_
	GOTO	_00463_DS_
_00537_DS_:
	BANKSEL	_USB_dev_req
	MOVF	_USB_dev_req, W, B
	XORLW	0x06
	BNZ	_00539_DS_
	GOTO	_00467_DS_
_00539_DS_:
	GOTO	_00485_DS_
_00463_DS_:
;	.line	608; lab1.c	break;
	MOVFF	_USB_address_pending, _UADDR
	BANKSEL	_USB_address_pending
	MOVF	_USB_address_pending, W, B
	BNZ	_00540_DS_
	GOTO	_00541_DS_
_00540_DS_:
	GOTO	_00465_DS_
_00541_DS_:
;	.line	610; lab1.c	USB_USWSTAT = ADDRESS_STATE;
	MOVLW	0x01
	BANKSEL	_USB_USWSTAT
	MOVWF	_USB_USWSTAT, B
;	.line	611; lab1.c	}
	GOTO	_00485_DS_
_00465_DS_:
;	.line	613; lab1.c	case GET_DESCRIPTOR:
	MOVLW	0x02
	BANKSEL	_USB_USWSTAT
	MOVWF	_USB_USWSTAT, B
;	.line	615; lab1.c	break;
	GOTO	_00485_DS_
_00467_DS_:
;	.line	617; lab1.c	break;
	CALL	_SendDescriptorPacket
;	.line	620; lab1.c	BD1I.bytecount = 0x01;		// set EP0 IN byte count to 0
	GOTO	_00485_DS_
_00469_DS_:
;	.line	622; lab1.c	break;
	MOVFF	(_BD1I + 2), r0x00
	MOVFF	(_BD1I + 3), r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	623; lab1.c	case EP2:
	MOVLW	0x01
	BANKSEL	(_BD1I + 1)
	MOVWF	(_BD1I + 1), B
;	.line	624; lab1.c	break;
	MOVLW	0xc8
	BANKSEL	_BD1I
	MOVWF	_BD1I, B
_00485_DS_:
;	.line	654; lab1.c	void ProcessOutToken(void) {
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__VendorRequests	code
_VendorRequests:
;	.line	586; lab1.c	PORTAbits.RA0 = 1;		// set RA0 high
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
;	.line	587; lab1.c	BD0I.bytecount = 0x00;		// set EP0 IN byte count to 0
	MOVFF	(_USB_buffer_data + 1), r0x00
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00456_DS_
	GOTO	_00447_DS_
_00456_DS_:
	MOVF	r0x00, W
	XORLW	0x02
	BNZ	_00458_DS_
	GOTO	_00448_DS_
_00458_DS_:
	GOTO	_00449_DS_
_00447_DS_:
;	.line	589; lab1.c	break;
	BSF	_PORTAbits, 0
	BANKSEL	(_BD0I + 1)
;	.line	590; lab1.c	case CLR_RA0:
	CLRF	(_BD0I + 1), B
;	.line	591; lab1.c	PORTAbits.RA0 = 0;		// set RA0 low
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	592; lab1.c	BD0I.bytecount = 0x00;		// set EP0 IN byte count to 0
	GOTO	_00451_DS_
_00448_DS_:
;	.line	594; lab1.c	break;
	BCF	_PORTAbits, 0
	BANKSEL	(_BD0I + 1)
;	.line	595; lab1.c	default:
	CLRF	(_BD0I + 1), B
;	.line	596; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	597; lab1.c	}
	GOTO	_00451_DS_
_00449_DS_:
	BANKSEL	_USB_error_flags
;	.line	599; lab1.c	
	BSF	_USB_error_flags, 0, B
_00451_DS_:
;	.line	600; lab1.c	void ProcessInToken(void) {
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__ClassRequests	code
_ClassRequests:
;	.line	579; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	BANKSEL	_USB_error_flags
;	.line	582; lab1.c	
	BSF	_USB_error_flags, 0, B
;	.line	583; lab1.c	void VendorRequests(void) {
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__StandardRequests	code
_StandardRequests:
;	.line	318; lab1.c	BUFDESC *buf_desc_ptr;
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
;	.line	323; lab1.c	case RECIPIENT_DEVICE:
	MOVFF	(_USB_buffer_data + 1), r0x00
	MOVLW	0x0d
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00314_DS_
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	CLRF	r0x0b
	RLCF	r0x00, W
	RLCF	r0x0b, F
	RLCF	WREG, W
	RLCF	r0x0b, F
	ANDLW	0xfc
	MOVWF	r0x0a
	MOVLW	UPPER(_00378_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00378_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00378_DS_)
	ADDWF	r0x0a, F
	MOVF	r0x0b, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x0a, W
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVWF	PCL
_00378_DS_:
	GOTO	_00202_DS_
	GOTO	_00225_DS_
	GOTO	_00314_DS_
	GOTO	_00225_DS_
	GOTO	_00314_DS_
	GOTO	_00256_DS_
	GOTO	_00260_DS_
	GOTO	_00314_DS_
	GOTO	_00287_DS_
	GOTO	_00288_DS_
	GOTO	_00295_DS_
	GOTO	_00302_DS_
	GOTO	_00314_DS_
_00202_DS_:
;	.line	325; lab1.c	BD0I.address[1] = 0x00;
	MOVLW	0x1f
	BANKSEL	_USB_buffer_data
	ANDWF	_USB_buffer_data, W, B
	MOVWF	r0x01
	MOVLW	0x03
	SUBWF	r0x01, W
	BTFSC	STATUS, 0
	GOTO	_00222_DS_
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	CLRF	r0x0b
	RLCF	r0x01, W
	RLCF	r0x0b, F
	RLCF	WREG, W
	RLCF	r0x0b, F
	ANDLW	0xfc
	MOVWF	r0x0a
	MOVLW	UPPER(_00381_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00381_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00381_DS_)
	ADDWF	r0x0a, F
	MOVF	r0x0b, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x0a, W
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVWF	PCL
_00381_DS_:
	GOTO	_00203_DS_
	GOTO	_00204_DS_
	GOTO	_00211_DS_
_00203_DS_:
;	.line	327; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVFF	(_BD0I + 2), r0x01
	MOVFF	(_BD0I + 3), r0x02
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	_USB_device_status, INDF0
;	.line	328; lab1.c	break;
	MOVLW	0x01
	BANKSEL	(_BD0I + 2)
	ADDWF	(_BD0I + 2), W, B
	MOVWF	r0x01
	MOVLW	0x00
	BANKSEL	(_BD0I + 3)
	ADDWFC	(_BD0I + 3), W, B
	MOVWF	r0x02
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	329; lab1.c	case RECIPIENT_INTERFACE:
	MOVLW	0x02
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	330; lab1.c	switch (USB_USWSTAT) {
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	331; lab1.c	case ADDRESS_STATE:
	GOTO	_00316_DS_
_00204_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	333; lab1.c	break;
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x02
	BNZ	_00383_DS_
	GOTO	_00205_DS_
_00383_DS_:
	BANKSEL	_USB_USWSTAT
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00385_DS_
	GOTO	_00206_DS_
_00385_DS_:
	GOTO	_00316_DS_
_00205_DS_:
	BANKSEL	_USB_error_flags
;	.line	335; lab1.c	if (USB_buffer_data[wIndex]<NUM_INTERFACES) {
	BSF	_USB_error_flags, 0, B
;	.line	336; lab1.c	BD0I.address[0] = 0x00;
	GOTO	_00316_DS_
_00206_DS_:
;	.line	338; lab1.c	BD0I.bytecount = 0x02;
	MOVLW	0x01
	BANKSEL	(_USB_buffer_data + 4)
	SUBWF	(_USB_buffer_data + 4), W, B
	BTFSC	STATUS, 0
	GOTO	_00208_DS_
;	.line	339; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVFF	(_BD0I + 2), r0x01
	MOVFF	(_BD0I + 3), r0x02
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	340; lab1.c	} else {
	MOVLW	0x01
	BANKSEL	(_BD0I + 2)
	ADDWF	(_BD0I + 2), W, B
	MOVWF	r0x01
	MOVLW	0x00
	BANKSEL	(_BD0I + 3)
	ADDWFC	(_BD0I + 3), W, B
	MOVWF	r0x02
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	341; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0x02
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	342; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00208_DS_:
	BANKSEL	_USB_error_flags
;	.line	344; lab1.c	break;
	BSF	_USB_error_flags, 0, B
;	.line	347; lab1.c	case ADDRESS_STATE:
	GOTO	_00316_DS_
_00211_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	349; lab1.c	BD0I.address[0] = (((USB_buffer_data[wIndex]&0x80) ? BD0I.status:BD0O.status)&0x04)>>2;	// return the BSTALL bit of EP0 IN or OUT, whichever was requested
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x02
	BNZ	_00388_DS_
	GOTO	_00212_DS_
_00388_DS_:
	BANKSEL	_USB_USWSTAT
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00390_DS_
	GOTO	_00216_DS_
_00390_DS_:
	GOTO	_00220_DS_
_00212_DS_:
;	.line	351; lab1.c	BD0I.bytecount = 0x02;
	MOVFF	(_USB_buffer_data + 4), r0x01
	MOVF	r0x01, W
	ANDLW	0x0f
	BZ	_00391_DS_
	BRA	_00214_DS_
_00391_DS_:
;	.line	352; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVFF	(_BD0I + 2), r0x02
	MOVFF	(_BD0I + 3), r0x03
	BTFSS	r0x01, 7
	GOTO	_00318_DS_
	MOVFF	_BD0I, r0x01
	GOTO	_00319_DS_
_00318_DS_:
	MOVFF	_BD0O, r0x01
_00319_DS_:
	MOVLW	0x04
	ANDWF	r0x01, F
	BCF	STATUS, 0
	RRCF	r0x01, W
	MOVWF	r0x01
	BCF	STATUS, 0
	RRCF	r0x01, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x01, INDF0
;	.line	353; lab1.c	} else {
	MOVLW	0x01
	BANKSEL	(_BD0I + 2)
	ADDWF	(_BD0I + 2), W, B
	MOVWF	r0x01
	MOVLW	0x00
	BANKSEL	(_BD0I + 3)
	ADDWFC	(_BD0I + 3), W, B
	MOVWF	r0x02
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	354; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0x02
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	355; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00214_DS_:
	BANKSEL	_USB_error_flags
;	.line	357; lab1.c	case CONFIG_STATE:
	BSF	_USB_error_flags, 0, B
;	.line	359; lab1.c	n = USB_buffer_data[wIndex]&0x0F;	// get EP and strip off direction bit for offset from UEP0
	GOTO	_00316_DS_
_00216_DS_:
;	.line	362; lab1.c	BD0I.address[0] = ((buf_desc_ptr->status)&0x04)>>2;	// ...return the BSTALL bit of the specified EP
	MOVLW	0x0f
	BANKSEL	(_USB_buffer_data + 4)
	ANDWF	(_USB_buffer_data + 4), W, B
	MOVWF	r0x01
;	.line	363; lab1.c	BD0I.address[1] = 0x00;
	MOVFF	r0x01, r0x02
	CLRF	r0x03
	MOVF	r0x02, W
	MOVWF	r0x04
	ADDWF	r0x04, F
	RLCF	r0x03, W
	MOVWF	r0x05
	MOVLW	0x80
	BANKSEL	(_USB_buffer_data + 4)
	ANDWF	(_USB_buffer_data + 4), W, B
	MOVWF	r0x02
	MOVF	r0x02, W
	BTFSC	STATUS, 2
	GOTO	_00320_DS_
	MOVLW	0x01
	MOVWF	r0x03
	GOTO	_00321_DS_
_00320_DS_:
	CLRF	r0x03
_00321_DS_:
	CLRF	r0x06
	MOVF	r0x03, W
	IORWF	r0x04, F
	MOVF	r0x06, W
	IORWF	r0x05, F
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_BD0O)
	ADDWF	r0x03, F
	MOVLW	HIGH(_BD0O)
	ADDWFC	r0x04, F
	MOVF	r0x04, W
	MOVWF	r0x04
	MOVF	r0x03, W
	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
;	.line	364; lab1.c	BD0I.bytecount = 0x02;
	MOVLW	0x70
	ADDWF	r0x01, W
	MOVWF	r0x06
	MOVLW	0x0f
	CLRF	r0x07
	ADDWFC	r0x07, F
	MOVLW	0x00
	CLRF	r0x08
	ADDWFC	r0x08, F
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
	MOVF	r0x02, W
	BTFSC	STATUS, 2
	GOTO	_00322_DS_
	MOVLW	0x02
	MOVWF	r0x02
	GOTO	_00323_DS_
_00322_DS_:
	MOVLW	0x04
	MOVWF	r0x02
_00323_DS_:
	MOVF	r0x02, W
	ANDWF	r0x06, F
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	GOTO	_00218_DS_
;	.line	365; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVFF	(_BD0I + 2), r0x02
	MOVFF	(_BD0I + 3), r0x06
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x07
	MOVLW	0x04
	ANDWF	r0x07, F
	BCF	STATUS, 0
	RRCF	r0x07, W
	MOVWF	r0x07
	BCF	STATUS, 0
	RRCF	r0x07, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x06, FSR0H
	MOVFF	r0x07, INDF0
;	.line	366; lab1.c	} else {
	MOVLW	0x01
	BANKSEL	(_BD0I + 2)
	ADDWF	(_BD0I + 2), W, B
	MOVWF	r0x02
	MOVLW	0x00
	BANKSEL	(_BD0I + 3)
	ADDWFC	(_BD0I + 3), W, B
	MOVWF	r0x06
	MOVFF	r0x02, FSR0L
	MOVFF	r0x06, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	367; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0x02
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	368; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00218_DS_:
	BANKSEL	_USB_error_flags
;	.line	370; lab1.c	default:
	BSF	_USB_error_flags, 0, B
;	.line	372; lab1.c	}
	GOTO	_00316_DS_
_00220_DS_:
	BANKSEL	_USB_error_flags
;	.line	374; lab1.c	default:
	BSF	_USB_error_flags, 0, B
;	.line	376; lab1.c	}
	GOTO	_00316_DS_
_00222_DS_:
	BANKSEL	_USB_error_flags
;	.line	378; lab1.c	case CLEAR_FEATURE:
	BSF	_USB_error_flags, 0, B
;	.line	380; lab1.c	switch (USB_buffer_data[bmRequestType]&0x1F) {	// extract request recipient bits
	GOTO	_00316_DS_
_00225_DS_:
;	.line	383; lab1.c	case DEVICE_REMOTE_WAKEUP:
	MOVLW	0x1f
	BANKSEL	_USB_buffer_data
	ANDWF	_USB_buffer_data, W, B
	MOVWF	r0x02
	MOVF	r0x02, W
	BNZ	_00398_DS_
	GOTO	_00226_DS_
_00398_DS_:
	MOVF	r0x02, W
	XORLW	0x02
	BNZ	_00400_DS_
	GOTO	_00233_DS_
_00400_DS_:
	GOTO	_00254_DS_
_00226_DS_:
	BANKSEL	(_USB_buffer_data + 2)
;	.line	385; lab1.c	USB_device_status &= 0xFE;
	MOVF	(_USB_buffer_data + 2), W, B
	XORLW	0x01
	BNZ	_00401_DS_
	GOTO	_00402_DS_
_00401_DS_:
	GOTO	_00231_DS_
_00402_DS_:
;	.line	387; lab1.c	USB_device_status |= 0x01;
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00403_DS_
	GOTO	_00404_DS_
_00403_DS_:
	GOTO	_00229_DS_
_00404_DS_:
	BANKSEL	_USB_device_status
;	.line	388; lab1.c	BD0I.bytecount = 0x00;		// set EP0 IN byte count to 0
	BCF	_USB_device_status, 0, B
	GOTO	_00230_DS_
_00229_DS_:
	BANKSEL	_USB_device_status
;	.line	390; lab1.c	break;
	BSF	_USB_device_status, 0, B
_00230_DS_:
	BANKSEL	(_BD0I + 1)
;	.line	391; lab1.c	default:
	CLRF	(_BD0I + 1), B
;	.line	392; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	393; lab1.c	}
	GOTO	_00316_DS_
_00231_DS_:
	BANKSEL	_USB_error_flags
;	.line	395; lab1.c	case RECIPIENT_ENDPOINT:
	BSF	_USB_error_flags, 0, B
;	.line	397; lab1.c	case ADDRESS_STATE:
	GOTO	_00316_DS_
_00233_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	399; lab1.c	BD0I.bytecount = 0x00;		// set EP0 IN byte count to 0
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x02
	BNZ	_00407_DS_
	GOTO	_00234_DS_
_00407_DS_:
	BANKSEL	_USB_USWSTAT
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00409_DS_
	GOTO	_00238_DS_
_00409_DS_:
	GOTO	_00252_DS_
_00234_DS_:
	BANKSEL	(_USB_buffer_data + 4)
;	.line	401; lab1.c	} else {
	MOVF	(_USB_buffer_data + 4), W, B
	ANDLW	0x0f
	BZ	_00410_DS_
	BRA	_00236_DS_
_00410_DS_:
	BANKSEL	(_BD0I + 1)
;	.line	402; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	CLRF	(_BD0I + 1), B
;	.line	403; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00236_DS_:
	BANKSEL	_USB_error_flags
;	.line	405; lab1.c	case CONFIG_STATE:
	BSF	_USB_error_flags, 0, B
;	.line	407; lab1.c	if (n = USB_buffer_data[wIndex]&0x0F) {	// get EP and strip off direction bit for offset from UEP0, if not EP0...
	GOTO	_00316_DS_
_00238_DS_:
;	.line	410; lab1.c	if (UEP[n]&0x02) {	// if EPn is enabled for IN transfers...
	MOVFF	(_USB_buffer_data + 4), r0x02
	MOVLW	0x0f
	ANDWF	r0x02, W
	MOVWF	r0x06
	MOVFF	r0x06, r0x01
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	GOTO	_00249_DS_
;	.line	411; lab1.c	buf_desc_ptr->status = (USB_buffer_data[bRequest]==CLEAR_FEATURE) ? 0x00:0x84;
	MOVFF	r0x01, r0x06
	CLRF	r0x07
	MOVF	r0x06, W
	MOVWF	r0x08
	ADDWF	r0x08, F
	RLCF	r0x07, W
	MOVWF	r0x09
	MOVLW	0x80
	ANDWF	r0x02, F
	MOVF	r0x02, W
	BTFSC	STATUS, 2
	GOTO	_00324_DS_
	MOVLW	0x01
	MOVWF	r0x06
	GOTO	_00325_DS_
_00324_DS_:
	CLRF	r0x06
_00325_DS_:
	CLRF	r0x07
	MOVF	r0x06, W
	IORWF	r0x08, F
	MOVF	r0x07, W
	IORWF	r0x09, F
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x00
	MOVWF	POSTDEC1
	MOVLW	0x04
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x04
	ADDWF	FSR1L, F
	MOVLW	LOW(_BD0O)
	ADDWF	r0x06, F
	MOVLW	HIGH(_BD0O)
	ADDWFC	r0x07, F
	MOVF	r0x07, W
	MOVWF	r0x04
	MOVF	r0x06, W
	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
;	.line	412; lab1.c	} else {
	MOVF	r0x02, W
	BTFSC	STATUS, 2
	GOTO	_00246_DS_
;	.line	413; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag									
	MOVLW	0x70
	ADDWF	r0x01, W
	MOVWF	r0x02
	MOVLW	0x0f
	CLRF	r0x06
	ADDWFC	r0x06, F
	MOVLW	0x00
	CLRF	r0x07
	ADDWFC	r0x07, F
	MOVFF	r0x02, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrget1
	MOVWF	r0x02
	BTFSS	r0x02, 1
	GOTO	_00240_DS_
;	.line	414; lab1.c	}
	MOVFF	r0x03, r0x02
	MOVFF	r0x04, r0x06
	MOVFF	r0x05, r0x07
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00413_DS_
	GOTO	_00414_DS_
_00413_DS_:
	GOTO	_00326_DS_
_00414_DS_:
	CLRF	r0x08
	GOTO	_00327_DS_
_00326_DS_:
	MOVLW	0x84
	MOVWF	r0x08
_00327_DS_:
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x02, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
	GOTO	_00249_DS_
_00240_DS_:
	BANKSEL	_USB_error_flags
;	.line	416; lab1.c	if (UEP[n]&0x04) {	// if EPn is enabled for OUT transfers...
	BSF	_USB_error_flags, 0, B
	GOTO	_00249_DS_
_00246_DS_:
;	.line	419; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag									
	MOVLW	0x70
	ADDWF	r0x01, F
	MOVLW	0x0f
	ADDWFC	r0x02, F
	MOVLW	0x00
	ADDWFC	r0x06, F
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
	MOVWF	r0x01
	BTFSS	r0x01, 2
	GOTO	_00243_DS_
;	.line	420; lab1.c	}
	MOVFF	r0x03, r0x01
	MOVFF	r0x04, r0x02
	MOVFF	r0x05, r0x03
	MOVF	r0x00, W
	XORLW	0x01
	BNZ	_00415_DS_
	GOTO	_00416_DS_
_00415_DS_:
	GOTO	_00328_DS_
_00416_DS_:
	MOVLW	0x88
	MOVWF	r0x00
	GOTO	_00329_DS_
_00328_DS_:
	MOVLW	0x84
	MOVWF	r0x00
_00329_DS_:
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, PRODL
	MOVF	r0x03, W
	CALL	__gptrput1
	GOTO	_00249_DS_
_00243_DS_:
	BANKSEL	_USB_error_flags
;	.line	422; lab1.c	}
	BSF	_USB_error_flags, 0, B
_00249_DS_:
	BANKSEL	_USB_error_flags
;	.line	426; lab1.c	}
	BTFSC	_USB_error_flags, 0, B
	GOTO	_00316_DS_
	BANKSEL	(_BD0I + 1)
;	.line	427; lab1.c	break;
	CLRF	(_BD0I + 1), B
;	.line	428; lab1.c	default:
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	430; lab1.c	}
	GOTO	_00316_DS_
_00252_DS_:
	BANKSEL	_USB_error_flags
;	.line	432; lab1.c	default:
	BSF	_USB_error_flags, 0, B
;	.line	434; lab1.c	}
	GOTO	_00316_DS_
_00254_DS_:
	BANKSEL	_USB_error_flags
;	.line	436; lab1.c	case SET_ADDRESS:
	BSF	_USB_error_flags, 0, B
;	.line	438; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	GOTO	_00316_DS_
_00256_DS_:
;	.line	440; lab1.c	USB_dev_req = SET_ADDRESS;	// processing a SET_ADDRESS request
	MOVFF	(_USB_buffer_data + 2), r0x00
	MOVLW	0x80
	SUBWF	r0x00, W
	BTFSS	STATUS, 0
	GOTO	_00258_DS_
	BANKSEL	_USB_error_flags
;	.line	441; lab1.c	USB_address_pending = USB_buffer_data[wValue];	// save new address
	BSF	_USB_error_flags, 0, B
	GOTO	_00316_DS_
_00258_DS_:
;	.line	443; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVLW	0x05
	BANKSEL	_USB_dev_req
	MOVWF	_USB_dev_req, B
;	.line	444; lab1.c	}
	MOVFF	r0x00, _USB_address_pending
	BANKSEL	(_BD0I + 1)
;	.line	445; lab1.c	break;
	CLRF	(_BD0I + 1), B
;	.line	446; lab1.c	case GET_DESCRIPTOR:
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	448; lab1.c	switch (USB_buffer_data[wValueHigh]) {
	GOTO	_00316_DS_
_00260_DS_:
;	.line	450; lab1.c	USB_desc_ptr = Device;
	MOVLW	0x06
	BANKSEL	_USB_dev_req
	MOVWF	_USB_dev_req, B
;	.line	451; lab1.c	USB_bytes_left = USB_desc_ptr[0];
	MOVFF	(_USB_buffer_data + 3), r0x00
	MOVLW	0x01
	SUBWF	r0x00, W
	BTFSS	STATUS, 0
	GOTO	_00285_DS_
	MOVLW	0x04
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00285_DS_
	DECF	r0x00, F
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	CLRF	r0x0b
	RLCF	r0x00, W
	RLCF	r0x0b, F
	RLCF	WREG, W
	RLCF	r0x0b, F
	ANDLW	0xfc
	MOVWF	r0x0a
	MOVLW	UPPER(_00420_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00420_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00420_DS_)
	ADDWF	r0x0a, F
	MOVF	r0x0b, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x0a, W
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVWF	PCL
_00420_DS_:
	GOTO	_00261_DS_
	GOTO	_00265_DS_
	GOTO	_00274_DS_
_00261_DS_:
;	.line	453; lab1.c	USB_bytes_left = USB_buffer_data[wLength];
	MOVLW	LOW(_Device)
	BANKSEL	_USB_desc_ptr
	MOVWF	_USB_desc_ptr, B
	MOVLW	HIGH(_Device)
	BANKSEL	(_USB_desc_ptr + 1)
	MOVWF	(_USB_desc_ptr + 1), B
	MOVLW	UPPER(_Device)
	BANKSEL	(_USB_desc_ptr + 2)
	MOVWF	(_USB_desc_ptr + 2), B
;	.line	454; lab1.c	}
	MOVFF	_USB_desc_ptr, r0x00
	MOVFF	(_USB_desc_ptr + 1), r0x01
	MOVFF	(_USB_desc_ptr + 2), r0x02
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _USB_bytes_left
	BANKSEL	(_USB_buffer_data + 7)
;	.line	455; lab1.c	SendDescriptorPacket();
	MOVF	(_USB_buffer_data + 7), W, B
	BTFSS	STATUS, 2
	GOTO	_00263_DS_
	MOVFF	(_USB_buffer_data + 6), r0x00
	BANKSEL	_USB_bytes_left
	MOVF	_USB_bytes_left, W, B
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00263_DS_
;	.line	456; lab1.c	break;
	MOVFF	r0x00, _USB_bytes_left
_00263_DS_:
;	.line	458; lab1.c	switch (USB_buffer_data[wValue]) {
	CALL	_SendDescriptorPacket
;	.line	459; lab1.c	case 0:
	GOTO	_00316_DS_
_00265_DS_:
	BANKSEL	(_USB_buffer_data + 2)
;	.line	461; lab1.c	break;
	MOVF	(_USB_buffer_data + 2), W, B
	BNZ	_00422_DS_
	GOTO	_00423_DS_
_00422_DS_:
	GOTO	_00267_DS_
_00423_DS_:
;	.line	463; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	LOW(_Configuration1)
	BANKSEL	_USB_desc_ptr
	MOVWF	_USB_desc_ptr, B
	MOVLW	HIGH(_Configuration1)
	BANKSEL	(_USB_desc_ptr + 1)
	MOVWF	(_USB_desc_ptr + 1), B
	MOVLW	UPPER(_Configuration1)
	BANKSEL	(_USB_desc_ptr + 2)
	MOVWF	(_USB_desc_ptr + 2), B
;	.line	464; lab1.c	}
	GOTO	_00268_DS_
_00267_DS_:
	BANKSEL	_USB_error_flags
;	.line	466; lab1.c	USB_bytes_left = USB_desc_ptr[2];	// wTotalLength at an offset of 2
	BSF	_USB_error_flags, 0, B
_00268_DS_:
	BANKSEL	_USB_error_flags
;	.line	468; lab1.c	USB_bytes_left = USB_buffer_data[wLength];
	BTFSC	_USB_error_flags, 0, B
	GOTO	_00316_DS_
;	.line	469; lab1.c	}
	MOVLW	0x02
	BANKSEL	_USB_desc_ptr
	ADDWF	_USB_desc_ptr, W, B
	MOVWF	r0x00
	MOVLW	0x00
	BANKSEL	(_USB_desc_ptr + 1)
	ADDWFC	(_USB_desc_ptr + 1), W, B
	MOVWF	r0x01
	MOVLW	0x00
	BANKSEL	(_USB_desc_ptr + 2)
	ADDWFC	(_USB_desc_ptr + 2), W, B
	MOVWF	r0x02
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _USB_bytes_left
	BANKSEL	(_USB_buffer_data + 7)
;	.line	470; lab1.c	SendDescriptorPacket();
	MOVF	(_USB_buffer_data + 7), W, B
	BTFSS	STATUS, 2
	GOTO	_00270_DS_
	MOVFF	(_USB_buffer_data + 6), r0x00
	BANKSEL	_USB_bytes_left
	MOVF	_USB_bytes_left, W, B
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00270_DS_
;	.line	471; lab1.c	}
	MOVFF	r0x00, _USB_bytes_left
_00270_DS_:
;	.line	473; lab1.c	case STRING:
	CALL	_SendDescriptorPacket
;	.line	475; lab1.c	case 0:
	GOTO	_00316_DS_
_00274_DS_:
;	.line	477; lab1.c	break;
	MOVFF	(_USB_buffer_data + 2), r0x00
	MOVLW	0x03
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00278_DS_
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	CLRF	r0x0b
	RLCF	r0x00, W
	RLCF	r0x0b, F
	RLCF	WREG, W
	RLCF	r0x0b, F
	ANDLW	0xfc
	MOVWF	r0x0a
	MOVLW	UPPER(_00426_DS_)
	MOVWF	PCLATU
	MOVLW	HIGH(_00426_DS_)
	MOVWF	PCLATH
	MOVLW	LOW(_00426_DS_)
	ADDWF	r0x0a, F
	MOVF	r0x0b, W
	ADDWFC	PCLATH, F
	BTFSC	STATUS, 0
	INCF	PCLATU, F
	MOVF	r0x0a, W
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVWF	PCL
_00426_DS_:
	GOTO	_00275_DS_
	GOTO	_00276_DS_
	GOTO	_00277_DS_
_00275_DS_:
;	.line	479; lab1.c	USB_desc_ptr = String1;
	MOVLW	LOW(_String0)
	BANKSEL	_USB_desc_ptr
	MOVWF	_USB_desc_ptr, B
	MOVLW	HIGH(_String0)
	BANKSEL	(_USB_desc_ptr + 1)
	MOVWF	(_USB_desc_ptr + 1), B
	MOVLW	UPPER(_String0)
	BANKSEL	(_USB_desc_ptr + 2)
	MOVWF	(_USB_desc_ptr + 2), B
;	.line	480; lab1.c	break;
	GOTO	_00279_DS_
_00276_DS_:
;	.line	482; lab1.c	USB_desc_ptr = String2;
	MOVLW	LOW(_String1)
	BANKSEL	_USB_desc_ptr
	MOVWF	_USB_desc_ptr, B
	MOVLW	HIGH(_String1)
	BANKSEL	(_USB_desc_ptr + 1)
	MOVWF	(_USB_desc_ptr + 1), B
	MOVLW	UPPER(_String1)
	BANKSEL	(_USB_desc_ptr + 2)
	MOVWF	(_USB_desc_ptr + 2), B
;	.line	483; lab1.c	break;
	GOTO	_00279_DS_
_00277_DS_:
;	.line	485; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	LOW(_String2)
	BANKSEL	_USB_desc_ptr
	MOVWF	_USB_desc_ptr, B
	MOVLW	HIGH(_String2)
	BANKSEL	(_USB_desc_ptr + 1)
	MOVWF	(_USB_desc_ptr + 1), B
	MOVLW	UPPER(_String2)
	BANKSEL	(_USB_desc_ptr + 2)
	MOVWF	(_USB_desc_ptr + 2), B
;	.line	486; lab1.c	}
	GOTO	_00279_DS_
_00278_DS_:
	BANKSEL	_USB_error_flags
;	.line	488; lab1.c	USB_bytes_left = USB_desc_ptr[0];
	BSF	_USB_error_flags, 0, B
_00279_DS_:
	BANKSEL	_USB_error_flags
;	.line	490; lab1.c	USB_bytes_left = USB_buffer_data[wLength];
	BTFSC	_USB_error_flags, 0, B
	GOTO	_00316_DS_
;	.line	491; lab1.c	}
	MOVFF	_USB_desc_ptr, r0x00
	MOVFF	(_USB_desc_ptr + 1), r0x01
	MOVFF	(_USB_desc_ptr + 2), r0x02
	MOVFF	r0x00, TBLPTRL
	MOVFF	r0x01, TBLPTRH
	MOVFF	r0x02, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, _USB_bytes_left
	BANKSEL	(_USB_buffer_data + 7)
;	.line	492; lab1.c	SendDescriptorPacket();
	MOVF	(_USB_buffer_data + 7), W, B
	BTFSS	STATUS, 2
	GOTO	_00281_DS_
	MOVFF	(_USB_buffer_data + 6), r0x00
	BANKSEL	_USB_bytes_left
	MOVF	_USB_bytes_left, W, B
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00281_DS_
;	.line	493; lab1.c	}
	MOVFF	r0x00, _USB_bytes_left
_00281_DS_:
;	.line	495; lab1.c	default:
	CALL	_SendDescriptorPacket
;	.line	497; lab1.c	}
	GOTO	_00316_DS_
_00285_DS_:
	BANKSEL	_USB_error_flags
;	.line	499; lab1.c	case GET_CONFIGURATION:
	BSF	_USB_error_flags, 0, B
;	.line	501; lab1.c	BD0I.bytecount = 0x01;
	GOTO	_00316_DS_
_00287_DS_:
;	.line	503; lab1.c	break;
	MOVFF	(_BD0I + 2), r0x00
	MOVFF	(_BD0I + 3), r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	_USB_curr_config, INDF0
;	.line	504; lab1.c	case SET_CONFIGURATION:
	MOVLW	0x01
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	505; lab1.c	if (USB_buffer_data[wValue]<=NUM_CONFIGURATIONS) {
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	506; lab1.c	UEP1 = 0x00;	// clear all EP control registers except for EP0 to disable EP1-EP15 prior to setting configuration
	GOTO	_00316_DS_
_00288_DS_:
;	.line	508; lab1.c	UEP3 = 0x00;
	MOVFF	(_USB_buffer_data + 2), r0x00
	MOVLW	0x02
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00293_DS_
;	.line	509; lab1.c	UEP4 = 0x00;
	CLRF	_UEP1
;	.line	510; lab1.c	UEP5 = 0x00;
	CLRF	_UEP2
;	.line	511; lab1.c	UEP6 = 0x00;
	CLRF	_UEP3
;	.line	512; lab1.c	UEP7 = 0x00;
	CLRF	_UEP4
;	.line	513; lab1.c	UEP8 = 0x00;
	CLRF	_UEP5
;	.line	514; lab1.c	UEP9 = 0x00;
	CLRF	_UEP6
;	.line	515; lab1.c	UEP10 = 0x00;
	CLRF	_UEP7
;	.line	516; lab1.c	UEP11 = 0x00;
	CLRF	_UEP8
;	.line	517; lab1.c	UEP12 = 0x00;
	CLRF	_UEP9
;	.line	518; lab1.c	UEP13 = 0x00;
	CLRF	_UEP10
;	.line	519; lab1.c	UEP14 = 0x00;
	CLRF	_UEP11
;	.line	520; lab1.c	UEP15 = 0x00;
	CLRF	_UEP12
;	.line	521; lab1.c	switch (USB_curr_config = USB_buffer_data[wValue]) {
	CLRF	_UEP13
;	.line	522; lab1.c	case 0:
	CLRF	_UEP14
;	.line	523; lab1.c	USB_USWSTAT = ADDRESS_STATE;
	CLRF	_UEP15
;	.line	524; lab1.c	break;
	MOVFF	r0x00, _USB_curr_config
	MOVF	r0x00, W
	BNZ	_00429_DS_
	GOTO	_00430_DS_
_00429_DS_:
	GOTO	_00290_DS_
_00430_DS_:
;	.line	526; lab1.c	USB_USWSTAT = CONFIG_STATE;
	MOVLW	0x02
	BANKSEL	_USB_USWSTAT
	MOVWF	_USB_USWSTAT, B
;	.line	527; lab1.c	}
	GOTO	_00291_DS_
_00290_DS_:
;	.line	529; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVLW	0x03
	BANKSEL	_USB_USWSTAT
	MOVWF	_USB_USWSTAT, B
_00291_DS_:
	BANKSEL	(_BD0I + 1)
;	.line	531; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	CLRF	(_BD0I + 1), B
;	.line	532; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00293_DS_:
	BANKSEL	_USB_error_flags
;	.line	534; lab1.c	case GET_INTERFACE:
	BSF	_USB_error_flags, 0, B
;	.line	536; lab1.c	case CONFIG_STATE:
	GOTO	_00316_DS_
_00295_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	538; lab1.c	BD0I.address[0] = 0x00;	// always send back 0 for bAlternateSetting
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00431_DS_
	GOTO	_00432_DS_
_00431_DS_:
	GOTO	_00300_DS_
_00432_DS_:
;	.line	540; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVLW	0x01
	BANKSEL	(_USB_buffer_data + 4)
	SUBWF	(_USB_buffer_data + 4), W, B
	BTFSC	STATUS, 0
	GOTO	_00298_DS_
;	.line	541; lab1.c	} else {
	MOVFF	(_BD0I + 2), r0x00
	MOVFF	(_BD0I + 3), r0x01
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVLW	0x00
	MOVWF	INDF0
;	.line	542; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0x01
	BANKSEL	(_BD0I + 1)
	MOVWF	(_BD0I + 1), B
;	.line	543; lab1.c	}
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
	GOTO	_00316_DS_
_00298_DS_:
	BANKSEL	_USB_error_flags
;	.line	545; lab1.c	default:
	BSF	_USB_error_flags, 0, B
;	.line	547; lab1.c	}
	GOTO	_00316_DS_
_00300_DS_:
	BANKSEL	_USB_error_flags
;	.line	549; lab1.c	case SET_INTERFACE:
	BSF	_USB_error_flags, 0, B
;	.line	551; lab1.c	case CONFIG_STATE:
	GOTO	_00316_DS_
_00302_DS_:
	BANKSEL	_USB_USWSTAT
;	.line	553; lab1.c	switch (USB_buffer_data[wValue]) {
	MOVF	_USB_USWSTAT, W, B
	XORLW	0x03
	BNZ	_00434_DS_
	GOTO	_00435_DS_
_00434_DS_:
	GOTO	_00310_DS_
_00435_DS_:
;	.line	555; lab1.c	BD0I.bytecount = 0x00;		// set EP0 IN byte count to 0
	MOVLW	0x01
	BANKSEL	(_USB_buffer_data + 4)
	SUBWF	(_USB_buffer_data + 4), W, B
	BTFSC	STATUS, 0
	GOTO	_00308_DS_
	BANKSEL	(_USB_buffer_data + 2)
;	.line	556; lab1.c	BD0I.status = 0xC8;		// send packet as DATA1, set UOWN bit
	MOVF	(_USB_buffer_data + 2), W, B
	BNZ	_00437_DS_
	GOTO	_00438_DS_
_00437_DS_:
	GOTO	_00305_DS_
_00438_DS_:
	BANKSEL	(_BD0I + 1)
;	.line	558; lab1.c	default:
	CLRF	(_BD0I + 1), B
;	.line	559; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	MOVLW	0xc8
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	560; lab1.c	}
	GOTO	_00316_DS_
_00305_DS_:
	BANKSEL	_USB_error_flags
;	.line	562; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	BSF	_USB_error_flags, 0, B
;	.line	563; lab1.c	}
	GOTO	_00316_DS_
_00308_DS_:
	BANKSEL	_USB_error_flags
;	.line	565; lab1.c	default:
	BSF	_USB_error_flags, 0, B
;	.line	567; lab1.c	}
	GOTO	_00316_DS_
_00310_DS_:
	BANKSEL	_USB_error_flags
;	.line	569; lab1.c	case SET_DESCRIPTOR:
	BSF	_USB_error_flags, 0, B
;	.line	571; lab1.c	default:
	GOTO	_00316_DS_
_00314_DS_:
	BANKSEL	_USB_error_flags
;	.line	575; lab1.c	
	BSF	_USB_error_flags, 0, B
_00316_DS_:
;	.line	576; lab1.c	void ClassRequests(void) {
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__ProcessSetupToken	code
_ProcessSetupToken:
;	.line	292; lab1.c	for (n = 0; n<8; n++) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
;	.line	294; lab1.c	}
	BSF	_PORTB, 2
;	.line	295; lab1.c	BD0O.bytecount = MAX_PACKET_SIZE;	// reset the EP0 OUT byte count
	CLRF	r0x00
_00166_DS_:
	MOVLW	0x08
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	GOTO	_00169_DS_
;	.line	296; lab1.c	BD0I.status = 0x08;			// return the EP0 IN buffer to us (dequeue any pending requests)			
	MOVLW	LOW(_USB_buffer_data)
	ADDWF	r0x00, W
	MOVWF	r0x01
	CLRF	r0x02
	MOVLW	HIGH(_USB_buffer_data)
	ADDWFC	r0x02, F
	MOVF	r0x00, W
	BANKSEL	(_USB_buffer_desc + 2)
	ADDWF	(_USB_buffer_desc + 2), W, B
	MOVWF	r0x03
	CLRF	WREG
	BANKSEL	(_USB_buffer_desc + 3)
	ADDWFC	(_USB_buffer_desc + 3), W, B
	MOVWF	r0x04
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVFF	INDF0, r0x03
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x03, INDF0
;	.line	295; lab1.c	BD0O.bytecount = MAX_PACKET_SIZE;	// reset the EP0 OUT byte count
	INCF	r0x00, F
	GOTO	_00166_DS_
_00169_DS_:
;	.line	298; lab1.c	UCONbits.PKTDIS = 0;			// assuming there is nothing to dequeue, clear the packet disable bit
	MOVLW	0x08
	BANKSEL	(_BD0O + 1)
	MOVWF	(_BD0O + 1), B
;	.line	299; lab1.c	USB_dev_req = NO_REQUEST;		// clear the device request in process
	MOVLW	0x08
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	300; lab1.c	switch (USB_buffer_data[bmRequestType]&0x60) {	// extract request type bits
	MOVFF	_USB_buffer_data, r0x00
	MOVLW	0x80
	ANDWF	r0x00, W
	MOVWF	r0x01
	MOVF	r0x01, W
	BSF	STATUS, 0
	TSTFSZ	WREG
	BCF	STATUS, 0
	CLRF	r0x01
	RLCF	r0x01, F
	MOVF	r0x01, W
	BTFSC	STATUS, 2
	GOTO	_00174_DS_
	BANKSEL	(_USB_buffer_data + 6)
	MOVF	(_USB_buffer_data + 6), W, B
	BTFSS	STATUS, 2
	GOTO	_00178_DS_
	BANKSEL	(_USB_buffer_data + 7)
	MOVF	(_USB_buffer_data + 7), W, B
	BTFSS	STATUS, 2
	GOTO	_00178_DS_
	CLRF	r0x01
	GOTO	_00179_DS_
_00178_DS_:
	MOVLW	0x01
	MOVWF	r0x01
_00179_DS_:
	MOVF	r0x01, W
	BTFSS	STATUS, 2
	GOTO	_00175_DS_
_00174_DS_:
	CLRF	r0x01
	GOTO	_00176_DS_
_00175_DS_:
	MOVLW	0x01
	MOVWF	r0x01
_00176_DS_:
	MOVF	r0x01, W
	BTFSC	STATUS, 2
	GOTO	_00172_DS_
	MOVLW	0xc8
	MOVWF	r0x01
	GOTO	_00173_DS_
_00172_DS_:
	MOVLW	0x88
	MOVWF	r0x01
_00173_DS_:
	MOVF	r0x01, W
	BANKSEL	_BD0O
	MOVWF	_BD0O, B
;	.line	301; lab1.c	case STANDARD:
	BCF	_UCONbits, 4
;	.line	302; lab1.c	StandardRequests();
	MOVLW	0xff
	BANKSEL	_USB_dev_req
	MOVWF	_USB_dev_req, B
;	.line	303; lab1.c	break;
	MOVLW	0x60
	ANDWF	r0x00, F
	MOVF	r0x00, W
	BNZ	_00194_DS_
	GOTO	_00161_DS_
_00194_DS_:
	MOVF	r0x00, W
	XORLW	0x20
	BNZ	_00196_DS_
	GOTO	_00162_DS_
_00196_DS_:
	MOVF	r0x00, W
	XORLW	0x40
	BNZ	_00198_DS_
	GOTO	_00163_DS_
_00198_DS_:
	GOTO	_00164_DS_
_00161_DS_:
;	.line	305; lab1.c	ClassRequests();
	CALL	_StandardRequests
;	.line	306; lab1.c	break;
	GOTO	_00170_DS_
_00162_DS_:
;	.line	308; lab1.c	VendorRequests();
	CALL	_ClassRequests
;	.line	309; lab1.c	break;
	GOTO	_00170_DS_
_00163_DS_:
;	.line	311; lab1.c	USB_error_flags |= 0x01;	// set Request Error Flag
	CALL	_VendorRequests
;	.line	312; lab1.c	}
	GOTO	_00170_DS_
_00164_DS_:
	BANKSEL	_USB_error_flags
;	.line	314; lab1.c	
	BSF	_USB_error_flags, 0, B
_00170_DS_:
;	.line	315; lab1.c	void StandardRequests(void) {
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__ServiceUSB	code
_ServiceUSB:
;	.line	210; lab1.c	if (UIRbits.UERRIF) {
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
;	.line	213; lab1.c	UIRbits.SOFIF = 0;
	BTFSS	_UIRbits, 1
	GOTO	_00134_DS_
;	.line	214; lab1.c	} else if (UIRbits.IDLEIF) {
	CLRF	_UEIR
	GOTO	_00136_DS_
_00134_DS_:
;	.line	215; lab1.c	UIRbits.IDLEIF = 0;
	BTFSS	_UIRbits, 6
	GOTO	_00131_DS_
;	.line	216; lab1.c	UCONbits.SUSPND = 1;
	BCF	_UIRbits, 6
	GOTO	_00136_DS_
_00131_DS_:
;	.line	217; lab1.c	} else if (UIRbits.ACTVIF) {
	BTFSS	_UIRbits, 4
	GOTO	_00128_DS_
;	.line	218; lab1.c	UIRbits.ACTVIF = 0;
	BCF	_UIRbits, 4
;	.line	219; lab1.c	UCONbits.SUSPND = 0;
	BSF	_UCONbits, 1
	GOTO	_00136_DS_
_00128_DS_:
;	.line	220; lab1.c	} else if (UIRbits.STALLIF) {
	BTFSS	_UIRbits, 2
	GOTO	_00125_DS_
;	.line	221; lab1.c	UIRbits.STALLIF = 0;
	BCF	_UIRbits, 2
;	.line	222; lab1.c	} else if (UIRbits.URSTIF) {
	BCF	_UCONbits, 1
	GOTO	_00136_DS_
_00125_DS_:
;	.line	223; lab1.c	USB_curr_config = 0x00;
	BTFSS	_UIRbits, 5
	GOTO	_00122_DS_
;	.line	224; lab1.c	UIRbits.TRNIF = 0;		// clear TRNIF four times to clear out the USTAT FIFO
	BCF	_UIRbits, 5
	GOTO	_00136_DS_
_00122_DS_:
;	.line	225; lab1.c	UIRbits.TRNIF = 0;
	BTFSS	_UIRbits, 0
	GOTO	_00119_DS_
	BANKSEL	_USB_curr_config
;	.line	226; lab1.c	UIRbits.TRNIF = 0;
	CLRF	_USB_curr_config, B
;	.line	227; lab1.c	UIRbits.TRNIF = 0;
	BCF	_UIRbits, 3
;	.line	228; lab1.c	UEP0 = 0x00;				// clear all EP control registers to disable all endpoints
	BCF	_UIRbits, 3
;	.line	229; lab1.c	UEP1 = 0x00;
	BCF	_UIRbits, 3
;	.line	230; lab1.c	UEP2 = 0x00;
	BCF	_UIRbits, 3
;	.line	231; lab1.c	UEP3 = 0x00;
	CLRF	_UEP0
;	.line	232; lab1.c	UEP4 = 0x00;
	CLRF	_UEP1
;	.line	233; lab1.c	UEP5 = 0x00;
	CLRF	_UEP2
;	.line	234; lab1.c	UEP6 = 0x00;
	CLRF	_UEP3
;	.line	235; lab1.c	UEP7 = 0x00;
	CLRF	_UEP4
;	.line	236; lab1.c	UEP8 = 0x00;
	CLRF	_UEP5
;	.line	237; lab1.c	UEP9 = 0x00;
	CLRF	_UEP6
;	.line	238; lab1.c	UEP10 = 0x00;
	CLRF	_UEP7
;	.line	239; lab1.c	UEP11 = 0x00;
	CLRF	_UEP8
;	.line	240; lab1.c	UEP12 = 0x00;
	CLRF	_UEP9
;	.line	241; lab1.c	UEP13 = 0x00;
	CLRF	_UEP10
;	.line	242; lab1.c	UEP14 = 0x00;
	CLRF	_UEP11
;	.line	243; lab1.c	UEP15 = 0x00;
	CLRF	_UEP12
;	.line	244; lab1.c	
	CLRF	_UEP13
;	.line	245; lab1.c	BD0O.bytecount = MAX_PACKET_SIZE;
	CLRF	_UEP14
;	.line	246; lab1.c	BD0O.address = EP0_OUT_buffer;	// EP0 OUT gets a buffer
	CLRF	_UEP15
;	.line	248; lab1.c	BD0I.address = EP0_IN_buffer;	// EP0 IN gets a buffer
	MOVLW	0x08
	BANKSEL	(_BD0O + 1)
	MOVWF	(_BD0O + 1), B
;	.line	249; lab1.c	BD0I.status = 0x08;				// clear UOWN bit (MCU can write)
	MOVLW	LOW(_EP0_OUT_buffer)
	BANKSEL	(_BD0O + 2)
	MOVWF	(_BD0O + 2), B
	MOVLW	HIGH(_EP0_OUT_buffer)
	BANKSEL	(_BD0O + 3)
	MOVWF	(_BD0O + 3), B
;	.line	250; lab1.c	
	MOVLW	0x88
	BANKSEL	_BD0O
	MOVWF	_BD0O, B
;	.line	251; lab1.c	BD1O.bytecount = MAX_PACKET_SIZE;
	MOVLW	LOW(_EP0_IN_buffer)
	BANKSEL	(_BD0I + 2)
	MOVWF	(_BD0I + 2), B
	MOVLW	HIGH(_EP0_IN_buffer)
	BANKSEL	(_BD0I + 3)
	MOVWF	(_BD0I + 3), B
;	.line	252; lab1.c	BD1O.address = EP0_OUT_buffer;	// EP0 OUT gets a buffer
	MOVLW	0x08
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	254; lab1.c	BD1I.address = EP0_IN_buffer;	// EP0 IN gets a buffer
	MOVLW	0x08
	BANKSEL	(_BD1O + 1)
	MOVWF	(_BD1O + 1), B
;	.line	255; lab1.c	BD1I.status = 0x08;				// clear UOWN bit (MCU can write)
	MOVLW	LOW(_EP0_OUT_buffer)
	BANKSEL	(_BD1O + 2)
	MOVWF	(_BD1O + 2), B
	MOVLW	HIGH(_EP0_OUT_buffer)
	BANKSEL	(_BD1O + 3)
	MOVWF	(_BD1O + 3), B
;	.line	256; lab1.c	
	MOVLW	0x88
	BANKSEL	_BD1O
	MOVWF	_BD1O, B
;	.line	257; lab1.c	UADDR = 0x00;				// set USB Address to 0
	MOVLW	LOW(_EP0_IN_buffer)
	BANKSEL	(_BD1I + 2)
	MOVWF	(_BD1I + 2), B
	MOVLW	HIGH(_EP0_IN_buffer)
	BANKSEL	(_BD1I + 3)
	MOVWF	(_BD1I + 3), B
;	.line	258; lab1.c	UIR = 0x00;				// clear all the USB interrupt flags
	MOVLW	0x08
	BANKSEL	_BD1I
	MOVWF	_BD1I, B
;	.line	260; lab1.c	UEIE = 0xFF;			// enable all error interrupts
	CLRF	_UADDR
;	.line	261; lab1.c	USB_USWSTAT = DEFAULT_STATE;
	CLRF	_UIR
;	.line	262; lab1.c	USB_device_status = 0x01;	// self powered, remote wakeup disabled
	MOVLW	0x16
	MOVWF	_UEP0
;	.line	263; lab1.c	} else if (UIRbits.TRNIF) {	
	MOVLW	0xff
	MOVWF	_UEIE
;	.line	264; lab1.c	buf_desc_ptr = (__data void *)((BD_BASE)+(USTAT&0x7C));	// mask out bits 0, 1, and 7 of USTAT for offset into the buffer descriptor table
	MOVLW	0x01
	BANKSEL	_USB_USWSTAT
	MOVWF	_USB_USWSTAT, B
;	.line	265; lab1.c	USB_buffer_desc.status = buf_desc_ptr->status;
	MOVLW	0x01
	BANKSEL	_USB_device_status
	MOVWF	_USB_device_status, B
	GOTO	_00136_DS_
_00119_DS_:
;	.line	266; lab1.c	USB_buffer_desc.bytecount = buf_desc_ptr->bytecount;
	BTFSS	_UIRbits, 3
	GOTO	_00136_DS_
;	.line	267; lab1.c	USB_buffer_desc.address = buf_desc_ptr->address;
	MOVLW	0x7c
	ANDWF	_USTAT, W
	MOVWF	r0x00
	CLRF	r0x01
	MOVLW	0x04
	ADDWF	r0x01, F
;	.line	268; lab1.c	USB_USTAT = USTAT;		// save the USB status register
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	BANKSEL	_USB_buffer_desc
	MOVWF	_USB_buffer_desc, B
;	.line	269; lab1.c	UIRbits.TRNIF = 0;		// clear TRNIF interrupt flag
	MOVLW	0x01
	ADDWF	r0x00, W
	MOVWF	r0x02
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x03
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x02
	MOVF	r0x02, W
	BANKSEL	(_USB_buffer_desc + 1)
	MOVWF	(_USB_buffer_desc + 1), B
;	.line	270; lab1.c	USB_error_flags = 0x00;	// clear USB error flags
	MOVLW	0x02
	ADDWF	r0x00, F
	BTFSC	STATUS, 0
	INCF	r0x01, F
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	MOVFF	POSTINC0, r0x00
	MOVFF	INDF0, r0x01
	MOVF	r0x00, W
	BANKSEL	(_USB_buffer_desc + 2)
	MOVWF	(_USB_buffer_desc + 2), B
	MOVF	r0x01, W
	BANKSEL	(_USB_buffer_desc + 3)
	MOVWF	(_USB_buffer_desc + 3), B
;	.line	271; lab1.c	switch (USB_buffer_desc.status&0x3C) {	// extract PID bits
	MOVFF	_USTAT, _USB_USTAT
;	.line	272; lab1.c	case TOKEN_SETUP:
	BCF	_UIRbits, 3
	BANKSEL	_USB_error_flags
;	.line	273; lab1.c	ProcessSetupToken();
	CLRF	_USB_error_flags, B
;	.line	274; lab1.c	break;
	MOVLW	0x3c
	BANKSEL	_USB_buffer_desc
	ANDWF	_USB_buffer_desc, W, B
	MOVWF	r0x00
	MOVF	r0x00, W
	XORLW	0x04
	BNZ	_00152_DS_
	GOTO	_00112_DS_
_00152_DS_:
	MOVF	r0x00, W
	XORLW	0x24
	BNZ	_00154_DS_
	GOTO	_00111_DS_
_00154_DS_:
	MOVF	r0x00, W
	XORLW	0x34
	BNZ	_00155_DS_
	GOTO	_00156_DS_
_00155_DS_:
	GOTO	_00113_DS_
_00156_DS_:
;	.line	276; lab1.c	ProcessInToken();
	CALL	_ProcessSetupToken
;	.line	277; lab1.c	break;
	GOTO	_00113_DS_
_00111_DS_:
;	.line	279; lab1.c	ProcessOutToken();
	CALL	_ProcessInToken
;	.line	280; lab1.c	}
	GOTO	_00113_DS_
_00112_DS_:
;	.line	282; lab1.c	BD0O.bytecount = MAX_PACKET_SIZE;	// ...get ready to receive the next Setup token...
	CALL	_ProcessOutToken
_00113_DS_:
	BANKSEL	_USB_error_flags
;	.line	284; lab1.c	BD0O.status = 0x84;					// ...and issue a protocol stall on EP0
	BTFSS	_USB_error_flags, 0, B
	GOTO	_00136_DS_
;	.line	285; lab1.c	}
	MOVLW	0x08
	BANKSEL	(_BD0O + 1)
	MOVWF	(_BD0O + 1), B
;	.line	286; lab1.c	}
	MOVLW	0x84
	BANKSEL	_BD0I
	MOVWF	_BD0I, B
;	.line	287; lab1.c	}
	MOVLW	0x84
	BANKSEL	_BD0O
	MOVWF	_BD0O, B
_00136_DS_:
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
S_lab1__InitUSB	code
_InitUSB:
;	.line	164; lab1.c	(void)*EP1_OUT_buffer;
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	165; lab1.c	(void)*EP1_IN_buffer;
	MOVFF	_EP0_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	166; lab1.c	(void)*EP2_OUT_buffer;
	MOVFF	_EP0_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	167; lab1.c	(void)*EP2_IN_buffer;
	MOVFF	_EP1_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	168; lab1.c	(void)*EP3_OUT_buffer;
	MOVFF	_EP1_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	169; lab1.c	(void)*EP3_IN_buffer;
	MOVFF	_EP2_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	170; lab1.c	(void)*EP4_OUT_buffer;
	MOVFF	_EP2_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	171; lab1.c	(void)*EP4_IN_buffer;
	MOVFF	_EP3_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	172; lab1.c	(void)*EP5_OUT_buffer;
	MOVFF	_EP3_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	173; lab1.c	(void)*EP5_IN_buffer;
	MOVFF	_EP4_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	174; lab1.c	(void)*EP6_OUT_buffer;
	MOVFF	_EP4_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	175; lab1.c	(void)*EP6_IN_buffer;
	MOVFF	_EP5_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	176; lab1.c	(void)*EP7_OUT_buffer;
	MOVFF	_EP5_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	177; lab1.c	(void)*EP7_IN_buffer;
	MOVFF	_EP6_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	178; lab1.c	(void)*EP8_OUT_buffer;
	MOVFF	_EP6_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	179; lab1.c	(void)*EP8_IN_buffer;
	MOVFF	_EP7_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	180; lab1.c	(void)*EP9_OUT_buffer;
	MOVFF	_EP7_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	181; lab1.c	(void)*EP9_IN_buffer;
	MOVFF	_EP8_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	182; lab1.c	(void)*EP10_OUT_buffer;
	MOVFF	_EP8_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	183; lab1.c	(void)*EP10_IN_buffer;
	MOVFF	_EP9_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	184; lab1.c	(void)*EP11_OUT_buffer;
	MOVFF	_EP9_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	185; lab1.c	(void)*EP11_IN_buffer;
	MOVFF	_EP10_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	186; lab1.c	(void)*EP12_OUT_buffer;
	MOVFF	_EP10_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	187; lab1.c	(void)*EP12_IN_buffer;
	MOVFF	_EP11_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	188; lab1.c	(void)*EP13_OUT_buffer;
	MOVFF	_EP11_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	189; lab1.c	(void)*EP13_IN_buffer;
	MOVFF	_EP12_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	190; lab1.c	(void)*EP14_OUT_buffer;
	MOVFF	_EP12_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	191; lab1.c	(void)*EP14_IN_buffer;
	MOVFF	_EP13_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	192; lab1.c	(void)*EP15_OUT_buffer;
	MOVFF	_EP13_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	193; lab1.c	(void)*EP15_IN_buffer;
	MOVFF	_EP14_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	194; lab1.c	UIE = 0x00;					// mask all USB interrupts
	MOVFF	_EP14_IN_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	195; lab1.c	UIR = 0x00;					// clear all USB interrupt flags
	MOVFF	_EP15_OUT_buffer, WREG
; ;;!!! pic16_aopOp:1306 called for a spillLocation -- assigning WREG instead --- CHECK
;	.line	196; lab1.c	UCFG = 0x10;				// configure USB for low-speed transfers and to use the on-chip transciever and pull-up resistor
	MOVFF	_EP15_IN_buffer, WREG
;	.line	197; lab1.c	UCON = 0x08;				// enable the USB module and its supporting circuitry
	CLRF	_UIE
;	.line	198; lab1.c	USB_curr_config = 0x00;
	CLRF	_UIR
;	.line	199; lab1.c	USB_USWSTAT = 0x00;			// default to powered state
	MOVLW	0x10
	MOVWF	_UCFG
;	.line	200; lab1.c	USB_device_status = 0x01;
	MOVLW	0x08
	MOVWF	_UCON
	BANKSEL	_USB_curr_config
;	.line	201; lab1.c	USB_dev_req = NO_REQUEST;	// No device requests in process
	CLRF	_USB_curr_config, B
	BANKSEL	_USB_USWSTAT
;	.line	202; lab1.c	TRISB = 0x00;
	CLRF	_USB_USWSTAT, B
;	.line	203; lab1.c	PORTB = 0xFF;
	MOVLW	0x01
	BANKSEL	_USB_device_status
	MOVWF	_USB_device_status, B
;	.line	204; lab1.c	while (UCONbits.SE0);		// wait for the first SE0 to end
	MOVLW	0xff
	BANKSEL	_USB_dev_req
	MOVWF	_USB_dev_req, B
;	.line	205; lab1.c	}
	CLRF	_TRISB
;	.line	206; lab1.c	
	MOVLW	0xff
	MOVWF	_PORTB
_00105_DS_:
;	.line	207; lab1.c	void ServiceUSB(void) {
	BTFSC	_UCONbits, 5
	GOTO	_00105_DS_
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block for Ival
	code
_Device:
	DB	0x12, 0x01, 0x10, 0x01, 0x00, 0x00, 0x00, 0x08, 0xd8, 0x04, 0x01, 0x00
	DB	0x00, 0x00, 0x01, 0x02, 0x00, 0x01
; ; Starting pCode block for Ival
_Configuration1:
	DB	0x09, 0x02, 0x12, 0x00, 0x01, 0x01, 0x00, 0xa0, 0x32, 0x09, 0x04, 0x00
	DB	0x00, 0x00, 0xff, 0x00, 0xff, 0x00
; ; Starting pCode block for Ival
_String0:
	DB	0x04, 0x03, 0x09, 0x04
; ; Starting pCode block for Ival
_String1:
	DB	0x36, 0x03, 0x4d, 0x00, 0x69, 0x00, 0x63, 0x00, 0x72, 0x00, 0x6f, 0x00
	DB	0x63, 0x00, 0x68, 0x00, 0x69, 0x00, 0x70, 0x00, 0x20, 0x00, 0x54, 0x00
	DB	0x65, 0x00, 0x63, 0x00, 0x68, 0x00, 0x6e, 0x00, 0x6f, 0x00, 0x6c, 0x00
	DB	0x6f, 0x00, 0x67, 0x00, 0x79, 0x00, 0x2c, 0x00, 0x20, 0x00, 0x49, 0x00
	DB	0x6e, 0x00, 0x63, 0x00, 0x2e, 0x00
; ; Starting pCode block for Ival
_String2:
	DB	0x44, 0x03, 0x45, 0x00, 0x4e, 0x00, 0x47, 0x00, 0x52, 0x00, 0x20, 0x00
	DB	0x32, 0x00, 0x32, 0x00, 0x31, 0x00, 0x30, 0x00, 0x20, 0x00, 0x50, 0x00
	DB	0x49, 0x00, 0x43, 0x00, 0x31, 0x00, 0x38, 0x00, 0x46, 0x00, 0x32, 0x00
	DB	0x34, 0x00, 0x35, 0x00, 0x35, 0x00, 0x20, 0x00, 0x55, 0x00, 0x53, 0x00
	DB	0x42, 0x00, 0x20, 0x00, 0x46, 0x00, 0x69, 0x00, 0x72, 0x00, 0x6d, 0x00
	DB	0x77, 0x00, 0x61, 0x00, 0x72, 0x00, 0x65, 0x00


; Statistics:
; code size:	 4240 (0x1090) bytes ( 3.23%)
;           	 2120 (0x0848) words
; udata size:	  408 (0x0198) bytes (22.77%)
; access size:	   12 (0x000c) bytes


	end
