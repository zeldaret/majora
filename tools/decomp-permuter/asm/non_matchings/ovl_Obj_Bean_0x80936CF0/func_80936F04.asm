glabel func_80936F04
/* 000133 0x80936F04 A48001B0 */ sh	$zero, 0X1B0($a0)
/* 000134 0x80936F08 848201B0 */ lh	$v0, 0X1B0($a0)
/* 000135 0x80936F0C 44802000 */ mtc1	$zero, $f4
/* 000136 0x80936F10 A48201AE */ sh	$v0, 0X1AE($a0)
/* 000137 0x80936F14 A48201AC */ sh	$v0, 0X1AC($a0)
/* 000138 0x80936F18 E48401C8 */ swc1	$f4, 0X1C8($a0)
/* 000139 0x80936F1C 03E00008 */ jr	$ra
/* 000140 0x80936F20 00000000 */ nop

