glabel func_80A850B0
/* 000248 0x80A850B0 3C0142B4 */ lui	$at, 0x42B4
/* 000249 0x80A850B4 C480000C */ lwc1	$f0, 0XC($a0)
/* 000250 0x80A850B8 44812000 */ mtc1	$at, $f4
/* 000251 0x80A850BC 3C0E80A8 */ lui	$t6, %hi(func_80A85304)
/* 000252 0x80A850C0 3C0F80A8 */ lui	$t7, %hi(func_80A850E8)
/* 000253 0x80A850C4 46040181 */ sub.s	$f6, $f0, $f4
/* 000254 0x80A850C8 25CE5304 */ addiu	$t6, $t6, %lo(func_80A85304)
/* 000255 0x80A850CC 25EF50E8 */ addiu	$t7, $t7, %lo(func_80A850E8)
/* 000256 0x80A850D0 AC8E013C */ sw	$t6, 0X13C($a0)
/* 000257 0x80A850D4 E486016C */ swc1	$f6, 0X16C($a0)
/* 000258 0x80A850D8 AC8F015C */ sw	$t7, 0X15C($a0)
/* 000259 0x80A850DC E4800168 */ swc1	$f0, 0X168($a0)
/* 000260 0x80A850E0 03E00008 */ jr	$ra
/* 000261 0x80A850E4 00000000 */ nop

