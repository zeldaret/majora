glabel func_80A7EA88
/* 002110 0x80A7EA88 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002111 0x80A7EA8C AFBF0014 */ sw	$ra, 0X14($sp)
/* 002112 0x80A7EA90 24020014 */ li	$v0, 0X14
/* 002113 0x80A7EA94 8C8E1BC0 */ lw	$t6, 0X1BC0($a0)
/* 002114 0x80A7EA98 2405000A */ li	$a1, 0XA
/* 002115 0x80A7EA9C A5C2002E */ sh	$v0, 0X2E($t6)
/* 002116 0x80A7EAA0 8C8F1BC0 */ lw	$t7, 0X1BC0($a0)
/* 002117 0x80A7EAA4 A5E2006E */ sh	$v0, 0X6E($t7)
/* 002118 0x80A7EAA8 0C29F264 */ jal	func_80A7C990
/* 002119 0x80A7EAAC AFA40018 */ sw	$a0, 0X18($sp)
/* 002120 0x80A7EAB0 8FA40018 */ lw	$a0, 0X18($sp)
/* 002121 0x80A7EAB4 3C1980A8 */ lui	$t9, %hi(func_80A7EAD8)
/* 002122 0x80A7EAB8 24180009 */ li	$t8, 0X9
/* 002123 0x80A7EABC 2739EAD8 */ addiu	$t9, $t9, %lo(func_80A7EAD8)
/* 002124 0x80A7EAC0 A49802B2 */ sh	$t8, 0X2B2($a0)
/* 002125 0x80A7EAC4 AC9902A8 */ sw	$t9, 0X2A8($a0)
/* 002126 0x80A7EAC8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002127 0x80A7EACC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002128 0x80A7EAD0 03E00008 */ jr	$ra
/* 002129 0x80A7EAD4 00000000 */ nop

