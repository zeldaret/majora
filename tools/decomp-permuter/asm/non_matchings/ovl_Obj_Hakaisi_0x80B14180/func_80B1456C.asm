glabel func_80B1456C
/* 000251 0x80B1456C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000252 0x80B14570 AFB00018 */ sw	$s0, 0X18($sp)
/* 000253 0x80B14574 00808025 */ move	$s0, $a0
/* 000254 0x80B14578 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000255 0x80B1457C AFA50024 */ sw	$a1, 0X24($sp)
/* 000256 0x80B14580 86060196 */ lh	$a2, 0X196($s0)
/* 000257 0x80B14584 2401FFFF */ li	$at, -0X1
/* 000258 0x80B14588 10C1000B */ beq	$a2, $at, .L80B145B8
/* 000259 0x80B1458C 00062400 */ sll	$a0, $a2, 16
/* 000260 0x80B14590 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000261 0x80B14594 00042403 */ sra	$a0, $a0, 16
/* 000262 0x80B14598 10400005 */ beqz	$v0, .L80B145B0
/* 000263 0x80B1459C 02002825 */ move	$a1, $s0
/* 000264 0x80B145A0 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000265 0x80B145A4 86040196 */ lh	$a0, 0X196($s0)
/* 000266 0x80B145A8 10000004 */ b	.L80B145BC
/* 000267 0x80B145AC 920E00B7 */ lbu	$t6, 0XB7($s0)
.L80B145B0:
/* 000268 0x80B145B0 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000269 0x80B145B4 86040196 */ lh	$a0, 0X196($s0)
.L80B145B8:
/* 000270 0x80B145B8 920E00B7 */ lbu	$t6, 0XB7($s0)
.L80B145BC:
/* 000271 0x80B145BC 29C1001E */ slti	$at, $t6, 0X1E
/* 000272 0x80B145C0 50200008 */ beqzl	$at, .L80B145E4
/* 000273 0x80B145C4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000274 0x80B145C8 0C2C517D */ jal	func_80B145F4
/* 000275 0x80B145CC 02002025 */ move	$a0, $s0
/* 000276 0x80B145D0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000277 0x80B145D4 8E060144 */ lw	$a2, 0X144($s0)
/* 000278 0x80B145D8 0C0318AF */ jal	func_800C62BC
/* 000279 0x80B145DC 24850880 */ addiu	$a1, $a0, 0X880
/* 000280 0x80B145E0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B145E4:
/* 000281 0x80B145E4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000282 0x80B145E8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000283 0x80B145EC 03E00008 */ jr	$ra
/* 000284 0x80B145F0 00000000 */ nop

