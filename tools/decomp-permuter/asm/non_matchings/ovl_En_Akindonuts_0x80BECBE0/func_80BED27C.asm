glabel func_80BED27C
/* 000423 0x80BED27C 3C06801F */ lui	$a2, %hi(gSaveContext)
/* 000424 0x80BED280 24C6F670 */ addiu	$a2, $a2, %lo(gSaveContext)
/* 000425 0x80BED284 3C03801C */ lui	$v1, %hi(D_801C1DC4)
/* 000426 0x80BED288 8C631DC4 */ lw	$v1, %lo(D_801C1DC4)($v1)
/* 000427 0x80BED28C 8CC200B8 */ lw	$v0, 0XB8($a2)
/* 000428 0x80BED290 3C05801C */ lui	$a1, %hi(D_801C1E05)
/* 000429 0x80BED294 90A51E05 */ lbu	$a1, %lo(D_801C1E05)($a1)
/* 000430 0x80BED298 00437024 */ and	$t6, $v0, $v1
/* 000431 0x80BED29C 24010003 */ li	$at, 0X3
/* 000432 0x80BED2A0 00AE7806 */ srlv	$t7, $t6, $a1
/* 000433 0x80BED2A4 15E10003 */ bne	$t7, $at, .L80BED2B4
/* 000434 0x80BED2A8 0043C024 */ and	$t8, $v0, $v1
/* 000435 0x80BED2AC 03E00008 */ jr	$ra
/* 000436 0x80BED2B0 24020002 */ li	$v0, 0X2
.L80BED2B4:
/* 000437 0x80BED2B4 00B8C806 */ srlv	$t9, $t8, $a1
/* 000438 0x80BED2B8 2F210002 */ sltiu	$at, $t9, 0X2
/* 000439 0x80BED2BC 50200004 */ beqzl	$at, .L80BED2D0
/* 000440 0x80BED2C0 84C8003A */ lh	$t0, 0X3A($a2)
/* 000441 0x80BED2C4 03E00008 */ jr	$ra
/* 000442 0x80BED2C8 00001025 */ move	$v0, $zero
/* 000443 0x80BED2CC 84C8003A */ lh	$t0, 0X3A($a2)
.L80BED2D0:
/* 000444 0x80BED2D0 2409FF38 */ li	$t1, -0XC8
/* 000445 0x80BED2D4 240A0058 */ li	$t2, 0X58
/* 000446 0x80BED2D8 290100C8 */ slti	$at, $t0, 0XC8
/* 000447 0x80BED2DC 10200003 */ beqz	$at, .L80BED2EC
/* 000448 0x80BED2E0 24020003 */ li	$v0, 0X3
/* 000449 0x80BED2E4 03E00008 */ jr	$ra
/* 000450 0x80BED2E8 24020001 */ li	$v0, 0X1
.L80BED2EC:
/* 000451 0x80BED2EC A4890364 */ sh	$t1, 0X364($a0)
/* 000452 0x80BED2F0 A08A0366 */ sb	$t2, 0X366($a0)
/* 000453 0x80BED2F4 03E00008 */ jr	$ra
/* 000454 0x80BED2F8 00000000 */ nop

