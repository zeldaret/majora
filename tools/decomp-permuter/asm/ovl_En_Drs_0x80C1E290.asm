.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80C1E290
/* 000000 0x80C1E290 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000001 0x80C1E294 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80C1E298 AFA50024 */ sw	$a1, 0X24($sp)
/* 000003 0x80C1E29C 2486018C */ addiu	$a2, $a0, 0X18C
/* 000004 0x80C1E2A0 00C02825 */ move	$a1, $a2
/* 000005 0x80C1E2A4 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000006 0x80C1E2A8 AFA6001C */ sw	$a2, 0X1C($sp)
/* 000007 0x80C1E2AC 8FA40024 */ lw	$a0, 0X24($sp)
/* 000008 0x80C1E2B0 3C010001 */ lui	$at, 0x0001
/* 000009 0x80C1E2B4 34218884 */ ori	$at, $at, 0X8884
/* 000010 0x80C1E2B8 8FA6001C */ lw	$a2, 0X1C($sp)
/* 000011 0x80C1E2BC 0C038A4A */ jal	Collision_AddOT
/* 000012 0x80C1E2C0 00812821 */ addu	$a1, $a0, $at
/* 000013 0x80C1E2C4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000014 0x80C1E2C8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000015 0x80C1E2CC 03E00008 */ jr	$ra
/* 000016 0x80C1E2D0 00000000 */ nop

glabel func_80C1E2D4
/* 000017 0x80C1E2D4 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000018 0x80C1E2D8 AFB00028 */ sw	$s0, 0X28($sp)
/* 000019 0x80C1E2DC 00808025 */ move	$s0, $a0
/* 000020 0x80C1E2E0 AFBF002C */ sw	$ra, 0X2C($sp)
/* 000021 0x80C1E2E4 AFA50044 */ sw	$a1, 0X44($sp)
/* 000022 0x80C1E2E8 82060208 */ lb	$a2, 0X208($s0)
/* 000023 0x80C1E2EC 8FA50044 */ lw	$a1, 0X44($sp)
/* 000024 0x80C1E2F0 04C00035 */ bltz	$a2, .L80C1E3C8
/* 000025 0x80C1E2F4 00062600 */ sll	$a0, $a2, 24
/* 000026 0x80C1E2F8 0C04F637 */ jal	func_8013D8DC
/* 000027 0x80C1E2FC 00042603 */ sra	$a0, $a0, 24
/* 000028 0x80C1E300 50400032 */ beqzl	$v0, .L80C1E3CC
/* 000029 0x80C1E304 8FBF002C */ lw	$ra, 0X2C($sp)
/* 000030 0x80C1E308 44800000 */ mtc1	$zero, $f0
/* 000031 0x80C1E30C 260400BC */ addiu	$a0, $s0, 0XBC
/* 000032 0x80C1E310 00003025 */ move	$a2, $zero
/* 000033 0x80C1E314 44050000 */ mfc1	$a1, $f0
/* 000034 0x80C1E318 44070000 */ mfc1	$a3, $f0
/* 000035 0x80C1E31C 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000036 0x80C1E320 00000000 */ nop
/* 000037 0x80C1E324 26050144 */ addiu	$a1, $s0, 0X144
/* 000038 0x80C1E328 3C060600 */ lui	$a2, 0x0600
/* 000039 0x80C1E32C 260E01D8 */ addiu	$t6, $s0, 0X1D8
/* 000040 0x80C1E330 260F01F0 */ addiu	$t7, $s0, 0X1F0
/* 000041 0x80C1E334 24180004 */ li	$t8, 0X4
/* 000042 0x80C1E338 AFB80018 */ sw	$t8, 0X18($sp)
/* 000043 0x80C1E33C AFAF0014 */ sw	$t7, 0X14($sp)
/* 000044 0x80C1E340 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000045 0x80C1E344 24C65A78 */ addiu	$a2, $a2, 0X5A78
/* 000046 0x80C1E348 AFA50030 */ sw	$a1, 0X30($sp)
/* 000047 0x80C1E34C 8FA40044 */ lw	$a0, 0X44($sp)
/* 000048 0x80C1E350 0C04DACC */ jal	SkelAnime_InitSV
/* 000049 0x80C1E354 00003825 */ move	$a3, $zero
/* 000050 0x80C1E358 3C0580C2 */ lui	$a1, %hi(D_80C1E618)
/* 000051 0x80C1E35C 24A5E618 */ addiu	$a1, $a1, %lo(D_80C1E618)
/* 000052 0x80C1E360 8FA40030 */ lw	$a0, 0X30($sp)
/* 000053 0x80C1E364 0C04EF1B */ jal	func_8013BC6C
/* 000054 0x80C1E368 00003025 */ move	$a2, $zero
/* 000055 0x80C1E36C 3C0780C2 */ lui	$a3, %hi(D_80C1E5E0)
/* 000056 0x80C1E370 24E7E5E0 */ addiu	$a3, $a3, %lo(D_80C1E5E0)
/* 000057 0x80C1E374 8FA40044 */ lw	$a0, 0X44($sp)
/* 000058 0x80C1E378 2605018C */ addiu	$a1, $s0, 0X18C
/* 000059 0x80C1E37C 0C0384DD */ jal	Collision_InitCylinder
/* 000060 0x80C1E380 02003025 */ move	$a2, $s0
/* 000061 0x80C1E384 0C0380E8 */ jal	func_800E03A0
/* 000062 0x80C1E388 24040016 */ li	$a0, 0X16
/* 000063 0x80C1E38C 3C0680C2 */ lui	$a2, %hi(D_80C1E60C)
/* 000064 0x80C1E390 24C6E60C */ addiu	$a2, $a2, %lo(D_80C1E60C)
/* 000065 0x80C1E394 260400A0 */ addiu	$a0, $s0, 0XA0
/* 000066 0x80C1E398 0C039D57 */ jal	func_800E755C
/* 000067 0x80C1E39C 00402825 */ move	$a1, $v0
/* 000068 0x80C1E3A0 3C053C23 */ lui	$a1, 0x3C23
/* 000069 0x80C1E3A4 34A5D70A */ ori	$a1, $a1, 0XD70A
/* 000070 0x80C1E3A8 0C02D9F8 */ jal	Actor_SetScale
/* 000071 0x80C1E3AC 02002025 */ move	$a0, $s0
/* 000072 0x80C1E3B0 3C1980C2 */ lui	$t9, %hi(func_80C1E568)
/* 000073 0x80C1E3B4 3C0880C2 */ lui	$t0, %hi(func_80C1E3DC)
/* 000074 0x80C1E3B8 2739E568 */ addiu	$t9, $t9, %lo(func_80C1E568)
/* 000075 0x80C1E3BC 2508E3DC */ addiu	$t0, $t0, %lo(func_80C1E3DC)
/* 000076 0x80C1E3C0 AE19013C */ sw	$t9, 0X13C($s0)
/* 000077 0x80C1E3C4 AE080188 */ sw	$t0, 0X188($s0)
.L80C1E3C8:
/* 000078 0x80C1E3C8 8FBF002C */ lw	$ra, 0X2C($sp)
.L80C1E3CC:
/* 000079 0x80C1E3CC 8FB00028 */ lw	$s0, 0X28($sp)
/* 000080 0x80C1E3D0 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000081 0x80C1E3D4 03E00008 */ jr	$ra
/* 000082 0x80C1E3D8 00000000 */ nop

glabel func_80C1E3DC
/* 000083 0x80C1E3DC AFA40000 */ sw	$a0, 0X0($sp)
/* 000084 0x80C1E3E0 AFA50004 */ sw	$a1, 0X4($sp)
/* 000085 0x80C1E3E4 03E00008 */ jr	$ra
/* 000086 0x80C1E3E8 00000000 */ nop

glabel EnDrs_Init
/* 000087 0x80C1E3EC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000088 0x80C1E3F0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000089 0x80C1E3F4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000090 0x80C1E3F8 0C04F649 */ jal	func_8013D924
/* 000091 0x80C1E3FC 24040016 */ li	$a0, 0X16
/* 000092 0x80C1E400 8FA30018 */ lw	$v1, 0X18($sp)
/* 000093 0x80C1E404 3C0E80C2 */ lui	$t6, %hi(func_80C1E2D4)
/* 000094 0x80C1E408 25CEE2D4 */ addiu	$t6, $t6, %lo(func_80C1E2D4)
/* 000095 0x80C1E40C A0620208 */ sb	$v0, 0X208($v1)
/* 000096 0x80C1E410 AC6E0188 */ sw	$t6, 0X188($v1)
/* 000097 0x80C1E414 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000098 0x80C1E418 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000099 0x80C1E41C 03E00008 */ jr	$ra
/* 000100 0x80C1E420 00000000 */ nop

glabel EnDrs_Destroy
/* 000101 0x80C1E424 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000102 0x80C1E428 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000103 0x80C1E42C 00803025 */ move	$a2, $a0
/* 000104 0x80C1E430 00A03825 */ move	$a3, $a1
/* 000105 0x80C1E434 00E02025 */ move	$a0, $a3
/* 000106 0x80C1E438 0C03847B */ jal	Collision_FiniCylinder
/* 000107 0x80C1E43C 24C5018C */ addiu	$a1, $a2, 0X18C
/* 000108 0x80C1E440 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000109 0x80C1E444 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000110 0x80C1E448 03E00008 */ jr	$ra
/* 000111 0x80C1E44C 00000000 */ nop

glabel EnDrs_Update
/* 000112 0x80C1E450 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000113 0x80C1E454 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000114 0x80C1E458 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000115 0x80C1E45C 00803025 */ move	$a2, $a0
/* 000116 0x80C1E460 AFA60018 */ sw	$a2, 0X18($sp)
/* 000117 0x80C1E464 8CD90188 */ lw	$t9, 0X188($a2)
/* 000118 0x80C1E468 00C02025 */ move	$a0, $a2
/* 000119 0x80C1E46C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000120 0x80C1E470 0320F809 */ jalr	$t9
/* 000121 0x80C1E474 00000000 */ nop
/* 000122 0x80C1E478 8FA60018 */ lw	$a2, 0X18($sp)
/* 000123 0x80C1E47C 8CCE013C */ lw	$t6, 0X13C($a2)
/* 000124 0x80C1E480 24C40144 */ addiu	$a0, $a2, 0X144
/* 000125 0x80C1E484 51C00007 */ beqzl	$t6, .L80C1E4A4
/* 000126 0x80C1E488 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000127 0x80C1E48C 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000128 0x80C1E490 AFA60018 */ sw	$a2, 0X18($sp)
/* 000129 0x80C1E494 8FA40018 */ lw	$a0, 0X18($sp)
/* 000130 0x80C1E498 0C3078A4 */ jal	func_80C1E290
/* 000131 0x80C1E49C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000132 0x80C1E4A0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C1E4A4:
/* 000133 0x80C1E4A4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000134 0x80C1E4A8 03E00008 */ jr	$ra
/* 000135 0x80C1E4AC 00000000 */ nop

glabel func_80C1E4B0
/* 000136 0x80C1E4B0 AFA60008 */ sw	$a2, 0X8($sp)
/* 000137 0x80C1E4B4 8FA60010 */ lw	$a2, 0X10($sp)
/* 000138 0x80C1E4B8 AFA7000C */ sw	$a3, 0XC($sp)
/* 000139 0x80C1E4BC 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF4F)
/* 000140 0x80C1E4C0 91CE05BF */ lbu	$t6, %lo(gSaveContext + 0xF4F)($t6)
/* 000141 0x80C1E4C4 80C20208 */ lb	$v0, 0X208($a2)
/* 000142 0x80C1E4C8 80C3001E */ lb	$v1, 0X1E($a2)
/* 000143 0x80C1E4CC 31CF0002 */ andi	$t7, $t6, 0X2
/* 000144 0x80C1E4D0 15E00023 */ bnez	$t7, .L80C1E560
/* 000145 0x80C1E4D4 24010002 */ li	$at, 0X2
/* 000146 0x80C1E4D8 14A10021 */ bne	$a1, $at, .L80C1E560
/* 000147 0x80C1E4DC 3C08DB06 */ lui	$t0, 0xDB06
/* 000148 0x80C1E4E0 8C850000 */ lw	$a1, 0X0($a0)
/* 000149 0x80C1E4E4 35080018 */ ori	$t0, $t0, 0X18
/* 000150 0x80C1E4E8 24090044 */ li	$t1, 0X44
/* 000151 0x80C1E4EC 3C0A0001 */ lui	$t2, 0x0001
/* 000152 0x80C1E4F0 00490019 */ multu	$v0, $t1
/* 000153 0x80C1E4F4 8CA702B0 */ lw	$a3, 0X2B0($a1)
/* 000154 0x80C1E4F8 3C0FDE00 */ lui	$t7, 0xDE00
/* 000155 0x80C1E4FC 24F80008 */ addiu	$t8, $a3, 0X8
/* 000156 0x80C1E500 ACB802B0 */ sw	$t8, 0X2B0($a1)
/* 000157 0x80C1E504 ACE80000 */ sw	$t0, 0X0($a3)
/* 000158 0x80C1E508 0000C812 */ mflo	$t9
/* 000159 0x80C1E50C 00995821 */ addu	$t3, $a0, $t9
/* 000160 0x80C1E510 016A6021 */ addu	$t4, $t3, $t2
/* 000161 0x80C1E514 8D8D7D98 */ lw	$t5, 0X7D98($t4)
/* 000162 0x80C1E518 ACED0004 */ sw	$t5, 0X4($a3)
/* 000163 0x80C1E51C 8CA702B0 */ lw	$a3, 0X2B0($a1)
/* 000164 0x80C1E520 3C180600 */ lui	$t8, 0x0600
/* 000165 0x80C1E524 27180E70 */ addiu	$t8, $t8, 0XE70
/* 000166 0x80C1E528 24EE0008 */ addiu	$t6, $a3, 0X8
/* 000167 0x80C1E52C ACAE02B0 */ sw	$t6, 0X2B0($a1)
/* 000168 0x80C1E530 ACF80004 */ sw	$t8, 0X4($a3)
/* 000169 0x80C1E534 ACEF0000 */ sw	$t7, 0X0($a3)
/* 000170 0x80C1E538 00690019 */ multu	$v1, $t1
/* 000171 0x80C1E53C 8CA702B0 */ lw	$a3, 0X2B0($a1)
/* 000172 0x80C1E540 24F90008 */ addiu	$t9, $a3, 0X8
/* 000173 0x80C1E544 ACB902B0 */ sw	$t9, 0X2B0($a1)
/* 000174 0x80C1E548 ACE80000 */ sw	$t0, 0X0($a3)
/* 000175 0x80C1E54C 00005812 */ mflo	$t3
/* 000176 0x80C1E550 008B6021 */ addu	$t4, $a0, $t3
/* 000177 0x80C1E554 018A6821 */ addu	$t5, $t4, $t2
/* 000178 0x80C1E558 8DAE7D98 */ lw	$t6, 0X7D98($t5)
/* 000179 0x80C1E55C ACEE0004 */ sw	$t6, 0X4($a3)
.L80C1E560:
/* 000180 0x80C1E560 03E00008 */ jr	$ra
/* 000181 0x80C1E564 00000000 */ nop

glabel func_80C1E568
/* 000182 0x80C1E568 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000183 0x80C1E56C AFBF0024 */ sw	$ra, 0X24($sp)
/* 000184 0x80C1E570 AFA40028 */ sw	$a0, 0X28($sp)
/* 000185 0x80C1E574 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000186 0x80C1E578 8FAE002C */ lw	$t6, 0X2C($sp)
/* 000187 0x80C1E57C 0C04B16C */ jal	func_8012C5B0
/* 000188 0x80C1E580 8DC40000 */ lw	$a0, 0X0($t6)
/* 000189 0x80C1E584 8FA20028 */ lw	$v0, 0X28($sp)
/* 000190 0x80C1E588 3C0F80C2 */ lui	$t7, %hi(func_80C1E4B0)
/* 000191 0x80C1E58C 25EFE4B0 */ addiu	$t7, $t7, %lo(func_80C1E4B0)
/* 000192 0x80C1E590 8C450148 */ lw	$a1, 0X148($v0)
/* 000193 0x80C1E594 8C460164 */ lw	$a2, 0X164($v0)
/* 000194 0x80C1E598 90470146 */ lbu	$a3, 0X146($v0)
/* 000195 0x80C1E59C AFAF0014 */ sw	$t7, 0X14($sp)
/* 000196 0x80C1E5A0 AFA00010 */ sw	$zero, 0X10($sp)
/* 000197 0x80C1E5A4 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000198 0x80C1E5A8 0C04CFCA */ jal	SkelAnime_DrawSV
/* 000199 0x80C1E5AC AFA20018 */ sw	$v0, 0X18($sp)
/* 000200 0x80C1E5B0 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000201 0x80C1E5B4 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000202 0x80C1E5B8 03E00008 */ jr	$ra
/* 000203 0x80C1E5BC 00000000 */ nop
