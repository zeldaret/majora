glabel func_8093B648
/* 000670 0x8093B648 AFA50004 */ sw	$a1, 0X4($sp)
/* 000671 0x8093B64C 3C0E8094 */ lui	$t6, %hi(func_8093B668)
/* 000672 0x8093B650 25CEB668 */ addiu	$t6, $t6, %lo(func_8093B668)
/* 000673 0x8093B654 AC860174 */ sw	$a2, 0X174($a0)
/* 000674 0x8093B658 A0870171 */ sb	$a3, 0X171($a0)
/* 000675 0x8093B65C AC8E015C */ sw	$t6, 0X15C($a0)
/* 000676 0x8093B660 03E00008 */ jr	$ra
/* 000677 0x8093B664 00000000 */ nop

