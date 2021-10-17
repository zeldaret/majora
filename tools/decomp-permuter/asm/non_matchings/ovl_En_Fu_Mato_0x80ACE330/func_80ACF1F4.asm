glabel func_80ACF1F4
/* 000945 0x80ACF1F4 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000946 0x80ACF1F8 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000947 0x80ACF1FC AFBE0040 */ sw	$fp, 0X40($sp)
/* 000948 0x80ACF200 AFB7003C */ sw	$s7, 0X3C($sp)
/* 000949 0x80ACF204 AFB60038 */ sw	$s6, 0X38($sp)
/* 000950 0x80ACF208 AFB50034 */ sw	$s5, 0X34($sp)
/* 000951 0x80ACF20C AFB40030 */ sw	$s4, 0X30($sp)
/* 000952 0x80ACF210 AFB3002C */ sw	$s3, 0X2C($sp)
/* 000953 0x80ACF214 AFB20028 */ sw	$s2, 0X28($sp)
/* 000954 0x80ACF218 AFB10024 */ sw	$s1, 0X24($sp)
/* 000955 0x80ACF21C AFB00020 */ sw	$s0, 0X20($sp)
/* 000956 0x80ACF220 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000957 0x80ACF224 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000958 0x80ACF228 00803025 */ move	$a2, $a0
/* 000959 0x80ACF22C 24D301B8 */ addiu	$s3, $a2, 0X1B8
/* 000960 0x80ACF230 84D40308 */ lh	$s4, 0X308($a2)
/* 000961 0x80ACF234 8FAE004C */ lw	$t6, 0X4C($sp)
/* 000962 0x80ACF238 8DC40000 */ lw	$a0, 0X0($t6)
/* 000963 0x80ACF23C 0C04B0A3 */ jal	func_8012C28C
/* 000964 0x80ACF240 00808025 */ move	$s0, $a0
/* 000965 0x80ACF244 3C0180AD */ lui	$at, %hi(D_80ACF6A4)
/* 000966 0x80ACF248 3C17DA38 */ lui	$s7, 0xDA38
/* 000967 0x80ACF24C 3C1680AD */ lui	$s6, %hi(D_80ACF63C)
/* 000968 0x80ACF250 26D6F63C */ addiu	$s6, $s6, %lo(D_80ACF63C)
/* 000969 0x80ACF254 36F70003 */ ori	$s7, $s7, 0X3
/* 000970 0x80ACF258 C434F6A4 */ lwc1	$f20, %lo(D_80ACF6A4)($at)
/* 000971 0x80ACF25C 0000A825 */ move	$s5, $zero
/* 000972 0x80ACF260 241E0005 */ li	$fp, 0X5
/* 000973 0x80ACF264 3C12DE00 */ lui	$s2, 0xDE00
.L80ACF268:
/* 000974 0x80ACF268 0C060067 */ jal	SysMatrix_StatePush
/* 000975 0x80ACF26C 00000000 */ nop
/* 000976 0x80ACF270 C66C0000 */ lwc1	$f12, 0X0($s3)
/* 000977 0x80ACF274 C66E0004 */ lwc1	$f14, 0X4($s3)
/* 000978 0x80ACF278 8E660008 */ lw	$a2, 0X8($s3)
/* 000979 0x80ACF27C 0C060594 */ jal	SysMatrix_SetStateRotationAndTranslation
/* 000980 0x80ACF280 26670024 */ addiu	$a3, $s3, 0X24
/* 000981 0x80ACF284 4406A000 */ mfc1	$a2, $f20
/* 000982 0x80ACF288 4600A306 */ mov.s	$f12, $f20
/* 000983 0x80ACF28C 4600A386 */ mov.s	$f14, $f20
/* 000984 0x80ACF290 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000985 0x80ACF294 24070001 */ li	$a3, 0X1
/* 000986 0x80ACF298 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000987 0x80ACF29C 244F0008 */ addiu	$t7, $v0, 0X8
/* 000988 0x80ACF2A0 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 000989 0x80ACF2A4 AC570000 */ sw	$s7, 0X0($v0)
/* 000990 0x80ACF2A8 8FB8004C */ lw	$t8, 0X4C($sp)
/* 000991 0x80ACF2AC 00408825 */ move	$s1, $v0
/* 000992 0x80ACF2B0 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000993 0x80ACF2B4 8F040000 */ lw	$a0, 0X0($t8)
/* 000994 0x80ACF2B8 AE220004 */ sw	$v0, 0X4($s1)
/* 000995 0x80ACF2BC 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 000996 0x80ACF2C0 00144080 */ sll	$t0, $s4, 2
/* 000997 0x80ACF2C4 02C82021 */ addu	$a0, $s6, $t0
/* 000998 0x80ACF2C8 24590008 */ addiu	$t9, $v0, 0X8
/* 000999 0x80ACF2CC AE1902B0 */ sw	$t9, 0X2B0($s0)
/* 001000 0x80ACF2D0 AC520000 */ sw	$s2, 0X0($v0)
/* 001001 0x80ACF2D4 8C890000 */ lw	$t1, 0X0($a0)
/* 001002 0x80ACF2D8 AC490004 */ sw	$t1, 0X4($v0)
/* 001003 0x80ACF2DC 52800006 */ beqzl	$s4, .L80ACF2F8
/* 001004 0x80ACF2E0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001005 0x80ACF2E4 529E0012 */ beql	$s4, $fp, .L80ACF330
/* 001006 0x80ACF2E8 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001007 0x80ACF2EC 1000001E */ b	.L80ACF368
/* 001008 0x80ACF2F0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001009 0x80ACF2F4 8E0202B0 */ lw	$v0, 0X2B0($s0)
.L80ACF2F8:
/* 001010 0x80ACF2F8 244A0008 */ addiu	$t2, $v0, 0X8
/* 001011 0x80ACF2FC AE0A02B0 */ sw	$t2, 0X2B0($s0)
/* 001012 0x80ACF300 AC520000 */ sw	$s2, 0X0($v0)
/* 001013 0x80ACF304 8ECB0014 */ lw	$t3, 0X14($s6)
/* 001014 0x80ACF308 AC4B0004 */ sw	$t3, 0X4($v0)
/* 001015 0x80ACF30C 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001016 0x80ACF310 244C0008 */ addiu	$t4, $v0, 0X8
/* 001017 0x80ACF314 AE0C02B0 */ sw	$t4, 0X2B0($s0)
/* 001018 0x80ACF318 AC520000 */ sw	$s2, 0X0($v0)
/* 001019 0x80ACF31C 8C8D0004 */ lw	$t5, 0X4($a0)
/* 001020 0x80ACF320 AC4D0004 */ sw	$t5, 0X4($v0)
/* 001021 0x80ACF324 1000001B */ b	.L80ACF394
/* 001022 0x80ACF328 00000000 */ nop
/* 001023 0x80ACF32C 8E0202B0 */ lw	$v0, 0X2B0($s0)
.L80ACF330:
/* 001024 0x80ACF330 244E0008 */ addiu	$t6, $v0, 0X8
/* 001025 0x80ACF334 AE0E02B0 */ sw	$t6, 0X2B0($s0)
/* 001026 0x80ACF338 AC520000 */ sw	$s2, 0X0($v0)
/* 001027 0x80ACF33C 8C8FFFFC */ lw	$t7, -0X4($a0)
/* 001028 0x80ACF340 AC4F0004 */ sw	$t7, 0X4($v0)
/* 001029 0x80ACF344 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001030 0x80ACF348 24580008 */ addiu	$t8, $v0, 0X8
/* 001031 0x80ACF34C AE1802B0 */ sw	$t8, 0X2B0($s0)
/* 001032 0x80ACF350 AC520000 */ sw	$s2, 0X0($v0)
/* 001033 0x80ACF354 8ED90000 */ lw	$t9, 0X0($s6)
/* 001034 0x80ACF358 AC590004 */ sw	$t9, 0X4($v0)
/* 001035 0x80ACF35C 1000000D */ b	.L80ACF394
/* 001036 0x80ACF360 00000000 */ nop
/* 001037 0x80ACF364 8E0202B0 */ lw	$v0, 0X2B0($s0)
.L80ACF368:
/* 001038 0x80ACF368 24480008 */ addiu	$t0, $v0, 0X8
/* 001039 0x80ACF36C AE0802B0 */ sw	$t0, 0X2B0($s0)
/* 001040 0x80ACF370 AC520000 */ sw	$s2, 0X0($v0)
/* 001041 0x80ACF374 8C89FFFC */ lw	$t1, -0X4($a0)
/* 001042 0x80ACF378 AC490004 */ sw	$t1, 0X4($v0)
/* 001043 0x80ACF37C 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001044 0x80ACF380 244A0008 */ addiu	$t2, $v0, 0X8
/* 001045 0x80ACF384 AE0A02B0 */ sw	$t2, 0X2B0($s0)
/* 001046 0x80ACF388 AC520000 */ sw	$s2, 0X0($v0)
/* 001047 0x80ACF38C 8C8B0004 */ lw	$t3, 0X4($a0)
/* 001048 0x80ACF390 AC4B0004 */ sw	$t3, 0X4($v0)
.L80ACF394:
/* 001049 0x80ACF394 0C060073 */ jal	SysMatrix_StatePop
/* 001050 0x80ACF398 00000000 */ nop
/* 001051 0x80ACF39C 26940003 */ addiu	$s4, $s4, 0X3
/* 001052 0x80ACF3A0 24010006 */ li	$at, 0X6
/* 001053 0x80ACF3A4 0281001A */ div	$zero, $s4, $at
/* 001054 0x80ACF3A8 24010002 */ li	$at, 0X2
/* 001055 0x80ACF3AC 26B50001 */ addiu	$s5, $s5, 0X1
/* 001056 0x80ACF3B0 0000A010 */ mfhi	$s4
/* 001057 0x80ACF3B4 26730034 */ addiu	$s3, $s3, 0X34
/* 001058 0x80ACF3B8 16A1FFAB */ bne	$s5, $at, .L80ACF268
/* 001059 0x80ACF3BC 00000000 */ nop
/* 001060 0x80ACF3C0 8FBF0044 */ lw	$ra, 0X44($sp)
/* 001061 0x80ACF3C4 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 001062 0x80ACF3C8 8FB00020 */ lw	$s0, 0X20($sp)
/* 001063 0x80ACF3CC 8FB10024 */ lw	$s1, 0X24($sp)
/* 001064 0x80ACF3D0 8FB20028 */ lw	$s2, 0X28($sp)
/* 001065 0x80ACF3D4 8FB3002C */ lw	$s3, 0X2C($sp)
/* 001066 0x80ACF3D8 8FB40030 */ lw	$s4, 0X30($sp)
/* 001067 0x80ACF3DC 8FB50034 */ lw	$s5, 0X34($sp)
/* 001068 0x80ACF3E0 8FB60038 */ lw	$s6, 0X38($sp)
/* 001069 0x80ACF3E4 8FB7003C */ lw	$s7, 0X3C($sp)
/* 001070 0x80ACF3E8 8FBE0040 */ lw	$fp, 0X40($sp)
/* 001071 0x80ACF3EC 03E00008 */ jr	$ra
/* 001072 0x80ACF3F0 27BD0048 */ addiu	$sp, $sp, 0X48


.section .late_rodata

glabel D_80ACF6A4
/* 001245 0x80ACF6A4 */ .word	0x3DCCCCCD
/* 001246 0x80ACF6A8 */ .word	0x00000000
/* 001247 0x80ACF6AC */ .word	0x00000000
