glabel func_808AD66C
/* 000851 0x808AD66C 848E00BE */ lh	$t6, 0XBE($a0)
/* 000852 0x808AD670 3C0F808B */ lui	$t7, %hi(func_808AD68C)
/* 000853 0x808AD674 25EFD68C */ addiu	$t7, $t7, %lo(func_808AD68C)
/* 000854 0x808AD678 A48001DA */ sh	$zero, 0X1DA($a0)
/* 000855 0x808AD67C AC8F01D0 */ sw	$t7, 0X1D0($a0)
/* 000856 0x808AD680 A48E0032 */ sh	$t6, 0X32($a0)
/* 000857 0x808AD684 03E00008 */ jr	$ra
/* 000858 0x808AD688 00000000 */ nop

