glabel func_8099B584
/* 000661 0x8099B584 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000662 0x8099B588 AFB00028 */ sw	$s0, 0X28($sp)
/* 000663 0x8099B58C 00808025 */ move	$s0, $a0
/* 000664 0x8099B590 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000665 0x8099B594 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000666 0x8099B598 26040070 */ addiu	$a0, $s0, 0X70
/* 000667 0x8099B59C 24050000 */ li	$a1, 0X0
/* 000668 0x8099B5A0 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000669 0x8099B5A4 3C063F00 */ lui	$a2, 0x3F00
/* 000670 0x8099B5A8 8E0F0004 */ lw	$t7, 0X4($s0)
/* 000671 0x8099B5AC 240E0028 */ li	$t6, 0X28
/* 000672 0x8099B5B0 A20E011C */ sb	$t6, 0X11C($s0)
/* 000673 0x8099B5B4 31F88000 */ andi	$t8, $t7, 0X8000
/* 000674 0x8099B5B8 57000038 */ bnezl	$t8, .L8099B69C
/* 000675 0x8099B5BC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000676 0x8099B5C0 9219018C */ lbu	$t9, 0X18C($s0)
/* 000677 0x8099B5C4 2401000A */ li	$at, 0XA
/* 000678 0x8099B5C8 260400BC */ addiu	$a0, $s0, 0XBC
/* 000679 0x8099B5CC 13210006 */ beq	$t9, $at, .L8099B5E8
/* 000680 0x8099B5D0 24054000 */ li	$a1, 0X4000
/* 000681 0x8099B5D4 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000682 0x8099B5D8 24060200 */ li	$a2, 0X200
/* 000683 0x8099B5DC 860800C0 */ lh	$t0, 0XC0($s0)
/* 000684 0x8099B5E0 25091780 */ addiu	$t1, $t0, 0X1780
/* 000685 0x8099B5E4 A60900C0 */ sh	$t1, 0XC0($s0)
.L8099B5E8:
/* 000686 0x8099B5E8 960A0090 */ lhu	$t2, 0X90($s0)
/* 000687 0x8099B5EC 3C01C6FA */ lui	$at, 0xC6FA
/* 000688 0x8099B5F0 02002025 */ move	$a0, $s0
/* 000689 0x8099B5F4 314B0001 */ andi	$t3, $t2, 0X1
/* 000690 0x8099B5F8 15600007 */ bnez	$t3, .L8099B618
/* 000691 0x8099B5FC 00000000 */ nop
/* 000692 0x8099B600 44812000 */ mtc1	$at, $f4
/* 000693 0x8099B604 C6060088 */ lwc1	$f6, 0X88($s0)
/* 000694 0x8099B608 46062032 */ c.eq.s	$f4, $f6
/* 000695 0x8099B60C 00000000 */ nop
/* 000696 0x8099B610 45020022 */ bc1fl .L8099B69C
/* 000697 0x8099B614 8FBF002C */ lw	$ra, 0X2C($sp)
.L8099B618:
/* 000698 0x8099B618 0C266CC6 */ jal	func_8099B318
/* 000699 0x8099B61C 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000700 0x8099B620 3C01809A */ lui	$at, %hi(D_8099C0EC)
/* 000701 0x8099B624 C42AC0EC */ lwc1	$f10, %lo(D_8099C0EC)($at)
/* 000702 0x8099B628 C6080058 */ lwc1	$f8, 0X58($s0)
/* 000703 0x8099B62C 3C06801D */ lui	$a2, %hi(D_801D15B0)
/* 000704 0x8099B630 24C615B0 */ addiu	$a2, $a2, %lo(D_801D15B0)
/* 000705 0x8099B634 460A4402 */ mul.s	$f16, $f8, $f10
/* 000706 0x8099B638 26050024 */ addiu	$a1, $s0, 0X24
/* 000707 0x8099B63C AFA50034 */ sw	$a1, 0X34($sp)
/* 000708 0x8099B640 00C03825 */ move	$a3, $a2
/* 000709 0x8099B644 AFA00018 */ sw	$zero, 0X18($sp)
/* 000710 0x8099B648 AFA00014 */ sw	$zero, 0X14($sp)
/* 000711 0x8099B64C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000712 0x8099B650 4600848D */ trunc.w.s	$f18, $f16
/* 000713 0x8099B654 440D9000 */ mfc1	$t5, $f18
/* 000714 0x8099B658 0C02CC0C */ jal	func_800B3030
/* 000715 0x8099B65C AFAD0010 */ sw	$t5, 0X10($sp)
/* 000716 0x8099B660 8FA50034 */ lw	$a1, 0X34($sp)
/* 000717 0x8099B664 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000718 0x8099B668 2406000B */ li	$a2, 0XB
/* 000719 0x8099B66C 0C03C15A */ jal	func_800F0568
/* 000720 0x8099B670 24073878 */ li	$a3, 0X3878
/* 000721 0x8099B674 8E0E0120 */ lw	$t6, 0X120($s0)
/* 000722 0x8099B678 11C00005 */ beqz	$t6, .L8099B690
/* 000723 0x8099B67C 00000000 */ nop
/* 000724 0x8099B680 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000725 0x8099B684 02002025 */ move	$a0, $s0
/* 000726 0x8099B688 10000004 */ b	.L8099B69C
/* 000727 0x8099B68C 8FBF002C */ lw	$ra, 0X2C($sp)
.L8099B690:
/* 000728 0x8099B690 0C266DAB */ jal	func_8099B6AC
/* 000729 0x8099B694 02002025 */ move	$a0, $s0
/* 000730 0x8099B698 8FBF002C */ lw	$ra, 0X2C($sp)
.L8099B69C:
/* 000731 0x8099B69C 8FB00028 */ lw	$s0, 0X28($sp)
/* 000732 0x8099B6A0 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000733 0x8099B6A4 03E00008 */ jr	$ra
/* 000734 0x8099B6A8 00000000 */ nop

