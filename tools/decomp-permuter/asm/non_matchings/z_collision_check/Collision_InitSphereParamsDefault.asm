glabel Collision_InitSphereParamsDefault
/* 060327 0x800E095C AFA40000 */ sw	$a0, 0X0($sp)
/* 060328 0x800E0960 3C0E801C */ lui	$t6, %hi(defaultColSphereInfo)
/* 060329 0x800E0964 25CEA294 */ addiu	$t6, $t6, %lo(defaultColSphereInfo)
/* 060330 0x800E0968 8DD80000 */ lw	$t8, 0X0($t6)
/* 060331 0x800E096C 24020001 */ li	$v0, 0X1
/* 060332 0x800E0970 ACB80000 */ sw	$t8, 0X0($a1)
/* 060333 0x800E0974 8DCF0004 */ lw	$t7, 0X4($t6)
/* 060334 0x800E0978 ACAF0004 */ sw	$t7, 0X4($a1)
/* 060335 0x800E097C 8DD80008 */ lw	$t8, 0X8($t6)
/* 060336 0x800E0980 ACB80008 */ sw	$t8, 0X8($a1)
/* 060337 0x800E0984 8DCF000C */ lw	$t7, 0XC($t6)
/* 060338 0x800E0988 ACAF000C */ sw	$t7, 0XC($a1)
/* 060339 0x800E098C 8DD80010 */ lw	$t8, 0X10($t6)
/* 060340 0x800E0990 ACB80010 */ sw	$t8, 0X10($a1)
/* 060341 0x800E0994 8DCF0014 */ lw	$t7, 0X14($t6)
/* 060342 0x800E0998 ACAF0014 */ sw	$t7, 0X14($a1)
/* 060343 0x800E099C 03E00008 */ jr	$ra
/* 060344 0x800E09A0 00000000 */ nop

