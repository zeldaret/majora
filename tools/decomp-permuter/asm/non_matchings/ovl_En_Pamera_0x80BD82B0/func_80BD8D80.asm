glabel func_80BD8D80
/* 000692 0x80BD8D80 8C8201E0 */ lw	$v0, 0X1E0($a0)
/* 000693 0x80BD8D84 3C01C000 */ lui	$at, 0xC000
/* 000694 0x80BD8D88 44812000 */ mtc1	$at, $f4
/* 000695 0x80BD8D8C 18400003 */ blez	$v0, .L80BD8D9C
/* 000696 0x80BD8D90 3C0F80BE */ lui	$t7, %hi(func_80BD8DB0)
/* 000697 0x80BD8D94 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000698 0x80BD8D98 AC8E01E0 */ sw	$t6, 0X1E0($a0)
.L80BD8D9C:
/* 000699 0x80BD8D9C 25EF8DB0 */ addiu	$t7, $t7, %lo(func_80BD8DB0)
/* 000700 0x80BD8DA0 E4840074 */ swc1	$f4, 0X74($a0)
/* 000701 0x80BD8DA4 AC8F01D4 */ sw	$t7, 0X1D4($a0)
/* 000702 0x80BD8DA8 03E00008 */ jr	$ra
/* 000703 0x80BD8DAC 00000000 */ nop

