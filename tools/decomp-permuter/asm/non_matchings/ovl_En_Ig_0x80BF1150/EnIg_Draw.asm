glabel EnIg_Draw
/* 002039 0x80BF312C 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 002040 0x80BF3130 AFB20038 */ sw	$s2, 0X38($sp)
/* 002041 0x80BF3134 AFB00030 */ sw	$s0, 0X30($sp)
/* 002042 0x80BF3138 00808025 */ move	$s0, $a0
/* 002043 0x80BF313C 00A09025 */ move	$s2, $a1
/* 002044 0x80BF3140 AFBF003C */ sw	$ra, 0X3C($sp)
/* 002045 0x80BF3144 AFB10034 */ sw	$s1, 0X34($sp)
/* 002046 0x80BF3148 920E0298 */ lbu	$t6, 0X298($s0)
/* 002047 0x80BF314C 51C0003E */ beqzl	$t6, .L80BF3248
/* 002048 0x80BF3150 8FBF003C */ lw	$ra, 0X3C($sp)
/* 002049 0x80BF3154 0C04B0A3 */ jal	func_8012C28C
/* 002050 0x80BF3158 8E440000 */ lw	$a0, 0X0($s2)
/* 002051 0x80BF315C 8E510000 */ lw	$s1, 0X0($s2)
/* 002052 0x80BF3160 02402025 */ move	$a0, $s2
/* 002053 0x80BF3164 00002825 */ move	$a1, $zero
/* 002054 0x80BF3168 0C04C77C */ jal	func_80131DF0
/* 002055 0x80BF316C 24060001 */ li	$a2, 0X1
/* 002056 0x80BF3170 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 002057 0x80BF3174 3C18DB06 */ lui	$t8, 0xDB06
/* 002058 0x80BF3178 37180020 */ ori	$t8, $t8, 0X20
/* 002059 0x80BF317C 244F0008 */ addiu	$t7, $v0, 0X8
/* 002060 0x80BF3180 AE2F02B0 */ sw	$t7, 0X2B0($s1)
/* 002061 0x80BF3184 AC580000 */ sw	$t8, 0X0($v0)
/* 002062 0x80BF3188 861903F2 */ lh	$t9, 0X3F2($s0)
/* 002063 0x80BF318C 3C0480BF */ lui	$a0, %hi(D_80BF3534)
/* 002064 0x80BF3190 AFA20044 */ sw	$v0, 0X44($sp)
/* 002065 0x80BF3194 00194080 */ sll	$t0, $t9, 2
/* 002066 0x80BF3198 00882021 */ addu	$a0, $a0, $t0
/* 002067 0x80BF319C 0C040141 */ jal	Lib_PtrSegToVirt
/* 002068 0x80BF31A0 8C843534 */ lw	$a0, %lo(D_80BF3534)($a0)
/* 002069 0x80BF31A4 8FA30044 */ lw	$v1, 0X44($sp)
/* 002070 0x80BF31A8 3C0980BF */ lui	$t1, %hi(func_80BF2EDC)
/* 002071 0x80BF31AC 25292EDC */ addiu	$t1, $t1, %lo(func_80BF2EDC)
/* 002072 0x80BF31B0 AC620004 */ sw	$v0, 0X4($v1)
/* 002073 0x80BF31B4 8E050148 */ lw	$a1, 0X148($s0)
/* 002074 0x80BF31B8 8E060164 */ lw	$a2, 0X164($s0)
/* 002075 0x80BF31BC 92070146 */ lbu	$a3, 0X146($s0)
/* 002076 0x80BF31C0 3C0A80BF */ lui	$t2, %hi(func_80BF2EFC)
/* 002077 0x80BF31C4 3C0B80BF */ lui	$t3, %hi(func_80BF302C)
/* 002078 0x80BF31C8 256B302C */ addiu	$t3, $t3, %lo(func_80BF302C)
/* 002079 0x80BF31CC 254A2EFC */ addiu	$t2, $t2, %lo(func_80BF2EFC)
/* 002080 0x80BF31D0 AFAA0014 */ sw	$t2, 0X14($sp)
/* 002081 0x80BF31D4 AFAB0018 */ sw	$t3, 0X18($sp)
/* 002082 0x80BF31D8 AFB0001C */ sw	$s0, 0X1C($sp)
/* 002083 0x80BF31DC AFA90010 */ sw	$t1, 0X10($sp)
/* 002084 0x80BF31E0 8E2C02B0 */ lw	$t4, 0X2B0($s1)
/* 002085 0x80BF31E4 02402025 */ move	$a0, $s2
/* 002086 0x80BF31E8 0C04EAC0 */ jal	func_8013AB00
/* 002087 0x80BF31EC AFAC0020 */ sw	$t4, 0X20($sp)
/* 002088 0x80BF31F0 AE2202B0 */ sw	$v0, 0X2B0($s1)
/* 002089 0x80BF31F4 0C060083 */ jal	SysMatrix_SetCurrentState
/* 002090 0x80BF31F8 26040190 */ addiu	$a0, $s0, 0X190
/* 002091 0x80BF31FC 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 002092 0x80BF3200 3C0EDA38 */ lui	$t6, 0xDA38
/* 002093 0x80BF3204 35CE0003 */ ori	$t6, $t6, 0X3
/* 002094 0x80BF3208 244D0008 */ addiu	$t5, $v0, 0X8
/* 002095 0x80BF320C AE2D02B0 */ sw	$t5, 0X2B0($s1)
/* 002096 0x80BF3210 AC4E0000 */ sw	$t6, 0X0($v0)
/* 002097 0x80BF3214 8E440000 */ lw	$a0, 0X0($s2)
/* 002098 0x80BF3218 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 002099 0x80BF321C 00408025 */ move	$s0, $v0
/* 002100 0x80BF3220 AE020004 */ sw	$v0, 0X4($s0)
/* 002101 0x80BF3224 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 002102 0x80BF3228 3C190601 */ lui	$t9, 0x0601
/* 002103 0x80BF322C 2739C538 */ addiu	$t9, $t9, -0X3AC8
/* 002104 0x80BF3230 244F0008 */ addiu	$t7, $v0, 0X8
/* 002105 0x80BF3234 AE2F02B0 */ sw	$t7, 0X2B0($s1)
/* 002106 0x80BF3238 3C18DE00 */ lui	$t8, 0xDE00
/* 002107 0x80BF323C AC580000 */ sw	$t8, 0X0($v0)
/* 002108 0x80BF3240 AC590004 */ sw	$t9, 0X4($v0)
/* 002109 0x80BF3244 8FBF003C */ lw	$ra, 0X3C($sp)
.L80BF3248:
/* 002110 0x80BF3248 8FB00030 */ lw	$s0, 0X30($sp)
/* 002111 0x80BF324C 8FB10034 */ lw	$s1, 0X34($sp)
/* 002112 0x80BF3250 8FB20038 */ lw	$s2, 0X38($sp)
/* 002113 0x80BF3254 03E00008 */ jr	$ra
/* 002114 0x80BF3258 27BD0058 */ addiu	$sp, $sp, 0X58
/* 002115 0x80BF325C 00000000 */ nop
