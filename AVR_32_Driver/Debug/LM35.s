	.file	"LM35.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LM35_Init,"ax",@progbits
.global	LM35_Init
	.type	LM35_Init, @function
LM35_Init:
.LFB6:
	.file 1 "../HAL/Tempreture_Sensor_LM35/LM35.c"
	.loc 1 11 0
	.cfi_startproc
.LVL0:
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
	rcall .
.LCFI2:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI3:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 13 0
	mov r20,r24
	ldi r21,lo8(1)
	ldi r22,lo8(2)
	ldi r23,lo8(5)
	ldi r24,0
.LVL1:
	ldi r25,0
	call ADC_Init
.LVL2:
/* epilogue start */
	.loc 1 14 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE6:
	.size	LM35_Init, .-LM35_Init
	.section	.text.Read_LM35_Temp,"ax",@progbits
.global	Read_LM35_Temp
	.type	Read_LM35_Temp, @function
Read_LM35_Temp:
.LFB7:
	.loc 1 16 0
	.cfi_startproc
.LVL3:
	push r28
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
	rcall .
.LCFI6:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI7:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
.LVL4:
	.loc 1 19 0
	mov r20,r24
	ldi r21,lo8(1)
	ldi r22,lo8(2)
	ldi r23,lo8(5)
	ldi r24,0
.LVL5:
	ldi r25,0
	call ADC_Read
.LVL6:
	.loc 1 22 0
	ldi r25,lo8(21)
	mul r24,r25
	mov r24,r0
	clr r1
.LVL7:
/* epilogue start */
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE7:
	.size	Read_LM35_Temp, .-Read_LM35_Temp
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/DIO/GPIO.h"
	.file 4 "../MCAL/ADC/ADC_file.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2ee
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.long	.LASF64
	.long	.LASF65
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
	.byte	0x1
	.byte	0x3
	.byte	0x19
	.long	0xcb
	.uleb128 0x5
	.long	.LASF13
	.sleb128 0
	.uleb128 0x5
	.long	.LASF14
	.sleb128 1
	.uleb128 0x5
	.long	.LASF15
	.sleb128 2
	.uleb128 0x5
	.long	.LASF16
	.sleb128 3
	.uleb128 0x5
	.long	.LASF17
	.sleb128 4
	.uleb128 0x5
	.long	.LASF18
	.sleb128 5
	.uleb128 0x5
	.long	.LASF19
	.sleb128 6
	.uleb128 0x5
	.long	.LASF20
	.sleb128 7
	.uleb128 0x5
	.long	.LASF21
	.sleb128 8
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x23
	.long	0x8c
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF23
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x13
	.long	0xff
	.uleb128 0x5
	.long	.LASF24
	.sleb128 0
	.uleb128 0x5
	.long	.LASF25
	.sleb128 1
	.uleb128 0x5
	.long	.LASF26
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x4
	.byte	0x17
	.long	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x1a
	.long	0x13d
	.uleb128 0x5
	.long	.LASF28
	.sleb128 0
	.uleb128 0x5
	.long	.LASF29
	.sleb128 1
	.uleb128 0x5
	.long	.LASF30
	.sleb128 2
	.uleb128 0x5
	.long	.LASF31
	.sleb128 3
	.uleb128 0x5
	.long	.LASF32
	.sleb128 4
	.uleb128 0x5
	.long	.LASF33
	.sleb128 5
	.uleb128 0x5
	.long	.LASF34
	.sleb128 6
	.byte	0
	.uleb128 0x2
	.long	.LASF35
	.byte	0x4
	.byte	0x22
	.long	0x10a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x25
	.long	0x15d
	.uleb128 0x5
	.long	.LASF36
	.sleb128 0
	.uleb128 0x5
	.long	.LASF37
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x4
	.byte	0x28
	.long	0x148
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2b
	.long	0x1a1
	.uleb128 0x5
	.long	.LASF39
	.sleb128 0
	.uleb128 0x5
	.long	.LASF40
	.sleb128 1
	.uleb128 0x5
	.long	.LASF41
	.sleb128 2
	.uleb128 0x5
	.long	.LASF42
	.sleb128 3
	.uleb128 0x5
	.long	.LASF43
	.sleb128 4
	.uleb128 0x5
	.long	.LASF44
	.sleb128 5
	.uleb128 0x5
	.long	.LASF45
	.sleb128 6
	.uleb128 0x5
	.long	.LASF46
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x4
	.byte	0x34
	.long	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x37
	.long	0x1c1
	.uleb128 0x5
	.long	.LASF48
	.sleb128 0
	.uleb128 0x5
	.long	.LASF49
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF50
	.byte	0x4
	.byte	0x3a
	.long	0x1ac
	.uleb128 0x7
	.byte	0x6
	.byte	0x4
	.byte	0x3c
	.long	0x229
	.uleb128 0x8
	.long	.LASF51
	.byte	0x4
	.byte	0x3e
	.long	0xcb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF52
	.byte	0x4
	.byte	0x3f
	.long	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF53
	.byte	0x4
	.byte	0x40
	.long	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF54
	.byte	0x4
	.byte	0x41
	.long	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF55
	.byte	0x4
	.byte	0x42
	.long	0x1a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF56
	.byte	0x4
	.byte	0x43
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF57
	.byte	0x4
	.byte	0x44
	.long	0x1cc
	.uleb128 0x9
	.byte	0x1
	.long	.LASF66
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.long	0x275
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0xa
	.long	0xcb
	.long	.LLST1
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1
	.byte	0xc
	.long	0x229
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xc
	.long	.LVL2
	.long	0x2c9
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF67
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.long	0x29
	.long	.LFB7
	.long	.LFE7
	.long	.LLST2
	.byte	0x1
	.long	0x2c9
	.uleb128 0xa
	.long	.LASF58
	.byte	0x1
	.byte	0xf
	.long	0xcb
	.long	.LLST3
	.uleb128 0xb
	.long	.LASF59
	.byte	0x1
	.byte	0x11
	.long	0x229
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.byte	0x12
	.long	0x29
	.long	.LLST4
	.uleb128 0xc
	.long	.LVL6
	.long	0x2dd
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.long	0x2dd
	.uleb128 0x10
	.long	0x229
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF62
	.byte	0x4
	.byte	0x47
	.byte	0x1
	.long	0x42
	.byte	0x1
	.uleb128 0x10
	.long	0x229
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 10
	.long	.LCFI3
	.long	.LFE6
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL2-1
	.word	0x1
	.byte	0x64
	.long	.LVL2-1
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB7
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI7
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LVL6-1
	.word	0x1
	.byte	0x64
	.long	.LVL6-1
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x45
	.byte	0x1e
	.byte	0x9f
	.long	.LVL7
	.long	.LFE7
	.word	0x1
	.byte	0x68
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
.LASF39:
	.string	"FreeRunningMode"
.LASF45:
	.string	"TimerCounter1Overflow"
.LASF64:
	.string	"../HAL/Tempreture_Sensor_LM35/LM35.c"
.LASF26:
	.string	"Internal_Volt"
.LASF8:
	.string	"short int"
.LASF62:
	.string	"ADC_Read"
.LASF33:
	.string	"ADC_Clk_64"
.LASF53:
	.string	"Vref"
.LASF49:
	.string	"Adjust_Left"
.LASF52:
	.string	"ADC_INT_State"
.LASF43:
	.string	"TimerCounter0Overflow"
.LASF3:
	.string	"uint_16"
.LASF48:
	.string	"Adjust_Right"
.LASF21:
	.string	"ADC_Diff_Mode"
.LASF65:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF40:
	.string	"AnalogComparator"
.LASF47:
	.string	"Auto_Trigger_Source"
.LASF41:
	.string	"ExternalInterruptRequest0"
.LASF59:
	.string	"ADC_data"
.LASF11:
	.string	"float"
.LASF32:
	.string	"ADC_Clk_32"
.LASF10:
	.string	"long long int"
.LASF25:
	.string	"VACC_Volt"
.LASF54:
	.string	"ADC_Prescaler"
.LASF9:
	.string	"long int"
.LASF55:
	.string	"ADC_Conversion_Types"
.LASF51:
	.string	"ADC_Pin"
.LASF44:
	.string	"TimerCounterCompareMatchB"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF42:
	.string	"TimerCounter0CompareMatch"
.LASF50:
	.string	"ADLAR_Adjust_Results"
.LASF2:
	.string	"uint_8"
.LASF7:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF23:
	.string	"unsigned int"
.LASF36:
	.string	"ADC_Enabled_INT"
.LASF56:
	.string	"ADC_Adjust"
.LASF27:
	.string	"Voltage_Referance_Source"
.LASF4:
	.string	"short unsigned int"
.LASF66:
	.string	"LM35_Init"
.LASF58:
	.string	"LM35_Pin"
.LASF0:
	.string	"char"
.LASF35:
	.string	"ADC_Prescalar_Value"
.LASF28:
	.string	"ADC_Clk_2"
.LASF46:
	.string	"TimerCounter1CaptureEvent"
.LASF29:
	.string	"ADC_Clk_4"
.LASF30:
	.string	"ADC_Clk_8"
.LASF57:
	.string	"ADC_Pin_Data"
.LASF37:
	.string	"ADC_Disabled_INT"
.LASF38:
	.string	"ADC_Inerrupt_state"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF31:
	.string	"ADC_Clk_16"
.LASF60:
	.string	"Tempreture"
.LASF67:
	.string	"Read_LM35_Temp"
.LASF34:
	.string	"ADC_Clk_128"
.LASF24:
	.string	"VREF_Volt"
.LASF61:
	.string	"ADC_Init"
.LASF22:
	.string	"GPIO_pin_number"
.LASF13:
	.string	"PIN0"
.LASF14:
	.string	"PIN1"
.LASF15:
	.string	"PIN2"
.LASF16:
	.string	"PIN3"
.LASF17:
	.string	"PIN4"
.LASF18:
	.string	"PIN5"
.LASF19:
	.string	"PIN6"
.LASF20:
	.string	"PIN7"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
