glabel func_80A262BC
/* 003211 0x80A262BC 3C0E80A2 */ lui	$t6, %hi(func_80A262EC)
/* 003212 0x80A262C0 25CE62EC */ addiu	$t6, $t6, %lo(func_80A262EC)
/* 003213 0x80A262C4 AC8E01A8 */ sw	$t6, 0X1A8($a0)
/* 003214 0x80A262C8 3C0180A2 */ lui	$at, %hi(D_80A27084)
/* 003215 0x80A262CC C4267084 */ lwc1	$f6, %lo(D_80A27084)($at)
/* 003216 0x80A262D0 C4840068 */ lwc1	$f4, 0X68($a0)
/* 003217 0x80A262D4 240FFFFF */ li	$t7, -0X1
/* 003218 0x80A262D8 A48F02A0 */ sh	$t7, 0X2A0($a0)
/* 003219 0x80A262DC 46062202 */ mul.s	$f8, $f4, $f6
/* 003220 0x80A262E0 E4880068 */ swc1	$f8, 0X68($a0)
/* 003221 0x80A262E4 03E00008 */ jr	$ra
/* 003222 0x80A262E8 00000000 */ nop

