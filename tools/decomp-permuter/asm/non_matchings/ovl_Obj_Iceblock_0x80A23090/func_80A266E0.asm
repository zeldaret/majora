glabel func_80A266E0
/* 003476 0x80A266E0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 003477 0x80A266E4 AFB00018 */ sw	$s0, 0X18($sp)
/* 003478 0x80A266E8 00808025 */ move	$s0, $a0
/* 003479 0x80A266EC AFBF001C */ sw	$ra, 0X1C($sp)
/* 003480 0x80A266F0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 003481 0x80A266F4 3C053ADA */ lui	$a1, 0x3ADA
/* 003482 0x80A266F8 3C06392E */ lui	$a2, 0x392E
/* 003483 0x80A266FC 34C6C33E */ ori	$a2, $a2, 0XC33E
/* 003484 0x80A26700 34A5740E */ ori	$a1, $a1, 0X740E
/* 003485 0x80A26704 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 003486 0x80A26708 260402A8 */ addiu	$a0, $s0, 0X2A8
/* 003487 0x80A2670C 2604005C */ addiu	$a0, $s0, 0X5C
/* 003488 0x80A26710 24050000 */ li	$a1, 0X0
/* 003489 0x80A26714 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 003490 0x80A26718 8E0602A8 */ lw	$a2, 0X2A8($s0)
/* 003491 0x80A2671C AFA20020 */ sw	$v0, 0X20($sp)
/* 003492 0x80A26720 3C014120 */ lui	$at, 0x4120
/* 003493 0x80A26724 44812000 */ mtc1	$at, $f4
/* 003494 0x80A26728 C602005C */ lwc1	$f2, 0X5C($s0)
/* 003495 0x80A2672C 3C014396 */ lui	$at, 0x4396
/* 003496 0x80A26730 44814000 */ mtc1	$at, $f8
/* 003497 0x80A26734 46041182 */ mul.s	$f6, $f2, $f4
/* 003498 0x80A26738 3C0180A2 */ lui	$at, %hi(D_80A27088)
/* 003499 0x80A2673C 46083002 */ mul.s	$f0, $f6, $f8
/* 003500 0x80A26740 E60000C4 */ swc1	$f0, 0XC4($s0)
/* 003501 0x80A26744 C42A7088 */ lwc1	$f10, %lo(D_80A27088)($at)
/* 003502 0x80A26748 3C0180A2 */ lui	$at, %hi(D_80A2708C)
/* 003503 0x80A2674C 460A103C */ c.lt.s	$f2, $f10
/* 003504 0x80A26750 00000000 */ nop
/* 003505 0x80A26754 45020015 */ bc1fl .L80A267AC
/* 003506 0x80A26758 860F001C */ lh	$t7, 0X1C($s0)
/* 003507 0x80A2675C C430708C */ lwc1	$f16, %lo(D_80A2708C)($at)
/* 003508 0x80A26760 46101482 */ mul.s	$f18, $f2, $f16
/* 003509 0x80A26764 4600910D */ trunc.w.s	$f4, $f18
/* 003510 0x80A26768 44042000 */ mfc1	$a0, $f4
/* 003511 0x80A2676C 00000000 */ nop
/* 003512 0x80A26770 00042400 */ sll	$a0, $a0, 16
/* 003513 0x80A26774 0C03FB61 */ jal	Math_Sins
/* 003514 0x80A26778 00042403 */ sra	$a0, $a0, 16
/* 003515 0x80A2677C 3C0180A2 */ lui	$at, %hi(D_80A27090)
/* 003516 0x80A26780 C4267090 */ lwc1	$f6, %lo(D_80A27090)($at)
/* 003517 0x80A26784 44806000 */ mtc1	$zero, $f12
/* 003518 0x80A26788 46060082 */ mul.s	$f2, $f0, $f6
/* 003519 0x80A2678C 460C103C */ c.lt.s	$f2, $f12
/* 003520 0x80A26790 E6020058 */ swc1	$f2, 0X58($s0)
/* 003521 0x80A26794 45020003 */ bc1fl .L80A267A4
/* 003522 0x80A26798 C6080058 */ lwc1	$f8, 0X58($s0)
/* 003523 0x80A2679C E60C0058 */ swc1	$f12, 0X58($s0)
/* 003524 0x80A267A0 C6080058 */ lwc1	$f8, 0X58($s0)
.L80A267A4:
/* 003525 0x80A267A4 E6080060 */ swc1	$f8, 0X60($s0)
/* 003526 0x80A267A8 860F001C */ lh	$t7, 0X1C($s0)
.L80A267AC:
/* 003527 0x80A267AC 3C0180A2 */ lui	$at, %hi(D_80A27094)
/* 003528 0x80A267B0 02002025 */ move	$a0, $s0
/* 003529 0x80A267B4 31F80001 */ andi	$t8, $t7, 0X1
/* 003530 0x80A267B8 13000019 */ beqz	$t8, .L80A26820
/* 003531 0x80A267BC 00000000 */ nop
/* 003532 0x80A267C0 C60A005C */ lwc1	$f10, 0X5C($s0)
/* 003533 0x80A267C4 C610005C */ lwc1	$f16, 0X5C($s0)
/* 003534 0x80A267C8 C608005C */ lwc1	$f8, 0X5C($s0)
/* 003535 0x80A267CC E60A02B4 */ swc1	$f10, 0X2B4($s0)
/* 003536 0x80A267D0 C4327094 */ lwc1	$f18, %lo(D_80A27094)($at)
/* 003537 0x80A267D4 3C01C47A */ lui	$at, 0xC47A
/* 003538 0x80A267D8 44815000 */ mtc1	$at, $f10
/* 003539 0x80A267DC 46128102 */ mul.s	$f4, $f16, $f18
/* 003540 0x80A267E0 3C014391 */ lui	$at, 0x4391
/* 003541 0x80A267E4 460A4402 */ mul.s	$f16, $f8, $f10
/* 003542 0x80A267E8 4600218D */ trunc.w.s	$f6, $f4
/* 003543 0x80A267EC C6040058 */ lwc1	$f4, 0X58($s0)
/* 003544 0x80A267F0 4600848D */ trunc.w.s	$f18, $f16
/* 003545 0x80A267F4 44083000 */ mfc1	$t0, $f6
/* 003546 0x80A267F8 44813000 */ mtc1	$at, $f6
/* 003547 0x80A267FC 440B9000 */ mfc1	$t3, $f18
/* 003548 0x80A26800 46062202 */ mul.s	$f8, $f4, $f6
/* 003549 0x80A26804 25090001 */ addiu	$t1, $t0, 0X1
/* 003550 0x80A26808 A609019E */ sh	$t1, 0X19E($s0)
/* 003551 0x80A2680C A60B01A0 */ sh	$t3, 0X1A0($s0)
/* 003552 0x80A26810 4600428D */ trunc.w.s	$f10, $f8
/* 003553 0x80A26814 440D5000 */ mfc1	$t5, $f10
/* 003554 0x80A26818 00000000 */ nop
/* 003555 0x80A2681C A60D019C */ sh	$t5, 0X19C($s0)
.L80A26820:
/* 003556 0x80A26820 0C289423 */ jal	func_80A2508C
/* 003557 0x80A26824 8FA5002C */ lw	$a1, 0X2C($sp)
/* 003558 0x80A26828 8FAE0020 */ lw	$t6, 0X20($sp)
/* 003559 0x80A2682C 51C00004 */ beqzl	$t6, .L80A26840
/* 003560 0x80A26830 8FBF001C */ lw	$ra, 0X1C($sp)
/* 003561 0x80A26834 0C02D9C3 */ jal	Actor_MarkForDeath
/* 003562 0x80A26838 02002025 */ move	$a0, $s0
/* 003563 0x80A2683C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A26840:
/* 003564 0x80A26840 8FB00018 */ lw	$s0, 0X18($sp)
/* 003565 0x80A26844 27BD0028 */ addiu	$sp, $sp, 0X28
/* 003566 0x80A26848 03E00008 */ jr	$ra
/* 003567 0x80A2684C 00000000 */ nop

