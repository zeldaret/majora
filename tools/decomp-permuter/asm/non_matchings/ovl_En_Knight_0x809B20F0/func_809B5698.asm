glabel func_809B5698
/* 003434 0x809B5698 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 003435 0x809B569C AFB00020 */ sw	$s0, 0X20($sp)
/* 003436 0x809B56A0 00808025 */ move	$s0, $a0
/* 003437 0x809B56A4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 003438 0x809B56A8 AFA50054 */ sw	$a1, 0X54($sp)
/* 003439 0x809B56AC 8602014E */ lh	$v0, 0X14E($s0)
/* 003440 0x809B56B0 3C053DCC */ lui	$a1, 0x3DCC
/* 003441 0x809B56B4 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 003442 0x809B56B8 2841000A */ slti	$at, $v0, 0XA
/* 003443 0x809B56BC 1420000C */ bnez	$at, .L809B56F0
/* 003444 0x809B56C0 2604005C */ addiu	$a0, $s0, 0X5C
/* 003445 0x809B56C4 28410028 */ slti	$at, $v0, 0X28
/* 003446 0x809B56C8 10200009 */ beqz	$at, .L809B56F0
/* 003447 0x809B56CC 2401000A */ li	$at, 0XA
/* 003448 0x809B56D0 14410004 */ bne	$v0, $at, .L809B56E4
/* 003449 0x809B56D4 3C01809C */ lui	$at, %hi(D_809BEFE0)
/* 003450 0x809B56D8 AC20EFE0 */ sw	$zero, %lo(D_809BEFE0)($at)
/* 003451 0x809B56DC 10000004 */ b	.L809B56F0
/* 003452 0x809B56E0 8602014E */ lh	$v0, 0X14E($s0)
.L809B56E4:
/* 003453 0x809B56E4 3C01809C */ lui	$at, %hi(D_809BEFE0)
/* 003454 0x809B56E8 AC30EFE0 */ sw	$s0, %lo(D_809BEFE0)($at)
/* 003455 0x809B56EC 8602014E */ lh	$v0, 0X14E($s0)
.L809B56F0:
/* 003456 0x809B56F0 1440000E */ bnez	$v0, .L809B572C
/* 003457 0x809B56F4 3C063AC4 */ lui	$a2, 0x3AC4
/* 003458 0x809B56F8 3C01447A */ lui	$at, 0x447A
/* 003459 0x809B56FC 44812000 */ mtc1	$at, $f4
/* 003460 0x809B5700 A2000152 */ sb	$zero, 0X152($s0)
/* 003461 0x809B5704 AE00013C */ sw	$zero, 0X13C($s0)
/* 003462 0x809B5708 3C01809C */ lui	$at, %hi(D_809BDE18)
/* 003463 0x809B570C E6040028 */ swc1	$f4, 0X28($s0)
/* 003464 0x809B5710 C426DE18 */ lwc1	$f6, %lo(D_809BDE18)($at)
/* 003465 0x809B5714 3C014533 */ lui	$at, 0x4533
/* 003466 0x809B5718 44814000 */ mtc1	$at, $f8
/* 003467 0x809B571C 44805000 */ mtc1	$zero, $f10
/* 003468 0x809B5720 E6060024 */ swc1	$f6, 0X24($s0)
/* 003469 0x809B5724 E608002C */ swc1	$f8, 0X2C($s0)
/* 003470 0x809B5728 E60A0074 */ swc1	$f10, 0X74($s0)
.L809B572C:
/* 003471 0x809B572C 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 003472 0x809B5730 34C69BA6 */ ori	$a2, $a2, 0X9BA6
/* 003473 0x809B5734 8602014E */ lh	$v0, 0X14E($s0)
/* 003474 0x809B5738 3C01809C */ lui	$at, %hi(D_809BDE1C)
/* 003475 0x809B573C 1040003E */ beqz	$v0, .L809B5838
/* 003476 0x809B5740 00000000 */ nop
/* 003477 0x809B5744 0C05E565 */ jal	randZeroOneScaled
/* 003478 0x809B5748 C42CDE1C */ lwc1	$f12, %lo(D_809BDE1C)($at)
/* 003479 0x809B574C 4600040D */ trunc.w.s	$f16, $f0
/* 003480 0x809B5750 3C19809C */ lui	$t9, %hi(D_809BDAF0)
/* 003481 0x809B5754 2739DAF0 */ addiu	$t9, $t9, %lo(D_809BDAF0)
/* 003482 0x809B5758 27B80044 */ addiu	$t8, $sp, 0X44
/* 003483 0x809B575C 440F8000 */ mfc1	$t7, $f16
/* 003484 0x809B5760 3C01809C */ lui	$at, %hi(D_809BDE20)
/* 003485 0x809B5764 A7AF0036 */ sh	$t7, 0X36($sp)
/* 003486 0x809B5768 8F290000 */ lw	$t1, 0X0($t9)
/* 003487 0x809B576C 8F280004 */ lw	$t0, 0X4($t9)
/* 003488 0x809B5770 AF090000 */ sw	$t1, 0X0($t8)
/* 003489 0x809B5774 8F290008 */ lw	$t1, 0X8($t9)
/* 003490 0x809B5778 AF080004 */ sw	$t0, 0X4($t8)
/* 003491 0x809B577C AF090008 */ sw	$t1, 0X8($t8)
/* 003492 0x809B5780 C432DE20 */ lwc1	$f18, %lo(D_809BDE20)($at)
/* 003493 0x809B5784 3C0141A0 */ lui	$at, 0x41A0
/* 003494 0x809B5788 44816000 */ mtc1	$at, $f12
/* 003495 0x809B578C 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 003496 0x809B5790 E7B20048 */ swc1	$f18, 0X48($sp)
/* 003497 0x809B5794 87AA0036 */ lh	$t2, 0X36($sp)
/* 003498 0x809B5798 3C0140A0 */ lui	$at, 0x40A0
/* 003499 0x809B579C 44815000 */ mtc1	$at, $f10
/* 003500 0x809B57A0 000A5880 */ sll	$t3, $t2, 2
/* 003501 0x809B57A4 016A5823 */ subu	$t3, $t3, $t2
/* 003502 0x809B57A8 000B5880 */ sll	$t3, $t3, 2
/* 003503 0x809B57AC 020B1021 */ addu	$v0, $s0, $t3
/* 003504 0x809B57B0 C44401DC */ lwc1	$f4, 0X1DC($v0)
/* 003505 0x809B57B4 3C0141A0 */ lui	$at, 0x41A0
/* 003506 0x809B57B8 44816000 */ mtc1	$at, $f12
/* 003507 0x809B57BC 46040180 */ add.s	$f6, $f0, $f4
/* 003508 0x809B57C0 E7A60038 */ swc1	$f6, 0X38($sp)
/* 003509 0x809B57C4 C44801E0 */ lwc1	$f8, 0X1E0($v0)
/* 003510 0x809B57C8 AFA2002C */ sw	$v0, 0X2C($sp)
/* 003511 0x809B57CC 460A4401 */ sub.s	$f16, $f8, $f10
/* 003512 0x809B57D0 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 003513 0x809B57D4 E7B0003C */ swc1	$f16, 0X3C($sp)
/* 003514 0x809B57D8 8FA2002C */ lw	$v0, 0X2C($sp)
/* 003515 0x809B57DC 3C0141A0 */ lui	$at, 0x41A0
/* 003516 0x809B57E0 44816000 */ mtc1	$at, $f12
/* 003517 0x809B57E4 C45201E4 */ lwc1	$f18, 0X1E4($v0)
/* 003518 0x809B57E8 46120100 */ add.s	$f4, $f0, $f18
/* 003519 0x809B57EC 0C05E565 */ jal	randZeroOneScaled
/* 003520 0x809B57F0 E7A40040 */ swc1	$f4, 0X40($sp)
/* 003521 0x809B57F4 3C0141A0 */ lui	$at, 0x41A0
/* 003522 0x809B57F8 44813000 */ mtc1	$at, $f6
/* 003523 0x809B57FC 3C06809C */ lui	$a2, %hi(D_809BDAF0)
/* 003524 0x809B5800 24C6DAF0 */ addiu	$a2, $a2, %lo(D_809BDAF0)
/* 003525 0x809B5804 46060200 */ add.s	$f8, $f0, $f6
/* 003526 0x809B5808 8FA40054 */ lw	$a0, 0X54($sp)
/* 003527 0x809B580C 27A50038 */ addiu	$a1, $sp, 0X38
/* 003528 0x809B5810 27A70044 */ addiu	$a3, $sp, 0X44
/* 003529 0x809B5814 4600428D */ trunc.w.s	$f10, $f8
/* 003530 0x809B5818 AFA00014 */ sw	$zero, 0X14($sp)
/* 003531 0x809B581C 440D5000 */ mfc1	$t5, $f10
/* 003532 0x809B5820 0C02C9CE */ jal	EffectSS_SpawnKakarikoFire
/* 003533 0x809B5824 AFAD0010 */ sw	$t5, 0X10($sp)
/* 003534 0x809B5828 02002025 */ move	$a0, $s0
/* 003535 0x809B582C 0C02E3B2 */ jal	func_800B8EC8
/* 003536 0x809B5830 2405321F */ li	$a1, 0X321F
/* 003537 0x809B5834 8602014E */ lh	$v0, 0X14E($s0)
.L809B5838:
/* 003538 0x809B5838 54400022 */ bnezl	$v0, .L809B58C4
/* 003539 0x809B583C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 003540 0x809B5840 8E0E0004 */ lw	$t6, 0X4($s0)
/* 003541 0x809B5844 2401FFFE */ li	$at, -0X2
/* 003542 0x809B5848 3C18809C */ lui	$t8, %hi(D_809BEFD0)
/* 003543 0x809B584C 01C17824 */ and	$t7, $t6, $at
/* 003544 0x809B5850 AE0F0004 */ sw	$t7, 0X4($s0)
/* 003545 0x809B5854 8F18EFD0 */ lw	$t8, %lo(D_809BEFD0)($t8)
/* 003546 0x809B5858 3C08809B */ lui	$t0, %hi(func_809B58D4)
/* 003547 0x809B585C 250858D4 */ addiu	$t0, $t0, %lo(func_809B58D4)
/* 003548 0x809B5860 56180010 */ bnel	$s0, $t8, .L809B58A4
/* 003549 0x809B5864 AE080420 */ sw	$t0, 0X420($s0)
/* 003550 0x809B5868 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 003551 0x809B586C 82040038 */ lb	$a0, 0X38($s0)
/* 003552 0x809B5870 10400007 */ beqz	$v0, .L809B5890
/* 003553 0x809B5874 02002825 */ move	$a1, $s0
/* 003554 0x809B5878 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 003555 0x809B587C 82040038 */ lb	$a0, 0X38($s0)
/* 003556 0x809B5880 3C19809B */ lui	$t9, %hi(func_809B58D4)
/* 003557 0x809B5884 273958D4 */ addiu	$t9, $t9, %lo(func_809B58D4)
/* 003558 0x809B5888 10000006 */ b	.L809B58A4
/* 003559 0x809B588C AE190420 */ sw	$t9, 0X420($s0)
.L809B5890:
/* 003560 0x809B5890 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 003561 0x809B5894 82040038 */ lb	$a0, 0X38($s0)
/* 003562 0x809B5898 10000003 */ b	.L809B58A8
/* 003563 0x809B589C 8FA40054 */ lw	$a0, 0X54($sp)
/* 003564 0x809B58A0 AE080420 */ sw	$t0, 0X420($s0)
.L809B58A4:
/* 003565 0x809B58A4 8FA40054 */ lw	$a0, 0X54($sp)
.L809B58A8:
/* 003566 0x809B58A8 02003025 */ move	$a2, $s0
/* 003567 0x809B58AC 24070005 */ li	$a3, 0X5
/* 003568 0x809B58B0 0C02F055 */ jal	func_800BC154
/* 003569 0x809B58B4 24851CA0 */ addiu	$a1, $a0, 0X1CA0
/* 003570 0x809B58B8 240A001E */ li	$t2, 0X1E
/* 003571 0x809B58BC A60A014A */ sh	$t2, 0X14A($s0)
/* 003572 0x809B58C0 8FBF0024 */ lw	$ra, 0X24($sp)
.L809B58C4:
/* 003573 0x809B58C4 8FB00020 */ lw	$s0, 0X20($sp)
/* 003574 0x809B58C8 27BD0050 */ addiu	$sp, $sp, 0X50
/* 003575 0x809B58CC 03E00008 */ jr	$ra
/* 003576 0x809B58D0 00000000 */ nop


.section .late_rodata

glabel D_809BDE18
/* 012106 0x809BDE18 */ .word	0x44A28000
glabel D_809BDE1C
/* 012107 0x809BDE1C */ .word	0x416E6666
glabel D_809BDE20
/* 012108 0x809BDE20 */ .word	0x3CF5C28F
