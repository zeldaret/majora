glabel func_8012BFEC
/* 137547 0x8012BFEC 00801025 */ move	$v0, $a0
/* 137548 0x8012BFF0 3C0F801C */ lui	$t7, %hi(sSetupDL + 0xAB0)
/* 137549 0x8012BFF4 25EF19A0 */ addiu	$t7, $t7, %lo(sSetupDL + 0xAB0)
/* 137550 0x8012BFF8 3C0EDE00 */ lui	$t6, 0xDE00
/* 137551 0x8012BFFC AC4E0000 */ sw	$t6, 0X0($v0)
/* 137552 0x8012C000 AC4F0004 */ sw	$t7, 0X4($v0)
/* 137553 0x8012C004 24840008 */ addiu	$a0, $a0, 0X8
/* 137554 0x8012C008 00801025 */ move	$v0, $a0
/* 137555 0x8012C00C 03E00008 */ jr	$ra
/* 137556 0x8012C010 00000000 */ nop

