glabel func_80AF3BA0
/* 000164 0x80AF3BA0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000165 0x80AF3BA4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000166 0x80AF3BA8 00808025 */ move	$s0, $a0
/* 000167 0x80AF3BAC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000168 0x80AF3BB0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000169 0x80AF3BB4 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000170 0x80AF3BB8 82040038 */ lb	$a0, 0X38($s0)
/* 000171 0x80AF3BBC 1040000F */ beqz	$v0, .L80AF3BFC
/* 000172 0x80AF3BC0 02002825 */ move	$a1, $s0
/* 000173 0x80AF3BC4 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000174 0x80AF3BC8 82040038 */ lb	$a0, 0X38($s0)
/* 000175 0x80AF3BCC 8605001C */ lh	$a1, 0X1C($s0)
/* 000176 0x80AF3BD0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000177 0x80AF3BD4 00052A03 */ sra	$a1, $a1, 8
/* 000178 0x80AF3BD8 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000179 0x80AF3BDC 30A5007F */ andi	$a1, $a1, 0X7F
/* 000180 0x80AF3BE0 02002025 */ move	$a0, $s0
/* 000181 0x80AF3BE4 0C2BCE44 */ jal	func_80AF3910
/* 000182 0x80AF3BE8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000183 0x80AF3BEC 0C2BCF06 */ jal	func_80AF3C18
/* 000184 0x80AF3BF0 02002025 */ move	$a0, $s0
/* 000185 0x80AF3BF4 10000004 */ b	.L80AF3C08
/* 000186 0x80AF3BF8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AF3BFC:
/* 000187 0x80AF3BFC 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000188 0x80AF3C00 82040038 */ lb	$a0, 0X38($s0)
/* 000189 0x80AF3C04 8FBF001C */ lw	$ra, 0X1C($sp)
.L80AF3C08:
/* 000190 0x80AF3C08 8FB00018 */ lw	$s0, 0X18($sp)
/* 000191 0x80AF3C0C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000192 0x80AF3C10 03E00008 */ jr	$ra
/* 000193 0x80AF3C14 00000000 */ nop

