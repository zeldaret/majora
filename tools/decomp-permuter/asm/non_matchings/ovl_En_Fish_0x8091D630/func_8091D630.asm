glabel func_8091D630
/* 000000 0x8091D630 C4840000 */ lwc1	$f4, 0X0($a0)
/* 000001 0x8091D634 C4A60000 */ lwc1	$f6, 0X0($a1)
/* 000002 0x8091D638 C4880008 */ lwc1	$f8, 0X8($a0)
/* 000003 0x8091D63C C4AA0008 */ lwc1	$f10, 0X8($a1)
/* 000004 0x8091D640 46062081 */ sub.s	$f2, $f4, $f6
/* 000005 0x8091D644 460A4301 */ sub.s	$f12, $f8, $f10
/* 000006 0x8091D648 46021402 */ mul.s	$f16, $f2, $f2
/* 000007 0x8091D64C 00000000 */ nop
/* 000008 0x8091D650 460C6482 */ mul.s	$f18, $f12, $f12
/* 000009 0x8091D654 46128000 */ add.s	$f0, $f16, $f18
/* 000010 0x8091D658 03E00008 */ jr	$ra
/* 000011 0x8091D65C 00000000 */ nop

