glabel EnRd_Init
/* 000000 0x808D3E20 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000001 0x808D3E24 AFB00038 */ sw	$s0, 0X38($sp)
/* 000002 0x808D3E28 00808025 */ move	$s0, $a0
/* 000003 0x808D3E2C AFBF003C */ sw	$ra, 0X3C($sp)
/* 000004 0x808D3E30 AFA5005C */ sw	$a1, 0X5C($sp)
/* 000005 0x808D3E34 3C05808D */ lui	$a1, %hi(D_808D712C)
/* 000006 0x808D3E38 24A5712C */ addiu	$a1, $a1, %lo(D_808D712C)
/* 000007 0x808D3E3C 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000008 0x808D3E40 02002025 */ move	$a0, $s0
/* 000009 0x808D3E44 44800000 */ mtc1	$zero, $f0
/* 000010 0x808D3E48 3C0E808D */ lui	$t6, %hi(D_808D710C)
/* 000011 0x808D3E4C 25CE710C */ addiu	$t6, $t6, %lo(D_808D710C)
/* 000012 0x808D3E50 44050000 */ mfc1	$a1, $f0
/* 000013 0x808D3E54 44070000 */ mfc1	$a3, $f0
/* 000014 0x808D3E58 A200001F */ sb	$zero, 0X1F($s0)
/* 000015 0x808D3E5C AE0E00A0 */ sw	$t6, 0XA0($s0)
/* 000016 0x808D3E60 260400BC */ addiu	$a0, $s0, 0XBC
/* 000017 0x808D3E64 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000018 0x808D3E68 00003025 */ move	$a2, $zero
/* 000019 0x808D3E6C 8E180028 */ lw	$t8, 0X28($s0)
/* 000020 0x808D3E70 3C014248 */ lui	$at, 0x4248
/* 000021 0x808D3E74 8E190024 */ lw	$t9, 0X24($s0)
/* 000022 0x808D3E78 AE180040 */ sw	$t8, 0X40($s0)
/* 000023 0x808D3E7C C6040040 */ lwc1	$f4, 0X40($s0)
/* 000024 0x808D3E80 44813000 */ mtc1	$at, $f6
/* 000025 0x808D3E84 A60003D8 */ sh	$zero, 0X3D8($s0)
/* 000026 0x808D3E88 860F03D8 */ lh	$t7, 0X3D8($s0)
/* 000027 0x808D3E8C 860C001C */ lh	$t4, 0X1C($s0)
/* 000028 0x808D3E90 8603001C */ lh	$v1, 0X1C($s0)
/* 000029 0x808D3E94 46062200 */ add.s	$f8, $f4, $f6
/* 000030 0x808D3E98 AE19003C */ sw	$t9, 0X3C($s0)
/* 000031 0x808D3E9C 8E19002C */ lw	$t9, 0X2C($s0)
/* 000032 0x808D3EA0 A60F03DA */ sh	$t7, 0X3DA($s0)
/* 000033 0x808D3EA4 318DFF00 */ andi	$t5, $t4, 0XFF00
/* 000034 0x808D3EA8 240800FE */ li	$t0, 0XFE
/* 000035 0x808D3EAC 24090008 */ li	$t1, 0X8
/* 000036 0x808D3EB0 240A00FF */ li	$t2, 0XFF
/* 000037 0x808D3EB4 240BFFFF */ li	$t3, -0X1
/* 000038 0x808D3EB8 000D7203 */ sra	$t6, $t5, 8
/* 000039 0x808D3EBC 306F0080 */ andi	$t7, $v1, 0X80
/* 000040 0x808D3EC0 E6080040 */ swc1	$f8, 0X40($s0)
/* 000041 0x808D3EC4 A20800B6 */ sb	$t0, 0XB6($s0)
/* 000042 0x808D3EC8 A20900B7 */ sb	$t1, 0XB7($s0)
/* 000043 0x808D3ECC A60A03DE */ sh	$t2, 0X3DE($s0)
/* 000044 0x808D3ED0 A20B03F1 */ sb	$t3, 0X3F1($s0)
/* 000045 0x808D3ED4 A60E03DC */ sh	$t6, 0X3DC($s0)
/* 000046 0x808D3ED8 11E00004 */ beqz	$t7, .L808D3EEC
/* 000047 0x808D3EDC AE190044 */ sw	$t9, 0X44($s0)
/* 000048 0x808D3EE0 3478FF00 */ ori	$t8, $v1, 0XFF00
/* 000049 0x808D3EE4 10000003 */ b	.L808D3EF4
/* 000050 0x808D3EE8 A618001C */ sh	$t8, 0X1C($s0)
.L808D3EEC:
/* 000051 0x808D3EEC 307900FF */ andi	$t9, $v1, 0XFF
/* 000052 0x808D3EF0 A619001C */ sh	$t9, 0X1C($s0)
.L808D3EF4:
/* 000053 0x808D3EF4 8608001C */ lh	$t0, 0X1C($s0)
/* 000054 0x808D3EF8 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000055 0x808D3EFC 26050144 */ addiu	$a1, $s0, 0X144
/* 000056 0x808D3F00 2901FFFF */ slti	$at, $t0, -0X1
/* 000057 0x808D3F04 14200011 */ bnez	$at, .L808D3F4C
/* 000058 0x808D3F08 3C060600 */ lui	$a2, 0x0600
/* 000059 0x808D3F0C 26050144 */ addiu	$a1, $s0, 0X144
/* 000060 0x808D3F10 3C060601 */ lui	$a2, 0x0601
/* 000061 0x808D3F14 3C070601 */ lui	$a3, 0x0601
/* 000062 0x808D3F18 2609029C */ addiu	$t1, $s0, 0X29C
/* 000063 0x808D3F1C 260A0338 */ addiu	$t2, $s0, 0X338
/* 000064 0x808D3F20 240B001A */ li	$t3, 0X1A
/* 000065 0x808D3F24 AFAB0018 */ sw	$t3, 0X18($sp)
/* 000066 0x808D3F28 AFAA0014 */ sw	$t2, 0X14($sp)
/* 000067 0x808D3F2C AFA90010 */ sw	$t1, 0X10($sp)
/* 000068 0x808D3F30 24E7ABE0 */ addiu	$a3, $a3, -0X5420
/* 000069 0x808D3F34 24C60B88 */ addiu	$a2, $a2, 0XB88
/* 000070 0x808D3F38 AFA50040 */ sw	$a1, 0X40($sp)
/* 000071 0x808D3F3C 0C04DACC */ jal	SkelAnime_InitSV
/* 000072 0x808D3F40 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000073 0x808D3F44 1000000D */ b	.L808D3F7C
/* 000074 0x808D3F48 26050190 */ addiu	$a1, $s0, 0X190
.L808D3F4C:
/* 000075 0x808D3F4C 3C070601 */ lui	$a3, 0x0601
/* 000076 0x808D3F50 260C029C */ addiu	$t4, $s0, 0X29C
/* 000077 0x808D3F54 260D0338 */ addiu	$t5, $s0, 0X338
/* 000078 0x808D3F58 240E001A */ li	$t6, 0X1A
/* 000079 0x808D3F5C AFAE0018 */ sw	$t6, 0X18($sp)
/* 000080 0x808D3F60 AFAD0014 */ sw	$t5, 0X14($sp)
/* 000081 0x808D3F64 AFAC0010 */ sw	$t4, 0X10($sp)
/* 000082 0x808D3F68 24E7ABE0 */ addiu	$a3, $a3, -0X5420
/* 000083 0x808D3F6C 24C653E8 */ addiu	$a2, $a2, 0X53E8
/* 000084 0x808D3F70 0C04DACC */ jal	SkelAnime_InitSV
/* 000085 0x808D3F74 AFA50040 */ sw	$a1, 0X40($sp)
/* 000086 0x808D3F78 26050190 */ addiu	$a1, $s0, 0X190
.L808D3F7C:
/* 000087 0x808D3F7C AFA50044 */ sw	$a1, 0X44($sp)
/* 000088 0x808D3F80 0C038467 */ jal	Collision_InitCylinderDefault
/* 000089 0x808D3F84 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000090 0x808D3F88 3C07808D */ lui	$a3, %hi(D_808D70E0)
/* 000091 0x808D3F8C 8FA50044 */ lw	$a1, 0X44($sp)
/* 000092 0x808D3F90 24E770E0 */ addiu	$a3, $a3, %lo(D_808D70E0)
/* 000093 0x808D3F94 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000094 0x808D3F98 0C0384C3 */ jal	Collision_InitCylinderWithData
/* 000095 0x808D3F9C 02003025 */ move	$a2, $s0
/* 000096 0x808D3FA0 8603001C */ lh	$v1, 0X1C($s0)
/* 000097 0x808D3FA4 2861FFFE */ slti	$at, $v1, -0X2
/* 000098 0x808D3FA8 14200042 */ bnez	$at, .L808D40B4
/* 000099 0x808D3FAC 24010005 */ li	$at, 0X5
/* 000100 0x808D3FB0 10610007 */ beq	$v1, $at, .L808D3FD0
/* 000101 0x808D3FB4 24010006 */ li	$at, 0X6
/* 000102 0x808D3FB8 10610014 */ beq	$v1, $at, .L808D400C
/* 000103 0x808D3FBC 24010007 */ li	$at, 0X7
/* 000104 0x808D3FC0 10610021 */ beq	$v1, $at, .L808D4048
/* 000105 0x808D3FC4 00000000 */ nop
/* 000106 0x808D3FC8 1000002E */ b	.L808D4084
/* 000107 0x808D3FCC 2401FFFE */ li	$at, -0X2
.L808D3FD0:
/* 000108 0x808D3FD0 0C23507F */ jal	func_808D41FC
/* 000109 0x808D3FD4 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000110 0x808D3FD8 14400005 */ bnez	$v0, .L808D3FF0
/* 000111 0x808D3FDC 240F002A */ li	$t7, 0X2A
/* 000112 0x808D3FE0 0C235175 */ jal	func_808D45D4
/* 000113 0x808D3FE4 02002025 */ move	$a0, $s0
/* 000114 0x808D3FE8 10000004 */ b	.L808D3FFC
/* 000115 0x808D3FEC 00000000 */ nop
.L808D3FF0:
/* 000116 0x808D3FF0 A20F011F */ sb	$t7, 0X11F($s0)
/* 000117 0x808D3FF4 0C2350C2 */ jal	func_808D4308
/* 000118 0x808D3FF8 02002025 */ move	$a0, $s0
.L808D3FFC:
/* 000119 0x808D3FFC 3C18808D */ lui	$t8, %hi(func_808D45D4)
/* 000120 0x808D4000 271845D4 */ addiu	$t8, $t8, %lo(func_808D45D4)
/* 000121 0x808D4004 1000002D */ b	.L808D40BC
/* 000122 0x808D4008 AE18018C */ sw	$t8, 0X18C($s0)
.L808D400C:
/* 000123 0x808D400C 0C23507F */ jal	func_808D41FC
/* 000124 0x808D4010 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000125 0x808D4014 14400005 */ bnez	$v0, .L808D402C
/* 000126 0x808D4018 2419002A */ li	$t9, 0X2A
/* 000127 0x808D401C 0C2351F7 */ jal	func_808D47DC
/* 000128 0x808D4020 02002025 */ move	$a0, $s0
/* 000129 0x808D4024 10000004 */ b	.L808D4038
/* 000130 0x808D4028 00000000 */ nop
.L808D402C:
/* 000131 0x808D402C A219011F */ sb	$t9, 0X11F($s0)
/* 000132 0x808D4030 0C2350C2 */ jal	func_808D4308
/* 000133 0x808D4034 02002025 */ move	$a0, $s0
.L808D4038:
/* 000134 0x808D4038 3C08808D */ lui	$t0, %hi(func_808D47DC)
/* 000135 0x808D403C 250847DC */ addiu	$t0, $t0, %lo(func_808D47DC)
/* 000136 0x808D4040 1000001E */ b	.L808D40BC
/* 000137 0x808D4044 AE08018C */ sw	$t0, 0X18C($s0)
.L808D4048:
/* 000138 0x808D4048 0C23507F */ jal	func_808D41FC
/* 000139 0x808D404C 8FA4005C */ lw	$a0, 0X5C($sp)
/* 000140 0x808D4050 14400005 */ bnez	$v0, .L808D4068
/* 000141 0x808D4054 2409002A */ li	$t1, 0X2A
/* 000142 0x808D4058 0C2352A4 */ jal	func_808D4A90
/* 000143 0x808D405C 02002025 */ move	$a0, $s0
/* 000144 0x808D4060 10000004 */ b	.L808D4074
/* 000145 0x808D4064 00000000 */ nop
.L808D4068:
/* 000146 0x808D4068 A209011F */ sb	$t1, 0X11F($s0)
/* 000147 0x808D406C 0C2350C2 */ jal	func_808D4308
/* 000148 0x808D4070 02002025 */ move	$a0, $s0
.L808D4074:
/* 000149 0x808D4074 3C0A808D */ lui	$t2, %hi(func_808D4A90)
/* 000150 0x808D4078 254A4A90 */ addiu	$t2, $t2, %lo(func_808D4A90)
/* 000151 0x808D407C 1000000F */ b	.L808D40BC
/* 000152 0x808D4080 AE0A018C */ sw	$t2, 0X18C($s0)
.L808D4084:
/* 000153 0x808D4084 14610004 */ bne	$v1, $at, .L808D4098
/* 000154 0x808D4088 240C002A */ li	$t4, 0X2A
/* 000155 0x808D408C 240B002D */ li	$t3, 0X2D
/* 000156 0x808D4090 10000002 */ b	.L808D409C
/* 000157 0x808D4094 A20B011F */ sb	$t3, 0X11F($s0)
.L808D4098:
/* 000158 0x808D4098 A20C011F */ sb	$t4, 0X11F($s0)
.L808D409C:
/* 000159 0x808D409C 0C2350C2 */ jal	func_808D4308
/* 000160 0x808D40A0 02002025 */ move	$a0, $s0
/* 000161 0x808D40A4 3C0D808D */ lui	$t5, %hi(func_808D4308)
/* 000162 0x808D40A8 25AD4308 */ addiu	$t5, $t5, %lo(func_808D4308)
/* 000163 0x808D40AC 10000003 */ b	.L808D40BC
/* 000164 0x808D40B0 AE0D018C */ sw	$t5, 0X18C($s0)
.L808D40B4:
/* 000165 0x808D40B4 0C235371 */ jal	func_808D4DC4
/* 000166 0x808D40B8 02002025 */ move	$a0, $s0
.L808D40BC:
/* 000167 0x808D40BC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000168 0x808D40C0 8FA40040 */ lw	$a0, 0X40($sp)
/* 000169 0x808D40C4 8603001C */ lh	$v1, 0X1C($s0)
/* 000170 0x808D40C8 24010003 */ li	$at, 0X3
/* 000171 0x808D40CC 54610006 */ bnel	$v1, $at, .L808D40E8
/* 000172 0x808D40D0 24010004 */ li	$at, 0X4
/* 000173 0x808D40D4 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000174 0x808D40D8 8603001C */ lh	$v1, 0X1C($s0)
/* 000175 0x808D40DC 35CF0080 */ ori	$t7, $t6, 0X80
/* 000176 0x808D40E0 AE0F0004 */ sw	$t7, 0X4($s0)
/* 000177 0x808D40E4 24010004 */ li	$at, 0X4
.L808D40E8:
/* 000178 0x808D40E8 14610013 */ bne	$v1, $at, .L808D4138
/* 000179 0x808D40EC 8FA6005C */ lw	$a2, 0X5C($sp)
/* 000180 0x808D40F0 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000181 0x808D40F4 3409FF4B */ ori	$t1, $zero, 0XFF4B
/* 000182 0x808D40F8 24C41CA0 */ addiu	$a0, $a2, 0X1CA0
/* 000183 0x808D40FC E7AA0010 */ swc1	$f10, 0X10($sp)
/* 000184 0x808D4100 C6100028 */ lwc1	$f16, 0X28($s0)
/* 000185 0x808D4104 02002825 */ move	$a1, $s0
/* 000186 0x808D4108 2407008E */ li	$a3, 0X8E
/* 000187 0x808D410C E7B00014 */ swc1	$f16, 0X14($sp)
/* 000188 0x808D4110 C612002C */ lwc1	$f18, 0X2C($s0)
/* 000189 0x808D4114 E7B20018 */ swc1	$f18, 0X18($sp)
/* 000190 0x808D4118 86180030 */ lh	$t8, 0X30($s0)
/* 000191 0x808D411C AFB8001C */ sw	$t8, 0X1C($sp)
/* 000192 0x808D4120 86190032 */ lh	$t9, 0X32($s0)
/* 000193 0x808D4124 AFB90020 */ sw	$t9, 0X20($sp)
/* 000194 0x808D4128 86080034 */ lh	$t0, 0X34($s0)
/* 000195 0x808D412C AFA90028 */ sw	$t1, 0X28($sp)
/* 000196 0x808D4130 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000197 0x808D4134 AFA80024 */ sw	$t0, 0X24($sp)
.L808D4138:
/* 000198 0x808D4138 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000199 0x808D413C 8FB00038 */ lw	$s0, 0X38($sp)
/* 000200 0x808D4140 27BD0058 */ addiu	$sp, $sp, 0X58
/* 000201 0x808D4144 03E00008 */ jr	$ra
/* 000202 0x808D4148 00000000 */ nop

