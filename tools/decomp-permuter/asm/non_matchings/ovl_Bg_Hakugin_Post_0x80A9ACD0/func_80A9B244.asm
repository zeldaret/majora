glabel func_80A9B244
/* 000349 0x80A9B244 8C8302A0 */ lw	$v1, 0X2A0($a0)
/* 000350 0x80A9B248 44801000 */ mtc1	$zero, $f2
/* 000351 0x80A9B24C 00801025 */ move	$v0, $a0
/* 000352 0x80A9B250 18600016 */ blez	$v1, .L80A9B2AC
/* 000353 0x80A9B254 000370C0 */ sll	$t6, $v1, 3
/* 000354 0x80A9B258 01C37023 */ subu	$t6, $t6, $v1
/* 000355 0x80A9B25C 000E70C0 */ sll	$t6, $t6, 3
/* 000356 0x80A9B260 3C0380AA */ lui	$v1, %hi(D_80A9D880)
/* 000357 0x80A9B264 2463D880 */ addiu	$v1, $v1, %lo(D_80A9D880)
/* 000358 0x80A9B268 01C42821 */ addu	$a1, $t6, $a0
/* 000359 0x80A9B26C 24420038 */ addiu	$v0, $v0, 0X38
/* 000360 0x80A9B270 0045082B */ sltu	$at, $v0, $a1
/* 000361 0x80A9B274 10200009 */ beqz	$at, .L80A9B29C
/* 000362 0x80A9B278 8C4FFFC8 */ lw	$t7, -0X38($v0)
.L80A9B27C:
/* 000363 0x80A9B27C 000FC0C0 */ sll	$t8, $t7, 3
/* 000364 0x80A9B280 0078C821 */ addu	$t9, $v1, $t8
/* 000365 0x80A9B284 C7320000 */ lwc1	$f18, 0X0($t9)
/* 000366 0x80A9B288 24420038 */ addiu	$v0, $v0, 0X38
/* 000367 0x80A9B28C 0045082B */ sltu	$at, $v0, $a1
/* 000368 0x80A9B290 46121080 */ add.s	$f2, $f2, $f18
/* 000369 0x80A9B294 1420FFF9 */ bnez	$at, .L80A9B27C
/* 000370 0x80A9B298 8C4FFFC8 */ lw	$t7, -0X38($v0)
.L80A9B29C:
/* 000371 0x80A9B29C 000FC0C0 */ sll	$t8, $t7, 3
/* 000372 0x80A9B2A0 0078C821 */ addu	$t9, $v1, $t8
/* 000373 0x80A9B2A4 C7320000 */ lwc1	$f18, 0X0($t9)
/* 000374 0x80A9B2A8 46121080 */ add.s	$f2, $f2, $f18
.L80A9B2AC:
/* 000375 0x80A9B2AC 46001006 */ mov.s	$f0, $f2
/* 000376 0x80A9B2B0 03E00008 */ jr	$ra
/* 000377 0x80A9B2B4 00000000 */ nop

