glabel func_80C23980
/* 000048 0x80C23980 3C0F80C2 */ lui	$t7, %hi(func_80C2399C)
/* 000049 0x80C23984 240E0001 */ li	$t6, 0X1
/* 000050 0x80C23988 25EF399C */ addiu	$t7, $t7, %lo(func_80C2399C)
/* 000051 0x80C2398C A48E0258 */ sh	$t6, 0X258($a0)
/* 000052 0x80C23990 AC8F0254 */ sw	$t7, 0X254($a0)
/* 000053 0x80C23994 03E00008 */ jr	$ra
/* 000054 0x80C23998 00000000 */ nop

