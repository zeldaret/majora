.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnRiverSound_Init
/* 000000 0x808A7E30 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x808A7E34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x808A7E38 00803025 */ move	$a2, $a0
/* 000003 0x808A7E3C 00A03825 */ move	$a3, $a1
/* 000004 0x808A7E40 84C2001C */ lh	$v0, 0X1C($a2)
/* 000005 0x808A7E44 240100FF */ li	$at, 0XFF
/* 000006 0x808A7E48 A0C00144 */ sb	$zero, 0X144($a2)
/* 000007 0x808A7E4C 00021A03 */ sra	$v1, $v0, 8
/* 000008 0x808A7E50 306300FF */ andi	$v1, $v1, 0XFF
/* 000009 0x808A7E54 304E00FF */ andi	$t6, $v0, 0XFF
/* 000010 0x808A7E58 14610005 */ bne	$v1, $at, .L808A7E70
/* 000011 0x808A7E5C A4CE001C */ sh	$t6, 0X1C($a2)
/* 000012 0x808A7E60 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000013 0x808A7E64 00C02025 */ move	$a0, $a2
/* 000014 0x808A7E68 10000010 */ b	.L808A7EAC
/* 000015 0x808A7E6C 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7E70:
/* 000016 0x808A7E70 3C0F0002 */ lui	$t7, 0x0002
/* 000017 0x808A7E74 01E77821 */ addu	$t7, $t7, $a3
/* 000018 0x808A7E78 8DEF8864 */ lw	$t7, -0X779C($t7)
/* 000019 0x808A7E7C 0003C0C0 */ sll	$t8, $v1, 3
/* 000020 0x808A7E80 01F82821 */ addu	$a1, $t7, $t8
/* 000021 0x808A7E84 8CA40004 */ lw	$a0, 0X4($a1)
/* 000022 0x808A7E88 AFA60028 */ sw	$a2, 0X28($sp)
/* 000023 0x808A7E8C 0C040141 */ jal	Lib_PtrSegToVirt
/* 000024 0x808A7E90 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000025 0x808A7E94 8FA60028 */ lw	$a2, 0X28($sp)
/* 000026 0x808A7E98 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000027 0x808A7E9C ACC20148 */ sw	$v0, 0X148($a2)
/* 000028 0x808A7EA0 90B90000 */ lbu	$t9, 0X0($a1)
/* 000029 0x808A7EA4 A0D90146 */ sb	$t9, 0X146($a2)
/* 000030 0x808A7EA8 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A7EAC:
/* 000031 0x808A7EAC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000032 0x808A7EB0 03E00008 */ jr	$ra
/* 000033 0x808A7EB4 00000000 */ nop

glabel EnRiverSound_Update
/* 000034 0x808A7EB8 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000035 0x808A7EBC AFB00020 */ sw	$s0, 0X20($sp)
/* 000036 0x808A7EC0 00808025 */ move	$s0, $a0
/* 000037 0x808A7EC4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000038 0x808A7EC8 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000039 0x808A7ECC 8FA5004C */ lw	$a1, 0X4C($sp)
/* 000040 0x808A7ED0 27A40034 */ addiu	$a0, $sp, 0X34
/* 000041 0x808A7ED4 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000042 0x808A7ED8 24A500E0 */ addiu	$a1, $a1, 0XE0
/* 000043 0x808A7EDC 860E001C */ lh	$t6, 0X1C($s0)
/* 000044 0x808A7EE0 27A60034 */ addiu	$a2, $sp, 0X34
/* 000045 0x808A7EE4 240F0001 */ li	$t7, 0X1
/* 000046 0x808A7EE8 29C100FD */ slti	$at, $t6, 0XFD
/* 000047 0x808A7EEC 10200008 */ beqz	$at, .L808A7F10
/* 000048 0x808A7EF0 26070024 */ addiu	$a3, $s0, 0X24
/* 000049 0x808A7EF4 8E040148 */ lw	$a0, 0X148($s0)
/* 000050 0x808A7EF8 92050146 */ lbu	$a1, 0X146($s0)
/* 000051 0x808A7EFC AFAF0010 */ sw	$t7, 0X10($sp)
/* 000052 0x808A7F00 0C02F337 */ jal	func_800BCCDC
/* 000053 0x808A7F04 26070024 */ addiu	$a3, $s0, 0X24
/* 000054 0x808A7F08 1000002D */ b	.L808A7FC0
/* 000055 0x808A7F0C 8FBF0024 */ lw	$ra, 0X24($sp)
.L808A7F10:
/* 000056 0x808A7F10 8E040148 */ lw	$a0, 0X148($s0)
/* 000057 0x808A7F14 92050146 */ lbu	$a1, 0X146($s0)
/* 000058 0x808A7F18 AFA7002C */ sw	$a3, 0X2C($sp)
/* 000059 0x808A7F1C 0C02F337 */ jal	func_800BCCDC
/* 000060 0x808A7F20 AFA00010 */ sw	$zero, 0X10($sp)
/* 000061 0x808A7F24 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000062 0x808A7F28 8FB8002C */ lw	$t8, 0X2C($sp)
/* 000063 0x808A7F2C 26050080 */ addiu	$a1, $s0, 0X80
/* 000064 0x808A7F30 24840830 */ addiu	$a0, $a0, 0X830
/* 000065 0x808A7F34 AFA40028 */ sw	$a0, 0X28($sp)
/* 000066 0x808A7F38 27A60030 */ addiu	$a2, $sp, 0X30
/* 000067 0x808A7F3C 02003825 */ move	$a3, $s0
/* 000068 0x808A7F40 0C031047 */ jal	func_800C411C
/* 000069 0x808A7F44 AFB80010 */ sw	$t8, 0X10($sp)
/* 000070 0x808A7F48 3C01C6FA */ lui	$at, 0xC6FA
/* 000071 0x808A7F4C 44812000 */ mtc1	$at, $f4
/* 000072 0x808A7F50 8FA40028 */ lw	$a0, 0X28($sp)
/* 000073 0x808A7F54 8FA60030 */ lw	$a2, 0X30($sp)
/* 000074 0x808A7F58 46040032 */ c.eq.s	$f0, $f4
/* 000075 0x808A7F5C 00000000 */ nop
/* 000076 0x808A7F60 45030006 */ bc1tl .L808A7F7C
/* 000077 0x808A7F64 A2000145 */ sb	$zero, 0X145($s0)
/* 000078 0x808A7F68 0C032786 */ jal	func_800C9E18
/* 000079 0x808A7F6C 8E050080 */ lw	$a1, 0X80($s0)
/* 000080 0x808A7F70 10000002 */ b	.L808A7F7C
/* 000081 0x808A7F74 A2020145 */ sb	$v0, 0X145($s0)
/* 000082 0x808A7F78 A2000145 */ sb	$zero, 0X145($s0)
.L808A7F7C:
/* 000083 0x808A7F7C 92020145 */ lbu	$v0, 0X145($s0)
/* 000084 0x808A7F80 240A0002 */ li	$t2, 0X2
/* 000085 0x808A7F84 14400005 */ bnez	$v0, .L808A7F9C
/* 000086 0x808A7F88 2449FFFF */ addiu	$t1, $v0, -0X1
/* 000087 0x808A7F8C 8619001C */ lh	$t9, 0X1C($s0)
/* 000088 0x808A7F90 2728FF03 */ addiu	$t0, $t9, -0XFD
/* 000089 0x808A7F94 10000002 */ b	.L808A7FA0
/* 000090 0x808A7F98 A2080145 */ sb	$t0, 0X145($s0)
.L808A7F9C:
/* 000091 0x808A7F9C A2090145 */ sb	$t1, 0X145($s0)
.L808A7FA0:
/* 000092 0x808A7FA0 92020145 */ lbu	$v0, 0X145($s0)
/* 000093 0x808A7FA4 28410003 */ slti	$at, $v0, 0X3
/* 000094 0x808A7FA8 54200004 */ bnezl	$at, .L808A7FBC
/* 000095 0x808A7FAC A2020145 */ sb	$v0, 0X145($s0)
/* 000096 0x808A7FB0 10000002 */ b	.L808A7FBC
/* 000097 0x808A7FB4 A20A0145 */ sb	$t2, 0X145($s0)
/* 000098 0x808A7FB8 A2020145 */ sb	$v0, 0X145($s0)
.L808A7FBC:
/* 000099 0x808A7FBC 8FBF0024 */ lw	$ra, 0X24($sp)
.L808A7FC0:
/* 000100 0x808A7FC0 8FB00020 */ lw	$s0, 0X20($sp)
/* 000101 0x808A7FC4 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000102 0x808A7FC8 03E00008 */ jr	$ra
/* 000103 0x808A7FCC 00000000 */ nop

glabel EnRiverSound_Draw
/* 000104 0x808A7FD0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000105 0x808A7FD4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000106 0x808A7FD8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000107 0x808A7FDC 00803025 */ move	$a2, $a0
/* 000108 0x808A7FE0 84C2001C */ lh	$v0, 0X1C($a2)
/* 000109 0x808A7FE4 00C02025 */ move	$a0, $a2
/* 000110 0x808A7FE8 3C05801E */ lui	$a1, %hi(D_801E0BD0)
/* 000111 0x808A7FEC 284100FD */ slti	$at, $v0, 0XFD
/* 000112 0x808A7FF0 10200006 */ beqz	$at, .L808A800C
/* 000113 0x808A7FF4 00027040 */ sll	$t6, $v0, 1
/* 000114 0x808A7FF8 00AE2821 */ addu	$a1, $a1, $t6
/* 000115 0x808A7FFC 0C02E3B2 */ jal	func_800B8EC8
/* 000116 0x808A8000 94A50BD0 */ lhu	$a1, %lo(D_801E0BD0)($a1)
/* 000117 0x808A8004 10000009 */ b	.L808A802C
/* 000118 0x808A8008 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A800C:
/* 000119 0x808A800C 90CF0145 */ lbu	$t7, 0X145($a2)
/* 000120 0x808A8010 3C05808B */ lui	$a1, %hi(D_808A8060)
/* 000121 0x808A8014 24C400EC */ addiu	$a0, $a2, 0XEC
/* 000122 0x808A8018 000FC080 */ sll	$t8, $t7, 2
/* 000123 0x808A801C 00B82821 */ addu	$a1, $a1, $t8
/* 000124 0x808A8020 0C067FE7 */ jal	func_8019FF9C
/* 000125 0x808A8024 8CA58060 */ lw	$a1, %lo(D_808A8060)($a1)
/* 000126 0x808A8028 8FBF0014 */ lw	$ra, 0X14($sp)
.L808A802C:
/* 000127 0x808A802C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000128 0x808A8030 03E00008 */ jr	$ra
/* 000129 0x808A8034 00000000 */ nop
/* 000130 0x808A8038 00000000 */ nop
/* 000131 0x808A803C 00000000 */ nop
