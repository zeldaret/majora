glabel func_8087ED10
/* 003448 0x8087ED10 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 003449 0x8087ED14 AFB00028 */ sw	$s0, 0X28($sp)
/* 003450 0x8087ED18 00808025 */ move	$s0, $a0
/* 003451 0x8087ED1C AFBF002C */ sw	$ra, 0X2C($sp)
/* 003452 0x8087ED20 AFA50044 */ sw	$a1, 0X44($sp)
/* 003453 0x8087ED24 26040264 */ addiu	$a0, $s0, 0X264
/* 003454 0x8087ED28 27A5003C */ addiu	$a1, $sp, 0X3C
/* 003455 0x8087ED2C 0C2216A0 */ jal	func_80885A80
/* 003456 0x8087ED30 27A6003A */ addiu	$a2, $sp, 0X3A
/* 003457 0x8087ED34 8E020148 */ lw	$v0, 0X148($s0)
/* 003458 0x8087ED38 02002025 */ move	$a0, $s0
/* 003459 0x8087ED3C 8FA50044 */ lw	$a1, 0X44($sp)
/* 003460 0x8087ED40 1C400011 */ bgtz	$v0, .L8087ED88
/* 003461 0x8087ED44 3C063E99 */ lui	$a2, 0x3E99
/* 003462 0x8087ED48 3C014120 */ lui	$at, 0x4120
/* 003463 0x8087ED4C 44812000 */ mtc1	$at, $f4
/* 003464 0x8087ED50 3C018089 */ lui	$at, %hi(D_808892AC)
/* 003465 0x8087ED54 C42692AC */ lwc1	$f6, %lo(D_808892AC)($at)
/* 003466 0x8087ED58 3C014100 */ lui	$at, 0x4100
/* 003467 0x8087ED5C 44814000 */ mtc1	$at, $f8
/* 003468 0x8087ED60 240E0320 */ li	$t6, 0X320
/* 003469 0x8087ED64 AFAE001C */ sw	$t6, 0X1C($sp)
/* 003470 0x8087ED68 34C6999A */ ori	$a2, $a2, 0X999A
/* 003471 0x8087ED6C 3C07BF00 */ lui	$a3, 0xBF00
/* 003472 0x8087ED70 E7A40010 */ swc1	$f4, 0X10($sp)
/* 003473 0x8087ED74 E7A60014 */ swc1	$f6, 0X14($sp)
/* 003474 0x8087ED78 0C21F662 */ jal	func_8087D988
/* 003475 0x8087ED7C E7A80018 */ swc1	$f8, 0X18($sp)
/* 003476 0x8087ED80 10000008 */ b	.L8087EDA4
/* 003477 0x8087ED84 3C0140C0 */ lui	$at, 0x40C0
.L8087ED88:
/* 003478 0x8087ED88 18400005 */ blez	$v0, .L8087EDA0
/* 003479 0x8087ED8C 3C014100 */ lui	$at, 0x4100
/* 003480 0x8087ED90 44815000 */ mtc1	$at, $f10
/* 003481 0x8087ED94 244FFFFF */ addiu	$t7, $v0, -0X1
/* 003482 0x8087ED98 AE0F0148 */ sw	$t7, 0X148($s0)
/* 003483 0x8087ED9C E60A0070 */ swc1	$f10, 0X70($s0)
.L8087EDA0:
/* 003484 0x8087EDA0 3C0140C0 */ lui	$at, 0x40C0
.L8087EDA4:
/* 003485 0x8087EDA4 44818000 */ mtc1	$at, $f16
/* 003486 0x8087EDA8 C6000070 */ lwc1	$f0, 0X70($s0)
/* 003487 0x8087EDAC 4610003C */ c.lt.s	$f0, $f16
/* 003488 0x8087EDB0 00000000 */ nop
/* 003489 0x8087EDB4 45000004 */ bc1f .L8087EDC8
/* 003490 0x8087EDB8 00000000 */ nop
/* 003491 0x8087EDBC 0C21FA4B */ jal	func_8087E92C
/* 003492 0x8087EDC0 02002025 */ move	$a0, $s0
/* 003493 0x8087EDC4 C6000070 */ lwc1	$f0, 0X70($s0)
.L8087EDC8:
/* 003494 0x8087EDC8 3C018089 */ lui	$at, %hi(D_808892B0)
/* 003495 0x8087EDCC C43292B0 */ lwc1	$f18, %lo(D_808892B0)($at)
/* 003496 0x8087EDD0 260401A4 */ addiu	$a0, $s0, 0X1A4
/* 003497 0x8087EDD4 46120102 */ mul.s	$f4, $f0, $f18
/* 003498 0x8087EDD8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 003499 0x8087EDDC E60401C0 */ swc1	$f4, 0X1C0($s0)
/* 003500 0x8087EDE0 50400034 */ beqzl	$v0, .L8087EEB4
/* 003501 0x8087EDE4 8FBF002C */ lw	$ra, 0X2C($sp)
/* 003502 0x8087EDE8 0C21F070 */ jal	func_8087C1C0
/* 003503 0x8087EDEC 02002025 */ move	$a0, $s0
/* 003504 0x8087EDF0 44806000 */ mtc1	$zero, $f12
/* 003505 0x8087EDF4 24050078 */ li	$a1, 0X78
/* 003506 0x8087EDF8 24060008 */ li	$a2, 0X8
/* 003507 0x8087EDFC 0C04FB38 */ jal	func_8013ECE0
/* 003508 0x8087EE00 240700FF */ li	$a3, 0XFF
/* 003509 0x8087EE04 02002025 */ move	$a0, $s0
/* 003510 0x8087EE08 0C21F238 */ jal	func_8087C8E0
/* 003511 0x8087EE0C 8FA50044 */ lw	$a1, 0X44($sp)
/* 003512 0x8087EE10 24010001 */ li	$at, 0X1
/* 003513 0x8087EE14 14410024 */ bne	$v0, $at, .L8087EEA8
/* 003514 0x8087EE18 C7A6003C */ lwc1	$f6, 0X3C($sp)
/* 003515 0x8087EE1C 3C014120 */ lui	$at, 0x4120
/* 003516 0x8087EE20 44814000 */ mtc1	$at, $f8
/* 003517 0x8087EE24 00000000 */ nop
/* 003518 0x8087EE28 4606403E */ c.le.s	$f8, $f6
/* 003519 0x8087EE2C 00000000 */ nop
/* 003520 0x8087EE30 4502000F */ bc1fl .L8087EE70
/* 003521 0x8087EE34 3C0140C0 */ lui	$at, 0x40C0
/* 003522 0x8087EE38 0C03FB51 */ jal	Math_Coss
/* 003523 0x8087EE3C 87A4003A */ lh	$a0, 0X3A($sp)
/* 003524 0x8087EE40 3C01BF00 */ lui	$at, 0xBF00
/* 003525 0x8087EE44 44815000 */ mtc1	$at, $f10
/* 003526 0x8087EE48 02002025 */ move	$a0, $s0
/* 003527 0x8087EE4C 460A003E */ c.le.s	$f0, $f10
/* 003528 0x8087EE50 00000000 */ nop
/* 003529 0x8087EE54 45020006 */ bc1fl .L8087EE70
/* 003530 0x8087EE58 3C0140C0 */ lui	$at, 0x40C0
/* 003531 0x8087EE5C 0C21FC7F */ jal	func_8087F1FC
/* 003532 0x8087EE60 8FA50044 */ lw	$a1, 0X44($sp)
/* 003533 0x8087EE64 10000013 */ b	.L8087EEB4
/* 003534 0x8087EE68 8FBF002C */ lw	$ra, 0X2C($sp)
/* 003535 0x8087EE6C 3C0140C0 */ lui	$at, 0x40C0
.L8087EE70:
/* 003536 0x8087EE70 44819000 */ mtc1	$at, $f18
/* 003537 0x8087EE74 C6100070 */ lwc1	$f16, 0X70($s0)
/* 003538 0x8087EE78 4612803C */ c.lt.s	$f16, $f18
/* 003539 0x8087EE7C 00000000 */ nop
/* 003540 0x8087EE80 45000005 */ bc1f .L8087EE98
/* 003541 0x8087EE84 00000000 */ nop
/* 003542 0x8087EE88 0C21FA4B */ jal	func_8087E92C
/* 003543 0x8087EE8C 02002025 */ move	$a0, $s0
/* 003544 0x8087EE90 10000008 */ b	.L8087EEB4
/* 003545 0x8087EE94 8FBF002C */ lw	$ra, 0X2C($sp)
.L8087EE98:
/* 003546 0x8087EE98 0C21FB08 */ jal	func_8087EC20
/* 003547 0x8087EE9C 02002025 */ move	$a0, $s0
/* 003548 0x8087EEA0 10000004 */ b	.L8087EEB4
/* 003549 0x8087EEA4 8FBF002C */ lw	$ra, 0X2C($sp)
.L8087EEA8:
/* 003550 0x8087EEA8 0C21FB08 */ jal	func_8087EC20
/* 003551 0x8087EEAC 02002025 */ move	$a0, $s0
/* 003552 0x8087EEB0 8FBF002C */ lw	$ra, 0X2C($sp)
.L8087EEB4:
/* 003553 0x8087EEB4 8FB00028 */ lw	$s0, 0X28($sp)
/* 003554 0x8087EEB8 27BD0040 */ addiu	$sp, $sp, 0X40
/* 003555 0x8087EEBC 03E00008 */ jr	$ra
/* 003556 0x8087EEC0 00000000 */ nop

