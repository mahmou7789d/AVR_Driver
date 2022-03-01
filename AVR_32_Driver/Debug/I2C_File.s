	.file	"I2C_File.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.TWI_INIT,"ax",@progbits
.global	TWI_INIT
	.type	TWI_INIT, @function
TWI_INIT:
.LFB0:
	.file 1 "../MCAL/CommuncationProtocols/I2C_File.c"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	push r12
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r18,r22
	movw r20,r24
.LVL1:
	.loc 1 15 0
	lds r24,TWI_1+1
	cpi r24,lo8(4)
	brsh .L3
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(CSWTCH.1))
	sbci r31,hi8(-(CSWTCH.1))
	ld r12,Z
	movw r30,r24
	subi r30,lo8(-(CSWTCH.2))
	sbci r31,hi8(-(CSWTCH.2))
	ld r24,Z
	mov r13,__zero_reg__
	lsl r12
	rol r13
	clr r14
	sbrc r13,7
	com r14
	mov r15,r14
.L2:
.LVL2:
	.loc 1 40 0
	out 0x1,r24
	.loc 1 41 0
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
.LVL3:
	call __udivmodsi4
.LVL4:
	movw r24,r20
	movw r22,r18
	subi r22,16
	sbc r23,__zero_reg__
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	out 0,r18
/* epilogue start */
	.loc 1 42 0
	pop r15
	pop r14
	pop r13
	pop r12
	ret
.LVL5:
.L3:
	.loc 1 15 0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	ldi r24,0
	rjmp .L2
	.cfi_endproc
.LFE0:
	.size	TWI_INIT, .-TWI_INIT
	.section	.text.TWI_Start,"ax",@progbits
.global	TWI_Start
	.type	TWI_Start, @function
TWI_Start:
.LFB1:
	.loc 1 44 0
	.cfi_startproc
.LVL6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 46 0
	lds r25,TWI_1+3
	tst r25
	breq .L7
	cpi r25,lo8(3)
	brne .L24
	.loc 1 67 0
	out 0x2,r24
	.loc 1 68 0
	in r24,0x36
.LVL7:
	ori r24,lo8(4)
	out 0x36,r24
.LVL8:
	.loc 1 69 0
	in r24,0x36
	ori r24,lo8(64)
	out 0x36,r24
	.loc 1 70 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L18:
	.loc 1 71 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L18
.L20:
	.loc 1 72 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(96)
	brne .L20
	ret
.LVL9:
.L24:
	ret
.L7:
.LVL10:
	.loc 1 52 0
	ldi r25,lo8(-92)
	out 0x36,r25
.L10:
	.loc 1 53 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L10
.L12:
	.loc 1 54 0 discriminator 1
	in r25,0x1
	andi r25,lo8(-8)
	cpi r25,lo8(8)
	brne .L12
	.loc 1 55 0
	out 0x3,r24
	.loc 1 58 0
	ldi r24,lo8(-92)
.LVL11:
	out 0x36,r24
.LVL12:
.L14:
	.loc 1 59 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L14
.L16:
	.loc 1 60 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(24)
	brne .L16
	ret
	.cfi_endproc
.LFE1:
	.size	TWI_Start, .-TWI_Start
	.section	.text.TWI_Repeated_Start,"ax",@progbits
.global	TWI_Repeated_Start
	.type	TWI_Repeated_Start, @function
TWI_Repeated_Start:
.LFB2:
	.loc 1 79 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL13:
	.loc 1 84 0
	ldi r24,lo8(-92)
	out 0x36,r24
.L27:
	.loc 1 85 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L27
.L29:
	.loc 1 86 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(16)
	brne .L29
/* epilogue start */
	.loc 1 87 0
	ret
	.cfi_endproc
.LFE2:
	.size	TWI_Repeated_Start, .-TWI_Repeated_Start
	.section	.text.TWI_Write_Byte,"ax",@progbits
.global	TWI_Write_Byte
	.type	TWI_Write_Byte, @function
TWI_Write_Byte:
.LFB3:
	.loc 1 89 0
	.cfi_startproc
.LVL14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 90 0
	out 0x3,r24
.LVL15:
	.loc 1 94 0
	ldi r24,lo8(-124)
.LVL16:
	out 0x36,r24
.LVL17:
.L32:
	.loc 1 95 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L32
.L34:
	.loc 1 96 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(40)
	brne .L34
/* epilogue start */
	.loc 1 97 0
	ret
	.cfi_endproc
.LFE3:
	.size	TWI_Write_Byte, .-TWI_Write_Byte
	.section	.text.Set_SLA_Value,"ax",@progbits
.global	Set_SLA_Value
	.type	Set_SLA_Value, @function
Set_SLA_Value:
.LFB4:
	.loc 1 100 0
	.cfi_startproc
.LVL18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 101 0
	out 0x2,r24
	ret
	.cfi_endproc
.LFE4:
	.size	Set_SLA_Value, .-Set_SLA_Value
	.section	.text.TWI_Stop,"ax",@progbits
.global	TWI_Stop
	.type	TWI_Stop, @function
TWI_Stop:
.LFB5:
	.loc 1 104 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 105 0
	in r24,0x36
	ori r24,lo8(4)
	out 0x36,r24
	.loc 1 106 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
	.loc 1 107 0
	in r24,0x36
	ori r24,lo8(16)
	out 0x36,r24
	ret
	.cfi_endproc
.LFE5:
	.size	TWI_Stop, .-TWI_Stop
	.section	.text.TWI_Read_Byte_Ack,"ax",@progbits
.global	TWI_Read_Byte_Ack
	.type	TWI_Read_Byte_Ack, @function
TWI_Read_Byte_Ack:
.LFB6:
	.loc 1 110 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 111 0
	in r24,0x36
	ori r24,lo8(4)
	out 0x36,r24
	.loc 1 112 0
	in r24,0x36
	ori r24,lo8(64)
	out 0x36,r24
	.loc 1 113 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L39:
	.loc 1 114 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L39
.L41:
	.loc 1 115 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(-128)
	brne .L41
	.loc 1 116 0
	in r24,0x3
	.loc 1 117 0
	ret
	.cfi_endproc
.LFE6:
	.size	TWI_Read_Byte_Ack, .-TWI_Read_Byte_Ack
	.section	.text.Write_address_For_Read,"ax",@progbits
.global	Write_address_For_Read
	.type	Write_address_For_Read, @function
Write_address_For_Read:
.LFB7:
	.loc 1 119 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 120 0
	out 0x3,r24
.LVL20:
	.loc 1 124 0
	ldi r24,lo8(-124)
.LVL21:
	out 0x36,r24
.LVL22:
.L44:
	.loc 1 125 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L44
.L46:
	.loc 1 126 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(64)
	brne .L46
/* epilogue start */
	.loc 1 127 0
	ret
	.cfi_endproc
.LFE7:
	.size	Write_address_For_Read, .-Write_address_For_Read
	.section	.text.TWI_Read_Byte_NAck,"ax",@progbits
.global	TWI_Read_Byte_NAck
	.type	TWI_Read_Byte_NAck, @function
TWI_Read_Byte_NAck:
.LFB8:
	.loc 1 129 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 130 0
	in r24,0x36
	ori r24,lo8(4)
	out 0x36,r24
	.loc 1 131 0
	in r24,0x36
	ori r24,lo8(-128)
	out 0x36,r24
.L49:
	.loc 1 132 0 discriminator 1
	in __tmp_reg__,0x36
	sbrs __tmp_reg__,7
	rjmp .L49
.L51:
	.loc 1 133 0 discriminator 1
	in r24,0x1
	andi r24,lo8(-8)
	cpi r24,lo8(88)
	brne .L51
	.loc 1 134 0
	in r24,0x3
	.loc 1 135 0
	ret
	.cfi_endproc
.LFE8:
	.size	TWI_Read_Byte_NAck, .-TWI_Read_Byte_NAck
	.section	.rodata.CSWTCH.2,"a",@progbits
	.type	CSWTCH.2, @object
	.size	CSWTCH.2, 4
CSWTCH.2:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.rodata.CSWTCH.1,"a",@progbits
	.type	CSWTCH.1, @object
	.size	CSWTCH.1, 4
CSWTCH.1:
	.byte	1
	.byte	4
	.byte	16
	.byte	64
.global	TWI_1
	.section	.bss.TWI_1,"aw",@nobits
	.type	TWI_1, @object
	.size	TWI_1, 4
TWI_1:
	.zero	4
	.text
.Letext0:
	.file 2 "../Services/STD_Types.h"
	.file 3 "../MCAL/CommuncationProtocols/I2C_File.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x308
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF48
	.byte	0x1
	.long	.LASF49
	.long	.LASF50
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF3
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
	.uleb128 0x2
	.long	.LASF4
	.byte	0x2
	.byte	0x10
	.long	0x54
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
	.byte	0x1a
	.long	0xad
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
	.byte	0
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x1f
	.long	0x8c
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x22
	.long	0xd9
	.uleb128 0x5
	.long	.LASF18
	.sleb128 0
	.uleb128 0x5
	.long	.LASF19
	.sleb128 1
	.uleb128 0x5
	.long	.LASF20
	.sleb128 2
	.uleb128 0x5
	.long	.LASF21
	.sleb128 3
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x3
	.byte	0x27
	.long	0xb8
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x30
	.long	0xf9
	.uleb128 0x5
	.long	.LASF23
	.sleb128 0
	.uleb128 0x5
	.long	.LASF24
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x3
	.byte	0x33
	.long	0xe4
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x3c
	.long	0x119
	.uleb128 0x5
	.long	.LASF26
	.sleb128 0
	.uleb128 0x5
	.long	.LASF27
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x3
	.byte	0x3f
	.long	0x104
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.byte	0x42
	.long	0x165
	.uleb128 0x7
	.long	.LASF29
	.byte	0x3
	.byte	0x44
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x3
	.byte	0x45
	.long	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x7
	.long	.LASF31
	.byte	0x3
	.byte	0x46
	.long	0x119
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.long	.LASF32
	.byte	0x3
	.byte	0x47
	.long	0xad
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x3
	.byte	0x48
	.long	0x124
	.uleb128 0x8
	.byte	0x1
	.long	.LASF35
	.byte	0x1
	.byte	0xb
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.byte	0x1
	.long	0x1b8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x1
	.byte	0xb
	.long	0x49
	.long	.LLST1
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0xd
	.long	0x29
	.long	.LLST2
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0xe
	.long	0x29
	.long	.LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF36
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1f1
	.uleb128 0x9
	.long	.LASF38
	.byte	0x1
	.byte	0x2b
	.long	0x29
	.long	.LLST4
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0x2d
	.long	0x29
	.long	.LLST5
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF40
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x219
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x50
	.long	0x29
	.sleb128 -92
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF41
	.byte	0x1
	.byte	0x58
	.byte	0x1
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x250
	.uleb128 0x9
	.long	.LASF42
	.byte	0x1
	.byte	0x58
	.long	0x29
	.long	.LLST6
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x5b
	.long	0x29
	.sleb128 -124
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF43
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x278
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0x63
	.long	0x29
	.byte	0x1
	.byte	0x68
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF46
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0x29
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF45
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x2df
	.uleb128 0x9
	.long	.LASF44
	.byte	0x1
	.byte	0x76
	.long	0x29
	.long	.LLST7
	.uleb128 0xc
	.long	.LASF39
	.byte	0x1
	.byte	0x79
	.long	0x29
	.sleb128 -124
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF47
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.long	0x29
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x10
	.long	.LASF52
	.byte	0x1
	.byte	0xa
	.long	0x165
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TWI_1
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.long	.LFE0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL4
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4
	.long	.LVL5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL5
	.long	.LFE0
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LFE0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL5
	.word	0x1
	.byte	0x68
	.long	.LVL5
	.long	.LFE0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.word	0x1
	.byte	0x68
	.long	.LVL7
	.long	.LVL8
	.word	0x2
	.byte	0x8
	.byte	0x22
	.long	.LVL8
	.long	.LVL9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11
	.word	0x1
	.byte	0x68
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x8
	.byte	0x23
	.long	.LVL12
	.long	.LFE1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LFE1
	.word	0x3
	.byte	0x9
	.byte	0xa4
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x8
	.byte	0x23
	.long	.LVL17
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL21
	.word	0x1
	.byte	0x68
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x8
	.byte	0x23
	.long	.LVL22
	.long	.LFE7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.string	"Write_address_For_Read"
.LASF25:
	.string	"TWI_status"
.LASF14:
	.string	"Master_Receiver"
.LASF17:
	.string	"Micro_Mode"
.LASF8:
	.string	"short int"
.LASF26:
	.string	"TWI_Interrupt_Disables"
.LASF52:
	.string	"TWI_1"
.LASF18:
	.string	"No_Presaler"
.LASF22:
	.string	"Presaler_Value"
.LASF51:
	.string	"TWI_Stop"
.LASF15:
	.string	"Slave_Transmitter"
.LASF50:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF38:
	.string	"SLA_Value"
.LASF39:
	.string	"TWCR_Temp"
.LASF11:
	.string	"float"
.LASF10:
	.string	"long long int"
.LASF19:
	.string	"Prescaler_4"
.LASF37:
	.string	"SCL_F"
.LASF9:
	.string	"long int"
.LASF23:
	.string	"TWI_Disables"
.LASF44:
	.string	"address"
.LASF20:
	.string	"Prescaler_16"
.LASF28:
	.string	"TWI_Interrupt_status"
.LASF30:
	.string	"Presaler_Val"
.LASF42:
	.string	"T_Data"
.LASF34:
	.string	"TWSR_Temp"
.LASF1:
	.string	"unsigned char"
.LASF48:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF3:
	.string	"uint_8"
.LASF29:
	.string	"TWI_state"
.LASF7:
	.string	"signed char"
.LASF6:
	.string	"long long unsigned int"
.LASF40:
	.string	"TWI_Repeated_Start"
.LASF41:
	.string	"TWI_Write_Byte"
.LASF24:
	.string	"TWI_Enabled"
.LASF47:
	.string	"TWI_Read_Byte_NAck"
.LASF2:
	.string	"short unsigned int"
.LASF0:
	.string	"char"
.LASF21:
	.string	"Prescaler_64"
.LASF4:
	.string	"uint_32"
.LASF27:
	.string	"TWI_Interrupt_Enabled"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"double"
.LASF31:
	.string	"TWI_Interrupt_state"
.LASF35:
	.string	"TWI_INIT"
.LASF32:
	.string	"Micro_state"
.LASF33:
	.string	"TWi_Micro_data"
.LASF36:
	.string	"TWI_Start"
.LASF13:
	.string	"Master_Transmitter"
.LASF43:
	.string	"Set_SLA_Value"
.LASF46:
	.string	"TWI_Read_Byte_Ack"
.LASF16:
	.string	"Slave_Receiver"
.LASF49:
	.string	"../MCAL/CommuncationProtocols/I2C_File.c"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
