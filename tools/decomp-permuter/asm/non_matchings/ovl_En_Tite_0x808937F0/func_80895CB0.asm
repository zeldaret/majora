glabel func_80895CB0
/* 002352 0x80895CB0 3C013F80 */ lui	$at, 0x3F80
/* 002353 0x80895CB4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002354 0x80895CB8 44810000 */ mtc1	$at, $f0
/* 002355 0x80895CBC AFBF0014 */ sw	$ra, 0X14($sp)
/* 002356 0x80895CC0 00803025 */ move	$a2, $a0
/* 002357 0x80895CC4 84CE00BE */ lh	$t6, 0XBE($a2)
/* 002358 0x80895CC8 E4C00160 */ swc1	$f0, 0X160($a2)
/* 002359 0x80895CCC E4C00070 */ swc1	$f0, 0X70($a2)
/* 002360 0x80895CD0 A4CE0032 */ sh	$t6, 0X32($a2)
/* 002361 0x80895CD4 AFA60018 */ sw	$a2, 0X18($sp)
/* 002362 0x80895CD8 24040014 */ li	$a0, 0X14
/* 002363 0x80895CDC 0C03FD14 */ jal	Math_Rand_S16Offset
/* 002364 0x80895CE0 24050014 */ li	$a1, 0X14
/* 002365 0x80895CE4 8FA60018 */ lw	$a2, 0X18($sp)
/* 002366 0x80895CE8 3C0F8089 */ lui	$t7, %hi(func_80895D08)
/* 002367 0x80895CEC 25EF5D08 */ addiu	$t7, $t7, %lo(func_80895D08)
/* 002368 0x80895CF0 A4C202BC */ sh	$v0, 0X2BC($a2)
/* 002369 0x80895CF4 ACCF02B4 */ sw	$t7, 0X2B4($a2)
/* 002370 0x80895CF8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002371 0x80895CFC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002372 0x80895D00 03E00008 */ jr	$ra
/* 002373 0x80895D04 00000000 */ nop

