glabel func_80AB97B4
/* 004777 0x80AB97B4 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 004778 0x80AB97B8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 004779 0x80AB97BC AFA40048 */ sw	$a0, 0X48($sp)
/* 004780 0x80AB97C0 AFA60050 */ sw	$a2, 0X50($sp)
/* 004781 0x80AB97C4 AFA70054 */ sw	$a3, 0X54($sp)
/* 004782 0x80AB97C8 24010001 */ li	$at, 0X1
/* 004783 0x80AB97CC 10A10009 */ beq	$a1, $at, .L80AB97F4
/* 004784 0x80AB97D0 8FAE0050 */ lw	$t6, 0X50($sp)
/* 004785 0x80AB97D4 24010002 */ li	$at, 0X2
/* 004786 0x80AB97D8 10A1002B */ beq	$a1, $at, .L80AB9888
/* 004787 0x80AB97DC 8FB90050 */ lw	$t9, 0X50($sp)
/* 004788 0x80AB97E0 24010003 */ li	$at, 0X3
/* 004789 0x80AB97E4 10A1004E */ beq	$a1, $at, .L80AB9920
/* 004790 0x80AB97E8 8FA80050 */ lw	$t0, 0X50($sp)
/* 004791 0x80AB97EC 10000076 */ b	.L80AB99C8
/* 004792 0x80AB97F0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB97F4:
/* 004793 0x80AB97F4 8DCF0000 */ lw	$t7, 0X0($t6)
/* 004794 0x80AB97F8 8FB80048 */ lw	$t8, 0X48($sp)
/* 004795 0x80AB97FC 51E00072 */ beqzl	$t7, .L80AB99C8
/* 004796 0x80AB9800 8FBF0014 */ lw	$ra, 0X14($sp)
/* 004797 0x80AB9804 8F190000 */ lw	$t9, 0X0($t8)
/* 004798 0x80AB9808 0C060067 */ jal	SysMatrix_StatePush
/* 004799 0x80AB980C AFB90040 */ sw	$t9, 0X40($sp)
/* 004800 0x80AB9810 8FA80058 */ lw	$t0, 0X58($sp)
/* 004801 0x80AB9814 24050001 */ li	$a1, 0X1
/* 004802 0x80AB9818 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 004803 0x80AB981C 850403D0 */ lh	$a0, 0X3D0($t0)
/* 004804 0x80AB9820 8FA50040 */ lw	$a1, 0X40($sp)
/* 004805 0x80AB9824 8CA202B0 */ lw	$v0, 0X2B0($a1)
/* 004806 0x80AB9828 3C0ADA38 */ lui	$t2, 0xDA38
/* 004807 0x80AB982C 354A0003 */ ori	$t2, $t2, 0X3
/* 004808 0x80AB9830 24490008 */ addiu	$t1, $v0, 0X8
/* 004809 0x80AB9834 ACA902B0 */ sw	$t1, 0X2B0($a1)
/* 004810 0x80AB9838 AC4A0000 */ sw	$t2, 0X0($v0)
/* 004811 0x80AB983C 8FAB0048 */ lw	$t3, 0X48($sp)
/* 004812 0x80AB9840 8D640000 */ lw	$a0, 0X0($t3)
/* 004813 0x80AB9844 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 004814 0x80AB9848 AFA20038 */ sw	$v0, 0X38($sp)
/* 004815 0x80AB984C 8FA30038 */ lw	$v1, 0X38($sp)
/* 004816 0x80AB9850 AC620004 */ sw	$v0, 0X4($v1)
/* 004817 0x80AB9854 8FAC0040 */ lw	$t4, 0X40($sp)
/* 004818 0x80AB9858 8D8202B0 */ lw	$v0, 0X2B0($t4)
/* 004819 0x80AB985C 3C0EDE00 */ lui	$t6, 0xDE00
/* 004820 0x80AB9860 244D0008 */ addiu	$t5, $v0, 0X8
/* 004821 0x80AB9864 AD8D02B0 */ sw	$t5, 0X2B0($t4)
/* 004822 0x80AB9868 AC4E0000 */ sw	$t6, 0X0($v0)
/* 004823 0x80AB986C 8FAF0050 */ lw	$t7, 0X50($sp)
/* 004824 0x80AB9870 8DF80000 */ lw	$t8, 0X0($t7)
/* 004825 0x80AB9874 AC580004 */ sw	$t8, 0X4($v0)
/* 004826 0x80AB9878 0C060073 */ jal	SysMatrix_StatePop
/* 004827 0x80AB987C 00000000 */ nop
/* 004828 0x80AB9880 10000051 */ b	.L80AB99C8
/* 004829 0x80AB9884 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB9888:
/* 004830 0x80AB9888 8F280000 */ lw	$t0, 0X0($t9)
/* 004831 0x80AB988C 3C013F80 */ lui	$at, 0x3F80
/* 004832 0x80AB9890 8FA90048 */ lw	$t1, 0X48($sp)
/* 004833 0x80AB9894 1100004B */ beqz	$t0, .L80AB99C4
/* 004834 0x80AB9898 8FAA0058 */ lw	$t2, 0X58($sp)
/* 004835 0x80AB989C 44817000 */ mtc1	$at, $f14
/* 004836 0x80AB98A0 24070001 */ li	$a3, 0X1
/* 004837 0x80AB98A4 8D250000 */ lw	$a1, 0X0($t1)
/* 004838 0x80AB98A8 C54403D8 */ lwc1	$f4, 0X3D8($t2)
/* 004839 0x80AB98AC 44067000 */ mfc1	$a2, $f14
/* 004840 0x80AB98B0 AFA50030 */ sw	$a1, 0X30($sp)
/* 004841 0x80AB98B4 0C0600E7 */ jal	SysMatrix_InsertScale
/* 004842 0x80AB98B8 460E2300 */ add.s	$f12, $f4, $f14
/* 004843 0x80AB98BC 8FA50030 */ lw	$a1, 0X30($sp)
/* 004844 0x80AB98C0 8CA202B0 */ lw	$v0, 0X2B0($a1)
/* 004845 0x80AB98C4 3C0DDA38 */ lui	$t5, 0xDA38
/* 004846 0x80AB98C8 35AD0003 */ ori	$t5, $t5, 0X3
/* 004847 0x80AB98CC 244B0008 */ addiu	$t3, $v0, 0X8
/* 004848 0x80AB98D0 ACAB02B0 */ sw	$t3, 0X2B0($a1)
/* 004849 0x80AB98D4 AC4D0000 */ sw	$t5, 0X0($v0)
/* 004850 0x80AB98D8 8FAC0048 */ lw	$t4, 0X48($sp)
/* 004851 0x80AB98DC 8D840000 */ lw	$a0, 0X0($t4)
/* 004852 0x80AB98E0 AFA50030 */ sw	$a1, 0X30($sp)
/* 004853 0x80AB98E4 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 004854 0x80AB98E8 AFA20028 */ sw	$v0, 0X28($sp)
/* 004855 0x80AB98EC 8FA30028 */ lw	$v1, 0X28($sp)
/* 004856 0x80AB98F0 8FA50030 */ lw	$a1, 0X30($sp)
/* 004857 0x80AB98F4 AC620004 */ sw	$v0, 0X4($v1)
/* 004858 0x80AB98F8 8CA202B0 */ lw	$v0, 0X2B0($a1)
/* 004859 0x80AB98FC 3C0FDE00 */ lui	$t7, 0xDE00
/* 004860 0x80AB9900 244E0008 */ addiu	$t6, $v0, 0X8
/* 004861 0x80AB9904 ACAE02B0 */ sw	$t6, 0X2B0($a1)
/* 004862 0x80AB9908 AC4F0000 */ sw	$t7, 0X0($v0)
/* 004863 0x80AB990C 8FB80050 */ lw	$t8, 0X50($sp)
/* 004864 0x80AB9910 8F190000 */ lw	$t9, 0X0($t8)
/* 004865 0x80AB9914 AC590004 */ sw	$t9, 0X4($v0)
/* 004866 0x80AB9918 1000002B */ b	.L80AB99C8
/* 004867 0x80AB991C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB9920:
/* 004868 0x80AB9920 8D090000 */ lw	$t1, 0X0($t0)
/* 004869 0x80AB9924 3C013F80 */ lui	$at, 0x3F80
/* 004870 0x80AB9928 8FAB0058 */ lw	$t3, 0X58($sp)
/* 004871 0x80AB992C 51200023 */ beqzl	$t1, .L80AB99BC
/* 004872 0x80AB9930 8FA40058 */ lw	$a0, 0X58($sp)
/* 004873 0x80AB9934 44816000 */ mtc1	$at, $f12
/* 004874 0x80AB9938 8FAA0048 */ lw	$t2, 0X48($sp)
/* 004875 0x80AB993C C56603D8 */ lwc1	$f6, 0X3D8($t3)
/* 004876 0x80AB9940 8D450000 */ lw	$a1, 0X0($t2)
/* 004877 0x80AB9944 44066000 */ mfc1	$a2, $f12
/* 004878 0x80AB9948 460C3200 */ add.s	$f8, $f6, $f12
/* 004879 0x80AB994C 24070001 */ li	$a3, 0X1
/* 004880 0x80AB9950 AFA50020 */ sw	$a1, 0X20($sp)
/* 004881 0x80AB9954 0C0600E7 */ jal	SysMatrix_InsertScale
/* 004882 0x80AB9958 46086383 */ div.s	$f14, $f12, $f8
/* 004883 0x80AB995C 8FA50020 */ lw	$a1, 0X20($sp)
/* 004884 0x80AB9960 8CA202B0 */ lw	$v0, 0X2B0($a1)
/* 004885 0x80AB9964 3C0CDA38 */ lui	$t4, 0xDA38
/* 004886 0x80AB9968 358C0003 */ ori	$t4, $t4, 0X3
/* 004887 0x80AB996C 244D0008 */ addiu	$t5, $v0, 0X8
/* 004888 0x80AB9970 ACAD02B0 */ sw	$t5, 0X2B0($a1)
/* 004889 0x80AB9974 AC4C0000 */ sw	$t4, 0X0($v0)
/* 004890 0x80AB9978 8FAE0048 */ lw	$t6, 0X48($sp)
/* 004891 0x80AB997C 8DC40000 */ lw	$a0, 0X0($t6)
/* 004892 0x80AB9980 AFA50020 */ sw	$a1, 0X20($sp)
/* 004893 0x80AB9984 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 004894 0x80AB9988 AFA20018 */ sw	$v0, 0X18($sp)
/* 004895 0x80AB998C 8FA30018 */ lw	$v1, 0X18($sp)
/* 004896 0x80AB9990 8FA50020 */ lw	$a1, 0X20($sp)
/* 004897 0x80AB9994 AC620004 */ sw	$v0, 0X4($v1)
/* 004898 0x80AB9998 8CA202B0 */ lw	$v0, 0X2B0($a1)
/* 004899 0x80AB999C 3C18DE00 */ lui	$t8, 0xDE00
/* 004900 0x80AB99A0 244F0008 */ addiu	$t7, $v0, 0X8
/* 004901 0x80AB99A4 ACAF02B0 */ sw	$t7, 0X2B0($a1)
/* 004902 0x80AB99A8 AC580000 */ sw	$t8, 0X0($v0)
/* 004903 0x80AB99AC 8FB90050 */ lw	$t9, 0X50($sp)
/* 004904 0x80AB99B0 8F280000 */ lw	$t0, 0X0($t9)
/* 004905 0x80AB99B4 AC480004 */ sw	$t0, 0X4($v0)
/* 004906 0x80AB99B8 8FA40058 */ lw	$a0, 0X58($sp)
.L80AB99BC:
/* 004907 0x80AB99BC 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 004908 0x80AB99C0 2484036C */ addiu	$a0, $a0, 0X36C
.L80AB99C4:
/* 004909 0x80AB99C4 8FBF0014 */ lw	$ra, 0X14($sp)
.L80AB99C8:
/* 004910 0x80AB99C8 27BD0048 */ addiu	$sp, $sp, 0X48
/* 004911 0x80AB99CC 03E00008 */ jr	$ra
/* 004912 0x80AB99D0 00000000 */ nop

