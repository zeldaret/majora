glabel func_809FDF54
/* 009589 0x809FDF54 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 009590 0x809FDF58 AFB10030 */ sw	$s1, 0X30($sp)
/* 009591 0x809FDF5C AFB0002C */ sw	$s0, 0X2C($sp)
/* 009592 0x809FDF60 00808025 */ move	$s0, $a0
/* 009593 0x809FDF64 00A08825 */ move	$s1, $a1
/* 009594 0x809FDF68 AFBF0034 */ sw	$ra, 0X34($sp)
/* 009595 0x809FDF6C 26040190 */ addiu	$a0, $s0, 0X190
/* 009596 0x809FDF70 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 009597 0x809FDF74 AFA4003C */ sw	$a0, 0X3C($sp)
/* 009598 0x809FDF78 02002025 */ move	$a0, $s0
/* 009599 0x809FDF7C 0C27D32F */ jal	func_809F4CBC
/* 009600 0x809FDF80 3C054040 */ lui	$a1, 0x4040
/* 009601 0x809FDF84 26040032 */ addiu	$a0, $s0, 0X32
/* 009602 0x809FDF88 86050092 */ lh	$a1, 0X92($s0)
/* 009603 0x809FDF8C 24060003 */ li	$a2, 0X3
/* 009604 0x809FDF90 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 009605 0x809FDF94 24073000 */ li	$a3, 0X3000
/* 009606 0x809FDF98 8FA4003C */ lw	$a0, 0X3C($sp)
/* 009607 0x809FDF9C 0C04DE2E */ jal	func_801378B8
/* 009608 0x809FDFA0 3C054080 */ lui	$a1, 0x4080
/* 009609 0x809FDFA4 1040000E */ beqz	$v0, .L809FDFE0
/* 009610 0x809FDFA8 26241CA0 */ addiu	$a0, $s1, 0X1CA0
/* 009611 0x809FDFAC C60417A4 */ lwc1	$f4, 0X17A4($s0)
/* 009612 0x809FDFB0 8E0717A0 */ lw	$a3, 0X17A0($s0)
/* 009613 0x809FDFB4 240E0065 */ li	$t6, 0X65
/* 009614 0x809FDFB8 E7A40010 */ swc1	$f4, 0X10($sp)
/* 009615 0x809FDFBC C60617A8 */ lwc1	$f6, 0X17A8($s0)
/* 009616 0x809FDFC0 AFAE0024 */ sw	$t6, 0X24($sp)
/* 009617 0x809FDFC4 AFA00020 */ sw	$zero, 0X20($sp)
/* 009618 0x809FDFC8 AFA0001C */ sw	$zero, 0X1C($sp)
/* 009619 0x809FDFCC AFA00018 */ sw	$zero, 0X18($sp)
/* 009620 0x809FDFD0 02202825 */ move	$a1, $s1
/* 009621 0x809FDFD4 2406012F */ li	$a2, 0X12F
/* 009622 0x809FDFD8 0C02EB18 */ jal	Actor_Spawn
/* 009623 0x809FDFDC E7A60014 */ swc1	$f6, 0X14($sp)
.L809FDFE0:
/* 009624 0x809FDFE0 8FA4003C */ lw	$a0, 0X3C($sp)
/* 009625 0x809FDFE4 0C04DE2E */ jal	func_801378B8
/* 009626 0x809FDFE8 3C054110 */ lui	$a1, 0x4110
/* 009627 0x809FDFEC 1040000E */ beqz	$v0, .L809FE028
/* 009628 0x809FDFF0 26241CA0 */ addiu	$a0, $s1, 0X1CA0
/* 009629 0x809FDFF4 C60817B0 */ lwc1	$f8, 0X17B0($s0)
/* 009630 0x809FDFF8 8E0717AC */ lw	$a3, 0X17AC($s0)
/* 009631 0x809FDFFC 240F0065 */ li	$t7, 0X65
/* 009632 0x809FE000 E7A80010 */ swc1	$f8, 0X10($sp)
/* 009633 0x809FE004 C60A17B4 */ lwc1	$f10, 0X17B4($s0)
/* 009634 0x809FE008 AFAF0024 */ sw	$t7, 0X24($sp)
/* 009635 0x809FE00C AFA00020 */ sw	$zero, 0X20($sp)
/* 009636 0x809FE010 AFA0001C */ sw	$zero, 0X1C($sp)
/* 009637 0x809FE014 AFA00018 */ sw	$zero, 0X18($sp)
/* 009638 0x809FE018 02202825 */ move	$a1, $s1
/* 009639 0x809FE01C 2406012F */ li	$a2, 0X12F
/* 009640 0x809FE020 0C02EB18 */ jal	Actor_Spawn
/* 009641 0x809FE024 E7AA0014 */ swc1	$f10, 0X14($sp)
.L809FE028:
/* 009642 0x809FE028 86180150 */ lh	$t8, 0X150($s0)
/* 009643 0x809FE02C 02002025 */ move	$a0, $s0
/* 009644 0x809FE030 57000004 */ bnezl	$t8, .L809FE044
/* 009645 0x809FE034 02002025 */ move	$a0, $s0
/* 009646 0x809FE038 0C27F6CB */ jal	func_809FDB2C
/* 009647 0x809FE03C 02202825 */ move	$a1, $s1
/* 009648 0x809FE040 02002025 */ move	$a0, $s0
.L809FE044:
/* 009649 0x809FE044 02202825 */ move	$a1, $s1
/* 009650 0x809FE048 24060001 */ li	$a2, 0X1
/* 009651 0x809FE04C 0C27D355 */ jal	func_809F4D54
/* 009652 0x809FE050 00003825 */ move	$a3, $zero
/* 009653 0x809FE054 8FBF0034 */ lw	$ra, 0X34($sp)
/* 009654 0x809FE058 8FB0002C */ lw	$s0, 0X2C($sp)
/* 009655 0x809FE05C 8FB10030 */ lw	$s1, 0X30($sp)
/* 009656 0x809FE060 03E00008 */ jr	$ra
/* 009657 0x809FE064 27BD0040 */ addiu	$sp, $sp, 0X40

