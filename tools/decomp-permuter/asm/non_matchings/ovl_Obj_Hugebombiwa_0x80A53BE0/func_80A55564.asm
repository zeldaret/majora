glabel func_80A55564
/* 001633 0x80A55564 27BDFF48 */ addiu	$sp, $sp, -0XB8
/* 001634 0x80A55568 AFB50064 */ sw	$s5, 0X64($sp)
/* 001635 0x80A5556C AFB20058 */ sw	$s2, 0X58($sp)
/* 001636 0x80A55570 00809025 */ move	$s2, $a0
/* 001637 0x80A55574 00A0A825 */ move	$s5, $a1
/* 001638 0x80A55578 AFBF0074 */ sw	$ra, 0X74($sp)
/* 001639 0x80A5557C AFBE0070 */ sw	$fp, 0X70($sp)
/* 001640 0x80A55580 AFB7006C */ sw	$s7, 0X6C($sp)
/* 001641 0x80A55584 AFB60068 */ sw	$s6, 0X68($sp)
/* 001642 0x80A55588 AFB40060 */ sw	$s4, 0X60($sp)
/* 001643 0x80A5558C AFB3005C */ sw	$s3, 0X5C($sp)
/* 001644 0x80A55590 AFB10054 */ sw	$s1, 0X54($sp)
/* 001645 0x80A55594 AFB00050 */ sw	$s0, 0X50($sp)
/* 001646 0x80A55598 F7BE0048 */ sdc1	$f30, 0X48($sp)
/* 001647 0x80A5559C F7BC0040 */ sdc1	$f28, 0X40($sp)
/* 001648 0x80A555A0 F7BA0038 */ sdc1	$f26, 0X38($sp)
/* 001649 0x80A555A4 F7B80030 */ sdc1	$f24, 0X30($sp)
/* 001650 0x80A555A8 F7B60028 */ sdc1	$f22, 0X28($sp)
/* 001651 0x80A555AC F7B40020 */ sdc1	$f20, 0X20($sp)
/* 001652 0x80A555B0 3C0180A5 */ lui	$at, %hi(D_80A55E28)
/* 001653 0x80A555B4 C43E5E28 */ lwc1	$f30, %lo(D_80A55E28)($at)
/* 001654 0x80A555B8 3C0180A5 */ lui	$at, %hi(D_80A55E2C)
/* 001655 0x80A555BC C43C5E2C */ lwc1	$f28, %lo(D_80A55E2C)($at)
/* 001656 0x80A555C0 3C014270 */ lui	$at, 0x4270
/* 001657 0x80A555C4 4481D000 */ mtc1	$at, $f26
/* 001658 0x80A555C8 3C014040 */ lui	$at, 0x4040
/* 001659 0x80A555CC 865300BE */ lh	$s3, 0XBE($s2)
/* 001660 0x80A555D0 4481C000 */ mtc1	$at, $f24
/* 001661 0x80A555D4 3C014080 */ lui	$at, 0x4080
/* 001662 0x80A555D8 4481B000 */ mtc1	$at, $f22
/* 001663 0x80A555DC 3C01C1F0 */ lui	$at, 0xC1F0
/* 001664 0x80A555E0 2673C000 */ addiu	$s3, $s3, -0X4000
/* 001665 0x80A555E4 00139C00 */ sll	$s3, $s3, 16
/* 001666 0x80A555E8 4481A000 */ mtc1	$at, $f20
/* 001667 0x80A555EC 00139C03 */ sra	$s3, $s3, 16
/* 001668 0x80A555F0 0000B025 */ move	$s6, $zero
/* 001669 0x80A555F4 0240A025 */ move	$s4, $s2
/* 001670 0x80A555F8 27BE009C */ addiu	$fp, $sp, 0X9C
/* 001671 0x80A555FC 24170320 */ li	$s7, 0X320
.L80A55600:
/* 001672 0x80A55600 868E01B4 */ lh	$t6, 0X1B4($s4)
/* 001673 0x80A55604 26900190 */ addiu	$s0, $s4, 0X190
/* 001674 0x80A55608 00132400 */ sll	$a0, $s3, 16
/* 001675 0x80A5560C 55C00057 */ bnezl	$t6, .L80A5576C
/* 001676 0x80A55610 26730666 */ addiu	$s3, $s3, 0X666
/* 001677 0x80A55614 C6040018 */ lwc1	$f4, 0X18($s0)
/* 001678 0x80A55618 26B10830 */ addiu	$s1, $s5, 0X830
/* 001679 0x80A5561C 46182181 */ sub.s	$f6, $f4, $f24
/* 001680 0x80A55620 E6060018 */ swc1	$f6, 0X18($s0)
/* 001681 0x80A55624 C6080018 */ lwc1	$f8, 0X18($s0)
/* 001682 0x80A55628 4614403C */ c.lt.s	$f8, $f20
/* 001683 0x80A5562C 00000000 */ nop
/* 001684 0x80A55630 45000002 */ bc1f .L80A5563C
/* 001685 0x80A55634 00000000 */ nop
/* 001686 0x80A55638 E6140018 */ swc1	$f20, 0X18($s0)
.L80A5563C:
/* 001687 0x80A5563C 0C03FB61 */ jal	Math_Sins
/* 001688 0x80A55640 00042403 */ sra	$a0, $a0, 16
/* 001689 0x80A55644 46160402 */ mul.s	$f16, $f0, $f22
/* 001690 0x80A55648 C60A000C */ lwc1	$f10, 0XC($s0)
/* 001691 0x80A5564C C6040010 */ lwc1	$f4, 0X10($s0)
/* 001692 0x80A55650 C6060018 */ lwc1	$f6, 0X18($s0)
/* 001693 0x80A55654 00132400 */ sll	$a0, $s3, 16
/* 001694 0x80A55658 00042403 */ sra	$a0, $a0, 16
/* 001695 0x80A5565C 46062200 */ add.s	$f8, $f4, $f6
/* 001696 0x80A55660 46105480 */ add.s	$f18, $f10, $f16
/* 001697 0x80A55664 E6080010 */ swc1	$f8, 0X10($s0)
/* 001698 0x80A55668 0C03FB51 */ jal	Math_Coss
/* 001699 0x80A5566C E612000C */ swc1	$f18, 0XC($s0)
/* 001700 0x80A55670 46160402 */ mul.s	$f16, $f0, $f22
/* 001701 0x80A55674 C60A0014 */ lwc1	$f10, 0X14($s0)
/* 001702 0x80A55678 860F001C */ lh	$t7, 0X1C($s0)
/* 001703 0x80A5567C 86180022 */ lh	$t8, 0X22($s0)
/* 001704 0x80A55680 C604000C */ lwc1	$f4, 0XC($s0)
/* 001705 0x80A55684 27A800A4 */ addiu	$t0, $sp, 0XA4
/* 001706 0x80A55688 01F8C821 */ addu	$t9, $t7, $t8
/* 001707 0x80A5568C 46105480 */ add.s	$f18, $f10, $f16
/* 001708 0x80A55690 A619001C */ sh	$t9, 0X1C($s0)
/* 001709 0x80A55694 02202025 */ move	$a0, $s1
/* 001710 0x80A55698 03C02825 */ move	$a1, $fp
/* 001711 0x80A5569C E6120014 */ swc1	$f18, 0X14($s0)
/* 001712 0x80A556A0 E7A400A4 */ swc1	$f4, 0XA4($sp)
/* 001713 0x80A556A4 C6060010 */ lwc1	$f6, 0X10($s0)
/* 001714 0x80A556A8 27A60098 */ addiu	$a2, $sp, 0X98
/* 001715 0x80A556AC 02403825 */ move	$a3, $s2
/* 001716 0x80A556B0 461A3200 */ add.s	$f8, $f6, $f26
/* 001717 0x80A556B4 E7A800A8 */ swc1	$f8, 0XA8($sp)
/* 001718 0x80A556B8 C60A0014 */ lwc1	$f10, 0X14($s0)
/* 001719 0x80A556BC AFA80010 */ sw	$t0, 0X10($sp)
/* 001720 0x80A556C0 0C031047 */ jal	func_800C411C
/* 001721 0x80A556C4 E7AA00AC */ swc1	$f10, 0XAC($sp)
/* 001722 0x80A556C8 461C003E */ c.le.s	$f0, $f28
/* 001723 0x80A556CC 00000000 */ nop
/* 001724 0x80A556D0 45030007 */ bc1tl .L80A556F0
/* 001725 0x80A556D4 864904B0 */ lh	$t1, 0X4B0($s2)
/* 001726 0x80A556D8 C6100010 */ lwc1	$f16, 0X10($s0)
/* 001727 0x80A556DC 4600803C */ c.lt.s	$f16, $f0
/* 001728 0x80A556E0 00000000 */ nop
/* 001729 0x80A556E4 45020021 */ bc1fl .L80A5576C
/* 001730 0x80A556E8 26730666 */ addiu	$s3, $s3, 0X666
/* 001731 0x80A556EC 864904B0 */ lh	$t1, 0X4B0($s2)
.L80A556F0:
/* 001732 0x80A556F0 3C010001 */ lui	$at, 0x0001
/* 001733 0x80A556F4 240B0001 */ li	$t3, 0X1
/* 001734 0x80A556F8 252A0001 */ addiu	$t2, $t1, 0X1
/* 001735 0x80A556FC A64A04B0 */ sh	$t2, 0X4B0($s2)
/* 001736 0x80A55700 C6120004 */ lwc1	$f18, 0X4($s0)
/* 001737 0x80A55704 34218000 */ ori	$at, $at, 0X8000
/* 001738 0x80A55708 A60B0024 */ sh	$t3, 0X24($s0)
/* 001739 0x80A5570C 461E9102 */ mul.s	$f4, $f18, $f30
/* 001740 0x80A55710 02A18821 */ addu	$s1, $s5, $at
/* 001741 0x80A55714 8E060018 */ lw	$a2, 0X18($s0)
/* 001742 0x80A55718 02A02025 */ move	$a0, $s5
/* 001743 0x80A5571C 2605000C */ addiu	$a1, $s0, 0XC
/* 001744 0x80A55720 44072000 */ mfc1	$a3, $f4
/* 001745 0x80A55724 0C295180 */ jal	func_80A54600
/* 001746 0x80A55728 00000000 */ nop
/* 001747 0x80A5572C 8E2C0840 */ lw	$t4, 0X840($s1)
/* 001748 0x80A55730 318D0003 */ andi	$t5, $t4, 0X3
/* 001749 0x80A55734 55A0000D */ bnezl	$t5, .L80A5576C
/* 001750 0x80A55738 26730666 */ addiu	$s3, $s3, 0X666
/* 001751 0x80A5573C 0C021BF7 */ jal	randZeroOne
/* 001752 0x80A55740 00000000 */ nop
/* 001753 0x80A55744 3C0140B0 */ lui	$at, 0x40B0
/* 001754 0x80A55748 44813000 */ mtc1	$at, $f6
/* 001755 0x80A5574C 02402025 */ move	$a0, $s2
/* 001756 0x80A55750 02A02825 */ move	$a1, $s5
/* 001757 0x80A55754 46060202 */ mul.s	$f8, $f0, $f6
/* 001758 0x80A55758 4600428D */ trunc.w.s	$f10, $f8
/* 001759 0x80A5575C 44065000 */ mfc1	$a2, $f10
/* 001760 0x80A55760 0C295260 */ jal	func_80A54980
/* 001761 0x80A55764 24C60001 */ addiu	$a2, $a2, 0X1
/* 001762 0x80A55768 26730666 */ addiu	$s3, $s3, 0X666
.L80A5576C:
/* 001763 0x80A5576C 00139C00 */ sll	$s3, $s3, 16
/* 001764 0x80A55770 26D60028 */ addiu	$s6, $s6, 0X28
/* 001765 0x80A55774 00139C03 */ sra	$s3, $s3, 16
/* 001766 0x80A55778 16D7FFA1 */ bne	$s6, $s7, .L80A55600
/* 001767 0x80A5577C 26940028 */ addiu	$s4, $s4, 0X28
/* 001768 0x80A55780 824F04B2 */ lb	$t7, 0X4B2($s2)
/* 001769 0x80A55784 865904B0 */ lh	$t9, 0X4B0($s2)
/* 001770 0x80A55788 25F8FFFF */ addiu	$t8, $t7, -0X1
/* 001771 0x80A5578C 2B210014 */ slti	$at, $t9, 0X14
/* 001772 0x80A55790 10200004 */ beqz	$at, .L80A557A4
/* 001773 0x80A55794 A25804B2 */ sb	$t8, 0X4B2($s2)
/* 001774 0x80A55798 824804B2 */ lb	$t0, 0X4B2($s2)
/* 001775 0x80A5579C 5D000006 */ bgtzl	$t0, .L80A557B8
/* 001776 0x80A557A0 8FBF0074 */ lw	$ra, 0X74($sp)
.L80A557A4:
/* 001777 0x80A557A4 0C03C7EF */ jal	ActorCutscene_Stop
/* 001778 0x80A557A8 82440038 */ lb	$a0, 0X38($s2)
/* 001779 0x80A557AC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001780 0x80A557B0 02402025 */ move	$a0, $s2
/* 001781 0x80A557B4 8FBF0074 */ lw	$ra, 0X74($sp)
.L80A557B8:
/* 001782 0x80A557B8 D7B40020 */ ldc1	$f20, 0X20($sp)
/* 001783 0x80A557BC D7B60028 */ ldc1	$f22, 0X28($sp)
/* 001784 0x80A557C0 D7B80030 */ ldc1	$f24, 0X30($sp)
/* 001785 0x80A557C4 D7BA0038 */ ldc1	$f26, 0X38($sp)
/* 001786 0x80A557C8 D7BC0040 */ ldc1	$f28, 0X40($sp)
/* 001787 0x80A557CC D7BE0048 */ ldc1	$f30, 0X48($sp)
/* 001788 0x80A557D0 8FB00050 */ lw	$s0, 0X50($sp)
/* 001789 0x80A557D4 8FB10054 */ lw	$s1, 0X54($sp)
/* 001790 0x80A557D8 8FB20058 */ lw	$s2, 0X58($sp)
/* 001791 0x80A557DC 8FB3005C */ lw	$s3, 0X5C($sp)
/* 001792 0x80A557E0 8FB40060 */ lw	$s4, 0X60($sp)
/* 001793 0x80A557E4 8FB50064 */ lw	$s5, 0X64($sp)
/* 001794 0x80A557E8 8FB60068 */ lw	$s6, 0X68($sp)
/* 001795 0x80A557EC 8FB7006C */ lw	$s7, 0X6C($sp)
/* 001796 0x80A557F0 8FBE0070 */ lw	$fp, 0X70($sp)
/* 001797 0x80A557F4 03E00008 */ jr	$ra
/* 001798 0x80A557F8 27BD00B8 */ addiu	$sp, $sp, 0XB8


.section .late_rodata

glabel D_80A55E28
/* 002194 0x80A55E28 */ .word	0x4121999A
glabel D_80A55E2C
/* 002195 0x80A55E2C */ .word	0xC6F9EC00
