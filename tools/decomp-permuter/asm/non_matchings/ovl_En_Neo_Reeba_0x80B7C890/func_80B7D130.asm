glabel func_80B7D130
/* 000552 0x80B7D130 3C0140C0 */ lui	$at, 0x40C0
/* 000553 0x80B7D134 44812000 */ mtc1	$at, $f4
/* 000554 0x80B7D138 3C0E80B8 */ lui	$t6, %hi(func_80B7D150)
/* 000555 0x80B7D13C 25CED150 */ addiu	$t6, $t6, %lo(func_80B7D150)
/* 000556 0x80B7D140 AC8E02AC */ sw	$t6, 0X2AC($a0)
/* 000557 0x80B7D144 E4840070 */ swc1	$f4, 0X70($a0)
/* 000558 0x80B7D148 03E00008 */ jr	$ra
/* 000559 0x80B7D14C 00000000 */ nop

