glabel func_80C215E4
/* 001597 0x80C215E4 27BDFF98 */ addiu	$sp, $sp, -0X68
/* 001598 0x80C215E8 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001599 0x80C215EC AFA40068 */ sw	$a0, 0X68($sp)
/* 001600 0x80C215F0 AFA5006C */ sw	$a1, 0X6C($sp)
/* 001601 0x80C215F4 AFA60070 */ sw	$a2, 0X70($sp)
/* 001602 0x80C215F8 3C0F80C2 */ lui	$t7, %hi(D_80C21E58)
/* 001603 0x80C215FC 25EF1E58 */ addiu	$t7, $t7, %lo(D_80C21E58)
/* 001604 0x80C21600 8DF90000 */ lw	$t9, 0X0($t7)
/* 001605 0x80C21604 27AE0050 */ addiu	$t6, $sp, 0X50
/* 001606 0x80C21608 8DF80004 */ lw	$t8, 0X4($t7)
/* 001607 0x80C2160C ADD90000 */ sw	$t9, 0X0($t6)
/* 001608 0x80C21610 8DF90008 */ lw	$t9, 0X8($t7)
/* 001609 0x80C21614 3C0980C2 */ lui	$t1, %hi(D_80C21E64)
/* 001610 0x80C21618 25291E64 */ addiu	$t1, $t1, %lo(D_80C21E64)
/* 001611 0x80C2161C ADD80004 */ sw	$t8, 0X4($t6)
/* 001612 0x80C21620 ADD90008 */ sw	$t9, 0X8($t6)
/* 001613 0x80C21624 8D2B0000 */ lw	$t3, 0X0($t1)
/* 001614 0x80C21628 27A80044 */ addiu	$t0, $sp, 0X44
/* 001615 0x80C2162C 8D2A0004 */ lw	$t2, 0X4($t1)
/* 001616 0x80C21630 AD0B0000 */ sw	$t3, 0X0($t0)
/* 001617 0x80C21634 8D2B0008 */ lw	$t3, 0X8($t1)
/* 001618 0x80C21638 AD0A0004 */ sw	$t2, 0X4($t0)
/* 001619 0x80C2163C 0C021BF7 */ jal	randZeroOne
/* 001620 0x80C21640 AD0B0008 */ sw	$t3, 0X8($t0)
/* 001621 0x80C21644 3C013F00 */ lui	$at, 0x3F00
/* 001622 0x80C21648 44812000 */ mtc1	$at, $f4
/* 001623 0x80C2164C 3C0180C2 */ lui	$at, %hi(D_80C21F70)
/* 001624 0x80C21650 C4281F70 */ lwc1	$f8, %lo(D_80C21F70)($at)
/* 001625 0x80C21654 46040181 */ sub.s	$f6, $f0, $f4
/* 001626 0x80C21658 8FAC006C */ lw	$t4, 0X6C($sp)
/* 001627 0x80C2165C 46083302 */ mul.s	$f12, $f6, $f8
/* 001628 0x80C21660 E7AC0040 */ swc1	$f12, 0X40($sp)
/* 001629 0x80C21664 C58A0088 */ lwc1	$f10, 0X88($t4)
/* 001630 0x80C21668 0C05E53B */ jal	sin_rad
/* 001631 0x80C2166C E7AA0060 */ swc1	$f10, 0X60($sp)
/* 001632 0x80C21670 3C014170 */ lui	$at, 0x4170
/* 001633 0x80C21674 44818000 */ mtc1	$at, $f16
/* 001634 0x80C21678 8FAD0070 */ lw	$t5, 0X70($sp)
/* 001635 0x80C2167C C7AC0040 */ lwc1	$f12, 0X40($sp)
/* 001636 0x80C21680 46100482 */ mul.s	$f18, $f0, $f16
/* 001637 0x80C21684 C5A40000 */ lwc1	$f4, 0X0($t5)
/* 001638 0x80C21688 46049180 */ add.s	$f6, $f18, $f4
/* 001639 0x80C2168C 0C05E550 */ jal	cos_rad
/* 001640 0x80C21690 E7A6005C */ swc1	$f6, 0X5C($sp)
/* 001641 0x80C21694 3C014170 */ lui	$at, 0x4170
/* 001642 0x80C21698 44814000 */ mtc1	$at, $f8
/* 001643 0x80C2169C 8FAE0070 */ lw	$t6, 0X70($sp)
/* 001644 0x80C216A0 3C013F80 */ lui	$at, 0x3F80
/* 001645 0x80C216A4 46080282 */ mul.s	$f10, $f0, $f8
/* 001646 0x80C216A8 C5D00008 */ lwc1	$f16, 0X8($t6)
/* 001647 0x80C216AC 44816000 */ mtc1	$at, $f12
/* 001648 0x80C216B0 46105480 */ add.s	$f18, $f10, $f16
/* 001649 0x80C216B4 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 001650 0x80C216B8 E7B20064 */ swc1	$f18, 0X64($sp)
/* 001651 0x80C216BC 3C013F80 */ lui	$at, 0x3F80
/* 001652 0x80C216C0 44816000 */ mtc1	$at, $f12
/* 001653 0x80C216C4 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 001654 0x80C216C8 E7A00044 */ swc1	$f0, 0X44($sp)
/* 001655 0x80C216CC 0C021BF7 */ jal	randZeroOne
/* 001656 0x80C216D0 E7A0004C */ swc1	$f0, 0X4C($sp)
/* 001657 0x80C216D4 3C013F00 */ lui	$at, 0x3F00
/* 001658 0x80C216D8 44812000 */ mtc1	$at, $f4
/* 001659 0x80C216DC 3C014080 */ lui	$at, 0x4080
/* 001660 0x80C216E0 44814000 */ mtc1	$at, $f8
/* 001661 0x80C216E4 46040181 */ sub.s	$f6, $f0, $f4
/* 001662 0x80C216E8 C7B00054 */ lwc1	$f16, 0X54($sp)
/* 001663 0x80C216EC 46083282 */ mul.s	$f10, $f6, $f8
/* 001664 0x80C216F0 460A8480 */ add.s	$f18, $f16, $f10
/* 001665 0x80C216F4 0C021BF7 */ jal	randZeroOne
/* 001666 0x80C216F8 E7B20054 */ swc1	$f18, 0X54($sp)
/* 001667 0x80C216FC 3C0140A0 */ lui	$at, 0x40A0
/* 001668 0x80C21700 44812000 */ mtc1	$at, $f4
/* 001669 0x80C21704 3C014140 */ lui	$at, 0x4140
/* 001670 0x80C21708 44814000 */ mtc1	$at, $f8
/* 001671 0x80C2170C 46040182 */ mul.s	$f6, $f0, $f4
/* 001672 0x80C21710 3C0180C2 */ lui	$at, %hi(D_80C21F74)
/* 001673 0x80C21714 C42A1F74 */ lwc1	$f10, %lo(D_80C21F74)($at)
/* 001674 0x80C21718 2419FFFF */ li	$t9, -0X1
/* 001675 0x80C2171C 2408000A */ li	$t0, 0XA
/* 001676 0x80C21720 AFA8001C */ sw	$t0, 0X1C($sp)
/* 001677 0x80C21724 AFB90018 */ sw	$t9, 0X18($sp)
/* 001678 0x80C21728 46083400 */ add.s	$f16, $f6, $f8
/* 001679 0x80C2172C 8FA40068 */ lw	$a0, 0X68($sp)
/* 001680 0x80C21730 27A5005C */ addiu	$a1, $sp, 0X5C
/* 001681 0x80C21734 27A60050 */ addiu	$a2, $sp, 0X50
/* 001682 0x80C21738 460A8482 */ mul.s	$f18, $f16, $f10
/* 001683 0x80C2173C 27A70044 */ addiu	$a3, $sp, 0X44
/* 001684 0x80C21740 AFA00010 */ sw	$zero, 0X10($sp)
/* 001685 0x80C21744 AFA00020 */ sw	$zero, 0X20($sp)
/* 001686 0x80C21748 4600910D */ trunc.w.s	$f4, $f18
/* 001687 0x80C2174C 44182000 */ mfc1	$t8, $f4
/* 001688 0x80C21750 0C02C867 */ jal	EffectSS_SpawnFragment
/* 001689 0x80C21754 AFB80014 */ sw	$t8, 0X14($sp)
/* 001690 0x80C21758 24090096 */ li	$t1, 0X96
/* 001691 0x80C2175C 240A0001 */ li	$t2, 0X1
/* 001692 0x80C21760 AFAA0018 */ sw	$t2, 0X18($sp)
/* 001693 0x80C21764 AFA90010 */ sw	$t1, 0X10($sp)
/* 001694 0x80C21768 8FA40068 */ lw	$a0, 0X68($sp)
/* 001695 0x80C2176C 27A5005C */ addiu	$a1, $sp, 0X5C
/* 001696 0x80C21770 3C064120 */ lui	$a2, 0x4120
/* 001697 0x80C21774 24070001 */ li	$a3, 0X1
/* 001698 0x80C21778 0C02EFEC */ jal	func_800BBFB0
/* 001699 0x80C2177C AFA00014 */ sw	$zero, 0X14($sp)
/* 001700 0x80C21780 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001701 0x80C21784 27BD0068 */ addiu	$sp, $sp, 0X68
/* 001702 0x80C21788 03E00008 */ jr	$ra
/* 001703 0x80C2178C 00000000 */ nop


.section .late_rodata

glabel D_80C21F70
/* 002208 0x80C21F70 */ .word	0x40C8F5C3
glabel D_80C21F74
/* 002209 0x80C21F74 */ .word	0x3F4CCCCD
/* 002210 0x80C21F78 */ .word	0x00000000
/* 002211 0x80C21F7C */ .word	0x00000000
