glabel func_80B88964
/* 003317 0x80B88964 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 003318 0x80B88968 AFB00030 */ sw	$s0, 0X30($sp)
/* 003319 0x80B8896C 00808025 */ move	$s0, $a0
/* 003320 0x80B88970 AFBF0034 */ sw	$ra, 0X34($sp)
/* 003321 0x80B88974 AFA50054 */ sw	$a1, 0X54($sp)
/* 003322 0x80B88978 8FAE0054 */ lw	$t6, 0X54($sp)
/* 003323 0x80B8897C 26040148 */ addiu	$a0, $s0, 0X148
/* 003324 0x80B88980 3C054150 */ lui	$a1, 0x4150
/* 003325 0x80B88984 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 003326 0x80B88988 AFAF004C */ sw	$t7, 0X4C($sp)
/* 003327 0x80B8898C C6000160 */ lwc1	$f0, 0X160($s0)
/* 003328 0x80B88990 E7A00048 */ swc1	$f0, 0X48($sp)
/* 003329 0x80B88994 861802D0 */ lh	$t8, 0X2D0($s0)
/* 003330 0x80B88998 2B010002 */ slti	$at, $t8, 0X2
/* 003331 0x80B8899C 5020000D */ beqzl	$at, .L80B889D4
/* 003332 0x80B889A0 3C014100 */ lui	$at, 0x4100
/* 003333 0x80B889A4 92020430 */ lbu	$v0, 0X430($s0)
/* 003334 0x80B889A8 24090001 */ li	$t1, 0X1
/* 003335 0x80B889AC 3C013F80 */ lui	$at, 0x3F80
/* 003336 0x80B889B0 30590004 */ andi	$t9, $v0, 0X4
/* 003337 0x80B889B4 13200006 */ beqz	$t9, .L80B889D0
/* 003338 0x80B889B8 3048FFF9 */ andi	$t0, $v0, 0XFFF9
/* 003339 0x80B889BC 44812000 */ mtc1	$at, $f4
/* 003340 0x80B889C0 A2080430 */ sb	$t0, 0X430($s0)
/* 003341 0x80B889C4 A60902D0 */ sh	$t1, 0X2D0($s0)
/* 003342 0x80B889C8 C6000160 */ lwc1	$f0, 0X160($s0)
/* 003343 0x80B889CC E6040164 */ swc1	$f4, 0X164($s0)
.L80B889D0:
/* 003344 0x80B889D0 3C014100 */ lui	$at, 0x4100
.L80B889D4:
/* 003345 0x80B889D4 44813000 */ mtc1	$at, $f6
/* 003346 0x80B889D8 00000000 */ nop
/* 003347 0x80B889DC 4606003E */ c.le.s	$f0, $f6
/* 003348 0x80B889E0 00000000 */ nop
/* 003349 0x80B889E4 45000005 */ bc1f .L80B889FC
/* 003350 0x80B889E8 00000000 */ nop
/* 003351 0x80B889EC 86020092 */ lh	$v0, 0X92($s0)
/* 003352 0x80B889F0 A6020032 */ sh	$v0, 0X32($s0)
/* 003353 0x80B889F4 10000035 */ b	.L80B88ACC
/* 003354 0x80B889F8 A60200BE */ sh	$v0, 0XBE($s0)
.L80B889FC:
/* 003355 0x80B889FC 0C04DE2E */ jal	func_801378B8
/* 003356 0x80B88A00 AFA40038 */ sw	$a0, 0X38($sp)
/* 003357 0x80B88A04 10400025 */ beqz	$v0, .L80B88A9C
/* 003358 0x80B88A08 8FA40038 */ lw	$a0, 0X38($sp)
/* 003359 0x80B88A0C 3C014000 */ lui	$at, 0x4000
/* 003360 0x80B88A10 44814000 */ mtc1	$at, $f8
/* 003361 0x80B88A14 240A0002 */ li	$t2, 0X2
/* 003362 0x80B88A18 AFAA0010 */ sw	$t2, 0X10($sp)
/* 003363 0x80B88A1C 8FA40054 */ lw	$a0, 0X54($sp)
/* 003364 0x80B88A20 02002825 */ move	$a1, $s0
/* 003365 0x80B88A24 2606058C */ addiu	$a2, $s0, 0X58C
/* 003366 0x80B88A28 3C074040 */ lui	$a3, 0x4040
/* 003367 0x80B88A2C AFA00018 */ sw	$zero, 0X18($sp)
/* 003368 0x80B88A30 AFA0001C */ sw	$zero, 0X1C($sp)
/* 003369 0x80B88A34 AFA00020 */ sw	$zero, 0X20($sp)
/* 003370 0x80B88A38 0C02EF6B */ jal	func_800BBDAC
/* 003371 0x80B88A3C E7A80014 */ swc1	$f8, 0X14($sp)
/* 003372 0x80B88A40 3C014000 */ lui	$at, 0x4000
/* 003373 0x80B88A44 44815000 */ mtc1	$at, $f10
/* 003374 0x80B88A48 240B0002 */ li	$t3, 0X2
/* 003375 0x80B88A4C AFAB0010 */ sw	$t3, 0X10($sp)
/* 003376 0x80B88A50 8FA40054 */ lw	$a0, 0X54($sp)
/* 003377 0x80B88A54 02002825 */ move	$a1, $s0
/* 003378 0x80B88A58 26060580 */ addiu	$a2, $s0, 0X580
/* 003379 0x80B88A5C 3C074040 */ lui	$a3, 0x4040
/* 003380 0x80B88A60 AFA00018 */ sw	$zero, 0X18($sp)
/* 003381 0x80B88A64 AFA0001C */ sw	$zero, 0X1C($sp)
/* 003382 0x80B88A68 AFA00020 */ sw	$zero, 0X20($sp)
/* 003383 0x80B88A6C 0C02EF6B */ jal	func_800BBDAC
/* 003384 0x80B88A70 E7AA0014 */ swc1	$f10, 0X14($sp)
/* 003385 0x80B88A74 3C014120 */ lui	$at, 0x4120
/* 003386 0x80B88A78 44818000 */ mtc1	$at, $f16
/* 003387 0x80B88A7C 240C0001 */ li	$t4, 0X1
/* 003388 0x80B88A80 A60C02D2 */ sh	$t4, 0X2D2($s0)
/* 003389 0x80B88A84 02002025 */ move	$a0, $s0
/* 003390 0x80B88A88 24053998 */ li	$a1, 0X3998
/* 003391 0x80B88A8C 0C02E3B2 */ jal	func_800B8EC8
/* 003392 0x80B88A90 E6100070 */ swc1	$f16, 0X70($s0)
/* 003393 0x80B88A94 1000000E */ b	.L80B88AD0
/* 003394 0x80B88A98 A20002D8 */ sb	$zero, 0X2D8($s0)
.L80B88A9C:
/* 003395 0x80B88A9C 0C04DE2E */ jal	func_801378B8
/* 003396 0x80B88AA0 3C0541A8 */ lui	$a1, 0x41A8
/* 003397 0x80B88AA4 10400004 */ beqz	$v0, .L80B88AB8
/* 003398 0x80B88AA8 8FA40038 */ lw	$a0, 0X38($sp)
/* 003399 0x80B88AAC 44809000 */ mtc1	$zero, $f18
/* 003400 0x80B88AB0 10000006 */ b	.L80B88ACC
/* 003401 0x80B88AB4 E6120070 */ swc1	$f18, 0X70($s0)
.L80B88AB8:
/* 003402 0x80B88AB8 0C04DE2E */ jal	func_801378B8
/* 003403 0x80B88ABC 3C0541C0 */ lui	$a1, 0x41C0
/* 003404 0x80B88AC0 10400002 */ beqz	$v0, .L80B88ACC
/* 003405 0x80B88AC4 240DFFFF */ li	$t5, -0X1
/* 003406 0x80B88AC8 A60D02D2 */ sh	$t5, 0X2D2($s0)
.L80B88ACC:
/* 003407 0x80B88ACC A20002D8 */ sb	$zero, 0X2D8($s0)
.L80B88AD0:
/* 003408 0x80B88AD0 C7A40048 */ lwc1	$f4, 0X48($sp)
/* 003409 0x80B88AD4 C60602DC */ lwc1	$f6, 0X2DC($s0)
/* 003410 0x80B88AD8 4604303E */ c.le.s	$f6, $f4
/* 003411 0x80B88ADC 00000000 */ nop
/* 003412 0x80B88AE0 45020079 */ bc1fl .L80B88CC8
/* 003413 0x80B88AE4 8FBF0034 */ lw	$ra, 0X34($sp)
/* 003414 0x80B88AE8 860E02D0 */ lh	$t6, 0X2D0($s0)
/* 003415 0x80B88AEC 02002025 */ move	$a0, $s0
/* 003416 0x80B88AF0 29C10002 */ slti	$at, $t6, 0X2
/* 003417 0x80B88AF4 50200074 */ beqzl	$at, .L80B88CC8
/* 003418 0x80B88AF8 8FBF0034 */ lw	$ra, 0X34($sp)
/* 003419 0x80B88AFC 0C02DCF8 */ jal	Actor_IsActorFacingLink
/* 003420 0x80B88B00 24051554 */ li	$a1, 0X1554
/* 003421 0x80B88B04 54400010 */ bnezl	$v0, .L80B88B48
/* 003422 0x80B88B08 860802D0 */ lh	$t0, 0X2D0($s0)
/* 003423 0x80B88B0C 0C2E1CA9 */ jal	func_80B872A4
/* 003424 0x80B88B10 02002025 */ move	$a0, $s0
/* 003425 0x80B88B14 0C021BF7 */ jal	randZeroOne
/* 003426 0x80B88B18 00000000 */ nop
/* 003427 0x80B88B1C 3C0140A0 */ lui	$at, 0x40A0
/* 003428 0x80B88B20 44811000 */ mtc1	$at, $f2
/* 003429 0x80B88B24 2419002E */ li	$t9, 0X2E
/* 003430 0x80B88B28 A61902B4 */ sh	$t9, 0X2B4($s0)
/* 003431 0x80B88B2C 46020202 */ mul.s	$f8, $f0, $f2
/* 003432 0x80B88B30 46024280 */ add.s	$f10, $f8, $f2
/* 003433 0x80B88B34 4600540D */ trunc.w.s	$f16, $f10
/* 003434 0x80B88B38 44188000 */ mfc1	$t8, $f16
/* 003435 0x80B88B3C 10000061 */ b	.L80B88CC4
/* 003436 0x80B88B40 A61802B2 */ sh	$t8, 0X2B2($s0)
/* 003437 0x80B88B44 860802D0 */ lh	$t0, 0X2D0($s0)
.L80B88B48:
/* 003438 0x80B88B48 11000005 */ beqz	$t0, .L80B88B60
/* 003439 0x80B88B4C 00000000 */ nop
/* 003440 0x80B88B50 0C2E1F8A */ jal	func_80B87E28
/* 003441 0x80B88B54 02002025 */ move	$a0, $s0
/* 003442 0x80B88B58 1000005B */ b	.L80B88CC8
/* 003443 0x80B88B5C 8FBF0034 */ lw	$ra, 0X34($sp)
.L80B88B60:
/* 003444 0x80B88B60 0C021BF7 */ jal	randZeroOne
/* 003445 0x80B88B64 00000000 */ nop
/* 003446 0x80B88B68 3C0180B9 */ lui	$at, %hi(D_80B8AD40)
/* 003447 0x80B88B6C C432AD40 */ lwc1	$f18, %lo(D_80B8AD40)($at)
/* 003448 0x80B88B70 3C0142F0 */ lui	$at, 0x42F0
/* 003449 0x80B88B74 4600903C */ c.lt.s	$f18, $f0
/* 003450 0x80B88B78 00000000 */ nop
/* 003451 0x80B88B7C 45010008 */ bc1t .L80B88BA0
/* 003452 0x80B88B80 00000000 */ nop
/* 003453 0x80B88B84 C6040098 */ lwc1	$f4, 0X98($s0)
/* 003454 0x80B88B88 44813000 */ mtc1	$at, $f6
/* 003455 0x80B88B8C 00000000 */ nop
/* 003456 0x80B88B90 4604303E */ c.le.s	$f6, $f4
/* 003457 0x80B88B94 00000000 */ nop
/* 003458 0x80B88B98 4502000F */ bc1fl .L80B88BD8
/* 003459 0x80B88B9C 860B0092 */ lh	$t3, 0X92($s0)
.L80B88BA0:
/* 003460 0x80B88BA0 0C2E1CA9 */ jal	func_80B872A4
/* 003461 0x80B88BA4 02002025 */ move	$a0, $s0
/* 003462 0x80B88BA8 0C021BF7 */ jal	randZeroOne
/* 003463 0x80B88BAC 00000000 */ nop
/* 003464 0x80B88BB0 3C0140A0 */ lui	$at, 0x40A0
/* 003465 0x80B88BB4 44811000 */ mtc1	$at, $f2
/* 003466 0x80B88BB8 00000000 */ nop
/* 003467 0x80B88BBC 46020202 */ mul.s	$f8, $f0, $f2
/* 003468 0x80B88BC0 46024280 */ add.s	$f10, $f8, $f2
/* 003469 0x80B88BC4 4600540D */ trunc.w.s	$f16, $f10
/* 003470 0x80B88BC8 440A8000 */ mfc1	$t2, $f16
/* 003471 0x80B88BCC 1000003D */ b	.L80B88CC4
/* 003472 0x80B88BD0 A60A02B2 */ sh	$t2, 0X2B2($s0)
/* 003473 0x80B88BD4 860B0092 */ lh	$t3, 0X92($s0)
.L80B88BD8:
/* 003474 0x80B88BD8 0C021BF7 */ jal	randZeroOne
/* 003475 0x80B88BDC A60B0032 */ sh	$t3, 0X32($s0)
/* 003476 0x80B88BE0 3C0C801F */ lui	$t4, %hi(gStaticContext)
/* 003477 0x80B88BE4 8D8C3F60 */ lw	$t4, %lo(gStaticContext)($t4)
/* 003478 0x80B88BE8 3C0180B9 */ lui	$at, %hi(D_80B8AD44)
/* 003479 0x80B88BEC C426AD44 */ lwc1	$f6, %lo(D_80B8AD44)($at)
/* 003480 0x80B88BF0 858D12EC */ lh	$t5, 0X12EC($t4)
/* 003481 0x80B88BF4 3C0180B9 */ lui	$at, %hi(D_80B8AD48)
/* 003482 0x80B88BF8 C42AAD48 */ lwc1	$f10, %lo(D_80B8AD48)($at)
/* 003483 0x80B88BFC 448D9000 */ mtc1	$t5, $f18
/* 003484 0x80B88C00 8FAE004C */ lw	$t6, 0X4C($sp)
/* 003485 0x80B88C04 46809120 */ cvt.s.w	$f4, $f18
/* 003486 0x80B88C08 46062202 */ mul.s	$f8, $f4, $f6
/* 003487 0x80B88C0C 460A4400 */ add.s	$f16, $f8, $f10
/* 003488 0x80B88C10 4600803C */ c.lt.s	$f16, $f0
/* 003489 0x80B88C14 00000000 */ nop
/* 003490 0x80B88C18 45020006 */ bc1fl .L80B88C34
/* 003491 0x80B88C1C 860400BE */ lh	$a0, 0XBE($s0)
/* 003492 0x80B88C20 0C2E1E40 */ jal	func_80B87900
/* 003493 0x80B88C24 02002025 */ move	$a0, $s0
/* 003494 0x80B88C28 10000027 */ b	.L80B88CC8
/* 003495 0x80B88C2C 8FBF0034 */ lw	$ra, 0X34($sp)
/* 003496 0x80B88C30 860400BE */ lh	$a0, 0XBE($s0)
.L80B88C34:
/* 003497 0x80B88C34 85CF00BE */ lh	$t7, 0XBE($t6)
/* 003498 0x80B88C38 01E41023 */ subu	$v0, $t7, $a0
/* 003499 0x80B88C3C 04410005 */ bgez	$v0, .L80B88C54
/* 003500 0x80B88C40 00021C00 */ sll	$v1, $v0, 16
/* 003501 0x80B88C44 00021823 */ negu	$v1, $v0
/* 003502 0x80B88C48 00031C00 */ sll	$v1, $v1, 16
/* 003503 0x80B88C4C 10000002 */ b	.L80B88C58
/* 003504 0x80B88C50 00031C03 */ sra	$v1, $v1, 16
.L80B88C54:
/* 003505 0x80B88C54 00031C03 */ sra	$v1, $v1, 16
.L80B88C58:
/* 003506 0x80B88C58 28612711 */ slti	$at, $v1, 0X2711
/* 003507 0x80B88C5C 10200017 */ beqz	$at, .L80B88CBC
/* 003508 0x80B88C60 00000000 */ nop
/* 003509 0x80B88C64 86030092 */ lh	$v1, 0X92($s0)
/* 003510 0x80B88C68 8FA50054 */ lw	$a1, 0X54($sp)
/* 003511 0x80B88C6C 24060001 */ li	$a2, 0X1
/* 003512 0x80B88C70 00641023 */ subu	$v0, $v1, $a0
/* 003513 0x80B88C74 04410005 */ bgez	$v0, .L80B88C8C
/* 003514 0x80B88C78 00022400 */ sll	$a0, $v0, 16
/* 003515 0x80B88C7C 00022023 */ negu	$a0, $v0
/* 003516 0x80B88C80 00042400 */ sll	$a0, $a0, 16
/* 003517 0x80B88C84 10000002 */ b	.L80B88C90
/* 003518 0x80B88C88 00042403 */ sra	$a0, $a0, 16
.L80B88C8C:
/* 003519 0x80B88C8C 00042403 */ sra	$a0, $a0, 16
.L80B88C90:
/* 003520 0x80B88C90 28814001 */ slti	$at, $a0, 0X4001
/* 003521 0x80B88C94 14200005 */ bnez	$at, .L80B88CAC
/* 003522 0x80B88C98 02002025 */ move	$a0, $s0
/* 003523 0x80B88C9C 0C2E2336 */ jal	func_80B88CD8
/* 003524 0x80B88CA0 A6030032 */ sh	$v1, 0X32($s0)
/* 003525 0x80B88CA4 10000008 */ b	.L80B88CC8
/* 003526 0x80B88CA8 8FBF0034 */ lw	$ra, 0X34($sp)
.L80B88CAC:
/* 003527 0x80B88CAC 0C2E1680 */ jal	func_80B85A00
/* 003528 0x80B88CB0 02002025 */ move	$a0, $s0
/* 003529 0x80B88CB4 10000004 */ b	.L80B88CC8
/* 003530 0x80B88CB8 8FBF0034 */ lw	$ra, 0X34($sp)
.L80B88CBC:
/* 003531 0x80B88CBC 0C2E2336 */ jal	func_80B88CD8
/* 003532 0x80B88CC0 02002025 */ move	$a0, $s0
.L80B88CC4:
/* 003533 0x80B88CC4 8FBF0034 */ lw	$ra, 0X34($sp)
.L80B88CC8:
/* 003534 0x80B88CC8 8FB00030 */ lw	$s0, 0X30($sp)
/* 003535 0x80B88CCC 27BD0050 */ addiu	$sp, $sp, 0X50
/* 003536 0x80B88CD0 03E00008 */ jr	$ra
/* 003537 0x80B88CD4 00000000 */ nop


.section .late_rodata

glabel D_80B8AD40
/* 005612 0x80B8AD40 */ .word	0x3F333333
glabel D_80B8AD44
/* 005613 0x80B8AD44 */ .word	0x3DCCCCCD
glabel D_80B8AD48
/* 005614 0x80B8AD48 */ .word	0x3ECCCCCC
