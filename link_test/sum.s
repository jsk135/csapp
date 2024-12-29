	.file	"sum.i"
	.text
.Ltext0:
	.globl	sum
	.type	sum, @function
sum:
.LVL0:
.LFB0:
	.file 1 "sum.c"
	.loc 1 2 1 view -0
	.cfi_startproc
	.loc 1 3 5 view .LVU1
	.loc 1 4 5 view .LVU2
	.loc 1 3 12 is_stmt 0 view .LVU3
	movl	$0, %edx
	.loc 1 4 12 view .LVU4
	movl	$0, %eax
.LVL1:
.L2:
	.loc 1 4 17 is_stmt 1 discriminator 1 view .LVU5
	.loc 1 4 5 is_stmt 0 discriminator 1 view .LVU6
	cmpl	%esi, %eax
	jge	.L4
	.loc 1 6 9 is_stmt 1 discriminator 3 view .LVU7
	.loc 1 6 15 is_stmt 0 discriminator 3 view .LVU8
	movslq	%eax, %rcx
	.loc 1 6 11 discriminator 3 view .LVU9
	addl	(%rdi,%rcx,4), %edx
.LVL2:
	.loc 1 4 24 is_stmt 1 discriminator 3 view .LVU10
	.loc 1 4 25 is_stmt 0 discriminator 3 view .LVU11
	addl	$1, %eax
.LVL3:
	.loc 1 4 25 discriminator 3 view .LVU12
	jmp	.L2
.L4:
	.loc 1 8 5 is_stmt 1 view .LVU13
	.loc 1 9 1 is_stmt 0 view .LVU14
	movl	%edx, %eax
.LVL4:
	.loc 1 9 1 view .LVU15
	ret
	.cfi_endproc
.LFE0:
	.size	sum, .-sum
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x96
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF0
	.byte	0xc
	.long	.LASF1
	.long	.LASF2
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.string	"sum"
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.long	0x8c
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x1
	.byte	0xe
	.long	0x93
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.string	"n"
	.byte	0x1
	.byte	0x1
	.byte	0x15
	.long	0x8c
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x4
	.string	"i"
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.long	0x8c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x4
	.string	"s"
	.byte	0x1
	.byte	0x3
	.byte	0xc
	.long	0x8c
	.long	.LLST1
	.long	.LVUS1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.long	0x8c
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
.LVUS0:
	.uleb128 .LVU3
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 .LVU15
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL1-.Ltext0
	.quad	.LFE0-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF0:
	.string	"GNU C17 9.4.0 -Og -g"
.LASF2:
	.string	"/home/ksj/csapplab/link_test"
.LASF1:
	.string	"sum.i"
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
