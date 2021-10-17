.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80B2B830
/* 000000 0x80B2B830 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000001 0x80B2B834 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B2B838 AFA50024 */ sw	$a1, 0X24($sp)
/* 000003 0x80B2B83C 2486018C */ addiu	$a2, $a0, 0X18C
/* 000004 0x80B2B840 00C02825 */ move	$a1, $a2
/* 000005 0x80B2B844 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000006 0x80B2B848 AFA6001C */ sw	$a2, 0X1C($sp)
/* 000007 0x80B2B84C 8FA40024 */ lw	$a0, 0X24($sp)
/* 000008 0x80B2B850 3C010001 */ lui	$at, 0x0001
/* 000009 0x80B2B854 34218884 */ ori	$at, $at, 0X8884
/* 000010 0x80B2B858 8FA6001C */ lw	$a2, 0X1C($sp)
/* 000011 0x80B2B85C 0C038A4A */ jal	Collision_AddOT
/* 000012 0x80B2B860 00812821 */ addu	$a1, $a0, $at
/* 000013 0x80B2B864 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000014 0x80B2B868 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000015 0x80B2B86C 03E00008 */ jr	$ra
/* 000016 0x80B2B870 00000000 */ nop

glabel func_80B2B874
/* 000017 0x80B2B874 948E001C */ lhu	$t6, 0X1C($a0)
/* 000018 0x80B2B878 00001025 */ move	$v0, $zero
/* 000019 0x80B2B87C 2DC10005 */ sltiu	$at, $t6, 0X5
/* 000020 0x80B2B880 1020001A */ beqz	$at, .L80B2B8EC
/* 000021 0x80B2B884 000E7080 */ sll	$t6, $t6, 2
/* 000022 0x80B2B888 3C0180B3 */ lui	$at, %hi(jtbl_D_80B2C520)
/* 000023 0x80B2B88C 002E0821 */ addu	$at, $at, $t6
/* 000024 0x80B2B890 8C2EC520 */ lw	$t6, %lo(jtbl_D_80B2C520)($at)
/* 000025 0x80B2B894 01C00008 */ jr	$t6
/* 000026 0x80B2B898 00000000 */ nop
glabel L80B2B89C
.L80B2B89C:
/* 000027 0x80B2B89C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000028 0x80B2B8A0 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000029 0x80B2B8A4 03E00008 */ jr	$ra
/* 000030 0x80B2B8A8 30420002 */ andi	$v0, $v0, 0X2
glabel L80B2B8AC
.L80B2B8AC:
/* 000031 0x80B2B8AC 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000032 0x80B2B8B0 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000033 0x80B2B8B4 03E00008 */ jr	$ra
/* 000034 0x80B2B8B8 30420004 */ andi	$v0, $v0, 0X4
glabel L80B2B8BC
.L80B2B8BC:
/* 000035 0x80B2B8BC 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000036 0x80B2B8C0 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000037 0x80B2B8C4 03E00008 */ jr	$ra
/* 000038 0x80B2B8C8 30420008 */ andi	$v0, $v0, 0X8
glabel L80B2B8CC
.L80B2B8CC:
/* 000039 0x80B2B8CC 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000040 0x80B2B8D0 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000041 0x80B2B8D4 03E00008 */ jr	$ra
/* 000042 0x80B2B8D8 30420010 */ andi	$v0, $v0, 0X10
glabel L80B2B8DC
.L80B2B8DC:
/* 000043 0x80B2B8DC 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000044 0x80B2B8E0 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000045 0x80B2B8E4 03E00008 */ jr	$ra
/* 000046 0x80B2B8E8 30420020 */ andi	$v0, $v0, 0X20
.L80B2B8EC:
/* 000047 0x80B2B8EC 03E00008 */ jr	$ra
/* 000048 0x80B2B8F0 00000000 */ nop

glabel func_80B2B8F4
/* 000049 0x80B2B8F4 948E001C */ lhu	$t6, 0X1C($a0)
/* 000050 0x80B2B8F8 00001025 */ move	$v0, $zero
/* 000051 0x80B2B8FC 2DC10005 */ sltiu	$at, $t6, 0X5
/* 000052 0x80B2B900 1020001A */ beqz	$at, .L80B2B96C
/* 000053 0x80B2B904 000E7080 */ sll	$t6, $t6, 2
/* 000054 0x80B2B908 3C0180B3 */ lui	$at, %hi(jtbl_D_80B2C534)
/* 000055 0x80B2B90C 002E0821 */ addu	$at, $at, $t6
/* 000056 0x80B2B910 8C2EC534 */ lw	$t6, %lo(jtbl_D_80B2C534)($at)
/* 000057 0x80B2B914 01C00008 */ jr	$t6
/* 000058 0x80B2B918 00000000 */ nop
glabel L80B2B91C
.L80B2B91C:
/* 000059 0x80B2B91C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000060 0x80B2B920 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000061 0x80B2B924 03E00008 */ jr	$ra
/* 000062 0x80B2B928 30420040 */ andi	$v0, $v0, 0X40
glabel L80B2B92C
.L80B2B92C:
/* 000063 0x80B2B92C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF13)
/* 000064 0x80B2B930 90420583 */ lbu	$v0, %lo(gSaveContext + 0xF13)($v0)
/* 000065 0x80B2B934 03E00008 */ jr	$ra
/* 000066 0x80B2B938 30420080 */ andi	$v0, $v0, 0X80
glabel L80B2B93C
.L80B2B93C:
/* 000067 0x80B2B93C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF14)
/* 000068 0x80B2B940 90420584 */ lbu	$v0, %lo(gSaveContext + 0xF14)($v0)
/* 000069 0x80B2B944 03E00008 */ jr	$ra
/* 000070 0x80B2B948 30420001 */ andi	$v0, $v0, 0X1
glabel L80B2B94C
.L80B2B94C:
/* 000071 0x80B2B94C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF14)
/* 000072 0x80B2B950 90420584 */ lbu	$v0, %lo(gSaveContext + 0xF14)($v0)
/* 000073 0x80B2B954 03E00008 */ jr	$ra
/* 000074 0x80B2B958 30420002 */ andi	$v0, $v0, 0X2
glabel L80B2B95C
.L80B2B95C:
/* 000075 0x80B2B95C 3C02801F */ lui	$v0, %hi(gSaveContext + 0xF14)
/* 000076 0x80B2B960 90420584 */ lbu	$v0, %lo(gSaveContext + 0xF14)($v0)
/* 000077 0x80B2B964 03E00008 */ jr	$ra
/* 000078 0x80B2B968 30420004 */ andi	$v0, $v0, 0X4
.L80B2B96C:
/* 000079 0x80B2B96C 03E00008 */ jr	$ra
/* 000080 0x80B2B970 00000000 */ nop

glabel func_80B2B974
/* 000081 0x80B2B974 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000082 0x80B2B978 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000083 0x80B2B97C AFA50024 */ sw	$a1, 0X24($sp)
/* 000084 0x80B2B980 00803025 */ move	$a2, $a0
/* 000085 0x80B2B984 84C2020E */ lh	$v0, 0X20E($a2)
/* 000086 0x80B2B988 8FA40024 */ lw	$a0, 0X24($sp)
/* 000087 0x80B2B98C 00003825 */ move	$a3, $zero
/* 000088 0x80B2B990 10400006 */ beqz	$v0, .L80B2B9AC
/* 000089 0x80B2B994 24844908 */ addiu	$a0, $a0, 0X4908
/* 000090 0x80B2B998 24010001 */ li	$at, 0X1
/* 000091 0x80B2B99C 50410038 */ beql	$v0, $at, .L80B2BA80
/* 000092 0x80B2B9A0 8CCA0218 */ lw	$t2, 0X218($a2)
/* 000093 0x80B2B9A4 1000003B */ b	.L80B2BA94
/* 000094 0x80B2B9A8 00E01025 */ move	$v0, $a3
.L80B2B9AC:
/* 000095 0x80B2B9AC AFA60020 */ sw	$a2, 0X20($sp)
/* 000096 0x80B2B9B0 0C054926 */ jal	func_80152498
/* 000097 0x80B2B9B4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000098 0x80B2B9B8 24010004 */ li	$at, 0X4
/* 000099 0x80B2B9BC 8FA60020 */ lw	$a2, 0X20($sp)
/* 000100 0x80B2B9C0 10410008 */ beq	$v0, $at, .L80B2B9E4
/* 000101 0x80B2B9C4 8FA70018 */ lw	$a3, 0X18($sp)
/* 000102 0x80B2B9C8 24010005 */ li	$at, 0X5
/* 000103 0x80B2B9CC 10410005 */ beq	$v0, $at, .L80B2B9E4
/* 000104 0x80B2B9D0 24010010 */ li	$at, 0X10
/* 000105 0x80B2B9D4 5041000B */ beql	$v0, $at, .L80B2BA04
/* 000106 0x80B2B9D8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000107 0x80B2B9DC 1000002D */ b	.L80B2BA94
/* 000108 0x80B2B9E0 00E01025 */ move	$v0, $a3
.L80B2B9E4:
/* 000109 0x80B2B9E4 8FA40024 */ lw	$a0, 0X24($sp)
/* 000110 0x80B2B9E8 AFA60020 */ sw	$a2, 0X20($sp)
/* 000111 0x80B2B9EC 0C051D89 */ jal	func_80147624
/* 000112 0x80B2B9F0 AFA70018 */ sw	$a3, 0X18($sp)
/* 000113 0x80B2B9F4 8FA60020 */ lw	$a2, 0X20($sp)
/* 000114 0x80B2B9F8 10400025 */ beqz	$v0, .L80B2BA90
/* 000115 0x80B2B9FC 8FA70018 */ lw	$a3, 0X18($sp)
/* 000116 0x80B2BA00 8FA40024 */ lw	$a0, 0X24($sp)
.L80B2BA04:
/* 000117 0x80B2BA04 AFA60020 */ sw	$a2, 0X20($sp)
/* 000118 0x80B2BA08 0C048E04 */ jal	func_80123810
/* 000119 0x80B2BA0C AFA70018 */ sw	$a3, 0X18($sp)
/* 000120 0x80B2BA10 2401002D */ li	$at, 0X2D
/* 000121 0x80B2BA14 8FA60020 */ lw	$a2, 0X20($sp)
/* 000122 0x80B2BA18 10410004 */ beq	$v0, $at, .L80B2BA2C
/* 000123 0x80B2BA1C 8FA70018 */ lw	$a3, 0X18($sp)
/* 000124 0x80B2BA20 24010033 */ li	$at, 0X33
/* 000125 0x80B2BA24 14410007 */ bne	$v0, $at, .L80B2BA44
/* 000126 0x80B2BA28 00000000 */ nop
.L80B2BA2C:
/* 000127 0x80B2BA2C 84CE020E */ lh	$t6, 0X20E($a2)
/* 000128 0x80B2BA30 ACC20218 */ sw	$v0, 0X218($a2)
/* 000129 0x80B2BA34 24070001 */ li	$a3, 0X1
/* 000130 0x80B2BA38 25CF0001 */ addiu	$t7, $t6, 0X1
/* 000131 0x80B2BA3C 10000014 */ b	.L80B2BA90
/* 000132 0x80B2BA40 A4CF020E */ sh	$t7, 0X20E($a2)
.L80B2BA44:
/* 000133 0x80B2BA44 04410006 */ bgez	$v0, .L80B2BA60
/* 000134 0x80B2BA48 00000000 */ nop
/* 000135 0x80B2BA4C 84D8020E */ lh	$t8, 0X20E($a2)
/* 000136 0x80B2BA50 24070003 */ li	$a3, 0X3
/* 000137 0x80B2BA54 27190001 */ addiu	$t9, $t8, 0X1
/* 000138 0x80B2BA58 1000000D */ b	.L80B2BA90
/* 000139 0x80B2BA5C A4D9020E */ sh	$t9, 0X20E($a2)
.L80B2BA60:
/* 000140 0x80B2BA60 5040000C */ beqzl	$v0, .L80B2BA94
/* 000141 0x80B2BA64 00E01025 */ move	$v0, $a3
/* 000142 0x80B2BA68 84C8020E */ lh	$t0, 0X20E($a2)
/* 000143 0x80B2BA6C 24070002 */ li	$a3, 0X2
/* 000144 0x80B2BA70 25090001 */ addiu	$t1, $t0, 0X1
/* 000145 0x80B2BA74 10000006 */ b	.L80B2BA90
/* 000146 0x80B2BA78 A4C9020E */ sh	$t1, 0X20E($a2)
/* 000147 0x80B2BA7C 8CCA0218 */ lw	$t2, 0X218($a2)
.L80B2BA80:
/* 000148 0x80B2BA80 2401002D */ li	$at, 0X2D
/* 000149 0x80B2BA84 55410003 */ bnel	$t2, $at, .L80B2BA94
/* 000150 0x80B2BA88 00E01025 */ move	$v0, $a3
/* 000151 0x80B2BA8C 24070001 */ li	$a3, 0X1
.L80B2BA90:
/* 000152 0x80B2BA90 00E01025 */ move	$v0, $a3
.L80B2BA94:
/* 000153 0x80B2BA94 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000154 0x80B2BA98 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000155 0x80B2BA9C 03E00008 */ jr	$ra
/* 000156 0x80B2BAA0 00000000 */ nop

glabel func_80B2BAA4
/* 000157 0x80B2BAA4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000158 0x80B2BAA8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000159 0x80B2BAAC 00803025 */ move	$a2, $a0
/* 000160 0x80B2BAB0 00A02025 */ move	$a0, $a1
/* 000161 0x80B2BAB4 0C04900F */ jal	func_8012403C
/* 000162 0x80B2BAB8 AFA60018 */ sw	$a2, 0X18($sp)
/* 000163 0x80B2BABC 24010009 */ li	$at, 0X9
/* 000164 0x80B2BAC0 14410004 */ bne	$v0, $at, .L80B2BAD4
/* 000165 0x80B2BAC4 8FA60018 */ lw	$a2, 0X18($sp)
/* 000166 0x80B2BAC8 3C0280B3 */ lui	$v0, %hi(D_80B2C3B8)
/* 000167 0x80B2BACC 10000047 */ b	.L80B2BBEC
/* 000168 0x80B2BAD0 2442C3B8 */ addiu	$v0, $v0, %lo(D_80B2C3B8)
.L80B2BAD4:
/* 000169 0x80B2BAD4 94C20208 */ lhu	$v0, 0X208($a2)
/* 000170 0x80B2BAD8 304E0010 */ andi	$t6, $v0, 0X10
/* 000171 0x80B2BADC 11C0001B */ beqz	$t6, .L80B2BB4C
/* 000172 0x80B2BAE0 30580020 */ andi	$t8, $v0, 0X20
/* 000173 0x80B2BAE4 94CF001C */ lhu	$t7, 0X1C($a2)
/* 000174 0x80B2BAE8 2DE10005 */ sltiu	$at, $t7, 0X5
/* 000175 0x80B2BAEC 10200015 */ beqz	$at, .L80B2BB44
/* 000176 0x80B2BAF0 000F7880 */ sll	$t7, $t7, 2
/* 000177 0x80B2BAF4 3C0180B3 */ lui	$at, %hi(jtbl_D_80B2C548)
/* 000178 0x80B2BAF8 002F0821 */ addu	$at, $at, $t7
/* 000179 0x80B2BAFC 8C2FC548 */ lw	$t7, %lo(jtbl_D_80B2C548)($at)
/* 000180 0x80B2BB00 01E00008 */ jr	$t7
/* 000181 0x80B2BB04 00000000 */ nop
glabel L80B2BB08
.L80B2BB08:
/* 000182 0x80B2BB08 3C0280B3 */ lui	$v0, %hi(D_80B2C3E8)
/* 000183 0x80B2BB0C 10000037 */ b	.L80B2BBEC
/* 000184 0x80B2BB10 2442C3E8 */ addiu	$v0, $v0, %lo(D_80B2C3E8)
glabel L80B2BB14
.L80B2BB14:
/* 000185 0x80B2BB14 3C0280B3 */ lui	$v0, %hi(D_80B2C408)
/* 000186 0x80B2BB18 10000034 */ b	.L80B2BBEC
/* 000187 0x80B2BB1C 2442C408 */ addiu	$v0, $v0, %lo(D_80B2C408)
glabel L80B2BB20
.L80B2BB20:
/* 000188 0x80B2BB20 3C0280B3 */ lui	$v0, %hi(D_80B2C428)
/* 000189 0x80B2BB24 10000031 */ b	.L80B2BBEC
/* 000190 0x80B2BB28 2442C428 */ addiu	$v0, $v0, %lo(D_80B2C428)
glabel L80B2BB2C
.L80B2BB2C:
/* 000191 0x80B2BB2C 3C0280B3 */ lui	$v0, %hi(D_80B2C448)
/* 000192 0x80B2BB30 1000002E */ b	.L80B2BBEC
/* 000193 0x80B2BB34 2442C448 */ addiu	$v0, $v0, %lo(D_80B2C448)
glabel L80B2BB38
.L80B2BB38:
/* 000194 0x80B2BB38 3C0280B3 */ lui	$v0, %hi(D_80B2C468)
/* 000195 0x80B2BB3C 1000002B */ b	.L80B2BBEC
/* 000196 0x80B2BB40 2442C468 */ addiu	$v0, $v0, %lo(D_80B2C468)
.L80B2BB44:
/* 000197 0x80B2BB44 10000029 */ b	.L80B2BBEC
/* 000198 0x80B2BB48 00001025 */ move	$v0, $zero
.L80B2BB4C:
/* 000199 0x80B2BB4C 5300000C */ beqzl	$t8, .L80B2BB80
/* 000200 0x80B2BB50 94C9001C */ lhu	$t1, 0X1C($a2)
/* 000201 0x80B2BB54 8CD90218 */ lw	$t9, 0X218($a2)
/* 000202 0x80B2BB58 24010033 */ li	$at, 0X33
/* 000203 0x80B2BB5C 3C0280B3 */ lui	$v0, %hi(D_80B2C490)
/* 000204 0x80B2BB60 17210004 */ bne	$t9, $at, .L80B2BB74
/* 000205 0x80B2BB64 00000000 */ nop
/* 000206 0x80B2BB68 3C0280B3 */ lui	$v0, %hi(D_80B2C488)
/* 000207 0x80B2BB6C 1000001F */ b	.L80B2BBEC
/* 000208 0x80B2BB70 2442C488 */ addiu	$v0, $v0, %lo(D_80B2C488)
.L80B2BB74:
/* 000209 0x80B2BB74 1000001D */ b	.L80B2BBEC
/* 000210 0x80B2BB78 2442C490 */ addiu	$v0, $v0, %lo(D_80B2C490)
/* 000211 0x80B2BB7C 94C9001C */ lhu	$t1, 0X1C($a2)
.L80B2BB80:
/* 000212 0x80B2BB80 3C0880B3 */ lui	$t0, %hi(func_80B2B974)
/* 000213 0x80B2BB84 2508B974 */ addiu	$t0, $t0, %lo(func_80B2B974)
/* 000214 0x80B2BB88 2D210005 */ sltiu	$at, $t1, 0X5
/* 000215 0x80B2BB8C 10200016 */ beqz	$at, .L80B2BBE8
/* 000216 0x80B2BB90 ACC80210 */ sw	$t0, 0X210($a2)
/* 000217 0x80B2BB94 00094880 */ sll	$t1, $t1, 2
/* 000218 0x80B2BB98 3C0180B3 */ lui	$at, %hi(jtbl_D_80B2C55C)
/* 000219 0x80B2BB9C 00290821 */ addu	$at, $at, $t1
/* 000220 0x80B2BBA0 8C29C55C */ lw	$t1, %lo(jtbl_D_80B2C55C)($at)
/* 000221 0x80B2BBA4 01200008 */ jr	$t1
/* 000222 0x80B2BBA8 00000000 */ nop
glabel L80B2BBAC
.L80B2BBAC:
/* 000223 0x80B2BBAC 3C0280B3 */ lui	$v0, %hi(D_80B2C23C)
/* 000224 0x80B2BBB0 1000000E */ b	.L80B2BBEC
/* 000225 0x80B2BBB4 2442C23C */ addiu	$v0, $v0, %lo(D_80B2C23C)
glabel L80B2BBB8
.L80B2BBB8:
/* 000226 0x80B2BBB8 3C0280B3 */ lui	$v0, %hi(D_80B2C288)
/* 000227 0x80B2BBBC 1000000B */ b	.L80B2BBEC
/* 000228 0x80B2BBC0 2442C288 */ addiu	$v0, $v0, %lo(D_80B2C288)
glabel L80B2BBC4
.L80B2BBC4:
/* 000229 0x80B2BBC4 3C0280B3 */ lui	$v0, %hi(D_80B2C2D4)
/* 000230 0x80B2BBC8 10000008 */ b	.L80B2BBEC
/* 000231 0x80B2BBCC 2442C2D4 */ addiu	$v0, $v0, %lo(D_80B2C2D4)
glabel L80B2BBD0
.L80B2BBD0:
/* 000232 0x80B2BBD0 3C0280B3 */ lui	$v0, %hi(D_80B2C320)
/* 000233 0x80B2BBD4 10000005 */ b	.L80B2BBEC
/* 000234 0x80B2BBD8 2442C320 */ addiu	$v0, $v0, %lo(D_80B2C320)
glabel L80B2BBDC
.L80B2BBDC:
/* 000235 0x80B2BBDC 3C0280B3 */ lui	$v0, %hi(D_80B2C36C)
/* 000236 0x80B2BBE0 10000002 */ b	.L80B2BBEC
/* 000237 0x80B2BBE4 2442C36C */ addiu	$v0, $v0, %lo(D_80B2C36C)
.L80B2BBE8:
/* 000238 0x80B2BBE8 00001025 */ move	$v0, $zero
.L80B2BBEC:
/* 000239 0x80B2BBEC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000240 0x80B2BBF0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000241 0x80B2BBF4 03E00008 */ jr	$ra
/* 000242 0x80B2BBF8 00000000 */ nop

glabel func_80B2BBFC
/* 000243 0x80B2BBFC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000244 0x80B2BC00 AFB00018 */ sw	$s0, 0X18($sp)
/* 000245 0x80B2BC04 00808025 */ move	$s0, $a0
/* 000246 0x80B2BC08 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000247 0x80B2BC0C 960E0208 */ lhu	$t6, 0X208($s0)
/* 000248 0x80B2BC10 8CA61CCC */ lw	$a2, 0X1CCC($a1)
/* 000249 0x80B2BC14 00001825 */ move	$v1, $zero
/* 000250 0x80B2BC18 31CF0007 */ andi	$t7, $t6, 0X7
/* 000251 0x80B2BC1C 11E00030 */ beqz	$t7, .L80B2BCE0
/* 000252 0x80B2BC20 02002025 */ move	$a0, $s0
/* 000253 0x80B2BC24 AFA00020 */ sw	$zero, 0X20($sp)
/* 000254 0x80B2BC28 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000255 0x80B2BC2C 0C02E134 */ jal	func_800B84D0
/* 000256 0x80B2BC30 AFA60024 */ sw	$a2, 0X24($sp)
/* 000257 0x80B2BC34 8FA30020 */ lw	$v1, 0X20($sp)
/* 000258 0x80B2BC38 10400029 */ beqz	$v0, .L80B2BCE0
/* 000259 0x80B2BC3C 8FA60024 */ lw	$a2, 0X24($sp)
/* 000260 0x80B2BC40 96180208 */ lhu	$t8, 0X208($s0)
/* 000261 0x80B2BC44 2401FFCF */ li	$at, -0X31
/* 000262 0x80B2BC48 0301C824 */ and	$t9, $t8, $at
/* 000263 0x80B2BC4C A6190208 */ sh	$t9, 0X208($s0)
/* 000264 0x80B2BC50 80C20A87 */ lb	$v0, 0XA87($a2)
/* 000265 0x80B2BC54 2401002D */ li	$at, 0X2D
/* 000266 0x80B2BC58 37290010 */ ori	$t1, $t9, 0X10
/* 000267 0x80B2BC5C 14410005 */ bne	$v0, $at, .L80B2BC74
/* 000268 0x80B2BC60 00000000 */ nop
/* 000269 0x80B2BC64 A6090208 */ sh	$t1, 0X208($s0)
/* 000270 0x80B2BC68 80CA0A87 */ lb	$t2, 0XA87($a2)
/* 000271 0x80B2BC6C 10000008 */ b	.L80B2BC90
/* 000272 0x80B2BC70 AE0A0218 */ sw	$t2, 0X218($s0)
.L80B2BC74:
/* 000273 0x80B2BC74 10400006 */ beqz	$v0, .L80B2BC90
/* 000274 0x80B2BC78 00000000 */ nop
/* 000275 0x80B2BC7C 960B0208 */ lhu	$t3, 0X208($s0)
/* 000276 0x80B2BC80 356C0020 */ ori	$t4, $t3, 0X20
/* 000277 0x80B2BC84 A60C0208 */ sh	$t4, 0X208($s0)
/* 000278 0x80B2BC88 80CD0A87 */ lb	$t5, 0XA87($a2)
/* 000279 0x80B2BC8C AE0D0218 */ sw	$t5, 0X218($s0)
.L80B2BC90:
/* 000280 0x80B2BC90 0C2CAE1D */ jal	func_80B2B874
/* 000281 0x80B2BC94 02002025 */ move	$a0, $s0
/* 000282 0x80B2BC98 AE02021C */ sw	$v0, 0X21C($s0)
/* 000283 0x80B2BC9C 26040208 */ addiu	$a0, $s0, 0X208
/* 000284 0x80B2BCA0 00002825 */ move	$a1, $zero
/* 000285 0x80B2BCA4 0C04EBB5 */ jal	func_8013AED4
/* 000286 0x80B2BCA8 24060007 */ li	$a2, 0X7
/* 000287 0x80B2BCAC 960E0208 */ lhu	$t6, 0X208($s0)
/* 000288 0x80B2BCB0 A600020E */ sh	$zero, 0X20E($s0)
/* 000289 0x80B2BCB4 AE000210 */ sw	$zero, 0X210($s0)
/* 000290 0x80B2BCB8 35CF0040 */ ori	$t7, $t6, 0X40
/* 000291 0x80B2BCBC A60F0208 */ sh	$t7, 0X208($s0)
/* 000292 0x80B2BCC0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000293 0x80B2BCC4 0C2CAEA9 */ jal	func_80B2BAA4
/* 000294 0x80B2BCC8 02002025 */ move	$a0, $s0
/* 000295 0x80B2BCCC 3C1880B3 */ lui	$t8, %hi(func_80B2BE54)
/* 000296 0x80B2BCD0 2718BE54 */ addiu	$t8, $t8, %lo(func_80B2BE54)
/* 000297 0x80B2BCD4 AE0201DC */ sw	$v0, 0X1DC($s0)
/* 000298 0x80B2BCD8 AE180188 */ sw	$t8, 0X188($s0)
/* 000299 0x80B2BCDC 24030001 */ li	$v1, 0X1
.L80B2BCE0:
/* 000300 0x80B2BCE0 00601025 */ move	$v0, $v1
/* 000301 0x80B2BCE4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000302 0x80B2BCE8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000303 0x80B2BCEC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000304 0x80B2BCF0 03E00008 */ jr	$ra
/* 000305 0x80B2BCF4 00000000 */ nop

glabel func_80B2BCF8
/* 000306 0x80B2BCF8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000307 0x80B2BCFC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000308 0x80B2BD00 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000309 0x80B2BD04 AFA60020 */ sw	$a2, 0X20($sp)
/* 000310 0x80B2BD08 00803825 */ move	$a3, $a0
/* 000311 0x80B2BD0C 24E40208 */ addiu	$a0, $a3, 0X208
/* 000312 0x80B2BD10 24050003 */ li	$a1, 0X3
/* 000313 0x80B2BD14 0C04EBB5 */ jal	func_8013AED4
/* 000314 0x80B2BD18 24060007 */ li	$a2, 0X7
/* 000315 0x80B2BD1C 24020001 */ li	$v0, 0X1
/* 000316 0x80B2BD20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000317 0x80B2BD24 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000318 0x80B2BD28 03E00008 */ jr	$ra
/* 000319 0x80B2BD2C 00000000 */ nop

glabel func_80B2BD30
/* 000320 0x80B2BD30 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000321 0x80B2BD34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000322 0x80B2BD38 A4800208 */ sh	$zero, 0X208($a0)
/* 000323 0x80B2BD3C 90C20000 */ lbu	$v0, 0X0($a2)
/* 000324 0x80B2BD40 24010001 */ li	$at, 0X1
/* 000325 0x80B2BD44 00001825 */ move	$v1, $zero
/* 000326 0x80B2BD48 10410005 */ beq	$v0, $at, .L80B2BD60
/* 000327 0x80B2BD4C 24010002 */ li	$at, 0X2
/* 000328 0x80B2BD50 50410008 */ beql	$v0, $at, .L80B2BD74
/* 000329 0x80B2BD54 24030001 */ li	$v1, 0X1
/* 000330 0x80B2BD58 10000007 */ b	.L80B2BD78
/* 000331 0x80B2BD5C 00601025 */ move	$v0, $v1
.L80B2BD60:
/* 000332 0x80B2BD60 0C2CAF3E */ jal	func_80B2BCF8
/* 000333 0x80B2BD64 00000000 */ nop
/* 000334 0x80B2BD68 10000002 */ b	.L80B2BD74
/* 000335 0x80B2BD6C 00401825 */ move	$v1, $v0
/* 000336 0x80B2BD70 24030001 */ li	$v1, 0X1
.L80B2BD74:
/* 000337 0x80B2BD74 00601025 */ move	$v0, $v1
.L80B2BD78:
/* 000338 0x80B2BD78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000339 0x80B2BD7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000340 0x80B2BD80 03E00008 */ jr	$ra
/* 000341 0x80B2BD84 00000000 */ nop

glabel func_80B2BD88
/* 000342 0x80B2BD88 AFA40000 */ sw	$a0, 0X0($sp)
/* 000343 0x80B2BD8C AFA50004 */ sw	$a1, 0X4($sp)
/* 000344 0x80B2BD90 03E00008 */ jr	$ra
/* 000345 0x80B2BD94 00000000 */ nop

glabel func_80B2BD98
/* 000346 0x80B2BD98 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000347 0x80B2BD9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000348 0x80B2BDA0 AFA50034 */ sw	$a1, 0X34($sp)
/* 000349 0x80B2BDA4 00803825 */ move	$a3, $a0
/* 000350 0x80B2BDA8 84E2001C */ lh	$v0, 0X1C($a3)
/* 000351 0x80B2BDAC 3C0580B3 */ lui	$a1, %hi(D_80B2C500)
/* 000352 0x80B2BDB0 AFA70030 */ sw	$a3, 0X30($sp)
/* 000353 0x80B2BDB4 00027080 */ sll	$t6, $v0, 2
/* 000354 0x80B2BDB8 00AE2821 */ addu	$a1, $a1, $t6
/* 000355 0x80B2BDBC 8CA5C500 */ lw	$a1, %lo(D_80B2C500)($a1)
/* 000356 0x80B2BDC0 8FA40034 */ lw	$a0, 0X34($sp)
/* 000357 0x80B2BDC4 0C04CC0E */ jal	func_80133038
/* 000358 0x80B2BDC8 27A6001C */ addiu	$a2, $sp, 0X1C
/* 000359 0x80B2BDCC 1040000B */ beqz	$v0, .L80B2BDFC
/* 000360 0x80B2BDD0 8FA70030 */ lw	$a3, 0X30($sp)
/* 000361 0x80B2BDD4 93AF001C */ lbu	$t7, 0X1C($sp)
/* 000362 0x80B2BDD8 90F801D8 */ lbu	$t8, 0X1D8($a3)
/* 000363 0x80B2BDDC 00E02025 */ move	$a0, $a3
/* 000364 0x80B2BDE0 8FA50034 */ lw	$a1, 0X34($sp)
/* 000365 0x80B2BDE4 11F8000C */ beq	$t7, $t8, .L80B2BE18
/* 000366 0x80B2BDE8 27A6001C */ addiu	$a2, $sp, 0X1C
/* 000367 0x80B2BDEC 0C2CAF4C */ jal	func_80B2BD30
/* 000368 0x80B2BDF0 AFA70030 */ sw	$a3, 0X30($sp)
/* 000369 0x80B2BDF4 14400008 */ bnez	$v0, .L80B2BE18
/* 000370 0x80B2BDF8 8FA70030 */ lw	$a3, 0X30($sp)
.L80B2BDFC:
/* 000371 0x80B2BDFC 8CF90004 */ lw	$t9, 0X4($a3)
/* 000372 0x80B2BE00 2401FFFE */ li	$at, -0X2
/* 000373 0x80B2BE04 ACE000C8 */ sw	$zero, 0XC8($a3)
/* 000374 0x80B2BE08 03214024 */ and	$t0, $t9, $at
/* 000375 0x80B2BE0C ACE80004 */ sw	$t0, 0X4($a3)
/* 000376 0x80B2BE10 10000007 */ b	.L80B2BE30
/* 000377 0x80B2BE14 A3A0001C */ sb	$zero, 0X1C($sp)
.L80B2BE18:
/* 000378 0x80B2BE18 8CEA0004 */ lw	$t2, 0X4($a3)
/* 000379 0x80B2BE1C 3C09800B */ lui	$t1, %hi(func_800B3FC0)
/* 000380 0x80B2BE20 25293FC0 */ addiu	$t1, $t1, %lo(func_800B3FC0)
/* 000381 0x80B2BE24 354B0001 */ ori	$t3, $t2, 0X1
/* 000382 0x80B2BE28 ACE900C8 */ sw	$t1, 0XC8($a3)
/* 000383 0x80B2BE2C ACEB0004 */ sw	$t3, 0X4($a3)
.L80B2BE30:
/* 000384 0x80B2BE30 93AC001C */ lbu	$t4, 0X1C($sp)
/* 000385 0x80B2BE34 00E02025 */ move	$a0, $a3
/* 000386 0x80B2BE38 A0EC01D8 */ sb	$t4, 0X1D8($a3)
/* 000387 0x80B2BE3C 0C2CAF62 */ jal	func_80B2BD88
/* 000388 0x80B2BE40 8FA50034 */ lw	$a1, 0X34($sp)
/* 000389 0x80B2BE44 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000390 0x80B2BE48 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000391 0x80B2BE4C 03E00008 */ jr	$ra
/* 000392 0x80B2BE50 00000000 */ nop

glabel func_80B2BE54
/* 000393 0x80B2BE54 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000394 0x80B2BE58 AFB00020 */ sw	$s0, 0X20($sp)
/* 000395 0x80B2BE5C 00808025 */ move	$s0, $a0
/* 000396 0x80B2BE60 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000397 0x80B2BE64 8E0601DC */ lw	$a2, 0X1DC($s0)
/* 000398 0x80B2BE68 8E070210 */ lw	$a3, 0X210($s0)
/* 000399 0x80B2BE6C 260E01E0 */ addiu	$t6, $s0, 0X1E0
/* 000400 0x80B2BE70 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000401 0x80B2BE74 0C042FD6 */ jal	func_8010BF58
/* 000402 0x80B2BE78 02002025 */ move	$a0, $s0
/* 000403 0x80B2BE7C 5040002B */ beqzl	$v0, .L80B2BF2C
/* 000404 0x80B2BE80 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000405 0x80B2BE84 0C2CAE1D */ jal	func_80B2B874
/* 000406 0x80B2BE88 02002025 */ move	$a0, $s0
/* 000407 0x80B2BE8C 8E0F021C */ lw	$t7, 0X21C($s0)
/* 000408 0x80B2BE90 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000409 0x80B2BE94 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000410 0x80B2BE98 504F001C */ beql	$v0, $t7, .L80B2BF0C
/* 000411 0x80B2BE9C 26040208 */ addiu	$a0, $s0, 0X208
/* 000412 0x80B2BEA0 8C620018 */ lw	$v0, 0X18($v1)
/* 000413 0x80B2BEA4 24010001 */ li	$at, 0X1
/* 000414 0x80B2BEA8 10410007 */ beq	$v0, $at, .L80B2BEC8
/* 000415 0x80B2BEAC 24010002 */ li	$at, 0X2
/* 000416 0x80B2BEB0 10410009 */ beq	$v0, $at, .L80B2BED8
/* 000417 0x80B2BEB4 00000000 */ nop
/* 000418 0x80B2BEB8 90780F53 */ lbu	$t8, 0XF53($v1)
/* 000419 0x80B2BEBC 37190008 */ ori	$t9, $t8, 0X8
/* 000420 0x80B2BEC0 10000011 */ b	.L80B2BF08
/* 000421 0x80B2BEC4 A0790F53 */ sb	$t9, 0XF53($v1)
.L80B2BEC8:
/* 000422 0x80B2BEC8 90680F53 */ lbu	$t0, 0XF53($v1)
/* 000423 0x80B2BECC 35090004 */ ori	$t1, $t0, 0X4
/* 000424 0x80B2BED0 1000000D */ b	.L80B2BF08
/* 000425 0x80B2BED4 A0690F53 */ sb	$t1, 0XF53($v1)
.L80B2BED8:
/* 000426 0x80B2BED8 0C2CAE3D */ jal	func_80B2B8F4
/* 000427 0x80B2BEDC 02002025 */ move	$a0, $s0
/* 000428 0x80B2BEE0 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000429 0x80B2BEE4 10400005 */ beqz	$v0, .L80B2BEFC
/* 000430 0x80B2BEE8 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000431 0x80B2BEEC 906A0F53 */ lbu	$t2, 0XF53($v1)
/* 000432 0x80B2BEF0 354B0008 */ ori	$t3, $t2, 0X8
/* 000433 0x80B2BEF4 10000004 */ b	.L80B2BF08
/* 000434 0x80B2BEF8 A06B0F53 */ sb	$t3, 0XF53($v1)
.L80B2BEFC:
/* 000435 0x80B2BEFC 906C0F53 */ lbu	$t4, 0XF53($v1)
/* 000436 0x80B2BF00 358D0004 */ ori	$t5, $t4, 0X4
/* 000437 0x80B2BF04 A06D0F53 */ sb	$t5, 0XF53($v1)
.L80B2BF08:
/* 000438 0x80B2BF08 26040208 */ addiu	$a0, $s0, 0X208
.L80B2BF0C:
/* 000439 0x80B2BF0C 24050003 */ li	$a1, 0X3
/* 000440 0x80B2BF10 0C04EBB5 */ jal	func_8013AED4
/* 000441 0x80B2BF14 24060007 */ li	$a2, 0X7
/* 000442 0x80B2BF18 3C0E80B3 */ lui	$t6, %hi(func_80B2BD98)
/* 000443 0x80B2BF1C 25CEBD98 */ addiu	$t6, $t6, %lo(func_80B2BD98)
/* 000444 0x80B2BF20 AE0001E0 */ sw	$zero, 0X1E0($s0)
/* 000445 0x80B2BF24 AE0E0188 */ sw	$t6, 0X188($s0)
/* 000446 0x80B2BF28 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B2BF2C:
/* 000447 0x80B2BF2C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000448 0x80B2BF30 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000449 0x80B2BF34 03E00008 */ jr	$ra
/* 000450 0x80B2BF38 00000000 */ nop

glabel EnPst_Init
/* 000451 0x80B2BF3C 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000452 0x80B2BF40 AFB00028 */ sw	$s0, 0X28($sp)
/* 000453 0x80B2BF44 00808025 */ move	$s0, $a0
/* 000454 0x80B2BF48 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000455 0x80B2BF4C AFA50044 */ sw	$a1, 0X44($sp)
/* 000456 0x80B2BF50 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000457 0x80B2BF54 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000458 0x80B2BF58 260400BC */ addiu	$a0, $s0, 0XBC
/* 000459 0x80B2BF5C 24050000 */ li	$a1, 0X0
/* 000460 0x80B2BF60 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000461 0x80B2BF64 3C074190 */ lui	$a3, 0x4190
/* 000462 0x80B2BF68 26050144 */ addiu	$a1, $s0, 0X144
/* 000463 0x80B2BF6C 3C060600 */ lui	$a2, 0x0600
/* 000464 0x80B2BF70 260E01E4 */ addiu	$t6, $s0, 0X1E4
/* 000465 0x80B2BF74 260F01F6 */ addiu	$t7, $s0, 0X1F6
/* 000466 0x80B2BF78 24180003 */ li	$t8, 0X3
/* 000467 0x80B2BF7C AFB80018 */ sw	$t8, 0X18($sp)
/* 000468 0x80B2BF80 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000469 0x80B2BF84 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000470 0x80B2BF88 24C61A80 */ addiu	$a2, $a2, 0X1A80
/* 000471 0x80B2BF8C AFA50030 */ sw	$a1, 0X30($sp)
/* 000472 0x80B2BF90 8FA40044 */ lw	$a0, 0X44($sp)
/* 000473 0x80B2BF94 0C04DACC */ jal	SkelAnime_InitSV
/* 000474 0x80B2BF98 00003825 */ move	$a3, $zero
/* 000475 0x80B2BF9C 3C0780B3 */ lui	$a3, %hi(D_80B2C4B8)
/* 000476 0x80B2BFA0 24E7C4B8 */ addiu	$a3, $a3, %lo(D_80B2C4B8)
/* 000477 0x80B2BFA4 8FA40044 */ lw	$a0, 0X44($sp)
/* 000478 0x80B2BFA8 2605018C */ addiu	$a1, $s0, 0X18C
/* 000479 0x80B2BFAC 0C0384DD */ jal	Collision_InitCylinder
/* 000480 0x80B2BFB0 02003025 */ move	$a2, $s0
/* 000481 0x80B2BFB4 0C0380E8 */ jal	func_800E03A0
/* 000482 0x80B2BFB8 24040016 */ li	$a0, 0X16
/* 000483 0x80B2BFBC 3C0680B3 */ lui	$a2, %hi(D_80B2C4E4)
/* 000484 0x80B2BFC0 24C6C4E4 */ addiu	$a2, $a2, %lo(D_80B2C4E4)
/* 000485 0x80B2BFC4 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000486 0x80B2BFC8 0C039D57 */ jal	func_800E755C
/* 000487 0x80B2BFCC 00402825 */ move	$a1, $v0
/* 000488 0x80B2BFD0 26040208 */ addiu	$a0, $s0, 0X208
/* 000489 0x80B2BFD4 24050003 */ li	$a1, 0X3
/* 000490 0x80B2BFD8 0C04EBB5 */ jal	func_8013AED4
/* 000491 0x80B2BFDC 24060007 */ li	$a2, 0X7
/* 000492 0x80B2BFE0 3C0580B3 */ lui	$a1, %hi(D_80B2C4F0)
/* 000493 0x80B2BFE4 24A5C4F0 */ addiu	$a1, $a1, %lo(D_80B2C4F0)
/* 000494 0x80B2BFE8 8FA40030 */ lw	$a0, 0X30($sp)
/* 000495 0x80B2BFEC 0C04EF1B */ jal	func_8013BC6C
/* 000496 0x80B2BFF0 00003025 */ move	$a2, $zero
/* 000497 0x80B2BFF4 3C053CA3 */ lui	$a1, 0x3CA3
/* 000498 0x80B2BFF8 A200001F */ sb	$zero, 0X1F($s0)
/* 000499 0x80B2BFFC 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000500 0x80B2C000 0C02D9F8 */ jal	Actor_SetScale
/* 000501 0x80B2C004 02002025 */ move	$a0, $s0
/* 000502 0x80B2C008 44800000 */ mtc1	$zero, $f0
/* 000503 0x80B2C00C 3C1980B3 */ lui	$t9, %hi(func_80B2BD98)
/* 000504 0x80B2C010 2739BD98 */ addiu	$t9, $t9, %lo(func_80B2BD98)
/* 000505 0x80B2C014 AE190188 */ sw	$t9, 0X188($s0)
/* 000506 0x80B2C018 24080004 */ li	$t0, 0X4
/* 000507 0x80B2C01C 44060000 */ mfc1	$a2, $f0
/* 000508 0x80B2C020 44070000 */ mfc1	$a3, $f0
/* 000509 0x80B2C024 AFA80014 */ sw	$t0, 0X14($sp)
/* 000510 0x80B2C028 8FA40044 */ lw	$a0, 0X44($sp)
/* 000511 0x80B2C02C 02002825 */ move	$a1, $s0
/* 000512 0x80B2C030 0C02DE2E */ jal	func_800B78B8
/* 000513 0x80B2C034 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000514 0x80B2C038 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000515 0x80B2C03C 8FB00028 */ lw	$s0, 0X28($sp)
/* 000516 0x80B2C040 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000517 0x80B2C044 03E00008 */ jr	$ra
/* 000518 0x80B2C048 00000000 */ nop

glabel EnPst_Destroy
/* 000519 0x80B2C04C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000520 0x80B2C050 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000521 0x80B2C054 00803025 */ move	$a2, $a0
/* 000522 0x80B2C058 00A03825 */ move	$a3, $a1
/* 000523 0x80B2C05C 00E02025 */ move	$a0, $a3
/* 000524 0x80B2C060 0C03847B */ jal	Collision_FiniCylinder
/* 000525 0x80B2C064 24C5018C */ addiu	$a1, $a2, 0X18C
/* 000526 0x80B2C068 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000527 0x80B2C06C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000528 0x80B2C070 03E00008 */ jr	$ra
/* 000529 0x80B2C074 00000000 */ nop

glabel EnPst_Update
/* 000530 0x80B2C078 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000531 0x80B2C07C AFB00020 */ sw	$s0, 0X20($sp)
/* 000532 0x80B2C080 00808025 */ move	$s0, $a0
/* 000533 0x80B2C084 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000534 0x80B2C088 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000535 0x80B2C08C 02002025 */ move	$a0, $s0
/* 000536 0x80B2C090 0C2CAEFF */ jal	func_80B2BBFC
/* 000537 0x80B2C094 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000538 0x80B2C098 8E190188 */ lw	$t9, 0X188($s0)
/* 000539 0x80B2C09C 02002025 */ move	$a0, $s0
/* 000540 0x80B2C0A0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000541 0x80B2C0A4 0320F809 */ jalr	$t9
/* 000542 0x80B2C0A8 00000000 */ nop
/* 000543 0x80B2C0AC 920E01D8 */ lbu	$t6, 0X1D8($s0)
/* 000544 0x80B2C0B0 02002025 */ move	$a0, $s0
/* 000545 0x80B2C0B4 51C00015 */ beqzl	$t6, .L80B2C10C
/* 000546 0x80B2C0B8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000547 0x80B2C0BC 0C02DCF8 */ jal	Actor_IsActorFacingLink
/* 000548 0x80B2C0C0 24051FFE */ li	$a1, 0X1FFE
/* 000549 0x80B2C0C4 1040000A */ beqz	$v0, .L80B2C0F0
/* 000550 0x80B2C0C8 02002025 */ move	$a0, $s0
/* 000551 0x80B2C0CC AE000214 */ sw	$zero, 0X214($s0)
/* 000552 0x80B2C0D0 AFA00010 */ sw	$zero, 0X10($sp)
/* 000553 0x80B2C0D4 960F0208 */ lhu	$t7, 0X208($s0)
/* 000554 0x80B2C0D8 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000555 0x80B2C0DC 3C064270 */ lui	$a2, 0x4270
/* 000556 0x80B2C0E0 31F80007 */ andi	$t8, $t7, 0X7
/* 000557 0x80B2C0E4 AFB80014 */ sw	$t8, 0X14($sp)
/* 000558 0x80B2C0E8 0C04F259 */ jal	func_8013C964
/* 000559 0x80B2C0EC 3C0741A0 */ lui	$a3, 0x41A0
.L80B2C0F0:
/* 000560 0x80B2C0F0 02002025 */ move	$a0, $s0
/* 000561 0x80B2C0F4 0C02D9D7 */ jal	Actor_SetHeight
/* 000562 0x80B2C0F8 3C0541A0 */ lui	$a1, 0x41A0
/* 000563 0x80B2C0FC 02002025 */ move	$a0, $s0
/* 000564 0x80B2C100 0C2CAE0C */ jal	func_80B2B830
/* 000565 0x80B2C104 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000566 0x80B2C108 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B2C10C:
/* 000567 0x80B2C10C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000568 0x80B2C110 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000569 0x80B2C114 03E00008 */ jr	$ra
/* 000570 0x80B2C118 00000000 */ nop

glabel func_80B2C11C
/* 000571 0x80B2C11C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000572 0x80B2C120 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000573 0x80B2C124 AFA40018 */ sw	$a0, 0X18($sp)
/* 000574 0x80B2C128 AFA60020 */ sw	$a2, 0X20($sp)
/* 000575 0x80B2C12C AFA70024 */ sw	$a3, 0X24($sp)
/* 000576 0x80B2C130 24010002 */ li	$at, 0X2
/* 000577 0x80B2C134 14A10010 */ bne	$a1, $at, .L80B2C178
/* 000578 0x80B2C138 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000579 0x80B2C13C 95CF0208 */ lhu	$t7, 0X208($t6)
/* 000580 0x80B2C140 3C01C2C8 */ lui	$at, 0xC2C8
/* 000581 0x80B2C144 31F80040 */ andi	$t8, $t7, 0X40
/* 000582 0x80B2C148 53000006 */ beqzl	$t8, .L80B2C164
/* 000583 0x80B2C14C 44806000 */ mtc1	$zero, $f12
/* 000584 0x80B2C150 44817000 */ mtc1	$at, $f14
/* 000585 0x80B2C154 44806000 */ mtc1	$zero, $f12
/* 000586 0x80B2C158 10000005 */ b	.L80B2C170
/* 000587 0x80B2C15C 44066000 */ mfc1	$a2, $f12
/* 000588 0x80B2C160 44806000 */ mtc1	$zero, $f12
.L80B2C164:
/* 000589 0x80B2C164 00000000 */ nop
/* 000590 0x80B2C168 46006386 */ mov.s	$f14, $f12
/* 000591 0x80B2C16C 44066000 */ mfc1	$a2, $f12
.L80B2C170:
/* 000592 0x80B2C170 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000593 0x80B2C174 24070001 */ li	$a3, 0X1
.L80B2C178:
/* 000594 0x80B2C178 00001025 */ move	$v0, $zero
/* 000595 0x80B2C17C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000596 0x80B2C180 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000597 0x80B2C184 03E00008 */ jr	$ra
/* 000598 0x80B2C188 00000000 */ nop

glabel EnPst_Draw
/* 000599 0x80B2C18C 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000600 0x80B2C190 AFB00028 */ sw	$s0, 0X28($sp)
/* 000601 0x80B2C194 00808025 */ move	$s0, $a0
/* 000602 0x80B2C198 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000603 0x80B2C19C AFA50034 */ sw	$a1, 0X34($sp)
/* 000604 0x80B2C1A0 920E01D8 */ lbu	$t6, 0X1D8($s0)
/* 000605 0x80B2C1A4 8FAF0034 */ lw	$t7, 0X34($sp)
/* 000606 0x80B2C1A8 51C0000E */ beqzl	$t6, .L80B2C1E4
/* 000607 0x80B2C1AC 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000608 0x80B2C1B0 0C04B0A3 */ jal	func_8012C28C
/* 000609 0x80B2C1B4 8DE40000 */ lw	$a0, 0X0($t7)
/* 000610 0x80B2C1B8 8E050148 */ lw	$a1, 0X148($s0)
/* 000611 0x80B2C1BC 8E060164 */ lw	$a2, 0X164($s0)
/* 000612 0x80B2C1C0 92070146 */ lbu	$a3, 0X146($s0)
/* 000613 0x80B2C1C4 3C1880B3 */ lui	$t8, %hi(func_80B2C11C)
/* 000614 0x80B2C1C8 2718C11C */ addiu	$t8, $t8, %lo(func_80B2C11C)
/* 000615 0x80B2C1CC AFB80010 */ sw	$t8, 0X10($sp)
/* 000616 0x80B2C1D0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000617 0x80B2C1D4 AFA00014 */ sw	$zero, 0X14($sp)
/* 000618 0x80B2C1D8 0C04CFCA */ jal	SkelAnime_DrawSV
/* 000619 0x80B2C1DC 8FA40034 */ lw	$a0, 0X34($sp)
/* 000620 0x80B2C1E0 8FBF002C */ lw	$ra, 0X2C($sp)
.L80B2C1E4:
/* 000621 0x80B2C1E4 8FB00028 */ lw	$s0, 0X28($sp)
/* 000622 0x80B2C1E8 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000623 0x80B2C1EC 03E00008 */ jr	$ra
/* 000624 0x80B2C1F0 00000000 */ nop
/* 000625 0x80B2C1F4 00000000 */ nop
/* 000626 0x80B2C1F8 00000000 */ nop
/* 000627 0x80B2C1FC 00000000 */ nop
