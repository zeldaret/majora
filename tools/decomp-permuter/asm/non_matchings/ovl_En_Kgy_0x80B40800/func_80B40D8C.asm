glabel func_80B40D8C
/* 000355 0x80B40D8C 848E00A4 */ lh	$t6, 0XA4($a0)
/* 000356 0x80B40D90 3C02801F */ lui	$v0, %hi(gSaveContext + 0x10C)
/* 000357 0x80B40D94 000E78C0 */ sll	$t7, $t6, 3
/* 000358 0x80B40D98 01EE7823 */ subu	$t7, $t7, $t6
/* 000359 0x80B40D9C 000F7880 */ sll	$t7, $t7, 2
/* 000360 0x80B40DA0 004F1021 */ addu	$v0, $v0, $t7
/* 000361 0x80B40DA4 8C42F77C */ lw	$v0, %lo(gSaveContext + 0x10C)($v0)
/* 000362 0x80B40DA8 30420004 */ andi	$v0, $v0, 0X4
/* 000363 0x80B40DAC 03E00008 */ jr	$ra
/* 000364 0x80B40DB0 00000000 */ nop

