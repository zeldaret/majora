glabel func_80B88910
/* 003296 0x80B88910 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 003297 0x80B88914 AFBF0014 */ sw	$ra, 0X14($sp)
/* 003298 0x80B88918 2405000A */ li	$a1, 0XA
/* 003299 0x80B8891C 0C2E1786 */ jal	func_80B85E18
/* 003300 0x80B88920 AFA40018 */ sw	$a0, 0X18($sp)
/* 003301 0x80B88924 8FA40018 */ lw	$a0, 0X18($sp)
/* 003302 0x80B88928 44802000 */ mtc1	$zero, $f4
/* 003303 0x80B8892C 3C1980B9 */ lui	$t9, %hi(func_80B88964)
/* 003304 0x80B88930 908E0430 */ lbu	$t6, 0X430($a0)
/* 003305 0x80B88934 2418000B */ li	$t8, 0XB
/* 003306 0x80B88938 27398964 */ addiu	$t9, $t9, %lo(func_80B88964)
/* 003307 0x80B8893C 31CFFFF9 */ andi	$t7, $t6, 0XFFF9
/* 003308 0x80B88940 A08F0430 */ sb	$t7, 0X430($a0)
/* 003309 0x80B88944 A48002D0 */ sh	$zero, 0X2D0($a0)
/* 003310 0x80B88948 A49802B0 */ sh	$t8, 0X2B0($a0)
/* 003311 0x80B8894C AC9902AC */ sw	$t9, 0X2AC($a0)
/* 003312 0x80B88950 E4840070 */ swc1	$f4, 0X70($a0)
/* 003313 0x80B88954 8FBF0014 */ lw	$ra, 0X14($sp)
/* 003314 0x80B88958 27BD0018 */ addiu	$sp, $sp, 0X18
/* 003315 0x80B8895C 03E00008 */ jr	$ra
/* 003316 0x80B88960 00000000 */ nop

