glabel func_80A52CF8
/* 000498 0x80A52CF8 AFA50004 */ sw	$a1, 0X4($sp)
/* 000499 0x80A52CFC 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF0F)
/* 000500 0x80A52D00 91CE057F */ lbu	$t6, %lo(gSaveContext + 0xF0F)($t6)
/* 000501 0x80A52D04 3C0280A5 */ lui	$v0, %hi(D_80A53438)
/* 000502 0x80A52D08 31CF0020 */ andi	$t7, $t6, 0X20
/* 000503 0x80A52D0C 51E00004 */ beqzl	$t7, .L80A52D20
/* 000504 0x80A52D10 8C9803A4 */ lw	$t8, 0X3A4($a0)
/* 000505 0x80A52D14 03E00008 */ jr	$ra
/* 000506 0x80A52D18 24423438 */ addiu	$v0, $v0, %lo(D_80A53438)
/* 000507 0x80A52D1C 8C9803A4 */ lw	$t8, 0X3A4($a0)
.L80A52D20:
/* 000508 0x80A52D20 3C0280A5 */ lui	$v0, %hi(D_80A53400)
/* 000509 0x80A52D24 24423400 */ addiu	$v0, $v0, %lo(D_80A53400)
/* 000510 0x80A52D28 13000004 */ beqz	$t8, .L80A52D3C
/* 000511 0x80A52D2C 00000000 */ nop
/* 000512 0x80A52D30 3C0280A5 */ lui	$v0, %hi(D_80A53420)
/* 000513 0x80A52D34 03E00008 */ jr	$ra
/* 000514 0x80A52D38 24423420 */ addiu	$v0, $v0, %lo(D_80A53420)
.L80A52D3C:
/* 000515 0x80A52D3C 03E00008 */ jr	$ra
/* 000516 0x80A52D40 00000000 */ nop

