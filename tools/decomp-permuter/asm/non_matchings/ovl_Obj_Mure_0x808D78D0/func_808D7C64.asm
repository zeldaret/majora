glabel func_808D7C64
/* 000229 0x808D7C64 27BDFF60 */ addiu	$sp, $sp, -0XA0
/* 000230 0x808D7C68 AFB40050 */ sw	$s4, 0X50($sp)
/* 000231 0x808D7C6C AFB00040 */ sw	$s0, 0X40($sp)
/* 000232 0x808D7C70 00808025 */ move	$s0, $a0
/* 000233 0x808D7C74 00A0A025 */ move	$s4, $a1
/* 000234 0x808D7C78 AFBF0064 */ sw	$ra, 0X64($sp)
/* 000235 0x808D7C7C AFBE0060 */ sw	$fp, 0X60($sp)
/* 000236 0x808D7C80 AFB7005C */ sw	$s7, 0X5C($sp)
/* 000237 0x808D7C84 AFB60058 */ sw	$s6, 0X58($sp)
/* 000238 0x808D7C88 AFB50054 */ sw	$s5, 0X54($sp)
/* 000239 0x808D7C8C AFB3004C */ sw	$s3, 0X4C($sp)
/* 000240 0x808D7C90 AFB20048 */ sw	$s2, 0X48($sp)
/* 000241 0x808D7C94 AFB10044 */ sw	$s1, 0X44($sp)
/* 000242 0x808D7C98 0C235E85 */ jal	func_808D7A14
/* 000243 0x808D7C9C 02002025 */ move	$a0, $s0
/* 000244 0x808D7CA0 0040A825 */ move	$s5, $v0
/* 000245 0x808D7CA4 1840003B */ blez	$v0, .L808D7D94
/* 000246 0x808D7CA8 00008825 */ move	$s1, $zero
/* 000247 0x808D7CAC 26961CA0 */ addiu	$s6, $s4, 0X1CA0
/* 000248 0x808D7CB0 02009025 */ move	$s2, $s0
/* 000249 0x808D7CB4 02009825 */ move	$s3, $s0
/* 000250 0x808D7CB8 26170024 */ addiu	$s7, $s0, 0X24
/* 000251 0x808D7CBC 27BE008C */ addiu	$fp, $sp, 0X8C
.L808D7CC0:
/* 000252 0x808D7CC0 03C02025 */ move	$a0, $fp
/* 000253 0x808D7CC4 02E02825 */ move	$a1, $s7
/* 000254 0x808D7CC8 8606014A */ lh	$a2, 0X14A($s0)
/* 000255 0x808D7CCC 0C235E90 */ jal	func_808D7A40
/* 000256 0x808D7CD0 02203825 */ move	$a3, $s1
/* 000257 0x808D7CD4 8602014E */ lh	$v0, 0X14E($s0)
/* 000258 0x808D7CD8 24010004 */ li	$at, 0X4
/* 000259 0x808D7CDC C7A40090 */ lwc1	$f4, 0X90($sp)
/* 000260 0x808D7CE0 14410005 */ bne	$v0, $at, .L808D7CF8
/* 000261 0x808D7CE4 00021840 */ sll	$v1, $v0, 1
/* 000262 0x808D7CE8 16200003 */ bnez	$s1, .L808D7CF8
/* 000263 0x808D7CEC 24080001 */ li	$t0, 0X1
/* 000264 0x808D7CF0 10000004 */ b	.L808D7D04
/* 000265 0x808D7CF4 00021840 */ sll	$v1, $v0, 1
.L808D7CF8:
/* 000266 0x808D7CF8 3C08808E */ lui	$t0, 0x808E
/* 000267 0x808D7CFC 01034021 */ addu	$t0, $t0, $v1
/* 000268 0x808D7D00 850887B0 */ lh	$t0, -0X7850($t0)
.L808D7D04:
/* 000269 0x808D7D04 C7A60094 */ lwc1	$f6, 0X94($sp)
/* 000270 0x808D7D08 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000271 0x808D7D0C 3C06808E */ lui	$a2, 0x808E
/* 000272 0x808D7D10 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000273 0x808D7D14 860E0030 */ lh	$t6, 0X30($s0)
/* 000274 0x808D7D18 00C33021 */ addu	$a2, $a2, $v1
/* 000275 0x808D7D1C 84C687A4 */ lh	$a2, -0X785C($a2)
/* 000276 0x808D7D20 AFAE0018 */ sw	$t6, 0X18($sp)
/* 000277 0x808D7D24 860F0032 */ lh	$t7, 0X32($s0)
/* 000278 0x808D7D28 02C02025 */ move	$a0, $s6
/* 000279 0x808D7D2C 02802825 */ move	$a1, $s4
/* 000280 0x808D7D30 AFAF001C */ sw	$t7, 0X1C($sp)
/* 000281 0x808D7D34 86180034 */ lh	$t8, 0X34($s0)
/* 000282 0x808D7D38 AFA80024 */ sw	$t0, 0X24($sp)
/* 000283 0x808D7D3C 8FA7008C */ lw	$a3, 0X8C($sp)
/* 000284 0x808D7D40 AFB80020 */ sw	$t8, 0X20($sp)
/* 000285 0x808D7D44 82190038 */ lb	$t9, 0X38($s0)
/* 000286 0x808D7D48 AFB90028 */ sw	$t9, 0X28($sp)
/* 000287 0x808D7D4C 86090020 */ lh	$t1, 0X20($s0)
/* 000288 0x808D7D50 AFA00030 */ sw	$zero, 0X30($sp)
/* 000289 0x808D7D54 0C02EB85 */ jal	Actor_SpawnWithParentAndCutscene
/* 000290 0x808D7D58 AFA9002C */ sw	$t1, 0X2C($sp)
/* 000291 0x808D7D5C 10400006 */ beqz	$v0, .L808D7D78
/* 000292 0x808D7D60 AE420150 */ sw	$v0, 0X150($s2)
/* 000293 0x808D7D64 A260018C */ sb	$zero, 0X18C($s3)
/* 000294 0x808D7D68 8E4B0150 */ lw	$t3, 0X150($s2)
/* 000295 0x808D7D6C 820A0003 */ lb	$t2, 0X3($s0)
/* 000296 0x808D7D70 10000003 */ b	.L808D7D80
/* 000297 0x808D7D74 A16A0003 */ sb	$t2, 0X3($t3)
.L808D7D78:
/* 000298 0x808D7D78 240C0001 */ li	$t4, 0X1
/* 000299 0x808D7D7C A26C018C */ sb	$t4, 0X18C($s3)
.L808D7D80:
/* 000300 0x808D7D80 26310001 */ addiu	$s1, $s1, 0X1
/* 000301 0x808D7D84 0235082A */ slt	$at, $s1, $s5
/* 000302 0x808D7D88 26520004 */ addiu	$s2, $s2, 0X4
/* 000303 0x808D7D8C 1420FFCC */ bnez	$at, .L808D7CC0
/* 000304 0x808D7D90 26730001 */ addiu	$s3, $s3, 0X1
.L808D7D94:
/* 000305 0x808D7D94 8FBF0064 */ lw	$ra, 0X64($sp)
/* 000306 0x808D7D98 8FB00040 */ lw	$s0, 0X40($sp)
/* 000307 0x808D7D9C 8FB10044 */ lw	$s1, 0X44($sp)
/* 000308 0x808D7DA0 8FB20048 */ lw	$s2, 0X48($sp)
/* 000309 0x808D7DA4 8FB3004C */ lw	$s3, 0X4C($sp)
/* 000310 0x808D7DA8 8FB40050 */ lw	$s4, 0X50($sp)
/* 000311 0x808D7DAC 8FB50054 */ lw	$s5, 0X54($sp)
/* 000312 0x808D7DB0 8FB60058 */ lw	$s6, 0X58($sp)
/* 000313 0x808D7DB4 8FB7005C */ lw	$s7, 0X5C($sp)
/* 000314 0x808D7DB8 8FBE0060 */ lw	$fp, 0X60($sp)
/* 000315 0x808D7DBC 03E00008 */ jr	$ra
/* 000316 0x808D7DC0 27BD00A0 */ addiu	$sp, $sp, 0XA0

