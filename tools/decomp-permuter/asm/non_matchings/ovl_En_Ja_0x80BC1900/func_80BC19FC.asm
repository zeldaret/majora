glabel func_80BC19FC
/* 000063 0x80BC19FC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000064 0x80BC1A00 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000065 0x80BC1A04 948E0340 */ lhu	$t6, 0X340($a0)
/* 000066 0x80BC1A08 00001825 */ move	$v1, $zero
/* 000067 0x80BC1A0C 31CF0007 */ andi	$t7, $t6, 0X7
/* 000068 0x80BC1A10 51E00011 */ beqzl	$t7, .L80BC1A58
/* 000069 0x80BC1A14 00601025 */ move	$v0, $v1
/* 000070 0x80BC1A18 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000071 0x80BC1A1C 0C02E134 */ jal	func_800B84D0
/* 000072 0x80BC1A20 AFA40020 */ sw	$a0, 0X20($sp)
/* 000073 0x80BC1A24 1040000B */ beqz	$v0, .L80BC1A54
/* 000074 0x80BC1A28 8FA3001C */ lw	$v1, 0X1C($sp)
/* 000075 0x80BC1A2C 8FA40020 */ lw	$a0, 0X20($sp)
/* 000076 0x80BC1A30 00002825 */ move	$a1, $zero
/* 000077 0x80BC1A34 24060007 */ li	$a2, 0X7
/* 000078 0x80BC1A38 0C04EBB5 */ jal	func_8013AED4
/* 000079 0x80BC1A3C 24840340 */ addiu	$a0, $a0, 0X340
/* 000080 0x80BC1A40 8FB90020 */ lw	$t9, 0X20($sp)
/* 000081 0x80BC1A44 3C1880BC */ lui	$t8, %hi(func_80BC22F4)
/* 000082 0x80BC1A48 271822F4 */ addiu	$t8, $t8, %lo(func_80BC22F4)
/* 000083 0x80BC1A4C 24030001 */ li	$v1, 0X1
/* 000084 0x80BC1A50 AF380188 */ sw	$t8, 0X188($t9)
.L80BC1A54:
/* 000085 0x80BC1A54 00601025 */ move	$v0, $v1
.L80BC1A58:
/* 000086 0x80BC1A58 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000087 0x80BC1A5C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000088 0x80BC1A60 03E00008 */ jr	$ra
/* 000089 0x80BC1A64 00000000 */ nop

