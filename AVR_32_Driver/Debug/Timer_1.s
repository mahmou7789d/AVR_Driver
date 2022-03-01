	.file	"Timer_1.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Timer1_Init,"ax",@progbits
.global	Timer1_Init
	.type	Timer1_Init, @function
Timer1_Init:
.LFB0:
	.file 1 "../MCAL/Timer_1/Timer_1.c"
	.loc 1 15 0
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
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	std Y+6,r25
.LVL0:
	ldi r24,lo8(-1)
	add r24,r20
	cpi r24,lo8(14)
	brlo .+2
	rjmp .L31
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(CSWTCH.2))
	sbci r31,hi8(-(CSWTCH.2))
	ld r18,Z
	movw r30,r24
	subi r30,lo8(-(CSWTCH.3))
	sbci r31,hi8(-(CSWTCH.3))
	ld r19,Z
.L2:
.LVL1:
	.loc 1 84 0
	ldd r24,Y+2
	ldi r25,0
	movw r30,r24
	sbiw r30,1
	cpi r30,7
	cpc r31,__zero_reg__
	brsh .L3
	subi r30,lo8(-(gs(.L5)))
	sbci r31,hi8(-(gs(.L5)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.Timer1_Init,"a",@progbits
	.p2align	1
.L5:
	.word gs(.L4)
	.word gs(.L6)
	.word gs(.L7)
	.word gs(.L8)
	.word gs(.L9)
	.word gs(.L10)
	.word gs(.L11)
	.section	.text.Timer1_Init
.L9:
.LVL2:
	.loc 1 104 0
	ori r19,lo8(5)
.LVL3:
.L3:
	.loc 1 116 0
	ldd r24,Y+4
	ldi r25,0
	movw r30,r24
	sbiw r30,1
	cpi r30,9
	cpc r31,__zero_reg__
	brsh .L12
	subi r30,lo8(-(gs(.L14)))
	sbci r31,hi8(-(gs(.L14)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.Timer1_Init
	.p2align	1
.L14:
	.word gs(.L13)
	.word gs(.L15)
	.word gs(.L16)
	.word gs(.L17)
	.word gs(.L15)
	.word gs(.L16)
	.word gs(.L18)
	.word gs(.L15)
	.word gs(.L16)
	.section	.text.Timer1_Init
.L15:
	.loc 1 148 0
	ori r18,lo8(-128)
.LVL4:
.L12:
	.loc 1 159 0
	ldd r24,Y+5
	ldi r25,0
	movw r30,r24
	sbiw r30,1
	cpi r30,7
	cpc r31,__zero_reg__
	brsh .L21
	subi r30,lo8(-(gs(.L23)))
	sbci r31,hi8(-(gs(.L23)))
	jmp __tablejump2__
	.section	.progmem.gcc_sw_table.Timer1_Init
	.p2align	1
.L23:
	.word gs(.L22)
	.word gs(.L24)
	.word gs(.L25)
	.word gs(.L24)
	.word gs(.L25)
	.word gs(.L24)
	.word gs(.L25)
	.section	.text.Timer1_Init
.L25:
.LVL5:
	.loc 1 176 0
	ori r18,lo8(48)
.LVL6:
.L21:
	.loc 1 181 0
	in r24,__SREG__
	ori r24,lo8(-128)
	out __SREG__,r24
	ldd r30,Y+3
	subi r30,lo8(-(-1))
	cpi r30,lo8(4)
	brsh .L32
	ldi r31,0
	subi r30,lo8(-(CSWTCH.4))
	sbci r31,hi8(-(CSWTCH.4))
	ld r25,Z
.LVL7:
	.loc 1 203 0
	ldd r24,Y+6
	cpi r24,lo8(1)
	breq .L28
.L35:
	cpi r24,lo8(1)
	brlo .L29
	cpi r24,lo8(2)
	brne .L27
	.loc 1 214 0
	in r24,0x2e
	ori r24,lo8(64)
	out 0x2e,r24
	.loc 1 215 0
	in r24,0x2e
	ori r24,lo8(-128)
	out 0x2e,r24
.L27:
	.loc 1 220 0
	out 0x2f,r18
	.loc 1 221 0
	out 0x2e,r19
	.loc 1 222 0
	out 0x39,r25
/* epilogue start */
	.loc 1 223 0
	adiw r28,6
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
.LVL8:
.L32:
	.loc 1 183 0
	ldi r25,0
.LVL9:
	.loc 1 203 0
	ldd r24,Y+6
	cpi r24,lo8(1)
	brne .L35
.L28:
	.loc 1 210 0
	in r24,0x2e
	andi r24,lo8(127)
	out 0x2e,r24
	.loc 1 211 0
	in r24,0x2e
	ori r24,lo8(64)
	out 0x2e,r24
	.loc 1 212 0
	rjmp .L27
.LVL10:
.L31:
	.loc 1 15 0
	ldi r19,0
	ldi r18,0
	rjmp .L2
.LVL11:
.L22:
	.loc 1 165 0
	ori r18,lo8(16)
.LVL12:
	.loc 1 166 0
	rjmp .L21
.L24:
	.loc 1 170 0
	ori r18,lo8(32)
.LVL13:
	.loc 1 171 0
	rjmp .L21
.L13:
	.loc 1 122 0
	ori r18,lo8(64)
.LVL14:
.L18:
	.loc 1 124 0
	cpi r20,lo8(9)
	breq .L33
.L20:
.LVL15:
	.loc 1 142 0
	andi r18,lo8(63)
.LVL16:
	rjmp .L12
.LVL17:
.L29:
	.loc 1 206 0
	in r24,0x2e
	andi r24,lo8(-65)
	out 0x2e,r24
	.loc 1 207 0
	in r24,0x2e
	andi r24,lo8(127)
	out 0x2e,r24
	.loc 1 208 0
	rjmp .L27
.LVL18:
.L16:
	.loc 1 154 0
	ori r18,lo8(-64)
.LVL19:
	.loc 1 155 0
	rjmp .L12
.L17:
	.loc 1 135 0
	cpi r20,lo8(14)
	brne .L20
.L33:
	.loc 1 137 0
	ori r18,lo8(64)
.LVL20:
	rjmp .L12
.L10:
.LVL21:
	.loc 1 108 0
	ori r19,lo8(6)
.LVL22:
	.loc 1 109 0
	rjmp .L3
.L11:
.LVL23:
	.loc 1 113 0
	ori r19,lo8(7)
.LVL24:
	.loc 1 114 0
	rjmp .L3
.L4:
	.loc 1 90 0
	ori r19,lo8(1)
.LVL25:
	.loc 1 91 0
	rjmp .L3
.L6:
	.loc 1 93 0
	ori r19,lo8(2)
.LVL26:
	.loc 1 94 0
	rjmp .L3
.L7:
.LVL27:
	.loc 1 97 0
	ori r19,lo8(3)
.LVL28:
	.loc 1 98 0
	rjmp .L3
.L8:
	.loc 1 100 0
	ori r19,lo8(4)
.LVL29:
	.loc 1 101 0
	rjmp .L3
	.cfi_endproc
.LFE0:
	.size	Timer1_Init, .-Timer1_Init
	.section	.rodata.CSWTCH.4,"a",@progbits
	.type	CSWTCH.4, @object
	.size	CSWTCH.4, 4
CSWTCH.4:
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.section	.rodata.CSWTCH.3,"a",@progbits
	.type	CSWTCH.3, @object
	.size	CSWTCH.3, 14
CSWTCH.3:
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	24
	.byte	24
	.byte	24
	.section	.rodata.CSWTCH.2,"a",@progbits
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 14
CSWTCH.2:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	2
	.byte	3
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/Timer_1/Timer_1.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2d9
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0x1
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF26
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
	.byte	0xd
	.long	0xe4
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
	.uleb128 0x5
	.long	.LASF15
	.sleb128 4
	.uleb128 0x5
	.long	.LASF16
	.sleb128 5
	.uleb128 0x5
	.long	.LASF17
	.sleb128 6
	.uleb128 0x5
	.long	.LASF18
	.sleb128 7
	.uleb128 0x5
	.long	.LASF19
	.sleb128 8
	.uleb128 0x5
	.long	.LASF20
	.sleb128 9
	.uleb128 0x5
	.long	.LASF21
	.sleb128 10
	.uleb128 0x5
	.long	.LASF22
	.sleb128 11
	.uleb128 0x5
	.long	.LASF23
	.sleb128 12
	.uleb128 0x5
	.long	.LASF24
	.sleb128 13
	.uleb128 0x5
	.long	.LASF25
	.sleb128 14
	.byte	0
	.uleb128 0x2
	.long	.LASF27
	.byte	0x3
	.byte	0x1d
	.long	0x81
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x1f
	.long	0x128
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
	.uleb128 0x5
	.long	.LASF35
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x3
	.byte	0x28
	.long	0xef
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2b
	.long	0x15a
	.uleb128 0x5
	.long	.LASF37
	.sleb128 0
	.uleb128 0x5
	.long	.LASF38
	.sleb128 1
	.uleb128 0x5
	.long	.LASF39
	.sleb128 2
	.uleb128 0x5
	.long	.LASF40
	.sleb128 3
	.uleb128 0x5
	.long	.LASF41
	.sleb128 4
	.byte	0
	.uleb128 0x2
	.long	.LASF42
	.byte	0x3
	.byte	0x31
	.long	0x133
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x39
	.long	0x1aa
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
	.uleb128 0x5
	.long	.LASF47
	.sleb128 4
	.uleb128 0x5
	.long	.LASF48
	.sleb128 5
	.uleb128 0x5
	.long	.LASF49
	.sleb128 6
	.uleb128 0x5
	.long	.LASF50
	.sleb128 7
	.uleb128 0x5
	.long	.LASF51
	.sleb128 8
	.uleb128 0x5
	.long	.LASF52
	.sleb128 9
	.byte	0
	.uleb128 0x2
	.long	.LASF53
	.byte	0x3
	.byte	0x44
	.long	0x165
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x47
	.long	0x1ee
	.uleb128 0x5
	.long	.LASF54
	.sleb128 0
	.uleb128 0x5
	.long	.LASF55
	.sleb128 1
	.uleb128 0x5
	.long	.LASF56
	.sleb128 2
	.uleb128 0x5
	.long	.LASF57
	.sleb128 3
	.uleb128 0x5
	.long	.LASF58
	.sleb128 4
	.uleb128 0x5
	.long	.LASF59
	.sleb128 5
	.uleb128 0x5
	.long	.LASF60
	.sleb128 6
	.uleb128 0x5
	.long	.LASF61
	.sleb128 7
	.byte	0
	.uleb128 0x2
	.long	.LASF62
	.byte	0x3
	.byte	0x50
	.long	0x1b5
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x53
	.long	0x214
	.uleb128 0x5
	.long	.LASF63
	.sleb128 0
	.uleb128 0x5
	.long	.LASF64
	.sleb128 1
	.uleb128 0x5
	.long	.LASF65
	.sleb128 2
	.byte	0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x3
	.byte	0x57
	.long	0x1f9
	.uleb128 0x6
	.byte	0x6
	.byte	0x3
	.byte	0x58
	.long	0x27c
	.uleb128 0x7
	.long	.LASF67
	.byte	0x3
	.byte	0x5a
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x3
	.byte	0x5b
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF69
	.byte	0x3
	.byte	0x5c
	.long	0x15a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF70
	.byte	0x3
	.byte	0x5d
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x7
	.long	.LASF71
	.byte	0x3
	.byte	0x5e
	.long	0x1ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.long	.LASF72
	.byte	0x3
	.byte	0x5f
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x3
	.byte	0x60
	.long	0x21f
	.uleb128 0x8
	.byte	0x1
	.long	.LASF80
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.uleb128 0x9
	.long	.LASF81
	.byte	0x1
	.byte	0xe
	.long	0x27c
	.byte	0x5
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x5
	.uleb128 0xa
	.long	.LASF74
	.byte	0x1
	.byte	0x11
	.long	0x29
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.byte	0x12
	.long	0x29
	.long	.LLST2
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.byte	0x13
	.long	0x29
	.long	.LLST3
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
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
	.sleb128 10
	.long	.LCFI3
	.long	.LFE0
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL5
	.word	0x1
	.byte	0x62
	.long	.LVL5
	.long	.LVL6
	.word	0x5
	.byte	0x82
	.sleb128 0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL6
	.long	.LVL10
	.word	0x1
	.byte	0x62
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL15
	.word	0x1
	.byte	0x62
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x9
	.byte	0xbf
	.byte	0x1a
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.word	0x1
	.byte	0x62
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.long	.LVL19
	.long	.LFE0
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.word	0x1
	.byte	0x63
	.long	.LVL2
	.long	.LVL3
	.word	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL3
	.long	.LVL10
	.word	0x1
	.byte	0x63
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL21
	.word	0x1
	.byte	0x63
	.long	.LVL21
	.long	.LVL22
	.word	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x1
	.byte	0x63
	.long	.LVL23
	.long	.LVL24
	.word	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x33
	.byte	0x21
	.byte	0x9f
	.long	.LVL24
	.long	.LVL27
	.word	0x1
	.byte	0x63
	.long	.LVL27
	.long	.LVL28
	.word	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.long	.LVL28
	.long	.LFE0
	.word	0x1
	.byte	0x63
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x1
	.byte	0x69
	.long	.LVL8
	.long	.LVL9
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x69
	.long	.LVL10
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	.LVL18
	.long	.LFE0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"FastPWM_mode_9Bit"
.LASF62:
	.string	"OC1B_behavior"
.LASF76:
	.string	"TIMSK_Temp"
.LASF63:
	.string	"Input_Capture_Disable"
.LASF75:
	.string	"TCCR1B_Temp"
.LASF35:
	.string	"External_Clock_Rising_edge"
.LASF21:
	.string	"PhaseCorrectPWM_ICR1_mode"
.LASF78:
	.string	"../MCAL/Timer_1/Timer_1.c"
.LASF6:
	.string	"short int"
.LASF19:
	.string	"Frequancy_PhaseCorrectPWM_ICR1_mode"
.LASF39:
	.string	"Timer_OutPut_Compare_A_match"
.LASF49:
	.string	"inverting_mode"
.LASF46:
	.string	"OC1_SetOn_Compare_match"
.LASF43:
	.string	"OC1_Disconnected"
.LASF52:
	.string	"Set_upCount_Clear_DownCount"
.LASF34:
	.string	"External_Clock_falling_edge"
.LASF45:
	.string	"OC1_ClearOn_Compare_match"
.LASF81:
	.string	"Timer1"
.LASF79:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF12:
	.string	"PhaseCorrectPWM_mode_8Bit"
.LASF48:
	.string	"NON_inverting_mode"
.LASF22:
	.string	"PhaseCorrectPWM_OCR1_mode"
.LASF20:
	.string	"Frequancy_PhaseCorrectPWM_OCR1A_mode"
.LASF42:
	.string	"Timer_1_Interrupt_Source"
.LASF9:
	.string	"float"
.LASF25:
	.string	"FastPWM_OCR1A_mode"
.LASF8:
	.string	"long long int"
.LASF32:
	.string	"Clk_256"
.LASF47:
	.string	"OC1A_Toggle_On_Fast_PWM_OCR1A"
.LASF60:
	.string	"B_Clear_upCount_Set_DownCount"
.LASF66:
	.string	"Input_Capture_Mode"
.LASF7:
	.string	"long int"
.LASF74:
	.string	"TCCR1A_Temp"
.LASF64:
	.string	"Input_Capture_Failing_No_Noise_Filter"
.LASF11:
	.string	"Normal_mode"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF73:
	.string	"TIMER_1_DataType"
.LASF26:
	.string	"uint_8"
.LASF5:
	.string	"signed char"
.LASF13:
	.string	"PhaseCorrectPWM_mode_9Bit"
.LASF4:
	.string	"long long unsigned int"
.LASF67:
	.string	"Timer_mode"
.LASF24:
	.string	"FastPWM_ICR1_mode"
.LASF55:
	.string	"OC1B_Toggle"
.LASF15:
	.string	"CTC_mode_OCR1A"
.LASF31:
	.string	"Clk_64"
.LASF68:
	.string	"Timer_CLK"
.LASF56:
	.string	"OC1B_ClearOn_Compare_match"
.LASF2:
	.string	"short unsigned int"
.LASF53:
	.string	"OC1A_behavior"
.LASF27:
	.string	"Timer_1_mode_selection"
.LASF0:
	.string	"char"
.LASF44:
	.string	"OC1_Toggle"
.LASF37:
	.string	"Timer_No_Interrupt"
.LASF40:
	.string	"Timer_OutPut_Compare_B_match"
.LASF50:
	.string	"OC1A_Toggle_On_Phase_Frequancy_Correct_PWM_OCR1A"
.LASF30:
	.string	"Clk_8"
.LASF61:
	.string	"B_Set_upCount_Clear_DownCount"
.LASF36:
	.string	"Timer_1_CLK_Source_selection"
.LASF16:
	.string	"FastPWM_mode_8Bit"
.LASF71:
	.string	"OC1B_Pin_State"
.LASF3:
	.string	"long unsigned int"
.LASF33:
	.string	"Clk_1024"
.LASF10:
	.string	"double"
.LASF58:
	.string	"NON_B_inverting_mode"
.LASF23:
	.string	"CTC_mode_ICR1"
.LASF18:
	.string	"FastPWM_mode_10Bit"
.LASF57:
	.string	"OC1B_SetOn_Compare_match"
.LASF51:
	.string	"Clear_upCount_Set_DownCount"
.LASF41:
	.string	"Timer_Overflow_Interrupt"
.LASF70:
	.string	"OC1A_Pin_State"
.LASF80:
	.string	"Timer1_Init"
.LASF29:
	.string	"No_Prescaling"
.LASF69:
	.string	"Timer_INT_source"
.LASF72:
	.string	"Input_Capture_State"
.LASF14:
	.string	"PhaseCorrectPWM_mode_10Bit"
.LASF54:
	.string	"OC1B_Disconnected"
.LASF59:
	.string	"B_inverting_mode"
.LASF38:
	.string	"Timer_Input_Capture_Interrupt"
.LASF28:
	.string	"No_Clock_source"
.LASF65:
	.string	"Input_Capture_Rising_Noise_Filter"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
