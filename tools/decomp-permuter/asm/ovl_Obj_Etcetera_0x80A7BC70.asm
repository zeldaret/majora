.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel ObjEtcetera_Init
/* 000000 0x80A7BC70 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000001 0x80A7BC74 AFB00020 */ sw	$s0, 0X20($sp)
/* 000002 0x80A7BC78 00808025 */ move	$s0, $a0
/* 000003 0x80A7BC7C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000004 0x80A7BC80 AFA50054 */ sw	$a1, 0X54($sp)
/* 000005 0x80A7BC84 8602001C */ lh	$v0, 0X1C($s0)
/* 000006 0x80A7BC88 8FA40054 */ lw	$a0, 0X54($sp)
/* 000007 0x80A7BC8C 3C0580A8 */ lui	$a1, %hi(D_80A7C7BC)
/* 000008 0x80A7BC90 3042FF80 */ andi	$v0, $v0, 0XFF80
/* 000009 0x80A7BC94 000211C3 */ sra	$v0, $v0, 7
/* 000010 0x80A7BC98 04400003 */ bltz	$v0, .L80A7BCA8
/* 000011 0x80A7BC9C 28410004 */ slti	$at, $v0, 0X4
/* 000012 0x80A7BCA0 54200003 */ bnezl	$at, .L80A7BCB0
/* 000013 0x80A7BCA4 3C010001 */ lui	$at, 0x0001
.L80A7BCA8:
/* 000014 0x80A7BCA8 00001025 */ move	$v0, $zero
/* 000015 0x80A7BCAC 3C010001 */ lui	$at, 0x0001
.L80A7BCB0:
/* 000016 0x80A7BCB0 00027040 */ sll	$t6, $v0, 1
/* 000017 0x80A7BCB4 00AE2821 */ addu	$a1, $a1, $t6
/* 000018 0x80A7BCB8 34217D88 */ ori	$at, $at, 0X7D88
/* 000019 0x80A7BCBC 00812021 */ addu	$a0, $a0, $at
/* 000020 0x80A7BCC0 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 000021 0x80A7BCC4 84A5C7BC */ lh	$a1, %lo(D_80A7C7BC)($a1)
/* 000022 0x80A7BCC8 04400002 */ bltz	$v0, .L80A7BCD4
/* 000023 0x80A7BCCC 3C014120 */ lui	$at, 0x4120
/* 000024 0x80A7BCD0 A2020278 */ sb	$v0, 0X278($s0)
.L80A7BCD4:
/* 000025 0x80A7BCD4 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000026 0x80A7BCD8 44814000 */ mtc1	$at, $f8
/* 000027 0x80A7BCDC 8FA40054 */ lw	$a0, 0X54($sp)
/* 000028 0x80A7BCE0 E7A40030 */ swc1	$f4, 0X30($sp)
/* 000029 0x80A7BCE4 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000030 0x80A7BCE8 27AF0030 */ addiu	$t7, $sp, 0X30
/* 000031 0x80A7BCEC 26050080 */ addiu	$a1, $s0, 0X80
/* 000032 0x80A7BCF0 46083280 */ add.s	$f10, $f6, $f8
/* 000033 0x80A7BCF4 27A6003C */ addiu	$a2, $sp, 0X3C
/* 000034 0x80A7BCF8 02003825 */ move	$a3, $s0
/* 000035 0x80A7BCFC 24840830 */ addiu	$a0, $a0, 0X830
/* 000036 0x80A7BD00 E7AA0034 */ swc1	$f10, 0X34($sp)
/* 000037 0x80A7BD04 C610002C */ lwc1	$f16, 0X2C($s0)
/* 000038 0x80A7BD08 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000039 0x80A7BD0C 0C031047 */ jal	func_800C411C
/* 000040 0x80A7BD10 E7B00038 */ swc1	$f16, 0X38($sp)
/* 000041 0x80A7BD14 8FB8003C */ lw	$t8, 0X3C($sp)
/* 000042 0x80A7BD18 260501A0 */ addiu	$a1, $s0, 0X1A0
/* 000043 0x80A7BD1C 3C0780A8 */ lui	$a3, %hi(D_80A7C790)
/* 000044 0x80A7BD20 A2180085 */ sb	$t8, 0X85($s0)
/* 000045 0x80A7BD24 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000046 0x80A7BD28 8FA40054 */ lw	$a0, 0X54($sp)
/* 000047 0x80A7BD2C 24E7C790 */ addiu	$a3, $a3, %lo(D_80A7C790)
/* 000048 0x80A7BD30 0C0384DD */ jal	Collision_InitCylinder
/* 000049 0x80A7BD34 02003025 */ move	$a2, $s0
/* 000050 0x80A7BD38 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000051 0x80A7BD3C 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000052 0x80A7BD40 02002025 */ move	$a0, $s0
/* 000053 0x80A7BD44 3C1980A8 */ lui	$t9, %hi(func_80A7C308)
/* 000054 0x80A7BD48 2739C308 */ addiu	$t9, $t9, %lo(func_80A7C308)
/* 000055 0x80A7BD4C 3C053C23 */ lui	$a1, 0x3C23
/* 000056 0x80A7BD50 AE190280 */ sw	$t9, 0X280($s0)
/* 000057 0x80A7BD54 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000058 0x80A7BD58 0C02D9F8 */ jal	Actor_SetScale
/* 000059 0x80A7BD5C 02002025 */ move	$a0, $s0
/* 000060 0x80A7BD60 3C0180A8 */ lui	$at, %hi(D_80A7C820)
/* 000061 0x80A7BD64 C432C820 */ lwc1	$f18, %lo(D_80A7C820)($at)
/* 000062 0x80A7BD68 A6000276 */ sh	$zero, 0X276($s0)
/* 000063 0x80A7BD6C E612005C */ swc1	$f18, 0X5C($s0)
/* 000064 0x80A7BD70 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000065 0x80A7BD74 8FB00020 */ lw	$s0, 0X20($sp)
/* 000066 0x80A7BD78 03E00008 */ jr	$ra
/* 000067 0x80A7BD7C 27BD0050 */ addiu	$sp, $sp, 0X50

glabel ObjEtcetera_Destroy
/* 000068 0x80A7BD80 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000069 0x80A7BD84 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000070 0x80A7BD88 AFA40018 */ sw	$a0, 0X18($sp)
/* 000071 0x80A7BD8C 00A03825 */ move	$a3, $a1
/* 000072 0x80A7BD90 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000073 0x80A7BD94 00E02025 */ move	$a0, $a3
/* 000074 0x80A7BD98 24E50880 */ addiu	$a1, $a3, 0X880
/* 000075 0x80A7BD9C 8DC60144 */ lw	$a2, 0X144($t6)
/* 000076 0x80A7BDA0 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000077 0x80A7BDA4 AFA7001C */ sw	$a3, 0X1C($sp)
/* 000078 0x80A7BDA8 8FA50018 */ lw	$a1, 0X18($sp)
/* 000079 0x80A7BDAC 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000080 0x80A7BDB0 0C03847B */ jal	Collision_FiniCylinder
/* 000081 0x80A7BDB4 24A501A0 */ addiu	$a1, $a1, 0X1A0
/* 000082 0x80A7BDB8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000083 0x80A7BDBC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000084 0x80A7BDC0 03E00008 */ jr	$ra
/* 000085 0x80A7BDC4 00000000 */ nop

glabel func_80A7BDC8
/* 000086 0x80A7BDC8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000087 0x80A7BDCC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000088 0x80A7BDD0 00A03025 */ move	$a2, $a1
/* 000089 0x80A7BDD4 84820274 */ lh	$v0, 0X274($a0)
/* 000090 0x80A7BDD8 3C053C23 */ lui	$a1, 0x3C23
/* 000091 0x80A7BDDC 3C0180A8 */ lui	$at, %hi(D_80A7C824)
/* 000092 0x80A7BDE0 18400020 */ blez	$v0, .L80A7BE64
/* 000093 0x80A7BDE4 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000094 0x80A7BDE8 3C0E0002 */ lui	$t6, 0x0002
/* 000095 0x80A7BDEC 01C67021 */ addu	$t6, $t6, $a2
/* 000096 0x80A7BDF0 8DCE8840 */ lw	$t6, -0X77C0($t6)
/* 000097 0x80A7BDF4 C424C824 */ lwc1	$f4, %lo(D_80A7C824)($at)
/* 000098 0x80A7BDF8 24010012 */ li	$at, 0X12
/* 000099 0x80A7BDFC 01C1001B */ divu	$zero, $t6, $at
/* 000100 0x80A7BE00 44823000 */ mtc1	$v0, $f6
/* 000101 0x80A7BE04 00007810 */ mfhi	$t7
/* 000102 0x80A7BE08 000FC080 */ sll	$t8, $t7, 2
/* 000103 0x80A7BE0C 46803220 */ cvt.s.w	$f8, $f6
/* 000104 0x80A7BE10 3C0180A8 */ lui	$at, %hi(D_80A7C7C4)
/* 000105 0x80A7BE14 00380821 */ addu	$at, $at, $t8
/* 000106 0x80A7BE18 C430C7C4 */ lwc1	$f16, %lo(D_80A7C7C4)($at)
/* 000107 0x80A7BE1C 3C0180A8 */ lui	$at, %hi(D_80A7C828)
/* 000108 0x80A7BE20 C426C828 */ lwc1	$f6, %lo(D_80A7C828)($at)
/* 000109 0x80A7BE24 46082282 */ mul.s	$f10, $f4, $f8
/* 000110 0x80A7BE28 AFA40018 */ sw	$a0, 0X18($sp)
/* 000111 0x80A7BE2C 460A8482 */ mul.s	$f18, $f16, $f10
/* 000112 0x80A7BE30 46069100 */ add.s	$f4, $f18, $f6
/* 000113 0x80A7BE34 44052000 */ mfc1	$a1, $f4
/* 000114 0x80A7BE38 0C02D9F8 */ jal	Actor_SetScale
/* 000115 0x80A7BE3C 00000000 */ nop
/* 000116 0x80A7BE40 8FA40018 */ lw	$a0, 0X18($sp)
/* 000117 0x80A7BE44 3C0180A8 */ lui	$at, %hi(D_80A7C82C)
/* 000118 0x80A7BE48 C428C82C */ lwc1	$f8, %lo(D_80A7C82C)($at)
/* 000119 0x80A7BE4C 84990274 */ lh	$t9, 0X274($a0)
/* 000120 0x80A7BE50 E488005C */ swc1	$f8, 0X5C($a0)
/* 000121 0x80A7BE54 2728FFFF */ addiu	$t0, $t9, -0X1
/* 000122 0x80A7BE58 A4880274 */ sh	$t0, 0X274($a0)
/* 000123 0x80A7BE5C 10000008 */ b	.L80A7BE80
/* 000124 0x80A7BE60 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A7BE64:
/* 000125 0x80A7BE64 0C02D9F8 */ jal	Actor_SetScale
/* 000126 0x80A7BE68 AFA40018 */ sw	$a0, 0X18($sp)
/* 000127 0x80A7BE6C 3C0180A8 */ lui	$at, %hi(D_80A7C830)
/* 000128 0x80A7BE70 8FA40018 */ lw	$a0, 0X18($sp)
/* 000129 0x80A7BE74 C430C830 */ lwc1	$f16, %lo(D_80A7C830)($at)
/* 000130 0x80A7BE78 E490005C */ swc1	$f16, 0X5C($a0)
/* 000131 0x80A7BE7C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A7BE80:
/* 000132 0x80A7BE80 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000133 0x80A7BE84 03E00008 */ jr	$ra
/* 000134 0x80A7BE88 00000000 */ nop

glabel func_80A7BE8C
/* 000135 0x80A7BE8C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000136 0x80A7BE90 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000137 0x80A7BE94 AFA40028 */ sw	$a0, 0X28($sp)
/* 000138 0x80A7BE98 3C040401 */ lui	$a0, 0x0401
/* 000139 0x80A7BE9C 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000140 0x80A7BEA0 248417A8 */ addiu	$a0, $a0, 0X17A8
/* 000141 0x80A7BEA4 44822000 */ mtc1	$v0, $f4
/* 000142 0x80A7BEA8 44800000 */ mtc1	$zero, $f0
/* 000143 0x80A7BEAC 8FA40028 */ lw	$a0, 0X28($sp)
/* 000144 0x80A7BEB0 468021A0 */ cvt.s.w	$f6, $f4
/* 000145 0x80A7BEB4 3C050401 */ lui	$a1, 0x0401
/* 000146 0x80A7BEB8 240E0002 */ li	$t6, 0X2
/* 000147 0x80A7BEBC 44070000 */ mfc1	$a3, $f0
/* 000148 0x80A7BEC0 AFAE0014 */ sw	$t6, 0X14($sp)
/* 000149 0x80A7BEC4 24A517A8 */ addiu	$a1, $a1, 0X17A8
/* 000150 0x80A7BEC8 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000151 0x80A7BECC 3C063F80 */ lui	$a2, 0x3F80
/* 000152 0x80A7BED0 2484015C */ addiu	$a0, $a0, 0X15C
/* 000153 0x80A7BED4 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000154 0x80A7BED8 E7A00018 */ swc1	$f0, 0X18($sp)
/* 000155 0x80A7BEDC 8FA20028 */ lw	$v0, 0X28($sp)
/* 000156 0x80A7BEE0 3C0F80A8 */ lui	$t7, %hi(func_80A7C718)
/* 000157 0x80A7BEE4 3C1880A8 */ lui	$t8, %hi(func_80A7C168)
/* 000158 0x80A7BEE8 25EFC718 */ addiu	$t7, $t7, %lo(func_80A7C718)
/* 000159 0x80A7BEEC 2718C168 */ addiu	$t8, $t8, %lo(func_80A7C168)
/* 000160 0x80A7BEF0 AC4F013C */ sw	$t7, 0X13C($v0)
/* 000161 0x80A7BEF4 AC580280 */ sw	$t8, 0X280($v0)
/* 000162 0x80A7BEF8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000163 0x80A7BEFC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000164 0x80A7BF00 03E00008 */ jr	$ra
/* 000165 0x80A7BF04 00000000 */ nop

glabel func_80A7BF08
/* 000166 0x80A7BF08 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000167 0x80A7BF0C AFB00028 */ sw	$s0, 0X28($sp)
/* 000168 0x80A7BF10 00808025 */ move	$s0, $a0
/* 000169 0x80A7BF14 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000170 0x80A7BF18 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000171 0x80A7BF1C 8FAE003C */ lw	$t6, 0X3C($sp)
/* 000172 0x80A7BF20 3C0141A0 */ lui	$at, 0x41A0
/* 000173 0x80A7BF24 8DC31CCC */ lw	$v1, 0X1CCC($t6)
/* 000174 0x80A7BF28 8C620A74 */ lw	$v0, 0XA74($v1)
/* 000175 0x80A7BF2C 304F0200 */ andi	$t7, $v0, 0X200
/* 000176 0x80A7BF30 11E0002D */ beqz	$t7, .L80A7BFE8
/* 000177 0x80A7BF34 304C2000 */ andi	$t4, $v0, 0X2000
/* 000178 0x80A7BF38 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000179 0x80A7BF3C 44813000 */ mtc1	$at, $f6
/* 000180 0x80A7BF40 3C040401 */ lui	$a0, 0x0401
/* 000181 0x80A7BF44 4606203C */ c.lt.s	$f4, $f6
/* 000182 0x80A7BF48 00000000 */ nop
/* 000183 0x80A7BF4C 45000026 */ bc1f .L80A7BFE8
/* 000184 0x80A7BF50 00000000 */ nop
/* 000185 0x80A7BF54 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000186 0x80A7BF58 2484EB7C */ addiu	$a0, $a0, -0X1484
/* 000187 0x80A7BF5C 44824000 */ mtc1	$v0, $f8
/* 000188 0x80A7BF60 44800000 */ mtc1	$zero, $f0
/* 000189 0x80A7BF64 3C050401 */ lui	$a1, 0x0401
/* 000190 0x80A7BF68 468042A0 */ cvt.s.w	$f10, $f8
/* 000191 0x80A7BF6C 24180002 */ li	$t8, 0X2
/* 000192 0x80A7BF70 44070000 */ mfc1	$a3, $f0
/* 000193 0x80A7BF74 AFB80014 */ sw	$t8, 0X14($sp)
/* 000194 0x80A7BF78 24A5EB7C */ addiu	$a1, $a1, -0X1484
/* 000195 0x80A7BF7C 2604015C */ addiu	$a0, $s0, 0X15C
/* 000196 0x80A7BF80 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000197 0x80A7BF84 3C063F80 */ lui	$a2, 0x3F80
/* 000198 0x80A7BF88 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000199 0x80A7BF8C E7A00018 */ swc1	$f0, 0X18($sp)
/* 000200 0x80A7BF90 3C1980A8 */ lui	$t9, %hi(func_80A7C718)
/* 000201 0x80A7BF94 3C0880A8 */ lui	$t0, %hi(func_80A7C1F0)
/* 000202 0x80A7BF98 2739C718 */ addiu	$t9, $t9, %lo(func_80A7C718)
/* 000203 0x80A7BF9C 2508C1F0 */ addiu	$t0, $t0, %lo(func_80A7C1F0)
/* 000204 0x80A7BFA0 3C053C23 */ lui	$a1, 0x3C23
/* 000205 0x80A7BFA4 AE19013C */ sw	$t9, 0X13C($s0)
/* 000206 0x80A7BFA8 AE080280 */ sw	$t0, 0X280($s0)
/* 000207 0x80A7BFAC 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000208 0x80A7BFB0 0C02D9F8 */ jal	Actor_SetScale
/* 000209 0x80A7BFB4 02002025 */ move	$a0, $s0
/* 000210 0x80A7BFB8 3C0180A8 */ lui	$at, %hi(D_80A7C834)
/* 000211 0x80A7BFBC C430C834 */ lwc1	$f16, %lo(D_80A7C834)($at)
/* 000212 0x80A7BFC0 960A0276 */ lhu	$t2, 0X276($s0)
/* 000213 0x80A7BFC4 3C0180A8 */ lui	$at, %hi(D_80A7C838)
/* 000214 0x80A7BFC8 E610005C */ swc1	$f16, 0X5C($s0)
/* 000215 0x80A7BFCC C432C838 */ lwc1	$f18, %lo(D_80A7C838)($at)
/* 000216 0x80A7BFD0 2409001E */ li	$t1, 0X1E
/* 000217 0x80A7BFD4 314BFFFE */ andi	$t3, $t2, 0XFFFE
/* 000218 0x80A7BFD8 A6090274 */ sh	$t1, 0X274($s0)
/* 000219 0x80A7BFDC A60B0276 */ sh	$t3, 0X276($s0)
/* 000220 0x80A7BFE0 10000051 */ b	.L80A7C128
/* 000221 0x80A7BFE4 E6120270 */ swc1	$f18, 0X270($s0)
.L80A7BFE8:
/* 000222 0x80A7BFE8 1180001E */ beqz	$t4, .L80A7C064
/* 000223 0x80A7BFEC 3C0141F0 */ lui	$at, 0x41F0
/* 000224 0x80A7BFF0 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000225 0x80A7BFF4 44813000 */ mtc1	$at, $f6
/* 000226 0x80A7BFF8 00000000 */ nop
/* 000227 0x80A7BFFC 4606203C */ c.lt.s	$f4, $f6
/* 000228 0x80A7C000 00000000 */ nop
/* 000229 0x80A7C004 45020018 */ bc1fl .L80A7C068
/* 000230 0x80A7C008 02002025 */ move	$a0, $s0
/* 000231 0x80A7C00C C600009C */ lwc1	$f0, 0X9C($s0)
/* 000232 0x80A7C010 44804000 */ mtc1	$zero, $f8
/* 000233 0x80A7C014 3C0180A8 */ lui	$at, %hi(D_80A7C83C)
/* 000234 0x80A7C018 4600403C */ c.lt.s	$f8, $f0
/* 000235 0x80A7C01C 00000000 */ nop
/* 000236 0x80A7C020 45020011 */ bc1fl .L80A7C068
/* 000237 0x80A7C024 02002025 */ move	$a0, $s0
/* 000238 0x80A7C028 C42AC83C */ lwc1	$f10, %lo(D_80A7C83C)($at)
/* 000239 0x80A7C02C 240F000A */ li	$t7, 0XA
/* 000240 0x80A7C030 86180274 */ lh	$t8, 0X274($s0)
/* 000241 0x80A7C034 460A0402 */ mul.s	$f16, $f0, $f10
/* 000242 0x80A7C038 4600848D */ trunc.w.s	$f18, $f16
/* 000243 0x80A7C03C 440E9000 */ mfc1	$t6, $f18
/* 000244 0x80A7C040 00000000 */ nop
/* 000245 0x80A7C044 01EE1023 */ subu	$v0, $t7, $t6
/* 000246 0x80A7C048 00021400 */ sll	$v0, $v0, 16
/* 000247 0x80A7C04C 00021403 */ sra	$v0, $v0, 16
/* 000248 0x80A7C050 0302082A */ slt	$at, $t8, $v0
/* 000249 0x80A7C054 50200035 */ beqzl	$at, .L80A7C12C
/* 000250 0x80A7C058 921801B1 */ lbu	$t8, 0X1B1($s0)
/* 000251 0x80A7C05C 10000032 */ b	.L80A7C128
/* 000252 0x80A7C060 A6020274 */ sh	$v0, 0X274($s0)
.L80A7C064:
/* 000253 0x80A7C064 02002025 */ move	$a0, $s0
.L80A7C068:
/* 000254 0x80A7C068 0C032BDC */ jal	func_800CAF70
/* 000255 0x80A7C06C AFA30030 */ sw	$v1, 0X30($sp)
/* 000256 0x80A7C070 10400022 */ beqz	$v0, .L80A7C0FC
/* 000257 0x80A7C074 8FA30030 */ lw	$v1, 0X30($sp)
/* 000258 0x80A7C078 96020276 */ lhu	$v0, 0X276($s0)
/* 000259 0x80A7C07C 2408000A */ li	$t0, 0XA
/* 000260 0x80A7C080 02002025 */ move	$a0, $s0
/* 000261 0x80A7C084 30590001 */ andi	$t9, $v0, 0X1
/* 000262 0x80A7C088 17200005 */ bnez	$t9, .L80A7C0A0
/* 000263 0x80A7C08C 3C0180A8 */ lui	$at, %hi(D_80A7C840)
/* 000264 0x80A7C090 0C29EFA3 */ jal	func_80A7BE8C
/* 000265 0x80A7C094 A6080274 */ sh	$t0, 0X274($s0)
/* 000266 0x80A7C098 10000015 */ b	.L80A7C0F0
/* 000267 0x80A7C09C 96020276 */ lhu	$v0, 0X276($s0)
.L80A7C0A0:
/* 000268 0x80A7C0A0 C424C840 */ lwc1	$f4, %lo(D_80A7C840)($at)
/* 000269 0x80A7C0A4 C4660070 */ lwc1	$f6, 0X70($v1)
/* 000270 0x80A7C0A8 240B000A */ li	$t3, 0XA
/* 000271 0x80A7C0AC 4606203C */ c.lt.s	$f4, $f6
/* 000272 0x80A7C0B0 00000000 */ nop
/* 000273 0x80A7C0B4 4503000D */ bc1tl .L80A7C0EC
/* 000274 0x80A7C0B8 A60B0274 */ sh	$t3, 0X274($s0)
/* 000275 0x80A7C0BC C4680ABC */ lwc1	$f8, 0XABC($v1)
/* 000276 0x80A7C0C0 44805000 */ mtc1	$zero, $f10
/* 000277 0x80A7C0C4 00000000 */ nop
/* 000278 0x80A7C0C8 460A403C */ c.lt.s	$f8, $f10
/* 000279 0x80A7C0CC 00000000 */ nop
/* 000280 0x80A7C0D0 45020008 */ bc1fl .L80A7C0F4
/* 000281 0x80A7C0D4 344C0001 */ ori	$t4, $v0, 0X1
/* 000282 0x80A7C0D8 8C690A74 */ lw	$t1, 0XA74($v1)
/* 000283 0x80A7C0DC 312A0100 */ andi	$t2, $t1, 0X100
/* 000284 0x80A7C0E0 55400004 */ bnezl	$t2, .L80A7C0F4
/* 000285 0x80A7C0E4 344C0001 */ ori	$t4, $v0, 0X1
/* 000286 0x80A7C0E8 A60B0274 */ sh	$t3, 0X274($s0)
.L80A7C0EC:
/* 000287 0x80A7C0EC 96020276 */ lhu	$v0, 0X276($s0)
.L80A7C0F0:
/* 000288 0x80A7C0F0 344C0001 */ ori	$t4, $v0, 0X1
.L80A7C0F4:
/* 000289 0x80A7C0F4 1000000C */ b	.L80A7C128
/* 000290 0x80A7C0F8 A60C0276 */ sh	$t4, 0X276($s0)
.L80A7C0FC:
/* 000291 0x80A7C0FC 96020276 */ lhu	$v0, 0X276($s0)
/* 000292 0x80A7C100 240F000A */ li	$t7, 0XA
/* 000293 0x80A7C104 02002025 */ move	$a0, $s0
/* 000294 0x80A7C108 304D0001 */ andi	$t5, $v0, 0X1
/* 000295 0x80A7C10C 51A00005 */ beqzl	$t5, .L80A7C124
/* 000296 0x80A7C110 304EFFFE */ andi	$t6, $v0, 0XFFFE
/* 000297 0x80A7C114 0C29EFA3 */ jal	func_80A7BE8C
/* 000298 0x80A7C118 A60F0274 */ sh	$t7, 0X274($s0)
/* 000299 0x80A7C11C 96020276 */ lhu	$v0, 0X276($s0)
/* 000300 0x80A7C120 304EFFFE */ andi	$t6, $v0, 0XFFFE
.L80A7C124:
/* 000301 0x80A7C124 A60E0276 */ sh	$t6, 0X276($s0)
.L80A7C128:
/* 000302 0x80A7C128 921801B1 */ lbu	$t8, 0X1B1($s0)
.L80A7C12C:
/* 000303 0x80A7C12C 2408000A */ li	$t0, 0XA
/* 000304 0x80A7C130 02002025 */ move	$a0, $s0
/* 000305 0x80A7C134 33190002 */ andi	$t9, $t8, 0X2
/* 000306 0x80A7C138 53200004 */ beqzl	$t9, .L80A7C14C
/* 000307 0x80A7C13C 02002025 */ move	$a0, $s0
/* 000308 0x80A7C140 0C29EFA3 */ jal	func_80A7BE8C
/* 000309 0x80A7C144 A6080274 */ sh	$t0, 0X274($s0)
/* 000310 0x80A7C148 02002025 */ move	$a0, $s0
.L80A7C14C:
/* 000311 0x80A7C14C 0C29EF72 */ jal	func_80A7BDC8
/* 000312 0x80A7C150 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000313 0x80A7C154 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000314 0x80A7C158 8FB00028 */ lw	$s0, 0X28($sp)
/* 000315 0x80A7C15C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000316 0x80A7C160 03E00008 */ jr	$ra
/* 000317 0x80A7C164 00000000 */ nop

glabel func_80A7C168
/* 000318 0x80A7C168 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000319 0x80A7C16C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000320 0x80A7C170 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000321 0x80A7C174 00803025 */ move	$a2, $a0
/* 000322 0x80A7C178 00C02025 */ move	$a0, $a2
/* 000323 0x80A7C17C 0C032BDC */ jal	func_800CAF70
/* 000324 0x80A7C180 AFA60018 */ sw	$a2, 0X18($sp)
/* 000325 0x80A7C184 10400005 */ beqz	$v0, .L80A7C19C
/* 000326 0x80A7C188 8FA60018 */ lw	$a2, 0X18($sp)
/* 000327 0x80A7C18C 94CE0276 */ lhu	$t6, 0X276($a2)
/* 000328 0x80A7C190 35CF0001 */ ori	$t7, $t6, 0X1
/* 000329 0x80A7C194 10000004 */ b	.L80A7C1A8
/* 000330 0x80A7C198 A4CF0276 */ sh	$t7, 0X276($a2)
.L80A7C19C:
/* 000331 0x80A7C19C 94D80276 */ lhu	$t8, 0X276($a2)
/* 000332 0x80A7C1A0 3319FFFE */ andi	$t9, $t8, 0XFFFE
/* 000333 0x80A7C1A4 A4D90276 */ sh	$t9, 0X276($a2)
.L80A7C1A8:
/* 000334 0x80A7C1A8 24C4015C */ addiu	$a0, $a2, 0X15C
/* 000335 0x80A7C1AC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000336 0x80A7C1B0 AFA60018 */ sw	$a2, 0X18($sp)
/* 000337 0x80A7C1B4 10400007 */ beqz	$v0, .L80A7C1D4
/* 000338 0x80A7C1B8 8FA60018 */ lw	$a2, 0X18($sp)
/* 000339 0x80A7C1BC 3C0880A8 */ lui	$t0, %hi(func_80A7C690)
/* 000340 0x80A7C1C0 3C0980A8 */ lui	$t1, %hi(func_80A7BF08)
/* 000341 0x80A7C1C4 2508C690 */ addiu	$t0, $t0, %lo(func_80A7C690)
/* 000342 0x80A7C1C8 2529BF08 */ addiu	$t1, $t1, %lo(func_80A7BF08)
/* 000343 0x80A7C1CC ACC8013C */ sw	$t0, 0X13C($a2)
/* 000344 0x80A7C1D0 ACC90280 */ sw	$t1, 0X280($a2)
.L80A7C1D4:
/* 000345 0x80A7C1D4 00C02025 */ move	$a0, $a2
/* 000346 0x80A7C1D8 0C29EF72 */ jal	func_80A7BDC8
/* 000347 0x80A7C1DC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000348 0x80A7C1E0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000349 0x80A7C1E4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000350 0x80A7C1E8 03E00008 */ jr	$ra
/* 000351 0x80A7C1EC 00000000 */ nop

glabel func_80A7C1F0
/* 000352 0x80A7C1F0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000353 0x80A7C1F4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000354 0x80A7C1F8 00808025 */ move	$s0, $a0
/* 000355 0x80A7C1FC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000356 0x80A7C200 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000357 0x80A7C204 0C032BDC */ jal	func_800CAF70
/* 000358 0x80A7C208 02002025 */ move	$a0, $s0
/* 000359 0x80A7C20C 50400006 */ beqzl	$v0, .L80A7C228
/* 000360 0x80A7C210 96180276 */ lhu	$t8, 0X276($s0)
/* 000361 0x80A7C214 960E0276 */ lhu	$t6, 0X276($s0)
/* 000362 0x80A7C218 35CF0001 */ ori	$t7, $t6, 0X1
/* 000363 0x80A7C21C 10000004 */ b	.L80A7C230
/* 000364 0x80A7C220 A60F0276 */ sh	$t7, 0X276($s0)
/* 000365 0x80A7C224 96180276 */ lhu	$t8, 0X276($s0)
.L80A7C228:
/* 000366 0x80A7C228 3319FFFE */ andi	$t9, $t8, 0XFFFE
/* 000367 0x80A7C22C A6190276 */ sh	$t9, 0X276($s0)
.L80A7C230:
/* 000368 0x80A7C230 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000369 0x80A7C234 2604015C */ addiu	$a0, $s0, 0X15C
/* 000370 0x80A7C238 86030274 */ lh	$v1, 0X274($s0)
/* 000371 0x80A7C23C 3C0980A8 */ lui	$t1, %hi(func_80A7C690)
/* 000372 0x80A7C240 2529C690 */ addiu	$t1, $t1, %lo(func_80A7C690)
/* 000373 0x80A7C244 18600004 */ blez	$v1, .L80A7C258
/* 000374 0x80A7C248 3C0A80A8 */ lui	$t2, %hi(func_80A7BF08)
/* 000375 0x80A7C24C 2468FFFF */ addiu	$t0, $v1, -0X1
/* 000376 0x80A7C250 1000000F */ b	.L80A7C290
/* 000377 0x80A7C254 A6080274 */ sh	$t0, 0X274($s0)
.L80A7C258:
/* 000378 0x80A7C258 254ABF08 */ addiu	$t2, $t2, %lo(func_80A7BF08)
/* 000379 0x80A7C25C 3C053C23 */ lui	$a1, 0x3C23
/* 000380 0x80A7C260 AE09013C */ sw	$t1, 0X13C($s0)
/* 000381 0x80A7C264 AE0A0280 */ sw	$t2, 0X280($s0)
/* 000382 0x80A7C268 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000383 0x80A7C26C 0C02D9F8 */ jal	Actor_SetScale
/* 000384 0x80A7C270 02002025 */ move	$a0, $s0
/* 000385 0x80A7C274 3C0180A8 */ lui	$at, %hi(D_80A7C844)
/* 000386 0x80A7C278 C424C844 */ lwc1	$f4, %lo(D_80A7C844)($at)
/* 000387 0x80A7C27C 44803000 */ mtc1	$zero, $f6
/* 000388 0x80A7C280 A6000274 */ sh	$zero, 0X274($s0)
/* 000389 0x80A7C284 E604005C */ swc1	$f4, 0X5C($s0)
/* 000390 0x80A7C288 1000001A */ b	.L80A7C2F4
/* 000391 0x80A7C28C E6060270 */ swc1	$f6, 0X270($s0)
.L80A7C290:
/* 000392 0x80A7C290 3C0180A8 */ lui	$at, %hi(D_80A7C848)
/* 000393 0x80A7C294 C42AC848 */ lwc1	$f10, %lo(D_80A7C848)($at)
/* 000394 0x80A7C298 C6080270 */ lwc1	$f8, 0X270($s0)
/* 000395 0x80A7C29C 3C0180A8 */ lui	$at, %hi(D_80A7C84C)
/* 000396 0x80A7C2A0 C6120058 */ lwc1	$f18, 0X58($s0)
/* 000397 0x80A7C2A4 460A4402 */ mul.s	$f16, $f8, $f10
/* 000398 0x80A7C2A8 02002025 */ move	$a0, $s0
/* 000399 0x80A7C2AC E6100270 */ swc1	$f16, 0X270($s0)
/* 000400 0x80A7C2B0 C424C84C */ lwc1	$f4, %lo(D_80A7C84C)($at)
/* 000401 0x80A7C2B4 3C0180A8 */ lui	$at, %hi(D_80A7C850)
/* 000402 0x80A7C2B8 C428C850 */ lwc1	$f8, %lo(D_80A7C850)($at)
/* 000403 0x80A7C2BC 46049181 */ sub.s	$f6, $f18, $f4
/* 000404 0x80A7C2C0 C6100270 */ lwc1	$f16, 0X270($s0)
/* 000405 0x80A7C2C4 C6040058 */ lwc1	$f4, 0X58($s0)
/* 000406 0x80A7C2C8 46083282 */ mul.s	$f10, $f6, $f8
/* 000407 0x80A7C2CC 460A8481 */ sub.s	$f18, $f16, $f10
/* 000408 0x80A7C2D0 E6120270 */ swc1	$f18, 0X270($s0)
/* 000409 0x80A7C2D4 C6060270 */ lwc1	$f6, 0X270($s0)
/* 000410 0x80A7C2D8 46062000 */ add.s	$f0, $f4, $f6
/* 000411 0x80A7C2DC 44050000 */ mfc1	$a1, $f0
/* 000412 0x80A7C2E0 0C02D9F8 */ jal	Actor_SetScale
/* 000413 0x80A7C2E4 E7A00020 */ swc1	$f0, 0X20($sp)
/* 000414 0x80A7C2E8 C7A00020 */ lwc1	$f0, 0X20($sp)
/* 000415 0x80A7C2EC 46000200 */ add.s	$f8, $f0, $f0
/* 000416 0x80A7C2F0 E608005C */ swc1	$f8, 0X5C($s0)
.L80A7C2F4:
/* 000417 0x80A7C2F4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000418 0x80A7C2F8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000419 0x80A7C2FC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000420 0x80A7C300 03E00008 */ jr	$ra
/* 000421 0x80A7C304 00000000 */ nop

glabel func_80A7C308
/* 000422 0x80A7C308 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000423 0x80A7C30C AFB00028 */ sw	$s0, 0X28($sp)
/* 000424 0x80A7C310 00808025 */ move	$s0, $a0
/* 000425 0x80A7C314 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000426 0x80A7C318 AFA50064 */ sw	$a1, 0X64($sp)
/* 000427 0x80A7C31C 3C0F80A8 */ lui	$t7, %hi(D_80A7C80C)
/* 000428 0x80A7C320 AFA0005C */ sw	$zero, 0X5C($sp)
/* 000429 0x80A7C324 25EFC80C */ addiu	$t7, $t7, %lo(D_80A7C80C)
/* 000430 0x80A7C328 8DF90000 */ lw	$t9, 0X0($t7)
/* 000431 0x80A7C32C 8DF80004 */ lw	$t8, 0X4($t7)
/* 000432 0x80A7C330 27AE0048 */ addiu	$t6, $sp, 0X48
/* 000433 0x80A7C334 ADD90000 */ sw	$t9, 0X0($t6)
/* 000434 0x80A7C338 ADD80004 */ sw	$t8, 0X4($t6)
/* 000435 0x80A7C33C 8DF8000C */ lw	$t8, 0XC($t7)
/* 000436 0x80A7C340 8DF90008 */ lw	$t9, 0X8($t7)
/* 000437 0x80A7C344 ADD8000C */ sw	$t8, 0XC($t6)
/* 000438 0x80A7C348 ADD90008 */ sw	$t9, 0X8($t6)
/* 000439 0x80A7C34C 8603001C */ lh	$v1, 0X1C($s0)
/* 000440 0x80A7C350 8FA40064 */ lw	$a0, 0X64($sp)
/* 000441 0x80A7C354 3063FF80 */ andi	$v1, $v1, 0XFF80
/* 000442 0x80A7C358 000319C3 */ sra	$v1, $v1, 7
/* 000443 0x80A7C35C 04600003 */ bltz	$v1, .L80A7C36C
/* 000444 0x80A7C360 28610004 */ slti	$at, $v1, 0X4
/* 000445 0x80A7C364 54200003 */ bnezl	$at, .L80A7C374
/* 000446 0x80A7C368 3C010001 */ lui	$at, 0x0001
.L80A7C36C:
/* 000447 0x80A7C36C 00001825 */ move	$v1, $zero
/* 000448 0x80A7C370 3C010001 */ lui	$at, 0x0001
.L80A7C374:
/* 000449 0x80A7C374 34217D88 */ ori	$at, $at, 0X7D88
/* 000450 0x80A7C378 82050278 */ lb	$a1, 0X278($s0)
/* 000451 0x80A7C37C AFA30058 */ sw	$v1, 0X58($sp)
/* 000452 0x80A7C380 0C04BD9A */ jal	Scene_IsObjectLoaded
/* 000453 0x80A7C384 00812021 */ addu	$a0, $a0, $at
/* 000454 0x80A7C388 10400093 */ beqz	$v0, .L80A7C5D8
/* 000455 0x80A7C38C 8FA30058 */ lw	$v1, 0X58($sp)
/* 000456 0x80A7C390 82080278 */ lb	$t0, 0X278($s0)
/* 000457 0x80A7C394 02002825 */ move	$a1, $s0
/* 000458 0x80A7C398 A208001E */ sb	$t0, 0X1E($s0)
/* 000459 0x80A7C39C AFA30058 */ sw	$v1, 0X58($sp)
/* 000460 0x80A7C3A0 0C02D9FF */ jal	Actor_SetObjectSegment
/* 000461 0x80A7C3A4 8FA40064 */ lw	$a0, 0X64($sp)
/* 000462 0x80A7C3A8 02002025 */ move	$a0, $s0
/* 000463 0x80A7C3AC 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000464 0x80A7C3B0 24050001 */ li	$a1, 0X1
/* 000465 0x80A7C3B4 8FA30058 */ lw	$v1, 0X58($sp)
/* 000466 0x80A7C3B8 00034880 */ sll	$t1, $v1, 2
/* 000467 0x80A7C3BC 03A92021 */ addu	$a0, $sp, $t1
/* 000468 0x80A7C3C0 8C840048 */ lw	$a0, 0X48($a0)
/* 000469 0x80A7C3C4 50800004 */ beqzl	$a0, .L80A7C3D8
/* 000470 0x80A7C3C8 8FA40064 */ lw	$a0, 0X64($sp)
/* 000471 0x80A7C3CC 0C032559 */ jal	BgCheck_RelocateMeshHeader
/* 000472 0x80A7C3D0 27A5005C */ addiu	$a1, $sp, 0X5C
/* 000473 0x80A7C3D4 8FA40064 */ lw	$a0, 0X64($sp)
.L80A7C3D8:
/* 000474 0x80A7C3D8 02003025 */ move	$a2, $s0
/* 000475 0x80A7C3DC 8FA7005C */ lw	$a3, 0X5C($sp)
/* 000476 0x80A7C3E0 0C031862 */ jal	BgCheck_AddActorMesh
/* 000477 0x80A7C3E4 24850880 */ addiu	$a1, $a0, 0X880
/* 000478 0x80A7C3E8 8603001C */ lh	$v1, 0X1C($s0)
/* 000479 0x80A7C3EC AE020144 */ sw	$v0, 0X144($s0)
/* 000480 0x80A7C3F0 24010001 */ li	$at, 0X1
/* 000481 0x80A7C3F4 3063FF80 */ andi	$v1, $v1, 0XFF80
/* 000482 0x80A7C3F8 000319C3 */ sra	$v1, $v1, 7
/* 000483 0x80A7C3FC 1060000A */ beqz	$v1, .L80A7C428
/* 000484 0x80A7C400 8FA40064 */ lw	$a0, 0X64($sp)
/* 000485 0x80A7C404 10610008 */ beq	$v1, $at, .L80A7C428
/* 000486 0x80A7C408 24010002 */ li	$at, 0X2
/* 000487 0x80A7C40C 10610019 */ beq	$v1, $at, .L80A7C474
/* 000488 0x80A7C410 3C0E0401 */ lui	$t6, 0x0401
/* 000489 0x80A7C414 24010003 */ li	$at, 0X3
/* 000490 0x80A7C418 10610016 */ beq	$v1, $at, .L80A7C474
/* 000491 0x80A7C41C 00000000 */ nop
/* 000492 0x80A7C420 10000028 */ b	.L80A7C4C4
/* 000493 0x80A7C424 00000000 */ nop
.L80A7C428:
/* 000494 0x80A7C428 3C060401 */ lui	$a2, 0x0401
/* 000495 0x80A7C42C 3C070401 */ lui	$a3, 0x0401
/* 000496 0x80A7C430 260A01EC */ addiu	$t2, $s0, 0X1EC
/* 000497 0x80A7C434 260B022E */ addiu	$t3, $s0, 0X22E
/* 000498 0x80A7C438 240C000B */ li	$t4, 0XB
/* 000499 0x80A7C43C AFAC0018 */ sw	$t4, 0X18($sp)
/* 000500 0x80A7C440 AFAB0014 */ sw	$t3, 0X14($sp)
/* 000501 0x80A7C444 AFAA0010 */ sw	$t2, 0X10($sp)
/* 000502 0x80A7C448 24E7EB7C */ addiu	$a3, $a3, -0X1484
/* 000503 0x80A7C44C 24C61518 */ addiu	$a2, $a2, 0X1518
/* 000504 0x80A7C450 0C04DA9F */ jal	SkelAnime_Init
/* 000505 0x80A7C454 2605015C */ addiu	$a1, $s0, 0X15C
/* 000506 0x80A7C458 8603001C */ lh	$v1, 0X1C($s0)
/* 000507 0x80A7C45C 3C0D0401 */ lui	$t5, 0x0401
/* 000508 0x80A7C460 25ADED80 */ addiu	$t5, $t5, -0X1280
/* 000509 0x80A7C464 3063FF80 */ andi	$v1, $v1, 0XFF80
/* 000510 0x80A7C468 AE0D027C */ sw	$t5, 0X27C($s0)
/* 000511 0x80A7C46C 10000015 */ b	.L80A7C4C4
/* 000512 0x80A7C470 000319C3 */ sra	$v1, $v1, 7
.L80A7C474:
/* 000513 0x80A7C474 25CE1BD0 */ addiu	$t6, $t6, 0X1BD0
/* 000514 0x80A7C478 AE0E027C */ sw	$t6, 0X27C($s0)
/* 000515 0x80A7C47C 3C060401 */ lui	$a2, 0x0401
/* 000516 0x80A7C480 3C070401 */ lui	$a3, 0x0401
/* 000517 0x80A7C484 260F01EC */ addiu	$t7, $s0, 0X1EC
/* 000518 0x80A7C488 2618022E */ addiu	$t8, $s0, 0X22E
/* 000519 0x80A7C48C 2419000B */ li	$t9, 0XB
/* 000520 0x80A7C490 AFB90018 */ sw	$t9, 0X18($sp)
/* 000521 0x80A7C494 AFB80014 */ sw	$t8, 0X14($sp)
/* 000522 0x80A7C498 AFAF0010 */ sw	$t7, 0X10($sp)
/* 000523 0x80A7C49C 24E7EB7C */ addiu	$a3, $a3, -0X1484
/* 000524 0x80A7C4A0 24C627E8 */ addiu	$a2, $a2, 0X27E8
/* 000525 0x80A7C4A4 8FA40064 */ lw	$a0, 0X64($sp)
/* 000526 0x80A7C4A8 0C04DA9F */ jal	SkelAnime_Init
/* 000527 0x80A7C4AC 2605015C */ addiu	$a1, $s0, 0X15C
/* 000528 0x80A7C4B0 8603001C */ lh	$v1, 0X1C($s0)
/* 000529 0x80A7C4B4 24080014 */ li	$t0, 0X14
/* 000530 0x80A7C4B8 A60801E2 */ sh	$t0, 0X1E2($s0)
/* 000531 0x80A7C4BC 3063FF80 */ andi	$v1, $v1, 0XFF80
/* 000532 0x80A7C4C0 000319C3 */ sra	$v1, $v1, 7
.L80A7C4C4:
/* 000533 0x80A7C4C4 1060000A */ beqz	$v1, .L80A7C4F0
/* 000534 0x80A7C4C8 24010001 */ li	$at, 0X1
/* 000535 0x80A7C4CC 1061001D */ beq	$v1, $at, .L80A7C544
/* 000536 0x80A7C4D0 3C040401 */ lui	$a0, 0x0401
/* 000537 0x80A7C4D4 24010002 */ li	$at, 0X2
/* 000538 0x80A7C4D8 10610005 */ beq	$v1, $at, .L80A7C4F0
/* 000539 0x80A7C4DC 24010003 */ li	$at, 0X3
/* 000540 0x80A7C4E0 50610019 */ beql	$v1, $at, .L80A7C548
/* 000541 0x80A7C4E4 260C015C */ addiu	$t4, $s0, 0X15C
/* 000542 0x80A7C4E8 1000003C */ b	.L80A7C5DC
/* 000543 0x80A7C4EC 8FBF002C */ lw	$ra, 0X2C($sp)
.L80A7C4F0:
/* 000544 0x80A7C4F0 3C0980A8 */ lui	$t1, %hi(func_80A7C690)
/* 000545 0x80A7C4F4 3C0A80A8 */ lui	$t2, %hi(func_80A7BF08)
/* 000546 0x80A7C4F8 2529C690 */ addiu	$t1, $t1, %lo(func_80A7C690)
/* 000547 0x80A7C4FC 254ABF08 */ addiu	$t2, $t2, %lo(func_80A7BF08)
/* 000548 0x80A7C500 3C053C23 */ lui	$a1, 0x3C23
/* 000549 0x80A7C504 AE09013C */ sw	$t1, 0X13C($s0)
/* 000550 0x80A7C508 AE0A0280 */ sw	$t2, 0X280($s0)
/* 000551 0x80A7C50C 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000552 0x80A7C510 0C02D9F8 */ jal	Actor_SetScale
/* 000553 0x80A7C514 02002025 */ move	$a0, $s0
/* 000554 0x80A7C518 3C0180A8 */ lui	$at, %hi(D_80A7C854)
/* 000555 0x80A7C51C C424C854 */ lwc1	$f4, %lo(D_80A7C854)($at)
/* 000556 0x80A7C520 3C014120 */ lui	$at, 0x4120
/* 000557 0x80A7C524 44814000 */ mtc1	$at, $f8
/* 000558 0x80A7C528 C606000C */ lwc1	$f6, 0XC($s0)
/* 000559 0x80A7C52C 240B0003 */ li	$t3, 0X3
/* 000560 0x80A7C530 A20B001F */ sb	$t3, 0X1F($s0)
/* 000561 0x80A7C534 46083280 */ add.s	$f10, $f6, $f8
/* 000562 0x80A7C538 E604005C */ swc1	$f4, 0X5C($s0)
/* 000563 0x80A7C53C 10000026 */ b	.L80A7C5D8
/* 000564 0x80A7C540 E60A0040 */ swc1	$f10, 0X40($s0)
.L80A7C544:
/* 000565 0x80A7C544 260C015C */ addiu	$t4, $s0, 0X15C
.L80A7C548:
/* 000566 0x80A7C548 AFAC0034 */ sw	$t4, 0X34($sp)
/* 000567 0x80A7C54C 0C04D1D2 */ jal	SkelAnime_GetFrameCount
/* 000568 0x80A7C550 2484EB7C */ addiu	$a0, $a0, -0X1484
/* 000569 0x80A7C554 44828000 */ mtc1	$v0, $f16
/* 000570 0x80A7C558 44800000 */ mtc1	$zero, $f0
/* 000571 0x80A7C55C 3C050401 */ lui	$a1, 0x0401
/* 000572 0x80A7C560 468084A0 */ cvt.s.w	$f18, $f16
/* 000573 0x80A7C564 240D0002 */ li	$t5, 0X2
/* 000574 0x80A7C568 44070000 */ mfc1	$a3, $f0
/* 000575 0x80A7C56C AFAD0014 */ sw	$t5, 0X14($sp)
/* 000576 0x80A7C570 24A5EB7C */ addiu	$a1, $a1, -0X1484
/* 000577 0x80A7C574 8FA40034 */ lw	$a0, 0X34($sp)
/* 000578 0x80A7C578 E7B20010 */ swc1	$f18, 0X10($sp)
/* 000579 0x80A7C57C 3C063F80 */ lui	$a2, 0x3F80
/* 000580 0x80A7C580 0C04DCFA */ jal	SkelAnime_ChangeAnim
/* 000581 0x80A7C584 E7A00018 */ swc1	$f0, 0X18($sp)
/* 000582 0x80A7C588 3C0E80A8 */ lui	$t6, %hi(func_80A7C718)
/* 000583 0x80A7C58C 3C0F80A8 */ lui	$t7, %hi(func_80A7C1F0)
/* 000584 0x80A7C590 25CEC718 */ addiu	$t6, $t6, %lo(func_80A7C718)
/* 000585 0x80A7C594 25EFC1F0 */ addiu	$t7, $t7, %lo(func_80A7C1F0)
/* 000586 0x80A7C598 AE0E013C */ sw	$t6, 0X13C($s0)
/* 000587 0x80A7C59C AE0F0280 */ sw	$t7, 0X280($s0)
/* 000588 0x80A7C5A0 02002025 */ move	$a0, $s0
/* 000589 0x80A7C5A4 0C02D9F8 */ jal	Actor_SetScale
/* 000590 0x80A7C5A8 24050000 */ li	$a1, 0X0
/* 000591 0x80A7C5AC 3C014120 */ lui	$at, 0x4120
/* 000592 0x80A7C5B0 44814000 */ mtc1	$at, $f8
/* 000593 0x80A7C5B4 C606000C */ lwc1	$f6, 0XC($s0)
/* 000594 0x80A7C5B8 44802000 */ mtc1	$zero, $f4
/* 000595 0x80A7C5BC 2418001E */ li	$t8, 0X1E
/* 000596 0x80A7C5C0 46083280 */ add.s	$f10, $f6, $f8
/* 000597 0x80A7C5C4 24190003 */ li	$t9, 0X3
/* 000598 0x80A7C5C8 A6180274 */ sh	$t8, 0X274($s0)
/* 000599 0x80A7C5CC A219001F */ sb	$t9, 0X1F($s0)
/* 000600 0x80A7C5D0 E60A0040 */ swc1	$f10, 0X40($s0)
/* 000601 0x80A7C5D4 E6040270 */ swc1	$f4, 0X270($s0)
.L80A7C5D8:
/* 000602 0x80A7C5D8 8FBF002C */ lw	$ra, 0X2C($sp)
.L80A7C5DC:
/* 000603 0x80A7C5DC 8FB00028 */ lw	$s0, 0X28($sp)
/* 000604 0x80A7C5E0 27BD0060 */ addiu	$sp, $sp, 0X60
/* 000605 0x80A7C5E4 03E00008 */ jr	$ra
/* 000606 0x80A7C5E8 00000000 */ nop

glabel ObjEtcetera_Update
/* 000607 0x80A7C5EC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000608 0x80A7C5F0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000609 0x80A7C5F4 00A08025 */ move	$s0, $a1
/* 000610 0x80A7C5F8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000611 0x80A7C5FC 00803825 */ move	$a3, $a0
/* 000612 0x80A7C600 90E60085 */ lbu	$a2, 0X85($a3)
/* 000613 0x80A7C604 24010032 */ li	$at, 0X32
/* 000614 0x80A7C608 54C10010 */ bnel	$a2, $at, .L80A7C64C
/* 000615 0x80A7C60C AFA70020 */ sw	$a3, 0X20($sp)
/* 000616 0x80A7C610 8CE50080 */ lw	$a1, 0X80($a3)
/* 000617 0x80A7C614 50A0000D */ beqzl	$a1, .L80A7C64C
/* 000618 0x80A7C618 AFA70020 */ sw	$a3, 0X20($sp)
/* 000619 0x80A7C61C 94EE0276 */ lhu	$t6, 0X276($a3)
/* 000620 0x80A7C620 26040830 */ addiu	$a0, $s0, 0X830
/* 000621 0x80A7C624 31CF0001 */ andi	$t7, $t6, 0X1
/* 000622 0x80A7C628 51E00008 */ beqzl	$t7, .L80A7C64C
/* 000623 0x80A7C62C AFA70020 */ sw	$a3, 0X20($sp)
/* 000624 0x80A7C630 0C032727 */ jal	func_800C9C9C
/* 000625 0x80A7C634 AFA70020 */ sw	$a3, 0X20($sp)
/* 000626 0x80A7C638 02002025 */ move	$a0, $s0
/* 000627 0x80A7C63C 0C03EAAD */ jal	func_800FAAB4
/* 000628 0x80A7C640 304500FF */ andi	$a1, $v0, 0XFF
/* 000629 0x80A7C644 8FA70020 */ lw	$a3, 0X20($sp)
/* 000630 0x80A7C648 AFA70020 */ sw	$a3, 0X20($sp)
.L80A7C64C:
/* 000631 0x80A7C64C 8CF90280 */ lw	$t9, 0X280($a3)
/* 000632 0x80A7C650 00E02025 */ move	$a0, $a3
/* 000633 0x80A7C654 02002825 */ move	$a1, $s0
/* 000634 0x80A7C658 0320F809 */ jalr	$t9
/* 000635 0x80A7C65C 00000000 */ nop
/* 000636 0x80A7C660 8FA70020 */ lw	$a3, 0X20($sp)
/* 000637 0x80A7C664 3C010001 */ lui	$at, 0x0001
/* 000638 0x80A7C668 34218884 */ ori	$at, $at, 0X8884
/* 000639 0x80A7C66C 02012821 */ addu	$a1, $s0, $at
/* 000640 0x80A7C670 02002025 */ move	$a0, $s0
/* 000641 0x80A7C674 0C0389D0 */ jal	Collision_AddAC
/* 000642 0x80A7C678 24E601A0 */ addiu	$a2, $a3, 0X1A0
/* 000643 0x80A7C67C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000644 0x80A7C680 8FB00018 */ lw	$s0, 0X18($sp)
/* 000645 0x80A7C684 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000646 0x80A7C688 03E00008 */ jr	$ra
/* 000647 0x80A7C68C 00000000 */ nop

glabel func_80A7C690
/* 000648 0x80A7C690 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000649 0x80A7C694 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000650 0x80A7C698 AFA40028 */ sw	$a0, 0X28($sp)
/* 000651 0x80A7C69C 8CA60000 */ lw	$a2, 0X0($a1)
/* 000652 0x80A7C6A0 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000653 0x80A7C6A4 3C0FDA38 */ lui	$t7, 0xDA38
/* 000654 0x80A7C6A8 35EF0003 */ ori	$t7, $t7, 0X3
/* 000655 0x80A7C6AC 244E0008 */ addiu	$t6, $v0, 0X8
/* 000656 0x80A7C6B0 ACCE02B0 */ sw	$t6, 0X2B0($a2)
/* 000657 0x80A7C6B4 AC4F0000 */ sw	$t7, 0X0($v0)
/* 000658 0x80A7C6B8 8CA40000 */ lw	$a0, 0X0($a1)
/* 000659 0x80A7C6BC AFA60020 */ sw	$a2, 0X20($sp)
/* 000660 0x80A7C6C0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000661 0x80A7C6C4 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000662 0x80A7C6C8 AFA20018 */ sw	$v0, 0X18($sp)
/* 000663 0x80A7C6CC 8FA30018 */ lw	$v1, 0X18($sp)
/* 000664 0x80A7C6D0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000665 0x80A7C6D4 8FA60020 */ lw	$a2, 0X20($sp)
/* 000666 0x80A7C6D8 AC620004 */ sw	$v0, 0X4($v1)
/* 000667 0x80A7C6DC 8CA40000 */ lw	$a0, 0X0($a1)
/* 000668 0x80A7C6E0 0C04B0A3 */ jal	func_8012C28C
/* 000669 0x80A7C6E4 AFA60020 */ sw	$a2, 0X20($sp)
/* 000670 0x80A7C6E8 8FA60020 */ lw	$a2, 0X20($sp)
/* 000671 0x80A7C6EC 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000672 0x80A7C6F0 3C19DE00 */ lui	$t9, 0xDE00
/* 000673 0x80A7C6F4 24580008 */ addiu	$t8, $v0, 0X8
/* 000674 0x80A7C6F8 ACD802B0 */ sw	$t8, 0X2B0($a2)
/* 000675 0x80A7C6FC AC590000 */ sw	$t9, 0X0($v0)
/* 000676 0x80A7C700 8FA80028 */ lw	$t0, 0X28($sp)
/* 000677 0x80A7C704 8D09027C */ lw	$t1, 0X27C($t0)
/* 000678 0x80A7C708 AC490004 */ sw	$t1, 0X4($v0)
/* 000679 0x80A7C70C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000680 0x80A7C710 03E00008 */ jr	$ra
/* 000681 0x80A7C714 27BD0028 */ addiu	$sp, $sp, 0X28

glabel func_80A7C718
/* 000682 0x80A7C718 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000683 0x80A7C71C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000684 0x80A7C720 AFA40020 */ sw	$a0, 0X20($sp)
/* 000685 0x80A7C724 AFA50024 */ sw	$a1, 0X24($sp)
/* 000686 0x80A7C728 8FAE0024 */ lw	$t6, 0X24($sp)
/* 000687 0x80A7C72C 0C04B16C */ jal	func_8012C5B0
/* 000688 0x80A7C730 8DC40000 */ lw	$a0, 0X0($t6)
/* 000689 0x80A7C734 8FA20020 */ lw	$v0, 0X20($sp)
/* 000690 0x80A7C738 8FA40024 */ lw	$a0, 0X24($sp)
/* 000691 0x80A7C73C 00003825 */ move	$a3, $zero
/* 000692 0x80A7C740 8C450160 */ lw	$a1, 0X160($v0)
/* 000693 0x80A7C744 8C46017C */ lw	$a2, 0X17C($v0)
/* 000694 0x80A7C748 AFA00010 */ sw	$zero, 0X10($sp)
/* 000695 0x80A7C74C 0C04CECF */ jal	SkelAnime_Draw
/* 000696 0x80A7C750 AFA20014 */ sw	$v0, 0X14($sp)
/* 000697 0x80A7C754 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000698 0x80A7C758 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000699 0x80A7C75C 03E00008 */ jr	$ra
/* 000700 0x80A7C760 00000000 */ nop
/* 000701 0x80A7C764 00000000 */ nop
/* 000702 0x80A7C768 00000000 */ nop
/* 000703 0x80A7C76C 00000000 */ nop
