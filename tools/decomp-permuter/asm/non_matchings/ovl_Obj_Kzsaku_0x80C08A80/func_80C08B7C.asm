glabel func_80C08B7C
/* 000063 0x80C08B7C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000064 0x80C08B80 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000065 0x80C08B84 AFA40018 */ sw	$a0, 0X18($sp)
/* 000066 0x80C08B88 00A03025 */ move	$a2, $a1
/* 000067 0x80C08B8C 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000068 0x80C08B90 00C02025 */ move	$a0, $a2
/* 000069 0x80C08B94 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000070 0x80C08B98 8DC50164 */ lw	$a1, 0X164($t6)
/* 000071 0x80C08B9C 50400004 */ beqzl	$v0, .L80C08BB0
/* 000072 0x80C08BA0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000073 0x80C08BA4 0C3022EF */ jal	func_80C08BBC
/* 000074 0x80C08BA8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000075 0x80C08BAC 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C08BB0:
/* 000076 0x80C08BB0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000077 0x80C08BB4 03E00008 */ jr	$ra
/* 000078 0x80C08BB8 00000000 */ nop

