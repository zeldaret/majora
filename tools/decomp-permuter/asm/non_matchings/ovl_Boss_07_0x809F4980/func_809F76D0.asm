glabel func_809F76D0
/* 002900 0x809F76D0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002901 0x809F76D4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 002902 0x809F76D8 00802825 */ move	$a1, $a0
/* 002903 0x809F76DC AFBF0014 */ sw	$ra, 0X14($sp)
/* 002904 0x809F76E0 AFA40018 */ sw	$a0, 0X18($sp)
/* 002905 0x809F76E4 24A40190 */ addiu	$a0, $a1, 0X190
/* 002906 0x809F76E8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 002907 0x809F76EC AFA50018 */ sw	$a1, 0X18($sp)
/* 002908 0x809F76F0 8FA50018 */ lw	$a1, 0X18($sp)
/* 002909 0x809F76F4 3C0180A1 */ lui	$at, %hi(D_80A0835C)
/* 002910 0x809F76F8 C420835C */ lwc1	$f0, %lo(D_80A0835C)($at)
/* 002911 0x809F76FC 3C014000 */ lui	$at, 0x4000
/* 002912 0x809F7700 44811000 */ mtc1	$at, $f2
/* 002913 0x809F7704 3C01C170 */ lui	$at, 0xC170
/* 002914 0x809F7708 44816000 */ mtc1	$at, $f12
/* 002915 0x809F770C 44807000 */ mtc1	$zero, $f14
/* 002916 0x809F7710 84AE014C */ lh	$t6, 0X14C($a1)
/* 002917 0x809F7714 24010001 */ li	$at, 0X1
/* 002918 0x809F7718 E4A00794 */ swc1	$f0, 0X794($a1)
/* 002919 0x809F771C E4A00FA0 */ swc1	$f0, 0XFA0($a1)
/* 002920 0x809F7720 E4A20798 */ swc1	$f2, 0X798($a1)
/* 002921 0x809F7724 E4A20FA4 */ swc1	$f2, 0XFA4($a1)
/* 002922 0x809F7728 E4AC0790 */ swc1	$f12, 0X790($a1)
/* 002923 0x809F772C E4AC0F9C */ swc1	$f12, 0XF9C($a1)
/* 002924 0x809F7730 E4AE079C */ swc1	$f14, 0X79C($a1)
/* 002925 0x809F7734 15C10018 */ bne	$t6, $at, .L809F7798
/* 002926 0x809F7738 E4AE0FA8 */ swc1	$f14, 0XFA8($a1)
/* 002927 0x809F773C 3C01420C */ lui	$at, 0x420C
/* 002928 0x809F7740 44812000 */ mtc1	$at, $f4
/* 002929 0x809F7744 C4AC002C */ lwc1	$f12, 0X2C($a1)
/* 002930 0x809F7748 C4AE0024 */ lwc1	$f14, 0X24($a1)
/* 002931 0x809F774C E4A40068 */ swc1	$f4, 0X68($a1)
/* 002932 0x809F7750 AFA50018 */ sw	$a1, 0X18($sp)
/* 002933 0x809F7754 46006307 */ neg.s	$f12, $f12
/* 002934 0x809F7758 0C06004B */ jal	atan_flip
/* 002935 0x809F775C 46007387 */ neg.s	$f14, $f14
/* 002936 0x809F7760 3C0180A1 */ lui	$at, %hi(D_80A08360)
/* 002937 0x809F7764 C4268360 */ lwc1	$f6, %lo(D_80A08360)($at)
/* 002938 0x809F7768 8FA50018 */ lw	$a1, 0X18($sp)
/* 002939 0x809F776C 3C0141A0 */ lui	$at, 0x41A0
/* 002940 0x809F7770 46060202 */ mul.s	$f8, $f0, $f6
/* 002941 0x809F7774 44818000 */ mtc1	$at, $f16
/* 002942 0x809F7778 3C19809F */ lui	$t9, %hi(func_809F77A8)
/* 002943 0x809F777C 273977A8 */ addiu	$t9, $t9, %lo(func_809F77A8)
/* 002944 0x809F7780 ACB90144 */ sw	$t9, 0X144($a1)
/* 002945 0x809F7784 E4B00070 */ swc1	$f16, 0X70($a1)
/* 002946 0x809F7788 4600428D */ trunc.w.s	$f10, $f8
/* 002947 0x809F778C 44185000 */ mfc1	$t8, $f10
/* 002948 0x809F7790 00000000 */ nop
/* 002949 0x809F7794 A4B80032 */ sh	$t8, 0X32($a1)
.L809F7798:
/* 002950 0x809F7798 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002951 0x809F779C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002952 0x809F77A0 03E00008 */ jr	$ra
/* 002953 0x809F77A4 00000000 */ nop

