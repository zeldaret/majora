glabel func_80B783E0
/* 000796 0x80B783E0 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 000797 0x80B783E4 AFB00020 */ sw	$s0, 0X20($sp)
/* 000798 0x80B783E8 00E08025 */ move	$s0, $a3
/* 000799 0x80B783EC AFBF0024 */ sw	$ra, 0X24($sp)
/* 000800 0x80B783F0 AFA40070 */ sw	$a0, 0X70($sp)
/* 000801 0x80B783F4 AFA60078 */ sw	$a2, 0X78($sp)
/* 000802 0x80B783F8 8FAF0070 */ lw	$t7, 0X70($sp)
/* 000803 0x80B783FC 3C0E0002 */ lui	$t6, 0x0002
/* 000804 0x80B78400 01C57021 */ addu	$t6, $t6, $a1
/* 000805 0x80B78404 8DF802BC */ lw	$t8, 0X2BC($t7)
/* 000806 0x80B78408 8DCE8864 */ lw	$t6, -0X779C($t6)
/* 000807 0x80B7840C 0018C8C0 */ sll	$t9, $t8, 3
/* 000808 0x80B78410 01D91021 */ addu	$v0, $t6, $t9
/* 000809 0x80B78414 90490000 */ lbu	$t1, 0X0($v0)
/* 000810 0x80B78418 AFA90068 */ sw	$t1, 0X68($sp)
/* 000811 0x80B7841C 8C440004 */ lw	$a0, 0X4($v0)
/* 000812 0x80B78420 0C040141 */ jal	Lib_PtrSegToVirt
/* 000813 0x80B78424 AFA2006C */ sw	$v0, 0X6C($sp)
/* 000814 0x80B78428 8FAA0068 */ lw	$t2, 0X68($sp)
/* 000815 0x80B7842C 8FA30070 */ lw	$v1, 0X70($sp)
/* 000816 0x80B78430 00404025 */ move	$t0, $v0
/* 000817 0x80B78434 15400003 */ bnez	$t2, .L80B78444
/* 000818 0x80B78438 26040024 */ addiu	$a0, $s0, 0X24
/* 000819 0x80B7843C 100000C4 */ b	.L80B78750
/* 000820 0x80B78440 00001025 */ move	$v0, $zero
.L80B78444:
/* 000821 0x80B78444 24650024 */ addiu	$a1, $v1, 0X24
/* 000822 0x80B78448 AFA40030 */ sw	$a0, 0X30($sp)
/* 000823 0x80B7844C 0C05E9C8 */ jal	Math3D_Distance
/* 000824 0x80B78450 AFA80064 */ sw	$t0, 0X64($sp)
/* 000825 0x80B78454 3C014448 */ lui	$at, 0x4448
/* 000826 0x80B78458 44812000 */ mtc1	$at, $f4
/* 000827 0x80B7845C 8FA30070 */ lw	$v1, 0X70($sp)
/* 000828 0x80B78460 8FA80064 */ lw	$t0, 0X64($sp)
/* 000829 0x80B78464 4604003C */ c.lt.s	$f0, $f4
/* 000830 0x80B78468 00000000 */ nop
/* 000831 0x80B7846C 45020018 */ bc1fl .L80B784D0
/* 000832 0x80B78470 8E0B0200 */ lw	$t3, 0X200($s0)
/* 000833 0x80B78474 8FAB0078 */ lw	$t3, 0X78($sp)
/* 000834 0x80B78478 55600006 */ bnezl	$t3, .L80B78494
/* 000835 0x80B7847C 8C6F02F4 */ lw	$t7, 0X2F4($v1)
/* 000836 0x80B78480 8C6C02F4 */ lw	$t4, 0X2F4($v1)
/* 000837 0x80B78484 358D0200 */ ori	$t5, $t4, 0X200
/* 000838 0x80B78488 10000004 */ b	.L80B7849C
/* 000839 0x80B7848C AC6D02F4 */ sw	$t5, 0X2F4($v1)
/* 000840 0x80B78490 8C6F02F4 */ lw	$t7, 0X2F4($v1)
.L80B78494:
/* 000841 0x80B78494 35F80400 */ ori	$t8, $t7, 0X400
/* 000842 0x80B78498 AC7802F4 */ sw	$t8, 0X2F4($v1)
.L80B7849C:
/* 000843 0x80B7849C 8FAE0030 */ lw	$t6, 0X30($sp)
/* 000844 0x80B784A0 24020032 */ li	$v0, 0X32
/* 000845 0x80B784A4 240A0001 */ li	$t2, 0X1
/* 000846 0x80B784A8 8DC90000 */ lw	$t1, 0X0($t6)
/* 000847 0x80B784AC AE090540 */ sw	$t1, 0X540($s0)
/* 000848 0x80B784B0 8DD90004 */ lw	$t9, 0X4($t6)
/* 000849 0x80B784B4 AE190544 */ sw	$t9, 0X544($s0)
/* 000850 0x80B784B8 8DC90008 */ lw	$t1, 0X8($t6)
/* 000851 0x80B784BC AE02055C */ sw	$v0, 0X55C($s0)
/* 000852 0x80B784C0 AE020560 */ sw	$v0, 0X560($s0)
/* 000853 0x80B784C4 AE0A0564 */ sw	$t2, 0X564($s0)
/* 000854 0x80B784C8 AE090548 */ sw	$t1, 0X548($s0)
/* 000855 0x80B784CC 8E0B0200 */ lw	$t3, 0X200($s0)
.L80B784D0:
/* 000856 0x80B784D0 AFA80064 */ sw	$t0, 0X64($sp)
/* 000857 0x80B784D4 27A40050 */ addiu	$a0, $sp, 0X50
/* 000858 0x80B784D8 000B6080 */ sll	$t4, $t3, 2
/* 000859 0x80B784DC 018B6023 */ subu	$t4, $t4, $t3
/* 000860 0x80B784E0 000C6040 */ sll	$t4, $t4, 1
/* 000861 0x80B784E4 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000862 0x80B784E8 01882821 */ addu	$a1, $t4, $t0
/* 000863 0x80B784EC 8E030200 */ lw	$v1, 0X200($s0)
/* 000864 0x80B784F0 8FA80064 */ lw	$t0, 0X64($sp)
/* 000865 0x80B784F4 5460000D */ bnezl	$v1, .L80B7852C
/* 000866 0x80B784F8 8FAA006C */ lw	$t2, 0X6C($sp)
/* 000867 0x80B784FC 850D0006 */ lh	$t5, 0X6($t0)
/* 000868 0x80B78500 850F0000 */ lh	$t7, 0X0($t0)
/* 000869 0x80B78504 850E000A */ lh	$t6, 0XA($t0)
/* 000870 0x80B78508 85190004 */ lh	$t9, 0X4($t0)
/* 000871 0x80B7850C 01AFC023 */ subu	$t8, $t5, $t7
/* 000872 0x80B78510 44983000 */ mtc1	$t8, $f6
/* 000873 0x80B78514 01D94823 */ subu	$t1, $t6, $t9
/* 000874 0x80B78518 44894000 */ mtc1	$t1, $f8
/* 000875 0x80B7851C 46803320 */ cvt.s.w	$f12, $f6
/* 000876 0x80B78520 10000022 */ b	.L80B785AC
/* 000877 0x80B78524 468043A0 */ cvt.s.w	$f14, $f8
/* 000878 0x80B78528 8FAA006C */ lw	$t2, 0X6C($sp)
.L80B7852C:
/* 000879 0x80B7852C 246B0001 */ addiu	$t3, $v1, 0X1
/* 000880 0x80B78530 91440000 */ lbu	$a0, 0X0($t2)
/* 000881 0x80B78534 00035080 */ sll	$t2, $v1, 2
/* 000882 0x80B78538 01435023 */ subu	$t2, $t2, $v1
/* 000883 0x80B7853C 148B0010 */ bne	$a0, $t3, .L80B78580
/* 000884 0x80B78540 000A5040 */ sll	$t2, $t2, 1
/* 000885 0x80B78544 00046080 */ sll	$t4, $a0, 2
/* 000886 0x80B78548 01846023 */ subu	$t4, $t4, $a0
/* 000887 0x80B7854C 000C6040 */ sll	$t4, $t4, 1
/* 000888 0x80B78550 010C1021 */ addu	$v0, $t0, $t4
/* 000889 0x80B78554 844DFFFA */ lh	$t5, -0X6($v0)
/* 000890 0x80B78558 844FFFF4 */ lh	$t7, -0XC($v0)
/* 000891 0x80B7855C 844EFFFE */ lh	$t6, -0X2($v0)
/* 000892 0x80B78560 8459FFF8 */ lh	$t9, -0X8($v0)
/* 000893 0x80B78564 01AFC023 */ subu	$t8, $t5, $t7
/* 000894 0x80B78568 44985000 */ mtc1	$t8, $f10
/* 000895 0x80B7856C 01D94823 */ subu	$t1, $t6, $t9
/* 000896 0x80B78570 44898000 */ mtc1	$t1, $f16
/* 000897 0x80B78574 46805320 */ cvt.s.w	$f12, $f10
/* 000898 0x80B78578 1000000C */ b	.L80B785AC
/* 000899 0x80B7857C 468083A0 */ cvt.s.w	$f14, $f16
.L80B78580:
/* 000900 0x80B78580 010A1021 */ addu	$v0, $t0, $t2
/* 000901 0x80B78584 844B0006 */ lh	$t3, 0X6($v0)
/* 000902 0x80B78588 844CFFFA */ lh	$t4, -0X6($v0)
/* 000903 0x80B7858C 844F000A */ lh	$t7, 0XA($v0)
/* 000904 0x80B78590 8458FFFE */ lh	$t8, -0X2($v0)
/* 000905 0x80B78594 016C6823 */ subu	$t5, $t3, $t4
/* 000906 0x80B78598 448D9000 */ mtc1	$t5, $f18
/* 000907 0x80B7859C 01F87023 */ subu	$t6, $t7, $t8
/* 000908 0x80B785A0 448E2000 */ mtc1	$t6, $f4
/* 000909 0x80B785A4 46809320 */ cvt.s.w	$f12, $f18
/* 000910 0x80B785A8 468023A0 */ cvt.s.w	$f14, $f4
.L80B785AC:
/* 000911 0x80B785AC 0C05FFB9 */ jal	atans
/* 000912 0x80B785B0 AFA80064 */ sw	$t0, 0X64($sp)
/* 000913 0x80B785B4 00022C00 */ sll	$a1, $v0, 16
/* 000914 0x80B785B8 27B90044 */ addiu	$t9, $sp, 0X44
/* 000915 0x80B785BC AFB90010 */ sw	$t9, 0X10($sp)
/* 000916 0x80B785C0 00052C03 */ sra	$a1, $a1, 16
/* 000917 0x80B785C4 27A40050 */ addiu	$a0, $sp, 0X50
/* 000918 0x80B785C8 27A6004C */ addiu	$a2, $sp, 0X4C
/* 000919 0x80B785CC 0C05EDFE */ jal	func_8017B7F8
/* 000920 0x80B785D0 27A70048 */ addiu	$a3, $sp, 0X48
/* 000921 0x80B785D4 C6080024 */ lwc1	$f8, 0X24($s0)
/* 000922 0x80B785D8 C7AA004C */ lwc1	$f10, 0X4C($sp)
/* 000923 0x80B785DC C7B20048 */ lwc1	$f18, 0X48($sp)
/* 000924 0x80B785E0 C604002C */ lwc1	$f4, 0X2C($s0)
/* 000925 0x80B785E4 460A4402 */ mul.s	$f16, $f8, $f10
/* 000926 0x80B785E8 44803000 */ mtc1	$zero, $f6
/* 000927 0x80B785EC 8FA80064 */ lw	$t0, 0X64($sp)
/* 000928 0x80B785F0 46049202 */ mul.s	$f8, $f18, $f4
/* 000929 0x80B785F4 C7B20044 */ lwc1	$f18, 0X44($sp)
/* 000930 0x80B785F8 27A40050 */ addiu	$a0, $sp, 0X50
/* 000931 0x80B785FC 46088280 */ add.s	$f10, $f16, $f8
/* 000932 0x80B78600 46125100 */ add.s	$f4, $f10, $f18
/* 000933 0x80B78604 4604303C */ c.lt.s	$f6, $f4
/* 000934 0x80B78608 00000000 */ nop
/* 000935 0x80B7860C 45020010 */ bc1fl .L80B78650
/* 000936 0x80B78610 8FA40030 */ lw	$a0, 0X30($sp)
/* 000937 0x80B78614 8E090200 */ lw	$t1, 0X200($s0)
/* 000938 0x80B78618 25230001 */ addiu	$v1, $t1, 0X1
/* 000939 0x80B7861C AE030200 */ sw	$v1, 0X200($s0)
/* 000940 0x80B78620 8FAB0068 */ lw	$t3, 0X68($sp)
/* 000941 0x80B78624 006B082A */ slt	$at, $v1, $t3
/* 000942 0x80B78628 54200004 */ bnezl	$at, .L80B7863C
/* 000943 0x80B7862C 00036080 */ sll	$t4, $v1, 2
/* 000944 0x80B78630 AE000200 */ sw	$zero, 0X200($s0)
/* 000945 0x80B78634 00001825 */ move	$v1, $zero
/* 000946 0x80B78638 00036080 */ sll	$t4, $v1, 2
.L80B7863C:
/* 000947 0x80B7863C 01836023 */ subu	$t4, $t4, $v1
/* 000948 0x80B78640 000C6040 */ sll	$t4, $t4, 1
/* 000949 0x80B78644 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000950 0x80B78648 01882821 */ addu	$a1, $t4, $t0
/* 000951 0x80B7864C 8FA40030 */ lw	$a0, 0X30($sp)
.L80B78650:
/* 000952 0x80B78650 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000953 0x80B78654 27A50050 */ addiu	$a1, $sp, 0X50
/* 000954 0x80B78658 3C014234 */ lui	$at, 0x4234
/* 000955 0x80B7865C 44818000 */ mtc1	$at, $f16
/* 000956 0x80B78660 A6020032 */ sh	$v0, 0X32($s0)
/* 000957 0x80B78664 86040030 */ lh	$a0, 0X30($s0)
/* 000958 0x80B78668 0C03FB51 */ jal	Math_Coss
/* 000959 0x80B7866C E6100070 */ swc1	$f16, 0X70($s0)
/* 000960 0x80B78670 C6080070 */ lwc1	$f8, 0X70($s0)
/* 000961 0x80B78674 46080282 */ mul.s	$f10, $f0, $f8
/* 000962 0x80B78678 E7AA003C */ swc1	$f10, 0X3C($sp)
/* 000963 0x80B7867C 0C03FB61 */ jal	Math_Sins
/* 000964 0x80B78680 86040032 */ lh	$a0, 0X32($s0)
/* 000965 0x80B78684 C7B2003C */ lwc1	$f18, 0X3C($sp)
/* 000966 0x80B78688 86040030 */ lh	$a0, 0X30($s0)
/* 000967 0x80B7868C 46120182 */ mul.s	$f6, $f0, $f18
/* 000968 0x80B78690 0C03FB61 */ jal	Math_Sins
/* 000969 0x80B78694 E6060064 */ swc1	$f6, 0X64($s0)
/* 000970 0x80B78698 C6040070 */ lwc1	$f4, 0X70($s0)
/* 000971 0x80B7869C 86040032 */ lh	$a0, 0X32($s0)
/* 000972 0x80B786A0 46040402 */ mul.s	$f16, $f0, $f4
/* 000973 0x80B786A4 0C03FB51 */ jal	Math_Coss
/* 000974 0x80B786A8 E6100068 */ swc1	$f16, 0X68($s0)
/* 000975 0x80B786AC C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000976 0x80B786B0 3C013F00 */ lui	$at, 0x3F00
/* 000977 0x80B786B4 44816000 */ mtc1	$at, $f12
/* 000978 0x80B786B8 46080082 */ mul.s	$f2, $f0, $f8
/* 000979 0x80B786BC C6120064 */ lwc1	$f18, 0X64($s0)
/* 000980 0x80B786C0 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000981 0x80B786C4 C61000A4 */ lwc1	$f16, 0XA4($s0)
/* 000982 0x80B786C8 460C9182 */ mul.s	$f6, $f18, $f12
/* 000983 0x80B786CC C6120028 */ lwc1	$f18, 0X28($s0)
/* 000984 0x80B786D0 860400BE */ lh	$a0, 0XBE($s0)
/* 000985 0x80B786D4 860D0032 */ lh	$t5, 0X32($s0)
/* 000986 0x80B786D8 E602006C */ swc1	$f2, 0X6C($s0)
/* 000987 0x80B786DC 00001025 */ move	$v0, $zero
/* 000988 0x80B786E0 01A41823 */ subu	$v1, $t5, $a0
/* 000989 0x80B786E4 46065100 */ add.s	$f4, $f10, $f6
/* 000990 0x80B786E8 C60A0068 */ lwc1	$f10, 0X68($s0)
/* 000991 0x80B786EC 00031C00 */ sll	$v1, $v1, 16
/* 000992 0x80B786F0 00031C03 */ sra	$v1, $v1, 16
/* 000993 0x80B786F4 460C5182 */ mul.s	$f6, $f10, $f12
/* 000994 0x80B786F8 46102200 */ add.s	$f8, $f4, $f16
/* 000995 0x80B786FC C61000A8 */ lwc1	$f16, 0XA8($s0)
/* 000996 0x80B78700 C60A002C */ lwc1	$f10, 0X2C($s0)
/* 000997 0x80B78704 28610191 */ slti	$at, $v1, 0X191
/* 000998 0x80B78708 E6080570 */ swc1	$f8, 0X570($s0)
/* 000999 0x80B7870C 46069100 */ add.s	$f4, $f18, $f6
/* 001000 0x80B78710 460C1482 */ mul.s	$f18, $f2, $f12
/* 001001 0x80B78714 46102200 */ add.s	$f8, $f4, $f16
/* 001002 0x80B78718 C60400AC */ lwc1	$f4, 0XAC($s0)
/* 001003 0x80B7871C 46125180 */ add.s	$f6, $f10, $f18
/* 001004 0x80B78720 E6080574 */ swc1	$f8, 0X574($s0)
/* 001005 0x80B78724 46043400 */ add.s	$f16, $f6, $f4
/* 001006 0x80B78728 14200003 */ bnez	$at, .L80B78738
/* 001007 0x80B7872C E6100578 */ swc1	$f16, 0X578($s0)
/* 001008 0x80B78730 10000005 */ b	.L80B78748
/* 001009 0x80B78734 24030190 */ li	$v1, 0X190
.L80B78738:
/* 001010 0x80B78738 2861FE70 */ slti	$at, $v1, -0X190
/* 001011 0x80B7873C 50200003 */ beqzl	$at, .L80B7874C
/* 001012 0x80B78740 00837821 */ addu	$t7, $a0, $v1
/* 001013 0x80B78744 2403FE70 */ li	$v1, -0X190
.L80B78748:
/* 001014 0x80B78748 00837821 */ addu	$t7, $a0, $v1
.L80B7874C:
/* 001015 0x80B7874C A60F00BE */ sh	$t7, 0XBE($s0)
.L80B78750:
/* 001016 0x80B78750 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001017 0x80B78754 8FB00020 */ lw	$s0, 0X20($sp)
/* 001018 0x80B78758 27BD0070 */ addiu	$sp, $sp, 0X70
/* 001019 0x80B7875C 03E00008 */ jr	$ra
/* 001020 0x80B78760 00000000 */ nop

