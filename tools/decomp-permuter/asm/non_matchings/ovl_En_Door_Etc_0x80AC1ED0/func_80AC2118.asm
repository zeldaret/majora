glabel func_80AC2118
/* 000146 0x80AC2118 AFA50004 */ sw	$a1, 0X4($sp)
/* 000147 0x80AC211C 848201A4 */ lh	$v0, 0X1A4($a0)
/* 000148 0x80AC2120 3C0F80AC */ lui	$t7, %hi(func_80AC21A0)
/* 000149 0x80AC2124 25EF21A0 */ addiu	$t7, $t7, %lo(func_80AC21A0)
/* 000150 0x80AC2128 04410003 */ bgez	$v0, .L80AC2138
/* 000151 0x80AC212C 244E0100 */ addiu	$t6, $v0, 0X100
/* 000152 0x80AC2130 03E00008 */ jr	$ra
/* 000153 0x80AC2134 A48E01A4 */ sh	$t6, 0X1A4($a0)
.L80AC2138:
/* 000154 0x80AC2138 909801F4 */ lbu	$t8, 0X1F4($a0)
/* 000155 0x80AC213C A48001A4 */ sh	$zero, 0X1A4($a0)
/* 000156 0x80AC2140 AC8F01F8 */ sw	$t7, 0X1F8($a0)
/* 000157 0x80AC2144 3319FFFE */ andi	$t9, $t8, 0XFFFE
/* 000158 0x80AC2148 A09901F4 */ sb	$t9, 0X1F4($a0)
/* 000159 0x80AC214C 03E00008 */ jr	$ra
/* 000160 0x80AC2150 00000000 */ nop

