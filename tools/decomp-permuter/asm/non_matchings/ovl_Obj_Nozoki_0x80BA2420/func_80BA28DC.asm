glabel func_80BA28DC
/* 000303 0x80BA28DC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000304 0x80BA28E0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000305 0x80BA28E4 00808025 */ move	$s0, $a0
/* 000306 0x80BA28E8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000307 0x80BA28EC AFA5003C */ sw	$a1, 0X3C($sp)
/* 000308 0x80BA28F0 8202015E */ lb	$v0, 0X15E($s0)
/* 000309 0x80BA28F4 8FAF003C */ lw	$t7, 0X3C($sp)
/* 000310 0x80BA28F8 5040000E */ beqzl	$v0, .L80BA2934
/* 000311 0x80BA28FC 91F81CA5 */ lbu	$t8, 0X1CA5($t7)
/* 000312 0x80BA2900 14400003 */ bnez	$v0, .L80BA2910
/* 000313 0x80BA2904 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000314 0x80BA2908 10000003 */ b	.L80BA2918
/* 000315 0x80BA290C 00001825 */ move	$v1, $zero
.L80BA2910:
/* 000316 0x80BA2910 A20E015E */ sb	$t6, 0X15E($s0)
/* 000317 0x80BA2914 8203015E */ lb	$v1, 0X15E($s0)
.L80BA2918:
/* 000318 0x80BA2918 14600061 */ bnez	$v1, .L80BA2AA0
/* 000319 0x80BA291C 02002025 */ move	$a0, $s0
/* 000320 0x80BA2920 0C02E3B2 */ jal	func_800B8EC8
/* 000321 0x80BA2924 24052814 */ li	$a1, 0X2814
/* 000322 0x80BA2928 1000005E */ b	.L80BA2AA4
/* 000323 0x80BA292C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000324 0x80BA2930 91F81CA5 */ lbu	$t8, 0X1CA5($t7)
.L80BA2934:
/* 000325 0x80BA2934 26040068 */ addiu	$a0, $s0, 0X68
/* 000326 0x80BA2938 3C054170 */ lui	$a1, 0x4170
/* 000327 0x80BA293C 33190020 */ andi	$t9, $t8, 0X20
/* 000328 0x80BA2940 1720004E */ bnez	$t9, .L80BA2A7C
/* 000329 0x80BA2944 00000000 */ nop
/* 000330 0x80BA2948 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000331 0x80BA294C 3C064040 */ lui	$a2, 0x4040
/* 000332 0x80BA2950 3C014348 */ lui	$at, 0x4348
/* 000333 0x80BA2954 44813000 */ mtc1	$at, $f6
/* 000334 0x80BA2958 C604000C */ lwc1	$f4, 0XC($s0)
/* 000335 0x80BA295C 26040028 */ addiu	$a0, $s0, 0X28
/* 000336 0x80BA2960 8E060068 */ lw	$a2, 0X68($s0)
/* 000337 0x80BA2964 46062200 */ add.s	$f8, $f4, $f6
/* 000338 0x80BA2968 44054000 */ mfc1	$a1, $f8
/* 000339 0x80BA296C 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000340 0x80BA2970 00000000 */ nop
/* 000341 0x80BA2974 8603001C */ lh	$v1, 0X1C($s0)
/* 000342 0x80BA2978 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000343 0x80BA297C 30680200 */ andi	$t0, $v1, 0X200
/* 000344 0x80BA2980 11000007 */ beqz	$t0, .L80BA29A0
/* 000345 0x80BA2984 3065007F */ andi	$a1, $v1, 0X7F
/* 000346 0x80BA2988 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000347 0x80BA298C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000348 0x80BA2990 1440003A */ bnez	$v0, .L80BA2A7C
/* 000349 0x80BA2994 00000000 */ nop
/* 000350 0x80BA2998 10000042 */ b	.L80BA2AA4
/* 000351 0x80BA299C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA29A0:
/* 000352 0x80BA29A0 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000353 0x80BA29A4 3065007F */ andi	$a1, $v1, 0X7F
/* 000354 0x80BA29A8 10400034 */ beqz	$v0, .L80BA2A7C
/* 000355 0x80BA29AC 00000000 */ nop
/* 000356 0x80BA29B0 82030038 */ lb	$v1, 0X38($s0)
/* 000357 0x80BA29B4 8209015F */ lb	$t1, 0X15F($s0)
/* 000358 0x80BA29B8 3C0D80BA */ lui	$t5, %hi(D_80BA36B4)
/* 000359 0x80BA29BC 14690017 */ bne	$v1, $t1, .L80BA2A1C
/* 000360 0x80BA29C0 00000000 */ nop
/* 000361 0x80BA29C4 860A001C */ lh	$t2, 0X1C($s0)
/* 000362 0x80BA29C8 8FAC003C */ lw	$t4, 0X3C($sp)
/* 000363 0x80BA29CC 314B0400 */ andi	$t3, $t2, 0X400
/* 000364 0x80BA29D0 51600034 */ beqzl	$t3, .L80BA2AA4
/* 000365 0x80BA29D4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000366 0x80BA29D8 8D861CCC */ lw	$a2, 0X1CCC($t4)
/* 000367 0x80BA29DC 02002025 */ move	$a0, $s0
/* 000368 0x80BA29E0 27A50028 */ addiu	$a1, $sp, 0X28
/* 000369 0x80BA29E4 0C02DB9B */ jal	Actor_CalcOffsetOrientedToDrawRotation
/* 000370 0x80BA29E8 24C60024 */ addiu	$a2, $a2, 0X24
/* 000371 0x80BA29EC 3C01C1A0 */ lui	$at, 0xC1A0
/* 000372 0x80BA29F0 44818000 */ mtc1	$at, $f16
/* 000373 0x80BA29F4 C7AA0030 */ lwc1	$f10, 0X30($sp)
/* 000374 0x80BA29F8 4610503C */ c.lt.s	$f10, $f16
/* 000375 0x80BA29FC 00000000 */ nop
/* 000376 0x80BA2A00 45020028 */ bc1fl .L80BA2AA4
/* 000377 0x80BA2A04 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000378 0x80BA2A08 0C03C82E */ jal	ActorCutscene_GetAdditionalCutscene
/* 000379 0x80BA2A0C 8204015F */ lb	$a0, 0X15F($s0)
/* 000380 0x80BA2A10 A202015F */ sb	$v0, 0X15F($s0)
/* 000381 0x80BA2A14 10000023 */ b	.L80BA2AA4
/* 000382 0x80BA2A18 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA2A1C:
/* 000383 0x80BA2A1C 8DAD36B4 */ lw	$t5, %lo(D_80BA36B4)($t5)
/* 000384 0x80BA2A20 15A00008 */ bnez	$t5, .L80BA2A44
/* 000385 0x80BA2A24 00000000 */ nop
/* 000386 0x80BA2A28 0C2E89AA */ jal	func_80BA26A8
/* 000387 0x80BA2A2C 02002025 */ move	$a0, $s0
/* 000388 0x80BA2A30 1040001B */ beqz	$v0, .L80BA2AA0
/* 000389 0x80BA2A34 240E0001 */ li	$t6, 0X1
/* 000390 0x80BA2A38 3C0180BA */ lui	$at, %hi(D_80BA36B4)
/* 000391 0x80BA2A3C 10000018 */ b	.L80BA2AA0
/* 000392 0x80BA2A40 AC2E36B4 */ sw	$t6, %lo(D_80BA36B4)($at)
.L80BA2A44:
/* 000393 0x80BA2A44 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000394 0x80BA2A48 AFA30034 */ sw	$v1, 0X34($sp)
/* 000395 0x80BA2A4C 820F015F */ lb	$t7, 0X15F($s0)
/* 000396 0x80BA2A50 8FA30034 */ lw	$v1, 0X34($sp)
/* 000397 0x80BA2A54 504F0013 */ beql	$v0, $t7, .L80BA2AA4
/* 000398 0x80BA2A58 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000399 0x80BA2A5C 8618001C */ lh	$t8, 0X1C($s0)
/* 000400 0x80BA2A60 A203015F */ sb	$v1, 0X15F($s0)
/* 000401 0x80BA2A64 3404881A */ ori	$a0, $zero, 0X881A
/* 000402 0x80BA2A68 3319FBFF */ andi	$t9, $t8, 0XFBFF
/* 000403 0x80BA2A6C 0C06A26A */ jal	func_801A89A8
/* 000404 0x80BA2A70 A619001C */ sh	$t9, 0X1C($s0)
/* 000405 0x80BA2A74 1000000B */ b	.L80BA2AA4
/* 000406 0x80BA2A78 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA2A7C:
/* 000407 0x80BA2A7C 3C0580BA */ lui	$a1, %hi(func_80BA2AB4)
/* 000408 0x80BA2A80 24A52AB4 */ addiu	$a1, $a1, %lo(func_80BA2AB4)
/* 000409 0x80BA2A84 0C2E8908 */ jal	func_80BA2420
/* 000410 0x80BA2A88 02002025 */ move	$a0, $s0
/* 000411 0x80BA2A8C 44809000 */ mtc1	$zero, $f18
/* 000412 0x80BA2A90 02002025 */ move	$a0, $s0
/* 000413 0x80BA2A94 2405281C */ li	$a1, 0X281C
/* 000414 0x80BA2A98 0C02E3B2 */ jal	func_800B8EC8
/* 000415 0x80BA2A9C E6120068 */ swc1	$f18, 0X68($s0)
.L80BA2AA0:
/* 000416 0x80BA2AA0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BA2AA4:
/* 000417 0x80BA2AA4 8FB00018 */ lw	$s0, 0X18($sp)
/* 000418 0x80BA2AA8 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000419 0x80BA2AAC 03E00008 */ jr	$ra
/* 000420 0x80BA2AB0 00000000 */ nop

