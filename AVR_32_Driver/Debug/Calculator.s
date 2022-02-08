	.file	"Calculator.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hello"
	.section	.text.Calculator_Init,"ax",@progbits
.global	Calculator_Init
	.type	Calculator_Init, @function
Calculator_Init:
.LFB6:
	.file 1 "../APP/Calculator/Calculator.c"
	.loc 1 26 0
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
	.loc 1 27 0
	call LCD_Init
.LVL0:
	.loc 1 28 0
	lds r16,keypad1
	lds r17,keypad1+1
	lds r18,keypad1+2
	lds r19,keypad1+3
	lds r20,keypad1+4
	lds r21,keypad1+5
	lds r22,keypad1+6
	lds r23,keypad1+7
	lds r24,keypad1+8
	lds r25,keypad1+9
	call keypad_Init
.LVL1:
	.loc 1 29 0
	lds r22,LED1
	lds r23,LED1+1
	lds r24,LED1+2
	lds r25,LED1+3
	call Led_Start
.LVL2:
	.loc 1 30 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call Send_String_LCD
.LVL3:
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
/* epilogue start */
.LBE7:
.LBE6:
	.loc 1 33 0
	pop r17
	pop r16
	.loc 1 32 0
	jmp Clear_LCD
.LVL4:
	.cfi_endproc
.LFE6:
	.size	Calculator_Init, .-Calculator_Init
	.section	.text.Calculator_operation,"ax",@progbits
.global	Calculator_operation
	.type	Calculator_operation, @function
Calculator_operation:
.LFB7:
	.loc 1 35 0
	.cfi_startproc
	push r16
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 36 0
	lds r16,keypad1
	lds r17,keypad1+1
	lds r18,keypad1+2
	lds r19,keypad1+3
	lds r20,keypad1+4
	lds r21,keypad1+5
	lds r22,keypad1+6
	lds r23,keypad1+7
	lds r24,keypad1+8
	lds r25,keypad1+9
	call keypad_Read
.LVL5:
	sts Data_Enter,r24
	.loc 1 37 0
	cpi r24,lo8(50)
	breq .L5
/* epilogue start */
	.loc 1 43 0
	pop r17
	pop r16
	ret
.L5:
	.loc 1 39 0
	lds r22,LED1
	lds r23,LED1+1
	lds r24,LED1+2
	lds r25,LED1+3
	call Led_Toggle
.LVL6:
.LBB8:
.LBB9:
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
.LBE9:
.LBE8:
	.loc 1 41 0
	ldi r24,lo8(50)
/* epilogue start */
	.loc 1 43 0
	pop r17
	pop r16
	.loc 1 41 0
	jmp Send_char_LCD
.LVL7:
	.cfi_endproc
.LFE7:
	.size	Calculator_operation, .-Calculator_operation
.global	Data_Enter
	.section	.bss.Data_Enter,"aw",@nobits
	.type	Data_Enter, @object
	.size	Data_Enter, 1
Data_Enter:
	.zero	1
.global	LED1
	.section	.data.LED1,"aw",@progbits
	.type	LED1, @object
	.size	LED1, 4
LED1:
	.word	54
	.byte	6
	.byte	0
.global	keypad1
	.section	.data.keypad1,"aw",@progbits
	.type	keypad1, @object
	.size	keypad1, 10
keypad1:
	.word	57
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
.global	Keypad_array
	.section	.data.Keypad_array,"aw",@progbits
	.type	Keypad_array, @object
	.size	Keypad_array, 16
Keypad_array:
	.byte	55
	.byte	56
	.byte	57
	.byte	65
	.byte	52
	.byte	53
	.byte	54
	.byte	66
	.byte	49
	.byte	50
	.byte	51
	.byte	67
	.byte	35
	.byte	48
	.byte	42
	.byte	68
	.text
.Letext0:
	.file 3 "../Services/STD_Types.h"
	.file 4 "../Services/AVR_32_Registers.h"
	.file 5 "../MCAL/DIO/GPIO.h"
	.file 6 "../HAL/Keypad/Keypad.h"
	.file 7 "../HAL/LED_File/LED.h"
	.file 8 "c:\\program files (x86)\\atmel\\atmel toolchain\\avr8 gcc\\native\\3.4.1061\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 9 "../HAL/LCD_Screen/LCD.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x489
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.long	.LASF65
	.long	.LASF66
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
	.byte	0x4
	.byte	0x12
	.long	0xbf
	.uleb128 0x5
	.string	"PIN"
	.byte	0x4
	.byte	0x14
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"DDR"
	.byte	0x4
	.byte	0x15
	.long	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF13
	.byte	0x4
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
	.byte	0x4
	.byte	0x17
	.long	0x8c
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
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
	.byte	0x5
	.byte	0x18
	.long	0xcf
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
	.uleb128 0x4
	.byte	0xa
	.byte	0x6
	.byte	0x21
	.long	0x1c0
	.uleb128 0x6
	.long	.LASF27
	.byte	0x6
	.byte	0x23
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x6
	.byte	0x24
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF29
	.byte	0x6
	.byte	0x25
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF30
	.byte	0x6
	.byte	0x26
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF31
	.byte	0x6
	.byte	0x27
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.long	.LASF32
	.byte	0x6
	.byte	0x28
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.long	.LASF33
	.byte	0x6
	.byte	0x29
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.long	.LASF34
	.byte	0x6
	.byte	0x2a
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.long	.LASF35
	.byte	0x6
	.byte	0x2b
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0xc4
	.uleb128 0x2
	.long	.LASF36
	.byte	0x6
	.byte	0x2c
	.long	0x139
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.byte	0xd
	.long	0x204
	.uleb128 0x6
	.long	.LASF37
	.byte	0x7
	.byte	0xf
	.long	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF38
	.byte	0x7
	.byte	0x10
	.long	0x12e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF39
	.byte	0x7
	.byte	0x11
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x7
	.byte	0x12
	.long	0x1d1
	.uleb128 0x8
	.byte	0x1
	.byte	0x7
	.byte	0x14
	.long	0x230
	.uleb128 0xa
	.long	.LASF41
	.sleb128 0
	.uleb128 0xa
	.long	.LASF42
	.sleb128 1
	.uleb128 0xa
	.long	.LASF43
	.sleb128 0
	.uleb128 0xa
	.long	.LASF44
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF45
	.uleb128 0x2
	.long	.LASF46
	.byte	0x8
	.byte	0x7e
	.long	0x54
	.uleb128 0xd
	.long	.LASF67
	.byte	0x2
	.byte	0x8e
	.byte	0x1
	.byte	0x3
	.long	0x282
	.uleb128 0xe
	.long	.LASF68
	.byte	0x2
	.byte	0x8e
	.long	0x85
	.uleb128 0xf
	.long	.LASF47
	.byte	0x2
	.byte	0x90
	.long	0x85
	.uleb128 0xf
	.long	.LASF48
	.byte	0x2
	.byte	0x94
	.long	0x23e
	.uleb128 0x10
	.byte	0x1
	.long	.LASF56
	.byte	0x2
	.byte	0x95
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x19
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.long	0x318
	.uleb128 0x12
	.long	0x249
	.long	.LBB6
	.long	.LBE6
	.byte	0x1
	.byte	0x1f
	.long	0x2d6
	.uleb128 0x13
	.long	0x256
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x14
	.long	.LBB7
	.long	.LBE7
	.uleb128 0x15
	.long	0x261
	.byte	0x4
	.long	0x49c35000
	.uleb128 0x16
	.long	0x26c
	.long	0x186a00
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LVL0
	.long	0x3f5
	.uleb128 0x17
	.long	.LVL1
	.long	0x3ff
	.uleb128 0x17
	.long	.LVL2
	.long	0x413
	.uleb128 0x18
	.long	.LVL3
	.long	0x427
	.long	0x30d
	.uleb128 0x19
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
	.uleb128 0x1a
	.long	.LVL4
	.byte	0x1
	.long	0x441
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x22
	.long	.LFB7
	.long	.LFE7
	.long	.LLST1
	.byte	0x1
	.long	0x390
	.uleb128 0x12
	.long	0x249
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x28
	.long	0x36c
	.uleb128 0x13
	.long	0x256
	.byte	0x4
	.long	0x42c80000
	.uleb128 0x14
	.long	.LBB9
	.long	.LBE9
	.uleb128 0x15
	.long	0x261
	.byte	0x4
	.long	0x49c35000
	.uleb128 0x16
	.long	0x26c
	.long	0x186a00
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LVL5
	.long	0x450
	.uleb128 0x17
	.long	.LVL6
	.long	0x468
	.uleb128 0x1b
	.long	.LVL7
	.byte	0x1
	.long	0x47c
	.uleb128 0x19
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x29
	.long	0x3a6
	.uleb128 0x1d
	.long	0x3a6
	.byte	0x3
	.uleb128 0x1d
	.long	0x3a6
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF51
	.uleb128 0x1e
	.long	.LASF52
	.byte	0x1
	.byte	0xe
	.long	0x390
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Keypad_array
	.uleb128 0x1e
	.long	.LASF53
	.byte	0x1
	.byte	0x14
	.long	0x1c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	keypad1
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x1
	.byte	0x15
	.long	0x204
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LED1
	.uleb128 0x1e
	.long	.LASF55
	.byte	0x1
	.byte	0x17
	.long	0x29
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Data_Enter
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF57
	.byte	0x9
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF58
	.byte	0x6
	.byte	0x31
	.byte	0x1
	.byte	0x1
	.long	0x413
	.uleb128 0x21
	.long	0x1c6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF59
	.byte	0x7
	.byte	0x1a
	.byte	0x1
	.byte	0x1
	.long	0x427
	.uleb128 0x21
	.long	0x204
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF60
	.byte	0x9
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.long	0x43b
	.uleb128 0x21
	.long	0x43b
	.byte	0
	.uleb128 0xb
	.byte	0x2
	.long	0x29
	.uleb128 0x22
	.byte	0x1
	.long	.LASF62
	.byte	0x9
	.byte	0x47
	.byte	0x1
	.long	0x450
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF69
	.byte	0x6
	.byte	0x32
	.byte	0x1
	.long	0x3b
	.byte	0x1
	.long	0x468
	.uleb128 0x21
	.long	0x1c6
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF61
	.byte	0x7
	.byte	0x1d
	.byte	0x1
	.byte	0x1
	.long	0x47c
	.uleb128 0x21
	.long	0x204
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF63
	.byte	0x9
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.long	.LFE7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
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
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"Led_Start"
.LASF39:
	.string	"LED_Init_State"
.LASF32:
	.string	"KCOL1"
.LASF33:
	.string	"KCOL2"
.LASF34:
	.string	"KCOL3"
.LASF35:
	.string	"KCOL4"
.LASF56:
	.string	"__builtin_avr_delay_cycles"
.LASF8:
	.string	"short int"
.LASF47:
	.string	"__tmp"
.LASF50:
	.string	"Calculator_operation"
.LASF15:
	.string	"HIGH"
.LASF41:
	.string	"LED_FW_OFF"
.LASF27:
	.string	"Keypad_port"
.LASF37:
	.string	"LED_port"
.LASF61:
	.string	"Led_Toggle"
.LASF53:
	.string	"keypad1"
.LASF40:
	.string	"Led_Data"
.LASF25:
	.string	"ADC_Diff_Mode"
.LASF62:
	.string	"Clear_LCD"
.LASF1:
	.string	"uint8"
.LASF49:
	.string	"Calculator_Init"
.LASF11:
	.string	"float"
.LASF14:
	.string	"GPIO_Register"
.LASF60:
	.string	"Send_String_LCD"
.LASF10:
	.string	"long long int"
.LASF9:
	.string	"long int"
.LASF67:
	.string	"_delay_ms"
.LASF16:
	.string	"Digital_pinState"
.LASF43:
	.string	"LED_REV_ON"
.LASF66:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF3:
	.string	"unsigned char"
.LASF64:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF0:
	.string	"uint_8"
.LASF7:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF46:
	.string	"uint32_t"
.LASF44:
	.string	"LED_REV_OFF"
.LASF45:
	.string	"unsigned int"
.LASF65:
	.string	"../APP/Calculator/Calculator.c"
.LASF13:
	.string	"PORT"
.LASF38:
	.string	"LED_pin"
.LASF55:
	.string	"Data_Enter"
.LASF48:
	.string	"__ticks_dc"
.LASF4:
	.string	"short unsigned int"
.LASF2:
	.string	"char"
.LASF58:
	.string	"keypad_Init"
.LASF57:
	.string	"LCD_Init"
.LASF54:
	.string	"LED1"
.LASF42:
	.string	"LED_FW_ON"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF36:
	.string	"Keypad_Data"
.LASF69:
	.string	"keypad_Read"
.LASF68:
	.string	"__ms"
.LASF51:
	.string	"sizetype"
.LASF28:
	.string	"KROW1"
.LASF29:
	.string	"KROW2"
.LASF30:
	.string	"KROW3"
.LASF31:
	.string	"KROW4"
.LASF52:
	.string	"Keypad_array"
.LASF63:
	.string	"Send_char_LCD"
.LASF26:
	.string	"GPIO_pin_number"
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
