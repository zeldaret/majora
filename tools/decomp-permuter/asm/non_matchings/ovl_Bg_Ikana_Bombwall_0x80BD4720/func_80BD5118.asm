glabel func_80BD5118
/* 000638 0x80BD5118 3C0F80BD */ lui	$t7, %hi(func_80BD5134)
/* 000639 0x80BD511C 240E001E */ li	$t6, 0X1E
/* 000640 0x80BD5120 25EF5134 */ addiu	$t7, $t7, %lo(func_80BD5134)
/* 000641 0x80BD5124 A08E01AC */ sb	$t6, 0X1AC($a0)
/* 000642 0x80BD5128 AC8F01A8 */ sw	$t7, 0X1A8($a0)
/* 000643 0x80BD512C 03E00008 */ jr	$ra
/* 000644 0x80BD5130 00000000 */ nop

