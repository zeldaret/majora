.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80C25D40
/* 000000 0x80C25D40 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80C25D44 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80C25D48 AFA40018 */ sw	$a0, 0X18($sp)
/* 000003 0x80C25D4C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000004 0x80C25D50 3C0580C2 */ lui	$a1, %hi(D_80C26010)
/* 000005 0x80C25D54 24A56010 */ addiu	$a1, $a1, %lo(D_80C26010)
/* 000006 0x80C25D58 00003025 */ move	$a2, $zero
/* 000007 0x80C25D5C 0C02F717 */ jal	func_800BDC5C
/* 000008 0x80C25D60 24840190 */ addiu	$a0, $a0, 0X190
/* 000009 0x80C25D64 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000010 0x80C25D68 3C0E80C2 */ lui	$t6, %hi(func_80C25D84)
/* 000011 0x80C25D6C 25CE5D84 */ addiu	$t6, $t6, %lo(func_80C25D84)
/* 000012 0x80C25D70 ADEE01D4 */ sw	$t6, 0X1D4($t7)
/* 000013 0x80C25D74 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000014 0x80C25D78 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000015 0x80C25D7C 03E00008 */ jr	$ra
/* 000016 0x80C25D80 00000000 */ nop

glabel func_80C25D84
/* 000017 0x80C25D84 AFA40000 */ sw	$a0, 0X0($sp)
/* 000018 0x80C25D88 AFA50004 */ sw	$a1, 0X4($sp)
/* 000019 0x80C25D8C 03E00008 */ jr	$ra
/* 000020 0x80C25D90 00000000 */ nop

glabel EnRsn_Init
/* 000021 0x80C25D94 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000022 0x80C25D98 AFB00028 */ sw	$s0, 0X28($sp)
/* 000023 0x80C25D9C 00808025 */ move	$s0, $a0
/* 000024 0x80C25DA0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000025 0x80C25DA4 AFA50034 */ sw	$a1, 0X34($sp)
/* 000026 0x80C25DA8 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000027 0x80C25DAC 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000028 0x80C25DB0 260400BC */ addiu	$a0, $s0, 0XBC
/* 000029 0x80C25DB4 24050000 */ li	$a1, 0X0
/* 000030 0x80C25DB8 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000031 0x80C25DBC 3C0741A0 */ lui	$a3, 0x41A0
/* 000032 0x80C25DC0 3C060601 */ lui	$a2, 0x0601
/* 000033 0x80C25DC4 3C070601 */ lui	$a3, 0x0601
/* 000034 0x80C25DC8 24E79120 */ addiu	$a3, $a3, -0X6EE0
/* 000035 0x80C25DCC 24C69220 */ addiu	$a2, $a2, -0X6DE0
/* 000036 0x80C25DD0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000037 0x80C25DD4 26050190 */ addiu	$a1, $s0, 0X190
/* 000038 0x80C25DD8 AFA00010 */ sw	$zero, 0X10($sp)
/* 000039 0x80C25DDC AFA00014 */ sw	$zero, 0X14($sp)
/* 000040 0x80C25DE0 0C04DACC */ jal	SkelAnime_InitSV
/* 000041 0x80C25DE4 AFA00018 */ sw	$zero, 0X18($sp)
/* 000042 0x80C25DE8 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000043 0x80C25DEC 2401FFFE */ li	$at, -0X2
/* 000044 0x80C25DF0 02002025 */ move	$a0, $s0
/* 000045 0x80C25DF4 01C17824 */ and	$t7, $t6, $at
/* 000046 0x80C25DF8 0C309750 */ jal	func_80C25D40
/* 000047 0x80C25DFC AE0F0004 */ sw	$t7, 0X4($s0)
/* 000048 0x80C25E00 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000049 0x80C25E04 8FB00028 */ lw	$s0, 0X28($sp)
/* 000050 0x80C25E08 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000051 0x80C25E0C 03E00008 */ jr	$ra
/* 000052 0x80C25E10 00000000 */ nop

glabel EnRsn_Destroy
/* 000053 0x80C25E14 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000054 0x80C25E18 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000055 0x80C25E1C 00803025 */ move	$a2, $a0
/* 000056 0x80C25E20 0C04DE38 */ jal	SkelAnime_Free
/* 000057 0x80C25E24 24C40190 */ addiu	$a0, $a2, 0X190
/* 000058 0x80C25E28 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000059 0x80C25E2C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000060 0x80C25E30 03E00008 */ jr	$ra
/* 000061 0x80C25E34 00000000 */ nop

glabel EnRsn_Update
/* 000062 0x80C25E38 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000063 0x80C25E3C AFB00028 */ sw	$s0, 0X28($sp)
/* 000064 0x80C25E40 00808025 */ move	$s0, $a0
/* 000065 0x80C25E44 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000066 0x80C25E48 AFA50034 */ sw	$a1, 0X34($sp)
/* 000067 0x80C25E4C 8E1901D4 */ lw	$t9, 0X1D4($s0)
/* 000068 0x80C25E50 02002025 */ move	$a0, $s0
/* 000069 0x80C25E54 8FA50034 */ lw	$a1, 0X34($sp)
/* 000070 0x80C25E58 0320F809 */ jalr	$t9
/* 000071 0x80C25E5C 00000000 */ nop
/* 000072 0x80C25E60 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000073 0x80C25E64 02002025 */ move	$a0, $s0
/* 000074 0x80C25E68 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000075 0x80C25E6C 26040190 */ addiu	$a0, $s0, 0X190
/* 000076 0x80C25E70 8E0F003C */ lw	$t7, 0X3C($s0)
/* 000077 0x80C25E74 8FA40034 */ lw	$a0, 0X34($sp)
/* 000078 0x80C25E78 02002825 */ move	$a1, $s0
/* 000079 0x80C25E7C AFAF0010 */ sw	$t7, 0X10($sp)
/* 000080 0x80C25E80 8E0E0040 */ lw	$t6, 0X40($s0)
/* 000081 0x80C25E84 260601D8 */ addiu	$a2, $s0, 0X1D8
/* 000082 0x80C25E88 260701DE */ addiu	$a3, $s0, 0X1DE
/* 000083 0x80C25E8C AFAE0014 */ sw	$t6, 0X14($sp)
/* 000084 0x80C25E90 8E0F0044 */ lw	$t7, 0X44($s0)
/* 000085 0x80C25E94 0C03A494 */ jal	func_800E9250
/* 000086 0x80C25E98 AFAF0018 */ sw	$t7, 0X18($sp)
/* 000087 0x80C25E9C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000088 0x80C25EA0 8FB00028 */ lw	$s0, 0X28($sp)
/* 000089 0x80C25EA4 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000090 0x80C25EA8 03E00008 */ jr	$ra
/* 000091 0x80C25EAC 00000000 */ nop

glabel EnRsn_OverrideLimbDraw
/* 000092 0x80C25EB0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000093 0x80C25EB4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000094 0x80C25EB8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000095 0x80C25EBC AFA60020 */ sw	$a2, 0X20($sp)
/* 000096 0x80C25EC0 AFA70024 */ sw	$a3, 0X24($sp)
/* 000097 0x80C25EC4 2401000E */ li	$at, 0XE
/* 000098 0x80C25EC8 14A10004 */ bne	$a1, $at, .L80C25EDC
/* 000099 0x80C25ECC 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000100 0x80C25ED0 85C401DA */ lh	$a0, 0X1DA($t6)
/* 000101 0x80C25ED4 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000102 0x80C25ED8 24050001 */ li	$a1, 0X1
.L80C25EDC:
/* 000103 0x80C25EDC 00001025 */ move	$v0, $zero
/* 000104 0x80C25EE0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000105 0x80C25EE4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000106 0x80C25EE8 03E00008 */ jr	$ra
/* 000107 0x80C25EEC 00000000 */ nop

glabel EnRsn_PostLimbDraw
/* 000108 0x80C25EF0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000109 0x80C25EF4 AFA40028 */ sw	$a0, 0X28($sp)
/* 000110 0x80C25EF8 27A40018 */ addiu	$a0, $sp, 0X18
/* 000111 0x80C25EFC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000112 0x80C25F00 AFA60030 */ sw	$a2, 0X30($sp)
/* 000113 0x80C25F04 AFA70034 */ sw	$a3, 0X34($sp)
/* 000114 0x80C25F08 3C0E80C2 */ lui	$t6, %hi(D_80C26028)
/* 000115 0x80C25F0C 25CE6028 */ addiu	$t6, $t6, %lo(D_80C26028)
/* 000116 0x80C25F10 8DD80000 */ lw	$t8, 0X0($t6)
/* 000117 0x80C25F14 2401000E */ li	$at, 0XE
/* 000118 0x80C25F18 AC980000 */ sw	$t8, 0X0($a0)
/* 000119 0x80C25F1C 8DCF0004 */ lw	$t7, 0X4($t6)
/* 000120 0x80C25F20 AC8F0004 */ sw	$t7, 0X4($a0)
/* 000121 0x80C25F24 8DD80008 */ lw	$t8, 0X8($t6)
/* 000122 0x80C25F28 14A10004 */ bne	$a1, $at, .L80C25F3C
/* 000123 0x80C25F2C AC980008 */ sw	$t8, 0X8($a0)
/* 000124 0x80C25F30 8FA50038 */ lw	$a1, 0X38($sp)
/* 000125 0x80C25F34 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000126 0x80C25F38 24A5003C */ addiu	$a1, $a1, 0X3C
.L80C25F3C:
/* 000127 0x80C25F3C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000128 0x80C25F40 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000129 0x80C25F44 03E00008 */ jr	$ra
/* 000130 0x80C25F48 00000000 */ nop

glabel EnRsn_Draw
/* 000131 0x80C25F4C 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000132 0x80C25F50 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000133 0x80C25F54 AFA40038 */ sw	$a0, 0X38($sp)
/* 000134 0x80C25F58 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000135 0x80C25F5C 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000136 0x80C25F60 8DC40000 */ lw	$a0, 0X0($t6)
/* 000137 0x80C25F64 0C04B16C */ jal	func_8012C5B0
/* 000138 0x80C25F68 AFA40030 */ sw	$a0, 0X30($sp)
/* 000139 0x80C25F6C 8FA30030 */ lw	$v1, 0X30($sp)
/* 000140 0x80C25F70 8C6202B0 */ lw	$v0, 0X2B0($v1)
/* 000141 0x80C25F74 3C18DB06 */ lui	$t8, 0xDB06
/* 000142 0x80C25F78 37180020 */ ori	$t8, $t8, 0X20
/* 000143 0x80C25F7C 244F0008 */ addiu	$t7, $v0, 0X8
/* 000144 0x80C25F80 AC6F02B0 */ sw	$t7, 0X2B0($v1)
/* 000145 0x80C25F84 3C040600 */ lui	$a0, 0x0600
/* 000146 0x80C25F88 AC580000 */ sw	$t8, 0X0($v0)
/* 000147 0x80C25F8C 24845458 */ addiu	$a0, $a0, 0X5458
/* 000148 0x80C25F90 0C040141 */ jal	Lib_PtrSegToVirt
/* 000149 0x80C25F94 AFA20028 */ sw	$v0, 0X28($sp)
/* 000150 0x80C25F98 8FA50028 */ lw	$a1, 0X28($sp)
/* 000151 0x80C25F9C 8FA80038 */ lw	$t0, 0X38($sp)
/* 000152 0x80C25FA0 3C1980C2 */ lui	$t9, %hi(EnRsn_OverrideLimbDraw)
/* 000153 0x80C25FA4 ACA20004 */ sw	$v0, 0X4($a1)
/* 000154 0x80C25FA8 8D050194 */ lw	$a1, 0X194($t0)
/* 000155 0x80C25FAC 8D0601B0 */ lw	$a2, 0X1B0($t0)
/* 000156 0x80C25FB0 91070192 */ lbu	$a3, 0X192($t0)
/* 000157 0x80C25FB4 3C0980C2 */ lui	$t1, %hi(EnRsn_PostLimbDraw)
/* 000158 0x80C25FB8 25295EF0 */ addiu	$t1, $t1, %lo(EnRsn_PostLimbDraw)
/* 000159 0x80C25FBC 27395EB0 */ addiu	$t9, $t9, %lo(EnRsn_OverrideLimbDraw)
/* 000160 0x80C25FC0 AFB90010 */ sw	$t9, 0X10($sp)
/* 000161 0x80C25FC4 AFA90014 */ sw	$t1, 0X14($sp)
/* 000162 0x80C25FC8 AFA80018 */ sw	$t0, 0X18($sp)
/* 000163 0x80C25FCC 0C04CFCA */ jal	SkelAnime_DrawSV
/* 000164 0x80C25FD0 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000165 0x80C25FD4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000166 0x80C25FD8 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000167 0x80C25FDC 03E00008 */ jr	$ra
/* 000168 0x80C25FE0 00000000 */ nop
/* 000169 0x80C25FE4 00000000 */ nop
/* 000170 0x80C25FE8 00000000 */ nop
/* 000171 0x80C25FEC 00000000 */ nop
