glabel func_80B76ED4
/* 000937 0x80B76ED4 27BDFF78 */ addiu	$sp, $sp, -0X88
/* 000938 0x80B76ED8 AFB00020 */ sw	$s0, 0X20($sp)
/* 000939 0x80B76EDC AFA40088 */ sw	$a0, 0X88($sp)
/* 000940 0x80B76EE0 27A40070 */ addiu	$a0, $sp, 0X70
/* 000941 0x80B76EE4 00E08025 */ move	$s0, $a3
/* 000942 0x80B76EE8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000943 0x80B76EEC AFA5008C */ sw	$a1, 0X8C($sp)
/* 000944 0x80B76EF0 AFA60090 */ sw	$a2, 0X90($sp)
/* 000945 0x80B76EF4 3C0E801D */ lui	$t6, %hi(D_801D15B0)
/* 000946 0x80B76EF8 25CE15B0 */ addiu	$t6, $t6, %lo(D_801D15B0)
/* 000947 0x80B76EFC 8DD80000 */ lw	$t8, 0X0($t6)
/* 000948 0x80B76F00 27A5007C */ addiu	$a1, $sp, 0X7C
/* 000949 0x80B76F04 AC980000 */ sw	$t8, 0X0($a0)
/* 000950 0x80B76F08 8DCF0004 */ lw	$t7, 0X4($t6)
/* 000951 0x80B76F0C AC8F0004 */ sw	$t7, 0X4($a0)
/* 000952 0x80B76F10 8DD80008 */ lw	$t8, 0X8($t6)
/* 000953 0x80B76F14 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000954 0x80B76F18 AC980008 */ sw	$t8, 0X8($a0)
/* 000955 0x80B76F1C 0C06007A */ jal	SysMatrix_CopyCurrentState
/* 000956 0x80B76F20 27A40028 */ addiu	$a0, $sp, 0X28
/* 000957 0x80B76F24 27A40028 */ addiu	$a0, $sp, 0X28
/* 000958 0x80B76F28 27A50068 */ addiu	$a1, $sp, 0X68
/* 000959 0x80B76F2C 0C060867 */ jal	func_8018219C
/* 000960 0x80B76F30 00003025 */ move	$a2, $zero
/* 000961 0x80B76F34 27A8007C */ addiu	$t0, $sp, 0X7C
/* 000962 0x80B76F38 8D0A0000 */ lw	$t2, 0X0($t0)
/* 000963 0x80B76F3C 8FB90090 */ lw	$t9, 0X90($sp)
/* 000964 0x80B76F40 02002025 */ move	$a0, $s0
/* 000965 0x80B76F44 24060004 */ li	$a2, 0X4
/* 000966 0x80B76F48 AF2A0000 */ sw	$t2, 0X0($t9)
/* 000967 0x80B76F4C 8D090004 */ lw	$t1, 0X4($t0)
/* 000968 0x80B76F50 24071FFE */ li	$a3, 0X1FFE
/* 000969 0x80B76F54 24180001 */ li	$t8, 0X1
/* 000970 0x80B76F58 AF290004 */ sw	$t1, 0X4($t9)
/* 000971 0x80B76F5C 8D0A0008 */ lw	$t2, 0X8($t0)
/* 000972 0x80B76F60 AF2A0008 */ sw	$t2, 0X8($t9)
/* 000973 0x80B76F64 8FAB0098 */ lw	$t3, 0X98($sp)
/* 000974 0x80B76F68 87A50068 */ lh	$a1, 0X68($sp)
/* 000975 0x80B76F6C 87AC008A */ lh	$t4, 0X8A($sp)
/* 000976 0x80B76F70 1160001B */ beqz	$t3, .L80B76FE0
/* 000977 0x80B76F74 87A90068 */ lh	$t1, 0X68($sp)
/* 000978 0x80B76F78 87AD006A */ lh	$t5, 0X6A($sp)
/* 000979 0x80B76F7C 87AE008E */ lh	$t6, 0X8E($sp)
/* 000980 0x80B76F80 00AC2821 */ addu	$a1, $a1, $t4
/* 000981 0x80B76F84 00052C00 */ sll	$a1, $a1, 16
/* 000982 0x80B76F88 00052C03 */ sra	$a1, $a1, 16
/* 000983 0x80B76F8C 01AE7821 */ addu	$t7, $t5, $t6
/* 000984 0x80B76F90 A7AF006A */ sh	$t7, 0X6A($sp)
/* 000985 0x80B76F94 A7A50068 */ sh	$a1, 0X68($sp)
/* 000986 0x80B76F98 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000987 0x80B76F9C AFB80010 */ sw	$t8, 0X10($sp)
/* 000988 0x80B76FA0 24190001 */ li	$t9, 0X1
/* 000989 0x80B76FA4 AFB90010 */ sw	$t9, 0X10($sp)
/* 000990 0x80B76FA8 26040002 */ addiu	$a0, $s0, 0X2
/* 000991 0x80B76FAC 87A5006A */ lh	$a1, 0X6A($sp)
/* 000992 0x80B76FB0 24060004 */ li	$a2, 0X4
/* 000993 0x80B76FB4 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000994 0x80B76FB8 24071FFE */ li	$a3, 0X1FFE
/* 000995 0x80B76FBC 24080001 */ li	$t0, 0X1
/* 000996 0x80B76FC0 AFA80010 */ sw	$t0, 0X10($sp)
/* 000997 0x80B76FC4 26040004 */ addiu	$a0, $s0, 0X4
/* 000998 0x80B76FC8 87A5006C */ lh	$a1, 0X6C($sp)
/* 000999 0x80B76FCC 24060004 */ li	$a2, 0X4
/* 001000 0x80B76FD0 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001001 0x80B76FD4 24071FFE */ li	$a3, 0X1FFE
/* 001002 0x80B76FD8 10000007 */ b	.L80B76FF8
/* 001003 0x80B76FDC 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B76FE0:
/* 001004 0x80B76FE0 A6090000 */ sh	$t1, 0X0($s0)
/* 001005 0x80B76FE4 87AA006A */ lh	$t2, 0X6A($sp)
/* 001006 0x80B76FE8 A60A0002 */ sh	$t2, 0X2($s0)
/* 001007 0x80B76FEC 87AB006C */ lh	$t3, 0X6C($sp)
/* 001008 0x80B76FF0 A60B0004 */ sh	$t3, 0X4($s0)
/* 001009 0x80B76FF4 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B76FF8:
/* 001010 0x80B76FF8 8FB00020 */ lw	$s0, 0X20($sp)
/* 001011 0x80B76FFC 27BD0088 */ addiu	$sp, $sp, 0X88
/* 001012 0x80B77000 03E00008 */ jr	$ra
/* 001013 0x80B77004 00000000 */ nop

