glabel func_80A4DB88
/* 000102 0x80A4DB88 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000103 0x80A4DB8C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000104 0x80A4DB90 AFA40018 */ sw	$a0, 0X18($sp)
/* 000105 0x80A4DB94 00A03025 */ move	$a2, $a1
/* 000106 0x80A4DB98 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000107 0x80A4DB9C 00C02025 */ move	$a0, $a2
/* 000108 0x80A4DBA0 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000109 0x80A4DBA4 85C50162 */ lh	$a1, 0X162($t6)
/* 000110 0x80A4DBA8 10400007 */ beqz	$v0, .L80A4DBC8
/* 000111 0x80A4DBAC 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000112 0x80A4DBB0 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000113 0x80A4DBB4 81E40038 */ lb	$a0, 0X38($t7)
/* 000114 0x80A4DBB8 8FB90018 */ lw	$t9, 0X18($sp)
/* 000115 0x80A4DBBC 3C1880A5 */ lui	$t8, %hi(func_80A4DBD8)
/* 000116 0x80A4DBC0 2718DBD8 */ addiu	$t8, $t8, %lo(func_80A4DBD8)
/* 000117 0x80A4DBC4 AF38015C */ sw	$t8, 0X15C($t9)
.L80A4DBC8:
/* 000118 0x80A4DBC8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000119 0x80A4DBCC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000120 0x80A4DBD0 03E00008 */ jr	$ra
/* 000121 0x80A4DBD4 00000000 */ nop

