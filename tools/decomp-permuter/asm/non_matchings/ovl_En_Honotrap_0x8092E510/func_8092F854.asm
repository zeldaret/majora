glabel func_8092F854
/* 001233 0x8092F854 44802000 */ mtc1	$zero, $f4
/* 001234 0x8092F858 3C0E8093 */ lui	$t6, %hi(func_8092F878)
/* 001235 0x8092F85C 25CEF878 */ addiu	$t6, $t6, %lo(func_8092F878)
/* 001236 0x8092F860 240F0050 */ li	$t7, 0X50
/* 001237 0x8092F864 AC8E0144 */ sw	$t6, 0X144($a0)
/* 001238 0x8092F868 A48F0220 */ sh	$t7, 0X220($a0)
/* 001239 0x8092F86C E4840244 */ swc1	$f4, 0X244($a0)
/* 001240 0x8092F870 03E00008 */ jr	$ra
/* 001241 0x8092F874 00000000 */ nop

