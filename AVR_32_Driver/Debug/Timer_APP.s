	.file	"Timer_APP.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Timer_APP_INIT,"ax",@progbits
.global	Timer_APP_INIT
	.type	Timer_APP_INIT, @function
Timer_APP_INIT:
.LFB0:
	.file 1 "../APP/Timer_APP/Over_Flow/Timer_APP.c"
	.loc 1 14 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 16 0
	lds r22,LED_1
	lds r23,LED_1+1
	lds r24,LED_1+2
	lds r25,LED_1+3
	call Led_Start
.LVL0:
	.loc 1 18 0
	ldi r18,lo8(-6)
	lds r20,counter
	lds r21,counter+1
	lds r22,counter+2
	lds r23,counter+3
	lds r24,counter+4
	jmp TIMER_Init
.LVL1:
	.cfi_endproc
.LFE0:
	.size	Timer_APP_INIT, .-Timer_APP_INIT
	.section	.text.Timer_APP_Control,"ax",@progbits
.global	Timer_APP_Control
	.type	Timer_APP_Control, @function
Timer_APP_Control:
.LFB1:
	.loc 1 22 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 23 0
	lds r22,LED_1
	lds r23,LED_1+1
	lds r24,LED_1+2
	lds r25,LED_1+3
	ldi r20,lo8(1)
	call Led_State_Control
.LVL2:
	.loc 1 24 0
	ldi r18,0
	lds r20,counter
	lds r21,counter+1
	lds r22,counter+2
	lds r23,counter+3
	lds r24,counter+4
	call TIMER_Delay
.LVL3:
	.loc 1 25 0
	lds r22,LED_1
	lds r23,LED_1+1
	lds r24,LED_1+2
	lds r25,LED_1+3
	ldi r20,0
	call Led_State_Control
.LVL4:
	.loc 1 26 0
	ldi r18,0
	lds r20,counter
	lds r21,counter+1
	lds r22,counter+2
	lds r23,counter+3
	lds r24,counter+4
	jmp TIMER_Delay
.LVL5:
	.cfi_endproc
.LFE1:
	.size	Timer_APP_Control, .-Timer_APP_Control
.global	counter
	.section	.data.counter,"aw",@progbits
	.type	counter, @object
	.size	counter, 5
counter:
	.byte	0
	.byte	7
	.zero	3
.global	LED_1
	.section	.data.LED_1,"aw",@progbits
	.type	LED_1, @object
	.size	LED_1, 4
LED_1:
	.word	54
	.byte	0
	.byte	0
	.text
.Letext0:
	.file 2 "../Services/AVR_32_Registers.h"
	.file 3 "../Services/STD_Types.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../MCAL/Timer 0,2/Timer0.h"
	.file 6 "../HAL/LED_File/LED.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x420
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF81
	.byte	0x1
	.long	.LASF82
	.long	.LASF83
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF12
	.byte	0x3
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
	.byte	0x3
	.byte	0x2
	.byte	0x12
	.long	0xb4
	.uleb128 0x5
	.string	"PIN"
	.byte	0x2
	.byte	0x14
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x2
	.byte	0x15
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF11
	.byte	0x2
	.byte	0x16
	.long	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF13
	.byte	0x2
	.byte	0x17
	.long	0x81
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.long	0xd9
	.uleb128 0x9
	.string	"LOW"
	.sleb128 0
	.uleb128 0xa
	.long	.LASF14
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x18
	.long	0xc4
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.long	0x123
	.uleb128 0xa
	.long	.LASF16
	.sleb128 0
	.uleb128 0xa
	.long	.LASF17
	.sleb128 1
	.uleb128 0xa
	.long	.LASF18
	.sleb128 2
	.uleb128 0xa
	.long	.LASF19
	.sleb128 3
	.uleb128 0xa
	.long	.LASF20
	.sleb128 4
	.uleb128 0xa
	.long	.LASF21
	.sleb128 5
	.uleb128 0xa
	.long	.LASF22
	.sleb128 6
	.uleb128 0xa
	.long	.LASF23
	.sleb128 7
	.uleb128 0xa
	.long	.LASF24
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.byte	0x23
	.long	0xe4
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xce
	.long	0x143
	.uleb128 0xa
	.long	.LASF26
	.sleb128 0
	.uleb128 0xa
	.long	.LASF27
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x5
	.byte	0xd1
	.long	0x12e
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd2
	.long	0x16f
	.uleb128 0xa
	.long	.LASF29
	.sleb128 0
	.uleb128 0xa
	.long	.LASF30
	.sleb128 1
	.uleb128 0xa
	.long	.LASF31
	.sleb128 2
	.uleb128 0xa
	.long	.LASF32
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0xd7
	.long	0x14e
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xd9
	.long	0x1c5
	.uleb128 0xa
	.long	.LASF34
	.sleb128 0
	.uleb128 0xa
	.long	.LASF35
	.sleb128 1
	.uleb128 0xa
	.long	.LASF36
	.sleb128 2
	.uleb128 0xa
	.long	.LASF37
	.sleb128 3
	.uleb128 0xa
	.long	.LASF38
	.sleb128 4
	.uleb128 0xa
	.long	.LASF39
	.sleb128 5
	.uleb128 0xa
	.long	.LASF40
	.sleb128 6
	.uleb128 0xa
	.long	.LASF41
	.sleb128 7
	.uleb128 0xa
	.long	.LASF42
	.sleb128 8
	.uleb128 0xa
	.long	.LASF43
	.sleb128 9
	.uleb128 0xa
	.long	.LASF44
	.sleb128 10
	.byte	0
	.uleb128 0x2
	.long	.LASF45
	.byte	0x5
	.byte	0xe5
	.long	0x17a
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xe8
	.long	0x1eb
	.uleb128 0xa
	.long	.LASF46
	.sleb128 0
	.uleb128 0xa
	.long	.LASF47
	.sleb128 1
	.uleb128 0xa
	.long	.LASF48
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF49
	.byte	0x5
	.byte	0xec
	.long	0x1d0
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0xef
	.long	0x22f
	.uleb128 0xa
	.long	.LASF50
	.sleb128 0
	.uleb128 0xa
	.long	.LASF51
	.sleb128 1
	.uleb128 0xa
	.long	.LASF52
	.sleb128 2
	.uleb128 0xa
	.long	.LASF53
	.sleb128 3
	.uleb128 0xa
	.long	.LASF54
	.sleb128 4
	.uleb128 0xa
	.long	.LASF55
	.sleb128 5
	.uleb128 0xa
	.long	.LASF56
	.sleb128 6
	.uleb128 0xa
	.long	.LASF57
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF58
	.byte	0x5
	.byte	0xf8
	.long	0x1f6
	.uleb128 0xb
	.byte	0x5
	.byte	0x5
	.word	0x100
	.long	0x28f
	.uleb128 0xc
	.long	.LASF59
	.byte	0x5
	.word	0x102
	.long	0x143
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF60
	.byte	0x5
	.word	0x103
	.long	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF61
	.byte	0x5
	.word	0x104
	.long	0x1c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF62
	.byte	0x5
	.word	0x105
	.long	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.long	.LASF63
	.byte	0x5
	.word	0x106
	.long	0x22f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x5
	.word	0x107
	.long	0x23a
	.uleb128 0x4
	.byte	0x4
	.byte	0x6
	.byte	0xd
	.long	0x2ce
	.uleb128 0x6
	.long	.LASF65
	.byte	0x6
	.byte	0xf
	.long	0x2ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF66
	.byte	0x6
	.byte	0x10
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF67
	.byte	0x6
	.byte	0x11
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0xb9
	.uleb128 0x2
	.long	.LASF68
	.byte	0x6
	.byte	0x12
	.long	0x29b
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.byte	0x14
	.long	0x300
	.uleb128 0xa
	.long	.LASF69
	.sleb128 0
	.uleb128 0xa
	.long	.LASF70
	.sleb128 1
	.uleb128 0xa
	.long	.LASF71
	.sleb128 0
	.uleb128 0xa
	.long	.LASF72
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x6
	.byte	0x19
	.long	0x2df
	.uleb128 0xf
	.byte	0x1
	.long	.LASF74
	.byte	0x1
	.byte	0xd
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x33f
	.uleb128 0x10
	.long	.LVL0
	.long	0x3c6
	.uleb128 0x11
	.long	.LVL1
	.byte	0x1
	.long	0x3da
	.uleb128 0x12
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x9
	.byte	0xfa
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0x15
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x3a2
	.uleb128 0x13
	.long	.LVL2
	.long	0x3f4
	.long	0x36b
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x13
	.long	.LVL3
	.long	0x40d
	.long	0x37e
	.uleb128 0x12
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.long	.LVL4
	.long	0x3f4
	.long	0x391
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.long	.LVL5
	.byte	0x1
	.long	0x40d
	.uleb128 0x12
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF76
	.byte	0x1
	.byte	0xb
	.long	0x2d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LED_1
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.byte	0xc
	.long	0x28f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter
	.uleb128 0x15
	.byte	0x1
	.long	.LASF78
	.byte	0x6
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.long	0x3da
	.uleb128 0x16
	.long	0x2d4
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF79
	.byte	0x5
	.word	0x109
	.byte	0x1
	.byte	0x1
	.long	0x3f4
	.uleb128 0x16
	.long	0x28f
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF80
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.long	0x40d
	.uleb128 0x16
	.long	0x2d4
	.uleb128 0x16
	.long	0x300
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF84
	.byte	0x5
	.word	0x111
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x28f
	.uleb128 0x16
	.long	0x29
	.byte	0
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF78:
	.string	"Led_Start"
.LASF45:
	.string	"Timer_CLK_Source_selection"
.LASF66:
	.string	"LED_pin"
.LASF43:
	.string	"External_Clock_Rising_edge"
.LASF41:
	.string	"Clk_1024"
.LASF6:
	.string	"short int"
.LASF14:
	.string	"HIGH"
.LASF69:
	.string	"LED_FW_OFF"
.LASF30:
	.string	"CTC_mode"
.LASF55:
	.string	"inverting_mode"
.LASF65:
	.string	"LED_port"
.LASF32:
	.string	"FastPWM_mode"
.LASF68:
	.string	"Led_Data"
.LASF57:
	.string	"Set_upCount_Clear_DownCount"
.LASF24:
	.string	"ADC_Diff_Mode"
.LASF42:
	.string	"External_Clock_falling_edge"
.LASF26:
	.string	"Timer0"
.LASF27:
	.string	"Timer2"
.LASF83:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF74:
	.string	"Timer_APP_INIT"
.LASF54:
	.string	"NON_inverting_mode"
.LASF37:
	.string	"CLK_32"
.LASF53:
	.string	"OC_SetOn_Compare_match"
.LASF9:
	.string	"float"
.LASF13:
	.string	"GPIO_Register"
.LASF79:
	.string	"TIMER_Init"
.LASF8:
	.string	"long long int"
.LASF40:
	.string	"Clk_256"
.LASF7:
	.string	"long int"
.LASF51:
	.string	"OC_Toggle"
.LASF76:
	.string	"LED_1"
.LASF15:
	.string	"Digital_pinState"
.LASF73:
	.string	"Led_State"
.LASF29:
	.string	"Normal_mode"
.LASF64:
	.string	"TIMER_DataType"
.LASF59:
	.string	"Timer_Number"
.LASF67:
	.string	"LED_Init_State"
.LASF71:
	.string	"LED_REV_ON"
.LASF11:
	.string	"PORT"
.LASF1:
	.string	"unsigned char"
.LASF81:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF77:
	.string	"counter"
.LASF75:
	.string	"Timer_APP_Control"
.LASF12:
	.string	"uint_8"
.LASF5:
	.string	"signed char"
.LASF28:
	.string	"Timer_Number_Selection"
.LASF4:
	.string	"long long unsigned int"
.LASF60:
	.string	"Timer_mode"
.LASF50:
	.string	"OC_Disconnected"
.LASF72:
	.string	"LED_REV_OFF"
.LASF48:
	.string	"Timer_OutPut_Compare_match"
.LASF33:
	.string	"Timer_mode_selection"
.LASF84:
	.string	"TIMER_Delay"
.LASF38:
	.string	"Clk_64"
.LASF61:
	.string	"Timer_CLK"
.LASF2:
	.string	"short unsigned int"
.LASF58:
	.string	"OC_behavior"
.LASF0:
	.string	"char"
.LASF39:
	.string	"CLK_128"
.LASF46:
	.string	"Timer_No_Interrupt"
.LASF82:
	.string	"../APP/Timer_APP/Over_Flow/Timer_APP.c"
.LASF36:
	.string	"Clk_8"
.LASF44:
	.string	"Timer2_OneSec_CLK"
.LASF3:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF34:
	.string	"No_Clock_source"
.LASF52:
	.string	"OC_ClearOn_Compare_match"
.LASF49:
	.string	"Timer_Interrupt_Source"
.LASF56:
	.string	"Clear_upCount_Set_DownCount"
.LASF47:
	.string	"Timer_Overflow_Interrupt"
.LASF35:
	.string	"No_Prescaling"
.LASF62:
	.string	"Timer_INT_source"
.LASF63:
	.string	"OC_Pin_State"
.LASF80:
	.string	"Led_State_Control"
.LASF70:
	.string	"LED_FW_ON"
.LASF25:
	.string	"GPIO_pin_number"
.LASF31:
	.string	"PhaseCorrectPWM_mode"
.LASF16:
	.string	"PIN0"
.LASF17:
	.string	"PIN1"
.LASF18:
	.string	"PIN2"
.LASF19:
	.string	"PIN3"
.LASF20:
	.string	"PIN4"
.LASF21:
	.string	"PIN5"
.LASF22:
	.string	"PIN6"
.LASF23:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
