glabel func_80A1C838
/* 001306 0x80A1C838 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001307 0x80A1C83C AFB10020 */ sw	$s1, 0X20($sp)
/* 001308 0x80A1C840 AFB0001C */ sw	$s0, 0X1C($sp)
/* 001309 0x80A1C844 00808025 */ move	$s0, $a0
/* 001310 0x80A1C848 00A08825 */ move	$s1, $a1
/* 001311 0x80A1C84C AFBF0024 */ sw	$ra, 0X24($sp)
/* 001312 0x80A1C850 02002025 */ move	$a0, $s0
/* 001313 0x80A1C854 0C02E27E */ jal	Actor_HasParent
/* 001314 0x80A1C858 02202825 */ move	$a1, $s1
/* 001315 0x80A1C85C 50400017 */ beqzl	$v0, .L80A1C8BC
/* 001316 0x80A1C860 96080090 */ lhu	$t0, 0X90($s0)
/* 001317 0x80A1C864 0C2872FE */ jal	func_80A1CBF8
/* 001318 0x80A1C868 02002025 */ move	$a0, $s0
/* 001319 0x80A1C86C 8E180004 */ lw	$t8, 0X4($s0)
/* 001320 0x80A1C870 8604001C */ lh	$a0, 0X1C($s0)
/* 001321 0x80A1C874 240EFFFF */ li	$t6, -0X1
/* 001322 0x80A1C878 240F00B4 */ li	$t7, 0XB4
/* 001323 0x80A1C87C 37190010 */ ori	$t9, $t8, 0X10
/* 001324 0x80A1C880 A20E0003 */ sb	$t6, 0X3($s0)
/* 001325 0x80A1C884 A20F00B6 */ sb	$t7, 0XB6($s0)
/* 001326 0x80A1C888 AE190004 */ sw	$t9, 0X4($s0)
/* 001327 0x80A1C88C 0C02A05F */ jal	func_800A817C
/* 001328 0x80A1C890 3084003F */ andi	$a0, $a0, 0X3F
/* 001329 0x80A1C894 10400003 */ beqz	$v0, .L80A1C8A4
/* 001330 0x80A1C898 02002025 */ move	$a0, $s0
/* 001331 0x80A1C89C 0C286E45 */ jal	func_80A1B914
/* 001332 0x80A1C8A0 02202825 */ move	$a1, $s1
.L80A1C8A4:
/* 001333 0x80A1C8A4 02002025 */ move	$a0, $s0
/* 001334 0x80A1C8A8 0C02E396 */ jal	func_800B8E58
/* 001335 0x80A1C8AC 2405086F */ li	$a1, 0X86F
/* 001336 0x80A1C8B0 100000CD */ b	.L80A1CBE8
/* 001337 0x80A1C8B4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001338 0x80A1C8B8 96080090 */ lhu	$t0, 0X90($s0)
.L80A1C8BC:
/* 001339 0x80A1C8BC 3C014198 */ lui	$at, 0x4198
/* 001340 0x80A1C8C0 31090020 */ andi	$t1, $t0, 0X20
/* 001341 0x80A1C8C4 51200022 */ beqzl	$t1, .L80A1C950
/* 001342 0x80A1C8C8 8E020160 */ lw	$v0, 0X160($s0)
/* 001343 0x80A1C8CC 44812000 */ mtc1	$at, $f4
/* 001344 0x80A1C8D0 C606008C */ lwc1	$f6, 0X8C($s0)
/* 001345 0x80A1C8D4 4606203C */ c.lt.s	$f4, $f6
/* 001346 0x80A1C8D8 00000000 */ nop
/* 001347 0x80A1C8DC 4502001C */ bc1fl .L80A1C950
/* 001348 0x80A1C8E0 8E020160 */ lw	$v0, 0X160($s0)
/* 001349 0x80A1C8E4 920A01EA */ lbu	$t2, 0X1EA($s0)
/* 001350 0x80A1C8E8 02002025 */ move	$a0, $s0
/* 001351 0x80A1C8EC 314B0002 */ andi	$t3, $t2, 0X2
/* 001352 0x80A1C8F0 5560000D */ bnezl	$t3, .L80A1C928
/* 001353 0x80A1C8F4 02002025 */ move	$a0, $s0
/* 001354 0x80A1C8F8 0C286E45 */ jal	func_80A1B914
/* 001355 0x80A1C8FC 02202825 */ move	$a1, $s1
/* 001356 0x80A1C900 02002025 */ move	$a0, $s0
/* 001357 0x80A1C904 0C2870CA */ jal	func_80A1C328
/* 001358 0x80A1C908 02202825 */ move	$a1, $s1
/* 001359 0x80A1C90C 02002025 */ move	$a0, $s0
/* 001360 0x80A1C910 0C286E73 */ jal	func_80A1B9CC
/* 001361 0x80A1C914 02202825 */ move	$a1, $s1
/* 001362 0x80A1C918 920C01EA */ lbu	$t4, 0X1EA($s0)
/* 001363 0x80A1C91C 358D0002 */ ori	$t5, $t4, 0X2
/* 001364 0x80A1C920 A20D01EA */ sb	$t5, 0X1EA($s0)
/* 001365 0x80A1C924 02002025 */ move	$a0, $s0
.L80A1C928:
/* 001366 0x80A1C928 0C286F60 */ jal	func_80A1BD80
/* 001367 0x80A1C92C 02202825 */ move	$a1, $s1
/* 001368 0x80A1C930 02002025 */ move	$a0, $s0
/* 001369 0x80A1C934 0C286E65 */ jal	func_80A1B994
/* 001370 0x80A1C938 02202825 */ move	$a1, $s1
/* 001371 0x80A1C93C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001372 0x80A1C940 02002025 */ move	$a0, $s0
/* 001373 0x80A1C944 100000A8 */ b	.L80A1CBE8
/* 001374 0x80A1C948 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001375 0x80A1C94C 8E020160 */ lw	$v0, 0X160($s0)
.L80A1C950:
/* 001376 0x80A1C950 904E0016 */ lbu	$t6, 0X16($v0)
/* 001377 0x80A1C954 31CF0002 */ andi	$t7, $t6, 0X2
/* 001378 0x80A1C958 51E00023 */ beqzl	$t7, .L80A1C9E8
/* 001379 0x80A1C95C 904D0056 */ lbu	$t5, 0X56($v0)
/* 001380 0x80A1C960 8C580024 */ lw	$t8, 0X24($v0)
/* 001381 0x80A1C964 3C01058B */ lui	$at, 0x058B
/* 001382 0x80A1C968 3421FFBC */ ori	$at, $at, 0XFFBC
/* 001383 0x80A1C96C 8F190000 */ lw	$t9, 0X0($t8)
/* 001384 0x80A1C970 03214024 */ and	$t0, $t9, $at
/* 001385 0x80A1C974 5100001C */ beqzl	$t0, .L80A1C9E8
/* 001386 0x80A1C978 904D0056 */ lbu	$t5, 0X56($v0)
/* 001387 0x80A1C97C 920901EA */ lbu	$t1, 0X1EA($s0)
/* 001388 0x80A1C980 02002025 */ move	$a0, $s0
/* 001389 0x80A1C984 312A0002 */ andi	$t2, $t1, 0X2
/* 001390 0x80A1C988 5540000D */ bnezl	$t2, .L80A1C9C0
/* 001391 0x80A1C98C 02002025 */ move	$a0, $s0
/* 001392 0x80A1C990 0C286E45 */ jal	func_80A1B914
/* 001393 0x80A1C994 02202825 */ move	$a1, $s1
/* 001394 0x80A1C998 02002025 */ move	$a0, $s0
/* 001395 0x80A1C99C 0C28703F */ jal	func_80A1C0FC
/* 001396 0x80A1C9A0 02202825 */ move	$a1, $s1
/* 001397 0x80A1C9A4 02002025 */ move	$a0, $s0
/* 001398 0x80A1C9A8 0C286E73 */ jal	func_80A1B9CC
/* 001399 0x80A1C9AC 02202825 */ move	$a1, $s1
/* 001400 0x80A1C9B0 920B01EA */ lbu	$t3, 0X1EA($s0)
/* 001401 0x80A1C9B4 356C0002 */ ori	$t4, $t3, 0X2
/* 001402 0x80A1C9B8 A20C01EA */ sb	$t4, 0X1EA($s0)
/* 001403 0x80A1C9BC 02002025 */ move	$a0, $s0
.L80A1C9C0:
/* 001404 0x80A1C9C0 0C286E91 */ jal	func_80A1BA44
/* 001405 0x80A1C9C4 02202825 */ move	$a1, $s1
/* 001406 0x80A1C9C8 02002025 */ move	$a0, $s0
/* 001407 0x80A1C9CC 0C286E65 */ jal	func_80A1B994
/* 001408 0x80A1C9D0 02202825 */ move	$a1, $s1
/* 001409 0x80A1C9D4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001410 0x80A1C9D8 02002025 */ move	$a0, $s0
/* 001411 0x80A1C9DC 10000082 */ b	.L80A1CBE8
/* 001412 0x80A1C9E0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001413 0x80A1C9E4 904D0056 */ lbu	$t5, 0X56($v0)
.L80A1C9E8:
/* 001414 0x80A1C9E8 31AE0002 */ andi	$t6, $t5, 0X2
/* 001415 0x80A1C9EC 51C00013 */ beqzl	$t6, .L80A1CA3C
/* 001416 0x80A1C9F0 920901EA */ lbu	$t1, 0X1EA($s0)
/* 001417 0x80A1C9F4 920301EA */ lbu	$v1, 0X1EA($s0)
/* 001418 0x80A1C9F8 306F0002 */ andi	$t7, $v1, 0X2
/* 001419 0x80A1C9FC 15E0000E */ bnez	$t7, .L80A1CA38
/* 001420 0x80A1CA00 34780002 */ ori	$t8, $v1, 0X2
/* 001421 0x80A1CA04 A21801EA */ sb	$t8, 0X1EA($s0)
/* 001422 0x80A1CA08 90590056 */ lbu	$t9, 0X56($v0)
/* 001423 0x80A1CA0C 02002025 */ move	$a0, $s0
/* 001424 0x80A1CA10 02202825 */ move	$a1, $s1
/* 001425 0x80A1CA14 3328FFFE */ andi	$t0, $t9, 0XFFFE
/* 001426 0x80A1CA18 0C28703F */ jal	func_80A1C0FC
/* 001427 0x80A1CA1C A0480056 */ sb	$t0, 0X56($v0)
/* 001428 0x80A1CA20 02002025 */ move	$a0, $s0
/* 001429 0x80A1CA24 0C286E45 */ jal	func_80A1B914
/* 001430 0x80A1CA28 02202825 */ move	$a1, $s1
/* 001431 0x80A1CA2C 02002025 */ move	$a0, $s0
/* 001432 0x80A1CA30 0C286E73 */ jal	func_80A1B9CC
/* 001433 0x80A1CA34 02202825 */ move	$a1, $s1
.L80A1CA38:
/* 001434 0x80A1CA38 920901EA */ lbu	$t1, 0X1EA($s0)
.L80A1CA3C:
/* 001435 0x80A1CA3C 312A0001 */ andi	$t2, $t1, 0X1
/* 001436 0x80A1CA40 51400027 */ beqzl	$t2, .L80A1CAE0
/* 001437 0x80A1CA44 92020156 */ lbu	$v0, 0X156($s0)
/* 001438 0x80A1CA48 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 001439 0x80A1CA4C 02002025 */ move	$a0, $s0
/* 001440 0x80A1CA50 02002025 */ move	$a0, $s0
/* 001441 0x80A1CA54 0C28717A */ jal	func_80A1C5E8
/* 001442 0x80A1CA58 02202825 */ move	$a1, $s1
/* 001443 0x80A1CA5C 960B0090 */ lhu	$t3, 0X90($s0)
/* 001444 0x80A1CA60 316C0001 */ andi	$t4, $t3, 0X1
/* 001445 0x80A1CA64 5180001E */ beqzl	$t4, .L80A1CAE0
/* 001446 0x80A1CA68 92020156 */ lbu	$v0, 0X156($s0)
/* 001447 0x80A1CA6C 920D00B6 */ lbu	$t5, 0XB6($s0)
/* 001448 0x80A1CA70 240100FF */ li	$at, 0XFF
/* 001449 0x80A1CA74 26040024 */ addiu	$a0, $s0, 0X24
/* 001450 0x80A1CA78 15A1000E */ bne	$t5, $at, .L80A1CAB4
/* 001451 0x80A1CA7C 00000000 */ nop
/* 001452 0x80A1CA80 26240830 */ addiu	$a0, $s1, 0X830
/* 001453 0x80A1CA84 0C031892 */ jal	BgCheck_GetActorOfMesh
/* 001454 0x80A1CA88 92050085 */ lbu	$a1, 0X85($s0)
/* 001455 0x80A1CA8C 54400014 */ bnezl	$v0, .L80A1CAE0
/* 001456 0x80A1CA90 92020156 */ lbu	$v0, 0X156($s0)
/* 001457 0x80A1CA94 8E0E0004 */ lw	$t6, 0X4($s0)
/* 001458 0x80A1CA98 921801EA */ lbu	$t8, 0X1EA($s0)
/* 001459 0x80A1CA9C 2401FFEF */ li	$at, -0X11
/* 001460 0x80A1CAA0 01C17824 */ and	$t7, $t6, $at
/* 001461 0x80A1CAA4 3319FFFE */ andi	$t9, $t8, 0XFFFE
/* 001462 0x80A1CAA8 AE0F0004 */ sw	$t7, 0X4($s0)
/* 001463 0x80A1CAAC 1000000B */ b	.L80A1CADC
/* 001464 0x80A1CAB0 A21901EA */ sb	$t9, 0X1EA($s0)
.L80A1CAB4:
/* 001465 0x80A1CAB4 0C05E9BE */ jal	Math3D_DistanceSquared
/* 001466 0x80A1CAB8 26050108 */ addiu	$a1, $s0, 0X108
/* 001467 0x80A1CABC 3C0180A2 */ lui	$at, %hi(D_80A1D48C)
/* 001468 0x80A1CAC0 C428D48C */ lwc1	$f8, %lo(D_80A1D48C)($at)
/* 001469 0x80A1CAC4 240800FF */ li	$t0, 0XFF
/* 001470 0x80A1CAC8 4608003C */ c.lt.s	$f0, $f8
/* 001471 0x80A1CACC 00000000 */ nop
/* 001472 0x80A1CAD0 45020003 */ bc1fl .L80A1CAE0
/* 001473 0x80A1CAD4 92020156 */ lbu	$v0, 0X156($s0)
/* 001474 0x80A1CAD8 A20800B6 */ sb	$t0, 0XB6($s0)
.L80A1CADC:
/* 001475 0x80A1CADC 92020156 */ lbu	$v0, 0X156($s0)
.L80A1CAE0:
/* 001476 0x80A1CAE0 3C0141E0 */ lui	$at, 0x41E0
/* 001477 0x80A1CAE4 02202025 */ move	$a0, $s1
/* 001478 0x80A1CAE8 30490008 */ andi	$t1, $v0, 0X8
/* 001479 0x80A1CAEC 15200009 */ bnez	$t1, .L80A1CB14
/* 001480 0x80A1CAF0 26060144 */ addiu	$a2, $s0, 0X144
/* 001481 0x80A1CAF4 44815000 */ mtc1	$at, $f10
/* 001482 0x80A1CAF8 C6100098 */ lwc1	$f16, 0X98($s0)
/* 001483 0x80A1CAFC 344A0008 */ ori	$t2, $v0, 0X8
/* 001484 0x80A1CB00 4610503C */ c.lt.s	$f10, $f16
/* 001485 0x80A1CB04 00000000 */ nop
/* 001486 0x80A1CB08 45020003 */ bc1fl .L80A1CB18
/* 001487 0x80A1CB0C 3C014416 */ lui	$at, 0x4416
/* 001488 0x80A1CB10 A20A0156 */ sb	$t2, 0X156($s0)
.L80A1CB14:
/* 001489 0x80A1CB14 3C014416 */ lui	$at, 0x4416
.L80A1CB18:
/* 001490 0x80A1CB18 44812000 */ mtc1	$at, $f4
/* 001491 0x80A1CB1C C6120098 */ lwc1	$f18, 0X98($s0)
/* 001492 0x80A1CB20 920B0155 */ lbu	$t3, 0X155($s0)
/* 001493 0x80A1CB24 3C010001 */ lui	$at, 0x0001
/* 001494 0x80A1CB28 4604903C */ c.lt.s	$f18, $f4
/* 001495 0x80A1CB2C 34218884 */ ori	$at, $at, 0X8884
/* 001496 0x80A1CB30 316CFFFD */ andi	$t4, $t3, 0XFFFD
/* 001497 0x80A1CB34 A20C0155 */ sb	$t4, 0X155($s0)
/* 001498 0x80A1CB38 4500002A */ bc1f .L80A1CBE4
/* 001499 0x80A1CB3C 02212821 */ addu	$a1, $s1, $at
/* 001500 0x80A1CB40 AFA50030 */ sw	$a1, 0X30($sp)
/* 001501 0x80A1CB44 0C0389D0 */ jal	Collision_AddAC
/* 001502 0x80A1CB48 AFA6002C */ sw	$a2, 0X2C($sp)
/* 001503 0x80A1CB4C 3C014334 */ lui	$at, 0x4334
/* 001504 0x80A1CB50 44814000 */ mtc1	$at, $f8
/* 001505 0x80A1CB54 C6060098 */ lwc1	$f6, 0X98($s0)
/* 001506 0x80A1CB58 8FA50030 */ lw	$a1, 0X30($sp)
/* 001507 0x80A1CB5C 8FA6002C */ lw	$a2, 0X2C($sp)
/* 001508 0x80A1CB60 4608303C */ c.lt.s	$f6, $f8
/* 001509 0x80A1CB64 00000000 */ nop
/* 001510 0x80A1CB68 4502001F */ bc1fl .L80A1CBE8
/* 001511 0x80A1CB6C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001512 0x80A1CB70 0C038A4A */ jal	Collision_AddOT
/* 001513 0x80A1CB74 02202025 */ move	$a0, $s1
/* 001514 0x80A1CB78 3C0142C8 */ lui	$at, 0x42C8
/* 001515 0x80A1CB7C 44818000 */ mtc1	$at, $f16
/* 001516 0x80A1CB80 C60A0098 */ lwc1	$f10, 0X98($s0)
/* 001517 0x80A1CB84 4610503C */ c.lt.s	$f10, $f16
/* 001518 0x80A1CB88 00000000 */ nop
/* 001519 0x80A1CB8C 45020016 */ bc1fl .L80A1CBE8
/* 001520 0x80A1CB90 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001521 0x80A1CB94 8E2E1CCC */ lw	$t6, 0X1CCC($s1)
/* 001522 0x80A1CB98 860D0092 */ lh	$t5, 0X92($s0)
/* 001523 0x80A1CB9C 02002025 */ move	$a0, $s0
/* 001524 0x80A1CBA0 85CF0032 */ lh	$t7, 0X32($t6)
/* 001525 0x80A1CBA4 02202825 */ move	$a1, $s1
/* 001526 0x80A1CBA8 00003025 */ move	$a2, $zero
/* 001527 0x80A1CBAC 01AF1023 */ subu	$v0, $t5, $t7
/* 001528 0x80A1CBB0 00021400 */ sll	$v0, $v0, 16
/* 001529 0x80A1CBB4 00021403 */ sra	$v0, $v0, 16
/* 001530 0x80A1CBB8 04410003 */ bgez	$v0, .L80A1CBC8
/* 001531 0x80A1CBBC 00401825 */ move	$v1, $v0
/* 001532 0x80A1CBC0 10000001 */ b	.L80A1CBC8
/* 001533 0x80A1CBC4 00021823 */ negu	$v1, $v0
.L80A1CBC8:
/* 001534 0x80A1CBC8 28615556 */ slti	$at, $v1, 0X5556
/* 001535 0x80A1CBCC 14200005 */ bnez	$at, .L80A1CBE4
/* 001536 0x80A1CBD0 3C0141F0 */ lui	$at, 0x41F0
/* 001537 0x80A1CBD4 44819000 */ mtc1	$at, $f18
/* 001538 0x80A1CBD8 3C074210 */ lui	$a3, 0x4210
/* 001539 0x80A1CBDC 0C02E287 */ jal	func_800B8A1C
/* 001540 0x80A1CBE0 E7B20010 */ swc1	$f18, 0X10($sp)
.L80A1CBE4:
/* 001541 0x80A1CBE4 8FBF0024 */ lw	$ra, 0X24($sp)
.L80A1CBE8:
/* 001542 0x80A1CBE8 8FB0001C */ lw	$s0, 0X1C($sp)
/* 001543 0x80A1CBEC 8FB10020 */ lw	$s1, 0X20($sp)
/* 001544 0x80A1CBF0 03E00008 */ jr	$ra
/* 001545 0x80A1CBF4 27BD0040 */ addiu	$sp, $sp, 0X40


.section .late_rodata

glabel D_80A1D48C
/* 002095 0x80A1D48C */ .word	0x3C23D70A
