glabel func_80AE9FC8
/* 000362 0x80AE9FC8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000363 0x80AE9FCC AFB00018 */ sw	$s0, 0X18($sp)
/* 000364 0x80AE9FD0 00808025 */ move	$s0, $a0
/* 000365 0x80AE9FD4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000366 0x80AE9FD8 8E0F01D4 */ lw	$t7, 0X1D4($s0)
/* 000367 0x80AE9FDC 3C0E80AF */ lui	$t6, %hi(func_80AEA1A0)
/* 000368 0x80AE9FE0 25CEA1A0 */ addiu	$t6, $t6, %lo(func_80AEA1A0)
/* 000369 0x80AE9FE4 15CF0008 */ bne	$t6, $t7, .L80AEA008
/* 000370 0x80AE9FE8 26040190 */ addiu	$a0, $s0, 0X190
/* 000371 0x80AE9FEC 3C0580AF */ lui	$a1, %hi(D_80AEBD50)
/* 000372 0x80AE9FF0 24A5BD50 */ addiu	$a1, $a1, %lo(D_80AEBD50)
/* 000373 0x80AE9FF4 26040190 */ addiu	$a0, $s0, 0X190
/* 000374 0x80AE9FF8 0C02F717 */ jal	func_800BDC5C
/* 000375 0x80AE9FFC 24060011 */ li	$a2, 0X11
/* 000376 0x80AEA000 10000006 */ b	.L80AEA01C
/* 000377 0x80AEA004 02002025 */ move	$a0, $s0
.L80AEA008:
/* 000378 0x80AEA008 3C0580AF */ lui	$a1, %hi(D_80AEBD50)
/* 000379 0x80AEA00C 24A5BD50 */ addiu	$a1, $a1, %lo(D_80AEBD50)
/* 000380 0x80AEA010 0C02F717 */ jal	func_800BDC5C
/* 000381 0x80AEA014 24060003 */ li	$a2, 0X3
/* 000382 0x80AEA018 02002025 */ move	$a0, $s0
.L80AEA01C:
/* 000383 0x80AEA01C 0C02E3B2 */ jal	func_800B8EC8
/* 000384 0x80AEA020 24053987 */ li	$a1, 0X3987
/* 000385 0x80AEA024 3C1880AF */ lui	$t8, %hi(func_80AEA044)
/* 000386 0x80AEA028 2718A044 */ addiu	$t8, $t8, %lo(func_80AEA044)
/* 000387 0x80AEA02C AE1801D4 */ sw	$t8, 0X1D4($s0)
/* 000388 0x80AEA030 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000389 0x80AEA034 8FB00018 */ lw	$s0, 0X18($sp)
/* 000390 0x80AEA038 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000391 0x80AEA03C 03E00008 */ jr	$ra
/* 000392 0x80AEA040 00000000 */ nop

