glabel func_80BD4A14
/* 000189 0x80BD4A14 27BDFF18 */ addiu	$sp, $sp, -0XE8
/* 000190 0x80BD4A18 AFB5008C */ sw	$s5, 0X8C($sp)
/* 000191 0x80BD4A1C AFB30084 */ sw	$s3, 0X84($sp)
/* 000192 0x80BD4A20 00809825 */ move	$s3, $a0
/* 000193 0x80BD4A24 00A0A825 */ move	$s5, $a1
/* 000194 0x80BD4A28 AFBF009C */ sw	$ra, 0X9C($sp)
/* 000195 0x80BD4A2C AFBE0098 */ sw	$fp, 0X98($sp)
/* 000196 0x80BD4A30 AFB70094 */ sw	$s7, 0X94($sp)
/* 000197 0x80BD4A34 AFB60090 */ sw	$s6, 0X90($sp)
/* 000198 0x80BD4A38 AFB40088 */ sw	$s4, 0X88($sp)
/* 000199 0x80BD4A3C AFB20080 */ sw	$s2, 0X80($sp)
/* 000200 0x80BD4A40 AFB1007C */ sw	$s1, 0X7C($sp)
/* 000201 0x80BD4A44 AFB00078 */ sw	$s0, 0X78($sp)
/* 000202 0x80BD4A48 F7BE0070 */ sdc1	$f30, 0X70($sp)
/* 000203 0x80BD4A4C F7BC0068 */ sdc1	$f28, 0X68($sp)
/* 000204 0x80BD4A50 F7BA0060 */ sdc1	$f26, 0X60($sp)
/* 000205 0x80BD4A54 F7B80058 */ sdc1	$f24, 0X58($sp)
/* 000206 0x80BD4A58 F7B60050 */ sdc1	$f22, 0X50($sp)
/* 000207 0x80BD4A5C F7B40048 */ sdc1	$f20, 0X48($sp)
/* 000208 0x80BD4A60 3C013F00 */ lui	$at, 0x3F00
/* 000209 0x80BD4A64 4481F000 */ mtc1	$at, $f30
/* 000210 0x80BD4A68 3C014270 */ lui	$at, 0x4270
/* 000211 0x80BD4A6C 3C170600 */ lui	$s7, 0x0600
/* 000212 0x80BD4A70 4480D000 */ mtc1	$zero, $f26
/* 000213 0x80BD4A74 4481E000 */ mtc1	$at, $f28
/* 000214 0x80BD4A78 26F70288 */ addiu	$s7, $s7, 0X288
/* 000215 0x80BD4A7C 00008825 */ move	$s1, $zero
/* 000216 0x80BD4A80 00009025 */ move	$s2, $zero
/* 000217 0x80BD4A84 241E001C */ li	$fp, 0X1C
/* 000218 0x80BD4A88 27B600CC */ addiu	$s6, $sp, 0XCC
/* 000219 0x80BD4A8C 27B400D8 */ addiu	$s4, $sp, 0XD8
.L80BD4A90:
/* 000220 0x80BD4A90 0C021BF7 */ jal	randZeroOne
/* 000221 0x80BD4A94 00000000 */ nop
/* 000222 0x80BD4A98 3C0141A0 */ lui	$at, 0x41A0
/* 000223 0x80BD4A9C 44812000 */ mtc1	$at, $f4
/* 000224 0x80BD4AA0 3C014120 */ lui	$at, 0x4120
/* 000225 0x80BD4AA4 44813000 */ mtc1	$at, $f6
/* 000226 0x80BD4AA8 00122400 */ sll	$a0, $s2, 16
/* 000227 0x80BD4AAC 46060202 */ mul.s	$f8, $f0, $f6
/* 000228 0x80BD4AB0 46082280 */ add.s	$f10, $f4, $f8
/* 000229 0x80BD4AB4 460AD680 */ add.s	$f26, $f26, $f10
/* 000230 0x80BD4AB8 461AE03C */ c.lt.s	$f28, $f26
/* 000231 0x80BD4ABC 00000000 */ nop
/* 000232 0x80BD4AC0 45000002 */ bc1f .L80BD4ACC
/* 000233 0x80BD4AC4 00000000 */ nop
/* 000234 0x80BD4AC8 461CD681 */ sub.s	$f26, $f26, $f28
.L80BD4ACC:
/* 000235 0x80BD4ACC 0C03FB61 */ jal	Math_Sins
/* 000236 0x80BD4AD0 00042403 */ sra	$a0, $a0, 16
/* 000237 0x80BD4AD4 00122400 */ sll	$a0, $s2, 16
/* 000238 0x80BD4AD8 46000506 */ mov.s	$f20, $f0
/* 000239 0x80BD4ADC 0C03FB51 */ jal	Math_Coss
/* 000240 0x80BD4AE0 00042403 */ sra	$a0, $a0, 16
/* 000241 0x80BD4AE4 461AA602 */ mul.s	$f24, $f20, $f26
/* 000242 0x80BD4AE8 C6700024 */ lwc1	$f16, 0X24($s3)
/* 000243 0x80BD4AEC 46000586 */ mov.s	$f22, $f0
/* 000244 0x80BD4AF0 461A0102 */ mul.s	$f4, $f0, $f26
/* 000245 0x80BD4AF4 4610C480 */ add.s	$f18, $f24, $f16
/* 000246 0x80BD4AF8 E7B200D8 */ swc1	$f18, 0XD8($sp)
/* 000247 0x80BD4AFC C6660028 */ lwc1	$f6, 0X28($s3)
/* 000248 0x80BD4B00 E7A600DC */ swc1	$f6, 0XDC($sp)
/* 000249 0x80BD4B04 C668002C */ lwc1	$f8, 0X2C($s3)
/* 000250 0x80BD4B08 46082280 */ add.s	$f10, $f4, $f8
/* 000251 0x80BD4B0C 0C021BF7 */ jal	randZeroOne
/* 000252 0x80BD4B10 E7AA00E0 */ swc1	$f10, 0XE0($sp)
/* 000253 0x80BD4B14 461E0401 */ sub.s	$f16, $f0, $f30
/* 000254 0x80BD4B18 3C014040 */ lui	$at, 0x4040
/* 000255 0x80BD4B1C 44819000 */ mtc1	$at, $f18
/* 000256 0x80BD4B20 3C0180BD */ lui	$at, %hi(D_80BD52F4)
/* 000257 0x80BD4B24 C42852F4 */ lwc1	$f8, %lo(D_80BD52F4)($at)
/* 000258 0x80BD4B28 46128182 */ mul.s	$f6, $f16, $f18
/* 000259 0x80BD4B2C 00000000 */ nop
/* 000260 0x80BD4B30 46143102 */ mul.s	$f4, $f6, $f20
/* 000261 0x80BD4B34 00000000 */ nop
/* 000262 0x80BD4B38 4608C282 */ mul.s	$f10, $f24, $f8
/* 000263 0x80BD4B3C 460A2400 */ add.s	$f16, $f4, $f10
/* 000264 0x80BD4B40 0C021BF7 */ jal	randZeroOne
/* 000265 0x80BD4B44 E7B000CC */ swc1	$f16, 0XCC($sp)
/* 000266 0x80BD4B48 3C014190 */ lui	$at, 0x4190
/* 000267 0x80BD4B4C 44819000 */ mtc1	$at, $f18
/* 000268 0x80BD4B50 3C014080 */ lui	$at, 0x4080
/* 000269 0x80BD4B54 44814000 */ mtc1	$at, $f8
/* 000270 0x80BD4B58 46120182 */ mul.s	$f6, $f0, $f18
/* 000271 0x80BD4B5C 46083100 */ add.s	$f4, $f6, $f8
/* 000272 0x80BD4B60 0C021BF7 */ jal	randZeroOne
/* 000273 0x80BD4B64 E7A400D0 */ swc1	$f4, 0XD0($sp)
/* 000274 0x80BD4B68 461E0281 */ sub.s	$f10, $f0, $f30
/* 000275 0x80BD4B6C 3C014040 */ lui	$at, 0x4040
/* 000276 0x80BD4B70 44818000 */ mtc1	$at, $f16
/* 000277 0x80BD4B74 3C0180BD */ lui	$at, %hi(D_80BD52F8)
/* 000278 0x80BD4B78 C42452F8 */ lwc1	$f4, %lo(D_80BD52F8)($at)
/* 000279 0x80BD4B7C 46105482 */ mul.s	$f18, $f10, $f16
/* 000280 0x80BD4B80 00000000 */ nop
/* 000281 0x80BD4B84 46169182 */ mul.s	$f6, $f18, $f22
/* 000282 0x80BD4B88 00000000 */ nop
/* 000283 0x80BD4B8C 461AB202 */ mul.s	$f8, $f22, $f26
/* 000284 0x80BD4B90 00000000 */ nop
/* 000285 0x80BD4B94 46044282 */ mul.s	$f10, $f8, $f4
/* 000286 0x80BD4B98 460A3400 */ add.s	$f16, $f6, $f10
/* 000287 0x80BD4B9C 0C021BE8 */ jal	rand
/* 000288 0x80BD4BA0 E7B000D4 */ swc1	$f16, 0XD4($sp)
/* 000289 0x80BD4BA4 304E0003 */ andi	$t6, $v0, 0X3
/* 000290 0x80BD4BA8 00117843 */ sra	$t7, $s1, 1
/* 000291 0x80BD4BAC 01CF1821 */ addu	$v1, $t6, $t7
/* 000292 0x80BD4BB0 24630006 */ addiu	$v1, $v1, 0X6
/* 000293 0x80BD4BB4 00034C00 */ sll	$t1, $v1, 16
/* 000294 0x80BD4BB8 32300003 */ andi	$s0, $s1, 0X3
/* 000295 0x80BD4BBC 16000003 */ bnez	$s0, .L80BD4BCC
/* 000296 0x80BD4BC0 00094C03 */ sra	$t1, $t1, 16
/* 000297 0x80BD4BC4 10000002 */ b	.L80BD4BD0
/* 000298 0x80BD4BC8 24020020 */ li	$v0, 0X20
.L80BD4BCC:
/* 000299 0x80BD4BCC 24020040 */ li	$v0, 0X40
.L80BD4BD0:
/* 000300 0x80BD4BD0 0003C400 */ sll	$t8, $v1, 16
/* 000301 0x80BD4BD4 0018CC03 */ sra	$t9, $t8, 16
/* 000302 0x80BD4BD8 2B21000F */ slti	$at, $t9, 0XF
/* 000303 0x80BD4BDC 14200007 */ bnez	$at, .L80BD4BFC
/* 000304 0x80BD4BE0 02A02025 */ move	$a0, $s5
/* 000305 0x80BD4BE4 34420001 */ ori	$v0, $v0, 0X1
/* 000306 0x80BD4BE8 00021400 */ sll	$v0, $v0, 16
/* 000307 0x80BD4BEC 00021403 */ sra	$v0, $v0, 16
/* 000308 0x80BD4BF0 24030001 */ li	$v1, 0X1
/* 000309 0x80BD4BF4 10000003 */ b	.L80BD4C04
/* 000310 0x80BD4BF8 2408FDDA */ li	$t0, -0X226
.L80BD4BFC:
/* 000311 0x80BD4BFC 00001825 */ move	$v1, $zero
/* 000312 0x80BD4C00 2408FE70 */ li	$t0, -0X190
.L80BD4C04:
/* 000313 0x80BD4C04 240A001E */ li	$t2, 0X1E
/* 000314 0x80BD4C08 240B0032 */ li	$t3, 0X32
/* 000315 0x80BD4C0C 240CFFFF */ li	$t4, -0X1
/* 000316 0x80BD4C10 240D0203 */ li	$t5, 0X203
/* 000317 0x80BD4C14 AFAD0038 */ sw	$t5, 0X38($sp)
/* 000318 0x80BD4C18 AFAC0034 */ sw	$t4, 0X34($sp)
/* 000319 0x80BD4C1C AFAB0030 */ sw	$t3, 0X30($sp)
/* 000320 0x80BD4C20 AFAA0018 */ sw	$t2, 0X18($sp)
/* 000321 0x80BD4C24 02802825 */ move	$a1, $s4
/* 000322 0x80BD4C28 02C03025 */ move	$a2, $s6
/* 000323 0x80BD4C2C 02803825 */ move	$a3, $s4
/* 000324 0x80BD4C30 AFA80010 */ sw	$t0, 0X10($sp)
/* 000325 0x80BD4C34 AFA20014 */ sw	$v0, 0X14($sp)
/* 000326 0x80BD4C38 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000327 0x80BD4C3C AFA00020 */ sw	$zero, 0X20($sp)
/* 000328 0x80BD4C40 AFA90024 */ sw	$t1, 0X24($sp)
/* 000329 0x80BD4C44 AFA30028 */ sw	$v1, 0X28($sp)
/* 000330 0x80BD4C48 AFA0002C */ sw	$zero, 0X2C($sp)
/* 000331 0x80BD4C4C 0C02CA04 */ jal	EffectSS_SpawnShard
/* 000332 0x80BD4C50 AFB7003C */ sw	$s7, 0X3C($sp)
/* 000333 0x80BD4C54 16000010 */ bnez	$s0, .L80BD4C98
/* 000334 0x80BD4C58 C7B200DC */ lwc1	$f18, 0XDC($sp)
/* 000335 0x80BD4C5C 3C0141F0 */ lui	$at, 0x41F0
/* 000336 0x80BD4C60 44814000 */ mtc1	$at, $f8
/* 000337 0x80BD4C64 240E0046 */ li	$t6, 0X46
/* 000338 0x80BD4C68 240F006E */ li	$t7, 0X6E
/* 000339 0x80BD4C6C 46089100 */ add.s	$f4, $f18, $f8
/* 000340 0x80BD4C70 24180001 */ li	$t8, 0X1
/* 000341 0x80BD4C74 AFB80018 */ sw	$t8, 0X18($sp)
/* 000342 0x80BD4C78 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000343 0x80BD4C7C E7A400DC */ swc1	$f4, 0XDC($sp)
/* 000344 0x80BD4C80 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000345 0x80BD4C84 02A02025 */ move	$a0, $s5
/* 000346 0x80BD4C88 02802825 */ move	$a1, $s4
/* 000347 0x80BD4C8C 3C064248 */ lui	$a2, 0x4248
/* 000348 0x80BD4C90 0C02EFEC */ jal	func_800BBFB0
/* 000349 0x80BD4C94 24070002 */ li	$a3, 0X2
.L80BD4C98:
/* 000350 0x80BD4C98 26520924 */ addiu	$s2, $s2, 0X924
/* 000351 0x80BD4C9C 00129400 */ sll	$s2, $s2, 16
/* 000352 0x80BD4CA0 26310001 */ addiu	$s1, $s1, 0X1
/* 000353 0x80BD4CA4 163EFF7A */ bne	$s1, $fp, .L80BD4A90
/* 000354 0x80BD4CA8 00129403 */ sra	$s2, $s2, 16
/* 000355 0x80BD4CAC 8FBF009C */ lw	$ra, 0X9C($sp)
/* 000356 0x80BD4CB0 D7B40048 */ ldc1	$f20, 0X48($sp)
/* 000357 0x80BD4CB4 D7B60050 */ ldc1	$f22, 0X50($sp)
/* 000358 0x80BD4CB8 D7B80058 */ ldc1	$f24, 0X58($sp)
/* 000359 0x80BD4CBC D7BA0060 */ ldc1	$f26, 0X60($sp)
/* 000360 0x80BD4CC0 D7BC0068 */ ldc1	$f28, 0X68($sp)
/* 000361 0x80BD4CC4 D7BE0070 */ ldc1	$f30, 0X70($sp)
/* 000362 0x80BD4CC8 8FB00078 */ lw	$s0, 0X78($sp)
/* 000363 0x80BD4CCC 8FB1007C */ lw	$s1, 0X7C($sp)
/* 000364 0x80BD4CD0 8FB20080 */ lw	$s2, 0X80($sp)
/* 000365 0x80BD4CD4 8FB30084 */ lw	$s3, 0X84($sp)
/* 000366 0x80BD4CD8 8FB40088 */ lw	$s4, 0X88($sp)
/* 000367 0x80BD4CDC 8FB5008C */ lw	$s5, 0X8C($sp)
/* 000368 0x80BD4CE0 8FB60090 */ lw	$s6, 0X90($sp)
/* 000369 0x80BD4CE4 8FB70094 */ lw	$s7, 0X94($sp)
/* 000370 0x80BD4CE8 8FBE0098 */ lw	$fp, 0X98($sp)
/* 000371 0x80BD4CEC 03E00008 */ jr	$ra
/* 000372 0x80BD4CF0 27BD00E8 */ addiu	$sp, $sp, 0XE8


.section .late_rodata

glabel D_80BD52F4
/* 000757 0x80BD52F4 */ .word	0x3D088889
glabel D_80BD52F8
/* 000758 0x80BD52F8 */ .word	0x3D088889
