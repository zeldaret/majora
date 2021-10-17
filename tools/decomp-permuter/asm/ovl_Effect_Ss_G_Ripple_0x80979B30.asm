.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80979B30
/* 000000 0x80979B30 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000001 0x80979B34 AFB10020 */ sw	$s1, 0X20($sp)
/* 000002 0x80979B38 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000003 0x80979B3C 00C08025 */ move	$s0, $a2
/* 000004 0x80979B40 00E08825 */ move	$s1, $a3
/* 000005 0x80979B44 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000006 0x80979B48 AFA40038 */ sw	$a0, 0X38($sp)
/* 000007 0x80979B4C AFA5003C */ sw	$a1, 0X3C($sp)
/* 000008 0x80979B50 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000009 0x80979B54 AFA00030 */ sw	$zero, 0X30($sp)
/* 000010 0x80979B58 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000011 0x80979B5C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000012 0x80979B60 2604000C */ addiu	$a0, $s0, 0XC
/* 000013 0x80979B64 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000014 0x80979B68 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000015 0x80979B6C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000016 0x80979B70 26040018 */ addiu	$a0, $s0, 0X18
/* 000017 0x80979B74 02002025 */ move	$a0, $s0
/* 000018 0x80979B78 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000019 0x80979B7C 02202825 */ move	$a1, $s1
/* 000020 0x80979B80 3C0E0403 */ lui	$t6, 0x0403
/* 000021 0x80979B84 25CE77B0 */ addiu	$t6, $t6, 0X77B0
/* 000022 0x80979B88 AE0E0038 */ sw	$t6, 0X38($s0)
/* 000023 0x80979B8C 862F0010 */ lh	$t7, 0X10($s1)
/* 000024 0x80979B90 3C198098 */ lui	$t9, %hi(func_80979E48)
/* 000025 0x80979B94 3C088098 */ lui	$t0, %hi(func_80979E80)
/* 000026 0x80979B98 27399E48 */ addiu	$t9, $t9, %lo(func_80979E48)
/* 000027 0x80979B9C 25089E80 */ addiu	$t0, $t0, %lo(func_80979E80)
/* 000028 0x80979BA0 25F80014 */ addiu	$t8, $t7, 0X14
/* 000029 0x80979BA4 A618005C */ sh	$t8, 0X5C($s0)
/* 000030 0x80979BA8 A600005A */ sh	$zero, 0X5A($s0)
/* 000031 0x80979BAC AE190028 */ sw	$t9, 0X28($s0)
/* 000032 0x80979BB0 AE080024 */ sw	$t0, 0X24($s0)
/* 000033 0x80979BB4 8629000C */ lh	$t1, 0XC($s1)
/* 000034 0x80979BB8 240200FF */ li	$v0, 0XFF
/* 000035 0x80979BBC 27AC0030 */ addiu	$t4, $sp, 0X30
/* 000036 0x80979BC0 A6090042 */ sh	$t1, 0X42($s0)
/* 000037 0x80979BC4 862A000E */ lh	$t2, 0XE($s1)
/* 000038 0x80979BC8 27AD0028 */ addiu	$t5, $sp, 0X28
/* 000039 0x80979BCC 02203025 */ move	$a2, $s1
/* 000040 0x80979BD0 A60A0044 */ sh	$t2, 0X44($s0)
/* 000041 0x80979BD4 862B0010 */ lh	$t3, 0X10($s1)
/* 000042 0x80979BD8 A6020046 */ sh	$v0, 0X46($s0)
/* 000043 0x80979BDC A6020048 */ sh	$v0, 0X48($s0)
/* 000044 0x80979BE0 A602004A */ sh	$v0, 0X4A($s0)
/* 000045 0x80979BE4 A602004C */ sh	$v0, 0X4C($s0)
/* 000046 0x80979BE8 A602004E */ sh	$v0, 0X4E($s0)
/* 000047 0x80979BEC A6020050 */ sh	$v0, 0X50($s0)
/* 000048 0x80979BF0 A6020052 */ sh	$v0, 0X52($s0)
/* 000049 0x80979BF4 A6020054 */ sh	$v0, 0X54($s0)
/* 000050 0x80979BF8 A60B0056 */ sh	$t3, 0X56($s0)
/* 000051 0x80979BFC 8FA40038 */ lw	$a0, 0X38($sp)
/* 000052 0x80979C00 AFAD0014 */ sw	$t5, 0X14($sp)
/* 000053 0x80979C04 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000054 0x80979C08 3C074040 */ lui	$a3, 0x4040
/* 000055 0x80979C0C 0C03288B */ jal	func_800CA22C
/* 000056 0x80979C10 24850830 */ addiu	$a1, $a0, 0X830
/* 000057 0x80979C14 A6020040 */ sh	$v0, 0X40($s0)
/* 000058 0x80979C18 8FAE0028 */ lw	$t6, 0X28($sp)
/* 000059 0x80979C1C 24020001 */ li	$v0, 0X1
/* 000060 0x80979C20 A60E0058 */ sh	$t6, 0X58($s0)
/* 000061 0x80979C24 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000062 0x80979C28 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000063 0x80979C2C 8FB10020 */ lw	$s1, 0X20($sp)
/* 000064 0x80979C30 03E00008 */ jr	$ra
/* 000065 0x80979C34 27BD0038 */ addiu	$sp, $sp, 0X38

glabel func_80979C38
/* 000066 0x80979C38 27BDFEE0 */ addiu	$sp, $sp, -0X120
/* 000067 0x80979C3C AFB00014 */ sw	$s0, 0X14($sp)
/* 000068 0x80979C40 00A08025 */ move	$s0, $a1
/* 000069 0x80979C44 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000070 0x80979C48 AFB10018 */ sw	$s1, 0X18($sp)
/* 000071 0x80979C4C AFA60128 */ sw	$a2, 0X128($sp)
/* 000072 0x80979C50 00803825 */ move	$a3, $a0
/* 000073 0x80979C54 8CF10000 */ lw	$s1, 0X0($a3)
/* 000074 0x80979C58 860E0042 */ lh	$t6, 0X42($s0)
/* 000075 0x80979C5C 3C018098 */ lui	$at, %hi(D_8097A000)
/* 000076 0x80979C60 C428A000 */ lwc1	$f8, %lo(D_8097A000)($at)
/* 000077 0x80979C64 448E2000 */ mtc1	$t6, $f4
/* 000078 0x80979C68 24E40830 */ addiu	$a0, $a3, 0X830
/* 000079 0x80979C6C 468021A0 */ cvt.s.w	$f6, $f4
/* 000080 0x80979C70 46083282 */ mul.s	$f10, $f6, $f8
/* 000081 0x80979C74 E7AA0118 */ swc1	$f10, 0X118($sp)
/* 000082 0x80979C78 86050058 */ lh	$a1, 0X58($s0)
/* 000083 0x80979C7C AFA70120 */ sw	$a3, 0X120($sp)
/* 000084 0x80979C80 0C030F0B */ jal	BgCheck_GetActorMeshHeader
/* 000085 0x80979C84 AFA40024 */ sw	$a0, 0X24($sp)
/* 000086 0x80979C88 86050040 */ lh	$a1, 0X40($s0)
/* 000087 0x80979C8C 2401FFFF */ li	$at, -0X1
/* 000088 0x80979C90 8FA40024 */ lw	$a0, 0X24($sp)
/* 000089 0x80979C94 50A1000C */ beql	$a1, $at, .L80979CC8
/* 000090 0x80979C98 C6020004 */ lwc1	$f2, 0X4($s0)
/* 000091 0x80979C9C 5040000A */ beqzl	$v0, .L80979CC8
/* 000092 0x80979CA0 C6020004 */ lwc1	$f2, 0X4($s0)
/* 000093 0x80979CA4 944F0024 */ lhu	$t7, 0X24($v0)
/* 000094 0x80979CA8 00AF082A */ slt	$at, $a1, $t7
/* 000095 0x80979CAC 50200006 */ beqzl	$at, .L80979CC8
/* 000096 0x80979CB0 C6020004 */ lwc1	$f2, 0X4($s0)
/* 000097 0x80979CB4 0C03295A */ jal	func_800CA568
/* 000098 0x80979CB8 86060058 */ lh	$a2, 0X58($s0)
/* 000099 0x80979CBC 10000002 */ b	.L80979CC8
/* 000100 0x80979CC0 46000086 */ mov.s	$f2, $f0
/* 000101 0x80979CC4 C6020004 */ lwc1	$f2, 0X4($s0)
.L80979CC8:
/* 000102 0x80979CC8 44061000 */ mfc1	$a2, $f2
/* 000103 0x80979CCC 27A400D4 */ addiu	$a0, $sp, 0XD4
/* 000104 0x80979CD0 8E050000 */ lw	$a1, 0X0($s0)
/* 000105 0x80979CD4 0C04E5EB */ jal	Matrix_MakeTranslation
/* 000106 0x80979CD8 8E070008 */ lw	$a3, 0X8($s0)
/* 000107 0x80979CDC C7A00118 */ lwc1	$f0, 0X118($sp)
/* 000108 0x80979CE0 27A40094 */ addiu	$a0, $sp, 0X94
/* 000109 0x80979CE4 44050000 */ mfc1	$a1, $f0
/* 000110 0x80979CE8 44060000 */ mfc1	$a2, $f0
/* 000111 0x80979CEC 44070000 */ mfc1	$a3, $f0
/* 000112 0x80979CF0 0C04E50A */ jal	Matrix_MakeScale
/* 000113 0x80979CF4 00000000 */ nop
/* 000114 0x80979CF8 27A400D4 */ addiu	$a0, $sp, 0XD4
/* 000115 0x80979CFC 27A50094 */ addiu	$a1, $sp, 0X94
/* 000116 0x80979D00 0C04E34E */ jal	Matrix_Multiply
/* 000117 0x80979D04 27A60054 */ addiu	$a2, $sp, 0X54
/* 000118 0x80979D08 02202025 */ move	$a0, $s1
/* 000119 0x80979D0C 0C04E706 */ jal	Matrix_AppendToPloyOpaDisp
/* 000120 0x80979D10 27A50054 */ addiu	$a1, $sp, 0X54
/* 000121 0x80979D14 50400048 */ beqzl	$v0, .L80979E38
/* 000122 0x80979D18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000123 0x80979D1C 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000124 0x80979D20 3C19DA38 */ lui	$t9, 0xDA38
/* 000125 0x80979D24 37390003 */ ori	$t9, $t9, 0X3
/* 000126 0x80979D28 24780008 */ addiu	$t8, $v1, 0X8
/* 000127 0x80979D2C AE3802C0 */ sw	$t8, 0X2C0($s1)
/* 000128 0x80979D30 AC620004 */ sw	$v0, 0X4($v1)
/* 000129 0x80979D34 AC790000 */ sw	$t9, 0X0($v1)
/* 000130 0x80979D38 0C04B25D */ jal	func_8012C974
/* 000131 0x80979D3C 02202025 */ move	$a0, $s1
/* 000132 0x80979D40 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000133 0x80979D44 3C09FA00 */ lui	$t1, 0xFA00
/* 000134 0x80979D48 24680008 */ addiu	$t0, $v1, 0X8
/* 000135 0x80979D4C AE2802C0 */ sw	$t0, 0X2C0($s1)
/* 000136 0x80979D50 AC690000 */ sw	$t1, 0X0($v1)
/* 000137 0x80979D54 860A004C */ lh	$t2, 0X4C($s0)
/* 000138 0x80979D58 86180048 */ lh	$t8, 0X48($s0)
/* 000139 0x80979D5C 860D0046 */ lh	$t5, 0X46($s0)
/* 000140 0x80979D60 314B00FF */ andi	$t3, $t2, 0XFF
/* 000141 0x80979D64 860A004A */ lh	$t2, 0X4A($s0)
/* 000142 0x80979D68 331900FF */ andi	$t9, $t8, 0XFF
/* 000143 0x80979D6C 000D7600 */ sll	$t6, $t5, 24
/* 000144 0x80979D70 016E7825 */ or	$t7, $t3, $t6
/* 000145 0x80979D74 00194400 */ sll	$t0, $t9, 16
/* 000146 0x80979D78 314C00FF */ andi	$t4, $t2, 0XFF
/* 000147 0x80979D7C 000C6A00 */ sll	$t5, $t4, 8
/* 000148 0x80979D80 01E84825 */ or	$t1, $t7, $t0
/* 000149 0x80979D84 012D5825 */ or	$t3, $t1, $t5
/* 000150 0x80979D88 AC6B0004 */ sw	$t3, 0X4($v1)
/* 000151 0x80979D8C 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000152 0x80979D90 3C18FB00 */ lui	$t8, 0xFB00
/* 000153 0x80979D94 246E0008 */ addiu	$t6, $v1, 0X8
/* 000154 0x80979D98 AE2E02C0 */ sw	$t6, 0X2C0($s1)
/* 000155 0x80979D9C AC780000 */ sw	$t8, 0X0($v1)
/* 000156 0x80979DA0 86190054 */ lh	$t9, 0X54($s0)
/* 000157 0x80979DA4 860D0050 */ lh	$t5, 0X50($s0)
/* 000158 0x80979DA8 860A004E */ lh	$t2, 0X4E($s0)
/* 000159 0x80979DAC 332F00FF */ andi	$t7, $t9, 0XFF
/* 000160 0x80979DB0 86190052 */ lh	$t9, 0X52($s0)
/* 000161 0x80979DB4 31AB00FF */ andi	$t3, $t5, 0XFF
/* 000162 0x80979DB8 000A6600 */ sll	$t4, $t2, 24
/* 000163 0x80979DBC 01EC4825 */ or	$t1, $t7, $t4
/* 000164 0x80979DC0 000B7400 */ sll	$t6, $t3, 16
/* 000165 0x80979DC4 332800FF */ andi	$t0, $t9, 0XFF
/* 000166 0x80979DC8 00085200 */ sll	$t2, $t0, 8
/* 000167 0x80979DCC 012EC025 */ or	$t8, $t1, $t6
/* 000168 0x80979DD0 030A7825 */ or	$t7, $t8, $t2
/* 000169 0x80979DD4 AC6F0004 */ sw	$t7, 0X4($v1)
/* 000170 0x80979DD8 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000171 0x80979DDC 3C0DE300 */ lui	$t5, 0xE300
/* 000172 0x80979DE0 35AD1A01 */ ori	$t5, $t5, 0X1A01
/* 000173 0x80979DE4 246C0008 */ addiu	$t4, $v1, 0X8
/* 000174 0x80979DE8 AE2C02C0 */ sw	$t4, 0X2C0($s1)
/* 000175 0x80979DEC 240B0020 */ li	$t3, 0X20
/* 000176 0x80979DF0 AC6B0004 */ sw	$t3, 0X4($v1)
/* 000177 0x80979DF4 AC6D0000 */ sw	$t5, 0X0($v1)
/* 000178 0x80979DF8 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000179 0x80979DFC 3C0EE300 */ lui	$t6, 0xE300
/* 000180 0x80979E00 35CE1801 */ ori	$t6, $t6, 0X1801
/* 000181 0x80979E04 24690008 */ addiu	$t1, $v1, 0X8
/* 000182 0x80979E08 AE2902C0 */ sw	$t1, 0X2C0($s1)
/* 000183 0x80979E0C 24190080 */ li	$t9, 0X80
/* 000184 0x80979E10 AC790004 */ sw	$t9, 0X4($v1)
/* 000185 0x80979E14 AC6E0000 */ sw	$t6, 0X0($v1)
/* 000186 0x80979E18 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 000187 0x80979E1C 3C18DE00 */ lui	$t8, 0xDE00
/* 000188 0x80979E20 24680008 */ addiu	$t0, $v1, 0X8
/* 000189 0x80979E24 AE2802C0 */ sw	$t0, 0X2C0($s1)
/* 000190 0x80979E28 AC780000 */ sw	$t8, 0X0($v1)
/* 000191 0x80979E2C 8E0A0038 */ lw	$t2, 0X38($s0)
/* 000192 0x80979E30 AC6A0004 */ sw	$t2, 0X4($v1)
/* 000193 0x80979E34 8FBF001C */ lw	$ra, 0X1C($sp)
.L80979E38:
/* 000194 0x80979E38 8FB00014 */ lw	$s0, 0X14($sp)
/* 000195 0x80979E3C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000196 0x80979E40 03E00008 */ jr	$ra
/* 000197 0x80979E44 27BD0120 */ addiu	$sp, $sp, 0X120

glabel func_80979E48
/* 000198 0x80979E48 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000199 0x80979E4C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000200 0x80979E50 00C02825 */ move	$a1, $a2
/* 000201 0x80979E54 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000202 0x80979E58 84AE0056 */ lh	$t6, 0X56($a1)
/* 000203 0x80979E5C 3C060403 */ lui	$a2, 0x0403
/* 000204 0x80979E60 55C00004 */ bnezl	$t6, .L80979E74
/* 000205 0x80979E64 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000206 0x80979E68 0C25E70E */ jal	func_80979C38
/* 000207 0x80979E6C 24C667B0 */ addiu	$a2, $a2, 0X67B0
/* 000208 0x80979E70 8FBF0014 */ lw	$ra, 0X14($sp)
.L80979E74:
/* 000209 0x80979E74 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000210 0x80979E78 03E00008 */ jr	$ra
/* 000211 0x80979E7C 00000000 */ nop

glabel func_80979E80
/* 000212 0x80979E80 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000213 0x80979E84 AFB00020 */ sw	$s0, 0X20($sp)
/* 000214 0x80979E88 00C08025 */ move	$s0, $a2
/* 000215 0x80979E8C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000216 0x80979E90 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000217 0x80979E94 27AE0038 */ addiu	$t6, $sp, 0X38
/* 000218 0x80979E98 27AF0034 */ addiu	$t7, $sp, 0X34
/* 000219 0x80979E9C AFAF0014 */ sw	$t7, 0X14($sp)
/* 000220 0x80979EA0 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000221 0x80979EA4 24850830 */ addiu	$a1, $a0, 0X830
/* 000222 0x80979EA8 02003025 */ move	$a2, $s0
/* 000223 0x80979EAC 0C03288B */ jal	func_800CA22C
/* 000224 0x80979EB0 3C074040 */ lui	$a3, 0x4040
/* 000225 0x80979EB4 86030056 */ lh	$v1, 0X56($s0)
/* 000226 0x80979EB8 A6020040 */ sh	$v0, 0X40($s0)
/* 000227 0x80979EBC 8FB80034 */ lw	$t8, 0X34($sp)
/* 000228 0x80979EC0 2479FFFF */ addiu	$t9, $v1, -0X1
/* 000229 0x80979EC4 14600003 */ bnez	$v1, .L80979ED4
/* 000230 0x80979EC8 A6180058 */ sh	$t8, 0X58($s0)
/* 000231 0x80979ECC 10000003 */ b	.L80979EDC
/* 000232 0x80979ED0 00001025 */ move	$v0, $zero
.L80979ED4:
/* 000233 0x80979ED4 A6190056 */ sh	$t9, 0X56($s0)
/* 000234 0x80979ED8 86020056 */ lh	$v0, 0X56($s0)
.L80979EDC:
/* 000235 0x80979EDC 5440003D */ bnezl	$v0, .L80979FD4
/* 000236 0x80979EE0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000237 0x80979EE4 86080042 */ lh	$t0, 0X42($s0)
/* 000238 0x80979EE8 3C013F80 */ lui	$at, 0x3F80
/* 000239 0x80979EEC 44815000 */ mtc1	$at, $f10
/* 000240 0x80979EF0 44882000 */ mtc1	$t0, $f4
/* 000241 0x80979EF4 3C063E4C */ lui	$a2, 0x3E4C
/* 000242 0x80979EF8 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000243 0x80979EFC 468021A0 */ cvt.s.w	$f6, $f4
/* 000244 0x80979F00 27A40044 */ addiu	$a0, $sp, 0X44
/* 000245 0x80979F04 3C0741F0 */ lui	$a3, 0x41F0
/* 000246 0x80979F08 E7A60044 */ swc1	$f6, 0X44($sp)
/* 000247 0x80979F0C 86090044 */ lh	$t1, 0X44($s0)
/* 000248 0x80979F10 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000249 0x80979F14 44894000 */ mtc1	$t1, $f8
/* 000250 0x80979F18 00000000 */ nop
/* 000251 0x80979F1C 46804220 */ cvt.s.w	$f8, $f8
/* 000252 0x80979F20 44054000 */ mfc1	$a1, $f8
/* 000253 0x80979F24 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000254 0x80979F28 00000000 */ nop
/* 000255 0x80979F2C 860C004C */ lh	$t4, 0X4C($s0)
/* 000256 0x80979F30 C7B00044 */ lwc1	$f16, 0X44($sp)
/* 000257 0x80979F34 3C0140E0 */ lui	$at, 0x40E0
/* 000258 0x80979F38 448C2000 */ mtc1	$t4, $f4
/* 000259 0x80979F3C 4600848D */ trunc.w.s	$f18, $f16
/* 000260 0x80979F40 44818000 */ mtc1	$at, $f16
/* 000261 0x80979F44 3C063E4C */ lui	$a2, 0x3E4C
/* 000262 0x80979F48 468021A0 */ cvt.s.w	$f6, $f4
/* 000263 0x80979F4C 440B9000 */ mfc1	$t3, $f18
/* 000264 0x80979F50 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000265 0x80979F54 27A40040 */ addiu	$a0, $sp, 0X40
/* 000266 0x80979F58 A60B0042 */ sh	$t3, 0X42($s0)
/* 000267 0x80979F5C 24050000 */ li	$a1, 0X0
/* 000268 0x80979F60 E7A60040 */ swc1	$f6, 0X40($sp)
/* 000269 0x80979F64 860D0054 */ lh	$t5, 0X54($s0)
/* 000270 0x80979F68 3C074170 */ lui	$a3, 0x4170
/* 000271 0x80979F6C E7B00010 */ swc1	$f16, 0X10($sp)
/* 000272 0x80979F70 448D4000 */ mtc1	$t5, $f8
/* 000273 0x80979F74 00000000 */ nop
/* 000274 0x80979F78 468042A0 */ cvt.s.w	$f10, $f8
/* 000275 0x80979F7C 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000276 0x80979F80 E7AA003C */ swc1	$f10, 0X3C($sp)
/* 000277 0x80979F84 3C0140E0 */ lui	$at, 0x40E0
/* 000278 0x80979F88 44819000 */ mtc1	$at, $f18
/* 000279 0x80979F8C 3C063E4C */ lui	$a2, 0x3E4C
/* 000280 0x80979F90 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000281 0x80979F94 27A4003C */ addiu	$a0, $sp, 0X3C
/* 000282 0x80979F98 24050000 */ li	$a1, 0X0
/* 000283 0x80979F9C 3C074170 */ lui	$a3, 0x4170
/* 000284 0x80979FA0 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000285 0x80979FA4 E7B20010 */ swc1	$f18, 0X10($sp)
/* 000286 0x80979FA8 C7A40040 */ lwc1	$f4, 0X40($sp)
/* 000287 0x80979FAC 4600218D */ trunc.w.s	$f6, $f4
/* 000288 0x80979FB0 440F3000 */ mfc1	$t7, $f6
/* 000289 0x80979FB4 00000000 */ nop
/* 000290 0x80979FB8 A60F004C */ sh	$t7, 0X4C($s0)
/* 000291 0x80979FBC C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000292 0x80979FC0 4600428D */ trunc.w.s	$f10, $f8
/* 000293 0x80979FC4 44195000 */ mfc1	$t9, $f10
/* 000294 0x80979FC8 00000000 */ nop
/* 000295 0x80979FCC A6190054 */ sh	$t9, 0X54($s0)
/* 000296 0x80979FD0 8FBF0024 */ lw	$ra, 0X24($sp)
.L80979FD4:
/* 000297 0x80979FD4 8FB00020 */ lw	$s0, 0X20($sp)
/* 000298 0x80979FD8 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000299 0x80979FDC 03E00008 */ jr	$ra
/* 000300 0x80979FE0 00000000 */ nop
/* 000301 0x80979FE4 00000000 */ nop
/* 000302 0x80979FE8 00000000 */ nop
/* 000303 0x80979FEC 00000000 */ nop
