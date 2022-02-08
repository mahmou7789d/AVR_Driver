	.file	"Timer_CTC_APP.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LED_Control,"ax",@progbits
.global	LED_Control
	.type	LED_Control, @function
LED_Control:
.LFB1:
	.file 1 "../APP/Timer_CTC_APP/Timer_CTC_APP.c"
	.loc 1 24 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	lds r24,counter.1629
	lds r25,counter.1629+1
	adiw r24,1
	sts counter.1629+1,r25
	sts counter.1629,r24
	.loc 1 27 0
	cpi r24,-96
	sbci r25,15
	breq .L4
	ret
.L4:
	.loc 1 29 0
	lds r22,LED_
	lds r23,LED_+1
	lds r24,LED_+2
	lds r25,LED_+3
	jmp Led_Toggle
.LVL0:
	.cfi_endproc
.LFE1:
	.size	LED_Control, .-LED_Control
	.section	.text.Timer_CTC_APP_Init,"ax",@progbits
.global	Timer_CTC_APP_Init
	.type	Timer_CTC_APP_Init, @function
Timer_CTC_APP_Init:
.LFB0:
	.loc 1 16 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
	push __zero_reg__
.LCFI2:
	.cfi_def_cfa_offset 9
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 5 */
/* stack size = 7 */
.L__stack_usage = 7
	.loc 1 17 0
	movw r30,r28
	adiw r30,1
	ldi r24,lo8(5)
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	ldi r24,lo8(1)
	std Y+2,r24
	ldi r24,lo8(2)
	std Y+3,r24
	std Y+4,r24
	.loc 1 18 0
	lds r22,LED_
	lds r23,LED_+1
	lds r24,LED_+2
	lds r25,LED_+3
	call Led_Start
.LVL1:
	.loc 1 19 0
	ldi r18,lo8(-6)
	ldd r20,Y+1
	ldd r21,Y+2
	ldd r22,Y+3
	ldd r23,Y+4
	ldd r24,Y+5
	call TIMER_Init
.LVL2:
	.loc 1 20 0
	ldi r24,lo8(gs(LED_Control))
	ldi r25,hi8(gs(LED_Control))
/* epilogue start */
	.loc 1 22 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	.loc 1 20 0
	jmp Timer0_CompareMatch_Callback
.LVL3:
	.cfi_endproc
.LFE0:
	.size	Timer_CTC_APP_Init, .-Timer_CTC_APP_Init
	.section	.bss.counter.1629,"aw",@nobits
	.type	counter.1629, @object
	.size	counter.1629, 2
counter.1629:
	.zero	2
.global	LED_
	.section	.data.LED_,"aw",@progbits
	.type	LED_, @object
	.size	LED_, 4
LED_:
	.word	48
	.byte	0
	.byte	0
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../MCAL/Timer 0,2/Timer0.h"
	.file 6 "../HAL/LED_File/LED.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x40d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF80
	.byte	0x1
	.long	.LASF81
	.long	.LASF82
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF2
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
	.uleb128 0x2
	.long	.LASF3
	.byte	0x2
	.byte	0xf
	.long	0x4d
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
	.byte	0x15
	.long	0xe4
	.uleb128 0x9
	.string	"LOW"
	.sleb128 0
	.uleb128 0xa
	.long	.LASF15
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.long	0xcf
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x12e
	.uleb128 0xa
	.long	.LASF17
	.sleb128 0
	.uleb128 0xa
	.long	.LASF18
	.sleb128 1
	.uleb128 0xa
	.long	.LASF19
	.sleb128 2
	.uleb128 0xa
	.long	.LASF20
	.sleb128 3
	.uleb128 0xa
	.long	.LASF21
	.sleb128 4
	.uleb128 0xa
	.long	.LASF22
	.sleb128 5
	.uleb128 0xa
	.long	.LASF23
	.sleb128 6
	.uleb128 0xa
	.long	.LASF24
	.sleb128 7
	.uleb128 0xa
	.long	.LASF25
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x4
	.byte	0x23
	.long	0xef
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xce
	.long	0x14e
	.uleb128 0xa
	.long	.LASF27
	.sleb128 0
	.uleb128 0xa
	.long	.LASF28
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x5
	.byte	0xd1
	.long	0x139
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd2
	.long	0x17a
	.uleb128 0xa
	.long	.LASF30
	.sleb128 0
	.uleb128 0xa
	.long	.LASF31
	.sleb128 1
	.uleb128 0xa
	.long	.LASF32
	.sleb128 2
	.uleb128 0xa
	.long	.LASF33
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF34
	.byte	0x5
	.byte	0xd7
	.long	0x159
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd9
	.long	0x1d0
	.uleb128 0xa
	.long	.LASF35
	.sleb128 0
	.uleb128 0xa
	.long	.LASF36
	.sleb128 1
	.uleb128 0xa
	.long	.LASF37
	.sleb128 2
	.uleb128 0xa
	.long	.LASF38
	.sleb128 3
	.uleb128 0xa
	.long	.LASF39
	.sleb128 4
	.uleb128 0xa
	.long	.LASF40
	.sleb128 5
	.uleb128 0xa
	.long	.LASF41
	.sleb128 6
	.uleb128 0xa
	.long	.LASF42
	.sleb128 7
	.uleb128 0xa
	.long	.LASF43
	.sleb128 8
	.uleb128 0xa
	.long	.LASF44
	.sleb128 9
	.uleb128 0xa
	.long	.LASF45
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x5
	.byte	0xe5
	.long	0x185
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xe8
	.long	0x1f6
	.uleb128 0xa
	.long	.LASF47
	.sleb128 0
	.uleb128 0xa
	.long	.LASF48
	.sleb128 1
	.uleb128 0xa
	.long	.LASF49
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x5
	.byte	0xec
	.long	0x1db
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xef
	.long	0x23a
	.uleb128 0xa
	.long	.LASF51
	.sleb128 0
	.uleb128 0xa
	.long	.LASF52
	.sleb128 1
	.uleb128 0xa
	.long	.LASF53
	.sleb128 2
	.uleb128 0xa
	.long	.LASF54
	.sleb128 3
	.uleb128 0xa
	.long	.LASF55
	.sleb128 4
	.uleb128 0xa
	.long	.LASF56
	.sleb128 5
	.uleb128 0xa
	.long	.LASF57
	.sleb128 6
	.uleb128 0xa
	.long	.LASF58
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0x5
	.byte	0xf8
	.long	0x201
	.uleb128 0xb
	.byte	0x5
	.byte	0x5
	.word	0x100
	.long	0x29a
	.uleb128 0xc
	.long	.LASF60
	.byte	0x5
	.word	0x102
	.long	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x5
	.word	0x103
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF62
	.byte	0x5
	.word	0x104
	.long	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF63
	.byte	0x5
	.word	0x105
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.long	.LASF64
	.byte	0x5
	.word	0x106
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x5
	.word	0x107
	.long	0x245
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xd
	.long	0x2d9
	.uleb128 0x6
	.long	.LASF66
	.byte	0x6
	.byte	0xf
	.long	0x2d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF67
	.byte	0x6
	.byte	0x10
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF68
	.byte	0x6
	.byte	0x11
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0xc4
	.uleb128 0x2
	.long	.LASF69
	.byte	0x6
	.byte	0x12
	.long	0x2a6
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x14
	.long	0x30b
	.uleb128 0xa
	.long	.LASF70
	.sleb128 0
	.uleb128 0xa
	.long	.LASF71
	.sleb128 1
	.uleb128 0xa
	.long	.LASF72
	.sleb128 0
	.uleb128 0xa
	.long	.LASF73
	.sleb128 1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x341
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.byte	0x19
	.long	0x42
	.byte	0x5
	.byte	0x3
	.long	counter.1629
	.uleb128 0x11
	.long	.LVL0
	.byte	0x1
	.long	0x3b1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0xf
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x39f
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x11
	.long	0x29a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x13
	.long	.LVL1
	.long	0x3c5
	.uleb128 0x14
	.long	.LVL2
	.long	0x3d9
	.long	0x385
	.uleb128 0x15
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x9
	.byte	0xfa
	.byte	0
	.uleb128 0x16
	.long	.LVL3
	.byte	0x1
	.long	0x3f3
	.uleb128 0x15
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	LED_Control
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.byte	0xe
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LED_
	.uleb128 0x18
	.byte	0x1
	.long	.LASF76
	.byte	0x6
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0x3c5
	.uleb128 0x19
	.long	0x2df
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF77
	.byte	0x6
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.long	0x3d9
	.uleb128 0x19
	.long	0x2df
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF78
	.byte	0x5
	.word	0x109
	.byte	0x1
	.byte	0x1
	.long	0x3f3
	.uleb128 0x19
	.long	0x29a
	.uleb128 0x19
	.long	0x29
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.word	0x10b
	.byte	0x1
	.byte	0x1
	.long	0x408
	.uleb128 0x19
	.long	0x408
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x40e
	.uleb128 0x1b
	.byte	0x1
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
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.sleb128 9
	.long	.LCFI3
	.long	.LFE0
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"Led_Start"
.LASF46:
	.string	"Timer_CLK_Source_selection"
.LASF79:
	.string	"Timer0_CompareMatch_Callback"
.LASF44:
	.string	"External_Clock_Rising_edge"
.LASF42:
	.string	"Clk_1024"
.LASF8:
	.string	"short int"
.LASF15:
	.string	"HIGH"
.LASF70:
	.string	"LED_FW_OFF"
.LASF31:
	.string	"CTC_mode"
.LASF56:
	.string	"inverting_mode"
.LASF66:
	.string	"LED_port"
.LASF33:
	.string	"FastPWM_mode"
.LASF49:
	.string	"Timer_OutPut_Compare_match"
.LASF3:
	.string	"uint_16"
.LASF69:
	.string	"Led_Data"
.LASF58:
	.string	"Set_upCount_Clear_DownCount"
.LASF25:
	.string	"ADC_Diff_Mode"
.LASF43:
	.string	"External_Clock_falling_edge"
.LASF27:
	.string	"Timer0"
.LASF28:
	.string	"Timer2"
.LASF55:
	.string	"NON_inverting_mode"
.LASF83:
	.string	"LED_Control"
.LASF38:
	.string	"CLK_32"
.LASF81:
	.string	"../APP/Timer_CTC_APP/Timer_CTC_APP.c"
.LASF54:
	.string	"OC_SetOn_Compare_match"
.LASF11:
	.string	"float"
.LASF14:
	.string	"GPIO_Register"
.LASF10:
	.string	"long long int"
.LASF41:
	.string	"Clk_256"
.LASF9:
	.string	"long int"
.LASF52:
	.string	"OC_Toggle"
.LASF16:
	.string	"Digital_pinState"
.LASF78:
	.string	"TIMER_Init"
.LASF30:
	.string	"Normal_mode"
.LASF65:
	.string	"TIMER_DataType"
.LASF60:
	.string	"Timer_Number"
.LASF68:
	.string	"LED_Init_State"
.LASF72:
	.string	"LED_REV_ON"
.LASF82:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF80:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF74:
	.string	"counter"
.LASF2:
	.string	"uint_8"
.LASF7:
	.string	"signed char"
.LASF29:
	.string	"Timer_Number_Selection"
.LASF6:
	.string	"long long unsigned int"
.LASF61:
	.string	"Timer_mode"
.LASF51:
	.string	"OC_Disconnected"
.LASF73:
	.string	"LED_REV_OFF"
.LASF13:
	.string	"PORT"
.LASF34:
	.string	"Timer_mode_selection"
.LASF39:
	.string	"Clk_64"
.LASF62:
	.string	"Timer_CLK"
.LASF4:
	.string	"short unsigned int"
.LASF59:
	.string	"OC_behavior"
.LASF0:
	.string	"char"
.LASF40:
	.string	"CLK_128"
.LASF47:
	.string	"Timer_No_Interrupt"
.LASF67:
	.string	"LED_pin"
.LASF37:
	.string	"Clk_8"
.LASF45:
	.string	"Timer2_OneSec_CLK"
.LASF84:
	.string	"Timer_CTC_APP_Init"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF75:
	.string	"counter_1"
.LASF35:
	.string	"No_Clock_source"
.LASF53:
	.string	"OC_ClearOn_Compare_match"
.LASF76:
	.string	"Led_Toggle"
.LASF50:
	.string	"Timer_Interrupt_Source"
.LASF57:
	.string	"Clear_upCount_Set_DownCount"
.LASF48:
	.string	"Timer_Overflow_Interrupt"
.LASF36:
	.string	"No_Prescaling"
.LASF63:
	.string	"Timer_INT_source"
.LASF64:
	.string	"OC_Pin_State"
.LASF85:
	.string	"LED_"
.LASF71:
	.string	"LED_FW_ON"
.LASF26:
	.string	"GPIO_pin_number"
.LASF32:
	.string	"PhaseCorrectPWM_mode"
.LASF17:
	.string	"PIN0"
.LASF18:
	.string	"PIN1"
.LASF19:
	.string	"PIN2"
.LASF20:
	.string	"PIN3"
.LASF21:
	.string	"PIN4"
.LASF22:
	.string	"PIN5"
.LASF23:
	.string	"PIN6"
.LASF24:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
