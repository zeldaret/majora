glabel func_809244A0
/* 000104 0x809244A0 44866000 */ mtc1	$a2, $f12
/* 000105 0x809244A4 00000000 */ nop
/* 000106 0x809244A8 C4800000 */ lwc1	$f0, 0X0($a0)
/* 000107 0x809244AC C4A40000 */ lwc1	$f4, 0X0($a1)
/* 000108 0x809244B0 C4820004 */ lwc1	$f2, 0X4($a0)
/* 000109 0x809244B4 C48E0008 */ lwc1	$f14, 0X8($a0)
/* 000110 0x809244B8 46002181 */ sub.s	$f6, $f4, $f0
/* 000111 0x809244BC 460C3202 */ mul.s	$f8, $f6, $f12
/* 000112 0x809244C0 46080280 */ add.s	$f10, $f0, $f8
/* 000113 0x809244C4 E48A0000 */ swc1	$f10, 0X0($a0)
/* 000114 0x809244C8 C4B00004 */ lwc1	$f16, 0X4($a1)
/* 000115 0x809244CC 46028481 */ sub.s	$f18, $f16, $f2
/* 000116 0x809244D0 460C9102 */ mul.s	$f4, $f18, $f12
/* 000117 0x809244D4 46041180 */ add.s	$f6, $f2, $f4
/* 000118 0x809244D8 E4860004 */ swc1	$f6, 0X4($a0)
/* 000119 0x809244DC C4A80008 */ lwc1	$f8, 0X8($a1)
/* 000120 0x809244E0 460E4281 */ sub.s	$f10, $f8, $f14
/* 000121 0x809244E4 460C5402 */ mul.s	$f16, $f10, $f12
/* 000122 0x809244E8 46107480 */ add.s	$f18, $f14, $f16
/* 000123 0x809244EC E4920008 */ swc1	$f18, 0X8($a0)
/* 000124 0x809244F0 03E00008 */ jr	$ra
/* 000125 0x809244F4 00000000 */ nop

