.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8098CA20
/* 000000 0x8098CA20 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x8098CA24 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x8098CA28 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x8098CA2C 00803825 */ move	$a3, $a0
/* 000004 0x8098CA30 C4E40024 */ lwc1	$f4, 0X24($a3)
/* 000005 0x8098CA34 84EA018E */ lh	$t2, 0X18E($a3)
/* 000006 0x8098CA38 C4E80028 */ lwc1	$f8, 0X28($a3)
/* 000007 0x8098CA3C 4600218D */ trunc.w.s	$f6, $f4
/* 000008 0x8098CA40 448A2000 */ mtc1	$t2, $f4
/* 000009 0x8098CA44 C4F0002C */ lwc1	$f16, 0X2C($a3)
/* 000010 0x8098CA48 4600428D */ trunc.w.s	$f10, $f8
/* 000011 0x8098CA4C 440F3000 */ mfc1	$t7, $f6
/* 000012 0x8098CA50 C4E80198 */ lwc1	$f8, 0X198($a3)
/* 000013 0x8098CA54 468021A0 */ cvt.s.w	$f6, $f4
/* 000014 0x8098CA58 44195000 */ mfc1	$t9, $f10
/* 000015 0x8098CA5C 90ED00B7 */ lbu	$t5, 0XB7($a3)
/* 000016 0x8098CA60 3C010001 */ lui	$at, 0x0001
/* 000017 0x8098CA64 34218884 */ ori	$at, $at, 0X8884
/* 000018 0x8098CA68 4600848D */ trunc.w.s	$f18, $f16
/* 000019 0x8098CA6C 46083282 */ mul.s	$f10, $f6, $f8
/* 000020 0x8098CA70 24E60148 */ addiu	$a2, $a3, 0X148
/* 000021 0x8098CA74 A4EF0190 */ sh	$t7, 0X190($a3)
/* 000022 0x8098CA78 44099000 */ mfc1	$t1, $f18
/* 000023 0x8098CA7C A4F90192 */ sh	$t9, 0X192($a3)
/* 000024 0x8098CA80 A4E90194 */ sh	$t1, 0X194($a3)
/* 000025 0x8098CA84 4600540D */ trunc.w.s	$f16, $f10
/* 000026 0x8098CA88 440C8000 */ mfc1	$t4, $f16
/* 000027 0x8098CA8C 19A00006 */ blez	$t5, .L8098CAA8
/* 000028 0x8098CA90 A4EC0196 */ sh	$t4, 0X196($a3)
/* 000029 0x8098CA94 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000030 0x8098CA98 AFA70018 */ sw	$a3, 0X18($sp)
/* 000031 0x8098CA9C 0C0389D0 */ jal	Collision_AddAC
/* 000032 0x8098CAA0 00812821 */ addu	$a1, $a0, $at
/* 000033 0x8098CAA4 8FA70018 */ lw	$a3, 0X18($sp)
.L8098CAA8:
/* 000034 0x8098CAA8 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000035 0x8098CAAC 3C010001 */ lui	$at, 0x0001
/* 000036 0x8098CAB0 34218884 */ ori	$at, $at, 0X8884
/* 000037 0x8098CAB4 24E60148 */ addiu	$a2, $a3, 0X148
/* 000038 0x8098CAB8 0C038A4A */ jal	Collision_AddOT
/* 000039 0x8098CABC 00812821 */ addu	$a1, $a0, $at
/* 000040 0x8098CAC0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000041 0x8098CAC4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000042 0x8098CAC8 03E00008 */ jr	$ra
/* 000043 0x8098CACC 00000000 */ nop

glabel func_8098CAD0
/* 000044 0x8098CAD0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000045 0x8098CAD4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000046 0x8098CAD8 00A08025 */ move	$s0, $a1
/* 000047 0x8098CADC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000048 0x8098CAE0 8486001C */ lh	$a2, 0X1C($a0)
/* 000049 0x8098CAE4 30C600FC */ andi	$a2, $a2, 0XFC
/* 000050 0x8098CAE8 00063083 */ sra	$a2, $a2, 2
/* 000051 0x8098CAEC 28C10020 */ slti	$at, $a2, 0X20
/* 000052 0x8098CAF0 50200006 */ beqzl	$at, .L8098CB0C
/* 000053 0x8098CAF4 02002025 */ move	$a0, $s0
/* 000054 0x8098CAF8 04C00003 */ bltz	$a2, .L8098CB08
/* 000055 0x8098CAFC 02002025 */ move	$a0, $s0
/* 000056 0x8098CB00 0C02D724 */ jal	Actor_SetChestFlag
/* 000057 0x8098CB04 00C02825 */ move	$a1, $a2
.L8098CB08:
/* 000058 0x8098CB08 02002025 */ move	$a0, $s0
.L8098CB0C:
/* 000059 0x8098CB0C 0C044BA0 */ jal	func_80112E80
/* 000060 0x8098CB10 2405006E */ li	$a1, 0X6E
/* 000061 0x8098CB14 0C04BC8B */ jal	func_8012F22C
/* 000062 0x8098CB18 860400A4 */ lh	$a0, 0XA4($s0)
/* 000063 0x8098CB1C 2841001E */ slti	$at, $v0, 0X1E
/* 000064 0x8098CB20 14200009 */ bnez	$at, .L8098CB48
/* 000065 0x8098CB24 02002025 */ move	$a0, $s0
/* 000066 0x8098CB28 02002025 */ move	$a0, $s0
/* 000067 0x8098CB2C 240500FC */ li	$a1, 0XFC
/* 000068 0x8098CB30 0C05462C */ jal	func_801518B0
/* 000069 0x8098CB34 00003025 */ move	$a2, $zero
/* 000070 0x8098CB38 0C068C26 */ jal	func_801A3098
/* 000071 0x8098CB3C 24040922 */ li	$a0, 0X922
/* 000072 0x8098CB40 10000007 */ b	.L8098CB60
/* 000073 0x8098CB44 8FBF001C */ lw	$ra, 0X1C($sp)
.L8098CB48:
/* 000074 0x8098CB48 24050052 */ li	$a1, 0X52
/* 000075 0x8098CB4C 0C05462C */ jal	func_801518B0
/* 000076 0x8098CB50 00003025 */ move	$a2, $zero
/* 000077 0x8098CB54 0C068C26 */ jal	func_801A3098
/* 000078 0x8098CB58 24040039 */ li	$a0, 0X39
/* 000079 0x8098CB5C 8FBF001C */ lw	$ra, 0X1C($sp)
.L8098CB60:
/* 000080 0x8098CB60 8FB00018 */ lw	$s0, 0X18($sp)
/* 000081 0x8098CB64 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000082 0x8098CB68 03E00008 */ jr	$ra
/* 000083 0x8098CB6C 00000000 */ nop

glabel func_8098CB70
/* 000084 0x8098CB70 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000085 0x8098CB74 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000086 0x8098CB78 8C8E0004 */ lw	$t6, 0X4($a0)
/* 000087 0x8098CB7C 24012000 */ li	$at, 0X2000
/* 000088 0x8098CB80 3C188099 */ lui	$t8, %hi(func_8098CBDC)
/* 000089 0x8098CB84 31CF2000 */ andi	$t7, $t6, 0X2000
/* 000090 0x8098CB88 15E10003 */ bne	$t7, $at, .L8098CB98
/* 000091 0x8098CB8C 2718CBDC */ addiu	$t8, $t8, %lo(func_8098CBDC)
/* 000092 0x8098CB90 1000000B */ b	.L8098CBC0
/* 000093 0x8098CB94 AC980144 */ sw	$t8, 0X144($a0)
.L8098CB98:
/* 000094 0x8098CB98 9099015B */ lbu	$t9, 0X15B($a0)
/* 000095 0x8098CB9C 33280001 */ andi	$t0, $t9, 0X1
/* 000096 0x8098CBA0 51000008 */ beqzl	$t0, .L8098CBC4
/* 000097 0x8098CBA4 848900BE */ lh	$t1, 0XBE($a0)
/* 000098 0x8098CBA8 0C2632B4 */ jal	func_8098CAD0
/* 000099 0x8098CBAC AFA40018 */ sw	$a0, 0X18($sp)
/* 000100 0x8098CBB0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000101 0x8098CBB4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000102 0x8098CBB8 10000005 */ b	.L8098CBD0
/* 000103 0x8098CBBC 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098CBC0:
/* 000104 0x8098CBC0 848900BE */ lh	$t1, 0XBE($a0)
.L8098CBC4:
/* 000105 0x8098CBC4 252A038E */ addiu	$t2, $t1, 0X38E
/* 000106 0x8098CBC8 A48A00BE */ sh	$t2, 0XBE($a0)
/* 000107 0x8098CBCC 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098CBD0:
/* 000108 0x8098CBD0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000109 0x8098CBD4 03E00008 */ jr	$ra
/* 000110 0x8098CBD8 00000000 */ nop

glabel func_8098CBDC
/* 000111 0x8098CBDC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000112 0x8098CBE0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000113 0x8098CBE4 8C8E0004 */ lw	$t6, 0X4($a0)
/* 000114 0x8098CBE8 24012000 */ li	$at, 0X2000
/* 000115 0x8098CBEC 31CF2000 */ andi	$t7, $t6, 0X2000
/* 000116 0x8098CBF0 51E10006 */ beql	$t7, $at, .L8098CC0C
/* 000117 0x8098CBF4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000118 0x8098CBF8 0C2632B4 */ jal	func_8098CAD0
/* 000119 0x8098CBFC AFA40018 */ sw	$a0, 0X18($sp)
/* 000120 0x8098CC00 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000121 0x8098CC04 8FA40018 */ lw	$a0, 0X18($sp)
/* 000122 0x8098CC08 8FBF0014 */ lw	$ra, 0X14($sp)
.L8098CC0C:
/* 000123 0x8098CC0C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000124 0x8098CC10 03E00008 */ jr	$ra
/* 000125 0x8098CC14 00000000 */ nop

glabel EnSi_Init
/* 000126 0x8098CC18 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000127 0x8098CC1C AFB00018 */ sw	$s0, 0X18($sp)
/* 000128 0x8098CC20 00808025 */ move	$s0, $a0
/* 000129 0x8098CC24 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000130 0x8098CC28 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000131 0x8098CC2C 26050148 */ addiu	$a1, $s0, 0X148
/* 000132 0x8098CC30 AFA50020 */ sw	$a1, 0X20($sp)
/* 000133 0x8098CC34 0C038855 */ jal	Collision_InitSphereDefault
/* 000134 0x8098CC38 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000135 0x8098CC3C 3C078099 */ lui	$a3, %hi(D_8098CD80)
/* 000136 0x8098CC40 8FA50020 */ lw	$a1, 0X20($sp)
/* 000137 0x8098CC44 24E7CD80 */ addiu	$a3, $a3, %lo(D_8098CD80)
/* 000138 0x8098CC48 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000139 0x8098CC4C 0C03887D */ jal	Collision_InitSphereWithData
/* 000140 0x8098CC50 02003025 */ move	$a2, $s0
/* 000141 0x8098CC54 3C058099 */ lui	$a1, %hi(D_8098CDB8)
/* 000142 0x8098CC58 3C068099 */ lui	$a2, %hi(D_8098CDAC)
/* 000143 0x8098CC5C 24C6CDAC */ addiu	$a2, $a2, %lo(D_8098CDAC)
/* 000144 0x8098CC60 24A5CDB8 */ addiu	$a1, $a1, %lo(D_8098CDB8)
/* 000145 0x8098CC64 0C039D57 */ jal	func_800E755C
/* 000146 0x8098CC68 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000147 0x8098CC6C 02002025 */ move	$a0, $s0
/* 000148 0x8098CC70 0C02D9F8 */ jal	Actor_SetScale
/* 000149 0x8098CC74 3C053E80 */ lui	$a1, 0x3E80
/* 000150 0x8098CC78 3C0E8099 */ lui	$t6, %hi(func_8098CB70)
/* 000151 0x8098CC7C 25CECB70 */ addiu	$t6, $t6, %lo(func_8098CB70)
/* 000152 0x8098CC80 AE0E0144 */ sw	$t6, 0X144($s0)
/* 000153 0x8098CC84 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000154 0x8098CC88 8FB00018 */ lw	$s0, 0X18($sp)
/* 000155 0x8098CC8C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000156 0x8098CC90 03E00008 */ jr	$ra
/* 000157 0x8098CC94 00000000 */ nop

glabel EnSi_Destroy
/* 000158 0x8098CC98 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000159 0x8098CC9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000160 0x8098CCA0 00803025 */ move	$a2, $a0
/* 000161 0x8098CCA4 00A03825 */ move	$a3, $a1
/* 000162 0x8098CCA8 00E02025 */ move	$a0, $a3
/* 000163 0x8098CCAC 0C038869 */ jal	Collision_FiniSphere
/* 000164 0x8098CCB0 24C50148 */ addiu	$a1, $a2, 0X148
/* 000165 0x8098CCB4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000166 0x8098CCB8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000167 0x8098CCBC 03E00008 */ jr	$ra
/* 000168 0x8098CCC0 00000000 */ nop

glabel EnSi_Update
/* 000169 0x8098CCC4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000170 0x8098CCC8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000171 0x8098CCCC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000172 0x8098CCD0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000173 0x8098CCD4 8C990144 */ lw	$t9, 0X144($a0)
/* 000174 0x8098CCD8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000175 0x8098CCDC 0320F809 */ jalr	$t9
/* 000176 0x8098CCE0 00000000 */ nop
/* 000177 0x8098CCE4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000178 0x8098CCE8 0C263288 */ jal	func_8098CA20
/* 000179 0x8098CCEC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000180 0x8098CCF0 8FA40018 */ lw	$a0, 0X18($sp)
/* 000181 0x8098CCF4 0C02D9D7 */ jal	Actor_SetHeight
/* 000182 0x8098CCF8 24050000 */ li	$a1, 0X0
/* 000183 0x8098CCFC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000184 0x8098CD00 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000185 0x8098CD04 03E00008 */ jr	$ra
/* 000186 0x8098CD08 00000000 */ nop

glabel EnSi_Draw
/* 000187 0x8098CD0C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000188 0x8098CD10 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000189 0x8098CD14 AFA40018 */ sw	$a0, 0X18($sp)
/* 000190 0x8098CD18 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000191 0x8098CD1C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000192 0x8098CD20 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000193 0x8098CD24 0C02E046 */ jal	func_800B8118
/* 000194 0x8098CD28 00003025 */ move	$a2, $zero
/* 000195 0x8098CD2C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000196 0x8098CD30 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000197 0x8098CD34 0C02E014 */ jal	func_800B8050
/* 000198 0x8098CD38 00003025 */ move	$a2, $zero
/* 000199 0x8098CD3C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000200 0x8098CD40 0C03B8C8 */ jal	func_800EE320
/* 000201 0x8098CD44 24050056 */ li	$a1, 0X56
/* 000202 0x8098CD48 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000203 0x8098CD4C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000204 0x8098CD50 03E00008 */ jr	$ra
/* 000205 0x8098CD54 00000000 */ nop
/* 000206 0x8098CD58 00000000 */ nop
/* 000207 0x8098CD5C 00000000 */ nop
