glabel func_80A490E4
/* 000065 0x80A490E4 AFA50004 */ sw	$a1, 0X4($sp)
/* 000066 0x80A490E8 3C0E80A5 */ lui	$t6, %hi(func_80A490FC)
/* 000067 0x80A490EC 25CE90FC */ addiu	$t6, $t6, %lo(func_80A490FC)
/* 000068 0x80A490F0 AC8E01A0 */ sw	$t6, 0X1A0($a0)
/* 000069 0x80A490F4 03E00008 */ jr	$ra
/* 000070 0x80A490F8 00000000 */ nop

