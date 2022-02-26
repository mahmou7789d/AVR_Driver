	.file	"USART_File.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.USART_RXC_Complete_Callback,"ax",@progbits
.global	USART_RXC_Complete_Callback
	.type	USART_RXC_Complete_Callback, @function
USART_RXC_Complete_Callback:
.LFB0:
	.file 1 "../MCAL/CommuncationProtocols/USART_File.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
	sbiw r24,0
	breq .L1
	.loc 1 21 0
	sts CP_USART_RXC_Complete_User_ptr+1,r25
	sts CP_USART_RXC_Complete_User_ptr,r24
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	USART_RXC_Complete_Callback, .-USART_RXC_Complete_Callback
	.section	.text.USART_TXC_Complete_Callback,"ax",@progbits
.global	USART_TXC_Complete_Callback
	.type	USART_TXC_Complete_Callback, @function
USART_TXC_Complete_Callback:
.LFB1:
	.loc 1 25 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	sbiw r24,0
	breq .L7
	.loc 1 28 0
	sts CP_USART_TXC_Complete_User_ptr+1,r25
	sts CP_USART_TXC_Complete_User_ptr,r24
.L7:
	ret
	.cfi_endproc
.LFE1:
	.size	USART_TXC_Complete_Callback, .-USART_TXC_Complete_Callback
	.section	.text.USART_UDRE_Callback,"ax",@progbits
.global	USART_UDRE_Callback
	.type	USART_UDRE_Callback, @function
USART_UDRE_Callback:
.LFB2:
	.loc 1 32 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 33 0
	sbiw r24,0
	breq .L12
	.loc 1 35 0
	sts CP_USART_UDRE_User_ptr+1,r25
	sts CP_USART_UDRE_User_ptr,r24
.L12:
	ret
	.cfi_endproc
.LFE2:
	.size	USART_UDRE_Callback, .-USART_UDRE_Callback
	.section	.text.__vector_13,"ax",@progbits
.global	__vector_13
	.type	__vector_13, @function
__vector_13:
.LFB3:
	.loc 1 40 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 41 0
	lds r30,CP_USART_RXC_Complete_User_ptr
	lds r31,CP_USART_RXC_Complete_User_ptr+1
	sbiw r30,0
	breq .L17
	.loc 1 43 0
	icall
.LVL3:
.L17:
/* epilogue start */
	.loc 1 45 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE3:
	.size	__vector_13, .-__vector_13
	.section	.text.__vector_15,"ax",@progbits
.global	__vector_15
	.type	__vector_15, @function
__vector_15:
.LFB4:
	.loc 1 47 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 48 0
	lds r30,CP_USART_TXC_Complete_User_ptr
	lds r31,CP_USART_TXC_Complete_User_ptr+1
	sbiw r30,0
	breq .L22
	.loc 1 50 0
	icall
.LVL4:
.L22:
/* epilogue start */
	.loc 1 52 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE4:
	.size	__vector_15, .-__vector_15
	.section	.text.__vector_14,"ax",@progbits
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
.LFB5:
	.loc 1 54 0
	.cfi_startproc
	push r1
.LCFI28:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI29:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI30:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI31:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI32:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI33:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI34:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI35:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI36:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI37:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI38:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI39:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI40:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI41:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 55 0
	lds r30,CP_USART_UDRE_User_ptr
	lds r31,CP_USART_UDRE_User_ptr+1
	sbiw r30,0
	breq .L27
	.loc 1 57 0
	icall
.LVL5:
.L27:
/* epilogue start */
	.loc 1 59 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE5:
	.size	__vector_14, .-__vector_14
.global	__floatunsisf
.global	__mulsf3
.global	__divsf3
.global	__subsf3
.global	__fixunssfsi
.global	__addsf3
	.section	.text.USART_Init,"ax",@progbits
.global	USART_Init
	.type	USART_Init, @function
USART_Init:
.LFB6:
	.loc 1 67 0
	.cfi_startproc
	push r2
.LCFI42:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI43:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI44:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI45:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI46:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI47:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI48:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI49:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI50:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI51:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI52:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI53:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI54:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI55:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI56:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI57:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI58:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI59:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
.LVL6:
	lds r30,USART0
	subi r30,lo8(-(-1))
	cpi r30,lo8(3)
	brlo .+2
	rjmp .L64
	ldi r31,0
	subi r30,lo8(-(CSWTCH.12))
	sbci r31,hi8(-(CSWTCH.12))
	ld r28,Z
.LVL7:
	.loc 1 93 0
	lds r24,USART0+1
	cpi r24,lo8(1)
	brne .+2
	rjmp .L35
.L71:
	cpi r24,lo8(1)
	brsh .+2
	rjmp .L36
	cpi r24,lo8(2)
	brne .+2
	rjmp .L37
	ldi r24,lo8(58)
	mov r3,r24
	ldi r25,lo8(50)
	mov r4,r25
	ldi r18,lo8(42)
	mov r5,r18
	ldi r19,lo8(34)
	mov r6,r19
	ldi r20,lo8(10)
	mov r7,r20
	ldi r21,lo8(60)
	mov r9,r21
	ldi r22,lo8(52)
	mov r10,r22
	ldi r23,lo8(44)
	mov r11,r23
	ldi r30,lo8(36)
	mov r12,r30
	ldi r31,lo8(12)
	mov r13,r31
	ldi r26,lo8(62)
	mov r15,r26
	ldi r16,lo8(54)
	ldi r17,lo8(46)
	ldi r29,lo8(38)
	ldi r27,lo8(14)
	ldi r31,lo8(56)
	ldi r30,lo8(48)
	ldi r21,lo8(40)
	ldi r20,lo8(32)
	ldi r19,lo8(8)
	ldi r26,lo8(6)
	ldi r24,lo8(4)
	mov r14,r24
	ldi r25,lo8(2)
	mov r8,r25
	clr r2
	inc r2
	ldi r22,0
	ldi r23,0
	.loc 1 70 0
	ldi r25,0
	.loc 1 68 0
	ldi r18,0
.LVL8:
.L34:
	.loc 1 127 0
	lds r24,USART0+2
	cpi r24,lo8(1)
	brne .L40
.LVL9:
	.loc 1 133 0
	mov r18,r2
.LVL10:
.L40:
	.loc 1 138 0
	lds r24,USART0+3
	cpi r24,lo8(3)
	brne .+2
	rjmp .L43
	brsh .+2
	rjmp .L69
	cpi r24,lo8(6)
	brne .+2
	rjmp .L47
	cpi r24,lo8(7)
	brne .+2
	rjmp .L48
	cpi r24,lo8(5)
	brne .+2
	rjmp .L70
.L42:
	.loc 1 168 0
	lds r24,USART0+4
	cpi r24,lo8(2)
	brne .+2
	rjmp .L51
.L74:
	cpi r24,lo8(3)
	brlo .+2
	rjmp .L52
	tst r24
	brne .+2
	rjmp .L53
	cpi r24,lo8(1)
	brne .L50
	.loc 1 176 0
	andi r28,lo8(-5)
.LVL11:
	.loc 1 179 0
	mov r31,r3
	mov r30,r4
	mov r21,r5
	mov r20,r6
	mov r19,r7
	.loc 1 178 0
	mov r25,r8
.LVL12:
.L50:
	.loc 1 199 0
	lds r24,USART0+5
	cpi r24,lo8(3)
	brne .+2
	rjmp .L58
.L73:
	cpi r24,lo8(4)
	brlo .+2
	rjmp .L59
	cpi r24,lo8(1)
	brne .+2
	rjmp .L60
	cpi r24,lo8(2)
	brne .L57
.LVL13:
	.loc 1 214 0
	mov r25,r20
.LVL14:
.L57:
	.loc 1 234 0
	out 0x20,r23
	.loc 1 235 0
	out 0x9,r22
	.loc 1 236 0
	out 0xb,r18
	.loc 1 237 0
	out 0x20,r25
	.loc 1 238 0
	out 0xa,r28
/* epilogue start */
	.loc 1 239 0
	pop r29
	pop r28
.LVL15:
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	ret
.LVL16:
.L64:
	.loc 1 72 0
	ldi r28,0
.LVL17:
	.loc 1 93 0
	lds r24,USART0+1
	cpi r24,lo8(1)
	breq .+2
	rjmp .L71
.L35:
.LVL18:
	.loc 1 105 0
	lds r22,USART0+7
	lds r23,USART0+7+1
	lds r24,USART0+7+2
	lds r25,USART0+7+3
	call __floatunsisf
.LVL19:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(65)
	call __mulsf3
.LVL20:
	movw r18,r22
	movw r20,r24
	ldi r22,0
	ldi r23,lo8(36)
	ldi r24,lo8(116)
	ldi r25,lo8(75)
	call __divsf3
.LVL21:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __subsf3
.LVL22:
	call __fixunssfsi
.LVL23:
	.loc 1 106 0
	ldi r18,lo8(58)
	mov r3,r18
	ldi r19,lo8(50)
	mov r4,r19
	ldi r20,lo8(42)
	mov r5,r20
	ldi r21,lo8(34)
	mov r6,r21
	ldi r30,lo8(10)
	mov r7,r30
	ldi r31,lo8(60)
	mov r9,r31
	ldi r26,lo8(52)
	mov r10,r26
	ldi r27,lo8(44)
	mov r11,r27
	ldi r29,lo8(36)
	mov r12,r29
	ldi r17,lo8(12)
	mov r13,r17
	ldi r16,lo8(62)
	mov r15,r16
	ldi r16,lo8(54)
	ldi r17,lo8(46)
	ldi r29,lo8(38)
	ldi r27,lo8(14)
	ldi r31,lo8(56)
	ldi r30,lo8(48)
	ldi r21,lo8(40)
	ldi r20,lo8(32)
	ldi r19,lo8(8)
	ldi r26,lo8(6)
	ldi r24,lo8(4)
	mov r14,r24
	ldi r25,lo8(2)
	mov r8,r25
	ldi r18,lo8(3)
	mov r2,r18
	.loc 1 104 0
	ldi r25,0
	.loc 1 103 0
	ldi r18,lo8(2)
	.loc 1 106 0
	rjmp .L34
.LVL24:
.L37:
	.loc 1 110 0
	lds r22,USART0+7
	lds r23,USART0+7+1
	lds r24,USART0+7+2
	lds r25,USART0+7+3
	call __floatunsisf
.LVL25:
	movw r18,r22
	movw r20,r24
	call __addsf3
.LVL26:
	movw r18,r22
	movw r20,r24
	ldi r22,0
	ldi r23,lo8(36)
	ldi r24,lo8(116)
	ldi r25,lo8(75)
	call __divsf3
.LVL27:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __subsf3
.LVL28:
	.loc 1 111 0
	lds r18,USART0+6
	cpi r18,lo8(1)
	breq .+2
	rjmp .L72
.LVL29:
	call __fixunssfsi
.LVL30:
	.loc 1 118 0
	ldi r18,lo8(123)
	mov r3,r18
	ldi r19,lo8(115)
	mov r4,r19
	ldi r20,lo8(107)
	mov r5,r20
	ldi r21,lo8(99)
	mov r6,r21
	ldi r30,lo8(75)
	mov r7,r30
	ldi r31,lo8(125)
	mov r9,r31
	ldi r26,lo8(117)
	mov r10,r26
	ldi r27,lo8(109)
	mov r11,r27
	ldi r29,lo8(101)
	mov r12,r29
	ldi r17,lo8(77)
	mov r13,r17
	ldi r16,lo8(127)
	mov r15,r16
	ldi r16,lo8(119)
	ldi r17,lo8(111)
	ldi r29,lo8(103)
	ldi r27,lo8(79)
	ldi r31,lo8(121)
	ldi r30,lo8(113)
	ldi r21,lo8(105)
	ldi r20,lo8(97)
	ldi r19,lo8(73)
	ldi r26,lo8(71)
	ldi r24,lo8(69)
	mov r14,r24
	ldi r25,lo8(67)
	mov r8,r25
	clr r2
	inc r2
	.loc 1 117 0
	ldi r25,lo8(65)
	.loc 1 109 0
	ldi r18,0
	.loc 1 118 0
	rjmp .L34
.LVL31:
.L59:
	.loc 1 199 0
	cpi r24,lo8(4)
	brne .+2
	rjmp .L62
	cpi r24,lo8(5)
	breq .+2
	rjmp .L57
.LVL32:
	.loc 1 229 0
	mov r25,r31
	.loc 1 230 0
	rjmp .L57
.LVL33:
.L52:
	.loc 1 168 0
	cpi r24,lo8(3)
	brne .+2
	rjmp .L55
	cpi r24,lo8(4)
	breq .+2
	rjmp .L50
	.loc 1 191 0
	ori r28,lo8(4)
.LVL34:
.L68:
	.loc 1 194 0
	mov r31,r15
	mov r30,r16
	mov r21,r17
	mov r20,r29
	mov r19,r27
	.loc 1 193 0
	mov r25,r26
	.loc 1 199 0
	lds r24,USART0+5
	cpi r24,lo8(3)
	breq .+2
	rjmp .L73
.LVL35:
.L58:
	.loc 1 219 0
	mov r25,r21
	.loc 1 220 0
	rjmp .L57
.LVL36:
.L69:
	.loc 1 138 0
	cpi r24,lo8(1)
	brne .+2
	rjmp .L45
	cpi r24,lo8(2)
	breq .+2
	rjmp .L42
	.loc 1 147 0
	ori r28,lo8(64)
.LVL37:
	.loc 1 168 0
	lds r24,USART0+4
	cpi r24,lo8(2)
	breq .+2
	rjmp .L74
.L51:
	.loc 1 181 0
	andi r28,lo8(-5)
.LVL38:
	.loc 1 184 0
	mov r31,r9
	mov r30,r10
	mov r21,r11
	mov r20,r12
	mov r19,r13
	.loc 1 183 0
	mov r25,r14
	.loc 1 184 0
	rjmp .L50
.LVL39:
.L36:
	.loc 1 99 0
	lds r22,USART0+7
	lds r23,USART0+7+1
	lds r24,USART0+7+2
	lds r25,USART0+7+3
	call __floatunsisf
.LVL40:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-128)
	ldi r21,lo8(65)
	call __mulsf3
.LVL41:
	movw r18,r22
	movw r20,r24
	ldi r22,0
	ldi r23,lo8(36)
	ldi r24,lo8(116)
	ldi r25,lo8(75)
	call __divsf3
.LVL42:
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __subsf3
.LVL43:
	call __fixunssfsi
.LVL44:
	.loc 1 100 0
	ldi r19,lo8(58)
	mov r3,r19
	ldi r20,lo8(50)
	mov r4,r20
	ldi r21,lo8(42)
	mov r5,r21
	ldi r30,lo8(34)
	mov r6,r30
	ldi r31,lo8(10)
	mov r7,r31
	ldi r26,lo8(60)
	mov r9,r26
	ldi r27,lo8(52)
	mov r10,r27
	ldi r29,lo8(44)
	mov r11,r29
	ldi r17,lo8(36)
	mov r12,r17
	ldi r16,lo8(12)
	mov r13,r16
	ldi r24,lo8(62)
	mov r15,r24
	ldi r16,lo8(54)
	ldi r17,lo8(46)
	ldi r29,lo8(38)
	ldi r27,lo8(14)
	ldi r31,lo8(56)
	ldi r30,lo8(48)
	ldi r21,lo8(40)
	ldi r20,lo8(32)
	ldi r19,lo8(8)
	ldi r26,lo8(6)
	ldi r25,lo8(4)
	mov r14,r25
	ldi r18,lo8(2)
	mov r8,r18
	clr r2
	inc r2
	.loc 1 98 0
	ldi r25,0
	.loc 1 97 0
	ldi r18,0
	.loc 1 100 0
	rjmp .L34
.LVL45:
.L72:
	call __fixunssfsi
.LVL46:
	.loc 1 111 0
	ldi r18,lo8(122)
	mov r3,r18
	ldi r19,lo8(114)
	mov r4,r19
	ldi r20,lo8(106)
	mov r5,r20
	ldi r21,lo8(98)
	mov r6,r21
	ldi r30,lo8(74)
	mov r7,r30
	ldi r31,lo8(124)
	mov r9,r31
	ldi r26,lo8(116)
	mov r10,r26
	ldi r27,lo8(108)
	mov r11,r27
	ldi r29,lo8(100)
	mov r12,r29
	ldi r17,lo8(76)
	mov r13,r17
	ldi r16,lo8(126)
	mov r15,r16
	ldi r16,lo8(118)
	ldi r17,lo8(110)
	ldi r29,lo8(102)
	ldi r27,lo8(78)
	ldi r31,lo8(120)
	ldi r30,lo8(112)
	ldi r21,lo8(104)
	ldi r20,lo8(96)
	ldi r19,lo8(72)
	ldi r26,lo8(70)
	ldi r24,lo8(68)
	mov r14,r24
	ldi r25,lo8(66)
	mov r8,r25
	clr r2
	inc r2
	.loc 1 108 0
	ldi r25,lo8(64)
	.loc 1 109 0
	ldi r18,0
	rjmp .L34
.LVL47:
.L70:
	.loc 1 154 0
	ori r28,lo8(-96)
.LVL48:
	.loc 1 155 0
	rjmp .L42
.L55:
	.loc 1 186 0
	andi r28,lo8(-5)
.LVL49:
	rjmp .L68
.LVL50:
.L53:
	.loc 1 171 0
	andi r28,lo8(-5)
.LVL51:
	.loc 1 174 0
	rjmp .L50
.L62:
.LVL52:
	.loc 1 224 0
	mov r25,r30
	.loc 1 225 0
	rjmp .L57
.LVL53:
.L60:
	.loc 1 209 0
	mov r25,r19
	.loc 1 210 0
	rjmp .L57
.LVL54:
.L45:
	.loc 1 144 0
	ori r28,lo8(-128)
.LVL55:
	.loc 1 145 0
	rjmp .L42
.L48:
.LVL56:
	.loc 1 163 0
	ori r28,lo8(-32)
.LVL57:
	.loc 1 164 0
	rjmp .L42
.L47:
.LVL58:
	.loc 1 158 0
	ori r28,lo8(96)
.LVL59:
	.loc 1 159 0
	rjmp .L42
.L43:
	.loc 1 150 0
	ori r28,lo8(32)
.LVL60:
	.loc 1 151 0
	rjmp .L42
	.cfi_endproc
.LFE6:
	.size	USART_Init, .-USART_Init
	.section	.text.USART_Send_ByteOfData_Blocking,"ax",@progbits
.global	USART_Send_ByteOfData_Blocking
	.type	USART_Send_ByteOfData_Blocking, @function
USART_Send_ByteOfData_Blocking:
.LFB7:
	.loc 1 242 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL61:
.L77:
	.loc 1 243 0 discriminator 1
	sbis 0xb,5
	rjmp .L77
	.loc 1 244 0
	lds r18,USART0+4
	cpi r18,lo8(4)
	brne .L78
	.loc 1 251 0
	in r20,0xa
	andi r20,lo8(-2)
	movw r18,r24
	clr r18
	andi r19,1
	or r20,r19
	out 0xa,r20
.L78:
	.loc 1 253 0
	out 0xc,r24
	ret
	.cfi_endproc
.LFE7:
	.size	USART_Send_ByteOfData_Blocking, .-USART_Send_ByteOfData_Blocking
	.section	.text.USART_Send_ByteOfData_NonBlocking,"ax",@progbits
.global	USART_Send_ByteOfData_NonBlocking
	.type	USART_Send_ByteOfData_NonBlocking, @function
USART_Send_ByteOfData_NonBlocking:
.LFB8:
	.loc 1 256 0
	.cfi_startproc
.LVL62:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 257 0
	sbis 0xb,5
	rjmp .L79
	.loc 1 259 0
	lds r18,USART0+4
	cpi r18,lo8(4)
	breq .L85
	.loc 1 268 0
	out 0xc,r24
.L79:
	ret
.L85:
	.loc 1 266 0
	in r20,0xa
	andi r20,lo8(-2)
	movw r18,r24
	clr r18
	andi r19,1
	or r20,r19
	out 0xa,r20
	.loc 1 268 0
	out 0xc,r24
	rjmp .L79
	.cfi_endproc
.LFE8:
	.size	USART_Send_ByteOfData_NonBlocking, .-USART_Send_ByteOfData_NonBlocking
	.section	.text.USART_Receive_ByteOfData_Blocking,"ax",@progbits
.global	USART_Receive_ByteOfData_Blocking
	.type	USART_Receive_ByteOfData_Blocking, @function
USART_Receive_ByteOfData_Blocking:
.LFB9:
	.loc 1 273 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L88:
	.loc 1 275 0 discriminator 1
	sbis 0xb,7
	rjmp .L88
	.loc 1 276 0
	in r23,0xb
	in r30,0xb
	in r22,0xb
	bst r30,3
	clr r24
	bld r24,0
	ldi r25,0
	bst r23,4
	clr r20
	bld r20,0
	ldi r21,0
	or r24,r20
	or r25,r21
	bst r22,2
	clr r18
	bld r18,0
	ldi r19,0
	or r24,r18
	or r25,r19
	or r24,r25
	breq .L89
	.loc 1 279 0
	sbis 0xb,4
	rjmp .L90
	.loc 1 281 0
	ldi r24,lo8(3)
	sts USART0+11,r24
.L89:
	.loc 1 292 0
	lds r24,USART0+4
	cpi r24,lo8(4)
	brne .L92
	.loc 1 294 0
	in r24,0xa
.LVL63:
.L92:
	.loc 1 296 0
	in r24,0xc
.LVL64:
	.loc 1 299 0
	ldi r25,0
	ret
.LVL65:
.L90:
	.loc 1 283 0
	sbis 0xb,3
	rjmp .L91
	.loc 1 285 0
	ldi r24,lo8(2)
	sts USART0+11,r24
	rjmp .L89
.L91:
	.loc 1 287 0
	sbis 0xb,2
	rjmp .L89
	.loc 1 289 0
	ldi r24,lo8(1)
	sts USART0+11,r24
	rjmp .L89
	.cfi_endproc
.LFE9:
	.size	USART_Receive_ByteOfData_Blocking, .-USART_Receive_ByteOfData_Blocking
	.section	.text.USART_Receive_ByteOfData_NonBlocking,"ax",@progbits
.global	USART_Receive_ByteOfData_NonBlocking
	.type	USART_Receive_ByteOfData_NonBlocking, @function
USART_Receive_ByteOfData_NonBlocking:
.LFB10:
	.loc 1 301 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL66:
	.loc 1 303 0
	sbis 0xb,7
	rjmp .L105
	.loc 1 305 0
	in r23,0xb
	in r30,0xb
	in r22,0xb
	bst r30,3
	clr r24
	bld r24,0
	ldi r25,0
	bst r23,4
	clr r20
	bld r20,0
	ldi r21,0
	or r24,r20
	or r25,r21
	bst r22,2
	clr r18
	bld r18,0
	ldi r19,0
	or r24,r18
	or r25,r19
	or r24,r25
	breq .L101
	.loc 1 308 0
	sbic 0xb,4
	rjmp .L112
	.loc 1 312 0
	sbis 0xb,3
	rjmp .L103
	.loc 1 314 0
	ldi r24,lo8(2)
	sts USART0+11,r24
.L101:
	.loc 1 321 0
	lds r24,USART0+4
	cpi r24,lo8(4)
	breq .L113
.L104:
	.loc 1 326 0
	in r24,0xc
	ldi r25,0
.LVL67:
	ret
.LVL68:
.L105:
	.loc 1 302 0
	ldi r24,0
	ldi r25,0
.LVL69:
	.loc 1 329 0
	ret
.LVL70:
.L113:
	.loc 1 324 0
	in r24,0xa
	.loc 1 326 0
	in r24,0xc
	ldi r25,0
.LVL71:
	ret
.LVL72:
.L112:
	.loc 1 310 0
	ldi r24,lo8(3)
	sts USART0+11,r24
	.loc 1 321 0
	lds r24,USART0+4
	cpi r24,lo8(4)
	brne .L104
	rjmp .L113
.L103:
	.loc 1 316 0
	sbis 0xb,2
	rjmp .L101
	.loc 1 318 0
	ldi r24,lo8(1)
	sts USART0+11,r24
	rjmp .L101
	.cfi_endproc
.LFE10:
	.size	USART_Receive_ByteOfData_NonBlocking, .-USART_Receive_ByteOfData_NonBlocking
	.section	.rodata.CSWTCH.12,"a",@progbits
	.type	CSWTCH.12, @object
	.size	CSWTCH.12, 3
CSWTCH.12:
	.byte	16
	.byte	8
	.byte	24
.global	USART0
	.section	.bss.USART0,"aw",@nobits
	.type	USART0, @object
	.size	USART0, 12
USART0:
	.zero	12
	.section	.bss.CP_USART_UDRE_User_ptr,"aw",@nobits
	.type	CP_USART_UDRE_User_ptr, @object
	.size	CP_USART_UDRE_User_ptr, 2
CP_USART_UDRE_User_ptr:
	.zero	2
	.section	.bss.CP_USART_TXC_Complete_User_ptr,"aw",@nobits
	.type	CP_USART_TXC_Complete_User_ptr, @object
	.size	CP_USART_TXC_Complete_User_ptr, 2
CP_USART_TXC_Complete_User_ptr:
	.zero	2
	.section	.bss.CP_USART_RXC_Complete_User_ptr,"aw",@nobits
	.type	CP_USART_RXC_Complete_User_ptr, @object
	.size	CP_USART_RXC_Complete_User_ptr, 2
CP_USART_RXC_Complete_User_ptr:
	.zero	2
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/CommuncationProtocols/USART_File.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4cd
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF91
	.byte	0x1
	.long	.LASF92
	.long	.LASF93
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0xd
	.long	0x42
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0xe
	.long	0x54
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0xf
	.long	0x66
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x10
	.long	0x30
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x2
	.byte	0x18
	.long	0x29
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x11
	.long	0xc8
	.uleb128 0x5
	.long	.LASF16
	.sleb128 0
	.uleb128 0x5
	.long	.LASF17
	.sleb128 1
	.uleb128 0x5
	.long	.LASF18
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x3
	.byte	0x15
	.long	0xad
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x18
	.long	0xf4
	.uleb128 0x5
	.long	.LASF20
	.sleb128 0
	.uleb128 0x5
	.long	.LASF21
	.sleb128 1
	.uleb128 0x5
	.long	.LASF22
	.sleb128 2
	.uleb128 0x5
	.long	.LASF23
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.long	.LASF24
	.byte	0x3
	.byte	0x1d
	.long	0xd3
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x20
	.long	0x138
	.uleb128 0x5
	.long	.LASF25
	.sleb128 0
	.uleb128 0x5
	.long	.LASF26
	.sleb128 1
	.uleb128 0x5
	.long	.LASF27
	.sleb128 2
	.uleb128 0x5
	.long	.LASF28
	.sleb128 3
	.uleb128 0x5
	.long	.LASF29
	.sleb128 4
	.uleb128 0x5
	.long	.LASF30
	.sleb128 5
	.uleb128 0x5
	.long	.LASF31
	.sleb128 6
	.uleb128 0x5
	.long	.LASF32
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.long	.LASF33
	.byte	0x3
	.byte	0x29
	.long	0xff
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2b
	.long	0x16a
	.uleb128 0x5
	.long	.LASF34
	.sleb128 0
	.uleb128 0x5
	.long	.LASF35
	.sleb128 1
	.uleb128 0x5
	.long	.LASF36
	.sleb128 2
	.uleb128 0x5
	.long	.LASF37
	.sleb128 3
	.uleb128 0x5
	.long	.LASF38
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x3
	.byte	0x31
	.long	0x143
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x34
	.long	0x18a
	.uleb128 0x5
	.long	.LASF40
	.sleb128 0
	.uleb128 0x5
	.long	.LASF41
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x3
	.byte	0x37
	.long	0x175
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3a
	.long	0x1b6
	.uleb128 0x5
	.long	.LASF43
	.sleb128 0
	.uleb128 0x5
	.long	.LASF44
	.sleb128 1
	.uleb128 0x5
	.long	.LASF45
	.sleb128 2
	.uleb128 0x5
	.long	.LASF46
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.long	.LASF47
	.byte	0x3
	.byte	0x3f
	.long	0x195
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x42
	.long	0x1d6
	.uleb128 0x5
	.long	.LASF48
	.sleb128 0
	.uleb128 0x5
	.long	.LASF49
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x3
	.byte	0x45
	.long	0x1c1
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x48
	.long	0x20e
	.uleb128 0x5
	.long	.LASF51
	.sleb128 0
	.uleb128 0x5
	.long	.LASF52
	.sleb128 1
	.uleb128 0x5
	.long	.LASF53
	.sleb128 2
	.uleb128 0x5
	.long	.LASF54
	.sleb128 3
	.uleb128 0x5
	.long	.LASF55
	.sleb128 4
	.uleb128 0x5
	.long	.LASF56
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x3
	.byte	0x4f
	.long	0x1e1
	.uleb128 0x6
	.byte	0xc
	.byte	0x3
	.byte	0x51
	.long	0x2a0
	.uleb128 0x7
	.long	.LASF58
	.byte	0x3
	.byte	0x53
	.long	0xf4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x3
	.byte	0x54
	.long	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF60
	.byte	0x3
	.byte	0x55
	.long	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF61
	.byte	0x3
	.byte	0x56
	.long	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF62
	.byte	0x3
	.byte	0x57
	.long	0x16a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF63
	.byte	0x3
	.byte	0x58
	.long	0x20e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x7
	.long	.LASF64
	.byte	0x3
	.byte	0x59
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.long	.LASF65
	.byte	0x3
	.byte	0x5a
	.long	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.long	.LASF66
	.byte	0x3
	.byte	0x5b
	.long	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0x3
	.byte	0x5c
	.long	0x219
	.uleb128 0x8
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2d8
	.uleb128 0x9
	.long	.LASF70
	.byte	0x1
	.byte	0x11
	.long	0x2da
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.uleb128 0xb
	.byte	0x2
	.long	0x2d8
	.uleb128 0x8
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x30d
	.uleb128 0x9
	.long	.LASF71
	.byte	0x1
	.byte	0x18
	.long	0x2da
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x33a
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.byte	0x1f
	.long	0x2da
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST0
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.long	.LLST1
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x35
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST2
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0x42
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST3
	.byte	0x1
	.long	0x3d3
	.uleb128 0xe
	.long	.LASF78
	.byte	0x1
	.byte	0x44
	.long	0x37
	.long	.LLST4
	.uleb128 0xe
	.long	.LASF79
	.byte	0x1
	.byte	0x45
	.long	0x37
	.long	.LLST5
	.uleb128 0xe
	.long	.LASF80
	.byte	0x1
	.byte	0x46
	.long	0x37
	.long	.LLST6
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.byte	0x47
	.long	0x9b
	.long	.LLST7
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xf1
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x400
	.uleb128 0x9
	.long	.LASF83
	.byte	0x1
	.byte	0xf1
	.long	0x5b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x42d
	.uleb128 0x9
	.long	.LASF83
	.byte	0x1
	.byte	0xff
	.long	0x5b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.word	0x110
	.long	0x5b
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x45c
	.uleb128 0x10
	.long	.LASF86
	.byte	0x1
	.word	0x112
	.long	0x5b
	.long	.LLST8
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF87
	.byte	0x1
	.word	0x12c
	.long	0x5b
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x48b
	.uleb128 0x10
	.long	.LASF86
	.byte	0x1
	.word	0x12e
	.long	0x5b
	.long	.LLST9
	.byte	0
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.byte	0xd
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	CP_USART_RXC_Complete_User_ptr
	.uleb128 0x11
	.long	.LASF89
	.byte	0x1
	.byte	0xe
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	CP_USART_TXC_Complete_User_ptr
	.uleb128 0x11
	.long	.LASF90
	.byte	0x1
	.byte	0xf
	.long	0x2da
	.byte	0x5
	.byte	0x3
	.long	CP_USART_UDRE_User_ptr
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.byte	0x3e
	.long	0x2a0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USART0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB3
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LFB4
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST2:
	.long	.LFB5
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI41
	.long	.LFE5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST3:
	.long	.LFB6
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI59
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x62
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x52
	.long	.LVL10
	.long	.LVL16
	.word	0x1
	.byte	0x62
	.long	.LVL16
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL24
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL24
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL39
	.word	0x1
	.byte	0x62
	.long	.LVL39
	.long	.LVL47
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LFE6
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL15
	.word	0x1
	.byte	0x6c
	.long	.LVL15
	.long	.LVL16
	.word	0x2
	.byte	0x8
	.byte	0x2a
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL47
	.word	0x1
	.byte	0x6c
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.long	.LVL48
	.long	.LVL56
	.word	0x1
	.byte	0x6c
	.long	.LVL56
	.long	.LVL57
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x9
	.byte	0xc0
	.byte	0x21
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x6c
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL59
	.long	.LFE6
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x58
	.long	.LVL13
	.long	.LVL14
	.word	0x1
	.byte	0x64
	.long	.LVL16
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL29
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.word	0x3
	.byte	0x8
	.byte	0x41
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.word	0x1
	.byte	0x6f
	.long	.LVL34
	.long	.LVL35
	.word	0x1
	.byte	0x6a
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x65
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x5e
	.long	.LVL39
	.long	.LVL45
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47
	.word	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL49
	.long	.LVL50
	.word	0x1
	.byte	0x6a
	.long	.LVL52
	.long	.LVL53
	.word	0x1
	.byte	0x6e
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.long	.LVL18
	.long	.LVL19-1
	.word	0x23
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x4b742400
	.byte	0x3
	.long	USART0+7
	.byte	0x6
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x41000000
	.byte	0x1e
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.long	.LVL24
	.long	.LVL28
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.long	.LVL28
	.long	.LVL30-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL39
	.long	.LVL40-1
	.word	0x23
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x4b742400
	.byte	0x3
	.long	USART0+7
	.byte	0x6
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x41800000
	.byte	0x1e
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x3f000000
	.byte	0x1c
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46-1
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL63
	.long	.LVL64
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL66
	.long	.LVL67
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL69
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL72
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LFE10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"CP_USART_RXC_Complete_User_ptr"
.LASF63:
	.string	"Frame_Control"
.LASF18:
	.string	"USART_Sync_Master"
.LASF21:
	.string	"USART_Receiver"
.LASF20:
	.string	"USART_Disable"
.LASF81:
	.string	"UBBR_Temp"
.LASF94:
	.string	"USART0"
.LASF69:
	.string	"USART_TXC_Complete_Callback"
.LASF73:
	.string	"USART_UDRE_User_ptr"
.LASF71:
	.string	"USART_TXC_Complete_User_ptr"
.LASF33:
	.string	"USART_Interrupt_Source"
.LASF55:
	.string	"USART_Parity_Odd_1StopBit"
.LASF11:
	.string	"short int"
.LASF77:
	.string	"USART_Init"
.LASF59:
	.string	"Communcation_Mode"
.LASF86:
	.string	"Recived_Data"
.LASF22:
	.string	"USART_Transmitter"
.LASF45:
	.string	"USART_DataOverRunError"
.LASF70:
	.string	"USART_RXC_Complete_User_ptr"
.LASF53:
	.string	"USART_Parity_Even_1StopBit"
.LASF32:
	.string	"USART_All_Interrupt_Enable"
.LASF52:
	.string	"USART_Parity_Disable_2StopBit"
.LASF37:
	.string	"Size_8bit"
.LASF29:
	.string	"USART_Rx_Tx_Complete_Enable"
.LASF6:
	.string	"uint_16"
.LASF57:
	.string	"USART_Frame_Control"
.LASF31:
	.string	"USART_Tx_Complete_UDR_Enable"
.LASF4:
	.string	"uint8"
.LASF93:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF44:
	.string	"USART_ParityError"
.LASF78:
	.string	"UCSRA_Temp"
.LASF0:
	.string	"float"
.LASF8:
	.string	"uint_32"
.LASF13:
	.string	"long long int"
.LASF17:
	.string	"USART_Asyn_DoupleSpeed"
.LASF12:
	.string	"long int"
.LASF47:
	.string	"USART_ErrorsType"
.LASF34:
	.string	"Size_5bit"
.LASF64:
	.string	"Clock_Parity"
.LASF83:
	.string	"Data"
.LASF38:
	.string	"Size_9bit"
.LASF56:
	.string	"USART_Parity_Odd_2StopBit"
.LASF49:
	.string	"USART_SamplingOnRising"
.LASF14:
	.string	"float_32"
.LASF79:
	.string	"UCSRB_Temp"
.LASF5:
	.string	"unsigned char"
.LASF91:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF58:
	.string	"Micro_State"
.LASF3:
	.string	"uint_8"
.LASF90:
	.string	"CP_USART_UDRE_User_ptr"
.LASF10:
	.string	"signed char"
.LASF84:
	.string	"USART_Send_ByteOfData_NonBlocking"
.LASF9:
	.string	"long long unsigned int"
.LASF66:
	.string	"Error_Type"
.LASF27:
	.string	"USART_TxComplete_Enable"
.LASF40:
	.string	"USART_SingleProcessor"
.LASF7:
	.string	"short unsigned int"
.LASF19:
	.string	"USART_Mode"
.LASF2:
	.string	"char"
.LASF87:
	.string	"USART_Receive_ByteOfData_NonBlocking"
.LASF35:
	.string	"Size_6bit"
.LASF43:
	.string	"USART_NoError"
.LASF23:
	.string	"USART_Receiver_Transmitter"
.LASF50:
	.string	"USART_Clock_Parity"
.LASF92:
	.string	"../MCAL/CommuncationProtocols/USART_File.c"
.LASF67:
	.string	"USART_Configuration"
.LASF1:
	.string	"long unsigned int"
.LASF75:
	.string	"__vector_15"
.LASF41:
	.string	"USART_MultiProcessor"
.LASF15:
	.string	"double"
.LASF85:
	.string	"USART_Receive_ByteOfData_Blocking"
.LASF80:
	.string	"UCSRC_Temp"
.LASF54:
	.string	"USART_Parity_Even_2StopBit"
.LASF51:
	.string	"USART_Parity_Disable_1StopBit"
.LASF42:
	.string	"USART_Communication_Processor"
.LASF65:
	.string	"Baud_Rate"
.LASF89:
	.string	"CP_USART_TXC_Complete_User_ptr"
.LASF72:
	.string	"USART_UDRE_Callback"
.LASF82:
	.string	"USART_Send_ByteOfData_Blocking"
.LASF39:
	.string	"USART_Character_Size"
.LASF60:
	.string	"Communication_Processor"
.LASF25:
	.string	"USART_Interrupt_Disable"
.LASF16:
	.string	"USART_Asyn_Normal"
.LASF74:
	.string	"__vector_13"
.LASF48:
	.string	"USART_SamplingOnFaling"
.LASF76:
	.string	"__vector_14"
.LASF61:
	.string	"Interrupt_Source"
.LASF36:
	.string	"Size_7bit"
.LASF30:
	.string	"USART_RX_Complete_UDR_Enable"
.LASF62:
	.string	"Character_Size"
.LASF28:
	.string	"USART_UDR_Enable"
.LASF26:
	.string	"USART_RxComplete_Enable"
.LASF24:
	.string	"USART_Micro_State"
.LASF68:
	.string	"USART_RXC_Complete_Callback"
.LASF46:
	.string	"USART_FrameError"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
