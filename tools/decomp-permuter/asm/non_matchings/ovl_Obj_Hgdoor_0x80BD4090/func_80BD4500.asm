glabel func_80BD4500
/* 000284 0x80BD4500 848F001C */ lh	$t7, 0X1C($a0)
/* 000285 0x80BD4504 848E0016 */ lh	$t6, 0X16($a0)
/* 000286 0x80BD4508 31F88000 */ andi	$t8, $t7, 0X8000
/* 000287 0x80BD450C 13000006 */ beqz	$t8, .L80BD4528
/* 000288 0x80BD4510 A48E00BE */ sh	$t6, 0XBE($a0)
/* 000289 0x80BD4514 849900BE */ lh	$t9, 0XBE($a0)
/* 000290 0x80BD4518 84880162 */ lh	$t0, 0X162($a0)
/* 000291 0x80BD451C 03284821 */ addu	$t1, $t9, $t0
/* 000292 0x80BD4520 03E00008 */ jr	$ra
/* 000293 0x80BD4524 A48900BE */ sh	$t1, 0XBE($a0)
.L80BD4528:
/* 000294 0x80BD4528 848A00BE */ lh	$t2, 0XBE($a0)
/* 000295 0x80BD452C 848B0162 */ lh	$t3, 0X162($a0)
/* 000296 0x80BD4530 014B6023 */ subu	$t4, $t2, $t3
/* 000297 0x80BD4534 A48C00BE */ sh	$t4, 0XBE($a0)
/* 000298 0x80BD4538 03E00008 */ jr	$ra
/* 000299 0x80BD453C 00000000 */ nop

