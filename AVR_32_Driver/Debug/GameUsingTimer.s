	.file	"GameUsingTimer.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ISR_CTC_Timer,"ax",@progbits
.global	ISR_CTC_Timer
	.type	ISR_CTC_Timer, @function
ISR_CTC_Timer:
.LFB8:
	.file 1 "../APP/GameUsingTimer/GameUsingTimer.c"
	.loc 1 63 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 65 0
	lds r24,counter1
	lds r25,counter1+1
	adiw r24,1
	sts counter1+1,r25
	sts counter1,r24
	ret
	.cfi_endproc
.LFE8:
	.size	ISR_CTC_Timer, .-ISR_CTC_Timer
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello,Sir"
.LC1:
	.string	"3+?=5"
	.section	.text.Game_Init_System,"ax",@progbits
.global	Game_Init_System
	.type	Game_Init_System, @function
Game_Init_System:
.LFB6:
	.loc 1 21 0
	.cfi_startproc
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 22 0
	ldi r18,lo8(78)
	lds r20,counter_app
	lds r21,counter_app+1
	lds r22,counter_app+2
	lds r23,counter_app+3
	lds r24,counter_app+4
	call TIMER_Init
.LVL0:
	.loc 1 23 0
	ldi r24,lo8(gs(ISR_CTC_Timer))
	ldi r25,hi8(gs(ISR_CTC_Timer))
	call Timer0_CompareMatch_Callback
.LVL1:
	.loc 1 24 0
	lds r16,keypad_app
	lds r17,keypad_app+1
	lds r18,keypad_app+2
	lds r19,keypad_app+3
	lds r20,keypad_app+4
	lds r21,keypad_app+5
	lds r22,keypad_app+6
	lds r23,keypad_app+7
	lds r24,keypad_app+8
	lds r25,keypad_app+9
	call keypad_Init
.LVL2:
	.loc 1 25 0
	call LCD_Init
.LVL3:
	.loc 1 26 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call Send_String_LCD
.LVL4:
.LBB6:
.LBB7:
	.file 2 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 163 0
	ldi r18,lo8(319999)
	ldi r24,hi8(319999)
	ldi r25,hlo8(319999)
	1: subi r18,1
	sbci r24,0
	sbci r25,0
	brne 1b
	rjmp .
	nop
.LBE7:
.LBE6:
	.loc 1 28 0
	call Clear_LCD
.LVL5:
	.loc 1 29 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
/* epilogue start */
	.loc 1 30 0
	pop r17
	pop r16
	.loc 1 29 0
	jmp Send_String_LCD
.LVL6:
	.cfi_endproc
.LFE6:
	.size	Game_Init_System, .-Game_Init_System
	.section	.rodata.str1.1
.LC2:
	.string	"Well Done"
.LC3:
	.string	"Time is Over"
	.section	.text.Game_Playing_System,"ax",@progbits
.global	Game_Playing_System
	.type	Game_Playing_System, @function
Game_Playing_System:
.LFB7:
	.loc 1 32 0
	.cfi_startproc
	push r16
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.loc 1 37 0
	ldi r28,lo8(1)
	ldi r29,0
	rjmp .L7
.LVL7:
.L11:
	.loc 1 41 0 discriminator 1
	lds r24,Flag1
	lds r25,Flag1+1
	or r24,r25
	brne .L6
.LVL8:
.L7:
	.loc 1 35 0
	lds r24,counter1
	lds r25,counter1+1
	cpi r24,-23
	sbci r25,3
	brlo .L4
	.loc 1 37 0
	sts Flag1+1,r29
	sts Flag1,r28
.L4:
	.loc 1 39 0
	lds r16,keypad_app
	lds r17,keypad_app+1
	lds r18,keypad_app+2
	lds r19,keypad_app+3
	lds r20,keypad_app+4
	lds r21,keypad_app+5
	lds r22,keypad_app+6
	lds r23,keypad_app+7
	lds r24,keypad_app+8
	lds r25,keypad_app+9
	call keypad_Read
.LVL9:
	sts keypad_Read_Value,r24
.LVL10:
.LBB8:
.LBB9:
	.loc 2 163 0
	ldi r24,lo8(319999)
	ldi r25,hi8(319999)
	ldi r18,hlo8(319999)
	1: subi r24,1
	sbci r25,0
	sbci r18,0
	brne 1b
	rjmp .
	nop
.LBE9:
.LBE8:
	.loc 1 41 0
	lds r24,keypad_Read_Value
	cpi r24,lo8(-1)
	breq .L11
	.loc 1 48 0
	cpi r24,lo8(50)
	breq .L12
.L6:
	.loc 1 56 0
	call Clear_LCD
.LVL11:
	.loc 1 57 0
	ldi r22,lo8(5)
	ldi r24,lo8(2)
	call Move_Curser_LCD
.LVL12:
	.loc 1 58 0
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
/* epilogue start */
	.loc 1 61 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 58 0
	jmp Send_String_LCD
.LVL13:
.L12:
	.loc 1 50 0
	call Clear_LCD
.LVL14:
	.loc 1 51 0
	ldi r22,lo8(5)
	ldi r24,lo8(2)
	call Move_Curser_LCD
.LVL15:
	.loc 1 52 0
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
/* epilogue start */
	.loc 1 61 0
	pop r29
	pop r28
	pop r17
	pop r16
	.loc 1 58 0
	jmp Send_String_LCD
.LVL16:
	.cfi_endproc
.LFE7:
	.size	Game_Playing_System, .-Game_Playing_System
	.comm	keypad_Read_Value,1,1
	.comm	Flag1,2,1
	.comm	counter1,2,1
.global	keypad_app
	.section	.data.keypad_app,"aw",@progbits
	.type	keypad_app, @object
	.size	keypad_app, 10
keypad_app:
	.word	57
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
.global	counter_app
	.section	.data.counter_app,"aw",@progbits
	.type	counter_app, @object
	.size	counter_app, 5
counter_app:
	.byte	0
	.byte	1
	.byte	7
	.byte	2
	.zero	1
	.text
.Letext0:
	.file 3 "../Services/STD_Types.h"
	.file 4 "../Services/AVR_32_Registers.h"
	.file 5 "../MCAL/DIO/GPIO.h"
	.file 6 "../MCAL/Timer 0,2/Timer0.h"
	.file 7 "../HAL/Keypad/Keypad.h"
	.file 8 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 9 "../HAL/LCD_Screen/LCD.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x656
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0x1
	.long	.LASF96
	.long	.LASF97
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x3
	.byte	0xd
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x3
	.byte	0xe
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0xf
	.long	0x58
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF13
	.uleb128 0x4
	.byte	0x3
	.byte	0x4
	.byte	0x12
	.long	0xca
	.uleb128 0x5
	.string	"PIN"
	.byte	0x4
	.byte	0x14
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x4
	.byte	0x15
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x4
	.byte	0x16
	.long	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x7
	.long	0x29
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x17
	.long	0x97
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.long	0xef
	.uleb128 0x9
	.string	"LOW"
	.sleb128 0
	.uleb128 0xa
	.long	.LASF16
	.sleb128 1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
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
	.byte	0x5
	.byte	0x23
	.long	0xef
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
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
	.byte	0x6
	.byte	0xd1
	.long	0x139
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
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
	.byte	0x6
	.byte	0xd7
	.long	0x159
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
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
	.byte	0x6
	.byte	0xe5
	.long	0x185
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
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
	.byte	0x6
	.byte	0xec
	.long	0x1db
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
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
	.byte	0x6
	.byte	0xf8
	.long	0x201
	.uleb128 0xb
	.byte	0x5
	.byte	0x6
	.word	0x100
	.long	0x29a
	.uleb128 0xc
	.long	.LASF60
	.byte	0x6
	.word	0x102
	.long	0x14e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x6
	.word	0x103
	.long	0x17a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF62
	.byte	0x6
	.word	0x104
	.long	0x1d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF63
	.byte	0x6
	.word	0x105
	.long	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xc
	.long	.LASF64
	.byte	0x6
	.word	0x106
	.long	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF65
	.byte	0x6
	.word	0x107
	.long	0x245
	.uleb128 0xe
	.byte	0x2
	.long	0xcf
	.uleb128 0x4
	.byte	0xa
	.byte	0x7
	.byte	0x21
	.long	0x333
	.uleb128 0x6
	.long	.LASF66
	.byte	0x7
	.byte	0x23
	.long	0x2a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF67
	.byte	0x7
	.byte	0x24
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF68
	.byte	0x7
	.byte	0x25
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF69
	.byte	0x7
	.byte	0x26
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF70
	.byte	0x7
	.byte	0x27
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF71
	.byte	0x7
	.byte	0x28
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF72
	.byte	0x7
	.byte	0x29
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF73
	.byte	0x7
	.byte	0x2a
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF74
	.byte	0x7
	.byte	0x2b
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x2
	.long	.LASF75
	.byte	0x7
	.byte	0x2c
	.long	0x2ac
	.uleb128 0xf
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF76
	.uleb128 0x2
	.long	.LASF77
	.byte	0x8
	.byte	0x7e
	.long	0x5f
	.uleb128 0x10
	.long	.LASF98
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x390
	.uleb128 0x11
	.long	.LASF99
	.byte	0x2
	.byte	0x8e
	.long	0x90
	.uleb128 0x12
	.long	.LASF78
	.byte	0x2
	.byte	0x90
	.long	0x90
	.uleb128 0x12
	.long	.LASF79
	.byte	0x2
	.byte	0x94
	.long	0x34c
	.uleb128 0x13
	.byte	0x1
	.long	.LASF90
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.long	.LASF100
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0x14
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.long	0x47b
	.uleb128 0x16
	.long	0x357
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x1b
	.long	0x3fa
	.uleb128 0x17
	.long	0x364
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x18
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x19
	.long	0x36f
	.byte	0x4
	.long	0x49c35000
	.uleb128 0x1a
	.long	0x37a
	.long	0x186a00
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL0
	.long	0x5ae
	.long	0x40e
	.uleb128 0x1c
	.byte	0x1
	.byte	0x62
	.byte	0x2
	.byte	0x8
	.byte	0x4e
	.byte	0
	.uleb128 0x1b
	.long	.LVL1
	.long	0x5c8
	.long	0x42a
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ISR_CTC_Timer
	.byte	0
	.uleb128 0x1d
	.long	.LVL2
	.long	0x5e5
	.uleb128 0x1d
	.long	.LVL3
	.long	0x5f9
	.uleb128 0x1b
	.long	.LVL4
	.long	0x603
	.long	0x458
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0x1d
	.long	.LVL5
	.long	0x61d
	.uleb128 0x1e
	.long	.LVL6
	.byte	0x1
	.long	0x603
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0x1f
	.long	.LFB7
	.long	.LFE7
	.long	.LLST1
	.byte	0x1
	.long	0x54f
	.uleb128 0x16
	.long	0x357
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x28
	.long	0x4cd
	.uleb128 0x1f
	.long	0x364
	.long	.LLST2
	.uleb128 0x18
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x20
	.long	0x36f
	.long	.LLST3
	.uleb128 0x20
	.long	0x37a
	.long	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL9
	.long	0x62c
	.uleb128 0x1d
	.long	.LVL11
	.long	0x61d
	.uleb128 0x1b
	.long	.LVL12
	.long	0x644
	.long	0x4f7
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x21
	.long	.LVL13
	.byte	0x1
	.long	0x603
	.long	0x514
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.byte	0
	.uleb128 0x1d
	.long	.LVL14
	.long	0x61d
	.uleb128 0x1b
	.long	.LVL15
	.long	0x644
	.long	0x535
	.uleb128 0x1c
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x1c
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0x1e
	.long	.LVL16
	.byte	0x1
	.long	0x603
	.uleb128 0x1c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF82
	.byte	0x1
	.byte	0xf
	.long	0x29a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter_app
	.uleb128 0x22
	.long	.LASF83
	.byte	0x1
	.byte	0x10
	.long	0x333
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keypad_app
	.uleb128 0x22
	.long	.LASF84
	.byte	0x1
	.byte	0x11
	.long	0x585
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter1
	.uleb128 0x7
	.long	0x4d
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.byte	0x11
	.long	0x585
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Flag1
	.uleb128 0x22
	.long	.LASF86
	.byte	0x1
	.byte	0x12
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keypad_Read_Value
	.uleb128 0x23
	.byte	0x1
	.long	.LASF87
	.byte	0x6
	.word	0x109
	.byte	0x1
	.byte	0x1
	.long	0x5c8
	.uleb128 0x24
	.long	0x29a
	.uleb128 0x24
	.long	0x29
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF88
	.byte	0x6
	.word	0x10b
	.byte	0x1
	.byte	0x1
	.long	0x5dd
	.uleb128 0x24
	.long	0x5dd
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x5e3
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF89
	.byte	0x7
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.long	0x5f9
	.uleb128 0x24
	.long	0x333
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF91
	.byte	0x9
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.long	.LASF92
	.byte	0x9
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.long	0x617
	.uleb128 0x24
	.long	0x617
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x29
	.uleb128 0x28
	.byte	0x1
	.long	.LASF93
	.byte	0x9
	.byte	0x47
	.byte	0x1
	.long	0x62c
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF101
	.byte	0x7
	.byte	0x32
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x644
	.uleb128 0x24
	.long	0x333
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.long	.LASF94
	.byte	0x9
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.long	0x29
	.uleb128 0x24
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
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2117
	.uleb128 0xc
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
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB6
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
	.long	.LFE6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LFB7
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42c80000
	.long	.LVL10
	.long	.LFE7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x42c80000
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x49c35000
	.long	.LVL10
	.long	.LFE7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x49c35000
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0xc
	.long	0x186a00
	.byte	0x9f
	.long	.LVL10
	.long	.LFE7
	.word	0x6
	.byte	0xc
	.long	0x186a00
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB8
	.long	.LFE8
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF46:
	.string	"Timer_CLK_Source_selection"
.LASF85:
	.string	"Flag1"
.LASF66:
	.string	"Keypad_port"
.LASF71:
	.string	"KCOL1"
.LASF44:
	.string	"External_Clock_Rising_edge"
.LASF73:
	.string	"KCOL3"
.LASF74:
	.string	"KCOL4"
.LASF42:
	.string	"Clk_1024"
.LASF90:
	.string	"__builtin_avr_delay_cycles"
.LASF9:
	.string	"short int"
.LASF78:
	.string	"__tmp"
.LASF16:
	.string	"HIGH"
.LASF82:
	.string	"counter_app"
.LASF31:
	.string	"CTC_mode"
.LASF56:
	.string	"inverting_mode"
.LASF33:
	.string	"FastPWM_mode"
.LASF4:
	.string	"uint_16"
.LASF58:
	.string	"Set_upCount_Clear_DownCount"
.LASF25:
	.string	"ADC_Diff_Mode"
.LASF43:
	.string	"External_Clock_falling_edge"
.LASF93:
	.string	"Clear_LCD"
.LASF27:
	.string	"Timer0"
.LASF1:
	.string	"uint8"
.LASF97:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF55:
	.string	"NON_inverting_mode"
.LASF77:
	.string	"uint32_t"
.LASF38:
	.string	"CLK_32"
.LASF83:
	.string	"keypad_app"
.LASF54:
	.string	"OC_SetOn_Compare_match"
.LASF100:
	.string	"ISR_CTC_Timer"
.LASF12:
	.string	"float"
.LASF15:
	.string	"GPIO_Register"
.LASF92:
	.string	"Send_String_LCD"
.LASF11:
	.string	"long long int"
.LASF41:
	.string	"Clk_256"
.LASF10:
	.string	"long int"
.LASF52:
	.string	"OC_Toggle"
.LASF101:
	.string	"keypad_Read"
.LASF98:
	.string	"_delay_ms"
.LASF81:
	.string	"Game_Playing_System"
.LASF72:
	.string	"KCOL2"
.LASF87:
	.string	"TIMER_Init"
.LASF67:
	.string	"KROW1"
.LASF30:
	.string	"Normal_mode"
.LASF65:
	.string	"TIMER_DataType"
.LASF60:
	.string	"Timer_Number"
.LASF14:
	.string	"PORT"
.LASF3:
	.string	"unsigned char"
.LASF95:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF80:
	.string	"Game_Init_System"
.LASF0:
	.string	"uint_8"
.LASF8:
	.string	"signed char"
.LASF29:
	.string	"Timer_Number_Selection"
.LASF7:
	.string	"long long unsigned int"
.LASF61:
	.string	"Timer_mode"
.LASF51:
	.string	"OC_Disconnected"
.LASF76:
	.string	"unsigned int"
.LASF49:
	.string	"Timer_OutPut_Compare_match"
.LASF34:
	.string	"Timer_mode_selection"
.LASF88:
	.string	"Timer0_CompareMatch_Callback"
.LASF39:
	.string	"Clk_64"
.LASF79:
	.string	"__ticks_dc"
.LASF62:
	.string	"Timer_CLK"
.LASF5:
	.string	"short unsigned int"
.LASF59:
	.string	"OC_behavior"
.LASF2:
	.string	"char"
.LASF89:
	.string	"keypad_Init"
.LASF40:
	.string	"CLK_128"
.LASF91:
	.string	"LCD_Init"
.LASF84:
	.string	"counter1"
.LASF47:
	.string	"Timer_No_Interrupt"
.LASF37:
	.string	"Clk_8"
.LASF45:
	.string	"Timer2_OneSec_CLK"
.LASF94:
	.string	"Move_Curser_LCD"
.LASF6:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF35:
	.string	"No_Clock_source"
.LASF53:
	.string	"OC_ClearOn_Compare_match"
.LASF50:
	.string	"Timer_Interrupt_Source"
.LASF75:
	.string	"Keypad_Data"
.LASF57:
	.string	"Clear_upCount_Set_DownCount"
.LASF48:
	.string	"Timer_Overflow_Interrupt"
.LASF99:
	.string	"__ms"
.LASF36:
	.string	"No_Prescaling"
.LASF63:
	.string	"Timer_INT_source"
.LASF64:
	.string	"OC_Pin_State"
.LASF68:
	.string	"KROW2"
.LASF69:
	.string	"KROW3"
.LASF70:
	.string	"KROW4"
.LASF28:
	.string	"Timer2"
.LASF86:
	.string	"keypad_Read_Value"
.LASF96:
	.string	"../APP/GameUsingTimer/GameUsingTimer.c"
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
