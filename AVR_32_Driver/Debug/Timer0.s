	.file	"Timer0.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Timer0_OverFlow_Callback,"ax",@progbits
.global	Timer0_OverFlow_Callback
	.type	Timer0_OverFlow_Callback, @function
Timer0_OverFlow_Callback:
.LFB0:
	.file 1 "../MCAL/Timer 0,2/Timer0.c"
	.loc 1 19 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 20 0
	sbiw r24,0
	breq .L1
	.loc 1 22 0
	sts CP_TIMER0_Overflow_User_ptr+1,r25
	sts CP_TIMER0_Overflow_User_ptr,r24
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	Timer0_OverFlow_Callback, .-Timer0_OverFlow_Callback
	.section	.text.Timer0_CompareMatch_Callback,"ax",@progbits
.global	Timer0_CompareMatch_Callback
	.type	Timer0_CompareMatch_Callback, @function
Timer0_CompareMatch_Callback:
.LFB1:
	.loc 1 26 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 27 0
	sbiw r24,0
	breq .L7
	.loc 1 29 0
	sts CP_TIMER0_CompareMatch_User_ptr+1,r25
	sts CP_TIMER0_CompareMatch_User_ptr,r24
.L7:
	ret
	.cfi_endproc
.LFE1:
	.size	Timer0_CompareMatch_Callback, .-Timer0_CompareMatch_Callback
	.section	.text.Timer2_OverFlow_Callback,"ax",@progbits
.global	Timer2_OverFlow_Callback
	.type	Timer2_OverFlow_Callback, @function
Timer2_OverFlow_Callback:
.LFB2:
	.loc 1 34 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 35 0
	sbiw r24,0
	breq .L12
	.loc 1 37 0
	sts CP_TIMER2_Overflow_User_ptr+1,r25
	sts CP_TIMER2_Overflow_User_ptr,r24
.L12:
	ret
	.cfi_endproc
.LFE2:
	.size	Timer2_OverFlow_Callback, .-Timer2_OverFlow_Callback
	.section	.text.Timer2_CompareMatch_Callback,"ax",@progbits
.global	Timer2_CompareMatch_Callback
	.type	Timer2_CompareMatch_Callback, @function
Timer2_CompareMatch_Callback:
.LFB3:
	.loc 1 41 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 42 0
	sbiw r24,0
	breq .L17
	.loc 1 44 0
	sts CP_TIMER2_CompareMatch_User_ptr+1,r25
	sts CP_TIMER2_CompareMatch_User_ptr,r24
.L17:
	ret
	.cfi_endproc
.LFE3:
	.size	Timer2_CompareMatch_Callback, .-Timer2_CompareMatch_Callback
	.section	.text.TIMER_Init,"ax",@progbits
.global	TIMER_Init
	.type	TIMER_Init, @function
TIMER_Init:
.LFB4:
	.loc 1 49 0
	.cfi_startproc
.LVL4:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
	rcall .
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 10 */
.L__stack_usage = 10
	mov r25,r20
	std Y+1,r20
	mov r30,r21
	std Y+2,r21
	mov r20,r22
	std Y+3,r22
	mov r19,r23
	std Y+4,r23
	std Y+5,r24
.LVL5:
	.loc 1 54 0
	tst r25
	breq .L24
	cpi r25,lo8(1)
	brne .L22
	subi r30,lo8(-(-1))
	cpi r30,lo8(3)
	brlo .L71
	ldi r17,0
.LVL6:
	.loc 1 196 0
	ldi r21,0
.LVL7:
	cpi r20,11
	cpc r21,__zero_reg__
	brsh .L47
.L73:
	movw r30,r20
	subi r30,lo8(-(gs(.L49)))
	sbci r31,hi8(-(gs(.L49)))
	jmp __tablejump2__
.LVL8:
	.section	.progmem.gcc_sw_table.TIMER_Init,"a",@progbits
	.p2align	1
.L49:
	.word gs(.L48)
	.word gs(.L50)
	.word gs(.L51)
	.word gs(.L52)
	.word gs(.L53)
	.word gs(.L54)
	.word gs(.L55)
	.word gs(.L56)
	.word gs(.L47)
	.word gs(.L47)
	.word gs(.L57)
	.section	.text.TIMER_Init
.LVL9:
.L65:
	.loc 1 281 0
	ldi r20,0
	ldi r22,lo8(7)
	ldi r24,lo8(48)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL10:
	.loc 1 282 0
	andi r17,lo8(-17)
.LVL11:
	.loc 1 283 0
	ori r17,lo8(32)
.LVL12:
	.loc 1 284 0
	ldd r18,Y+6
.L61:
	.loc 1 293 0
	out 0x25,r17
	.loc 1 294 0
	out 0x39,r16
	.loc 1 295 0
	out 0x23,r18
.LVL13:
.L22:
/* epilogue start */
	.loc 1 298 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.LVL14:
.L24:
	subi r30,lo8(-(-1))
	cpi r30,lo8(3)
	brlo .L72
	ldi r17,0
.LVL15:
	.loc 1 78 0
	ldi r21,0
.LVL16:
	cpi r20,10
	cpc r21,__zero_reg__
	brsh .L27
.L74:
	movw r30,r20
	subi r30,lo8(-(gs(.L29)))
	sbci r31,hi8(-(gs(.L29)))
	jmp __tablejump2__
.LVL17:
	.section	.progmem.gcc_sw_table.TIMER_Init
	.p2align	1
.L29:
	.word gs(.L28)
	.word gs(.L30)
	.word gs(.L31)
	.word gs(.L27)
	.word gs(.L32)
	.word gs(.L27)
	.word gs(.L33)
	.word gs(.L34)
	.word gs(.L35)
	.word gs(.L36)
	.section	.text.TIMER_Init
.LVL18:
.L71:
	ldi r31,0
	subi r30,lo8(-(CSWTCH.14))
	sbci r31,hi8(-(CSWTCH.14))
	ld r17,Z
.LVL19:
	.loc 1 196 0
	ldi r21,0
.LVL20:
	cpi r20,11
	cpc r21,__zero_reg__
	brlo .L73
.LVL21:
.L47:
	.loc 1 247 0
	in r25,__SREG__
	ori r25,lo8(-128)
	out __SREG__,r25
	.loc 1 249 0
	cpi r19,lo8(1)
	brne .+2
	rjmp .L70
	cpi r19,lo8(2)
	brne .+2
	rjmp .L60
	.loc 1 52 0
	ldi r16,0
.LVL22:
.L59:
	.loc 1 267 0
	ldi r25,0
	cpi r24,8
	cpc r25,__zero_reg__
	brsh .L61
	movw r30,r24
	subi r30,lo8(-(gs(.L63)))
	sbci r31,hi8(-(gs(.L63)))
	jmp __tablejump2__
.LVL23:
	.section	.progmem.gcc_sw_table.TIMER_Init
	.p2align	1
.L63:
	.word gs(.L62)
	.word gs(.L64)
	.word gs(.L65)
	.word gs(.L66)
	.word gs(.L65)
	.word gs(.L66)
	.word gs(.L65)
	.word gs(.L66)
	.section	.text.TIMER_Init
.LVL24:
.L72:
	ldi r31,0
	subi r30,lo8(-(CSWTCH.13))
	sbci r31,hi8(-(CSWTCH.13))
	ld r17,Z
.LVL25:
	.loc 1 78 0
	ldi r21,0
.LVL26:
	cpi r20,10
	cpc r21,__zero_reg__
	brlo .L74
.LVL27:
.L27:
	.loc 1 124 0
	in r25,__SREG__
	ori r25,lo8(-128)
	out __SREG__,r25
.LVL28:
	.loc 1 126 0
	cpi r19,lo8(1)
	brne .+2
	rjmp .L68
	cpi r19,lo8(2)
	brne .+2
	rjmp .L39
	.loc 1 52 0
	ldi r16,0
.LVL29:
.L38:
	.loc 1 144 0
	ldi r25,0
	cpi r24,8
	cpc r25,__zero_reg__
	brsh .L40
	movw r30,r24
	subi r30,lo8(-(gs(.L42)))
	sbci r31,hi8(-(gs(.L42)))
	jmp __tablejump2__
.LVL30:
	.section	.progmem.gcc_sw_table.TIMER_Init
	.p2align	1
.L42:
	.word gs(.L41)
	.word gs(.L43)
	.word gs(.L44)
	.word gs(.L45)
	.word gs(.L44)
	.word gs(.L45)
	.word gs(.L44)
	.word gs(.L45)
	.section	.text.TIMER_Init
.L44:
	.loc 1 158 0
	ldi r20,0
	ldi r22,lo8(3)
	ldi r24,lo8(54)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL31:
	.loc 1 159 0
	andi r17,lo8(-17)
.LVL32:
	.loc 1 160 0
	ori r17,lo8(32)
.LVL33:
	.loc 1 161 0
	ldd r18,Y+6
.L40:
	.loc 1 170 0
	out 0x33,r17
	.loc 1 171 0
	out 0x39,r16
	.loc 1 172 0
	out 0x3c,r18
	.loc 1 173 0
	rjmp .L22
.LVL34:
.L41:
	.loc 1 148 0
	andi r17,lo8(-49)
.LVL35:
	.loc 1 149 0
	rjmp .L40
.L45:
	.loc 1 165 0
	ldi r20,0
	ldi r22,lo8(3)
	ldi r24,lo8(54)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL36:
	.loc 1 167 0
	ori r17,lo8(48)
.LVL37:
	ldd r18,Y+6
	.loc 1 168 0
	rjmp .L40
.LVL38:
.L43:
	.loc 1 151 0
	ldi r20,0
	ldi r22,lo8(3)
	ldi r24,lo8(54)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL39:
	.loc 1 153 0
	andi r17,lo8(-33)
.LVL40:
	ori r17,lo8(16)
.LVL41:
	.loc 1 154 0
	ldd r18,Y+6
	rjmp .L40
.LVL42:
.L64:
	.loc 1 274 0
	ldi r20,0
	ldi r22,lo8(7)
	ldi r24,lo8(48)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL43:
	.loc 1 276 0
	andi r17,lo8(-33)
.LVL44:
	ori r17,lo8(16)
.LVL45:
	.loc 1 277 0
	ldd r18,Y+6
	rjmp .L61
.LVL46:
.L66:
	.loc 1 288 0
	ldi r20,0
	ldi r22,lo8(7)
	ldi r24,lo8(48)
	ldi r25,0
	std Y+6,r18
	call GPIO_Pin_Configuration
.LVL47:
	.loc 1 290 0
	ori r17,lo8(48)
.LVL48:
	ldd r18,Y+6
	.loc 1 291 0
	rjmp .L61
.LVL49:
.L62:
	.loc 1 271 0
	andi r17,lo8(-49)
.LVL50:
	.loc 1 272 0
	rjmp .L61
.LVL51:
.L60:
	.loc 1 257 0
	ldi r16,lo8(-128)
	.loc 1 258 0
	rjmp .L59
.LVL52:
.L70:
	.loc 1 253 0
	ldi r16,lo8(64)
	rjmp .L59
.L39:
.LVL53:
	.loc 1 134 0
	ldi r16,lo8(2)
	.loc 1 135 0
	rjmp .L38
.LVL54:
.L68:
	.loc 1 130 0
	ldi r16,lo8(1)
	rjmp .L38
.LVL55:
.L36:
	.loc 1 119 0
	ori r17,lo8(7)
.LVL56:
	.loc 1 120 0
	rjmp .L27
.L35:
	.loc 1 112 0
	andi r17,lo8(-2)
.LVL57:
	.loc 1 114 0
	ori r17,lo8(6)
.LVL58:
	.loc 1 115 0
	rjmp .L27
.L34:
.LVL59:
	.loc 1 108 0
	andi r17,lo8(-3)
.LVL60:
	.loc 1 109 0
	ori r17,lo8(5)
.LVL61:
	.loc 1 110 0
	rjmp .L27
.L33:
.LVL62:
	.loc 1 102 0
	andi r17,lo8(-4)
.LVL63:
	.loc 1 103 0
	ori r17,lo8(4)
.LVL64:
	.loc 1 104 0
	rjmp .L27
.L32:
.LVL65:
	.loc 1 98 0
	andi r17,lo8(-5)
.LVL66:
	ori r17,lo8(3)
.LVL67:
	.loc 1 99 0
	rjmp .L27
.L31:
.LVL68:
	.loc 1 93 0
	andi r17,lo8(-6)
.LVL69:
	ori r17,lo8(2)
.LVL70:
	.loc 1 94 0
	rjmp .L27
.L30:
.LVL71:
	.loc 1 88 0
	andi r17,lo8(-7)
.LVL72:
	ori r17,lo8(1)
.LVL73:
	.loc 1 89 0
	rjmp .L27
.L28:
.LVL74:
	.loc 1 83 0
	andi r17,lo8(-8)
.LVL75:
	.loc 1 84 0
	rjmp .L27
.L57:
	.loc 1 209 0
	in r25,0x22
	ori r25,lo8(16)
	out 0x22,r25
.LVL76:
	.loc 1 211 0
	andi r17,lo8(-3)
.LVL77:
	.loc 1 212 0
	ori r17,lo8(5)
.LVL78:
	.loc 1 213 0
	rjmp .L47
.LVL79:
.L56:
	.loc 1 242 0
	ori r17,lo8(7)
.LVL80:
	.loc 1 243 0
	rjmp .L47
.L55:
	.loc 1 235 0
	andi r17,lo8(-2)
.LVL81:
	.loc 1 237 0
	ori r17,lo8(6)
.LVL82:
	.loc 1 238 0
	rjmp .L47
.L54:
.LVL83:
	.loc 1 231 0
	andi r17,lo8(-3)
.LVL84:
	.loc 1 232 0
	ori r17,lo8(5)
.LVL85:
	.loc 1 233 0
	rjmp .L47
.L53:
.LVL86:
	.loc 1 226 0
	andi r17,lo8(-4)
.LVL87:
	.loc 1 227 0
	ori r17,lo8(4)
.LVL88:
	.loc 1 228 0
	rjmp .L47
.L52:
.LVL89:
	.loc 1 222 0
	andi r17,lo8(-5)
.LVL90:
	ori r17,lo8(3)
.LVL91:
	.loc 1 223 0
	rjmp .L47
.L51:
.LVL92:
	.loc 1 217 0
	andi r17,lo8(-6)
.LVL93:
	ori r17,lo8(2)
.LVL94:
	.loc 1 218 0
	rjmp .L47
.L50:
.LVL95:
	.loc 1 206 0
	andi r17,lo8(-7)
.LVL96:
	ori r17,lo8(1)
.LVL97:
	.loc 1 207 0
	rjmp .L47
.L48:
.LVL98:
	.loc 1 201 0
	andi r17,lo8(-8)
.LVL99:
	.loc 1 202 0
	rjmp .L47
	.cfi_endproc
.LFE4:
	.size	TIMER_Init, .-TIMER_Init
	.section	.text.TIMER_Delay,"ax",@progbits
.global	TIMER_Delay
	.type	TIMER_Delay, @function
TIMER_Delay:
.LFB5:
	.loc 1 301 0
	.cfi_startproc
.LVL100:
	push r28
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
	push __zero_reg__
.LCFI8:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI9:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 302 0
	tst r20
	breq .L77
	cpi r20,lo8(1)
	brne .L75
	.loc 1 308 0
	out 0x23,r18
.L75:
/* epilogue start */
	.loc 1 313 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
.L77:
	.loc 1 305 0
	out 0x3c,r18
/* epilogue start */
	.loc 1 313 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE5:
	.size	TIMER_Delay, .-TIMER_Delay
	.section	.text.__vector_10,"ax",@progbits
.global	__vector_10
	.type	__vector_10, @function
__vector_10:
.LFB6:
	.loc 1 328 0
	.cfi_startproc
	push r1
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI17:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI18:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI19:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI20:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI21:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI22:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI23:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 329 0
	lds r30,CP_TIMER0_CompareMatch_User_ptr
	lds r31,CP_TIMER0_CompareMatch_User_ptr+1
	sbiw r30,0
	breq .L79
	.loc 1 331 0
	icall
.LVL101:
.L79:
/* epilogue start */
	.loc 1 333 0
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
.LFE6:
	.size	__vector_10, .-__vector_10
	.section	.text.__vector_11,"ax",@progbits
.global	__vector_11
	.type	__vector_11, @function
__vector_11:
.LFB7:
	.loc 1 335 0
	.cfi_startproc
	push r1
.LCFI24:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI26:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI27:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI28:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI30:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI31:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI32:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI33:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI34:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI35:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI36:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI37:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 336 0
	lds r30,CP_TIMER0_Overflow_User_ptr
	lds r31,CP_TIMER0_Overflow_User_ptr+1
	sbiw r30,0
	breq .L84
	.loc 1 338 0
	icall
.LVL102:
.L84:
/* epilogue start */
	.loc 1 340 0
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
.LFE7:
	.size	__vector_11, .-__vector_11
	.section	.text.__vector_5,"ax",@progbits
.global	__vector_5
	.type	__vector_5, @function
__vector_5:
.LFB8:
	.loc 1 342 0
	.cfi_startproc
	push r1
.LCFI38:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI39:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI40:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI41:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI42:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI43:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI44:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI45:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI46:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI47:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI48:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI49:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI50:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI51:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 343 0
	lds r30,CP_TIMER2_Overflow_User_ptr
	lds r31,CP_TIMER2_Overflow_User_ptr+1
	sbiw r30,0
	breq .L89
	.loc 1 345 0
	icall
.LVL103:
.L89:
/* epilogue start */
	.loc 1 347 0
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
.LFE8:
	.size	__vector_5, .-__vector_5
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
.LFB9:
	.loc 1 349 0
	.cfi_startproc
	push r1
.LCFI52:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI53:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI54:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI55:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI56:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI57:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI58:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI59:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI60:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI61:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI62:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI63:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI64:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI65:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 350 0
	lds r30,CP_TIMER2_CompareMatch_User_ptr
	lds r31,CP_TIMER2_CompareMatch_User_ptr+1
	sbiw r30,0
	breq .L94
	.loc 1 352 0
	icall
.LVL104:
.L94:
/* epilogue start */
	.loc 1 354 0
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
.LFE9:
	.size	__vector_4, .-__vector_4
	.section	.rodata.CSWTCH.14,"a",@progbits
	.type	CSWTCH.14, @object
	.size	CSWTCH.14, 3
CSWTCH.14:
	.byte	8
	.byte	64
	.byte	72
	.section	.rodata.CSWTCH.13,"a",@progbits
	.type	CSWTCH.13, @object
	.size	CSWTCH.13, 3
CSWTCH.13:
	.byte	8
	.byte	64
	.byte	72
	.section	.bss.CP_TIMER2_CompareMatch_User_ptr,"aw",@nobits
	.type	CP_TIMER2_CompareMatch_User_ptr, @object
	.size	CP_TIMER2_CompareMatch_User_ptr, 2
CP_TIMER2_CompareMatch_User_ptr:
	.zero	2
	.section	.bss.CP_TIMER2_Overflow_User_ptr,"aw",@nobits
	.type	CP_TIMER2_Overflow_User_ptr, @object
	.size	CP_TIMER2_Overflow_User_ptr, 2
CP_TIMER2_Overflow_User_ptr:
	.zero	2
	.section	.bss.CP_TIMER0_CompareMatch_User_ptr,"aw",@nobits
	.type	CP_TIMER0_CompareMatch_User_ptr, @object
	.size	CP_TIMER0_CompareMatch_User_ptr, 2
CP_TIMER0_CompareMatch_User_ptr:
	.zero	2
	.section	.bss.CP_TIMER0_Overflow_User_ptr,"aw",@nobits
	.type	CP_TIMER0_Overflow_User_ptr, @object
	.size	CP_TIMER0_Overflow_User_ptr, 2
CP_TIMER0_Overflow_User_ptr:
	.zero	2
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../MCAL/Timer 0,2/Timer0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x587
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0xe
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF7
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x4
	.byte	0x3
	.byte	0x3
	.byte	0x12
	.long	0xbf
	.uleb128 0x5
	.string	"PIN"
	.byte	0x3
	.byte	0x14
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x3
	.byte	0x15
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x3
	.byte	0x16
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF14
	.byte	0x3
	.byte	0x17
	.long	0x8c
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x10
	.long	0xea
	.uleb128 0x9
	.long	.LASF15
	.sleb128 0
	.uleb128 0x9
	.long	.LASF16
	.sleb128 1
	.uleb128 0x9
	.long	.LASF17
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF18
	.byte	0x4
	.byte	0x14
	.long	0xcf
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x134
	.uleb128 0x9
	.long	.LASF19
	.sleb128 0
	.uleb128 0x9
	.long	.LASF20
	.sleb128 1
	.uleb128 0x9
	.long	.LASF21
	.sleb128 2
	.uleb128 0x9
	.long	.LASF22
	.sleb128 3
	.uleb128 0x9
	.long	.LASF23
	.sleb128 4
	.uleb128 0x9
	.long	.LASF24
	.sleb128 5
	.uleb128 0x9
	.long	.LASF25
	.sleb128 6
	.uleb128 0x9
	.long	.LASF26
	.sleb128 7
	.uleb128 0x9
	.long	.LASF27
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x4
	.byte	0x23
	.long	0xf5
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xce
	.long	0x154
	.uleb128 0x9
	.long	.LASF29
	.sleb128 0
	.uleb128 0x9
	.long	.LASF30
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x5
	.byte	0xd1
	.long	0x13f
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd2
	.long	0x180
	.uleb128 0x9
	.long	.LASF32
	.sleb128 0
	.uleb128 0x9
	.long	.LASF33
	.sleb128 1
	.uleb128 0x9
	.long	.LASF34
	.sleb128 2
	.uleb128 0x9
	.long	.LASF35
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.byte	0xd7
	.long	0x15f
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd9
	.long	0x1d6
	.uleb128 0x9
	.long	.LASF37
	.sleb128 0
	.uleb128 0x9
	.long	.LASF38
	.sleb128 1
	.uleb128 0x9
	.long	.LASF39
	.sleb128 2
	.uleb128 0x9
	.long	.LASF40
	.sleb128 3
	.uleb128 0x9
	.long	.LASF41
	.sleb128 4
	.uleb128 0x9
	.long	.LASF42
	.sleb128 5
	.uleb128 0x9
	.long	.LASF43
	.sleb128 6
	.uleb128 0x9
	.long	.LASF44
	.sleb128 7
	.uleb128 0x9
	.long	.LASF45
	.sleb128 8
	.uleb128 0x9
	.long	.LASF46
	.sleb128 9
	.uleb128 0x9
	.long	.LASF47
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.long	.LASF48
	.byte	0x5
	.byte	0xe5
	.long	0x18b
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xe8
	.long	0x1fc
	.uleb128 0x9
	.long	.LASF49
	.sleb128 0
	.uleb128 0x9
	.long	.LASF50
	.sleb128 1
	.uleb128 0x9
	.long	.LASF51
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF52
	.byte	0x5
	.byte	0xec
	.long	0x1e1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xef
	.long	0x240
	.uleb128 0x9
	.long	.LASF53
	.sleb128 0
	.uleb128 0x9
	.long	.LASF54
	.sleb128 1
	.uleb128 0x9
	.long	.LASF55
	.sleb128 2
	.uleb128 0x9
	.long	.LASF56
	.sleb128 3
	.uleb128 0x9
	.long	.LASF57
	.sleb128 4
	.uleb128 0x9
	.long	.LASF58
	.sleb128 5
	.uleb128 0x9
	.long	.LASF59
	.sleb128 6
	.uleb128 0x9
	.long	.LASF60
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF61
	.byte	0x5
	.byte	0xf8
	.long	0x207
	.uleb128 0xa
	.byte	0x5
	.byte	0x5
	.word	0x100
	.long	0x2a0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.word	0x102
	.long	0x154
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.word	0x103
	.long	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.long	.LASF64
	.byte	0x5
	.word	0x104
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.word	0x105
	.long	0x1fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.word	0x106
	.long	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x5
	.word	0x107
	.long	0x24b
	.uleb128 0xd
	.byte	0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2d9
	.uleb128 0xe
	.long	.LASF70
	.byte	0x1
	.byte	0x12
	.long	0x2db
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
	.uleb128 0x10
	.byte	0x2
	.long	0x2d9
	.uleb128 0xd
	.byte	0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x30e
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.byte	0x19
	.long	0x2db
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x33b
	.uleb128 0xe
	.long	.LASF73
	.byte	0x1
	.byte	0x21
	.long	0x2db
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x368
	.uleb128 0xe
	.long	.LASF75
	.byte	0x1
	.byte	0x28
	.long	0x2db
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.long	.LLST0
	.byte	0x1
	.long	0x48d
	.uleb128 0x12
	.long	.LASF77
	.byte	0x1
	.byte	0x30
	.long	0x2a0
	.long	.LLST1
	.uleb128 0x12
	.long	.LASF78
	.byte	0x1
	.byte	0x30
	.long	0x29
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF79
	.byte	0x1
	.byte	0x33
	.long	0x29
	.long	.LLST3
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x34
	.long	0x29
	.long	.LLST4
	.uleb128 0x14
	.long	.LVL10
	.long	0x566
	.long	0x3e1
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL31
	.long	0x566
	.long	0x404
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL36
	.long	0x566
	.long	0x427
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL39
	.long	0x566
	.long	0x44a
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x33
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x14
	.long	.LVL43
	.long	0x566
	.long	0x46d
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	.LVL47
	.long	0x566
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.uleb128 0x15
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x37
	.uleb128 0x15
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.word	0x12c
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.long	.LLST5
	.byte	0x1
	.long	0x4c6
	.uleb128 0x18
	.long	.LASF77
	.byte	0x1
	.word	0x12c
	.long	0x2a0
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x18
	.long	.LASF78
	.byte	0x1
	.word	0x12c
	.long	0x29
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.word	0x147
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST6
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.word	0x14e
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.long	.LLST7
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.word	0x155
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.long	.LLST8
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.word	0x15c
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.long	.LLST9
	.byte	0x1
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.byte	0xc
	.long	0x2db
	.byte	0x5
	.byte	0x3
	.long	CP_TIMER0_Overflow_User_ptr
	.uleb128 0x1a
	.long	.LASF87
	.byte	0x1
	.byte	0xd
	.long	0x2db
	.byte	0x5
	.byte	0x3
	.long	CP_TIMER0_CompareMatch_User_ptr
	.uleb128 0x1a
	.long	.LASF88
	.byte	0x1
	.byte	0xf
	.long	0x2db
	.byte	0x5
	.byte	0x3
	.long	CP_TIMER2_Overflow_User_ptr
	.uleb128 0x1a
	.long	.LASF89
	.byte	0x1
	.byte	0x10
	.long	0x2db
	.byte	0x5
	.byte	0x3
	.long	CP_TIMER2_CompareMatch_User_ptr
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF93
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.long	0x584
	.uleb128 0x1c
	.long	0x584
	.uleb128 0x1c
	.long	0x134
	.uleb128 0x1c
	.long	0xea
	.byte	0
	.uleb128 0x10
	.byte	0x2
	.long	0xc4
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB4
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
	.sleb128 12
	.long	.LCFI5
	.long	.LFE4
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL7
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL7
	.long	.LVL8
	.word	0xf
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL9
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL10-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL16
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0xf
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL20
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20
	.long	.LVL21
	.word	0xf
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL23
	.word	0x8
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL24
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL26
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL27
	.word	0xf
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL27
	.long	.LVL28
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LVL30
	.word	0x8
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LVL31-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL36-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL39-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL47-1
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL51
	.word	0x7
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51
	.long	.LVL55
	.word	0x8
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL76
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL79
	.word	0x8
	.byte	0x93
	.uleb128 0x3
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LFE4
	.word	0xe
	.byte	0x93
	.uleb128 0x1
	.byte	0x8c
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL10-1
	.word	0x1
	.byte	0x62
	.long	.LVL10-1
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL14
	.long	.LVL31-1
	.word	0x1
	.byte	0x62
	.long	.LVL31-1
	.long	.LVL34
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL34
	.long	.LVL36-1
	.word	0x1
	.byte	0x62
	.long	.LVL36-1
	.long	.LVL38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39-1
	.word	0x1
	.byte	0x62
	.long	.LVL39-1
	.long	.LVL42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x62
	.long	.LVL43-1
	.long	.LVL46
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47-1
	.word	0x1
	.byte	0x62
	.long	.LVL47-1
	.long	.LVL49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	.LVL49
	.long	.LFE4
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL13
	.word	0x1
	.byte	0x61
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x61
	.long	.LVL18
	.long	.LVL19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL24
	.word	0x1
	.byte	0x61
	.long	.LVL24
	.long	.LVL25
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL25
	.long	.LVL34
	.word	0x1
	.byte	0x61
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xef
	.byte	0x1a
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x61
	.long	.LVL36
	.long	.LVL37
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL37
	.long	.LVL39
	.word	0x1
	.byte	0x61
	.long	.LVL39
	.long	.LVL40
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL41
	.long	.LVL43
	.word	0x1
	.byte	0x61
	.long	.LVL43
	.long	.LVL44
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47
	.word	0x1
	.byte	0x61
	.long	.LVL47
	.long	.LVL48
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x61
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xef
	.byte	0x1a
	.byte	0x9f
	.long	.LVL50
	.long	.LVL55
	.word	0x1
	.byte	0x61
	.long	.LVL55
	.long	.LVL56
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x61
	.long	.LVL57
	.long	.LVL58
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x61
	.long	.LVL59
	.long	.LVL61
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL61
	.long	.LVL62
	.word	0x1
	.byte	0x61
	.long	.LVL62
	.long	.LVL63
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.long	.LVL63
	.long	.LVL65
	.word	0x1
	.byte	0x61
	.long	.LVL65
	.long	.LVL66
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.word	0x1
	.byte	0x61
	.long	.LVL68
	.long	.LVL69
	.word	0x8
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.word	0x1
	.byte	0x61
	.long	.LVL71
	.long	.LVL72
	.word	0x8
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL73
	.long	.LVL74
	.word	0x1
	.byte	0x61
	.long	.LVL74
	.long	.LVL75
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.long	.LVL75
	.long	.LVL76
	.word	0x1
	.byte	0x61
	.long	.LVL76
	.long	.LVL78
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.word	0x1
	.byte	0x61
	.long	.LVL79
	.long	.LVL80
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.long	.LVL80
	.long	.LVL81
	.word	0x1
	.byte	0x61
	.long	.LVL81
	.long	.LVL82
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.long	.LVL82
	.long	.LVL83
	.word	0x1
	.byte	0x61
	.long	.LVL83
	.long	.LVL85
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.word	0x1
	.byte	0x61
	.long	.LVL86
	.long	.LVL87
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.long	.LVL87
	.long	.LVL89
	.word	0x1
	.byte	0x61
	.long	.LVL89
	.long	.LVL90
	.word	0x5
	.byte	0x81
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.long	.LVL91
	.long	.LVL92
	.word	0x1
	.byte	0x61
	.long	.LVL92
	.long	.LVL93
	.word	0x8
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.long	.LVL94
	.long	.LVL95
	.word	0x1
	.byte	0x61
	.long	.LVL95
	.long	.LVL96
	.word	0x8
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL97
	.long	.LVL98
	.word	0x1
	.byte	0x61
	.long	.LVL98
	.long	.LVL99
	.word	0x6
	.byte	0x81
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.long	.LVL99
	.long	.LFE4
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL13
	.word	0x1
	.byte	0x60
	.long	.LVL14
	.long	.LVL22
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL24
	.word	0x1
	.byte	0x60
	.long	.LVL24
	.long	.LVL29
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL51
	.word	0x1
	.byte	0x60
	.long	.LVL51
	.long	.LVL52
	.word	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL54
	.long	.LFE4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LFE5
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
.LLST6:
	.long	.LFB6
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI23
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST7:
	.long	.LFB7
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI34
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI37
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST8:
	.long	.LFB8
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI44
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI51
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST9:
	.long	.LFB9
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI60
	.long	.LCFI61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI61
	.long	.LCFI62
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI62
	.long	.LCFI63
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI63
	.long	.LCFI64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI64
	.long	.LCFI65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI65
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"INPUT_Pullup"
.LASF48:
	.string	"Timer_CLK_Source_selection"
.LASF80:
	.string	"TIMSK_Temp"
.LASF18:
	.string	"GPIO_pin_Type"
.LASF69:
	.string	"Timer0_CompareMatch_Callback"
.LASF46:
	.string	"External_Clock_Rising_edge"
.LASF71:
	.string	"TIMER0_CompareMatch_User_ptr"
.LASF44:
	.string	"Clk_1024"
.LASF8:
	.string	"short int"
.LASF79:
	.string	"TCCR_Temp"
.LASF70:
	.string	"TIMER0_Overflow_User_ptr"
.LASF33:
	.string	"CTC_mode"
.LASF58:
	.string	"inverting_mode"
.LASF89:
	.string	"CP_TIMER2_CompareMatch_User_ptr"
.LASF75:
	.string	"TIMER2_CompareMatch_User_ptr"
.LASF35:
	.string	"FastPWM_mode"
.LASF51:
	.string	"Timer_OutPut_Compare_match"
.LASF60:
	.string	"Set_upCount_Clear_DownCount"
.LASF27:
	.string	"ADC_Diff_Mode"
.LASF45:
	.string	"External_Clock_falling_edge"
.LASF29:
	.string	"Timer0"
.LASF1:
	.string	"uint8"
.LASF57:
	.string	"NON_inverting_mode"
.LASF73:
	.string	"TIMER2_Overflow_User_ptr"
.LASF40:
	.string	"CLK_32"
.LASF56:
	.string	"OC_SetOn_Compare_match"
.LASF78:
	.string	"inital_Value"
.LASF11:
	.string	"float"
.LASF14:
	.string	"GPIO_Register"
.LASF93:
	.string	"GPIO_Pin_Configuration"
.LASF10:
	.string	"long long int"
.LASF43:
	.string	"Clk_256"
.LASF87:
	.string	"CP_TIMER0_CompareMatch_User_ptr"
.LASF9:
	.string	"long int"
.LASF54:
	.string	"OC_Toggle"
.LASF68:
	.string	"Timer0_OverFlow_Callback"
.LASF76:
	.string	"TIMER_Init"
.LASF86:
	.string	"CP_TIMER0_Overflow_User_ptr"
.LASF32:
	.string	"Normal_mode"
.LASF67:
	.string	"TIMER_DataType"
.LASF62:
	.string	"Timer_Number"
.LASF92:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF3:
	.string	"unsigned char"
.LASF90:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF0:
	.string	"uint_8"
.LASF7:
	.string	"signed char"
.LASF31:
	.string	"Timer_Number_Selection"
.LASF6:
	.string	"long long unsigned int"
.LASF63:
	.string	"Timer_mode"
.LASF53:
	.string	"OC_Disconnected"
.LASF13:
	.string	"PORT"
.LASF36:
	.string	"Timer_mode_selection"
.LASF81:
	.string	"TIMER_Delay"
.LASF41:
	.string	"Clk_64"
.LASF64:
	.string	"Timer_CLK"
.LASF4:
	.string	"short unsigned int"
.LASF15:
	.string	"OUTPUT"
.LASF61:
	.string	"OC_behavior"
.LASF2:
	.string	"char"
.LASF42:
	.string	"CLK_128"
.LASF84:
	.string	"__vector_5"
.LASF72:
	.string	"Timer2_OverFlow_Callback"
.LASF77:
	.string	"Timer_Details"
.LASF16:
	.string	"INPUT_Float"
.LASF49:
	.string	"Timer_No_Interrupt"
.LASF91:
	.string	"../MCAL/Timer 0,2/Timer0.c"
.LASF39:
	.string	"Clk_8"
.LASF47:
	.string	"Timer2_OneSec_CLK"
.LASF82:
	.string	"__vector_10"
.LASF83:
	.string	"__vector_11"
.LASF5:
	.string	"long unsigned int"
.LASF74:
	.string	"Timer2_CompareMatch_Callback"
.LASF12:
	.string	"double"
.LASF37:
	.string	"No_Clock_source"
.LASF55:
	.string	"OC_ClearOn_Compare_match"
.LASF52:
	.string	"Timer_Interrupt_Source"
.LASF59:
	.string	"Clear_upCount_Set_DownCount"
.LASF50:
	.string	"Timer_Overflow_Interrupt"
.LASF85:
	.string	"__vector_4"
.LASF38:
	.string	"No_Prescaling"
.LASF65:
	.string	"Timer_INT_source"
.LASF88:
	.string	"CP_TIMER2_Overflow_User_ptr"
.LASF66:
	.string	"OC_Pin_State"
.LASF30:
	.string	"Timer2"
.LASF28:
	.string	"GPIO_pin_number"
.LASF34:
	.string	"PhaseCorrectPWM_mode"
.LASF19:
	.string	"PIN0"
.LASF20:
	.string	"PIN1"
.LASF21:
	.string	"PIN2"
.LASF22:
	.string	"PIN3"
.LASF23:
	.string	"PIN4"
.LASF24:
	.string	"PIN5"
.LASF25:
	.string	"PIN6"
.LASF26:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
