glabel func_80B922FC
/* 000247 0x80B922FC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000248 0x80B92300 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000249 0x80B92304 AFB00018 */ sw	$s0, 0X18($sp)
/* 000250 0x80B92308 AFA40020 */ sw	$a0, 0X20($sp)
/* 000251 0x80B9230C AFA50024 */ sw	$a1, 0X24($sp)
/* 000252 0x80B92310 8FAE0020 */ lw	$t6, 0X20($sp)
/* 000253 0x80B92314 00008025 */ move	$s0, $zero
/* 000254 0x80B92318 8FA40024 */ lw	$a0, 0X24($sp)
/* 000255 0x80B9231C 85C5001C */ lh	$a1, 0X1C($t6)
/* 000256 0x80B92320 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000257 0x80B92324 30A5007F */ andi	$a1, $a1, 0X7F
/* 000258 0x80B92328 14400002 */ bnez	$v0, .L80B92334
/* 000259 0x80B9232C 8FAF0020 */ lw	$t7, 0X20($sp)
/* 000260 0x80B92330 24100001 */ li	$s0, 0X1
.L80B92334:
/* 000261 0x80B92334 85E5001C */ lh	$a1, 0X1C($t7)
/* 000262 0x80B92338 8FA40024 */ lw	$a0, 0X24($sp)
/* 000263 0x80B9233C 24A50001 */ addiu	$a1, $a1, 0X1
/* 000264 0x80B92340 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000265 0x80B92344 30A5007F */ andi	$a1, $a1, 0X7F
/* 000266 0x80B92348 10400010 */ beqz	$v0, .L80B9238C
/* 000267 0x80B9234C 8FB80020 */ lw	$t8, 0X20($sp)
/* 000268 0x80B92350 8705001C */ lh	$a1, 0X1C($t8)
/* 000269 0x80B92354 8FA40024 */ lw	$a0, 0X24($sp)
/* 000270 0x80B92358 24A50002 */ addiu	$a1, $a1, 0X2
/* 000271 0x80B9235C 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000272 0x80B92360 30A5007F */ andi	$a1, $a1, 0X7F
/* 000273 0x80B92364 10400009 */ beqz	$v0, .L80B9238C
/* 000274 0x80B92368 8FB90020 */ lw	$t9, 0X20($sp)
/* 000275 0x80B9236C 8725001C */ lh	$a1, 0X1C($t9)
/* 000276 0x80B92370 8FA40024 */ lw	$a0, 0X24($sp)
/* 000277 0x80B92374 24A50003 */ addiu	$a1, $a1, 0X3
/* 000278 0x80B92378 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000279 0x80B9237C 30A5007F */ andi	$a1, $a1, 0X7F
/* 000280 0x80B92380 50400003 */ beqzl	$v0, .L80B92390
/* 000281 0x80B92384 02001025 */ move	$v0, $s0
/* 000282 0x80B92388 26100002 */ addiu	$s0, $s0, 0X2
.L80B9238C:
/* 000283 0x80B9238C 02001025 */ move	$v0, $s0
.L80B92390:
/* 000284 0x80B92390 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000285 0x80B92394 8FB00018 */ lw	$s0, 0X18($sp)
/* 000286 0x80B92398 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000287 0x80B9239C 03E00008 */ jr	$ra
/* 000288 0x80B923A0 00000000 */ nop

