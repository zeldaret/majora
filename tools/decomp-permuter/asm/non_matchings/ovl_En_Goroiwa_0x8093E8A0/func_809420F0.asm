glabel func_809420F0
/* 003604 0x809420F0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 003605 0x809420F4 AFB00020 */ sw	$s0, 0X20($sp)
/* 003606 0x809420F8 00808025 */ move	$s0, $a0
/* 003607 0x809420FC AFBF0024 */ sw	$ra, 0X24($sp)
/* 003608 0x80942100 8CAE1CCC */ lw	$t6, 0X1CCC($a1)
/* 003609 0x80942104 AFA50034 */ sw	$a1, 0X34($sp)
/* 003610 0x80942108 02002025 */ move	$a0, $s0
/* 003611 0x8094210C 0C25055B */ jal	func_8094156C
/* 003612 0x80942110 AFAE002C */ sw	$t6, 0X2C($sp)
/* 003613 0x80942114 5440002E */ bnezl	$v0, .L809421D0
/* 003614 0x80942118 8FBF0024 */ lw	$ra, 0X24($sp)
/* 003615 0x8094211C 920F0154 */ lbu	$t7, 0X154($s0)
/* 003616 0x80942120 8FB9002C */ lw	$t9, 0X2C($sp)
/* 003617 0x80942124 02002025 */ move	$a0, $s0
/* 003618 0x80942128 31F80002 */ andi	$t8, $t7, 0X2
/* 003619 0x8094212C 1300001A */ beqz	$t8, .L80942198
/* 003620 0x80942130 00000000 */ nop
/* 003621 0x80942134 8F280A74 */ lw	$t0, 0XA74($t9)
/* 003622 0x80942138 02002825 */ move	$a1, $s0
/* 003623 0x8094213C 3C064000 */ lui	$a2, 0x4000
/* 003624 0x80942140 00084B00 */ sll	$t1, $t0, 12
/* 003625 0x80942144 05200014 */ bltz	$t1, .L80942198
/* 003626 0x80942148 00000000 */ nop
/* 003627 0x8094214C 44802000 */ mtc1	$zero, $f4
/* 003628 0x80942150 86070092 */ lh	$a3, 0X92($s0)
/* 003629 0x80942154 AFA00014 */ sw	$zero, 0X14($sp)
/* 003630 0x80942158 8FA40034 */ lw	$a0, 0X34($sp)
/* 003631 0x8094215C 0C02E354 */ jal	func_800B8D50
/* 003632 0x80942160 E7A40010 */ swc1	$f4, 0X10($sp)
/* 003633 0x80942164 8FA4002C */ lw	$a0, 0X2C($sp)
/* 003634 0x80942168 0C02E396 */ jal	func_800B8E58
/* 003635 0x8094216C 2405083E */ li	$a1, 0X83E
/* 003636 0x80942170 86020018 */ lh	$v0, 0X18($s0)
/* 003637 0x80942174 24010001 */ li	$at, 0X1
/* 003638 0x80942178 240A0032 */ li	$t2, 0X32
/* 003639 0x8094217C 30420003 */ andi	$v0, $v0, 0X3
/* 003640 0x80942180 10410003 */ beq	$v0, $at, .L80942190
/* 003641 0x80942184 24010002 */ li	$at, 0X2
/* 003642 0x80942188 54410011 */ bnel	$v0, $at, .L809421D0
/* 003643 0x8094218C 8FBF0024 */ lw	$ra, 0X24($sp)
.L80942190:
/* 003644 0x80942190 1000000E */ b	.L809421CC
/* 003645 0x80942194 A60A01CC */ sh	$t2, 0X1CC($s0)
.L80942198:
/* 003646 0x80942198 0C24FDBE */ jal	func_8093F6F8
/* 003647 0x8094219C 8FA50034 */ lw	$a1, 0X34($sp)
/* 003648 0x809421A0 5040000B */ beqzl	$v0, .L809421D0
/* 003649 0x809421A4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 003650 0x809421A8 0C24FF00 */ jal	func_8093FC00
/* 003651 0x809421AC 02002025 */ move	$a0, $s0
/* 003652 0x809421B0 0C250674 */ jal	func_809419D0
/* 003653 0x809421B4 02002025 */ move	$a0, $s0
/* 003654 0x809421B8 920B01E5 */ lbu	$t3, 0X1E5($s0)
/* 003655 0x809421BC 44803000 */ mtc1	$zero, $f6
/* 003656 0x809421C0 316CFFEF */ andi	$t4, $t3, 0XFFEF
/* 003657 0x809421C4 A20C01E5 */ sb	$t4, 0X1E5($s0)
/* 003658 0x809421C8 E6060070 */ swc1	$f6, 0X70($s0)
.L809421CC:
/* 003659 0x809421CC 8FBF0024 */ lw	$ra, 0X24($sp)
.L809421D0:
/* 003660 0x809421D0 8FB00020 */ lw	$s0, 0X20($sp)
/* 003661 0x809421D4 27BD0030 */ addiu	$sp, $sp, 0X30
/* 003662 0x809421D8 03E00008 */ jr	$ra
/* 003663 0x809421DC 00000000 */ nop

