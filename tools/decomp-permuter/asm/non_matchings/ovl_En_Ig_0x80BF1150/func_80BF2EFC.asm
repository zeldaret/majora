glabel func_80BF2EFC
/* 001899 0x80BF2EFC 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001900 0x80BF2F00 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001901 0x80BF2F04 AFA40040 */ sw	$a0, 0X40($sp)
/* 001902 0x80BF2F08 AFA50044 */ sw	$a1, 0X44($sp)
/* 001903 0x80BF2F0C AFA60048 */ sw	$a2, 0X48($sp)
/* 001904 0x80BF2F10 AFA7004C */ sw	$a3, 0X4C($sp)
/* 001905 0x80BF2F14 8FAE0044 */ lw	$t6, 0X44($sp)
/* 001906 0x80BF2F18 2401000B */ li	$at, 0XB
/* 001907 0x80BF2F1C 3C0480BF */ lui	$a0, %hi(D_80BF3528)
/* 001908 0x80BF2F20 15C10018 */ bne	$t6, $at, .L80BF2F84
/* 001909 0x80BF2F24 8FA50050 */ lw	$a1, 0X50($sp)
/* 001910 0x80BF2F28 24843528 */ addiu	$a0, $a0, %lo(D_80BF3528)
/* 001911 0x80BF2F2C 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001912 0x80BF2F30 24A5003C */ addiu	$a1, $a1, 0X3C
/* 001913 0x80BF2F34 8FA20050 */ lw	$v0, 0X50($sp)
/* 001914 0x80BF2F38 24440048 */ addiu	$a0, $v0, 0X48
/* 001915 0x80BF2F3C 0C03FD4B */ jal	Math_Vec3s_Copy
/* 001916 0x80BF2F40 24450030 */ addiu	$a1, $v0, 0X30
/* 001917 0x80BF2F44 8FA40054 */ lw	$a0, 0X54($sp)
/* 001918 0x80BF2F48 3C05DE00 */ lui	$a1, 0xDE00
/* 001919 0x80BF2F4C 8C820000 */ lw	$v0, 0X0($a0)
/* 001920 0x80BF2F50 3C180601 */ lui	$t8, 0x0601
/* 001921 0x80BF2F54 27188710 */ addiu	$t8, $t8, -0X78F0
/* 001922 0x80BF2F58 244F0008 */ addiu	$t7, $v0, 0X8
/* 001923 0x80BF2F5C AC8F0000 */ sw	$t7, 0X0($a0)
/* 001924 0x80BF2F60 AC580004 */ sw	$t8, 0X4($v0)
/* 001925 0x80BF2F64 AC450000 */ sw	$a1, 0X0($v0)
/* 001926 0x80BF2F68 8C820000 */ lw	$v0, 0X0($a0)
/* 001927 0x80BF2F6C 3C080601 */ lui	$t0, 0x0601
/* 001928 0x80BF2F70 250887B8 */ addiu	$t0, $t0, -0X7848
/* 001929 0x80BF2F74 24590008 */ addiu	$t9, $v0, 0X8
/* 001930 0x80BF2F78 AC990000 */ sw	$t9, 0X0($a0)
/* 001931 0x80BF2F7C AC480004 */ sw	$t0, 0X4($v0)
/* 001932 0x80BF2F80 AC450000 */ sw	$a1, 0X0($v0)
.L80BF2F84:
/* 001933 0x80BF2F84 8FA90044 */ lw	$t1, 0X44($sp)
/* 001934 0x80BF2F88 2401000C */ li	$at, 0XC
/* 001935 0x80BF2F8C 8FA40054 */ lw	$a0, 0X54($sp)
/* 001936 0x80BF2F90 15210008 */ bne	$t1, $at, .L80BF2FB4
/* 001937 0x80BF2F94 3C05DE00 */ lui	$a1, 0xDE00
/* 001938 0x80BF2F98 8C820000 */ lw	$v0, 0X0($a0)
/* 001939 0x80BF2F9C 3C0B0601 */ lui	$t3, 0x0601
/* 001940 0x80BF2FA0 256B89D8 */ addiu	$t3, $t3, -0X7628
/* 001941 0x80BF2FA4 244A0008 */ addiu	$t2, $v0, 0X8
/* 001942 0x80BF2FA8 AC8A0000 */ sw	$t2, 0X0($a0)
/* 001943 0x80BF2FAC AC4B0004 */ sw	$t3, 0X4($v0)
/* 001944 0x80BF2FB0 AC450000 */ sw	$a1, 0X0($v0)
.L80BF2FB4:
/* 001945 0x80BF2FB4 8FAC0044 */ lw	$t4, 0X44($sp)
/* 001946 0x80BF2FB8 24010009 */ li	$at, 0X9
/* 001947 0x80BF2FBC 55810011 */ bnel	$t4, $at, .L80BF3004
/* 001948 0x80BF2FC0 8FAF0044 */ lw	$t7, 0X44($sp)
/* 001949 0x80BF2FC4 8C820000 */ lw	$v0, 0X0($a0)
/* 001950 0x80BF2FC8 3C0E0601 */ lui	$t6, 0x0601
/* 001951 0x80BF2FCC 25CE8B00 */ addiu	$t6, $t6, -0X7500
/* 001952 0x80BF2FD0 244D0008 */ addiu	$t5, $v0, 0X8
/* 001953 0x80BF2FD4 AC8D0000 */ sw	$t5, 0X0($a0)
/* 001954 0x80BF2FD8 AC4E0004 */ sw	$t6, 0X4($v0)
/* 001955 0x80BF2FDC AC450000 */ sw	$a1, 0X0($v0)
/* 001956 0x80BF2FE0 3C0480BF */ lui	$a0, %hi(D_80BF351C)
/* 001957 0x80BF2FE4 2484351C */ addiu	$a0, $a0, %lo(D_80BF351C)
/* 001958 0x80BF2FE8 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001959 0x80BF2FEC 27A5002C */ addiu	$a1, $sp, 0X2C
/* 001960 0x80BF2FF0 8FA40050 */ lw	$a0, 0X50($sp)
/* 001961 0x80BF2FF4 27A5002C */ addiu	$a1, $sp, 0X2C
/* 001962 0x80BF2FF8 0C03FD61 */ jal	Math_Vec3f_ToVec3s
/* 001963 0x80BF2FFC 24840264 */ addiu	$a0, $a0, 0X264
/* 001964 0x80BF3000 8FAF0044 */ lw	$t7, 0X44($sp)
.L80BF3004:
/* 001965 0x80BF3004 2401000A */ li	$at, 0XA
/* 001966 0x80BF3008 8FA40050 */ lw	$a0, 0X50($sp)
/* 001967 0x80BF300C 55E10004 */ bnel	$t7, $at, .L80BF3020
/* 001968 0x80BF3010 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001969 0x80BF3014 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 001970 0x80BF3018 24840190 */ addiu	$a0, $a0, 0X190
/* 001971 0x80BF301C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BF3020:
/* 001972 0x80BF3020 27BD0040 */ addiu	$sp, $sp, 0X40
/* 001973 0x80BF3024 03E00008 */ jr	$ra
/* 001974 0x80BF3028 00000000 */ nop

