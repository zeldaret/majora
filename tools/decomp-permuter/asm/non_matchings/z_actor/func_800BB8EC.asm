glabel func_800BB8EC
/* 022411 0x800BB8EC 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 022412 0x800BB8F0 AFB40024 */ sw	$s4, 0X24($sp)
/* 022413 0x800BB8F4 AFB30020 */ sw	$s3, 0X20($sp)
/* 022414 0x800BB8F8 AFB2001C */ sw	$s2, 0X1C($sp)
/* 022415 0x800BB8FC 3C02801F */ lui	$v0, %hi(D_801ED8CC)
/* 022416 0x800BB900 3C03801F */ lui	$v1, %hi(D_801ED8D0)
/* 022417 0x800BB904 3C08801F */ lui	$t0, %hi(D_801ED8D8)
/* 022418 0x800BB908 3C09801F */ lui	$t1, %hi(D_801ED8BC)
/* 022419 0x800BB90C 3C0A801F */ lui	$t2, %hi(D_801ED8C4)
/* 022420 0x800BB910 3C0B801F */ lui	$t3, %hi(D_801ED8C0)
/* 022421 0x800BB914 256BD8C0 */ addiu	$t3, $t3, %lo(D_801ED8C0)
/* 022422 0x800BB918 254AD8C4 */ addiu	$t2, $t2, %lo(D_801ED8C4)
/* 022423 0x800BB91C 2529D8BC */ addiu	$t1, $t1, %lo(D_801ED8BC)
/* 022424 0x800BB920 2508D8D8 */ addiu	$t0, $t0, %lo(D_801ED8D8)
/* 022425 0x800BB924 2463D8D0 */ addiu	$v1, $v1, %lo(D_801ED8D0)
/* 022426 0x800BB928 2442D8CC */ addiu	$v0, $v0, %lo(D_801ED8CC)
/* 022427 0x800BB92C 00A09025 */ move	$s2, $a1
/* 022428 0x800BB930 8FB30040 */ lw	$s3, 0X40($sp)
/* 022429 0x800BB934 0080A025 */ move	$s4, $a0
/* 022430 0x800BB938 AFBF002C */ sw	$ra, 0X2C($sp)
/* 022431 0x800BB93C AFB50028 */ sw	$s5, 0X28($sp)
/* 022432 0x800BB940 AFB10018 */ sw	$s1, 0X18($sp)
/* 022433 0x800BB944 AFB00014 */ sw	$s0, 0X14($sp)
/* 022434 0x800BB948 AFA60038 */ sw	$a2, 0X38($sp)
/* 022435 0x800BB94C AFA7003C */ sw	$a3, 0X3C($sp)
/* 022436 0x800BB950 AD400000 */ sw	$zero, 0X0($t2)
/* 022437 0x800BB954 AD600000 */ sw	$zero, 0X0($t3)
/* 022438 0x800BB958 AD200000 */ sw	$zero, 0X0($t1)
/* 022439 0x800BB95C 3C01801F */ lui	$at, %hi(D_801ED8B8)
/* 022440 0x800BB960 AC20D8B8 */ sw	$zero, %lo(D_801ED8B8)($at)
/* 022441 0x800BB964 3C01801E */ lui	$at, %hi(D_801DCAAC)
/* 022442 0x800BB968 C424CAAC */ lwc1	$f4, %lo(D_801DCAAC)($at)
/* 022443 0x800BB96C 3C01801F */ lui	$at, %hi(D_801ED8C8)
/* 022444 0x800BB970 3C197FFF */ lui	$t9, 0x7FFF
/* 022445 0x800BB974 E4440000 */ swc1	$f4, 0X0($v0)
/* 022446 0x800BB978 C4460000 */ lwc1	$f6, 0X0($v0)
/* 022447 0x800BB97C 3739FFFF */ ori	$t9, $t9, 0XFFFF
/* 022448 0x800BB980 3C11801B */ lui	$s1, %hi(D_801AED8C)
/* 022449 0x800BB984 E4660000 */ swc1	$f6, 0X0($v1)
/* 022450 0x800BB988 C4680000 */ lwc1	$f8, 0X0($v1)
/* 022451 0x800BB98C 2631ED8C */ addiu	$s1, $s1, %lo(D_801AED8C)
/* 022452 0x800BB990 00008025 */ move	$s0, $zero
/* 022453 0x800BB994 E428D8C8 */ swc1	$f8, %lo(D_801ED8C8)($at)
/* 022454 0x800BB998 AD190000 */ sw	$t9, 0X0($t0)
/* 022455 0x800BB99C 3C01801F */ lui	$at, %hi(D_801ED8D4)
/* 022456 0x800BB9A0 AC39D8D4 */ sw	$t9, %lo(D_801ED8D4)($at)
/* 022457 0x800BB9A4 AE4001B0 */ sw	$zero, 0X1B0($s2)
/* 022458 0x800BB9A8 866D00BE */ lh	$t5, 0XBE($s3)
/* 022459 0x800BB9AC 3C01801F */ lui	$at, %hi(D_801ED8DC)
/* 022460 0x800BB9B0 24150003 */ li	$s5, 0X3
/* 022461 0x800BB9B4 A42DD8DC */ sh	$t5, %lo(D_801ED8DC)($at)
.L800BB9B8:
/* 022462 0x800BB9B8 02802025 */ move	$a0, $s4
/* 022463 0x800BB9BC 02402825 */ move	$a1, $s2
/* 022464 0x800BB9C0 02603025 */ move	$a2, $s3
/* 022465 0x800BB9C4 0C02ED81 */ jal	func_800BB604
/* 022466 0x800BB9C8 92270000 */ lbu	$a3, 0X0($s1)
/* 022467 0x800BB9CC 26100001 */ addiu	$s0, $s0, 0X1
/* 022468 0x800BB9D0 1615FFF9 */ bne	$s0, $s5, .L800BB9B8
/* 022469 0x800BB9D4 26310001 */ addiu	$s1, $s1, 0X1
/* 022470 0x800BB9D8 3C02801F */ lui	$v0, %hi(D_801ED8B8)
/* 022471 0x800BB9DC 8C42D8B8 */ lw	$v0, %lo(D_801ED8B8)($v0)
/* 022472 0x800BB9E0 2A01000C */ slti	$at, $s0, 0XC
/* 022473 0x800BB9E4 1440000D */ bnez	$v0, .L800BBA1C
/* 022474 0x800BB9E8 00000000 */ nop
/* 022475 0x800BB9EC 1020000B */ beqz	$at, .L800BBA1C
.L800BB9F0:
/* 022476 0x800BB9F0 02802025 */ move	$a0, $s4
/* 022477 0x800BB9F4 02402825 */ move	$a1, $s2
/* 022478 0x800BB9F8 02603025 */ move	$a2, $s3
/* 022479 0x800BB9FC 0C02ED81 */ jal	func_800BB604
/* 022480 0x800BBA00 92270000 */ lbu	$a3, 0X0($s1)
/* 022481 0x800BBA04 26100001 */ addiu	$s0, $s0, 0X1
/* 022482 0x800BBA08 2A01000C */ slti	$at, $s0, 0XC
/* 022483 0x800BBA0C 1420FFF8 */ bnez	$at, .L800BB9F0
/* 022484 0x800BBA10 26310001 */ addiu	$s1, $s1, 0X1
/* 022485 0x800BBA14 3C02801F */ lui	$v0, %hi(D_801ED8B8)
/* 022486 0x800BBA18 8C42D8B8 */ lw	$v0, %lo(D_801ED8B8)($v0)
.L800BBA1C:
/* 022487 0x800BBA1C 14400006 */ bnez	$v0, .L800BBA38
/* 022488 0x800BBA20 8FB80038 */ lw	$t8, 0X38($sp)
/* 022489 0x800BBA24 3C0E801F */ lui	$t6, %hi(D_801ED8BC)
/* 022490 0x800BBA28 8DCED8BC */ lw	$t6, %lo(D_801ED8BC)($t6)
/* 022491 0x800BBA2C 8FAF0038 */ lw	$t7, 0X38($sp)
/* 022492 0x800BBA30 10000002 */ b	.L800BBA3C
/* 022493 0x800BBA34 ADEE0000 */ sw	$t6, 0X0($t7)
.L800BBA38:
/* 022494 0x800BBA38 AF020000 */ sw	$v0, 0X0($t8)
.L800BBA3C:
/* 022495 0x800BBA3C 3C02801F */ lui	$v0, %hi(D_801ED8C0)
/* 022496 0x800BBA40 8C42D8C0 */ lw	$v0, %lo(D_801ED8C0)($v0)
/* 022497 0x800BBA44 3C19801F */ lui	$t9, %hi(D_801ED8C4)
/* 022498 0x800BBA48 8FAC003C */ lw	$t4, 0X3C($sp)
/* 022499 0x800BBA4C 14400004 */ bnez	$v0, .L800BBA60
/* 022500 0x800BBA50 8FAD003C */ lw	$t5, 0X3C($sp)
/* 022501 0x800BBA54 8F39D8C4 */ lw	$t9, %lo(D_801ED8C4)($t9)
/* 022502 0x800BBA58 10000002 */ b	.L800BBA64
/* 022503 0x800BBA5C AD990000 */ sw	$t9, 0X0($t4)
.L800BBA60:
/* 022504 0x800BBA60 ADA20000 */ sw	$v0, 0X0($t5)
.L800BBA64:
/* 022505 0x800BBA64 8FBF002C */ lw	$ra, 0X2C($sp)
/* 022506 0x800BBA68 8FB00014 */ lw	$s0, 0X14($sp)
/* 022507 0x800BBA6C 8FB10018 */ lw	$s1, 0X18($sp)
/* 022508 0x800BBA70 8FB2001C */ lw	$s2, 0X1C($sp)
/* 022509 0x800BBA74 8FB30020 */ lw	$s3, 0X20($sp)
/* 022510 0x800BBA78 8FB40024 */ lw	$s4, 0X24($sp)
/* 022511 0x800BBA7C 8FB50028 */ lw	$s5, 0X28($sp)
/* 022512 0x800BBA80 03E00008 */ jr	$ra
/* 022513 0x800BBA84 27BD0030 */ addiu	$sp, $sp, 0X30

