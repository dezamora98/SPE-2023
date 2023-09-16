	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.text
$Ltext0:
	.align	2
	.globl	main
$LFB2:
$LM1:
	.ent	main
	.type	main, @function
main:
	.frame	r19,52,r15		# vars= 20, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-52
$LCFI0:
	swi	r15,r1,0
$LCFI1:
	swi	r19,r1,48
$LCFI2:
	addk	r19,r1,r0
$LCFI3:
$LM2:
	addik	r3,r19,32
	addk	r5,r3,r0
	addik	r6,r0,2	# 0x2
	brlid	r15,XGpio_Initialize
	nop		# Unfilled delay slot

$L2:
$LM3:
	swi	r0,r19,28
	bri	$L3
$L4:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L3:
	lwi	r3,r19,28
	xori	r18,r3,1041666
	bnei	r18,$L4
$LM4:
	addik	r3,r19,32
	addk	r5,r3,r0
	addik	r6,r0,1	# 0x1
	addk	r7,r0,r0
	brlid	r15,XGpio_DiscreteWrite
	nop		# Unfilled delay slot

$LM5:
	swi	r0,r19,28
	bri	$L6
$L7:
	lwi	r3,r19,28
	addik	r3,r3,1
	swi	r3,r19,28
$L6:
	lwi	r3,r19,28
	xori	r18,r3,1041666
	bnei	r18,$L7
$LM6:
	addik	r3,r19,32
	addk	r5,r3,r0
	addik	r6,r0,1	# 0x1
	addik	r7,r0,-1	# 0xffffffff
	brlid	r15,XGpio_DiscreteWrite
	nop		# Unfilled delay slot

$LM7:
	bri	$L2
	.end	main
$LFE2:
$Lfe1:
	.size	main,$Lfe1-main
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0xf
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.byte	0x4
	.4byte	$LCFI0-$LFB2
	.byte	0xe
	.uleb128 0x34
	.byte	0x4
	.4byte	$LCFI2-$LCFI0
	.byte	0x93
	.uleb128 0x1
	.byte	0x8f
	.uleb128 0xd
	.byte	0x4
	.4byte	$LCFI3-$LCFI2
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE0:
	.text
$Letext0:
	.section	.debug_line
	.4byte	$LELT0-$LSLT0
$LSLT0:
	.2byte	0x2
	.4byte	$LELTP0-$LASLTP0
$LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"/cygdrive/c/Xilinx/12.4/ISE_DS/EDK/gnu/microblaze/nt/bin"
	.ascii	"/../lib/gcc/microblaze-xilinx-elf/4.1.2/../../../../micr"
	.ascii	"oblaze-xilinx-elf/include"
	.byte	0
	.ascii	"test"
	.byte	0
	.ascii	"microblaze_0/include"
	.byte	0
	.byte	0x0
	.ascii	"xil_types.h\000"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"xil_assert.h\000"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"xbasic_types.h\000"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"xstatus.h\000"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"xgpio.h\000"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"stdint.h\000"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.ascii	"main.c\000"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
$LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM1
	.byte	0x4
	.uleb128 0x7
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM2
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM3
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	$Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
$LELT0:
	.section	.debug_loc,"",@progbits
$Ldebug_loc0:
$LLST0:
	.4byte	$LFB2-$Ltext0
	.4byte	$LCFI0-$Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	$LCFI0-$Ltext0
	.4byte	$LCFI3-$Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 52
	.4byte	$LCFI3-$Ltext0
	.4byte	$LFE2-$Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 52
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x213
	.2byte	0x2
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$Ldebug_line0
	.4byte	$Letext0
	.4byte	$Ltext0
	.ascii	"GNU C 4.1.2 20070214 (Xilinx 12.3 Build EDK_MS3.66 15 Ju"
	.ascii	"l 2010)\000"
	.byte	0x1
	.ascii	"test/main.c\000"
	.ascii	"/cygdrive/z/Trabajo/CUJAE/SPE/SPE-2023/examples/ex_0\000"
	.uleb128 0x2
	.ascii	"unsigned char\000"
	.byte	0x1
	.byte	0x8
	.uleb128 0x2
	.ascii	"short unsigned int\000"
	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.ascii	"u32\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0xcc
	.uleb128 0x2
	.ascii	"long unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.ascii	"long long unsigned int\000"
	.byte	0x8
	.byte	0x7
	.uleb128 0x2
	.ascii	"char\000"
	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.ascii	"short int\000"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.ascii	"long int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.ascii	"long long int\000"
	.byte	0x8
	.byte	0x5
	.uleb128 0x2
	.ascii	"int\000"
	.byte	0x4
	.byte	0x5
	.uleb128 0x2
	.ascii	"float\000"
	.byte	0x4
	.byte	0x4
	.uleb128 0x2
	.ascii	"double\000"
	.byte	0x8
	.byte	0x4
	.uleb128 0x4
	.4byte	0x1a4
	.byte	0x10
	.byte	0x5
	.byte	0x92
	.uleb128 0x5
	.ascii	"BaseAddress\000"
	.byte	0x5
	.byte	0x93
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x5
	.ascii	"IsReady\000"
	.byte	0x5
	.byte	0x94
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.ascii	"InterruptPresent\000"
	.byte	0x5
	.byte	0x95
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.ascii	"IsDual\000"
	.byte	0x5
	.byte	0x96
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x3
	.ascii	"XGpio\000"
	.byte	0x5
	.byte	0x97
	.4byte	0x147
	.uleb128 0x2
	.ascii	"signed char\000"
	.byte	0x1
	.byte	0x6
	.uleb128 0x3
	.ascii	"uint32_t\000"
	.byte	0x6
	.byte	0x54
	.4byte	0xcc
	.uleb128 0x2
	.ascii	"unsigned int\000"
	.byte	0x4
	.byte	0x7
	.uleb128 0x6
	.byte	0x1
	.ascii	"main\000"
	.byte	0x7
	.byte	0x9
	.byte	0x1
	.4byte	0x12d
	.4byte	$LFB2
	.4byte	$LFE2
	.4byte	$LLST0
	.uleb128 0x7
	.ascii	"leds\000"
	.byte	0x7
	.byte	0xa
	.4byte	0x1a4
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x7
	.ascii	"i\000"
	.byte	0x7
	.byte	0xe
	.4byte	0x1c0
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x0
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x17
	.2byte	0x2
	.4byte	$Ldebug_info0
	.4byte	0x217
	.4byte	0x1e0
	.ascii	"main\000"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0x0
	.4byte	0x0
