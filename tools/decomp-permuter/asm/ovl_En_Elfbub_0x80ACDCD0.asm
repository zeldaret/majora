.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnElfbub_Init
/* 000000 0x80ACDCD0 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000001 0x80ACDCD4 AFB00038 */ sw	$s0, 0X38($sp)
/* 000002 0x80ACDCD8 00808025 */ move	$s0, $a0
/* 000003 0x80ACDCDC AFBF003C */ sw	$ra, 0X3C($sp)
/* 000004 0x80ACDCE0 AFA50044 */ sw	$a1, 0X44($sp)
/* 000005 0x80ACDCE4 8605001C */ lh	$a1, 0X1C($s0)
/* 000006 0x80ACDCE8 8FA40044 */ lw	$a0, 0X44($sp)
/* 000007 0x80ACDCEC 30A5FE00 */ andi	$a1, $a1, 0XFE00
/* 000008 0x80ACDCF0 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000009 0x80ACDCF4 00052A43 */ sra	$a1, $a1, 9
/* 000010 0x80ACDCF8 10400005 */ beqz	$v0, .L80ACDD10
/* 000011 0x80ACDCFC 260400BC */ addiu	$a0, $s0, 0XBC
/* 000012 0x80ACDD00 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000013 0x80ACDD04 02002025 */ move	$a0, $s0
/* 000014 0x80ACDD08 10000046 */ b	.L80ACDE24
/* 000015 0x80ACDD0C 8FBF003C */ lw	$ra, 0X3C($sp)
.L80ACDD10:
/* 000016 0x80ACDD10 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000017 0x80ACDD14 3C073E4C */ lui	$a3, 0x3E4C
/* 000018 0x80ACDD18 34E7CCCD */ ori	$a3, $a3, 0XCCCD
/* 000019 0x80ACDD1C 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000020 0x80ACDD20 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000021 0x80ACDD24 3C054180 */ lui	$a1, 0x4180
/* 000022 0x80ACDD28 240E0016 */ li	$t6, 0X16
/* 000023 0x80ACDD2C A20E011F */ sb	$t6, 0X11F($s0)
/* 000024 0x80ACDD30 02002025 */ move	$a0, $s0
/* 000025 0x80ACDD34 0C02D9F8 */ jal	Actor_SetScale
/* 000026 0x80ACDD38 3C053FA0 */ lui	$a1, 0x3FA0
/* 000027 0x80ACDD3C 3C0F80AD */ lui	$t7, %hi(func_80ACE030)
/* 000028 0x80ACDD40 3C014780 */ lui	$at, 0x4780
/* 000029 0x80ACDD44 25EFE030 */ addiu	$t7, $t7, %lo(func_80ACE030)
/* 000030 0x80ACDD48 44816000 */ mtc1	$at, $f12
/* 000031 0x80ACDD4C 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000032 0x80ACDD50 AE0F01A0 */ sw	$t7, 0X1A0($s0)
/* 000033 0x80ACDD54 4600010D */ trunc.w.s	$f4, $f0
/* 000034 0x80ACDD58 240803E8 */ li	$t0, 0X3E8
/* 000035 0x80ACDD5C A6080192 */ sh	$t0, 0X192($s0)
/* 000036 0x80ACDD60 3C0180AD */ lui	$at, %hi(D_80ACE2B0)
/* 000037 0x80ACDD64 44192000 */ mfc1	$t9, $f4
/* 000038 0x80ACDD68 3C0780AD */ lui	$a3, %hi(D_80ACE270)
/* 000039 0x80ACDD6C 24E7E270 */ addiu	$a3, $a3, %lo(D_80ACE270)
/* 000040 0x80ACDD70 A6190190 */ sh	$t9, 0X190($s0)
/* 000041 0x80ACDD74 C426E2B0 */ lwc1	$f6, %lo(D_80ACE2B0)($at)
/* 000042 0x80ACDD78 26050144 */ addiu	$a1, $s0, 0X144
/* 000043 0x80ACDD7C 02003025 */ move	$a2, $s0
/* 000044 0x80ACDD80 E6060198 */ swc1	$f6, 0X198($s0)
/* 000045 0x80ACDD84 0C0384DD */ jal	Collision_InitCylinder
/* 000046 0x80ACDD88 8FA40044 */ lw	$a0, 0X44($sp)
/* 000047 0x80ACDD8C C6080024 */ lwc1	$f8, 0X24($s0)
/* 000048 0x80ACDD90 240900FF */ li	$t1, 0XFF
/* 000049 0x80ACDD94 A20900B6 */ sb	$t1, 0XB6($s0)
/* 000050 0x80ACDD98 3C014140 */ lui	$at, 0x4140
/* 000051 0x80ACDD9C E7A80010 */ swc1	$f8, 0X10($sp)
/* 000052 0x80ACDDA0 C60A0028 */ lwc1	$f10, 0X28($s0)
/* 000053 0x80ACDDA4 44818000 */ mtc1	$at, $f16
/* 000054 0x80ACDDA8 8FA60044 */ lw	$a2, 0X44($sp)
/* 000055 0x80ACDDAC 02002825 */ move	$a1, $s0
/* 000056 0x80ACDDB0 46105480 */ add.s	$f18, $f10, $f16
/* 000057 0x80ACDDB4 240701B0 */ li	$a3, 0X1B0
/* 000058 0x80ACDDB8 24C41CA0 */ addiu	$a0, $a2, 0X1CA0
/* 000059 0x80ACDDBC E7B20014 */ swc1	$f18, 0X14($sp)
/* 000060 0x80ACDDC0 C604002C */ lwc1	$f4, 0X2C($s0)
/* 000061 0x80ACDDC4 E7A40018 */ swc1	$f4, 0X18($sp)
/* 000062 0x80ACDDC8 860B0030 */ lh	$t3, 0X30($s0)
/* 000063 0x80ACDDCC AFAB001C */ sw	$t3, 0X1C($sp)
/* 000064 0x80ACDDD0 860C0032 */ lh	$t4, 0X32($s0)
/* 000065 0x80ACDDD4 AFAC0020 */ sw	$t4, 0X20($sp)
/* 000066 0x80ACDDD8 860D0034 */ lh	$t5, 0X34($s0)
/* 000067 0x80ACDDDC AFAD0024 */ sw	$t5, 0X24($sp)
/* 000068 0x80ACDDE0 860E001C */ lh	$t6, 0X1C($s0)
/* 000069 0x80ACDDE4 31CFFE00 */ andi	$t7, $t6, 0XFE00
/* 000070 0x80ACDDE8 000FC243 */ sra	$t8, $t7, 9
/* 000071 0x80ACDDEC 3319007F */ andi	$t9, $t8, 0X7F
/* 000072 0x80ACDDF0 00194240 */ sll	$t0, $t9, 9
/* 000073 0x80ACDDF4 35090002 */ ori	$t1, $t0, 0X2
/* 000074 0x80ACDDF8 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000075 0x80ACDDFC AFA90028 */ sw	$t1, 0X28($sp)
/* 000076 0x80ACDE00 50400003 */ beqzl	$v0, .L80ACDE10
/* 000077 0x80ACDE04 8E0A0004 */ lw	$t2, 0X4($s0)
/* 000078 0x80ACDE08 AC500120 */ sw	$s0, 0X120($v0)
/* 000079 0x80ACDE0C 8E0A0004 */ lw	$t2, 0X4($s0)
.L80ACDE10:
/* 000080 0x80ACDE10 2401FFFE */ li	$at, -0X2
/* 000081 0x80ACDE14 A6000194 */ sh	$zero, 0X194($s0)
/* 000082 0x80ACDE18 01415824 */ and	$t3, $t2, $at
/* 000083 0x80ACDE1C AE0B0004 */ sw	$t3, 0X4($s0)
/* 000084 0x80ACDE20 8FBF003C */ lw	$ra, 0X3C($sp)
.L80ACDE24:
/* 000085 0x80ACDE24 8FB00038 */ lw	$s0, 0X38($sp)
/* 000086 0x80ACDE28 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000087 0x80ACDE2C 03E00008 */ jr	$ra
/* 000088 0x80ACDE30 00000000 */ nop

glabel EnElfbub_Destroy
/* 000089 0x80ACDE34 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000090 0x80ACDE38 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000091 0x80ACDE3C 00803025 */ move	$a2, $a0
/* 000092 0x80ACDE40 00A03825 */ move	$a3, $a1
/* 000093 0x80ACDE44 00E02025 */ move	$a0, $a3
/* 000094 0x80ACDE48 0C03847B */ jal	Collision_FiniCylinder
/* 000095 0x80ACDE4C 24C50144 */ addiu	$a1, $a2, 0X144
/* 000096 0x80ACDE50 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000097 0x80ACDE54 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000098 0x80ACDE58 03E00008 */ jr	$ra
/* 000099 0x80ACDE5C 00000000 */ nop

glabel func_80ACDE60
/* 000100 0x80ACDE60 27BDFF78 */ addiu	$sp, $sp, -0X88
/* 000101 0x80ACDE64 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000102 0x80ACDE68 3C0180AD */ lui	$at, %hi(D_80ACE2B4)
/* 000103 0x80ACDE6C C434E2B4 */ lwc1	$f20, %lo(D_80ACE2B4)($at)
/* 000104 0x80ACDE70 3C01447A */ lui	$at, 0x447A
/* 000105 0x80ACDE74 F7B60038 */ sdc1	$f22, 0X38($sp)
/* 000106 0x80ACDE78 AFBE0060 */ sw	$fp, 0X60($sp)
/* 000107 0x80ACDE7C AFB10044 */ sw	$s1, 0X44($sp)
/* 000108 0x80ACDE80 4481B000 */ mtc1	$at, $f22
/* 000109 0x80ACDE84 00808825 */ move	$s1, $a0
/* 000110 0x80ACDE88 00A0F025 */ move	$fp, $a1
/* 000111 0x80ACDE8C AFBF0064 */ sw	$ra, 0X64($sp)
/* 000112 0x80ACDE90 AFB7005C */ sw	$s7, 0X5C($sp)
/* 000113 0x80ACDE94 AFB60058 */ sw	$s6, 0X58($sp)
/* 000114 0x80ACDE98 AFB50054 */ sw	$s5, 0X54($sp)
/* 000115 0x80ACDE9C AFB40050 */ sw	$s4, 0X50($sp)
/* 000116 0x80ACDEA0 AFB3004C */ sw	$s3, 0X4C($sp)
/* 000117 0x80ACDEA4 AFB20048 */ sw	$s2, 0X48($sp)
/* 000118 0x80ACDEA8 AFB00040 */ sw	$s0, 0X40($sp)
/* 000119 0x80ACDEAC 44802000 */ mtc1	$zero, $f4
/* 000120 0x80ACDEB0 4406A000 */ mfc1	$a2, $f20
/* 000121 0x80ACDEB4 4407B000 */ mfc1	$a3, $f22
/* 000122 0x80ACDEB8 2624019C */ addiu	$a0, $s1, 0X19C
/* 000123 0x80ACDEBC 3C054040 */ lui	$a1, 0x4040
/* 000124 0x80ACDEC0 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000125 0x80ACDEC4 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000126 0x80ACDEC8 44803000 */ mtc1	$zero, $f6
/* 000127 0x80ACDECC 3C053E4C */ lui	$a1, 0x3E4C
/* 000128 0x80ACDED0 4406A000 */ mfc1	$a2, $f20
/* 000129 0x80ACDED4 4407B000 */ mfc1	$a3, $f22
/* 000130 0x80ACDED8 34A5CCCD */ ori	$a1, $a1, 0XCCCD
/* 000131 0x80ACDEDC 26240198 */ addiu	$a0, $s1, 0X198
/* 000132 0x80ACDEE0 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000133 0x80ACDEE4 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000134 0x80ACDEE8 862E0192 */ lh	$t6, 0X192($s1)
/* 000135 0x80ACDEEC 86290196 */ lh	$t1, 0X196($s1)
/* 000136 0x80ACDEF0 86380190 */ lh	$t8, 0X190($s1)
/* 000137 0x80ACDEF4 25CF03E8 */ addiu	$t7, $t6, 0X3E8
/* 000138 0x80ACDEF8 A62F0192 */ sh	$t7, 0X192($s1)
/* 000139 0x80ACDEFC 252AFFFF */ addiu	$t2, $t1, -0X1
/* 000140 0x80ACDF00 86390192 */ lh	$t9, 0X192($s1)
/* 000141 0x80ACDF04 A62A0196 */ sh	$t2, 0X196($s1)
/* 000142 0x80ACDF08 862B0196 */ lh	$t3, 0X196($s1)
/* 000143 0x80ACDF0C 03194021 */ addu	$t0, $t8, $t9
/* 000144 0x80ACDF10 A6280190 */ sh	$t0, 0X190($s1)
/* 000145 0x80ACDF14 1D600038 */ bgtz	$t3, .L80ACDFF8
/* 000146 0x80ACDF18 00008025 */ move	$s0, $zero
/* 000147 0x80ACDF1C C6280024 */ lwc1	$f8, 0X24($s1)
/* 000148 0x80ACDF20 3C013F00 */ lui	$at, 0x3F00
/* 000149 0x80ACDF24 4481B000 */ mtc1	$at, $f22
/* 000150 0x80ACDF28 E7A8006C */ swc1	$f8, 0X6C($sp)
/* 000151 0x80ACDF2C C62A0028 */ lwc1	$f10, 0X28($s1)
/* 000152 0x80ACDF30 3C0140E0 */ lui	$at, 0x40E0
/* 000153 0x80ACDF34 3C1680AD */ lui	$s6, %hi(D_80ACE2A0)
/* 000154 0x80ACDF38 E7AA0070 */ swc1	$f10, 0X70($sp)
/* 000155 0x80ACDF3C C630002C */ lwc1	$f16, 0X2C($s1)
/* 000156 0x80ACDF40 3C1580AD */ lui	$s5, %hi(D_80ACE29C)
/* 000157 0x80ACDF44 3C1480AD */ lui	$s4, %hi(D_80ACE2A4)
/* 000158 0x80ACDF48 4481A000 */ mtc1	$at, $f20
/* 000159 0x80ACDF4C 2694E2A4 */ addiu	$s4, $s4, %lo(D_80ACE2A4)
/* 000160 0x80ACDF50 26B5E29C */ addiu	$s5, $s5, %lo(D_80ACE29C)
/* 000161 0x80ACDF54 26D6E2A0 */ addiu	$s6, $s6, %lo(D_80ACE2A0)
/* 000162 0x80ACDF58 24170014 */ li	$s7, 0X14
/* 000163 0x80ACDF5C 27B30078 */ addiu	$s3, $sp, 0X78
/* 000164 0x80ACDF60 27B2006C */ addiu	$s2, $sp, 0X6C
/* 000165 0x80ACDF64 E7B00074 */ swc1	$f16, 0X74($sp)
.L80ACDF68:
/* 000166 0x80ACDF68 0C021BF7 */ jal	randZeroOne
/* 000167 0x80ACDF6C 00000000 */ nop
/* 000168 0x80ACDF70 46160481 */ sub.s	$f18, $f0, $f22
/* 000169 0x80ACDF74 46149102 */ mul.s	$f4, $f18, $f20
/* 000170 0x80ACDF78 0C021BF7 */ jal	randZeroOne
/* 000171 0x80ACDF7C E7A40078 */ swc1	$f4, 0X78($sp)
/* 000172 0x80ACDF80 46140182 */ mul.s	$f6, $f0, $f20
/* 000173 0x80ACDF84 0C021BF7 */ jal	randZeroOne
/* 000174 0x80ACDF88 E7A6007C */ swc1	$f6, 0X7C($sp)
/* 000175 0x80ACDF8C 46160201 */ sub.s	$f8, $f0, $f22
/* 000176 0x80ACDF90 24040064 */ li	$a0, 0X64
/* 000177 0x80ACDF94 24050032 */ li	$a1, 0X32
/* 000178 0x80ACDF98 46144282 */ mul.s	$f10, $f8, $f20
/* 000179 0x80ACDF9C 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000180 0x80ACDFA0 E7AA0080 */ swc1	$f10, 0X80($sp)
/* 000181 0x80ACDFA4 240C0019 */ li	$t4, 0X19
/* 000182 0x80ACDFA8 AFAC001C */ sw	$t4, 0X1C($sp)
/* 000183 0x80ACDFAC 03C02025 */ move	$a0, $fp
/* 000184 0x80ACDFB0 02402825 */ move	$a1, $s2
/* 000185 0x80ACDFB4 02603025 */ move	$a2, $s3
/* 000186 0x80ACDFB8 02803825 */ move	$a3, $s4
/* 000187 0x80ACDFBC AFB50010 */ sw	$s5, 0X10($sp)
/* 000188 0x80ACDFC0 AFB60014 */ sw	$s6, 0X14($sp)
/* 000189 0x80ACDFC4 AFA20018 */ sw	$v0, 0X18($sp)
/* 000190 0x80ACDFC8 0C02C843 */ jal	EffectSS_SpawnBigOctoBubble2
/* 000191 0x80ACDFCC AFA00020 */ sw	$zero, 0X20($sp)
/* 000192 0x80ACDFD0 26100001 */ addiu	$s0, $s0, 0X1
/* 000193 0x80ACDFD4 1617FFE4 */ bne	$s0, $s7, .L80ACDF68
/* 000194 0x80ACDFD8 00000000 */ nop
/* 000195 0x80ACDFDC 03C02025 */ move	$a0, $fp
/* 000196 0x80ACDFE0 26250024 */ addiu	$a1, $s1, 0X24
/* 000197 0x80ACDFE4 2406003C */ li	$a2, 0X3C
/* 000198 0x80ACDFE8 0C03C15A */ jal	func_800F0568
/* 000199 0x80ACDFEC 24073949 */ li	$a3, 0X3949
/* 000200 0x80ACDFF0 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000201 0x80ACDFF4 02202025 */ move	$a0, $s1
.L80ACDFF8:
/* 000202 0x80ACDFF8 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000203 0x80ACDFFC D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000204 0x80ACE000 D7B60038 */ ldc1	$f22, 0X38($sp)
/* 000205 0x80ACE004 8FB00040 */ lw	$s0, 0X40($sp)
/* 000206 0x80ACE008 8FB10044 */ lw	$s1, 0X44($sp)
/* 000207 0x80ACE00C 8FB20048 */ lw	$s2, 0X48($sp)
/* 000208 0x80ACE010 8FB3004C */ lw	$s3, 0X4C($sp)
/* 000209 0x80ACE014 8FB40050 */ lw	$s4, 0X50($sp)
/* 000210 0x80ACE018 8FB50054 */ lw	$s5, 0X54($sp)
/* 000211 0x80ACE01C 8FB60058 */ lw	$s6, 0X58($sp)
/* 000212 0x80ACE020 8FB7005C */ lw	$s7, 0X5C($sp)
/* 000213 0x80ACE024 8FBE0060 */ lw	$fp, 0X60($sp)
/* 000214 0x80ACE028 03E00008 */ jr	$ra
/* 000215 0x80ACE02C 27BD0088 */ addiu	$sp, $sp, 0X88

glabel func_80ACE030
/* 000216 0x80ACE030 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000217 0x80ACE034 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000218 0x80ACE038 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000219 0x80ACE03C 00803825 */ move	$a3, $a0
/* 000220 0x80ACE040 84EE0190 */ lh	$t6, 0X190($a3)
/* 000221 0x80ACE044 84EF0192 */ lh	$t7, 0X192($a3)
/* 000222 0x80ACE048 84E40194 */ lh	$a0, 0X194($a3)
/* 000223 0x80ACE04C 01CFC021 */ addu	$t8, $t6, $t7
/* 000224 0x80ACE050 A4F80190 */ sh	$t8, 0X190($a3)
/* 000225 0x80ACE054 0C03FB61 */ jal	Math_Sins
/* 000226 0x80ACE058 AFA70028 */ sw	$a3, 0X28($sp)
/* 000227 0x80ACE05C 8FA70028 */ lw	$a3, 0X28($sp)
/* 000228 0x80ACE060 3C0D80AD */ lui	$t5, %hi(func_80ACDE60)
/* 000229 0x80ACE064 25ADDE60 */ addiu	$t5, $t5, %lo(func_80ACDE60)
/* 000230 0x80ACE068 C4E40028 */ lwc1	$f4, 0X28($a3)
/* 000231 0x80ACE06C 84F90194 */ lh	$t9, 0X194($a3)
/* 000232 0x80ACE070 90E90155 */ lbu	$t1, 0X155($a3)
/* 000233 0x80ACE074 46002180 */ add.s	$f6, $f4, $f0
/* 000234 0x80ACE078 27280200 */ addiu	$t0, $t9, 0X200
/* 000235 0x80ACE07C 312A0002 */ andi	$t2, $t1, 0X2
/* 000236 0x80ACE080 A4E80194 */ sh	$t0, 0X194($a3)
/* 000237 0x80ACE084 15400007 */ bnez	$t2, .L80ACE0A4
/* 000238 0x80ACE088 E4E60028 */ swc1	$f6, 0X28($a3)
/* 000239 0x80ACE08C 90EB0156 */ lbu	$t3, 0X156($a3)
/* 000240 0x80ACE090 3C010001 */ lui	$at, 0x0001
/* 000241 0x80ACE094 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000242 0x80ACE098 316C0002 */ andi	$t4, $t3, 0X2
/* 000243 0x80ACE09C 11800005 */ beqz	$t4, .L80ACE0B4
/* 000244 0x80ACE0A0 34218884 */ ori	$at, $at, 0X8884
.L80ACE0A4:
/* 000245 0x80ACE0A4 240E0006 */ li	$t6, 0X6
/* 000246 0x80ACE0A8 ACED01A0 */ sw	$t5, 0X1A0($a3)
/* 000247 0x80ACE0AC 1000000A */ b	.L80ACE0D8
/* 000248 0x80ACE0B0 A4EE0196 */ sh	$t6, 0X196($a3)
.L80ACE0B4:
/* 000249 0x80ACE0B4 00812821 */ addu	$a1, $a0, $at
/* 000250 0x80ACE0B8 24E60144 */ addiu	$a2, $a3, 0X144
/* 000251 0x80ACE0BC AFA60018 */ sw	$a2, 0X18($sp)
/* 000252 0x80ACE0C0 0C0389D0 */ jal	Collision_AddAC
/* 000253 0x80ACE0C4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000254 0x80ACE0C8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000255 0x80ACE0CC 8FA60018 */ lw	$a2, 0X18($sp)
/* 000256 0x80ACE0D0 0C038A4A */ jal	Collision_AddOT
/* 000257 0x80ACE0D4 8FA4002C */ lw	$a0, 0X2C($sp)
.L80ACE0D8:
/* 000258 0x80ACE0D8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000259 0x80ACE0DC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000260 0x80ACE0E0 03E00008 */ jr	$ra
/* 000261 0x80ACE0E4 00000000 */ nop

glabel EnElfbub_Update
/* 000262 0x80ACE0E8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000263 0x80ACE0EC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000264 0x80ACE0F0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000265 0x80ACE0F4 24850144 */ addiu	$a1, $a0, 0X144
/* 000266 0x80ACE0F8 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000267 0x80ACE0FC AFA40018 */ sw	$a0, 0X18($sp)
/* 000268 0x80ACE100 8FA40018 */ lw	$a0, 0X18($sp)
/* 000269 0x80ACE104 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000270 0x80ACE108 8C9901A0 */ lw	$t9, 0X1A0($a0)
/* 000271 0x80ACE10C 0320F809 */ jalr	$t9
/* 000272 0x80ACE110 00000000 */ nop
/* 000273 0x80ACE114 8FA40018 */ lw	$a0, 0X18($sp)
/* 000274 0x80ACE118 0C02D9D7 */ jal	Actor_SetHeight
/* 000275 0x80ACE11C 8C8500C4 */ lw	$a1, 0XC4($a0)
/* 000276 0x80ACE120 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000277 0x80ACE124 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000278 0x80ACE128 03E00008 */ jr	$ra
/* 000279 0x80ACE12C 00000000 */ nop

glabel EnElfbub_Draw
/* 000280 0x80ACE130 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000281 0x80ACE134 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000282 0x80ACE138 AFB00020 */ sw	$s0, 0X20($sp)
/* 000283 0x80ACE13C F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000284 0x80ACE140 AFA40040 */ sw	$a0, 0X40($sp)
/* 000285 0x80ACE144 AFA50044 */ sw	$a1, 0X44($sp)
/* 000286 0x80ACE148 8FAE0044 */ lw	$t6, 0X44($sp)
/* 000287 0x80ACE14C 8DC40000 */ lw	$a0, 0X0($t6)
/* 000288 0x80ACE150 0C04B0B7 */ jal	func_8012C2DC
/* 000289 0x80ACE154 00808025 */ move	$s0, $a0
/* 000290 0x80ACE158 3C013F80 */ lui	$at, 0x3F80
/* 000291 0x80ACE15C 4481A000 */ mtc1	$at, $f20
/* 000292 0x80ACE160 44806000 */ mtc1	$zero, $f12
/* 000293 0x80ACE164 24070001 */ li	$a3, 0X1
/* 000294 0x80ACE168 4406A000 */ mfc1	$a2, $f20
/* 000295 0x80ACE16C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000296 0x80ACE170 46006386 */ mov.s	$f14, $f12
/* 000297 0x80ACE174 8FA40044 */ lw	$a0, 0X44($sp)
/* 000298 0x80ACE178 3C010001 */ lui	$at, 0x0001
/* 000299 0x80ACE17C 342187FC */ ori	$at, $at, 0X87FC
/* 000300 0x80ACE180 0C060828 */ jal	SysMatrix_NormalizeXYZ
/* 000301 0x80ACE184 00812021 */ addu	$a0, $a0, $at
/* 000302 0x80ACE188 8FAF0040 */ lw	$t7, 0X40($sp)
/* 000303 0x80ACE18C 4406A000 */ mfc1	$a2, $f20
/* 000304 0x80ACE190 24070001 */ li	$a3, 0X1
/* 000305 0x80ACE194 C5E4019C */ lwc1	$f4, 0X19C($t7)
/* 000306 0x80ACE198 46142300 */ add.s	$f12, $f4, $f20
/* 000307 0x80ACE19C 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000308 0x80ACE1A0 46006386 */ mov.s	$f14, $f12
/* 000309 0x80ACE1A4 8FB80040 */ lw	$t8, 0X40($sp)
/* 000310 0x80ACE1A8 24050001 */ li	$a1, 0X1
/* 000311 0x80ACE1AC 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000312 0x80ACE1B0 87040190 */ lh	$a0, 0X190($t8)
/* 000313 0x80ACE1B4 8FB90040 */ lw	$t9, 0X40($sp)
/* 000314 0x80ACE1B8 4406A000 */ mfc1	$a2, $f20
/* 000315 0x80ACE1BC 4600A386 */ mov.s	$f14, $f20
/* 000316 0x80ACE1C0 C7260198 */ lwc1	$f6, 0X198($t9)
/* 000317 0x80ACE1C4 24070001 */ li	$a3, 0X1
/* 000318 0x80ACE1C8 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000319 0x80ACE1CC 46143300 */ add.s	$f12, $f6, $f20
/* 000320 0x80ACE1D0 8FA80040 */ lw	$t0, 0X40($sp)
/* 000321 0x80ACE1D4 24050001 */ li	$a1, 0X1
/* 000322 0x80ACE1D8 85040190 */ lh	$a0, 0X190($t0)
/* 000323 0x80ACE1DC 00042023 */ negu	$a0, $a0
/* 000324 0x80ACE1E0 00042400 */ sll	$a0, $a0, 16
/* 000325 0x80ACE1E4 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000326 0x80ACE1E8 00042403 */ sra	$a0, $a0, 16
/* 000327 0x80ACE1EC 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000328 0x80ACE1F0 3C0ADA38 */ lui	$t2, 0xDA38
/* 000329 0x80ACE1F4 354A0003 */ ori	$t2, $t2, 0X3
/* 000330 0x80ACE1F8 24490008 */ addiu	$t1, $v0, 0X8
/* 000331 0x80ACE1FC AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000332 0x80ACE200 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000333 0x80ACE204 8FAB0044 */ lw	$t3, 0X44($sp)
/* 000334 0x80ACE208 8D640000 */ lw	$a0, 0X0($t3)
/* 000335 0x80ACE20C 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000336 0x80ACE210 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000337 0x80ACE214 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000338 0x80ACE218 3C0DDE00 */ lui	$t5, 0xDE00
/* 000339 0x80ACE21C AC620004 */ sw	$v0, 0X4($v1)
/* 000340 0x80ACE220 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000341 0x80ACE224 3C0E0600 */ lui	$t6, 0x0600
/* 000342 0x80ACE228 25CE1000 */ addiu	$t6, $t6, 0X1000
/* 000343 0x80ACE22C 244C0008 */ addiu	$t4, $v0, 0X8
/* 000344 0x80ACE230 AE0C02C0 */ sw	$t4, 0X2C0($s0)
/* 000345 0x80ACE234 AC4E0004 */ sw	$t6, 0X4($v0)
/* 000346 0x80ACE238 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000347 0x80ACE23C 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000348 0x80ACE240 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000349 0x80ACE244 8FB00020 */ lw	$s0, 0X20($sp)
/* 000350 0x80ACE248 03E00008 */ jr	$ra
/* 000351 0x80ACE24C 27BD0040 */ addiu	$sp, $sp, 0X40
