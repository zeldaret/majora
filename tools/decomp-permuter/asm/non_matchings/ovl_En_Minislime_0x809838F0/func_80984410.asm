glabel func_80984410
/* 000712 0x80984410 908F0171 */ lbu	$t7, 0X171($a0)
/* 000713 0x80984414 44802000 */ mtc1	$zero, $f4
/* 000714 0x80984418 3C198098 */ lui	$t9, %hi(func_80984450)
/* 000715 0x8098441C 240E0028 */ li	$t6, 0X28
/* 000716 0x80984420 27394450 */ addiu	$t9, $t9, %lo(func_80984450)
/* 000717 0x80984424 31F8FFFE */ andi	$t8, $t7, 0XFFFE
/* 000718 0x80984428 A48E014A */ sh	$t6, 0X14A($a0)
/* 000719 0x8098442C A48000BC */ sh	$zero, 0XBC($a0)
/* 000720 0x80984430 A48000BE */ sh	$zero, 0XBE($a0)
/* 000721 0x80984434 A48000C0 */ sh	$zero, 0XC0($a0)
/* 000722 0x80984438 A4800030 */ sh	$zero, 0X30($a0)
/* 000723 0x8098443C A0980171 */ sb	$t8, 0X171($a0)
/* 000724 0x80984440 AC990144 */ sw	$t9, 0X144($a0)
/* 000725 0x80984444 E4840070 */ swc1	$f4, 0X70($a0)
/* 000726 0x80984448 03E00008 */ jr	$ra
/* 000727 0x8098444C 00000000 */ nop

