glabel func_809C8488
/* 002034 0x809C8488 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002035 0x809C848C AFB00018 */ sw	$s0, 0X18($sp)
/* 002036 0x809C8490 00808025 */ move	$s0, $a0
/* 002037 0x809C8494 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002038 0x809C8498 AFA50024 */ sw	$a1, 0X24($sp)
/* 002039 0x809C849C 8602026A */ lh	$v0, 0X26A($s0)
/* 002040 0x809C84A0 24010001 */ li	$at, 0X1
/* 002041 0x809C84A4 10410003 */ beq	$v0, $at, .L809C84B4
/* 002042 0x809C84A8 24010005 */ li	$at, 0X5
/* 002043 0x809C84AC 5441004C */ bnel	$v0, $at, .L809C85E0
/* 002044 0x809C84B0 860F0270 */ lh	$t7, 0X270($s0)
.L809C84B4:
/* 002045 0x809C84B4 86020270 */ lh	$v0, 0X270($s0)
/* 002046 0x809C84B8 AE000190 */ sw	$zero, 0X190($s0)
/* 002047 0x809C84BC A6000272 */ sh	$zero, 0X272($s0)
/* 002048 0x809C84C0 A6000274 */ sh	$zero, 0X274($s0)
/* 002049 0x809C84C4 1C400043 */ bgtz	$v0, .L809C85D4
/* 002050 0x809C84C8 A6000276 */ sh	$zero, 0X276($s0)
/* 002051 0x809C84CC 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 002052 0x809C84D0 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 002053 0x809C84D4 8C640EF4 */ lw	$a0, 0XEF4($v1)
/* 002054 0x809C84D8 86020280 */ lh	$v0, 0X280($s0)
/* 002055 0x809C84DC 3C01FFFF */ lui	$at, 0xFFFF
/* 002056 0x809C84E0 00817024 */ and	$t6, $a0, $at
/* 002057 0x809C84E4 000E7C02 */ srl	$t7, $t6, 16
/* 002058 0x809C84E8 01E2082A */ slt	$at, $t7, $v0
/* 002059 0x809C84EC 10200007 */ beqz	$at, .L809C850C
/* 002060 0x809C84F0 240A000F */ li	$t2, 0XF
/* 002061 0x809C84F4 0040C825 */ move	$t9, $v0
/* 002062 0x809C84F8 00194400 */ sll	$t0, $t9, 16
/* 002063 0x809C84FC 3098FFFF */ andi	$t8, $a0, 0XFFFF
/* 002064 0x809C8500 03084825 */ or	$t1, $t8, $t0
/* 002065 0x809C8504 AC690EF4 */ sw	$t1, 0XEF4($v1)
/* 002066 0x809C8508 86020280 */ lh	$v0, 0X280($s0)
.L809C850C:
/* 002067 0x809C850C 28410848 */ slti	$at, $v0, 0X848
/* 002068 0x809C8510 1420000A */ bnez	$at, .L809C853C
/* 002069 0x809C8514 A60A0270 */ sh	$t2, 0X270($s0)
/* 002070 0x809C8518 8FA40024 */ lw	$a0, 0X24($sp)
/* 002071 0x809C851C 24050A34 */ li	$a1, 0XA34
/* 002072 0x809C8520 0C05462C */ jal	func_801518B0
/* 002073 0x809C8524 02003025 */ move	$a2, $s0
/* 002074 0x809C8528 240B0A34 */ li	$t3, 0XA34
/* 002075 0x809C852C 240C0006 */ li	$t4, 0X6
/* 002076 0x809C8530 A60B0284 */ sh	$t3, 0X284($s0)
/* 002077 0x809C8534 10000023 */ b	.L809C85C4
/* 002078 0x809C8538 A60C026A */ sh	$t4, 0X26A($s0)
.L809C853C:
/* 002079 0x809C853C 284107D0 */ slti	$at, $v0, 0X7D0
/* 002080 0x809C8540 14200019 */ bnez	$at, .L809C85A8
/* 002081 0x809C8544 8FA40024 */ lw	$a0, 0X24($sp)
/* 002082 0x809C8548 90620F37 */ lbu	$v0, 0XF37($v1)
/* 002083 0x809C854C 24180003 */ li	$t8, 0X3
/* 002084 0x809C8550 3C08809C */ lui	$t0, %hi(func_809C6848)
/* 002085 0x809C8554 304D0002 */ andi	$t5, $v0, 0X2
/* 002086 0x809C8558 11A00009 */ beqz	$t5, .L809C8580
/* 002087 0x809C855C 304F00FE */ andi	$t7, $v0, 0XFE
/* 002088 0x809C8560 A06F0F37 */ sb	$t7, 0XF37($v1)
/* 002089 0x809C8564 31F900FD */ andi	$t9, $t7, 0XFD
/* 002090 0x809C8568 A0790F37 */ sb	$t9, 0XF37($v1)
/* 002091 0x809C856C A600026A */ sh	$zero, 0X26A($s0)
/* 002092 0x809C8570 A4783F38 */ sh	$t8, 0X3F38($v1)
/* 002093 0x809C8574 25086848 */ addiu	$t0, $t0, %lo(func_809C6848)
/* 002094 0x809C8578 10000020 */ b	.L809C85FC
/* 002095 0x809C857C AE080188 */ sw	$t0, 0X188($s0)
.L809C8580:
/* 002096 0x809C8580 8FA40024 */ lw	$a0, 0X24($sp)
/* 002097 0x809C8584 24050A35 */ li	$a1, 0XA35
/* 002098 0x809C8588 0C05462C */ jal	func_801518B0
/* 002099 0x809C858C 02003025 */ move	$a2, $s0
/* 002100 0x809C8590 24090A35 */ li	$t1, 0XA35
/* 002101 0x809C8594 240A0004 */ li	$t2, 0X4
/* 002102 0x809C8598 A6090284 */ sh	$t1, 0X284($s0)
/* 002103 0x809C859C A60A026A */ sh	$t2, 0X26A($s0)
/* 002104 0x809C85A0 10000008 */ b	.L809C85C4
/* 002105 0x809C85A4 A6000280 */ sh	$zero, 0X280($s0)
.L809C85A8:
/* 002106 0x809C85A8 24050A32 */ li	$a1, 0XA32
/* 002107 0x809C85AC 0C05462C */ jal	func_801518B0
/* 002108 0x809C85B0 02003025 */ move	$a2, $s0
/* 002109 0x809C85B4 240B0A32 */ li	$t3, 0XA32
/* 002110 0x809C85B8 240C0006 */ li	$t4, 0X6
/* 002111 0x809C85BC A60B0284 */ sh	$t3, 0X284($s0)
/* 002112 0x809C85C0 A60C026A */ sh	$t4, 0X26A($s0)
.L809C85C4:
/* 002113 0x809C85C4 3C0D809C */ lui	$t5, %hi(func_809C6E30)
/* 002114 0x809C85C8 25AD6E30 */ addiu	$t5, $t5, %lo(func_809C6E30)
/* 002115 0x809C85CC 10000003 */ b	.L809C85DC
/* 002116 0x809C85D0 AE0D0188 */ sw	$t5, 0X188($s0)
.L809C85D4:
/* 002117 0x809C85D4 244EFFFF */ addiu	$t6, $v0, -0X1
/* 002118 0x809C85D8 A60E0270 */ sh	$t6, 0X270($s0)
.L809C85DC:
/* 002119 0x809C85DC 860F0270 */ lh	$t7, 0X270($s0)
.L809C85E0:
/* 002120 0x809C85E0 8FB80024 */ lw	$t8, 0X24($sp)
/* 002121 0x809C85E4 29E10005 */ slti	$at, $t7, 0X5
/* 002122 0x809C85E8 10200004 */ beqz	$at, .L809C85FC
/* 002123 0x809C85EC 3C010002 */ lui	$at, 0x0002
/* 002124 0x809C85F0 00380821 */ addu	$at, $at, $t8
/* 002125 0x809C85F4 2419FFF6 */ li	$t9, -0XA
/* 002126 0x809C85F8 A039887C */ sb	$t9, -0X7784($at)
.L809C85FC:
/* 002127 0x809C85FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002128 0x809C8600 8FB00018 */ lw	$s0, 0X18($sp)
/* 002129 0x809C8604 27BD0020 */ addiu	$sp, $sp, 0X20
/* 002130 0x809C8608 03E00008 */ jr	$ra
/* 002131 0x809C860C 00000000 */ nop

