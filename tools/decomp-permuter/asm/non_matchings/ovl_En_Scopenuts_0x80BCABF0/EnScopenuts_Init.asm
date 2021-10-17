glabel EnScopenuts_Init
/* 001606 0x80BCC508 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001607 0x80BCC50C AFB00028 */ sw	$s0, 0X28($sp)
/* 001608 0x80BCC510 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 001609 0x80BCC514 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 001610 0x80BCC518 00808025 */ move	$s0, $a0
/* 001611 0x80BCC51C AFBF002C */ sw	$ra, 0X2C($sp)
/* 001612 0x80BCC520 AFA50044 */ sw	$a1, 0X44($sp)
/* 001613 0x80BCC524 904E0F42 */ lbu	$t6, 0XF42($v0)
/* 001614 0x80BCC528 02002025 */ move	$a0, $s0
/* 001615 0x80BCC52C 3C0580BD */ lui	$a1, %hi(D_80BCCCF0)
/* 001616 0x80BCC530 31CF0040 */ andi	$t7, $t6, 0X40
/* 001617 0x80BCC534 15E00009 */ bnez	$t7, .L80BCC55C
/* 001618 0x80BCC538 00000000 */ nop
/* 001619 0x80BCC53C 90580070 */ lbu	$t8, 0X70($v0)
/* 001620 0x80BCC540 240100FF */ li	$at, 0XFF
/* 001621 0x80BCC544 17010005 */ bne	$t8, $at, .L80BCC55C
/* 001622 0x80BCC548 00000000 */ nop
/* 001623 0x80BCC54C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001624 0x80BCC550 02002025 */ move	$a0, $s0
/* 001625 0x80BCC554 10000085 */ b	.L80BCC76C
/* 001626 0x80BCC558 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BCC55C:
/* 001627 0x80BCC55C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 001628 0x80BCC560 24A5CCF0 */ addiu	$a1, $a1, %lo(D_80BCCCF0)
/* 001629 0x80BCC564 26050144 */ addiu	$a1, $s0, 0X144
/* 001630 0x80BCC568 3C060601 */ lui	$a2, 0x0601
/* 001631 0x80BCC56C 3C070600 */ lui	$a3, 0x0600
/* 001632 0x80BCC570 26190188 */ addiu	$t9, $s0, 0X188
/* 001633 0x80BCC574 26080230 */ addiu	$t0, $s0, 0X230
/* 001634 0x80BCC578 2409001C */ li	$t1, 0X1C
/* 001635 0x80BCC57C AFA90018 */ sw	$t1, 0X18($sp)
/* 001636 0x80BCC580 AFA80014 */ sw	$t0, 0X14($sp)
/* 001637 0x80BCC584 AFB90010 */ sw	$t9, 0X10($sp)
/* 001638 0x80BCC588 24E75488 */ addiu	$a3, $a3, 0X5488
/* 001639 0x80BCC58C 24C6AC70 */ addiu	$a2, $a2, -0X5390
/* 001640 0x80BCC590 AFA50034 */ sw	$a1, 0X34($sp)
/* 001641 0x80BCC594 0C04DACC */ jal	SkelAnime_InitSV
/* 001642 0x80BCC598 8FA40044 */ lw	$a0, 0X44($sp)
/* 001643 0x80BCC59C 260502DC */ addiu	$a1, $s0, 0X2DC
/* 001644 0x80BCC5A0 AFA50030 */ sw	$a1, 0X30($sp)
/* 001645 0x80BCC5A4 0C038467 */ jal	Collision_InitCylinderDefault
/* 001646 0x80BCC5A8 8FA40044 */ lw	$a0, 0X44($sp)
/* 001647 0x80BCC5AC 3C0780BD */ lui	$a3, %hi(D_80BCCB40)
/* 001648 0x80BCC5B0 8FA50030 */ lw	$a1, 0X30($sp)
/* 001649 0x80BCC5B4 24E7CB40 */ addiu	$a3, $a3, %lo(D_80BCCB40)
/* 001650 0x80BCC5B8 8FA40044 */ lw	$a0, 0X44($sp)
/* 001651 0x80BCC5BC 0C0384A9 */ jal	func_800E12A4
/* 001652 0x80BCC5C0 02003025 */ move	$a2, $s0
/* 001653 0x80BCC5C4 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 001654 0x80BCC5C8 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 001655 0x80BCC5CC 260400BC */ addiu	$a0, $s0, 0XBC
/* 001656 0x80BCC5D0 24050000 */ li	$a1, 0X0
/* 001657 0x80BCC5D4 0C02CEE9 */ jal	Actor_SetDrawParams
/* 001658 0x80BCC5D8 3C07420C */ lui	$a3, 0x420C
/* 001659 0x80BCC5DC 3C0180BD */ lui	$at, %hi(D_80BCCD74)
/* 001660 0x80BCC5E0 C420CD74 */ lwc1	$f0, %lo(D_80BCCD74)($at)
/* 001661 0x80BCC5E4 02002025 */ move	$a0, $s0
/* 001662 0x80BCC5E8 44050000 */ mfc1	$a1, $f0
/* 001663 0x80BCC5EC 0C02D9F8 */ jal	Actor_SetScale
/* 001664 0x80BCC5F0 E6000350 */ swc1	$f0, 0X350($s0)
/* 001665 0x80BCC5F4 960B0328 */ lhu	$t3, 0X328($s0)
/* 001666 0x80BCC5F8 8603001C */ lh	$v1, 0X1C($s0)
/* 001667 0x80BCC5FC 44802000 */ mtc1	$zero, $f4
/* 001668 0x80BCC600 356D0002 */ ori	$t5, $t3, 0X2
/* 001669 0x80BCC604 306203E0 */ andi	$v0, $v1, 0X3E0
/* 001670 0x80BCC608 240A00FF */ li	$t2, 0XFF
/* 001671 0x80BCC60C A60D0328 */ sh	$t5, 0X328($s0)
/* 001672 0x80BCC610 35AE0004 */ ori	$t6, $t5, 0X4
/* 001673 0x80BCC614 00021143 */ sra	$v0, $v0, 5
/* 001674 0x80BCC618 A60000B0 */ sh	$zero, 0XB0($s0)
/* 001675 0x80BCC61C A20A00B6 */ sb	$t2, 0XB6($s0)
/* 001676 0x80BCC620 A60E0328 */ sh	$t6, 0X328($s0)
/* 001677 0x80BCC624 14400020 */ bnez	$v0, .L80BCC6A8
/* 001678 0x80BCC628 E6040070 */ swc1	$f4, 0X70($s0)
/* 001679 0x80BCC62C 3C0F801F */ lui	$t7, %hi(gSaveContext + 0xF2C)
/* 001680 0x80BCC630 91EF059C */ lbu	$t7, %lo(gSaveContext + 0xF2C)($t7)
/* 001681 0x80BCC634 8FA40044 */ lw	$a0, 0X44($sp)
/* 001682 0x80BCC638 31F80040 */ andi	$t8, $t7, 0X40
/* 001683 0x80BCC63C 53000006 */ beqzl	$t8, .L80BCC658
/* 001684 0x80BCC640 90991CA5 */ lbu	$t9, 0X1CA5($a0)
/* 001685 0x80BCC644 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001686 0x80BCC648 02002025 */ move	$a0, $s0
/* 001687 0x80BCC64C 10000047 */ b	.L80BCC76C
/* 001688 0x80BCC650 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001689 0x80BCC654 90991CA5 */ lbu	$t9, 0X1CA5($a0)
.L80BCC658:
/* 001690 0x80BCC658 3065FC00 */ andi	$a1, $v1, 0XFC00
/* 001691 0x80BCC65C 00052A83 */ sra	$a1, $a1, 10
/* 001692 0x80BCC660 33280002 */ andi	$t0, $t9, 0X2
/* 001693 0x80BCC664 1100000C */ beqz	$t0, .L80BCC698
/* 001694 0x80BCC668 00052C00 */ sll	$a1, $a1, 16
/* 001695 0x80BCC66C 00052C03 */ sra	$a1, $a1, 16
/* 001696 0x80BCC670 0C04F592 */ jal	func_8013D648
/* 001697 0x80BCC674 2406003F */ li	$a2, 0X3F
/* 001698 0x80BCC678 44803000 */ mtc1	$zero, $f6
/* 001699 0x80BCC67C 3C0980BD */ lui	$t1, %hi(func_80BCAFA8)
/* 001700 0x80BCC680 2529AFA8 */ addiu	$t1, $t1, %lo(func_80BCAFA8)
/* 001701 0x80BCC684 AE020330 */ sw	$v0, 0X330($s0)
/* 001702 0x80BCC688 AE00013C */ sw	$zero, 0X13C($s0)
/* 001703 0x80BCC68C AE0902D8 */ sw	$t1, 0X2D8($s0)
/* 001704 0x80BCC690 10000035 */ b	.L80BCC768
/* 001705 0x80BCC694 E6060074 */ swc1	$f6, 0X74($s0)
.L80BCC698:
/* 001706 0x80BCC698 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001707 0x80BCC69C 02002025 */ move	$a0, $s0
/* 001708 0x80BCC6A0 10000032 */ b	.L80BCC76C
/* 001709 0x80BCC6A4 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BCC6A8:
/* 001710 0x80BCC6A8 24010001 */ li	$at, 0X1
/* 001711 0x80BCC6AC 1441002C */ bne	$v0, $at, .L80BCC760
/* 001712 0x80BCC6B0 3C0A801F */ lui	$t2, %hi(gSaveContext + 0xF2C)
/* 001713 0x80BCC6B4 914A059C */ lbu	$t2, %lo(gSaveContext + 0xF2C)($t2)
/* 001714 0x80BCC6B8 3065FC00 */ andi	$a1, $v1, 0XFC00
/* 001715 0x80BCC6BC 00052A83 */ sra	$a1, $a1, 10
/* 001716 0x80BCC6C0 314B0040 */ andi	$t3, $t2, 0X40
/* 001717 0x80BCC6C4 11600022 */ beqz	$t3, .L80BCC750
/* 001718 0x80BCC6C8 8FA40044 */ lw	$a0, 0X44($sp)
/* 001719 0x80BCC6CC 00052C00 */ sll	$a1, $a1, 16
/* 001720 0x80BCC6D0 00052C03 */ sra	$a1, $a1, 16
/* 001721 0x80BCC6D4 0C04F592 */ jal	func_8013D648
/* 001722 0x80BCC6D8 2406003F */ li	$a2, 0X3F
/* 001723 0x80BCC6DC 14400005 */ bnez	$v0, .L80BCC6F4
/* 001724 0x80BCC6E0 AE020330 */ sw	$v0, 0X330($s0)
/* 001725 0x80BCC6E4 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001726 0x80BCC6E8 02002025 */ move	$a0, $s0
/* 001727 0x80BCC6EC 1000001F */ b	.L80BCC76C
/* 001728 0x80BCC6F0 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BCC6F4:
/* 001729 0x80BCC6F4 3C01BF80 */ lui	$at, 0xBF80
/* 001730 0x80BCC6F8 44814000 */ mtc1	$at, $f8
/* 001731 0x80BCC6FC 820D0038 */ lb	$t5, 0X38($s0)
/* 001732 0x80BCC700 3C0C80BD */ lui	$t4, %hi(EnScopenuts_Draw)
/* 001733 0x80BCC704 258CCAAC */ addiu	$t4, $t4, %lo(EnScopenuts_Draw)
/* 001734 0x80BCC708 240E0096 */ li	$t6, 0X96
/* 001735 0x80BCC70C 240F0004 */ li	$t7, 0X4
/* 001736 0x80BCC710 AE0C013C */ sw	$t4, 0X13C($s0)
/* 001737 0x80BCC714 A600033C */ sh	$zero, 0X33C($s0)
/* 001738 0x80BCC718 A60E0358 */ sh	$t6, 0X358($s0)
/* 001739 0x80BCC71C AE0F0348 */ sw	$t7, 0X348($s0)
/* 001740 0x80BCC720 A600035A */ sh	$zero, 0X35A($s0)
/* 001741 0x80BCC724 3C0580BD */ lui	$a1, %hi(D_80BCCB6C)
/* 001742 0x80BCC728 E6080074 */ swc1	$f8, 0X74($s0)
/* 001743 0x80BCC72C A60D0338 */ sh	$t5, 0X338($s0)
/* 001744 0x80BCC730 8FA40034 */ lw	$a0, 0X34($sp)
/* 001745 0x80BCC734 24A5CB6C */ addiu	$a1, $a1, %lo(D_80BCCB6C)
/* 001746 0x80BCC738 0C04EF1B */ jal	func_8013BC6C
/* 001747 0x80BCC73C 24060004 */ li	$a2, 0X4
/* 001748 0x80BCC740 3C1880BD */ lui	$t8, %hi(func_80BCB230)
/* 001749 0x80BCC744 2718B230 */ addiu	$t8, $t8, %lo(func_80BCB230)
/* 001750 0x80BCC748 10000007 */ b	.L80BCC768
/* 001751 0x80BCC74C AE1802D8 */ sw	$t8, 0X2D8($s0)
.L80BCC750:
/* 001752 0x80BCC750 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001753 0x80BCC754 02002025 */ move	$a0, $s0
/* 001754 0x80BCC758 10000004 */ b	.L80BCC76C
/* 001755 0x80BCC75C 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BCC760:
/* 001756 0x80BCC760 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001757 0x80BCC764 02002025 */ move	$a0, $s0
.L80BCC768:
/* 001758 0x80BCC768 8FBF002C */ lw	$ra, 0X2C($sp)
.L80BCC76C:
/* 001759 0x80BCC76C 8FB00028 */ lw	$s0, 0X28($sp)
/* 001760 0x80BCC770 27BD0040 */ addiu	$sp, $sp, 0X40
/* 001761 0x80BCC774 03E00008 */ jr	$ra
/* 001762 0x80BCC778 00000000 */ nop


.section .late_rodata

glabel D_80BCCD74
/* 002145 0x80BCCD74 */ .word	0x3C23D70A
/* 002146 0x80BCCD78 */ .word	0x00000000
/* 002147 0x80BCCD7C */ .word	0x00000000
