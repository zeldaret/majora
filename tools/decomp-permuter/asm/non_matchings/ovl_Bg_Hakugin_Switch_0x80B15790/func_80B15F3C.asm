glabel func_80B15F3C
/* 000491 0x80B15F3C AFA50004 */ sw	$a1, 0X4($sp)
/* 000492 0x80B15F40 848E001C */ lh	$t6, 0X1C($a0)
/* 000493 0x80B15F44 3C1980B1 */ lui	$t9, %hi(D_80B1688C)
/* 000494 0x80B15F48 2739688C */ addiu	$t9, $t9, %lo(D_80B1688C)
/* 000495 0x80B15F4C 31CF0007 */ andi	$t7, $t6, 0X7
/* 000496 0x80B15F50 000FC080 */ sll	$t8, $t7, 2
/* 000497 0x80B15F54 030FC023 */ subu	$t8, $t8, $t7
/* 000498 0x80B15F58 0018C0C0 */ sll	$t8, $t8, 3
/* 000499 0x80B15F5C 03191021 */ addu	$v0, $t8, $t9
/* 000500 0x80B15F60 C4440004 */ lwc1	$f4, 0X4($v0)
/* 000501 0x80B15F64 C486000C */ lwc1	$f6, 0XC($a0)
/* 000502 0x80B15F68 3C0880B1 */ lui	$t0, %hi(func_80B15F88)
/* 000503 0x80B15F6C 25085F88 */ addiu	$t0, $t0, %lo(func_80B15F88)
/* 000504 0x80B15F70 46062200 */ add.s	$f8, $f4, $f6
/* 000505 0x80B15F74 A08001C0 */ sb	$zero, 0X1C0($a0)
/* 000506 0x80B15F78 AC8801AC */ sw	$t0, 0X1AC($a0)
/* 000507 0x80B15F7C E4880028 */ swc1	$f8, 0X28($a0)
/* 000508 0x80B15F80 03E00008 */ jr	$ra
/* 000509 0x80B15F84 00000000 */ nop

