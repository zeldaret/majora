glabel func_80A2C150
/* 000340 0x80A2C150 3C0E80A3 */ lui	$t6, %hi(func_80A2C168)
/* 000341 0x80A2C154 25CEC168 */ addiu	$t6, $t6, %lo(func_80A2C168)
/* 000342 0x80A2C158 A48001D8 */ sh	$zero, 0X1D8($a0)
/* 000343 0x80A2C15C AC8E0188 */ sw	$t6, 0X188($a0)
/* 000344 0x80A2C160 03E00008 */ jr	$ra
/* 000345 0x80A2C164 00000000 */ nop

