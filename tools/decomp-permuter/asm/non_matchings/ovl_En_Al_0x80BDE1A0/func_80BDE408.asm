glabel func_80BDE408
/* 000154 0x80BDE408 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000155 0x80BDE40C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000156 0x80BDE410 AFA40020 */ sw	$a0, 0X20($sp)
/* 000157 0x80BDE414 AFA50024 */ sw	$a1, 0X24($sp)
/* 000158 0x80BDE418 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000159 0x80BDE41C AFA0001C */ sw	$zero, 0X1C($sp)
/* 000160 0x80BDE420 2401007C */ li	$at, 0X7C
/* 000161 0x80BDE424 14410007 */ bne	$v0, $at, .L80BDE444
/* 000162 0x80BDE428 00000000 */ nop
/* 000163 0x80BDE42C 0C03C7EF */ jal	ActorCutscene_Stop
/* 000164 0x80BDE430 2404007C */ li	$a0, 0X7C
/* 000165 0x80BDE434 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000166 0x80BDE438 87A40026 */ lh	$a0, 0X26($sp)
/* 000167 0x80BDE43C 1000000D */ b	.L80BDE474
/* 000168 0x80BDE440 8FA2001C */ lw	$v0, 0X1C($sp)
.L80BDE444:
/* 000169 0x80BDE444 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000170 0x80BDE448 87A40026 */ lh	$a0, 0X26($sp)
/* 000171 0x80BDE44C 10400006 */ beqz	$v0, .L80BDE468
/* 000172 0x80BDE450 87A40026 */ lh	$a0, 0X26($sp)
/* 000173 0x80BDE454 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000174 0x80BDE458 8FA50020 */ lw	$a1, 0X20($sp)
/* 000175 0x80BDE45C 240E0001 */ li	$t6, 0X1
/* 000176 0x80BDE460 10000003 */ b	.L80BDE470
/* 000177 0x80BDE464 AFAE001C */ sw	$t6, 0X1C($sp)
.L80BDE468:
/* 000178 0x80BDE468 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000179 0x80BDE46C 87A40026 */ lh	$a0, 0X26($sp)
.L80BDE470:
/* 000180 0x80BDE470 8FA2001C */ lw	$v0, 0X1C($sp)
.L80BDE474:
/* 000181 0x80BDE474 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000182 0x80BDE478 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000183 0x80BDE47C 03E00008 */ jr	$ra
/* 000184 0x80BDE480 00000000 */ nop

