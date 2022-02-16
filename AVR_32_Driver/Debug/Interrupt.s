	.file	"Interrupt.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
.LFB0:
	.file 1 "../MCAL/Interrupt/Interrupt.c"
	.loc 1 20 0
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
	.loc 1 21 0
	lds r30,EXT_INT0_ISR
	lds r31,EXT_INT0_ISR+1
	sbiw r30,0
	breq .L1
	.loc 1 23 0
	icall
.LVL0:
.L1:
/* epilogue start */
	.loc 1 25 0
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
.LFE0:
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
.LFB1:
	.loc 1 28 0
	.cfi_startproc
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 29 0
	lds r30,EXT_INT1_ISR
	lds r31,EXT_INT1_ISR+1
	sbiw r30,0
	breq .L7
	.loc 1 31 0
	icall
.LVL1:
.L7:
/* epilogue start */
	.loc 1 33 0
	.cfi_endproc
.LFE1:
	.size	__vector_2, .-__vector_2
	.section	.text.__vector_3,"ax",@progbits
.global	__vector_3
	.type	__vector_3, @function
__vector_3:
.LFB2:
	.loc 1 36 0
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
	.loc 1 37 0
	lds r30,EXT_INT2_ISR
	lds r31,EXT_INT2_ISR+1
	sbiw r30,0
	breq .L12
	.loc 1 39 0
	icall
.LVL2:
.L12:
/* epilogue start */
	.loc 1 41 0
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
.LFE2:
	.size	__vector_3, .-__vector_3
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
.LFB3:
	.loc 1 43 0
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
	.loc 1 44 0
	lds r30,ADC_INT_ISR
	lds r31,ADC_INT_ISR+1
	sbiw r30,0
	breq .L17
	.loc 1 46 0
	icall
.LVL3:
.L17:
/* epilogue start */
	.loc 1 48 0
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
	.size	__vector_16, .-__vector_16
	.section	.text.EXTINT_InterruptInit,"ax",@progbits
.global	EXTINT_InterruptInit
	.type	EXTINT_InterruptInit, @function
EXTINT_InterruptInit:
.LFB4:
	.loc 1 50 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 51 0
	cpi r24,lo8(1)
	breq .L24
	brlo .L25
	cpi r24,lo8(2)
	brne .L40
	.loc 1 102 0
	cpi r22,lo8(2)
	breq .L38
	cpi r22,lo8(3)
	brne .L37
	.loc 1 111 0
	in r24,0x35
.LVL5:
	ori r24,lo8(64)
	out 0x35,r24
.L37:
	.loc 1 116 0
	in r24,0x3b
	ori r24,lo8(32)
	out 0x3b,r24
	ret
.LVL6:
.L40:
	ret
.L25:
	.loc 1 54 0
	cpi r22,lo8(1)
	breq .L28
	brlo .L29
	cpi r22,lo8(2)
	breq .L30
	cpi r22,lo8(3)
	brne .L27
	.loc 1 69 0
	in r24,0x35
.LVL7:
	ori r24,lo8(2)
	out 0x35,r24
	.loc 1 70 0
	in r24,0x35
	ori r24,lo8(1)
	out 0x35,r24
.L27:
	.loc 1 75 0
	in r24,0x3b
	ori r24,lo8(-128)
	out 0x3b,r24
	.loc 1 76 0
	ret
.LVL8:
.L24:
	.loc 1 78 0
	cpi r22,lo8(1)
	breq .L33
	brlo .L34
	cpi r22,lo8(2)
	breq .L35
	cpi r22,lo8(3)
	brne .L32
	.loc 1 93 0
	in r24,0x35
.LVL9:
	ori r24,lo8(4)
	out 0x35,r24
	.loc 1 94 0
	in r24,0x35
	ori r24,lo8(8)
	out 0x35,r24
.L32:
	.loc 1 99 0
	in r24,0x3b
	ori r24,lo8(64)
	out 0x3b,r24
	.loc 1 100 0
	ret
.LVL10:
.L38:
	.loc 1 108 0
	in r24,0x35
.LVL11:
	andi r24,lo8(-65)
	out 0x35,r24
	.loc 1 109 0
	rjmp .L37
.LVL12:
.L34:
	.loc 1 81 0
	in r24,0x35
.LVL13:
	andi r24,lo8(-5)
	out 0x35,r24
	.loc 1 82 0
	in r24,0x35
	andi r24,lo8(-9)
	out 0x35,r24
	.loc 1 83 0
	rjmp .L32
.LVL14:
.L29:
	.loc 1 57 0
	in r24,0x35
.LVL15:
	andi r24,lo8(-3)
	out 0x35,r24
	.loc 1 58 0
	in r24,0x35
	andi r24,lo8(-2)
	out 0x35,r24
	.loc 1 59 0
	rjmp .L27
.LVL16:
.L30:
	.loc 1 65 0
	in r24,0x35
.LVL17:
	ori r24,lo8(2)
	out 0x35,r24
	.loc 1 66 0
	in r24,0x35
	andi r24,lo8(-2)
	out 0x35,r24
	.loc 1 67 0
	rjmp .L27
.LVL18:
.L28:
	.loc 1 61 0
	in r24,0x35
.LVL19:
	andi r24,lo8(-3)
	out 0x35,r24
	.loc 1 62 0
	in r24,0x35
	ori r24,lo8(1)
	out 0x35,r24
	.loc 1 63 0
	rjmp .L27
.LVL20:
.L35:
	.loc 1 89 0
	in r24,0x35
.LVL21:
	ori r24,lo8(4)
	out 0x35,r24
	.loc 1 90 0
	in r24,0x35
	andi r24,lo8(-9)
	out 0x35,r24
	.loc 1 91 0
	rjmp .L32
.LVL22:
.L33:
	.loc 1 85 0
	in r24,0x35
.LVL23:
	andi r24,lo8(-5)
	out 0x35,r24
	.loc 1 86 0
	in r24,0x35
	ori r24,lo8(8)
	out 0x35,r24
	.loc 1 87 0
	rjmp .L32
	.cfi_endproc
.LFE4:
	.size	EXTINT_InterruptInit, .-EXTINT_InterruptInit
.global	ADC_INT_ISR
	.section	.bss.ADC_INT_ISR,"aw",@nobits
	.type	ADC_INT_ISR, @object
	.size	ADC_INT_ISR, 2
ADC_INT_ISR:
	.zero	2
.global	EXT_INT2_ISR
	.section	.bss.EXT_INT2_ISR,"aw",@nobits
	.type	EXT_INT2_ISR, @object
	.size	EXT_INT2_ISR, 2
EXT_INT2_ISR:
	.zero	2
.global	EXT_INT1_ISR
	.section	.bss.EXT_INT1_ISR,"aw",@nobits
	.type	EXT_INT1_ISR, @object
	.size	EXT_INT1_ISR, 2
EXT_INT1_ISR:
	.zero	2
.global	EXT_INT0_ISR
	.section	.bss.EXT_INT0_ISR,"aw",@nobits
	.type	EXT_INT0_ISR, @object
	.size	EXT_INT0_ISR, 2
EXT_INT0_ISR:
	.zero	2
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/Interrupt/Interrupt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1af
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0x1
	.long	.LASF32
	.long	.LASF33
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x2
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x60
	.long	0xa2
	.uleb128 0x5
	.long	.LASF11
	.sleb128 0
	.uleb128 0x5
	.long	.LASF12
	.sleb128 1
	.uleb128 0x5
	.long	.LASF13
	.sleb128 2
	.uleb128 0x5
	.long	.LASF14
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x65
	.long	0x81
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x67
	.long	0xc8
	.uleb128 0x5
	.long	.LASF17
	.sleb128 0
	.uleb128 0x5
	.long	.LASF18
	.sleb128 1
	.uleb128 0x5
	.long	.LASF19
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x3
	.byte	0x6b
	.long	0xad
	.uleb128 0x6
	.byte	0x1
	.long	.LASF21
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.long	.LLST1
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.long	.LLST2
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF34
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x162
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x31
	.long	0xc8
	.long	.LLST3
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x31
	.long	0xa2
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0xe
	.long	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	EXT_INT0_ISR
	.uleb128 0xd
	.byte	0x2
	.long	0x162
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0xf
	.long	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	EXT_INT1_ISR
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x10
	.long	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	EXT_INT2_ISR
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.byte	0x11
	.long	0x176
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ADC_INT_ISR
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
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0
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
	.long	.LFE0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LFB2
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
	.long	.LFE2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST2:
	.long	.LFB3
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
	.long	.LFE3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.word	0x1
	.byte	0x68
	.long	.LVL9
	.long	.LVL10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LVL12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x68
	.long	.LVL13
	.long	.LVL14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.word	0x1
	.byte	0x68
	.long	.LVL15
	.long	.LVL16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.word	0x1
	.byte	0x68
	.long	.LVL17
	.long	.LVL18
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	.LVL19
	.long	.LVL20
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x68
	.long	.LVL23
	.long	.LFE4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF17:
	.string	"EXINT_INT0"
.LASF18:
	.string	"EXINT_INT1"
.LASF19:
	.string	"EXINT_INT2"
.LASF31:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF9:
	.string	"float"
.LASF24:
	.string	"__vector_16"
.LASF4:
	.string	"long long unsigned int"
.LASF26:
	.string	"Mode"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"EXT_INT1_ISR"
.LASF30:
	.string	"ADC_INT_ISR"
.LASF3:
	.string	"long unsigned int"
.LASF16:
	.string	"ExInterrupt_Modes"
.LASF2:
	.string	"short unsigned int"
.LASF10:
	.string	"double"
.LASF27:
	.string	"EXT_INT0_ISR"
.LASF11:
	.string	"EXINT_LowLevel"
.LASF13:
	.string	"EXINT_FallingEdge"
.LASF14:
	.string	"EXINT_RisingEdge"
.LASF29:
	.string	"EXT_INT2_ISR"
.LASF0:
	.string	"char"
.LASF12:
	.string	"EXINT_logical_change"
.LASF20:
	.string	"EXInterrupt_Source"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"../MCAL/Interrupt/Interrupt.c"
.LASF15:
	.string	"uint_8"
.LASF6:
	.string	"short int"
.LASF34:
	.string	"EXTINT_InterruptInit"
.LASF21:
	.string	"__vector_1"
.LASF22:
	.string	"__vector_2"
.LASF23:
	.string	"__vector_3"
.LASF7:
	.string	"long int"
.LASF5:
	.string	"signed char"
.LASF25:
	.string	"source"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
