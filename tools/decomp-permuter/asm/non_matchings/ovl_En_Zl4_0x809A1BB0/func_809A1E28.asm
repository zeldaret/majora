glabel func_809A1E28
/* 000158 0x809A1E28 8C8302B4 */ lw	$v1, 0X2B4($a0)
/* 000159 0x809A1E2C 3C0EFB00 */ lui	$t6, 0xFB00
/* 000160 0x809A1E30 30AF00FF */ andi	$t7, $a1, 0XFF
/* 000161 0x809A1E34 2463FFF0 */ addiu	$v1, $v1, -0X10
/* 000162 0x809A1E38 AC8302B4 */ sw	$v1, 0X2B4($a0)
/* 000163 0x809A1E3C 24620008 */ addiu	$v0, $v1, 0X8
/* 000164 0x809A1E40 AC6E0000 */ sw	$t6, 0X0($v1)
/* 000165 0x809A1E44 AC6F0004 */ sw	$t7, 0X4($v1)
/* 000166 0x809A1E48 3C18DF00 */ lui	$t8, 0xDF00
/* 000167 0x809A1E4C AC580000 */ sw	$t8, 0X0($v0)
/* 000168 0x809A1E50 AC400004 */ sw	$zero, 0X4($v0)
/* 000169 0x809A1E54 00601025 */ move	$v0, $v1
/* 000170 0x809A1E58 03E00008 */ jr	$ra
/* 000171 0x809A1E5C 00000000 */ nop

