	.file	"USART_File.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.USART_RXC_Complete_Callback,"ax",@progbits
.global	USART_RXC_Complete_Callback
	.type	USART_RXC_Complete_Callback, @function
USART_RXC_Complete_Callback:
.LFB0:
	.file 1 "../MCAL/CommuncationProtocols/USART_File.c"
	.loc 1 18 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 19 0
	sbiw r24,0
	breq .L1
	.loc 1 21 0
	sts CP_USART_RXC_Complete_User_ptr+1,r25
	sts CP_USART_RXC_Complete_User_ptr,r24
.L1:
	ret
	.cfi_endproc
.LFE0:
	.size	USART_RXC_Complete_Callback, .-USART_RXC_Complete_Callback
	.section	.text.USART_TXC_Complete_Callback,"ax",@progbits
.global	USART_TXC_Complete_Callback
	.type	USART_TXC_Complete_Callback, @function
USART_TXC_Complete_Callback:
.LFB1:
	.loc 1 25 0
	.cfi_startproc
.LVL1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 26 0
	sbiw r24,0
	breq .L7
	.loc 1 28 0
	sts CP_USART_TXC_Complete_User_ptr+1,r25
	sts CP_USART_TXC_Complete_User_ptr,r24
.L7:
	ret
	.cfi_endproc
.LFE1:
	.size	USART_TXC_Complete_Callback, .-USART_TXC_Complete_Callback
	.section	.text.USART_UDRE_Callback,"ax",@progbits
.global	USART_UDRE_Callback
	.type	USART_UDRE_Callback, @function
USART_UDRE_Callback:
.LFB2:
	.loc 1 32 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 33 0
	sbiw r24,0
	breq .L12
	.loc 1 35 0
	sts CP_USART_UDRE_User_ptr+1,r25
	sts CP_USART_UDRE_User_ptr,r24
.L12:
	ret
	.cfi_endproc
.LFE2:
	.size	USART_UDRE_Callback, .-USART_UDRE_Callback
	.section	.bss.CP_USART_UDRE_User_ptr,"aw",@nobits
	.type	CP_USART_UDRE_User_ptr, @object
	.size	CP_USART_UDRE_User_ptr, 2
CP_USART_UDRE_User_ptr:
	.zero	2
	.section	.bss.CP_USART_TXC_Complete_User_ptr,"aw",@nobits
	.type	CP_USART_TXC_Complete_User_ptr, @object
	.size	CP_USART_TXC_Complete_User_ptr, 2
CP_USART_TXC_Complete_User_ptr:
	.zero	2
	.section	.bss.CP_USART_RXC_Complete_User_ptr,"aw",@nobits
	.type	CP_USART_RXC_Complete_User_ptr, @object
	.size	CP_USART_RXC_Complete_User_ptr, 2
CP_USART_RXC_Complete_User_ptr:
	.zero	2
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x135
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0x1
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa3
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x11
	.long	0xa5
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.long	0xa3
	.uleb128 0x3
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd8
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0xa5
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x105
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x1f
	.long	0xa5
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0xd
	.long	0xa5
	.byte	0x5
	.byte	0x3
	.long	CP_USART_RXC_Complete_User_ptr
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0xe
	.long	0xa5
	.byte	0x5
	.byte	0x3
	.long	CP_USART_TXC_Complete_User_ptr
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0xf
	.long	0xa5
	.byte	0x5
	.byte	0x3
	.long	CP_USART_UDRE_User_ptr
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"USART_TXC_Complete_User_ptr"
.LASF15:
	.string	"USART_UDRE_Callback"
.LASF22:
	.string	"C:\\\\Users\\\\Mahm Oud Sa Ad\\\\Downloads\\\\My-Github\\\\AVR_Driver\\\\AVR_32_Driver\\\\Debug"
.LASF20:
	.string	"GNU C 4.8.1 -fpreprocessed -mmcu=atmega32 -g2 -O3 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF9:
	.string	"float"
.LASF4:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF3:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"USART_RXC_Complete_Callback"
.LASF16:
	.string	"USART_UDRE_User_ptr"
.LASF13:
	.string	"USART_RXC_Complete_User_ptr"
.LASF10:
	.string	"double"
.LASF18:
	.string	"CP_USART_TXC_Complete_User_ptr"
.LASF0:
	.string	"char"
.LASF21:
	.string	"../MCAL/CommuncationProtocols/USART_File.c"
.LASF19:
	.string	"CP_USART_UDRE_User_ptr"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF17:
	.string	"CP_USART_RXC_Complete_User_ptr"
.LASF5:
	.string	"signed char"
.LASF12:
	.string	"USART_TXC_Complete_Callback"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.4.5_1522) 4.8.1"
.global __do_clear_bss
