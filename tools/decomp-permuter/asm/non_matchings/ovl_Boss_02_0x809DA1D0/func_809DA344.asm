glabel func_809DA344
/* 000093 0x809DA344 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000094 0x809DA348 AFB00018 */ sw	$s0, 0X18($sp)
/* 000095 0x809DA34C 00808025 */ move	$s0, $a0
/* 000096 0x809DA350 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000097 0x809DA354 00001025 */ move	$v0, $zero
.L809DA358:
/* 000098 0x809DA358 920E0024 */ lbu	$t6, 0X24($s0)
/* 000099 0x809DA35C 24420001 */ addiu	$v0, $v0, 0X1
/* 000100 0x809DA360 00021400 */ sll	$v0, $v0, 16
/* 000101 0x809DA364 15C00036 */ bnez	$t6, .L809DA440
/* 000102 0x809DA368 00021403 */ sra	$v0, $v0, 16
/* 000103 0x809DA36C 240F0003 */ li	$t7, 0X3
/* 000104 0x809DA370 A20F0024 */ sb	$t7, 0X24($s0)
/* 000105 0x809DA374 8CB90000 */ lw	$t9, 0X0($a1)
/* 000106 0x809DA378 3C0141A0 */ lui	$at, 0x41A0
/* 000107 0x809DA37C 44816000 */ mtc1	$at, $f12
/* 000108 0x809DA380 AE190000 */ sw	$t9, 0X0($s0)
/* 000109 0x809DA384 8CB80004 */ lw	$t8, 0X4($a1)
/* 000110 0x809DA388 AE180004 */ sw	$t8, 0X4($s0)
/* 000111 0x809DA38C 8CB90008 */ lw	$t9, 0X8($a1)
/* 000112 0x809DA390 0C05E565 */ jal	randZeroOneScaled
/* 000113 0x809DA394 AE190008 */ sw	$t9, 0X8($s0)
/* 000114 0x809DA398 4600010D */ trunc.w.s	$f4, $f0
/* 000115 0x809DA39C 3C014248 */ lui	$at, 0x4248
/* 000116 0x809DA3A0 44816000 */ mtc1	$at, $f12
/* 000117 0x809DA3A4 44092000 */ mfc1	$t1, $f4
/* 000118 0x809DA3A8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000119 0x809DA3AC A6090026 */ sh	$t1, 0X26($s0)
/* 000120 0x809DA3B0 3C014248 */ lui	$at, 0x4248
/* 000121 0x809DA3B4 44816000 */ mtc1	$at, $f12
/* 000122 0x809DA3B8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000123 0x809DA3BC E600000C */ swc1	$f0, 0XC($s0)
/* 000124 0x809DA3C0 3C014248 */ lui	$at, 0x4248
/* 000125 0x809DA3C4 44816000 */ mtc1	$at, $f12
/* 000126 0x809DA3C8 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000127 0x809DA3CC E6000010 */ swc1	$f0, 0X10($s0)
/* 000128 0x809DA3D0 44801000 */ mtc1	$zero, $f2
/* 000129 0x809DA3D4 3C01BFC0 */ lui	$at, 0xBFC0
/* 000130 0x809DA3D8 44813000 */ mtc1	$at, $f6
/* 000131 0x809DA3DC E6000014 */ swc1	$f0, 0X14($s0)
/* 000132 0x809DA3E0 3C01809E */ lui	$at, %hi(D_809DFB04)
/* 000133 0x809DA3E4 E6020020 */ swc1	$f2, 0X20($s0)
/* 000134 0x809DA3E8 E6020018 */ swc1	$f2, 0X18($s0)
/* 000135 0x809DA3EC E606001C */ swc1	$f6, 0X1C($s0)
/* 000136 0x809DA3F0 0C05E565 */ jal	randZeroOneScaled
/* 000137 0x809DA3F4 C42CFB04 */ lwc1	$f12, %lo(D_809DFB04)($at)
/* 000138 0x809DA3F8 3C01809E */ lui	$at, %hi(D_809DFB08)
/* 000139 0x809DA3FC C428FB08 */ lwc1	$f8, %lo(D_809DFB08)($at)
/* 000140 0x809DA400 3C01809E */ lui	$at, %hi(D_809DFB0C)
/* 000141 0x809DA404 46080280 */ add.s	$f10, $f0, $f8
/* 000142 0x809DA408 E60A0034 */ swc1	$f10, 0X34($s0)
/* 000143 0x809DA40C 0C05E565 */ jal	randZeroOneScaled
/* 000144 0x809DA410 C42CFB0C */ lwc1	$f12, %lo(D_809DFB0C)($at)
/* 000145 0x809DA414 4600040D */ trunc.w.s	$f16, $f0
/* 000146 0x809DA418 3C01809E */ lui	$at, %hi(D_809DFB10)
/* 000147 0x809DA41C 440B8000 */ mfc1	$t3, $f16
/* 000148 0x809DA420 00000000 */ nop
/* 000149 0x809DA424 A60B0030 */ sh	$t3, 0X30($s0)
/* 000150 0x809DA428 0C05E565 */ jal	randZeroOneScaled
/* 000151 0x809DA42C C42CFB10 */ lwc1	$f12, %lo(D_809DFB10)($at)
/* 000152 0x809DA430 4600048D */ trunc.w.s	$f18, $f0
/* 000153 0x809DA434 440D9000 */ mfc1	$t5, $f18
/* 000154 0x809DA438 10000004 */ b	.L809DA44C
/* 000155 0x809DA43C A60D002E */ sh	$t5, 0X2E($s0)
.L809DA440:
/* 000156 0x809DA440 28410096 */ slti	$at, $v0, 0X96
/* 000157 0x809DA444 1420FFC4 */ bnez	$at, .L809DA358
/* 000158 0x809DA448 2610003C */ addiu	$s0, $s0, 0X3C
.L809DA44C:
/* 000159 0x809DA44C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000160 0x809DA450 8FB00018 */ lw	$s0, 0X18($sp)
/* 000161 0x809DA454 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000162 0x809DA458 03E00008 */ jr	$ra
/* 000163 0x809DA45C 00000000 */ nop

