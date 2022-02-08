	.file	"ADC_File.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.ADC_Init,"ax",@progbits
.global	ADC_Init
	.type	ADC_Init, @function
ADC_Init:
.LFB6:
	.file 1 "../MCAL/ADC/ADC_File.c"
	.loc 1 11 0
	.cfi_startproc
	push r17
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	rcall .
	rcall .
	rcall .
.LCFI3:
	.cfi_def_cfa_offset 11
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI4:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r17,r20
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
.LVL0:
	.loc 1 14 0
	ldi r20,lo8(1)
	mov r22,r17
	ldi r24,lo8(57)
	ldi r25,0
	call GPIO_Pin_Configuration
.LVL1:
	subi r17,lo8(-(-1))
.LVL2:
	cpi r17,lo8(8)
	brlo .+2
	rjmp .L24
	mov r30,r17
	ldi r31,0
	subi r30,lo8(-(CSWTCH.2))
	sbci r31,hi8(-(CSWTCH.2))
	ld r18,Z
.LVL3:
	.loc 1 51 0
	ldd r24,Y+3
	cpi r24,lo8(1)
	brne .+2
	rjmp .L4
.L31:
	cpi r24,lo8(1)
	brsh .+2
	rjmp .L5
	cpi r24,lo8(2)
	brne .+2
	rjmp .L6
.L3:
	ldd r30,Y+4
	subi r30,lo8(-(-1))
	cpi r30,lo8(6)
	brsh .L25
	ldi r31,0
	subi r30,lo8(-(CSWTCH.3))
	sbci r31,hi8(-(CSWTCH.3))
	ld r19,Z
.L7:
.LVL4:
	.loc 1 108 0
	ldd r24,Y+5
	ldi r25,0
	cpi r24,8
	cpc r25,__zero_reg__
	brsh .L8
	movw r30,r24
	subi r30,lo8(-(gs(.L10)))
	sbci r31,hi8(-(gs(.L10)))
	.loc 1 146 0
	in r24,0x30
	.loc 1 108 0
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.ADC_Init,"a",@progbits
	.p2align	1
.L10:
	.word gs(.L9)
	.word gs(.L11)
	.word gs(.L12)
	.word gs(.L13)
	.word gs(.L14)
	.word gs(.L15)
	.word gs(.L16)
	.word gs(.L17)
	.section	.text.ADC_Init
.L16:
	.loc 1 141 0
	andi r24,lo8(-33)
.L27:
	.loc 1 146 0
	out 0x30,r24
.LVL5:
	.loc 1 147 0
	in r24,0x30
	ori r24,lo8(64)
	out 0x30,r24
	.loc 1 148 0
	in r24,0x30
	ori r24,lo8(-128)
	out 0x30,r24
.L8:
	.loc 1 153 0
	ldd r24,Y+6
	tst r24
	breq .L19
	cpi r24,lo8(1)
	breq .L20
.L18:
	.loc 1 165 0
	ldd r24,Y+2
	tst r24
	breq .L22
.L32:
	cpi r24,lo8(1)
	brne .L21
	.loc 1 171 0
	andi r19,lo8(-9)
.LVL6:
.L21:
	.loc 1 177 0
	out 0x7,r18
	.loc 1 178 0
	out 0x6,r19
	.loc 1 180 0
	sbi 0x6,7
/* epilogue start */
	.loc 1 181 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
.LVL7:
	ret
.LVL8:
.L25:
	.loc 1 68 0
	ldi r19,0
	rjmp .L7
.LVL9:
.L24:
	.loc 1 14 0
	ldi r18,0
.LVL10:
	.loc 1 51 0
	ldd r24,Y+3
	cpi r24,lo8(1)
	brne .L31
.L4:
.LVL11:
	.loc 1 59 0
	andi r18,lo8(127)
.LVL12:
	ori r18,lo8(64)
.LVL13:
	.loc 1 60 0
	rjmp .L3
.LVL14:
.L20:
	.loc 1 159 0
	ori r18,lo8(32)
.LVL15:
	.loc 1 165 0
	ldd r24,Y+2
	cpse r24,__zero_reg__
	rjmp .L32
.L22:
	.loc 1 168 0
	ori r19,lo8(8)
.LVL16:
	.loc 1 169 0
	rjmp .L21
.LVL17:
.L6:
	.loc 1 63 0
	ori r18,lo8(-64)
.LVL18:
	.loc 1 64 0
	rjmp .L3
.LVL19:
.L19:
	.loc 1 156 0
	andi r18,lo8(-33)
.LVL20:
	.loc 1 157 0
	rjmp .L18
.LVL21:
.L5:
	.loc 1 55 0
	andi r18,lo8(63)
.LVL22:
	.loc 1 56 0
	rjmp .L3
.LVL23:
.L15:
	.loc 1 136 0
	ori r24,lo8(32)
.L29:
	out 0x30,r24
.LVL24:
	.loc 1 137 0
	in r24,0x30
	andi r24,lo8(-65)
	out 0x30,r24
	.loc 1 138 0
	in r24,0x30
	ori r24,lo8(-128)
	out 0x30,r24
	.loc 1 139 0
	rjmp .L8
.LVL25:
.L9:
	.loc 1 111 0
	andi r24,lo8(-33)
.L26:
	.loc 1 116 0
	out 0x30,r24
.LVL26:
	.loc 1 117 0
	in r24,0x30
	andi r24,lo8(-65)
	out 0x30,r24
	.loc 1 118 0
	in r24,0x30
	andi r24,lo8(127)
	out 0x30,r24
	.loc 1 119 0
	rjmp .L8
.LVL27:
.L11:
	.loc 1 116 0
	ori r24,lo8(32)
	rjmp .L26
.L17:
	.loc 1 146 0
	ori r24,lo8(32)
	rjmp .L27
.L12:
	.loc 1 121 0
	andi r24,lo8(-33)
.L28:
	.loc 1 126 0
	out 0x30,r24
.LVL28:
	.loc 1 127 0
	in r24,0x30
	ori r24,lo8(64)
	out 0x30,r24
	.loc 1 128 0
	in r24,0x30
	andi r24,lo8(127)
	out 0x30,r24
	.loc 1 129 0
	rjmp .L8
.LVL29:
.L13:
	.loc 1 126 0
	ori r24,lo8(32)
	rjmp .L28
.L14:
	.loc 1 131 0
	andi r24,lo8(-33)
	rjmp .L29
	.cfi_endproc
.LFE6:
	.size	ADC_Init, .-ADC_Init
	.section	.text.ADC_Read,"ax",@progbits
.global	ADC_Read
	.type	ADC_Read, @function
ADC_Read:
.LFB7:
	.loc 1 183 0
	.cfi_startproc
	push r28
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
	rcall .
.LCFI7:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI8:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 6 */
/* stack size = 8 */
.L__stack_usage = 8
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
.LVL30:
	.loc 1 185 0
	sbi 0x6,6
.L35:
	.loc 1 186 0 discriminator 1
	sbis 0x6,4
	rjmp .L35
	.loc 1 187 0
	sbi 0x6,4
	.loc 1 188 0
	ldd r24,Y+6
	tst r24
	breq .L37
	cpi r24,lo8(1)
	breq .L38
	.loc 1 184 0
	ldi r24,0
	ldi r25,0
.LVL31:
.L36:
/* epilogue start */
	.loc 1 199 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
.LVL32:
.L38:
	.loc 1 195 0
	in r24,0x5
	ldi r25,0
	lsl r24
	rol r25
	lsl r24
	rol r25
.LVL33:
	.loc 1 196 0
	rjmp .L36
.LVL34:
.L37:
	.loc 1 191 0
	in r24,0x4
.LVL35:
	.loc 1 192 0
	in r18,0x5
	ldi r25,0
	or r25,r18
.LVL36:
	.loc 1 193 0
	rjmp .L36
	.cfi_endproc
.LFE7:
	.size	ADC_Read, .-ADC_Read
	.section	.rodata.CSWTCH.3,"a",@progbits
	.type	CSWTCH.3, @object
	.size	CSWTCH.3, 6
CSWTCH.3:
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.rodata.CSWTCH.2,"a",@progbits
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 8
CSWTCH.2:
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	16
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../Services/AVR_32_Registers.h"
	.file 4 "../MCAL/DIO/GPIO.h"
	.file 5 "../MCAL/ADC/ADC_File.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x362
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.long	.LASF69
	.long	.LASF70
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
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF29
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x13
	.long	0x168
	.uleb128 0x9
	.long	.LASF30
	.sleb128 0
	.uleb128 0x9
	.long	.LASF31
	.sleb128 1
	.uleb128 0x9
	.long	.LASF32
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0x17
	.long	0x14d
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x1a
	.long	0x1a6
	.uleb128 0x9
	.long	.LASF34
	.sleb128 0
	.uleb128 0x9
	.long	.LASF35
	.sleb128 1
	.uleb128 0x9
	.long	.LASF36
	.sleb128 2
	.uleb128 0x9
	.long	.LASF37
	.sleb128 3
	.uleb128 0x9
	.long	.LASF38
	.sleb128 4
	.uleb128 0x9
	.long	.LASF39
	.sleb128 5
	.uleb128 0x9
	.long	.LASF40
	.sleb128 6
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x22
	.long	0x173
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x25
	.long	0x1c6
	.uleb128 0x9
	.long	.LASF42
	.sleb128 0
	.uleb128 0x9
	.long	.LASF43
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF44
	.byte	0x5
	.byte	0x28
	.long	0x1b1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.long	0x20a
	.uleb128 0x9
	.long	.LASF45
	.sleb128 0
	.uleb128 0x9
	.long	.LASF46
	.sleb128 1
	.uleb128 0x9
	.long	.LASF47
	.sleb128 2
	.uleb128 0x9
	.long	.LASF48
	.sleb128 3
	.uleb128 0x9
	.long	.LASF49
	.sleb128 4
	.uleb128 0x9
	.long	.LASF50
	.sleb128 5
	.uleb128 0x9
	.long	.LASF51
	.sleb128 6
	.uleb128 0x9
	.long	.LASF52
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x5
	.byte	0x34
	.long	0x1d1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x37
	.long	0x22a
	.uleb128 0x9
	.long	.LASF54
	.sleb128 0
	.uleb128 0x9
	.long	.LASF55
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF56
	.byte	0x5
	.byte	0x3a
	.long	0x215
	.uleb128 0x4
	.byte	0x6
	.byte	0x5
	.byte	0x3c
	.long	0x292
	.uleb128 0x6
	.long	.LASF57
	.byte	0x5
	.byte	0x3e
	.long	0x134
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.long	.LASF58
	.byte	0x5
	.byte	0x3f
	.long	0x1c6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF59
	.byte	0x5
	.byte	0x40
	.long	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF60
	.byte	0x5
	.byte	0x41
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF61
	.byte	0x5
	.byte	0x42
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF62
	.byte	0x5
	.byte	0x43
	.long	0x22a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF63
	.byte	0x5
	.byte	0x44
	.long	0x235
	.uleb128 0xb
	.byte	0x1
	.long	.LASF71
	.byte	0x1
	.byte	0xa
	.byte	0x1
	.long	.LFB6
	.long	.LFE6
	.long	.LLST0
	.byte	0x1
	.long	0x305
	.uleb128 0xc
	.long	.LASF66
	.byte	0x1
	.byte	0xa
	.long	0x292
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0xc
	.long	0x29
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0xd
	.long	0x29
	.long	.LLST3
	.uleb128 0xe
	.long	.LVL1
	.long	0x341
	.uleb128 0xf
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x39
	.uleb128 0xf
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF72
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x42
	.long	.LFB7
	.long	.LFE7
	.long	.LLST4
	.byte	0x1
	.long	0x341
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0xb6
	.long	0x292
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0xb8
	.long	0x42
	.long	.LLST5
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.long	.LASF73
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.byte	0x1
	.long	0x35f
	.uleb128 0x13
	.long	0x35f
	.uleb128 0x13
	.long	0x134
	.uleb128 0x13
	.long	0xea
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x6
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI4
	.long	.LFE6
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0x5
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL2
	.long	.LVL5
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL5
	.long	.LVL7
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL8
	.long	.LVL14
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL14
	.long	.LVL17
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL17
	.long	.LVL19
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL19
	.long	.LVL21
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL21
	.long	.LVL24
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL24
	.long	.LVL25
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL25
	.long	.LVL26
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL26
	.long	.LVL27
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL28
	.long	.LVL29
	.word	0x7
	.byte	0x81
	.sleb128 1
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	.LVL29
	.long	.LFE6
	.word	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL3
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL9
	.word	0x1
	.byte	0x62
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x62
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL13
	.long	.LVL17
	.word	0x1
	.byte	0x62
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL18
	.long	.LVL21
	.word	0x1
	.byte	0x62
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x9
	.byte	0xbf
	.byte	0x1a
	.byte	0x9f
	.long	.LVL22
	.long	.LFE6
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL4
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL8
	.word	0x1
	.byte	0x63
	.long	.LVL8
	.long	.LVL14
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL17
	.word	0x1
	.byte	0x63
	.long	.LVL17
	.long	.LVL19
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21
	.word	0x1
	.byte	0x63
	.long	.LVL21
	.long	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LFE6
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST4:
	.long	.LFB7
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LFE7
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST5:
	.long	.LVL30
	.long	.LVL31
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL36
	.long	.LFE7
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
.LASF17:
	.string	"INPUT_Pullup"
.LASF66:
	.string	"ADC_Data"
.LASF45:
	.string	"FreeRunningMode"
.LASF18:
	.string	"GPIO_pin_Type"
.LASF67:
	.string	"Read_ADC_Value"
.LASF51:
	.string	"TimerCounter1Overflow"
.LASF47:
	.string	"ExternalInterruptRequest0"
.LASF32:
	.string	"Internal_Volt"
.LASF8:
	.string	"short int"
.LASF72:
	.string	"ADC_Read"
.LASF39:
	.string	"ADC_Clk_64"
.LASF59:
	.string	"Vref"
.LASF55:
	.string	"Adjust_Left"
.LASF58:
	.string	"ADC_INT_State"
.LASF42:
	.string	"ADC_Enabled_INT"
.LASF49:
	.string	"TimerCounter0Overflow"
.LASF3:
	.string	"uint_16"
.LASF54:
	.string	"Adjust_Right"
.LASF27:
	.string	"ADC_Diff_Mode"
.LASF46:
	.string	"AnalogComparator"
.LASF53:
	.string	"Auto_Trigger_Source"
.LASF11:
	.string	"float"
.LASF14:
	.string	"GPIO_Register"
.LASF38:
	.string	"ADC_Clk_32"
.LASF73:
	.string	"GPIO_Pin_Configuration"
.LASF10:
	.string	"long long int"
.LASF31:
	.string	"VACC_Volt"
.LASF60:
	.string	"ADC_Prescaler"
.LASF9:
	.string	"long int"
.LASF36:
	.string	"ADC_Clk_8"
.LASF61:
	.string	"ADC_Conversion_Types"
.LASF57:
	.string	"ADC_Pin"
.LASF50:
	.string	"TimerCounterCompareMatchB"
.LASF70:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\OneDrive - Higher Technological Institute\\\\Desktop\\\\Embedded Data\\\\Driver_To_Finish\\\\AVR_32_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF48:
	.string	"TimerCounter0CompareMatch"
.LASF56:
	.string	"ADLAR_Adjust_Results"
.LASF2:
	.string	"uint_8"
.LASF7:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF29:
	.string	"unsigned int"
.LASF13:
	.string	"PORT"
.LASF62:
	.string	"ADC_Adjust"
.LASF65:
	.string	"ADCSRA_Temp"
.LASF33:
	.string	"Voltage_Referance_Source"
.LASF4:
	.string	"short unsigned int"
.LASF15:
	.string	"OUTPUT"
.LASF0:
	.string	"char"
.LASF41:
	.string	"ADC_Prescalar_Value"
.LASF34:
	.string	"ADC_Clk_2"
.LASF52:
	.string	"TimerCounter1CaptureEvent"
.LASF35:
	.string	"ADC_Clk_4"
.LASF16:
	.string	"INPUT_Float"
.LASF63:
	.string	"ADC_Pin_Data"
.LASF43:
	.string	"ADC_Disabled_INT"
.LASF44:
	.string	"ADC_Inerrupt_state"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF69:
	.string	"../MCAL/ADC/ADC_File.c"
.LASF37:
	.string	"ADC_Clk_16"
.LASF64:
	.string	"ADCMUX_Temp"
.LASF40:
	.string	"ADC_Clk_128"
.LASF30:
	.string	"VREF_Volt"
.LASF71:
	.string	"ADC_Init"
.LASF28:
	.string	"GPIO_pin_number"
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
