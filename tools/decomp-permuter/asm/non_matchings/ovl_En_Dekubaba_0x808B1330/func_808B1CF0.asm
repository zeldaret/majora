glabel func_808B1CF0
/* 000624 0x808B1CF0 27BDFF98 */ addiu	$sp, $sp, -0X68
/* 000625 0x808B1CF4 AFB00030 */ sw	$s0, 0X30($sp)
/* 000626 0x808B1CF8 00808025 */ move	$s0, $a0
/* 000627 0x808B1CFC AFBF0034 */ sw	$ra, 0X34($sp)
/* 000628 0x808B1D00 AFA5006C */ sw	$a1, 0X6C($sp)
/* 000629 0x808B1D04 8FAE006C */ lw	$t6, 0X6C($sp)
/* 000630 0x808B1D08 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 000631 0x808B1D0C AFAF0064 */ sw	$t7, 0X64($sp)
/* 000632 0x808B1D10 8602018E */ lh	$v0, 0X18E($s0)
/* 000633 0x808B1D14 10400002 */ beqz	$v0, .L808B1D20
/* 000634 0x808B1D18 2458FFFF */ addiu	$t8, $v0, -0X1
/* 000635 0x808B1D1C A618018E */ sh	$t8, 0X18E($s0)
.L808B1D20:
/* 000636 0x808B1D20 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000637 0x808B1D24 26040144 */ addiu	$a0, $s0, 0X144
/* 000638 0x808B1D28 8619018E */ lh	$t9, 0X18E($s0)
/* 000639 0x808B1D2C 2408000F */ li	$t0, 0XF
/* 000640 0x808B1D30 3C013F00 */ lui	$at, 0x3F00
/* 000641 0x808B1D34 01194823 */ subu	$t1, $t0, $t9
/* 000642 0x808B1D38 44895000 */ mtc1	$t1, $f10
/* 000643 0x808B1D3C 44810000 */ mtc1	$at, $f0
/* 000644 0x808B1D40 3C01808B */ lui	$at, %hi(D_808B4EC0)
/* 000645 0x808B1D44 468054A0 */ cvt.s.w	$f18, $f10
/* 000646 0x808B1D48 C4264EC0 */ lwc1	$f6, %lo(D_808B4EC0)($at)
/* 000647 0x808B1D4C C60401F8 */ lwc1	$f4, 0X1F8($s0)
/* 000648 0x808B1D50 3C014170 */ lui	$at, 0x4170
/* 000649 0x808B1D54 260400BC */ addiu	$a0, $s0, 0XBC
/* 000650 0x808B1D58 46062202 */ mul.s	$f8, $f4, $f6
/* 000651 0x808B1D5C 44813000 */ mtc1	$at, $f6
/* 000652 0x808B1D60 24051800 */ li	$a1, 0X1800
/* 000653 0x808B1D64 46009102 */ mul.s	$f4, $f18, $f0
/* 000654 0x808B1D68 24060800 */ li	$a2, 0X800
/* 000655 0x808B1D6C 46062283 */ div.s	$f10, $f4, $f6
/* 000656 0x808B1D70 460A0480 */ add.s	$f18, $f0, $f10
/* 000657 0x808B1D74 46124082 */ mul.s	$f2, $f8, $f18
/* 000658 0x808B1D78 E6020060 */ swc1	$f2, 0X60($s0)
/* 000659 0x808B1D7C E602005C */ swc1	$f2, 0X5C($s0)
/* 000660 0x808B1D80 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000661 0x808B1D84 E6020058 */ swc1	$f2, 0X58($s0)
/* 000662 0x808B1D88 860A018E */ lh	$t2, 0X18E($s0)
/* 000663 0x808B1D8C 240B000F */ li	$t3, 0XF
/* 000664 0x808B1D90 3C01808B */ lui	$at, %hi(D_808B4EC4)
/* 000665 0x808B1D94 016A6023 */ subu	$t4, $t3, $t2
/* 000666 0x808B1D98 448C2000 */ mtc1	$t4, $f4
/* 000667 0x808B1D9C C4224EC4 */ lwc1	$f2, %lo(D_808B4EC4)($at)
/* 000668 0x808B1DA0 3C01808B */ lui	$at, %hi(D_808B4EC8)
/* 000669 0x808B1DA4 468021A0 */ cvt.s.w	$f6, $f4
/* 000670 0x808B1DA8 C42A4EC8 */ lwc1	$f10, %lo(D_808B4EC8)($at)
/* 000671 0x808B1DAC 3C01808B */ lui	$at, %hi(D_808B4ECC)
/* 000672 0x808B1DB0 460A3002 */ mul.s	$f0, $f6, $f10
/* 000673 0x808B1DB4 4600103C */ c.lt.s	$f2, $f0
/* 000674 0x808B1DB8 00000000 */ nop
/* 000675 0x808B1DBC 45020004 */ bc1fl .L808B1DD0
/* 000676 0x808B1DC0 46000386 */ mov.s	$f14, $f0
/* 000677 0x808B1DC4 10000002 */ b	.L808B1DD0
/* 000678 0x808B1DC8 46001386 */ mov.s	$f14, $f2
/* 000679 0x808B1DCC 46000386 */ mov.s	$f14, $f0
.L808B1DD0:
/* 000680 0x808B1DD0 C4284ECC */ lwc1	$f8, %lo(D_808B4ECC)($at)
/* 000681 0x808B1DD4 46087302 */ mul.s	$f12, $f14, $f8
/* 000682 0x808B1DD8 0C05E53B */ jal	sin_rad
/* 000683 0x808B1DDC 00000000 */ nop
/* 000684 0x808B1DE0 3C014200 */ lui	$at, 0x4200
/* 000685 0x808B1DE4 44819000 */ mtc1	$at, $f18
/* 000686 0x808B1DE8 3C014160 */ lui	$at, 0x4160
/* 000687 0x808B1DEC 44813000 */ mtc1	$at, $f6
/* 000688 0x808B1DF0 46120102 */ mul.s	$f4, $f0, $f18
/* 000689 0x808B1DF4 46062280 */ add.s	$f10, $f4, $f6
/* 000690 0x808B1DF8 E7AA005C */ swc1	$f10, 0X5C($sp)
/* 000691 0x808B1DFC 860200BC */ lh	$v0, 0XBC($s0)
/* 000692 0x808B1E00 2841C71D */ slti	$at, $v0, -0X38E3
/* 000693 0x808B1E04 50200005 */ beqzl	$at, .L808B1E1C
/* 000694 0x808B1E08 2841DC72 */ slti	$at, $v0, -0X238E
/* 000695 0x808B1E0C 44806000 */ mtc1	$zero, $f12
/* 000696 0x808B1E10 10000071 */ b	.L808B1FD8
/* 000697 0x808B1E14 860D018E */ lh	$t5, 0X18E($s0)
/* 000698 0x808B1E18 2841DC72 */ slti	$at, $v0, -0X238E
.L808B1E1C:
/* 000699 0x808B1E1C 1020000C */ beqz	$at, .L808B1E50
/* 000700 0x808B1E20 26040192 */ addiu	$a0, $s0, 0X192
/* 000701 0x808B1E24 2405AAAB */ li	$a1, -0X5555
/* 000702 0x808B1E28 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000703 0x808B1E2C 2406038E */ li	$a2, 0X38E
/* 000704 0x808B1E30 0C03FB51 */ jal	Math_Coss
/* 000705 0x808B1E34 86040192 */ lh	$a0, 0X192($s0)
/* 000706 0x808B1E38 3C0141A0 */ lui	$at, 0x41A0
/* 000707 0x808B1E3C 44818000 */ mtc1	$at, $f16
/* 000708 0x808B1E40 00000000 */ nop
/* 000709 0x808B1E44 46100302 */ mul.s	$f12, $f0, $f16
/* 000710 0x808B1E48 10000063 */ b	.L808B1FD8
/* 000711 0x808B1E4C 860D018E */ lh	$t5, 0X18E($s0)
.L808B1E50:
/* 000712 0x808B1E50 2841F1C8 */ slti	$at, $v0, -0XE38
/* 000713 0x808B1E54 10200031 */ beqz	$at, .L808B1F1C
/* 000714 0x808B1E58 26040192 */ addiu	$a0, $s0, 0X192
/* 000715 0x808B1E5C 26040192 */ addiu	$a0, $s0, 0X192
/* 000716 0x808B1E60 2405F556 */ li	$a1, -0XAAA
/* 000717 0x808B1E64 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000718 0x808B1E68 2406038E */ li	$a2, 0X38E
/* 000719 0x808B1E6C 26040194 */ addiu	$a0, $s0, 0X194
/* 000720 0x808B1E70 2405AAAB */ li	$a1, -0X5555
/* 000721 0x808B1E74 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000722 0x808B1E78 2406038E */ li	$a2, 0X38E
/* 000723 0x808B1E7C 26040196 */ addiu	$a0, $s0, 0X196
/* 000724 0x808B1E80 2405AAAB */ li	$a1, -0X5555
/* 000725 0x808B1E84 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000726 0x808B1E88 24060222 */ li	$a2, 0X222
/* 000727 0x808B1E8C 0C03FB51 */ jal	Math_Coss
/* 000728 0x808B1E90 86040194 */ lh	$a0, 0X194($s0)
/* 000729 0x808B1E94 E7A00040 */ swc1	$f0, 0X40($sp)
/* 000730 0x808B1E98 0C03FB51 */ jal	Math_Coss
/* 000731 0x808B1E9C 86040192 */ lh	$a0, 0X192($s0)
/* 000732 0x808B1EA0 E7A00044 */ swc1	$f0, 0X44($sp)
/* 000733 0x808B1EA4 0C03FB51 */ jal	Math_Coss
/* 000734 0x808B1EA8 86040196 */ lh	$a0, 0X196($s0)
/* 000735 0x808B1EAC E7A00048 */ swc1	$f0, 0X48($sp)
/* 000736 0x808B1EB0 0C03FB61 */ jal	Math_Sins
/* 000737 0x808B1EB4 86040194 */ lh	$a0, 0X194($s0)
/* 000738 0x808B1EB8 86040192 */ lh	$a0, 0X192($s0)
/* 000739 0x808B1EBC 0C03FB61 */ jal	Math_Sins
/* 000740 0x808B1EC0 E7A0004C */ swc1	$f0, 0X4C($sp)
/* 000741 0x808B1EC4 86040196 */ lh	$a0, 0X196($s0)
/* 000742 0x808B1EC8 0C03FB61 */ jal	Math_Sins
/* 000743 0x808B1ECC E7A00050 */ swc1	$f0, 0X50($sp)
/* 000744 0x808B1ED0 C7AE0050 */ lwc1	$f14, 0X50($sp)
/* 000745 0x808B1ED4 C7A2004C */ lwc1	$f2, 0X4C($sp)
/* 000746 0x808B1ED8 3C0141A0 */ lui	$at, 0x41A0
/* 000747 0x808B1EDC 46007487 */ neg.s	$f18, $f14
/* 000748 0x808B1EE0 44818000 */ mtc1	$at, $f16
/* 000749 0x808B1EE4 46029101 */ sub.s	$f4, $f18, $f2
/* 000750 0x808B1EE8 C7A8005C */ lwc1	$f8, 0X5C($sp)
/* 000751 0x808B1EEC C7B20048 */ lwc1	$f18, 0X48($sp)
/* 000752 0x808B1EF0 46048182 */ mul.s	$f6, $f16, $f4
/* 000753 0x808B1EF4 46064281 */ sub.s	$f10, $f8, $f6
/* 000754 0x808B1EF8 46000207 */ neg.s	$f8, $f0
/* 000755 0x808B1EFC 46125102 */ mul.s	$f4, $f10, $f18
/* 000756 0x808B1F00 C7B20040 */ lwc1	$f18, 0X40($sp)
/* 000757 0x808B1F04 C7AA0044 */ lwc1	$f10, 0X44($sp)
/* 000758 0x808B1F08 46082183 */ div.s	$f6, $f4, $f8
/* 000759 0x808B1F0C 46125100 */ add.s	$f4, $f10, $f18
/* 000760 0x808B1F10 46048202 */ mul.s	$f8, $f16, $f4
/* 000761 0x808B1F14 1000002F */ b	.L808B1FD4
/* 000762 0x808B1F18 46083300 */ add.s	$f12, $f6, $f8
.L808B1F1C:
/* 000763 0x808B1F1C 2405F556 */ li	$a1, -0XAAA
/* 000764 0x808B1F20 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000765 0x808B1F24 2406038E */ li	$a2, 0X38E
/* 000766 0x808B1F28 26040194 */ addiu	$a0, $s0, 0X194
/* 000767 0x808B1F2C 2405CE39 */ li	$a1, -0X31C7
/* 000768 0x808B1F30 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000769 0x808B1F34 24060222 */ li	$a2, 0X222
/* 000770 0x808B1F38 26040196 */ addiu	$a0, $s0, 0X196
/* 000771 0x808B1F3C 2405AAAB */ li	$a1, -0X5555
/* 000772 0x808B1F40 0C03FB9C */ jal	Lib_StepTowardsCheckFramerateScaled_s
/* 000773 0x808B1F44 24060222 */ li	$a2, 0X222
/* 000774 0x808B1F48 0C03FB51 */ jal	Math_Coss
/* 000775 0x808B1F4C 86040194 */ lh	$a0, 0X194($s0)
/* 000776 0x808B1F50 E7A00040 */ swc1	$f0, 0X40($sp)
/* 000777 0x808B1F54 0C03FB51 */ jal	Math_Coss
/* 000778 0x808B1F58 86040192 */ lh	$a0, 0X192($s0)
/* 000779 0x808B1F5C E7A00044 */ swc1	$f0, 0X44($sp)
/* 000780 0x808B1F60 0C03FB51 */ jal	Math_Coss
/* 000781 0x808B1F64 86040196 */ lh	$a0, 0X196($s0)
/* 000782 0x808B1F68 E7A00048 */ swc1	$f0, 0X48($sp)
/* 000783 0x808B1F6C 0C03FB61 */ jal	Math_Sins
/* 000784 0x808B1F70 86040194 */ lh	$a0, 0X194($s0)
/* 000785 0x808B1F74 86040192 */ lh	$a0, 0X192($s0)
/* 000786 0x808B1F78 0C03FB61 */ jal	Math_Sins
/* 000787 0x808B1F7C E7A0004C */ swc1	$f0, 0X4C($sp)
/* 000788 0x808B1F80 86040196 */ lh	$a0, 0X196($s0)
/* 000789 0x808B1F84 0C03FB61 */ jal	Math_Sins
/* 000790 0x808B1F88 E7A00050 */ swc1	$f0, 0X50($sp)
/* 000791 0x808B1F8C C7AE0050 */ lwc1	$f14, 0X50($sp)
/* 000792 0x808B1F90 C7A2004C */ lwc1	$f2, 0X4C($sp)
/* 000793 0x808B1F94 3C0141A0 */ lui	$at, 0x41A0
/* 000794 0x808B1F98 46007487 */ neg.s	$f18, $f14
/* 000795 0x808B1F9C 44818000 */ mtc1	$at, $f16
/* 000796 0x808B1FA0 46029101 */ sub.s	$f4, $f18, $f2
/* 000797 0x808B1FA4 C7AA005C */ lwc1	$f10, 0X5C($sp)
/* 000798 0x808B1FA8 C7B20048 */ lwc1	$f18, 0X48($sp)
/* 000799 0x808B1FAC 46048182 */ mul.s	$f6, $f16, $f4
/* 000800 0x808B1FB0 46065201 */ sub.s	$f8, $f10, $f6
/* 000801 0x808B1FB4 46000287 */ neg.s	$f10, $f0
/* 000802 0x808B1FB8 46124102 */ mul.s	$f4, $f8, $f18
/* 000803 0x808B1FBC C7B20040 */ lwc1	$f18, 0X40($sp)
/* 000804 0x808B1FC0 C7A80044 */ lwc1	$f8, 0X44($sp)
/* 000805 0x808B1FC4 460A2183 */ div.s	$f6, $f4, $f10
/* 000806 0x808B1FC8 46124100 */ add.s	$f4, $f8, $f18
/* 000807 0x808B1FCC 46048282 */ mul.s	$f10, $f16, $f4
/* 000808 0x808B1FD0 460A3300 */ add.s	$f12, $f6, $f10
.L808B1FD4:
/* 000809 0x808B1FD4 860D018E */ lh	$t5, 0X18E($s0)
.L808B1FD8:
/* 000810 0x808B1FD8 8FA50064 */ lw	$a1, 0X64($sp)
/* 000811 0x808B1FDC 26040008 */ addiu	$a0, $s0, 0X8
/* 000812 0x808B1FE0 29A1000A */ slti	$at, $t5, 0XA
/* 000813 0x808B1FE4 1020000A */ beqz	$at, .L808B2010
/* 000814 0x808B1FE8 24A50024 */ addiu	$a1, $a1, 0X24
/* 000815 0x808B1FEC 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000816 0x808B1FF0 E7AC0060 */ swc1	$f12, 0X60($sp)
/* 000817 0x808B1FF4 00022C00 */ sll	$a1, $v0, 16
/* 000818 0x808B1FF8 00052C03 */ sra	$a1, $a1, 16
/* 000819 0x808B1FFC 260400BE */ addiu	$a0, $s0, 0XBE
/* 000820 0x808B2000 24060002 */ li	$a2, 0X2
/* 000821 0x808B2004 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 000822 0x808B2008 24070E38 */ li	$a3, 0XE38
/* 000823 0x808B200C C7AC0060 */ lwc1	$f12, 0X60($sp)
.L808B2010:
/* 000824 0x808B2010 C7A8005C */ lwc1	$f8, 0X5C($sp)
/* 000825 0x808B2014 C61201F8 */ lwc1	$f18, 0X1F8($s0)
/* 000826 0x808B2018 C606000C */ lwc1	$f6, 0XC($s0)
/* 000827 0x808B201C 860400BE */ lh	$a0, 0XBE($s0)
/* 000828 0x808B2020 46124102 */ mul.s	$f4, $f8, $f18
/* 000829 0x808B2024 260E0008 */ addiu	$t6, $s0, 0X8
/* 000830 0x808B2028 46043280 */ add.s	$f10, $f6, $f4
/* 000831 0x808B202C E60A0028 */ swc1	$f10, 0X28($s0)
/* 000832 0x808B2030 E7AC0060 */ swc1	$f12, 0X60($sp)
/* 000833 0x808B2034 0C03FB61 */ jal	Math_Sins
/* 000834 0x808B2038 AFAE0038 */ sw	$t6, 0X38($sp)
/* 000835 0x808B203C C7AC0060 */ lwc1	$f12, 0X60($sp)
/* 000836 0x808B2040 C60801F8 */ lwc1	$f8, 0X1F8($s0)
/* 000837 0x808B2044 46086482 */ mul.s	$f18, $f12, $f8
/* 000838 0x808B2048 00000000 */ nop
/* 000839 0x808B204C 46120182 */ mul.s	$f6, $f0, $f18
/* 000840 0x808B2050 E7A60058 */ swc1	$f6, 0X58($sp)
/* 000841 0x808B2054 0C03FB51 */ jal	Math_Coss
/* 000842 0x808B2058 860400BE */ lh	$a0, 0XBE($s0)
/* 000843 0x808B205C C7B20060 */ lwc1	$f18, 0X60($sp)
/* 000844 0x808B2060 C61001F8 */ lwc1	$f16, 0X1F8($s0)
/* 000845 0x808B2064 C60E0008 */ lwc1	$f14, 0X8($s0)
/* 000846 0x808B2068 C7AC0058 */ lwc1	$f12, 0X58($sp)
/* 000847 0x808B206C 46109482 */ mul.s	$f18, $f18, $f16
/* 000848 0x808B2070 C60A0010 */ lwc1	$f10, 0X10($s0)
/* 000849 0x808B2074 460C7300 */ add.s	$f12, $f14, $f12
/* 000850 0x808B2078 3C014040 */ lui	$at, 0x4040
/* 000851 0x808B207C 44817000 */ mtc1	$at, $f14
/* 000852 0x808B2080 3C014140 */ lui	$at, 0x4140
/* 000853 0x808B2084 44814000 */ mtc1	$at, $f8
/* 000854 0x808B2088 46120482 */ mul.s	$f18, $f0, $f18
/* 000855 0x808B208C 3C0140A0 */ lui	$at, 0x40A0
/* 000856 0x808B2090 44813000 */ mtc1	$at, $f6
/* 000857 0x808B2094 460E8382 */ mul.s	$f14, $f16, $f14
/* 000858 0x808B2098 E60C0024 */ swc1	$f12, 0X24($s0)
/* 000859 0x808B209C 24090001 */ li	$t1, 0X1
/* 000860 0x808B20A0 46088202 */ mul.s	$f8, $f16, $f8
/* 000861 0x808B20A4 240BFFFF */ li	$t3, -0X1
/* 000862 0x808B20A8 46125480 */ add.s	$f18, $f10, $f18
/* 000863 0x808B20AC 46068182 */ mul.s	$f6, $f16, $f6
/* 000864 0x808B20B0 44067000 */ mfc1	$a2, $f14
/* 000865 0x808B20B4 240A000A */ li	$t2, 0XA
/* 000866 0x808B20B8 E612002C */ swc1	$f18, 0X2C($s0)
/* 000867 0x808B20BC 8FA4006C */ lw	$a0, 0X6C($sp)
/* 000868 0x808B20C0 8FA50038 */ lw	$a1, 0X38($sp)
/* 000869 0x808B20C4 4600420D */ trunc.w.s	$f8, $f8
/* 000870 0x808B20C8 00003825 */ move	$a3, $zero
/* 000871 0x808B20CC AFA90018 */ sw	$t1, 0X18($sp)
/* 000872 0x808B20D0 4600318D */ trunc.w.s	$f6, $f6
/* 000873 0x808B20D4 44184000 */ mfc1	$t8, $f8
/* 000874 0x808B20D8 AFAB001C */ sw	$t3, 0X1C($sp)
/* 000875 0x808B20DC AFAA0020 */ sw	$t2, 0X20($sp)
/* 000876 0x808B20E0 44193000 */ mfc1	$t9, $f6
/* 000877 0x808B20E4 AFB80010 */ sw	$t8, 0X10($sp)
/* 000878 0x808B20E8 AFA00024 */ sw	$zero, 0X24($sp)
/* 000879 0x808B20EC 0C02C887 */ jal	func_800B221C
/* 000880 0x808B20F0 AFB90014 */ sw	$t9, 0X14($sp)
/* 000881 0x808B20F4 860C018E */ lh	$t4, 0X18E($s0)
/* 000882 0x808B20F8 8FA50064 */ lw	$a1, 0X64($sp)
/* 000883 0x808B20FC 15800011 */ bnez	$t4, .L808B2144
/* 000884 0x808B2100 24A50024 */ addiu	$a1, $a1, 0X24
/* 000885 0x808B2104 0C03FE4B */ jal	Math_Vec3f_DistXZ
/* 000886 0x808B2108 8FA40038 */ lw	$a0, 0X38($sp)
/* 000887 0x808B210C 3C014370 */ lui	$at, 0x4370
/* 000888 0x808B2110 44813000 */ mtc1	$at, $f6
/* 000889 0x808B2114 C60401F8 */ lwc1	$f4, 0X1F8($s0)
/* 000890 0x808B2118 46043282 */ mul.s	$f10, $f6, $f4
/* 000891 0x808B211C 460A003C */ c.lt.s	$f0, $f10
/* 000892 0x808B2120 00000000 */ nop
/* 000893 0x808B2124 45000005 */ bc1f .L808B213C
/* 000894 0x808B2128 00000000 */ nop
/* 000895 0x808B212C 0C22CA24 */ jal	func_808B2890
/* 000896 0x808B2130 02002025 */ move	$a0, $s0
/* 000897 0x808B2134 10000004 */ b	.L808B2148
/* 000898 0x808B2138 8FBF0034 */ lw	$ra, 0X34($sp)
.L808B213C:
/* 000899 0x808B213C 0C22C856 */ jal	func_808B2158
/* 000900 0x808B2140 02002025 */ move	$a0, $s0
.L808B2144:
/* 000901 0x808B2144 8FBF0034 */ lw	$ra, 0X34($sp)
.L808B2148:
/* 000902 0x808B2148 8FB00030 */ lw	$s0, 0X30($sp)
/* 000903 0x808B214C 27BD0068 */ addiu	$sp, $sp, 0X68
/* 000904 0x808B2150 03E00008 */ jr	$ra
/* 000905 0x808B2154 00000000 */ nop


.section .late_rodata

glabel D_808B4EC0
/* 003812 0x808B4EC0 */ .word	0x3C23D70A
glabel D_808B4EC4
/* 003813 0x808B4EC4 */ .word	0x3F333333
glabel D_808B4EC8
/* 003814 0x808B4EC8 */ .word	0x3D888889
glabel D_808B4ECC
/* 003815 0x808B4ECC */ .word	0x40490FDB
