glabel func_80B30A4C
/* 000975 0x80B30A4C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000976 0x80B30A50 AFB00018 */ sw	$s0, 0X18($sp)
/* 000977 0x80B30A54 00808025 */ move	$s0, $a0
/* 000978 0x80B30A58 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000979 0x80B30A5C AFA50024 */ sw	$a1, 0X24($sp)
/* 000980 0x80B30A60 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000981 0x80B30A64 82040038 */ lb	$a0, 0X38($s0)
/* 000982 0x80B30A68 10400013 */ beqz	$v0, .L80B30AB8
/* 000983 0x80B30A6C 02002825 */ move	$a1, $s0
/* 000984 0x80B30A70 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000985 0x80B30A74 82040038 */ lb	$a0, 0X38($s0)
/* 000986 0x80B30A78 820E0038 */ lb	$t6, 0X38($s0)
/* 000987 0x80B30A7C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000988 0x80B30A80 02002825 */ move	$a1, $s0
/* 000989 0x80B30A84 05C20004 */ bltzl	$t6, .L80B30A98
/* 000990 0x80B30A88 8605001C */ lh	$a1, 0X1C($s0)
/* 000991 0x80B30A8C 0C02DCA6 */ jal	func_800B7298
/* 000992 0x80B30A90 24060001 */ li	$a2, 0X1
/* 000993 0x80B30A94 8605001C */ lh	$a1, 0X1C($s0)
.L80B30A98:
/* 000994 0x80B30A98 8FA40024 */ lw	$a0, 0X24($sp)
/* 000995 0x80B30A9C 00052A03 */ sra	$a1, $a1, 8
/* 000996 0x80B30AA0 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000997 0x80B30AA4 30A5007F */ andi	$a1, $a1, 0X7F
/* 000998 0x80B30AA8 0C2CC2B5 */ jal	func_80B30AD4
/* 000999 0x80B30AAC 02002025 */ move	$a0, $s0
/* 001000 0x80B30AB0 10000004 */ b	.L80B30AC4
/* 001001 0x80B30AB4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B30AB8:
/* 001002 0x80B30AB8 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 001003 0x80B30ABC 82040038 */ lb	$a0, 0X38($s0)
/* 001004 0x80B30AC0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B30AC4:
/* 001005 0x80B30AC4 8FB00018 */ lw	$s0, 0X18($sp)
/* 001006 0x80B30AC8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001007 0x80B30ACC 03E00008 */ jr	$ra
/* 001008 0x80B30AD0 00000000 */ nop

