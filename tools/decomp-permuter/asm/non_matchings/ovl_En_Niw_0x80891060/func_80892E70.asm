glabel func_80892E70
/* 001924 0x80892E70 AFA40000 */ sw	$a0, 0X0($sp)
/* 001925 0x80892E74 AFA60008 */ sw	$a2, 0X8($sp)
/* 001926 0x80892E78 AFA7000C */ sw	$a3, 0XC($sp)
/* 001927 0x80892E7C 2401000D */ li	$at, 0XD
/* 001928 0x80892E80 14A10009 */ bne	$a1, $at, .L80892EA8
/* 001929 0x80892E84 8FA20014 */ lw	$v0, 0X14($sp)
/* 001930 0x80892E88 C44402E0 */ lwc1	$f4, 0X2E0($v0)
/* 001931 0x80892E8C 8FA30010 */ lw	$v1, 0X10($sp)
/* 001932 0x80892E90 4600218D */ trunc.w.s	$f6, $f4
/* 001933 0x80892E94 846E0002 */ lh	$t6, 0X2($v1)
/* 001934 0x80892E98 44083000 */ mfc1	$t0, $f6
/* 001935 0x80892E9C 00000000 */ nop
/* 001936 0x80892EA0 01C84821 */ addu	$t1, $t6, $t0
/* 001937 0x80892EA4 A4690002 */ sh	$t1, 0X2($v1)
.L80892EA8:
/* 001938 0x80892EA8 2401000F */ li	$at, 0XF
/* 001939 0x80892EAC 8FA20014 */ lw	$v0, 0X14($sp)
/* 001940 0x80892EB0 14A10008 */ bne	$a1, $at, .L80892ED4
/* 001941 0x80892EB4 8FA30010 */ lw	$v1, 0X10($sp)
/* 001942 0x80892EB8 C44802E4 */ lwc1	$f8, 0X2E4($v0)
/* 001943 0x80892EBC 846A0002 */ lh	$t2, 0X2($v1)
/* 001944 0x80892EC0 4600428D */ trunc.w.s	$f10, $f8
/* 001945 0x80892EC4 440F5000 */ mfc1	$t7, $f10
/* 001946 0x80892EC8 00000000 */ nop
/* 001947 0x80892ECC 014FC021 */ addu	$t8, $t2, $t7
/* 001948 0x80892ED0 A4780002 */ sh	$t8, 0X2($v1)
.L80892ED4:
/* 001949 0x80892ED4 2401000B */ li	$at, 0XB
/* 001950 0x80892ED8 54A10017 */ bnel	$a1, $at, .L80892F38
/* 001951 0x80892EDC 24010007 */ li	$at, 0X7
/* 001952 0x80892EE0 C45002DC */ lwc1	$f16, 0X2DC($v0)
/* 001953 0x80892EE4 84790000 */ lh	$t9, 0X0($v1)
/* 001954 0x80892EE8 846D0002 */ lh	$t5, 0X2($v1)
/* 001955 0x80892EEC 4600848D */ trunc.w.s	$f18, $f16
/* 001956 0x80892EF0 84690004 */ lh	$t1, 0X4($v1)
/* 001957 0x80892EF4 440B9000 */ mfc1	$t3, $f18
/* 001958 0x80892EF8 00000000 */ nop
/* 001959 0x80892EFC 032B6021 */ addu	$t4, $t9, $t3
/* 001960 0x80892F00 A46C0000 */ sh	$t4, 0X0($v1)
/* 001961 0x80892F04 C44402D8 */ lwc1	$f4, 0X2D8($v0)
/* 001962 0x80892F08 4600218D */ trunc.w.s	$f6, $f4
/* 001963 0x80892F0C 440E3000 */ mfc1	$t6, $f6
/* 001964 0x80892F10 00000000 */ nop
/* 001965 0x80892F14 01AE4021 */ addu	$t0, $t5, $t6
/* 001966 0x80892F18 A4680002 */ sh	$t0, 0X2($v1)
/* 001967 0x80892F1C C44802D4 */ lwc1	$f8, 0X2D4($v0)
/* 001968 0x80892F20 4600428D */ trunc.w.s	$f10, $f8
/* 001969 0x80892F24 440A5000 */ mfc1	$t2, $f10
/* 001970 0x80892F28 00000000 */ nop
/* 001971 0x80892F2C 012A7821 */ addu	$t7, $t1, $t2
/* 001972 0x80892F30 A46F0004 */ sh	$t7, 0X4($v1)
/* 001973 0x80892F34 24010007 */ li	$at, 0X7
.L80892F38:
/* 001974 0x80892F38 54A10017 */ bnel	$a1, $at, .L80892F98
/* 001975 0x80892F3C 00001025 */ move	$v0, $zero
/* 001976 0x80892F40 C45002D0 */ lwc1	$f16, 0X2D0($v0)
/* 001977 0x80892F44 84780000 */ lh	$t8, 0X0($v1)
/* 001978 0x80892F48 846C0002 */ lh	$t4, 0X2($v1)
/* 001979 0x80892F4C 4600848D */ trunc.w.s	$f18, $f16
/* 001980 0x80892F50 84680004 */ lh	$t0, 0X4($v1)
/* 001981 0x80892F54 44199000 */ mfc1	$t9, $f18
/* 001982 0x80892F58 00000000 */ nop
/* 001983 0x80892F5C 03195821 */ addu	$t3, $t8, $t9
/* 001984 0x80892F60 A46B0000 */ sh	$t3, 0X0($v1)
/* 001985 0x80892F64 C44402CC */ lwc1	$f4, 0X2CC($v0)
/* 001986 0x80892F68 4600218D */ trunc.w.s	$f6, $f4
/* 001987 0x80892F6C 440D3000 */ mfc1	$t5, $f6
/* 001988 0x80892F70 00000000 */ nop
/* 001989 0x80892F74 018D7021 */ addu	$t6, $t4, $t5
/* 001990 0x80892F78 A46E0002 */ sh	$t6, 0X2($v1)
/* 001991 0x80892F7C C44802C8 */ lwc1	$f8, 0X2C8($v0)
/* 001992 0x80892F80 4600428D */ trunc.w.s	$f10, $f8
/* 001993 0x80892F84 44095000 */ mfc1	$t1, $f10
/* 001994 0x80892F88 00000000 */ nop
/* 001995 0x80892F8C 01095021 */ addu	$t2, $t0, $t1
/* 001996 0x80892F90 A46A0004 */ sh	$t2, 0X4($v1)
/* 001997 0x80892F94 00001025 */ move	$v0, $zero
.L80892F98:
/* 001998 0x80892F98 03E00008 */ jr	$ra
/* 001999 0x80892F9C 00000000 */ nop

