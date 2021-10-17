.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnWarpUzu_Init
/* 000000 0x80A66180 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80A66184 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80A66188 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x80A6618C 00803025 */ move	$a2, $a0
/* 000004 0x80A66190 3C0580A6 */ lui	$a1, %hi(D_80A664EC)
/* 000005 0x80A66194 24A564EC */ addiu	$a1, $a1, %lo(D_80A664EC)
/* 000006 0x80A66198 00C02025 */ move	$a0, $a2
/* 000007 0x80A6619C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000008 0x80A661A0 AFA60018 */ sw	$a2, 0X18($sp)
/* 000009 0x80A661A4 8FA60018 */ lw	$a2, 0X18($sp)
/* 000010 0x80A661A8 3C0780A6 */ lui	$a3, %hi(D_80A664C0)
/* 000011 0x80A661AC 24E764C0 */ addiu	$a3, $a3, %lo(D_80A664C0)
/* 000012 0x80A661B0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000013 0x80A661B4 0C0384DD */ jal	Collision_InitCylinder
/* 000014 0x80A661B8 24C50148 */ addiu	$a1, $a2, 0X148
/* 000015 0x80A661BC 8FA40018 */ lw	$a0, 0X18($sp)
/* 000016 0x80A661C0 A080001F */ sb	$zero, 0X1F($a0)
/* 000017 0x80A661C4 0C299882 */ jal	func_80A66208
/* 000018 0x80A661C8 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000019 0x80A661CC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000020 0x80A661D0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000021 0x80A661D4 03E00008 */ jr	$ra
/* 000022 0x80A661D8 00000000 */ nop

glabel EnWarpUzu_Destroy
/* 000023 0x80A661DC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000024 0x80A661E0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000025 0x80A661E4 00803025 */ move	$a2, $a0
/* 000026 0x80A661E8 00A03825 */ move	$a3, $a1
/* 000027 0x80A661EC 00E02025 */ move	$a0, $a3
/* 000028 0x80A661F0 0C03847B */ jal	Collision_FiniCylinder
/* 000029 0x80A661F4 24C50148 */ addiu	$a1, $a2, 0X148
/* 000030 0x80A661F8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000031 0x80A661FC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000032 0x80A66200 03E00008 */ jr	$ra
/* 000033 0x80A66204 00000000 */ nop

glabel func_80A66208
/* 000034 0x80A66208 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000035 0x80A6620C AFB00018 */ sw	$s0, 0X18($sp)
/* 000036 0x80A66210 00808025 */ move	$s0, $a0
/* 000037 0x80A66214 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000038 0x80A66218 AFA50034 */ sw	$a1, 0X34($sp)
/* 000039 0x80A6621C A6000116 */ sh	$zero, 0X116($s0)
/* 000040 0x80A66220 860400BE */ lh	$a0, 0XBE($s0)
/* 000041 0x80A66224 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000042 0x80A66228 00002825 */ move	$a1, $zero
/* 000043 0x80A6622C 3C0480A6 */ lui	$a0, %hi(D_80A664FC)
/* 000044 0x80A66230 248464FC */ addiu	$a0, $a0, %lo(D_80A664FC)
/* 000045 0x80A66234 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000046 0x80A66238 27A50024 */ addiu	$a1, $sp, 0X24
/* 000047 0x80A6623C 26040024 */ addiu	$a0, $s0, 0X24
/* 000048 0x80A66240 27A50024 */ addiu	$a1, $sp, 0X24
/* 000049 0x80A66244 0C03FD6F */ jal	Math_Vec3f_Sum
/* 000050 0x80A66248 2606003C */ addiu	$a2, $s0, 0X3C
/* 000051 0x80A6624C 26040048 */ addiu	$a0, $s0, 0X48
/* 000052 0x80A66250 0C03FD4B */ jal	Math_Vec3s_Copy
/* 000053 0x80A66254 260500BC */ addiu	$a1, $s0, 0XBC
/* 000054 0x80A66258 3C0E80A6 */ lui	$t6, %hi(func_80A66278)
/* 000055 0x80A6625C 25CE6278 */ addiu	$t6, $t6, %lo(func_80A66278)
/* 000056 0x80A66260 AE0E0144 */ sw	$t6, 0X144($s0)
/* 000057 0x80A66264 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000058 0x80A66268 8FB00018 */ lw	$s0, 0X18($sp)
/* 000059 0x80A6626C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000060 0x80A66270 03E00008 */ jr	$ra
/* 000061 0x80A66274 00000000 */ nop

glabel func_80A66278
/* 000062 0x80A66278 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000063 0x80A6627C AFB00018 */ sw	$s0, 0X18($sp)
/* 000064 0x80A66280 00808025 */ move	$s0, $a0
/* 000065 0x80A66284 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000066 0x80A66288 8CAE1CCC */ lw	$t6, 0X1CCC($a1)
/* 000067 0x80A6628C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000068 0x80A66290 02002025 */ move	$a0, $s0
/* 000069 0x80A66294 0C02E134 */ jal	func_800B84D0
/* 000070 0x80A66298 AFAE0024 */ sw	$t6, 0X24($sp)
/* 000071 0x80A6629C 10400006 */ beqz	$v0, .L80A662B8
/* 000072 0x80A662A0 02002025 */ move	$a0, $s0
/* 000073 0x80A662A4 02002025 */ move	$a0, $s0
/* 000074 0x80A662A8 0C2998E1 */ jal	func_80A66384
/* 000075 0x80A662AC 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000076 0x80A662B0 10000030 */ b	.L80A66374
/* 000077 0x80A662B4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A662B8:
/* 000078 0x80A662B8 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000079 0x80A662BC 8FA50024 */ lw	$a1, 0X24($sp)
/* 000080 0x80A662C0 860F00BE */ lh	$t7, 0XBE($s0)
/* 000081 0x80A662C4 02002025 */ move	$a0, $s0
/* 000082 0x80A662C8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000083 0x80A662CC 004FC023 */ subu	$t8, $v0, $t7
/* 000084 0x80A662D0 0018CC00 */ sll	$t9, $t8, 16
/* 000085 0x80A662D4 00194403 */ sra	$t0, $t9, 16
/* 000086 0x80A662D8 05000008 */ bltz	$t0, .L80A662FC
/* 000087 0x80A662DC 00000000 */ nop
/* 000088 0x80A662E0 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000089 0x80A662E4 02002025 */ move	$a0, $s0
/* 000090 0x80A662E8 860300BE */ lh	$v1, 0XBE($s0)
/* 000091 0x80A662EC 00432023 */ subu	$a0, $v0, $v1
/* 000092 0x80A662F0 00042400 */ sll	$a0, $a0, 16
/* 000093 0x80A662F4 1000000A */ b	.L80A66320
/* 000094 0x80A662F8 00042403 */ sra	$a0, $a0, 16
.L80A662FC:
/* 000095 0x80A662FC 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000096 0x80A66300 8FA50024 */ lw	$a1, 0X24($sp)
/* 000097 0x80A66304 860300BE */ lh	$v1, 0XBE($s0)
/* 000098 0x80A66308 00432023 */ subu	$a0, $v0, $v1
/* 000099 0x80A6630C 00042400 */ sll	$a0, $a0, 16
/* 000100 0x80A66310 00042403 */ sra	$a0, $a0, 16
/* 000101 0x80A66314 00042023 */ negu	$a0, $a0
/* 000102 0x80A66318 00042400 */ sll	$a0, $a0, 16
/* 000103 0x80A6631C 00042403 */ sra	$a0, $a0, 16
.L80A66320:
/* 000104 0x80A66320 8FA90024 */ lw	$t1, 0X24($sp)
/* 000105 0x80A66324 28812AAB */ slti	$at, $a0, 0X2AAB
/* 000106 0x80A66328 852A00BE */ lh	$t2, 0XBE($t1)
/* 000107 0x80A6632C 01431023 */ subu	$v0, $t2, $v1
/* 000108 0x80A66330 00021400 */ sll	$v0, $v0, 16
/* 000109 0x80A66334 00021403 */ sra	$v0, $v0, 16
/* 000110 0x80A66338 04400004 */ bltz	$v0, .L80A6634C
/* 000111 0x80A6633C 00021823 */ negu	$v1, $v0
/* 000112 0x80A66340 00021C00 */ sll	$v1, $v0, 16
/* 000113 0x80A66344 10000003 */ b	.L80A66354
/* 000114 0x80A66348 00031C03 */ sra	$v1, $v1, 16
.L80A6634C:
/* 000115 0x80A6634C 00031C00 */ sll	$v1, $v1, 16
/* 000116 0x80A66350 00031C03 */ sra	$v1, $v1, 16
.L80A66354:
/* 000117 0x80A66354 14200006 */ bnez	$at, .L80A66370
/* 000118 0x80A66358 2861238E */ slti	$at, $v1, 0X238E
/* 000119 0x80A6635C 10200004 */ beqz	$at, .L80A66370
/* 000120 0x80A66360 02002025 */ move	$a0, $s0
/* 000121 0x80A66364 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000122 0x80A66368 0C02E185 */ jal	func_800B8614
/* 000123 0x80A6636C 3C06428C */ lui	$a2, 0x428C
.L80A66370:
/* 000124 0x80A66370 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A66374:
/* 000125 0x80A66374 8FB00018 */ lw	$s0, 0X18($sp)
/* 000126 0x80A66378 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000127 0x80A6637C 03E00008 */ jr	$ra
/* 000128 0x80A66380 00000000 */ nop

glabel func_80A66384
/* 000129 0x80A66384 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000130 0x80A66388 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000131 0x80A6638C AFA40018 */ sw	$a0, 0X18($sp)
/* 000132 0x80A66390 3C010002 */ lui	$at, 0x0002
/* 000133 0x80A66394 00250821 */ addu	$at, $at, $a1
/* 000134 0x80A66398 240E22A0 */ li	$t6, 0X22A0
/* 000135 0x80A6639C 3C0F0002 */ lui	$t7, 0x0002
/* 000136 0x80A663A0 A42E887A */ sh	$t6, -0X7786($at)
/* 000137 0x80A663A4 01E57821 */ addu	$t7, $t7, $a1
/* 000138 0x80A663A8 95EF887A */ lhu	$t7, -0X7786($t7)
/* 000139 0x80A663AC 3C01801F */ lui	$at, %hi(gSaveContext + 0x3CC4)
/* 000140 0x80A663B0 00A02025 */ move	$a0, $a1
/* 000141 0x80A663B4 0C05A7BF */ jal	func_80169EFC
/* 000142 0x80A663B8 A42F3334 */ sh	$t7, %lo(gSaveContext + 0x3CC4)($at)
/* 000143 0x80A663BC 8FA80018 */ lw	$t0, 0X18($sp)
/* 000144 0x80A663C0 2418FFFE */ li	$t8, -0X2
/* 000145 0x80A663C4 3C01801F */ lui	$at, %hi(gSaveContext + 0x3CB0)
/* 000146 0x80A663C8 3C1980A6 */ lui	$t9, %hi(func_80A663E8)
/* 000147 0x80A663CC AC383320 */ sw	$t8, %lo(gSaveContext + 0x3CB0)($at)
/* 000148 0x80A663D0 273963E8 */ addiu	$t9, $t9, %lo(func_80A663E8)
/* 000149 0x80A663D4 AD190144 */ sw	$t9, 0X144($t0)
/* 000150 0x80A663D8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000151 0x80A663DC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000152 0x80A663E0 03E00008 */ jr	$ra
/* 000153 0x80A663E4 00000000 */ nop

glabel func_80A663E8
/* 000154 0x80A663E8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000155 0x80A663EC AFA50004 */ sw	$a1, 0X4($sp)
/* 000156 0x80A663F0 03E00008 */ jr	$ra
/* 000157 0x80A663F4 00000000 */ nop

glabel EnWarpUzu_Update
/* 000158 0x80A663F8 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000159 0x80A663FC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000160 0x80A66400 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000161 0x80A66404 00803825 */ move	$a3, $a0
/* 000162 0x80A66408 3C01447A */ lui	$at, 0x447A
/* 000163 0x80A6640C 44812000 */ mtc1	$at, $f4
/* 000164 0x80A66410 00E02025 */ move	$a0, $a3
/* 000165 0x80A66414 E4E400FC */ swc1	$f4, 0XFC($a3)
/* 000166 0x80A66418 AFA70028 */ sw	$a3, 0X28($sp)
/* 000167 0x80A6641C 8CF90144 */ lw	$t9, 0X144($a3)
/* 000168 0x80A66420 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000169 0x80A66424 0320F809 */ jalr	$t9
/* 000170 0x80A66428 00000000 */ nop
/* 000171 0x80A6642C 8FA40028 */ lw	$a0, 0X28($sp)
/* 000172 0x80A66430 24860148 */ addiu	$a2, $a0, 0X148
/* 000173 0x80A66434 00C02825 */ move	$a1, $a2
/* 000174 0x80A66438 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000175 0x80A6643C AFA6001C */ sw	$a2, 0X1C($sp)
/* 000176 0x80A66440 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000177 0x80A66444 3C010001 */ lui	$at, 0x0001
/* 000178 0x80A66448 34218884 */ ori	$at, $at, 0X8884
/* 000179 0x80A6644C 8FA6001C */ lw	$a2, 0X1C($sp)
/* 000180 0x80A66450 0C038A4A */ jal	Collision_AddOT
/* 000181 0x80A66454 00812821 */ addu	$a1, $a0, $at
/* 000182 0x80A66458 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000183 0x80A6645C 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000184 0x80A66460 03E00008 */ jr	$ra
/* 000185 0x80A66464 00000000 */ nop

glabel EnWarpUzu_Draw
/* 000186 0x80A66468 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000187 0x80A6646C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000188 0x80A66470 AFA40018 */ sw	$a0, 0X18($sp)
/* 000189 0x80A66474 00A03025 */ move	$a2, $a1
/* 000190 0x80A66478 3C050600 */ lui	$a1, 0x0600
/* 000191 0x80A6647C 24A50EC0 */ addiu	$a1, $a1, 0XEC0
/* 000192 0x80A66480 0C02F7F0 */ jal	func_800BDFC0
/* 000193 0x80A66484 00C02025 */ move	$a0, $a2
/* 000194 0x80A66488 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000195 0x80A6648C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000196 0x80A66490 03E00008 */ jr	$ra
/* 000197 0x80A66494 00000000 */ nop
/* 000198 0x80A66498 00000000 */ nop
/* 000199 0x80A6649C 00000000 */ nop
