glabel func_808A7A5C
/* 000075 0x808A7A5C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000076 0x808A7A60 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000077 0x808A7A64 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000078 0x808A7A68 00803025 */ move	$a2, $a0
/* 000079 0x808A7A6C 80C40038 */ lb	$a0, 0X38($a2)
/* 000080 0x808A7A70 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000081 0x808A7A74 AFA60018 */ sw	$a2, 0X18($sp)
/* 000082 0x808A7A78 10400006 */ beqz	$v0, .L808A7A94
/* 000083 0x808A7A7C 8FA60018 */ lw	$a2, 0X18($sp)
/* 000084 0x808A7A80 00C02025 */ move	$a0, $a2
/* 000085 0x808A7A84 0C229EAB */ jal	func_808A7AAC
/* 000086 0x808A7A88 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000087 0x808A7A8C 10000004 */ b	.L808A7AA0
/* 000088 0x808A7A90 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7A94:
/* 000089 0x808A7A94 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000090 0x808A7A98 80C40038 */ lb	$a0, 0X38($a2)
/* 000091 0x808A7A9C 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7AA0:
/* 000092 0x808A7AA0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000093 0x808A7AA4 03E00008 */ jr	$ra
/* 000094 0x808A7AA8 00000000 */ nop

