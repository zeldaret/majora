glabel func_80AFF288
/* 000634 0x80AFF288 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000635 0x80AFF28C AFB00020 */ sw	$s0, 0X20($sp)
/* 000636 0x80AFF290 00808025 */ move	$s0, $a0
/* 000637 0x80AFF294 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000638 0x80AFF298 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000639 0x80AFF29C C6000070 */ lwc1	$f0, 0X70($s0)
/* 000640 0x80AFF2A0 44802000 */ mtc1	$zero, $f4
/* 000641 0x80AFF2A4 3C0180B0 */ lui	$at, %hi(D_80B01474)
/* 000642 0x80AFF2A8 260403E0 */ addiu	$a0, $s0, 0X3E0
/* 000643 0x80AFF2AC 4604003C */ c.lt.s	$f0, $f4
/* 000644 0x80AFF2B0 00002825 */ move	$a1, $zero
/* 000645 0x80AFF2B4 45020005 */ bc1fl .L80AFF2CC
/* 000646 0x80AFF2B8 860E0092 */ lh	$t6, 0X92($s0)
/* 000647 0x80AFF2BC C4261474 */ lwc1	$f6, %lo(D_80B01474)($at)
/* 000648 0x80AFF2C0 46060200 */ add.s	$f8, $f0, $f6
/* 000649 0x80AFF2C4 E6080070 */ swc1	$f8, 0X70($s0)
/* 000650 0x80AFF2C8 860E0092 */ lh	$t6, 0X92($s0)
.L80AFF2CC:
/* 000651 0x80AFF2CC 24060001 */ li	$a2, 0X1
/* 000652 0x80AFF2D0 2407012C */ li	$a3, 0X12C
/* 000653 0x80AFF2D4 A60E0032 */ sh	$t6, 0X32($s0)
/* 000654 0x80AFF2D8 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000655 0x80AFF2DC AFA00010 */ sw	$zero, 0X10($sp)
/* 000656 0x80AFF2E0 260403E6 */ addiu	$a0, $s0, 0X3E6
/* 000657 0x80AFF2E4 00002825 */ move	$a1, $zero
/* 000658 0x80AFF2E8 24060001 */ li	$a2, 0X1
/* 000659 0x80AFF2EC 2407012C */ li	$a3, 0X12C
/* 000660 0x80AFF2F0 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000661 0x80AFF2F4 AFA00010 */ sw	$zero, 0X10($sp)
/* 000662 0x80AFF2F8 26040190 */ addiu	$a0, $s0, 0X190
/* 000663 0x80AFF2FC 0C04DE2E */ jal	func_801378B8
/* 000664 0x80AFF300 8E0501A0 */ lw	$a1, 0X1A0($s0)
/* 000665 0x80AFF304 50400006 */ beqzl	$v0, .L80AFF320
/* 000666 0x80AFF308 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000667 0x80AFF30C 860F00BE */ lh	$t7, 0XBE($s0)
/* 000668 0x80AFF310 02002025 */ move	$a0, $s0
/* 000669 0x80AFF314 0C2BFCCC */ jal	func_80AFF330
/* 000670 0x80AFF318 A60F0032 */ sh	$t7, 0X32($s0)
/* 000671 0x80AFF31C 8FBF0024 */ lw	$ra, 0X24($sp)
.L80AFF320:
/* 000672 0x80AFF320 8FB00020 */ lw	$s0, 0X20($sp)
/* 000673 0x80AFF324 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000674 0x80AFF328 03E00008 */ jr	$ra
/* 000675 0x80AFF32C 00000000 */ nop


.section .late_rodata

glabel D_80B01474
/* 002805 0x80B01474 */ .word	0x3E19999A
