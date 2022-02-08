	.file	"Direct_7-Segment.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Seven_Seg_Init,"ax",@progbits
.global	Seven_Seg_Init
	.type	Seven_Seg_Init, @function
Seven_Seg_Init:
.LFB0:
	.file 1 "../HAL/Direct 7-Segment/Direct_7-Segment.c"
	.loc 1 9 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 10 0
	ldi r22,lo8(-1)
	jmp GPIO_Port_Configuration
.LVL1:
	.cfi_endproc
.LFE0:
	.size	Seven_Seg_Init, .-Seven_Seg_Init
	.section	.rodata
.LC0:
	.byte	63
	.byte	6
	.byte	91
	.byte	79
	.byte	102
	.byte	109
	.byte	125
	.byte	71
	.byte	127
	.byte	111
	.section	.text.Seven_Seg_Write,"ax",@progbits
.global	Seven_Seg_Write
	.type	Seven_Seg_Write, @function
Seven_Seg_Write:
.LFB1:
	.loc 1 13 0
	.cfi_startproc
.LVL2:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI2:
	.cfi_def_cfa_register 28
	sbiw r28,10
.LCFI3:
	.cfi_def_cfa_offset 14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 10 */
/* stack size = 12 */
.L__stack_usage = 12
	.loc 1 14 0
	ldi r18,lo8(10)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	.loc 1 15 0
	tst r22
	breq .L4
	cpi r22,lo8(1)
	brne .L9
	.loc 1 21 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r20
	adc r31,__zero_reg__
	ld r22,Z
.LVL3:
.L7:
/* epilogue start */
	.loc 1 25 0
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	.loc 1 21 0
	jmp GPIO_Port_Write
.LVL4:
.L9:
/* epilogue start */
	.loc 1 25 0
	adiw r28,10
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
.L4:
	.loc 1 18 0
	ldi r30,lo8(1)
	ldi r31,0
	add r30,r28
	adc r31,r29
	add r30,r20
	adc r31,__zero_reg__
	ld r22,Z
.LVL5:
	com r22
	rjmp .L7
	.cfi_endproc
.LFE1:
	.size	Seven_Seg_Write, .-Seven_Seg_Write
	.text
.Letext0:
	.file 2 "../Services/AVR_32_Registers.h"
	.file 3 "../Services/STD_Types.h"
	.file 4 "../HAL/Direct 7-Segment/Direct_7-Segment.h"
	.file 5 "../MCAL/DIO/GPIO.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x23d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF30
	.byte	0x1
	.long	.LASF31
	.long	.LASF32
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
	.byte	0xe
	.long	0x12e
	.uleb128 0x9
	.long	.LASF14
	.sleb128 63
	.uleb128 0xa
	.string	"One"
	.sleb128 6
	.uleb128 0xa
	.string	"Two"
	.sleb128 91
	.uleb128 0x9
	.long	.LASF15
	.sleb128 79
	.uleb128 0x9
	.long	.LASF16
	.sleb128 102
	.uleb128 0x9
	.long	.LASF17
	.sleb128 109
	.uleb128 0xa
	.string	"Six"
	.sleb128 125
	.uleb128 0x9
	.long	.LASF18
	.sleb128 71
	.uleb128 0x9
	.long	.LASF19
	.sleb128 127
	.uleb128 0x9
	.long	.LASF20
	.sleb128 111
	.uleb128 0xa
	.string	"A"
	.sleb128 119
	.uleb128 0xa
	.string	"B"
	.sleb128 124
	.uleb128 0xa
	.string	"C"
	.sleb128 57
	.uleb128 0xa
	.string	"D"
	.sleb128 94
	.uleb128 0xa
	.string	"E"
	.sleb128 121
	.uleb128 0xa
	.string	"F"
	.sleb128 113
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x21
	.long	0x143
	.uleb128 0x9
	.long	.LASF21
	.sleb128 0
	.uleb128 0x9
	.long	.LASF22
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF23
	.byte	0x4
	.byte	0x24
	.long	0x12e
	.uleb128 0xb
	.byte	0x1
	.long	.LASF24
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x195
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x8
	.long	0x195
	.long	.LLST0
	.uleb128 0xd
	.long	.LVL1
	.byte	0x1
	.long	0x212
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.uleb128 0xe
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0xb9
	.uleb128 0x10
	.byte	0x1
	.long	.LASF25
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.long	.LLST1
	.byte	0x1
	.long	0x1fb
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0xc
	.long	0x195
	.long	.LLST2
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.byte	0xc
	.long	0x143
	.long	.LLST3
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0xc
	.long	0x3b
	.long	.LLST4
	.uleb128 0x11
	.long	.LASF33
	.byte	0x1
	.byte	0xe
	.long	0x1fb
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x12
	.long	.LVL4
	.byte	0x1
	.long	0x22b
	.byte	0
	.uleb128 0x13
	.long	0x3b
	.long	0x20b
	.uleb128 0x14
	.long	0x20b
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF29
	.uleb128 0x15
	.byte	0x1
	.long	.LASF34
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x1
	.long	0x22b
	.uleb128 0x16
	.long	0x195
	.uleb128 0x16
	.long	0x29
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF35
	.byte	0x5
	.byte	0x2f
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.long	0x195
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
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LFE0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LFB1
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
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI3
	.long	.LFE1
	.word	0x2
	.byte	0x8c
	.sleb128 14
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL4-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL4
	.long	.LFE1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x66
	.long	.LVL3
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x66
	.long	.LVL5
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL4-1
	.word	0x1
	.byte	0x64
	.long	.LVL4-1
	.long	.LVL4
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL4
	.long	.LFE1
	.word	0x1
	.byte	0x64
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
.LASF26:
	.string	"_7_Segment_port"
.LASF15:
	.string	"Three"
.LASF22:
	.string	"Common_Cathode"
.LASF27:
	.string	"Type"
.LASF30:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF2:
	.string	"short unsigned int"
.LASF20:
	.string	"Nine"
.LASF34:
	.string	"GPIO_Port_Configuration"
.LASF9:
	.string	"float"
.LASF4:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"GPIO_Port_Write"
.LASF3:
	.string	"long unsigned int"
.LASF32:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF16:
	.string	"Four"
.LASF10:
	.string	"double"
.LASF33:
	.string	"Numbers_arr"
.LASF19:
	.string	"Eight"
.LASF24:
	.string	"Seven_Seg_Init"
.LASF14:
	.string	"Zero"
.LASF0:
	.string	"char"
.LASF18:
	.string	"Seven"
.LASF31:
	.string	"../HAL/Direct 7-Segment/Direct_7-Segment.c"
.LASF23:
	.string	"Seven_Segment_Type"
.LASF29:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF11:
	.string	"PORT"
.LASF17:
	.string	"Five"
.LASF12:
	.string	"uint_8"
.LASF6:
	.string	"short int"
.LASF13:
	.string	"GPIO_Register"
.LASF21:
	.string	"Common_Anode"
.LASF28:
	.string	"Written_Number"
.LASF7:
	.string	"long int"
.LASF5:
	.string	"signed char"
.LASF25:
	.string	"Seven_Seg_Write"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
