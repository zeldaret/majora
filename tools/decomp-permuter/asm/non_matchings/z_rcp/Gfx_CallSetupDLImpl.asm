glabel Gfx_CallSetupDLImpl
/* 137503 0x8012BF3C 00057880 */ sll	$t7, $a1, 2
/* 137504 0x8012BF40 01E57823 */ subu	$t7, $t7, $a1
/* 137505 0x8012BF44 000F7840 */ sll	$t7, $t7, 1
/* 137506 0x8012BF48 00801025 */ move	$v0, $a0
/* 137507 0x8012BF4C 3C19801C */ lui	$t9, %hi(sSetupDL)
/* 137508 0x8012BF50 27390EF0 */ addiu	$t9, $t9, %lo(sSetupDL)
/* 137509 0x8012BF54 000FC0C0 */ sll	$t8, $t7, 3
/* 137510 0x8012BF58 03194021 */ addu	$t0, $t8, $t9
/* 137511 0x8012BF5C 3C0EDE00 */ lui	$t6, 0xDE00
/* 137512 0x8012BF60 AC4E0000 */ sw	$t6, 0X0($v0)
/* 137513 0x8012BF64 AC480004 */ sw	$t0, 0X4($v0)
/* 137514 0x8012BF68 24840008 */ addiu	$a0, $a0, 0X8
/* 137515 0x8012BF6C 00801025 */ move	$v0, $a0
/* 137516 0x8012BF70 03E00008 */ jr	$ra
/* 137517 0x8012BF74 00000000 */ nop

