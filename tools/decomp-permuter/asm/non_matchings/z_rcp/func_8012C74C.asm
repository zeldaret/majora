glabel func_8012C74C
/* 138019 0x8012C74C 00801025 */ move	$v0, $a0
/* 138020 0x8012C750 3C0F801C */ lui	$t7, %hi(sSetupDL + 0xC90)
/* 138021 0x8012C754 25EF1B80 */ addiu	$t7, $t7, %lo(sSetupDL + 0xC90)
/* 138022 0x8012C758 3C0EDE00 */ lui	$t6, 0xDE00
/* 138023 0x8012C75C AC4E0000 */ sw	$t6, 0X0($v0)
/* 138024 0x8012C760 AC4F0004 */ sw	$t7, 0X4($v0)
/* 138025 0x8012C764 24840008 */ addiu	$a0, $a0, 0X8
/* 138026 0x8012C768 00801025 */ move	$v0, $a0
/* 138027 0x8012C76C 03E00008 */ jr	$ra
/* 138028 0x8012C770 00000000 */ nop

