glabel func_80C05C44
/* 000117 0x80C05C44 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000118 0x80C05C48 AFB30038 */ sw	$s3, 0X38($sp)
/* 000119 0x80C05C4C AFB20034 */ sw	$s2, 0X34($sp)
/* 000120 0x80C05C50 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000121 0x80C05C54 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000122 0x80C05C58 00A09025 */ move	$s2, $a1
/* 000123 0x80C05C5C 00809825 */ move	$s3, $a0
/* 000124 0x80C05C60 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000125 0x80C05C64 AFB10030 */ sw	$s1, 0X30($sp)
/* 000126 0x80C05C68 AFB0002C */ sw	$s0, 0X2C($sp)
/* 000127 0x80C05C6C 904E0F43 */ lbu	$t6, 0XF43($v0)
/* 000128 0x80C05C70 00008025 */ move	$s0, $zero
/* 000129 0x80C05C74 31CF0040 */ andi	$t7, $t6, 0X40
/* 000130 0x80C05C78 55E00022 */ bnezl	$t7, .L80C05D04
/* 000131 0x80C05C7C 24100001 */ li	$s0, 0X1
/* 000132 0x80C05C80 90580F41 */ lbu	$t8, 0XF41($v0)
/* 000133 0x80C05C84 33190010 */ andi	$t9, $t8, 0X10
/* 000134 0x80C05C88 5720001E */ bnezl	$t9, .L80C05D04
/* 000135 0x80C05C8C 24100001 */ li	$s0, 0X1
/* 000136 0x80C05C90 90480F4D */ lbu	$t0, 0XF4D($v0)
/* 000137 0x80C05C94 31090002 */ andi	$t1, $t0, 0X2
/* 000138 0x80C05C98 5520001A */ bnezl	$t1, .L80C05D04
/* 000139 0x80C05C9C 24100001 */ li	$s0, 0X1
/* 000140 0x80C05CA0 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000141 0x80C05CA4 00000000 */ nop
/* 000142 0x80C05CA8 2401007C */ li	$at, 0X7C
/* 000143 0x80C05CAC 14410007 */ bne	$v0, $at, .L80C05CCC
/* 000144 0x80C05CB0 00000000 */ nop
/* 000145 0x80C05CB4 0C03C7EF */ jal	ActorCutscene_Stop
/* 000146 0x80C05CB8 2404007C */ li	$a0, 0X7C
/* 000147 0x80C05CBC 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000148 0x80C05CC0 8664014C */ lh	$a0, 0X14C($s3)
/* 000149 0x80C05CC4 10000042 */ b	.L80C05DD0
/* 000150 0x80C05CC8 8FBF003C */ lw	$ra, 0X3C($sp)
.L80C05CCC:
/* 000151 0x80C05CCC 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000152 0x80C05CD0 8664014C */ lh	$a0, 0X14C($s3)
/* 000153 0x80C05CD4 14400005 */ bnez	$v0, .L80C05CEC
/* 000154 0x80C05CD8 02602825 */ move	$a1, $s3
/* 000155 0x80C05CDC 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000156 0x80C05CE0 8664014C */ lh	$a0, 0X14C($s3)
/* 000157 0x80C05CE4 10000007 */ b	.L80C05D04
/* 000158 0x80C05CE8 00000000 */ nop
.L80C05CEC:
/* 000159 0x80C05CEC 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000160 0x80C05CF0 8664014C */ lh	$a0, 0X14C($s3)
/* 000161 0x80C05CF4 24100001 */ li	$s0, 0X1
/* 000162 0x80C05CF8 10000002 */ b	.L80C05D04
/* 000163 0x80C05CFC 00000000 */ nop
/* 000164 0x80C05D00 24100001 */ li	$s0, 0X1
.L80C05D04:
/* 000165 0x80C05D04 12000031 */ beqz	$s0, .L80C05DCC
/* 000166 0x80C05D08 27B10044 */ addiu	$s1, $sp, 0X44
/* 000167 0x80C05D0C 02202025 */ move	$a0, $s1
/* 000168 0x80C05D10 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000169 0x80C05D14 26650024 */ addiu	$a1, $s3, 0X24
/* 000170 0x80C05D18 3C014270 */ lui	$at, 0x4270
/* 000171 0x80C05D1C C7A00048 */ lwc1	$f0, 0X48($sp)
/* 000172 0x80C05D20 44812000 */ mtc1	$at, $f4
/* 000173 0x80C05D24 C7A6004C */ lwc1	$f6, 0X4C($sp)
/* 000174 0x80C05D28 240A00FF */ li	$t2, 0XFF
/* 000175 0x80C05D2C 46040000 */ add.s	$f0, $f0, $f4
/* 000176 0x80C05D30 240B00FF */ li	$t3, 0XFF
/* 000177 0x80C05D34 240C00C8 */ li	$t4, 0XC8
/* 000178 0x80C05D38 240D0001 */ li	$t5, 0X1
/* 000179 0x80C05D3C AFAD0024 */ sw	$t5, 0X24($sp)
/* 000180 0x80C05D40 AFAC0020 */ sw	$t4, 0X20($sp)
/* 000181 0x80C05D44 AFAB001C */ sw	$t3, 0X1C($sp)
/* 000182 0x80C05D48 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000183 0x80C05D4C E7A00048 */ swc1	$f0, 0X48($sp)
/* 000184 0x80C05D50 AFAA0018 */ sw	$t2, 0X18($sp)
/* 000185 0x80C05D54 26441CA0 */ addiu	$a0, $s2, 0X1CA0
/* 000186 0x80C05D58 02402825 */ move	$a1, $s2
/* 000187 0x80C05D5C 240600A2 */ li	$a2, 0XA2
/* 000188 0x80C05D60 8FA70044 */ lw	$a3, 0X44($sp)
/* 000189 0x80C05D64 0C02EB18 */ jal	Actor_Spawn
/* 000190 0x80C05D68 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000191 0x80C05D6C 00008025 */ move	$s0, $zero
/* 000192 0x80C05D70 24120064 */ li	$s2, 0X64
/* 000193 0x80C05D74 02602025 */ move	$a0, $s3
.L80C05D78:
/* 000194 0x80C05D78 02202825 */ move	$a1, $s1
/* 000195 0x80C05D7C 0C3017E4 */ jal	func_80C05F90
/* 000196 0x80C05D80 2406000A */ li	$a2, 0XA
/* 000197 0x80C05D84 26100001 */ addiu	$s0, $s0, 0X1
/* 000198 0x80C05D88 5612FFFB */ bnel	$s0, $s2, .L80C05D78
/* 000199 0x80C05D8C 02602025 */ move	$a0, $s3
/* 000200 0x80C05D90 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF4B)
/* 000201 0x80C05D94 91CE05BB */ lbu	$t6, %lo(gSaveContext + 0xF4B)($t6)
/* 000202 0x80C05D98 3C01801F */ lui	$at, %hi(gSaveContext + 0xF4B)
/* 000203 0x80C05D9C 02602025 */ move	$a0, $s3
/* 000204 0x80C05DA0 35CF0004 */ ori	$t7, $t6, 0X4
/* 000205 0x80C05DA4 A02F05BB */ sb	$t7, %lo(gSaveContext + 0xF4B)($at)
/* 000206 0x80C05DA8 0C02E3B2 */ jal	func_800B8EC8
/* 000207 0x80C05DAC 24052949 */ li	$a1, 0X2949
/* 000208 0x80C05DB0 3C0880C0 */ lui	$t0, %hi(func_80C05DE8)
/* 000209 0x80C05DB4 2418001E */ li	$t8, 0X1E
/* 000210 0x80C05DB8 24190001 */ li	$t9, 0X1
/* 000211 0x80C05DBC 25085DE8 */ addiu	$t0, $t0, %lo(func_80C05DE8)
/* 000212 0x80C05DC0 A6780148 */ sh	$t8, 0X148($s3)
/* 000213 0x80C05DC4 A679014A */ sh	$t9, 0X14A($s3)
/* 000214 0x80C05DC8 AE680144 */ sw	$t0, 0X144($s3)
.L80C05DCC:
/* 000215 0x80C05DCC 8FBF003C */ lw	$ra, 0X3C($sp)
.L80C05DD0:
/* 000216 0x80C05DD0 8FB0002C */ lw	$s0, 0X2C($sp)
/* 000217 0x80C05DD4 8FB10030 */ lw	$s1, 0X30($sp)
/* 000218 0x80C05DD8 8FB20034 */ lw	$s2, 0X34($sp)
/* 000219 0x80C05DDC 8FB30038 */ lw	$s3, 0X38($sp)
/* 000220 0x80C05DE0 03E00008 */ jr	$ra
/* 000221 0x80C05DE4 27BD0058 */ addiu	$sp, $sp, 0X58

