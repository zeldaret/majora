glabel func_808D2D6C
/* 002491 0x808D2D6C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002492 0x808D2D70 44800000 */ mtc1	$zero, $f0
/* 002493 0x808D2D74 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002494 0x808D2D78 C4840068 */ lwc1	$f4, 0X68($a0)
/* 002495 0x808D2D7C E4800070 */ swc1	$f0, 0X70($a0)
/* 002496 0x808D2D80 24850354 */ addiu	$a1, $a0, 0X354
/* 002497 0x808D2D84 4604003C */ c.lt.s	$f0, $f4
/* 002498 0x808D2D88 00000000 */ nop
/* 002499 0x808D2D8C 45000002 */ bc1f .L808D2D98
/* 002500 0x808D2D90 00000000 */ nop
/* 002501 0x808D2D94 E4800068 */ swc1	$f0, 0X68($a0)
.L808D2D98:
/* 002502 0x808D2D98 0C02F941 */ jal	func_800BE504
/* 002503 0x808D2D9C AFA40018 */ sw	$a0, 0X18($sp)
/* 002504 0x808D2DA0 8FA40018 */ lw	$a0, 0X18($sp)
/* 002505 0x808D2DA4 3C0E808D */ lui	$t6, %hi(func_808D2DC0)
/* 002506 0x808D2DA8 25CE2DC0 */ addiu	$t6, $t6, %lo(func_808D2DC0)
/* 002507 0x808D2DAC AC8E0188 */ sw	$t6, 0X188($a0)
/* 002508 0x808D2DB0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002509 0x808D2DB4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002510 0x808D2DB8 03E00008 */ jr	$ra
/* 002511 0x808D2DBC 00000000 */ nop

