.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_809A41C0
/* 000000 0x809A41C0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x809A41C4 3C014120 */ lui	$at, 0x4120
/* 000002 0x809A41C8 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000003 0x809A41CC 44810000 */ mtc1	$at, $f0
/* 000004 0x809A41D0 00802825 */ move	$a1, $a0
/* 000005 0x809A41D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000006 0x809A41D8 AFA40028 */ sw	$a0, 0X28($sp)
/* 000007 0x809A41DC 27A6001C */ addiu	$a2, $sp, 0X1C
/* 000008 0x809A41E0 8CAF0024 */ lw	$t7, 0X24($a1)
/* 000009 0x809A41E4 3C073FE6 */ lui	$a3, 0x3FE6
/* 000010 0x809A41E8 34E76666 */ ori	$a3, $a3, 0X6666
/* 000011 0x809A41EC ACCF0000 */ sw	$t7, 0X0($a2)
/* 000012 0x809A41F0 8CAE0028 */ lw	$t6, 0X28($a1)
/* 000013 0x809A41F4 ACCE0004 */ sw	$t6, 0X4($a2)
/* 000014 0x809A41F8 8CAF002C */ lw	$t7, 0X2C($a1)
/* 000015 0x809A41FC ACCF0008 */ sw	$t7, 0X8($a2)
/* 000016 0x809A4200 C7A40020 */ lwc1	$f4, 0X20($sp)
/* 000017 0x809A4204 C7A80024 */ lwc1	$f8, 0X24($sp)
/* 000018 0x809A4208 AFA50028 */ sw	$a1, 0X28($sp)
/* 000019 0x809A420C 46002180 */ add.s	$f6, $f4, $f0
/* 000020 0x809A4210 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000021 0x809A4214 46004280 */ add.s	$f10, $f8, $f0
/* 000022 0x809A4218 E7A60020 */ swc1	$f6, 0X20($sp)
/* 000023 0x809A421C 0C02CAD1 */ jal	func_800B2B44
/* 000024 0x809A4220 E7AA0024 */ swc1	$f10, 0X24($sp)
/* 000025 0x809A4224 3C014120 */ lui	$at, 0x4120
/* 000026 0x809A4228 44819000 */ mtc1	$at, $f18
/* 000027 0x809A422C 3C0141A0 */ lui	$at, 0x41A0
/* 000028 0x809A4230 C7B0001C */ lwc1	$f16, 0X1C($sp)
/* 000029 0x809A4234 44814000 */ mtc1	$at, $f8
/* 000030 0x809A4238 C7A60024 */ lwc1	$f6, 0X24($sp)
/* 000031 0x809A423C 46128100 */ add.s	$f4, $f16, $f18
/* 000032 0x809A4240 3C073FE6 */ lui	$a3, 0x3FE6
/* 000033 0x809A4244 34E76666 */ ori	$a3, $a3, 0X6666
/* 000034 0x809A4248 46083281 */ sub.s	$f10, $f6, $f8
/* 000035 0x809A424C E7A4001C */ swc1	$f4, 0X1C($sp)
/* 000036 0x809A4250 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000037 0x809A4254 8FA50028 */ lw	$a1, 0X28($sp)
/* 000038 0x809A4258 E7AA0024 */ swc1	$f10, 0X24($sp)
/* 000039 0x809A425C 0C02CAD1 */ jal	func_800B2B44
/* 000040 0x809A4260 27A6001C */ addiu	$a2, $sp, 0X1C
/* 000041 0x809A4264 3C0141A0 */ lui	$at, 0x41A0
/* 000042 0x809A4268 44819000 */ mtc1	$at, $f18
/* 000043 0x809A426C C7B0001C */ lwc1	$f16, 0X1C($sp)
/* 000044 0x809A4270 3C073FE6 */ lui	$a3, 0x3FE6
/* 000045 0x809A4274 34E76666 */ ori	$a3, $a3, 0X6666
/* 000046 0x809A4278 46128101 */ sub.s	$f4, $f16, $f18
/* 000047 0x809A427C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000048 0x809A4280 8FA50028 */ lw	$a1, 0X28($sp)
/* 000049 0x809A4284 27A6001C */ addiu	$a2, $sp, 0X1C
/* 000050 0x809A4288 0C02CAD1 */ jal	func_800B2B44
/* 000051 0x809A428C E7A4001C */ swc1	$f4, 0X1C($sp)
/* 000052 0x809A4290 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000053 0x809A4294 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000054 0x809A4298 03E00008 */ jr	$ra
/* 000055 0x809A429C 00000000 */ nop

glabel func_809A42A0
/* 000056 0x809A42A0 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000057 0x809A42A4 F7B40010 */ sdc1	$f20, 0X10($sp)
/* 000058 0x809A42A8 3C014170 */ lui	$at, 0x4170
/* 000059 0x809A42AC AFB50040 */ sw	$s5, 0X40($sp)
/* 000060 0x809A42B0 AFB10030 */ sw	$s1, 0X30($sp)
/* 000061 0x809A42B4 4481A000 */ mtc1	$at, $f20
/* 000062 0x809A42B8 00808825 */ move	$s1, $a0
/* 000063 0x809A42BC 00A0A825 */ move	$s5, $a1
/* 000064 0x809A42C0 AFBF0044 */ sw	$ra, 0X44($sp)
/* 000065 0x809A42C4 AFB4003C */ sw	$s4, 0X3C($sp)
/* 000066 0x809A42C8 AFB30038 */ sw	$s3, 0X38($sp)
/* 000067 0x809A42CC AFB20034 */ sw	$s2, 0X34($sp)
/* 000068 0x809A42D0 AFB0002C */ sw	$s0, 0X2C($sp)
/* 000069 0x809A42D4 F7B80020 */ sdc1	$f24, 0X20($sp)
/* 000070 0x809A42D8 F7B60018 */ sdc1	$f22, 0X18($sp)
/* 000071 0x809A42DC C6240028 */ lwc1	$f4, 0X28($s1)
/* 000072 0x809A42E0 3C01809A */ lui	$at, %hi(D_809A4D30)
/* 000073 0x809A42E4 C4384D30 */ lwc1	$f24, %lo(D_809A4D30)($at)
/* 000074 0x809A42E8 46142180 */ add.s	$f6, $f4, $f20
/* 000075 0x809A42EC 3C01809A */ lui	$at, %hi(D_809A4D34)
/* 000076 0x809A42F0 C4364D34 */ lwc1	$f22, %lo(D_809A4D34)($at)
/* 000077 0x809A42F4 00009025 */ move	$s2, $zero
/* 000078 0x809A42F8 E7A60058 */ swc1	$f6, 0X58($sp)
/* 000079 0x809A42FC 00008025 */ move	$s0, $zero
/* 000080 0x809A4300 24140005 */ li	$s4, 0X5
/* 000081 0x809A4304 27B30054 */ addiu	$s3, $sp, 0X54
.L809A4308:
/* 000082 0x809A4308 00102400 */ sll	$a0, $s0, 16
/* 000083 0x809A430C 0C03FB61 */ jal	Math_Sins
/* 000084 0x809A4310 00042403 */ sra	$a0, $a0, 16
/* 000085 0x809A4314 46140202 */ mul.s	$f8, $f0, $f20
/* 000086 0x809A4318 C62A0024 */ lwc1	$f10, 0X24($s1)
/* 000087 0x809A431C 00102400 */ sll	$a0, $s0, 16
/* 000088 0x809A4320 00042403 */ sra	$a0, $a0, 16
/* 000089 0x809A4324 460A4400 */ add.s	$f16, $f8, $f10
/* 000090 0x809A4328 0C03FB51 */ jal	Math_Coss
/* 000091 0x809A432C E7B00054 */ swc1	$f16, 0X54($sp)
/* 000092 0x809A4330 46140482 */ mul.s	$f18, $f0, $f20
/* 000093 0x809A4334 C624002C */ lwc1	$f4, 0X2C($s1)
/* 000094 0x809A4338 46049180 */ add.s	$f6, $f18, $f4
/* 000095 0x809A433C 0C021BF7 */ jal	randZeroOne
/* 000096 0x809A4340 E7A6005C */ swc1	$f6, 0X5C($sp)
/* 000097 0x809A4344 46160202 */ mul.s	$f8, $f0, $f22
/* 000098 0x809A4348 02A02025 */ move	$a0, $s5
/* 000099 0x809A434C 02202825 */ move	$a1, $s1
/* 000100 0x809A4350 02603025 */ move	$a2, $s3
/* 000101 0x809A4354 46184280 */ add.s	$f10, $f8, $f24
/* 000102 0x809A4358 44075000 */ mfc1	$a3, $f10
/* 000103 0x809A435C 0C02CAD1 */ jal	func_800B2B44
/* 000104 0x809A4360 00000000 */ nop
/* 000105 0x809A4364 26103333 */ addiu	$s0, $s0, 0X3333
/* 000106 0x809A4368 00108400 */ sll	$s0, $s0, 16
/* 000107 0x809A436C 26520001 */ addiu	$s2, $s2, 0X1
/* 000108 0x809A4370 1654FFE5 */ bne	$s2, $s4, .L809A4308
/* 000109 0x809A4374 00108403 */ sra	$s0, $s0, 16
/* 000110 0x809A4378 8FBF0044 */ lw	$ra, 0X44($sp)
/* 000111 0x809A437C D7B40010 */ ldc1	$f20, 0X10($sp)
/* 000112 0x809A4380 D7B60018 */ ldc1	$f22, 0X18($sp)
/* 000113 0x809A4384 D7B80020 */ ldc1	$f24, 0X20($sp)
/* 000114 0x809A4388 8FB0002C */ lw	$s0, 0X2C($sp)
/* 000115 0x809A438C 8FB10030 */ lw	$s1, 0X30($sp)
/* 000116 0x809A4390 8FB20034 */ lw	$s2, 0X34($sp)
/* 000117 0x809A4394 8FB30038 */ lw	$s3, 0X38($sp)
/* 000118 0x809A4398 8FB4003C */ lw	$s4, 0X3C($sp)
/* 000119 0x809A439C 8FB50040 */ lw	$s5, 0X40($sp)
/* 000120 0x809A43A0 03E00008 */ jr	$ra
/* 000121 0x809A43A4 27BD0060 */ addiu	$sp, $sp, 0X60

glabel func_809A43A8
/* 000122 0x809A43A8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000123 0x809A43AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000124 0x809A43B0 848E001C */ lh	$t6, 0X1C($a0)
/* 000125 0x809A43B4 000E7B83 */ sra	$t7, $t6, 14
/* 000126 0x809A43B8 31F80001 */ andi	$t8, $t7, 0X1
/* 000127 0x809A43BC 17000005 */ bnez	$t8, .L809A43D4
/* 000128 0x809A43C0 00000000 */ nop
/* 000129 0x809A43C4 0C269070 */ jal	func_809A41C0
/* 000130 0x809A43C8 00000000 */ nop
/* 000131 0x809A43CC 10000004 */ b	.L809A43E0
/* 000132 0x809A43D0 8FBF0014 */ lw	$ra, 0X14($sp)
.L809A43D4:
/* 000133 0x809A43D4 0C2690A8 */ jal	func_809A42A0
/* 000134 0x809A43D8 00000000 */ nop
/* 000135 0x809A43DC 8FBF0014 */ lw	$ra, 0X14($sp)
.L809A43E0:
/* 000136 0x809A43E0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000137 0x809A43E4 03E00008 */ jr	$ra
/* 000138 0x809A43E8 00000000 */ nop

glabel func_809A43EC
/* 000139 0x809A43EC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000140 0x809A43F0 8CA31CCC */ lw	$v1, 0X1CCC($a1)
/* 000141 0x809A43F4 C48601B8 */ lwc1	$f6, 0X1B8($a0)
/* 000142 0x809A43F8 C48A01BC */ lwc1	$f10, 0X1BC($a0)
/* 000143 0x809A43FC C4640024 */ lwc1	$f4, 0X24($v1)
/* 000144 0x809A4400 C468002C */ lwc1	$f8, 0X2C($v1)
/* 000145 0x809A4404 C49201C8 */ lwc1	$f18, 0X1C8($a0)
/* 000146 0x809A4408 46062081 */ sub.s	$f2, $f4, $f6
/* 000147 0x809A440C C49001CC */ lwc1	$f16, 0X1CC($a0)
/* 000148 0x809A4410 00001025 */ move	$v0, $zero
/* 000149 0x809A4414 460A4301 */ sub.s	$f12, $f8, $f10
/* 000150 0x809A4418 46121102 */ mul.s	$f4, $f2, $f18
/* 000151 0x809A441C 00000000 */ nop
/* 000152 0x809A4420 460C8182 */ mul.s	$f6, $f16, $f12
/* 000153 0x809A4424 00000000 */ nop
/* 000154 0x809A4428 46028202 */ mul.s	$f8, $f16, $f2
/* 000155 0x809A442C 00000000 */ nop
/* 000156 0x809A4430 46126282 */ mul.s	$f10, $f12, $f18
/* 000157 0x809A4434 46062381 */ sub.s	$f14, $f4, $f6
/* 000158 0x809A4438 46007005 */ abs.s	$f0, $f14
/* 000159 0x809A443C 460A4100 */ add.s	$f4, $f8, $f10
/* 000160 0x809A4440 E7A40004 */ swc1	$f4, 0X4($sp)
/* 000161 0x809A4444 C48601C0 */ lwc1	$f6, 0X1C0($a0)
/* 000162 0x809A4448 4606003E */ c.le.s	$f0, $f6
/* 000163 0x809A444C 00000000 */ nop
/* 000164 0x809A4450 45000002 */ bc1f .L809A445C
/* 000165 0x809A4454 00000000 */ nop
/* 000166 0x809A4458 24020001 */ li	$v0, 0X1
.L809A445C:
/* 000167 0x809A445C 10400009 */ beqz	$v0, .L809A4484
/* 000168 0x809A4460 00000000 */ nop
/* 000169 0x809A4464 C48801C4 */ lwc1	$f8, 0X1C4($a0)
/* 000170 0x809A4468 46002005 */ abs.s	$f0, $f4
/* 000171 0x809A446C 00001025 */ move	$v0, $zero
/* 000172 0x809A4470 4608003E */ c.le.s	$f0, $f8
/* 000173 0x809A4474 00000000 */ nop
/* 000174 0x809A4478 45000002 */ bc1f .L809A4484
/* 000175 0x809A447C 00000000 */ nop
/* 000176 0x809A4480 24020001 */ li	$v0, 0X1
.L809A4484:
/* 000177 0x809A4484 03E00008 */ jr	$ra
/* 000178 0x809A4488 27BD0018 */ addiu	$sp, $sp, 0X18

glabel ObjToge_Init
/* 000179 0x809A448C 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000180 0x809A4490 AFB00018 */ sw	$s0, 0X18($sp)
/* 000181 0x809A4494 00808025 */ move	$s0, $a0
/* 000182 0x809A4498 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000183 0x809A449C AFA50054 */ sw	$a1, 0X54($sp)
/* 000184 0x809A44A0 860E001C */ lh	$t6, 0X1C($s0)
/* 000185 0x809A44A4 3C05809A */ lui	$a1, %hi(D_809A4D14)
/* 000186 0x809A44A8 24A54D14 */ addiu	$a1, $a1, %lo(D_809A4D14)
/* 000187 0x809A44AC 000E7B83 */ sra	$t7, $t6, 14
/* 000188 0x809A44B0 31F80001 */ andi	$t8, $t7, 0X1
/* 000189 0x809A44B4 AFB80038 */ sw	$t8, 0X38($sp)
/* 000190 0x809A44B8 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000191 0x809A44BC 02002025 */ move	$a0, $s0
/* 000192 0x809A44C0 8FB90038 */ lw	$t9, 0X38($sp)
/* 000193 0x809A44C4 3C09809A */ lui	$t1, %hi(D_809A4D0C)
/* 000194 0x809A44C8 25294D0C */ addiu	$t1, $t1, %lo(D_809A4D0C)
/* 000195 0x809A44CC 00194080 */ sll	$t0, $t9, 2
/* 000196 0x809A44D0 01091021 */ addu	$v0, $t0, $t1
/* 000197 0x809A44D4 3C01809A */ lui	$at, %hi(D_809A4D38)
/* 000198 0x809A44D8 C4264D38 */ lwc1	$f6, %lo(D_809A4D38)($at)
/* 000199 0x809A44DC C4440000 */ lwc1	$f4, 0X0($v0)
/* 000200 0x809A44E0 AFA20030 */ sw	$v0, 0X30($sp)
/* 000201 0x809A44E4 02002025 */ move	$a0, $s0
/* 000202 0x809A44E8 46062202 */ mul.s	$f8, $f4, $f6
/* 000203 0x809A44EC 44054000 */ mfc1	$a1, $f8
/* 000204 0x809A44F0 0C02D9F8 */ jal	Actor_SetScale
/* 000205 0x809A44F4 00000000 */ nop
/* 000206 0x809A44F8 860A0018 */ lh	$t2, 0X18($s0)
/* 000207 0x809A44FC 26050144 */ addiu	$a1, $s0, 0X144
/* 000208 0x809A4500 A7AA003E */ sh	$t2, 0X3E($sp)
/* 000209 0x809A4504 A60000C0 */ sh	$zero, 0XC0($s0)
/* 000210 0x809A4508 860200C0 */ lh	$v0, 0XC0($s0)
/* 000211 0x809A450C A6020034 */ sh	$v0, 0X34($s0)
/* 000212 0x809A4510 A6020018 */ sh	$v0, 0X18($s0)
/* 000213 0x809A4514 AFA50028 */ sw	$a1, 0X28($sp)
/* 000214 0x809A4518 0C038467 */ jal	Collision_InitCylinderDefault
/* 000215 0x809A451C 8FA40054 */ lw	$a0, 0X54($sp)
/* 000216 0x809A4520 8603001C */ lh	$v1, 0X1C($s0)
/* 000217 0x809A4524 240100FF */ li	$at, 0XFF
/* 000218 0x809A4528 8FAB0054 */ lw	$t3, 0X54($sp)
/* 000219 0x809A452C 306300FF */ andi	$v1, $v1, 0XFF
/* 000220 0x809A4530 14610005 */ bne	$v1, $at, .L809A4548
/* 000221 0x809A4534 3C0C0002 */ lui	$t4, 0x0002
/* 000222 0x809A4538 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000223 0x809A453C 02002025 */ move	$a0, $s0
/* 000224 0x809A4540 10000071 */ b	.L809A4708
/* 000225 0x809A4544 8FBF001C */ lw	$ra, 0X1C($sp)
.L809A4548:
/* 000226 0x809A4548 018B6021 */ addu	$t4, $t4, $t3
/* 000227 0x809A454C 8D8C8864 */ lw	$t4, -0X779C($t4)
/* 000228 0x809A4550 000368C0 */ sll	$t5, $v1, 3
/* 000229 0x809A4554 24010002 */ li	$at, 0X2
/* 000230 0x809A4558 018D1021 */ addu	$v0, $t4, $t5
/* 000231 0x809A455C 904E0000 */ lbu	$t6, 0X0($v0)
/* 000232 0x809A4560 11C10005 */ beq	$t6, $at, .L809A4578
/* 000233 0x809A4564 00000000 */ nop
/* 000234 0x809A4568 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000235 0x809A456C 02002025 */ move	$a0, $s0
/* 000236 0x809A4570 10000065 */ b	.L809A4708
/* 000237 0x809A4574 8FBF001C */ lw	$ra, 0X1C($sp)
.L809A4578:
/* 000238 0x809A4578 0C040141 */ jal	Lib_PtrSegToVirt
/* 000239 0x809A457C 8C440004 */ lw	$a0, 0X4($v0)
/* 000240 0x809A4580 26040198 */ addiu	$a0, $s0, 0X198
/* 000241 0x809A4584 AFA20040 */ sw	$v0, 0X40($sp)
/* 000242 0x809A4588 AFA4002C */ sw	$a0, 0X2C($sp)
/* 000243 0x809A458C 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000244 0x809A4590 00402825 */ move	$a1, $v0
/* 000245 0x809A4594 8FA50040 */ lw	$a1, 0X40($sp)
/* 000246 0x809A4598 260401A4 */ addiu	$a0, $s0, 0X1A4
/* 000247 0x809A459C AFA40024 */ sw	$a0, 0X24($sp)
/* 000248 0x809A45A0 0C03FD53 */ jal	Math_Vec3s_ToVec3f
/* 000249 0x809A45A4 24A50006 */ addiu	$a1, $a1, 0X6
/* 000250 0x809A45A8 26040024 */ addiu	$a0, $s0, 0X24
/* 000251 0x809A45AC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000252 0x809A45B0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000253 0x809A45B4 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000254 0x809A45B8 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000255 0x809A45BC 8FA50024 */ lw	$a1, 0X24($sp)
/* 000256 0x809A45C0 44805000 */ mtc1	$zero, $f10
/* 000257 0x809A45C4 A6020032 */ sh	$v0, 0X32($s0)
/* 000258 0x809A45C8 AE000194 */ sw	$zero, 0X194($s0)
/* 000259 0x809A45CC E60A0070 */ swc1	$f10, 0X70($s0)
/* 000260 0x809A45D0 87AF003E */ lh	$t7, 0X3E($sp)
/* 000261 0x809A45D4 3C013F00 */ lui	$at, 0x3F00
/* 000262 0x809A45D8 59E0002E */ blezl	$t7, .L809A4694
/* 000263 0x809A45DC A20001B4 */ sb	$zero, 0X1B4($s0)
/* 000264 0x809A45E0 44810000 */ mtc1	$at, $f0
/* 000265 0x809A45E4 00000000 */ nop
/* 000266 0x809A45E8 C61001A4 */ lwc1	$f16, 0X1A4($s0)
/* 000267 0x809A45EC C6120198 */ lwc1	$f18, 0X198($s0)
/* 000268 0x809A45F0 C60801AC */ lwc1	$f8, 0X1AC($s0)
/* 000269 0x809A45F4 C60A01A0 */ lwc1	$f10, 0X1A0($s0)
/* 000270 0x809A45F8 46128100 */ add.s	$f4, $f16, $f18
/* 000271 0x809A45FC 24180001 */ li	$t8, 0X1
/* 000272 0x809A4600 A21801B4 */ sb	$t8, 0X1B4($s0)
/* 000273 0x809A4604 460A4400 */ add.s	$f16, $f8, $f10
/* 000274 0x809A4608 46002182 */ mul.s	$f6, $f4, $f0
/* 000275 0x809A460C 00000000 */ nop
/* 000276 0x809A4610 46008482 */ mul.s	$f18, $f16, $f0
/* 000277 0x809A4614 E60601B8 */ swc1	$f6, 0X1B8($s0)
/* 000278 0x809A4618 E61201BC */ swc1	$f18, 0X1BC($s0)
/* 000279 0x809A461C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000280 0x809A4620 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000281 0x809A4624 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000282 0x809A4628 00022400 */ sll	$a0, $v0, 16
/* 000283 0x809A462C A7A20036 */ sh	$v0, 0X36($sp)
/* 000284 0x809A4630 0C03FB51 */ jal	Math_Coss
/* 000285 0x809A4634 00042403 */ sra	$a0, $a0, 16
/* 000286 0x809A4638 E60001C8 */ swc1	$f0, 0X1C8($s0)
/* 000287 0x809A463C 0C03FB61 */ jal	Math_Sins
/* 000288 0x809A4640 87A40036 */ lh	$a0, 0X36($sp)
/* 000289 0x809A4644 E60001CC */ swc1	$f0, 0X1CC($s0)
/* 000290 0x809A4648 87B9003E */ lh	$t9, 0X3E($sp)
/* 000291 0x809A464C 3C0140F0 */ lui	$at, 0x40F0
/* 000292 0x809A4650 44814000 */ mtc1	$at, $f8
/* 000293 0x809A4654 44992000 */ mtc1	$t9, $f4
/* 000294 0x809A4658 00000000 */ nop
/* 000295 0x809A465C 468021A0 */ cvt.s.w	$f6, $f4
/* 000296 0x809A4660 46083282 */ mul.s	$f10, $f6, $f8
/* 000297 0x809A4664 E60A01C0 */ swc1	$f10, 0X1C0($s0)
/* 000298 0x809A4668 8FA50024 */ lw	$a1, 0X24($sp)
/* 000299 0x809A466C 0C05E9C8 */ jal	Math3D_Distance
/* 000300 0x809A4670 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000301 0x809A4674 3C013F00 */ lui	$at, 0x3F00
/* 000302 0x809A4678 44818000 */ mtc1	$at, $f16
/* 000303 0x809A467C 00000000 */ nop
/* 000304 0x809A4680 46100482 */ mul.s	$f18, $f0, $f16
/* 000305 0x809A4684 E61201C4 */ swc1	$f18, 0X1C4($s0)
/* 000306 0x809A4688 10000002 */ b	.L809A4694
/* 000307 0x809A468C 00000000 */ nop
/* 000308 0x809A4690 A20001B4 */ sb	$zero, 0X1B4($s0)
.L809A4694:
/* 000309 0x809A4694 3C07809A */ lui	$a3, %hi(D_809A4CB0)
/* 000310 0x809A4698 24E74CB0 */ addiu	$a3, $a3, %lo(D_809A4CB0)
/* 000311 0x809A469C 8FA40054 */ lw	$a0, 0X54($sp)
/* 000312 0x809A46A0 8FA50028 */ lw	$a1, 0X28($sp)
/* 000313 0x809A46A4 0C0384C3 */ jal	Collision_InitCylinderWithData
/* 000314 0x809A46A8 02003025 */ move	$a2, $s0
/* 000315 0x809A46AC 02002025 */ move	$a0, $s0
/* 000316 0x809A46B0 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000317 0x809A46B4 8FA50028 */ lw	$a1, 0X28($sp)
/* 000318 0x809A46B8 240800FF */ li	$t0, 0XFF
/* 000319 0x809A46BC A20800B6 */ sb	$t0, 0XB6($s0)
/* 000320 0x809A46C0 8FA90030 */ lw	$t1, 0X30($sp)
/* 000321 0x809A46C4 3C0A809A */ lui	$t2, %hi(D_809A4D10)
/* 000322 0x809A46C8 254A4D10 */ addiu	$t2, $t2, %lo(D_809A4D10)
/* 000323 0x809A46CC 152A0004 */ bne	$t1, $t2, .L809A46E0
/* 000324 0x809A46D0 240B003C */ li	$t3, 0X3C
/* 000325 0x809A46D4 240C0028 */ li	$t4, 0X28
/* 000326 0x809A46D8 A60B0184 */ sh	$t3, 0X184($s0)
/* 000327 0x809A46DC A60C0186 */ sh	$t4, 0X186($s0)
.L809A46E0:
/* 000328 0x809A46E0 920D01B4 */ lbu	$t5, 0X1B4($s0)
/* 000329 0x809A46E4 11A00005 */ beqz	$t5, .L809A46FC
/* 000330 0x809A46E8 00000000 */ nop
/* 000331 0x809A46EC 0C269201 */ jal	func_809A4804
/* 000332 0x809A46F0 02002025 */ move	$a0, $s0
/* 000333 0x809A46F4 10000004 */ b	.L809A4708
/* 000334 0x809A46F8 8FBF001C */ lw	$ra, 0X1C($sp)
.L809A46FC:
/* 000335 0x809A46FC 0C2691D1 */ jal	func_809A4744
/* 000336 0x809A4700 02002025 */ move	$a0, $s0
/* 000337 0x809A4704 8FBF001C */ lw	$ra, 0X1C($sp)
.L809A4708:
/* 000338 0x809A4708 8FB00018 */ lw	$s0, 0X18($sp)
/* 000339 0x809A470C 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000340 0x809A4710 03E00008 */ jr	$ra
/* 000341 0x809A4714 00000000 */ nop

glabel ObjToge_Destroy
/* 000342 0x809A4718 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000343 0x809A471C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000344 0x809A4720 00803825 */ move	$a3, $a0
/* 000345 0x809A4724 00A03025 */ move	$a2, $a1
/* 000346 0x809A4728 00C02025 */ move	$a0, $a2
/* 000347 0x809A472C 0C03847B */ jal	Collision_FiniCylinder
/* 000348 0x809A4730 24E50144 */ addiu	$a1, $a3, 0X144
/* 000349 0x809A4734 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000350 0x809A4738 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000351 0x809A473C 03E00008 */ jr	$ra
/* 000352 0x809A4740 00000000 */ nop

glabel func_809A4744
/* 000353 0x809A4744 848F001C */ lh	$t7, 0X1C($a0)
/* 000354 0x809A4748 3C0E809A */ lui	$t6, %hi(func_809A477C)
/* 000355 0x809A474C 25CE477C */ addiu	$t6, $t6, %lo(func_809A477C)
/* 000356 0x809A4750 000FC2C3 */ sra	$t8, $t7, 11
/* 000357 0x809A4754 33190007 */ andi	$t9, $t8, 0X7
/* 000358 0x809A4758 00194040 */ sll	$t0, $t9, 1
/* 000359 0x809A475C 3C09809A */ lui	$t1, %hi(D_809A4CFC)
/* 000360 0x809A4760 AC8E0190 */ sw	$t6, 0X190($a0)
/* 000361 0x809A4764 A48001B0 */ sh	$zero, 0X1B0($a0)
/* 000362 0x809A4768 01284821 */ addu	$t1, $t1, $t0
/* 000363 0x809A476C 85294CFC */ lh	$t1, %lo(D_809A4CFC)($t1)
/* 000364 0x809A4770 A48901B2 */ sh	$t1, 0X1B2($a0)
/* 000365 0x809A4774 03E00008 */ jr	$ra
/* 000366 0x809A4778 00000000 */ nop

glabel func_809A477C
/* 000367 0x809A477C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000368 0x809A4780 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000369 0x809A4784 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000370 0x809A4788 848201B2 */ lh	$v0, 0X1B2($a0)
/* 000371 0x809A478C 240F1770 */ li	$t7, 0X1770
/* 000372 0x809A4790 18400002 */ blez	$v0, .L809A479C
/* 000373 0x809A4794 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000374 0x809A4798 A48E01B2 */ sh	$t6, 0X1B2($a0)
.L809A479C:
/* 000375 0x809A479C 848201B0 */ lh	$v0, 0X1B0($a0)
/* 000376 0x809A47A0 28411770 */ slti	$at, $v0, 0X1770
/* 000377 0x809A47A4 14200006 */ bnez	$at, .L809A47C0
/* 000378 0x809A47A8 00000000 */ nop
/* 000379 0x809A47AC A48F01B0 */ sh	$t7, 0X1B0($a0)
/* 000380 0x809A47B0 0C269223 */ jal	func_809A488C
/* 000381 0x809A47B4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000382 0x809A47B8 10000007 */ b	.L809A47D8
/* 000383 0x809A47BC 8FA40018 */ lw	$a0, 0X18($sp)
.L809A47C0:
/* 000384 0x809A47C0 1C400004 */ bgtz	$v0, .L809A47D4
/* 000385 0x809A47C4 245900C8 */ addiu	$t9, $v0, 0XC8
/* 000386 0x809A47C8 849801B2 */ lh	$t8, 0X1B2($a0)
/* 000387 0x809A47CC 5F000003 */ bgtzl	$t8, .L809A47DC
/* 000388 0x809A47D0 908801B4 */ lbu	$t0, 0X1B4($a0)
.L809A47D4:
/* 000389 0x809A47D4 A49901B0 */ sh	$t9, 0X1B0($a0)
.L809A47D8:
/* 000390 0x809A47D8 908801B4 */ lbu	$t0, 0X1B4($a0)
.L809A47DC:
/* 000391 0x809A47DC 55000006 */ bnezl	$t0, .L809A47F8
/* 000392 0x809A47E0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000393 0x809A47E4 848900BE */ lh	$t1, 0XBE($a0)
/* 000394 0x809A47E8 848A01B0 */ lh	$t2, 0X1B0($a0)
/* 000395 0x809A47EC 012A5821 */ addu	$t3, $t1, $t2
/* 000396 0x809A47F0 A48B00BE */ sh	$t3, 0XBE($a0)
/* 000397 0x809A47F4 8FBF0014 */ lw	$ra, 0X14($sp)
.L809A47F8:
/* 000398 0x809A47F8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000399 0x809A47FC 03E00008 */ jr	$ra
/* 000400 0x809A4800 00000000 */ nop

glabel func_809A4804
/* 000401 0x809A4804 3C0E809A */ lui	$t6, %hi(func_809A481C)
/* 000402 0x809A4808 25CE481C */ addiu	$t6, $t6, %lo(func_809A481C)
/* 000403 0x809A480C AC8E0190 */ sw	$t6, 0X190($a0)
/* 000404 0x809A4810 A48001B0 */ sh	$zero, 0X1B0($a0)
/* 000405 0x809A4814 03E00008 */ jr	$ra
/* 000406 0x809A4818 00000000 */ nop

glabel func_809A481C
/* 000407 0x809A481C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000408 0x809A4820 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000409 0x809A4824 848201B0 */ lh	$v0, 0X1B0($a0)
/* 000410 0x809A4828 240E1770 */ li	$t6, 0X1770
/* 000411 0x809A482C 28411770 */ slti	$at, $v0, 0X1770
/* 000412 0x809A4830 14200006 */ bnez	$at, .L809A484C
/* 000413 0x809A4834 00000000 */ nop
/* 000414 0x809A4838 A48E01B0 */ sh	$t6, 0X1B0($a0)
/* 000415 0x809A483C 0C269223 */ jal	func_809A488C
/* 000416 0x809A4840 AFA40018 */ sw	$a0, 0X18($sp)
/* 000417 0x809A4844 1000000A */ b	.L809A4870
/* 000418 0x809A4848 8FA40018 */ lw	$a0, 0X18($sp)
.L809A484C:
/* 000419 0x809A484C 5C400007 */ bgtzl	$v0, .L809A486C
/* 000420 0x809A4850 244F00C8 */ addiu	$t7, $v0, 0XC8
/* 000421 0x809A4854 0C2690FB */ jal	func_809A43EC
/* 000422 0x809A4858 AFA40018 */ sw	$a0, 0X18($sp)
/* 000423 0x809A485C 10400004 */ beqz	$v0, .L809A4870
/* 000424 0x809A4860 8FA40018 */ lw	$a0, 0X18($sp)
/* 000425 0x809A4864 848201B0 */ lh	$v0, 0X1B0($a0)
/* 000426 0x809A4868 244F00C8 */ addiu	$t7, $v0, 0XC8
.L809A486C:
/* 000427 0x809A486C A48F01B0 */ sh	$t7, 0X1B0($a0)
.L809A4870:
/* 000428 0x809A4870 849800BE */ lh	$t8, 0XBE($a0)
/* 000429 0x809A4874 849901B0 */ lh	$t9, 0X1B0($a0)
/* 000430 0x809A4878 03194021 */ addu	$t0, $t8, $t9
/* 000431 0x809A487C A48800BE */ sh	$t0, 0XBE($a0)
/* 000432 0x809A4880 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000433 0x809A4884 03E00008 */ jr	$ra
/* 000434 0x809A4888 27BD0018 */ addiu	$sp, $sp, 0X18

glabel func_809A488C
/* 000435 0x809A488C 3C013F80 */ lui	$at, 0x3F80
/* 000436 0x809A4890 44812000 */ mtc1	$at, $f4
/* 000437 0x809A4894 3C0E809A */ lui	$t6, %hi(func_809A48AC)
/* 000438 0x809A4898 25CE48AC */ addiu	$t6, $t6, %lo(func_809A48AC)
/* 000439 0x809A489C AC8E0190 */ sw	$t6, 0X190($a0)
/* 000440 0x809A48A0 E4840070 */ swc1	$f4, 0X70($a0)
/* 000441 0x809A48A4 03E00008 */ jr	$ra
/* 000442 0x809A48A8 00000000 */ nop

glabel func_809A48AC
/* 000443 0x809A48AC 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000444 0x809A48B0 AFB00020 */ sw	$s0, 0X20($sp)
/* 000445 0x809A48B4 00808025 */ move	$s0, $a0
/* 000446 0x809A48B8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000447 0x809A48BC AFA5003C */ sw	$a1, 0X3C($sp)
/* 000448 0x809A48C0 8E020194 */ lw	$v0, 0X194($s0)
/* 000449 0x809A48C4 24010001 */ li	$at, 0X1
/* 000450 0x809A48C8 26040070 */ addiu	$a0, $s0, 0X70
/* 000451 0x809A48CC 384E0001 */ xori	$t6, $v0, 0X1
/* 000452 0x809A48D0 AFAE0030 */ sw	$t6, 0X30($sp)
/* 000453 0x809A48D4 920F01B4 */ lbu	$t7, 0X1B4($s0)
/* 000454 0x809A48D8 51E0000A */ beqzl	$t7, .L809A4904
/* 000455 0x809A48DC 8618001C */ lh	$t8, 0X1C($s0)
/* 000456 0x809A48E0 14410007 */ bne	$v0, $at, .L809A4900
/* 000457 0x809A48E4 3C054000 */ lui	$a1, 0x4000
/* 000458 0x809A48E8 3C063ECC */ lui	$a2, 0x3ECC
/* 000459 0x809A48EC 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000460 0x809A48F0 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000461 0x809A48F4 26040070 */ addiu	$a0, $s0, 0X70
/* 000462 0x809A48F8 1000000D */ b	.L809A4930
/* 000463 0x809A48FC 00000000 */ nop
.L809A4900:
/* 000464 0x809A4900 8618001C */ lh	$t8, 0X1C($s0)
.L809A4904:
/* 000465 0x809A4904 3C05809A */ lui	$a1, %hi(D_809A4CDC)
/* 000466 0x809A4908 3C063FC0 */ lui	$a2, 0x3FC0
/* 000467 0x809A490C 0018CA03 */ sra	$t9, $t8, 8
/* 000468 0x809A4910 33280007 */ andi	$t0, $t9, 0X7
/* 000469 0x809A4914 00084880 */ sll	$t1, $t0, 2
/* 000470 0x809A4918 00A92821 */ addu	$a1, $a1, $t1
/* 000471 0x809A491C 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000472 0x809A4920 8CA54CDC */ lw	$a1, %lo(D_809A4CDC)($a1)
/* 000473 0x809A4924 860A00BE */ lh	$t2, 0XBE($s0)
/* 000474 0x809A4928 254B1770 */ addiu	$t3, $t2, 0X1770
/* 000475 0x809A492C A60B00BE */ sh	$t3, 0XBE($s0)
.L809A4930:
/* 000476 0x809A4930 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000477 0x809A4934 02002025 */ move	$a0, $s0
/* 000478 0x809A4938 860C001C */ lh	$t4, 0X1C($s0)
/* 000479 0x809A493C 3C01809A */ lui	$at, %hi(D_809A4D0C)
/* 000480 0x809A4940 44805000 */ mtc1	$zero, $f10
/* 000481 0x809A4944 000C6B83 */ sra	$t5, $t4, 14
/* 000482 0x809A4948 31AE0001 */ andi	$t6, $t5, 0X1
/* 000483 0x809A494C 000E7880 */ sll	$t7, $t6, 2
/* 000484 0x809A4950 002F0821 */ addu	$at, $at, $t7
/* 000485 0x809A4954 C4244D0C */ lwc1	$f4, %lo(D_809A4D0C)($at)
/* 000486 0x809A4958 3C0141F0 */ lui	$at, 0x41F0
/* 000487 0x809A495C 44813000 */ mtc1	$at, $f6
/* 000488 0x809A4960 24180081 */ li	$t8, 0X81
/* 000489 0x809A4964 AFB80014 */ sw	$t8, 0X14($sp)
/* 000490 0x809A4968 46062202 */ mul.s	$f8, $f4, $f6
/* 000491 0x809A496C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000492 0x809A4970 02002825 */ move	$a1, $s0
/* 000493 0x809A4974 3C064120 */ lui	$a2, 0x4120
/* 000494 0x809A4978 E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000495 0x809A497C 44074000 */ mfc1	$a3, $f8
/* 000496 0x809A4980 0C02DE2E */ jal	func_800B78B8
/* 000497 0x809A4984 00000000 */ nop
/* 000498 0x809A4988 96190090 */ lhu	$t9, 0X90($s0)
/* 000499 0x809A498C 8FAE0030 */ lw	$t6, 0X30($sp)
/* 000500 0x809A4990 33280008 */ andi	$t0, $t9, 0X8
/* 000501 0x809A4994 1100001B */ beqz	$t0, .L809A4A04
/* 000502 0x809A4998 000E7880 */ sll	$t7, $t6, 2
/* 000503 0x809A499C 8E090194 */ lw	$t1, 0X194($s0)
/* 000504 0x809A49A0 26040024 */ addiu	$a0, $s0, 0X24
/* 000505 0x809A49A4 00095080 */ sll	$t2, $t1, 2
/* 000506 0x809A49A8 01495023 */ subu	$t2, $t2, $t1
/* 000507 0x809A49AC 000A5080 */ sll	$t2, $t2, 2
/* 000508 0x809A49B0 020A2821 */ addu	$a1, $s0, $t2
/* 000509 0x809A49B4 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000510 0x809A49B8 24A50198 */ addiu	$a1, $a1, 0X198
/* 000511 0x809A49BC 920C01B4 */ lbu	$t4, 0X1B4($s0)
/* 000512 0x809A49C0 A6020032 */ sh	$v0, 0X32($s0)
/* 000513 0x809A49C4 8FAB0030 */ lw	$t3, 0X30($sp)
/* 000514 0x809A49C8 11800007 */ beqz	$t4, .L809A49E8
/* 000515 0x809A49CC AE0B0194 */ sw	$t3, 0X194($s0)
/* 000516 0x809A49D0 15600005 */ bnez	$t3, .L809A49E8
/* 000517 0x809A49D4 00000000 */ nop
/* 000518 0x809A49D8 0C269201 */ jal	func_809A4804
/* 000519 0x809A49DC 02002025 */ move	$a0, $s0
/* 000520 0x809A49E0 10000004 */ b	.L809A49F4
/* 000521 0x809A49E4 02002025 */ move	$a0, $s0
.L809A49E8:
/* 000522 0x809A49E8 0C2691D1 */ jal	func_809A4744
/* 000523 0x809A49EC 02002025 */ move	$a0, $s0
/* 000524 0x809A49F0 02002025 */ move	$a0, $s0
.L809A49F4:
/* 000525 0x809A49F4 0C02E3B2 */ jal	func_800B8EC8
/* 000526 0x809A49F8 2405287D */ li	$a1, 0X287D
/* 000527 0x809A49FC 1000002F */ b	.L809A4ABC
/* 000528 0x809A4A00 8FBF0024 */ lw	$ra, 0X24($sp)
.L809A4A04:
/* 000529 0x809A4A04 01EE7823 */ subu	$t7, $t7, $t6
/* 000530 0x809A4A08 000F7880 */ sll	$t7, $t7, 2
/* 000531 0x809A4A0C 020F2821 */ addu	$a1, $s0, $t7
/* 000532 0x809A4A10 26040024 */ addiu	$a0, $s0, 0X24
/* 000533 0x809A4A14 AFA40028 */ sw	$a0, 0X28($sp)
/* 000534 0x809A4A18 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000535 0x809A4A1C 24A50198 */ addiu	$a1, $a1, 0X198
/* 000536 0x809A4A20 86180032 */ lh	$t8, 0X32($s0)
/* 000537 0x809A4A24 8FA40028 */ lw	$a0, 0X28($sp)
/* 000538 0x809A4A28 00581823 */ subu	$v1, $v0, $t8
/* 000539 0x809A4A2C 00031C00 */ sll	$v1, $v1, 16
/* 000540 0x809A4A30 00031C03 */ sra	$v1, $v1, 16
/* 000541 0x809A4A34 04630005 */ bgezl	$v1, .L809A4A4C
/* 000542 0x809A4A38 28614001 */ slti	$at, $v1, 0X4001
/* 000543 0x809A4A3C 00031823 */ negu	$v1, $v1
/* 000544 0x809A4A40 00031C00 */ sll	$v1, $v1, 16
/* 000545 0x809A4A44 00031C03 */ sra	$v1, $v1, 16
/* 000546 0x809A4A48 28614001 */ slti	$at, $v1, 0X4001
.L809A4A4C:
/* 000547 0x809A4A4C 10200003 */ beqz	$at, .L809A4A5C
/* 000548 0x809A4A50 24018000 */ li	$at, -0X8000
/* 000549 0x809A4A54 54610019 */ bnel	$v1, $at, .L809A4ABC
/* 000550 0x809A4A58 8FBF0024 */ lw	$ra, 0X24($sp)
.L809A4A5C:
/* 000551 0x809A4A5C 8E190194 */ lw	$t9, 0X194($s0)
/* 000552 0x809A4A60 00194080 */ sll	$t0, $t9, 2
/* 000553 0x809A4A64 01194023 */ subu	$t0, $t0, $t9
/* 000554 0x809A4A68 00084080 */ sll	$t0, $t0, 2
/* 000555 0x809A4A6C 02082821 */ addu	$a1, $s0, $t0
/* 000556 0x809A4A70 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 000557 0x809A4A74 24A50198 */ addiu	$a1, $a1, 0X198
/* 000558 0x809A4A78 920A01B4 */ lbu	$t2, 0X1B4($s0)
/* 000559 0x809A4A7C A6020032 */ sh	$v0, 0X32($s0)
/* 000560 0x809A4A80 8FA90030 */ lw	$t1, 0X30($sp)
/* 000561 0x809A4A84 11400007 */ beqz	$t2, .L809A4AA4
/* 000562 0x809A4A88 AE090194 */ sw	$t1, 0X194($s0)
/* 000563 0x809A4A8C 15200005 */ bnez	$t1, .L809A4AA4
/* 000564 0x809A4A90 00000000 */ nop
/* 000565 0x809A4A94 0C269201 */ jal	func_809A4804
/* 000566 0x809A4A98 02002025 */ move	$a0, $s0
/* 000567 0x809A4A9C 10000004 */ b	.L809A4AB0
/* 000568 0x809A4AA0 02002025 */ move	$a0, $s0
.L809A4AA4:
/* 000569 0x809A4AA4 0C2691D1 */ jal	func_809A4744
/* 000570 0x809A4AA8 02002025 */ move	$a0, $s0
/* 000571 0x809A4AAC 02002025 */ move	$a0, $s0
.L809A4AB0:
/* 000572 0x809A4AB0 0C02E3B2 */ jal	func_800B8EC8
/* 000573 0x809A4AB4 2405287D */ li	$a1, 0X287D
/* 000574 0x809A4AB8 8FBF0024 */ lw	$ra, 0X24($sp)
.L809A4ABC:
/* 000575 0x809A4ABC 8FB00020 */ lw	$s0, 0X20($sp)
/* 000576 0x809A4AC0 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000577 0x809A4AC4 03E00008 */ jr	$ra
/* 000578 0x809A4AC8 00000000 */ nop

glabel ObjToge_Update
/* 000579 0x809A4ACC 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000580 0x809A4AD0 AFB20028 */ sw	$s2, 0X28($sp)
/* 000581 0x809A4AD4 AFB00020 */ sw	$s0, 0X20($sp)
/* 000582 0x809A4AD8 00808025 */ move	$s0, $a0
/* 000583 0x809A4ADC 00A09025 */ move	$s2, $a1
/* 000584 0x809A4AE0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000585 0x809A4AE4 AFB10024 */ sw	$s1, 0X24($sp)
/* 000586 0x809A4AE8 920E0155 */ lbu	$t6, 0X155($s0)
/* 000587 0x809A4AEC 31CF0002 */ andi	$t7, $t6, 0X2
/* 000588 0x809A4AF0 51E00015 */ beqzl	$t7, .L809A4B48
/* 000589 0x809A4AF4 920C011C */ lbu	$t4, 0X11C($s0)
/* 000590 0x809A4AF8 8E180180 */ lw	$t8, 0X180($s0)
/* 000591 0x809A4AFC 02002025 */ move	$a0, $s0
/* 000592 0x809A4B00 8F190000 */ lw	$t9, 0X0($t8)
/* 000593 0x809A4B04 33281000 */ andi	$t0, $t9, 0X1000
/* 000594 0x809A4B08 5100000B */ beqzl	$t0, .L809A4B38
/* 000595 0x809A4B0C 26110144 */ addiu	$s1, $s0, 0X144
/* 000596 0x809A4B10 0C2690EA */ jal	func_809A43A8
/* 000597 0x809A4B14 02402825 */ move	$a1, $s2
/* 000598 0x809A4B18 240900FA */ li	$t1, 0XFA
/* 000599 0x809A4B1C AFA90010 */ sw	$t1, 0X10($sp)
/* 000600 0x809A4B20 02002025 */ move	$a0, $s0
/* 000601 0x809A4B24 00002825 */ move	$a1, $zero
/* 000602 0x809A4B28 240600FA */ li	$a2, 0XFA
/* 000603 0x809A4B2C 0C02F2DC */ jal	func_800BCB70
/* 000604 0x809A4B30 00003825 */ move	$a3, $zero
/* 000605 0x809A4B34 26110144 */ addiu	$s1, $s0, 0X144
.L809A4B38:
/* 000606 0x809A4B38 922A0011 */ lbu	$t2, 0X11($s1)
/* 000607 0x809A4B3C 314BFFFD */ andi	$t3, $t2, 0XFFFD
/* 000608 0x809A4B40 A22B0011 */ sb	$t3, 0X11($s1)
/* 000609 0x809A4B44 920C011C */ lbu	$t4, 0X11C($s0)
.L809A4B48:
/* 000610 0x809A4B48 55800024 */ bnezl	$t4, .L809A4BDC
/* 000611 0x809A4B4C 8E180004 */ lw	$t8, 0X4($s0)
/* 000612 0x809A4B50 920D0157 */ lbu	$t5, 0X157($s0)
/* 000613 0x809A4B54 26110144 */ addiu	$s1, $s0, 0X144
/* 000614 0x809A4B58 3C0140C0 */ lui	$at, 0x40C0
/* 000615 0x809A4B5C 31AE0001 */ andi	$t6, $t5, 0X1
/* 000616 0x809A4B60 11C00009 */ beqz	$t6, .L809A4B88
/* 000617 0x809A4B64 02402025 */ move	$a0, $s2
/* 000618 0x809A4B68 44810000 */ mtc1	$at, $f0
/* 000619 0x809A4B6C 86070092 */ lh	$a3, 0X92($s0)
/* 000620 0x809A4B70 240F0004 */ li	$t7, 0X4
/* 000621 0x809A4B74 44060000 */ mfc1	$a2, $f0
/* 000622 0x809A4B78 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000623 0x809A4B7C 02002825 */ move	$a1, $s0
/* 000624 0x809A4B80 0C02E375 */ jal	func_800B8DD4
/* 000625 0x809A4B84 E7A00010 */ swc1	$f0, 0X10($sp)
.L809A4B88:
/* 000626 0x809A4B88 8E190190 */ lw	$t9, 0X190($s0)
/* 000627 0x809A4B8C 02002025 */ move	$a0, $s0
/* 000628 0x809A4B90 02402825 */ move	$a1, $s2
/* 000629 0x809A4B94 0320F809 */ jalr	$t9
/* 000630 0x809A4B98 00000000 */ nop
/* 000631 0x809A4B9C 02002025 */ move	$a0, $s0
/* 000632 0x809A4BA0 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000633 0x809A4BA4 02202825 */ move	$a1, $s1
/* 000634 0x809A4BA8 3C01447A */ lui	$at, 0x447A
/* 000635 0x809A4BAC 44813000 */ mtc1	$at, $f6
/* 000636 0x809A4BB0 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000637 0x809A4BB4 3C010001 */ lui	$at, 0x0001
/* 000638 0x809A4BB8 34218884 */ ori	$at, $at, 0X8884
/* 000639 0x809A4BBC 4606203C */ c.lt.s	$f4, $f6
/* 000640 0x809A4BC0 02412821 */ addu	$a1, $s2, $at
/* 000641 0x809A4BC4 02402025 */ move	$a0, $s2
/* 000642 0x809A4BC8 45020004 */ bc1fl .L809A4BDC
/* 000643 0x809A4BCC 8E180004 */ lw	$t8, 0X4($s0)
/* 000644 0x809A4BD0 0C0389D0 */ jal	Collision_AddAC
/* 000645 0x809A4BD4 02203025 */ move	$a2, $s1
/* 000646 0x809A4BD8 8E180004 */ lw	$t8, 0X4($s0)
.L809A4BDC:
/* 000647 0x809A4BDC 3C014396 */ lui	$at, 0x4396
/* 000648 0x809A4BE0 02402025 */ move	$a0, $s2
/* 000649 0x809A4BE4 33080040 */ andi	$t0, $t8, 0X40
/* 000650 0x809A4BE8 15000007 */ bnez	$t0, .L809A4C08
/* 000651 0x809A4BEC 26060144 */ addiu	$a2, $s0, 0X144
/* 000652 0x809A4BF0 C6080098 */ lwc1	$f8, 0X98($s0)
/* 000653 0x809A4BF4 44815000 */ mtc1	$at, $f10
/* 000654 0x809A4BF8 00000000 */ nop
/* 000655 0x809A4BFC 460A403C */ c.lt.s	$f8, $f10
/* 000656 0x809A4C00 00000000 */ nop
/* 000657 0x809A4C04 45000006 */ bc1f .L809A4C20
.L809A4C08:
/* 000658 0x809A4C08 3C010001 */ lui	$at, 0x0001
/* 000659 0x809A4C0C 34218884 */ ori	$at, $at, 0X8884
/* 000660 0x809A4C10 0C038A4A */ jal	Collision_AddOT
/* 000661 0x809A4C14 02412821 */ addu	$a1, $s2, $at
/* 000662 0x809A4C18 10000008 */ b	.L809A4C3C
/* 000663 0x809A4C1C 8FBF002C */ lw	$ra, 0X2C($sp)
.L809A4C20:
/* 000664 0x809A4C20 92090156 */ lbu	$t1, 0X156($s0)
/* 000665 0x809A4C24 920B0157 */ lbu	$t3, 0X157($s0)
/* 000666 0x809A4C28 312AFFFD */ andi	$t2, $t1, 0XFFFD
/* 000667 0x809A4C2C 316CFFFE */ andi	$t4, $t3, 0XFFFE
/* 000668 0x809A4C30 A20A0156 */ sb	$t2, 0X156($s0)
/* 000669 0x809A4C34 A20C0157 */ sb	$t4, 0X157($s0)
/* 000670 0x809A4C38 8FBF002C */ lw	$ra, 0X2C($sp)
.L809A4C3C:
/* 000671 0x809A4C3C 8FB00020 */ lw	$s0, 0X20($sp)
/* 000672 0x809A4C40 8FB10024 */ lw	$s1, 0X24($sp)
/* 000673 0x809A4C44 8FB20028 */ lw	$s2, 0X28($sp)
/* 000674 0x809A4C48 03E00008 */ jr	$ra
/* 000675 0x809A4C4C 27BD0030 */ addiu	$sp, $sp, 0X30

glabel ObjToge_Draw
/* 000676 0x809A4C50 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000677 0x809A4C54 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000678 0x809A4C58 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000679 0x809A4C5C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000680 0x809A4C60 0C02E014 */ jal	func_800B8050
/* 000681 0x809A4C64 24060001 */ li	$a2, 0X1
/* 000682 0x809A4C68 3C050600 */ lui	$a1, 0x0600
/* 000683 0x809A4C6C 24A51400 */ addiu	$a1, $a1, 0X1400
/* 000684 0x809A4C70 0C02F7F0 */ jal	func_800BDFC0
/* 000685 0x809A4C74 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000686 0x809A4C78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000687 0x809A4C7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000688 0x809A4C80 03E00008 */ jr	$ra
/* 000689 0x809A4C84 00000000 */ nop
/* 000690 0x809A4C88 00000000 */ nop
/* 000691 0x809A4C8C 00000000 */ nop
