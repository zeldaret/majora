glabel func_80A17D14
/* 001013 0x80A17D14 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001014 0x80A17D18 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001015 0x80A17D1C 24050004 */ li	$a1, 0X4
/* 001016 0x80A17D20 0C285C18 */ jal	func_80A17060
/* 001017 0x80A17D24 AFA40018 */ sw	$a0, 0X18($sp)
/* 001018 0x80A17D28 8FA40018 */ lw	$a0, 0X18($sp)
/* 001019 0x80A17D2C 3C0F80A1 */ lui	$t7, %hi(func_80A17D54)
/* 001020 0x80A17D30 240E0005 */ li	$t6, 0X5
/* 001021 0x80A17D34 25EF7D54 */ addiu	$t7, $t7, %lo(func_80A17D54)
/* 001022 0x80A17D38 A48003C4 */ sh	$zero, 0X3C4($a0)
/* 001023 0x80A17D3C A48E03C6 */ sh	$t6, 0X3C6($a0)
/* 001024 0x80A17D40 AC8F0230 */ sw	$t7, 0X230($a0)
/* 001025 0x80A17D44 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001026 0x80A17D48 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001027 0x80A17D4C 03E00008 */ jr	$ra
/* 001028 0x80A17D50 00000000 */ nop

