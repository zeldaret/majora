glabel func_80A49A44
/* 000233 0x80A49A44 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 000234 0x80A49A48 AFB20038 */ sw	$s2, 0X38($sp)
/* 000235 0x80A49A4C AFB10034 */ sw	$s1, 0X34($sp)
/* 000236 0x80A49A50 27B10054 */ addiu	$s1, $sp, 0X54
/* 000237 0x80A49A54 00809025 */ move	$s2, $a0
/* 000238 0x80A49A58 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000239 0x80A49A5C AFB00030 */ sw	$s0, 0X30($sp)
/* 000240 0x80A49A60 AFA50064 */ sw	$a1, 0X64($sp)
/* 000241 0x80A49A64 3C0E80A5 */ lui	$t6, %hi(D_80A4C21C)
/* 000242 0x80A49A68 25CEC21C */ addiu	$t6, $t6, %lo(D_80A4C21C)
/* 000243 0x80A49A6C 8DD80000 */ lw	$t8, 0X0($t6)
/* 000244 0x80A49A70 3C063E4C */ lui	$a2, 0x3E4C
/* 000245 0x80A49A74 3C073C23 */ lui	$a3, 0x3C23
/* 000246 0x80A49A78 AE380000 */ sw	$t8, 0X0($s1)
/* 000247 0x80A49A7C 8DCF0004 */ lw	$t7, 0X4($t6)
/* 000248 0x80A49A80 3C0180A5 */ lui	$at, %hi(D_80A4C280)
/* 000249 0x80A49A84 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 000250 0x80A49A88 AE2F0004 */ sw	$t7, 0X4($s1)
/* 000251 0x80A49A8C 8DD80008 */ lw	$t8, 0X8($t6)
/* 000252 0x80A49A90 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000253 0x80A49A94 2644014C */ addiu	$a0, $s2, 0X14C
/* 000254 0x80A49A98 AE380008 */ sw	$t8, 0X8($s1)
/* 000255 0x80A49A9C 86590034 */ lh	$t9, 0X34($s2)
/* 000256 0x80A49AA0 86490162 */ lh	$t1, 0X162($s2)
/* 000257 0x80A49AA4 27281388 */ addiu	$t0, $t9, 0X1388
/* 000258 0x80A49AA8 11200005 */ beqz	$t1, .L80A49AC0
/* 000259 0x80A49AAC A6480034 */ sh	$t0, 0X34($s2)
/* 000260 0x80A49AB0 3C0180A5 */ lui	$at, %hi(D_80A4C27C)
/* 000261 0x80A49AB4 C424C27C */ lwc1	$f4, %lo(D_80A4C27C)($at)
/* 000262 0x80A49AB8 10000003 */ b	.L80A49AC8
/* 000263 0x80A49ABC E6440150 */ swc1	$f4, 0X150($s2)
.L80A49AC0:
/* 000264 0x80A49AC0 C426C280 */ lwc1	$f6, %lo(D_80A4C280)($at)
/* 000265 0x80A49AC4 E6460150 */ swc1	$f6, 0X150($s2)
.L80A49AC8:
/* 000266 0x80A49AC8 86420168 */ lh	$v0, 0X168($s2)
/* 000267 0x80A49ACC 3C0180A5 */ lui	$at, %hi(D_80A4C284)
/* 000268 0x80A49AD0 14400012 */ bnez	$v0, .L80A49B1C
/* 000269 0x80A49AD4 00000000 */ nop
/* 000270 0x80A49AD8 C648014C */ lwc1	$f8, 0X14C($s2)
/* 000271 0x80A49ADC C42AC284 */ lwc1	$f10, %lo(D_80A4C284)($at)
/* 000272 0x80A49AE0 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000273 0x80A49AE4 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000274 0x80A49AE8 460A403C */ c.lt.s	$f8, $f10
/* 000275 0x80A49AEC 00000000 */ nop
/* 000276 0x80A49AF0 4500000A */ bc1f .L80A49B1C
/* 000277 0x80A49AF4 00000000 */ nop
/* 000278 0x80A49AF8 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000279 0x80A49AFC 26440064 */ addiu	$a0, $s2, 0X64
/* 000280 0x80A49B00 3C0A80A5 */ lui	$t2, %hi(func_80A4A608)
/* 000281 0x80A49B04 24100003 */ li	$s0, 0X3
/* 000282 0x80A49B08 254AA608 */ addiu	$t2, $t2, %lo(func_80A4A608)
/* 000283 0x80A49B0C A6500160 */ sh	$s0, 0X160($s2)
/* 000284 0x80A49B10 A640016A */ sh	$zero, 0X16A($s2)
/* 000285 0x80A49B14 10000102 */ b	.L80A49F20
/* 000286 0x80A49B18 AE4A0144 */ sw	$t2, 0X144($s2)
.L80A49B1C:
/* 000287 0x80A49B1C 14400004 */ bnez	$v0, .L80A49B30
/* 000288 0x80A49B20 00000000 */ nop
/* 000289 0x80A49B24 44808000 */ mtc1	$zero, $f16
/* 000290 0x80A49B28 00000000 */ nop
/* 000291 0x80A49B2C E6500150 */ swc1	$f16, 0X150($s2)
.L80A49B30:
/* 000292 0x80A49B30 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 000293 0x80A49B34 8E450150 */ lw	$a1, 0X150($s2)
/* 000294 0x80A49B38 864B0172 */ lh	$t3, 0X172($s2)
/* 000295 0x80A49B3C 55600012 */ bnezl	$t3, .L80A49B88
/* 000296 0x80A49B40 964E0090 */ lhu	$t6, 0X90($s2)
/* 000297 0x80A49B44 96420090 */ lhu	$v0, 0X90($s2)
/* 000298 0x80A49B48 30420008 */ andi	$v0, $v0, 0X8
/* 000299 0x80A49B4C 5040000E */ beqzl	$v0, .L80A49B88
/* 000300 0x80A49B50 964E0090 */ lhu	$t6, 0X90($s2)
/* 000301 0x80A49B54 864C0162 */ lh	$t4, 0X162($s2)
/* 000302 0x80A49B58 5580000B */ bnezl	$t4, .L80A49B88
/* 000303 0x80A49B5C 964E0090 */ lhu	$t6, 0X90($s2)
/* 000304 0x80A49B60 864D0168 */ lh	$t5, 0X168($s2)
/* 000305 0x80A49B64 51A00008 */ beqzl	$t5, .L80A49B88
/* 000306 0x80A49B68 964E0090 */ lhu	$t6, 0X90($s2)
/* 000307 0x80A49B6C 10400005 */ beqz	$v0, .L80A49B84
/* 000308 0x80A49B70 3C0180A5 */ lui	$at, %hi(D_80A4C1C0)
/* 000309 0x80A49B74 44809000 */ mtc1	$zero, $f18
/* 000310 0x80A49B78 AC20C1C0 */ sw	$zero, %lo(D_80A4C1C0)($at)
/* 000311 0x80A49B7C A6400168 */ sh	$zero, 0X168($s2)
/* 000312 0x80A49B80 E6520150 */ swc1	$f18, 0X150($s2)
.L80A49B84:
/* 000313 0x80A49B84 964E0090 */ lhu	$t6, 0X90($s2)
.L80A49B88:
/* 000314 0x80A49B88 86420162 */ lh	$v0, 0X162($s2)
/* 000315 0x80A49B8C 31CF0001 */ andi	$t7, $t6, 0X1
/* 000316 0x80A49B90 51E0009E */ beqzl	$t7, .L80A49E0C
/* 000317 0x80A49B94 24100003 */ li	$s0, 0X3
/* 000318 0x80A49B98 8658016A */ lh	$t8, 0X16A($s2)
/* 000319 0x80A49B9C 24010001 */ li	$at, 0X1
/* 000320 0x80A49BA0 5700009A */ bnezl	$t8, .L80A49E0C
/* 000321 0x80A49BA4 24100003 */ li	$s0, 0X3
/* 000322 0x80A49BA8 14410047 */ bne	$v0, $at, .L80A49CC8
/* 000323 0x80A49BAC 2419000A */ li	$t9, 0XA
/* 000324 0x80A49BB0 0C060067 */ jal	SysMatrix_StatePush
/* 000325 0x80A49BB4 A659016A */ sh	$t9, 0X16A($s2)
/* 000326 0x80A49BB8 3C014380 */ lui	$at, 0x4380
/* 000327 0x80A49BBC 44816000 */ mtc1	$at, $f12
/* 000328 0x80A49BC0 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000329 0x80A49BC4 00000000 */ nop
/* 000330 0x80A49BC8 4600010D */ trunc.w.s	$f4, $f0
/* 000331 0x80A49BCC 864C0032 */ lh	$t4, 0X32($s2)
/* 000332 0x80A49BD0 00002825 */ move	$a1, $zero
/* 000333 0x80A49BD4 440B2000 */ mfc1	$t3, $f4
/* 000334 0x80A49BD8 00000000 */ nop
/* 000335 0x80A49BDC 016C2021 */ addu	$a0, $t3, $t4
/* 000336 0x80A49BE0 00042400 */ sll	$a0, $a0, 16
/* 000337 0x80A49BE4 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000338 0x80A49BE8 00042403 */ sra	$a0, $a0, 16
/* 000339 0x80A49BEC 3C014000 */ lui	$at, 0x4000
/* 000340 0x80A49BF0 44816000 */ mtc1	$at, $f12
/* 000341 0x80A49BF4 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000342 0x80A49BF8 00000000 */ nop
/* 000343 0x80A49BFC 3C014100 */ lui	$at, 0x4100
/* 000344 0x80A49C00 44813000 */ mtc1	$at, $f6
/* 000345 0x80A49C04 26500064 */ addiu	$s0, $s2, 0X64
/* 000346 0x80A49C08 02002825 */ move	$a1, $s0
/* 000347 0x80A49C0C 46060200 */ add.s	$f8, $f0, $f6
/* 000348 0x80A49C10 02202025 */ move	$a0, $s1
/* 000349 0x80A49C14 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 000350 0x80A49C18 E7A8005C */ swc1	$f8, 0X5C($sp)
/* 000351 0x80A49C1C 0C060073 */ jal	SysMatrix_StatePop
/* 000352 0x80A49C20 00000000 */ nop
/* 000353 0x80A49C24 3C0140C0 */ lui	$at, 0x40C0
/* 000354 0x80A49C28 44815000 */ mtc1	$at, $f10
/* 000355 0x80A49C2C 924D0164 */ lbu	$t5, 0X164($s2)
/* 000356 0x80A49C30 3C0180A5 */ lui	$at, %hi(D_80A4C288)
/* 000357 0x80A49C34 E64A0068 */ swc1	$f10, 0X68($s2)
/* 000358 0x80A49C38 C430C288 */ lwc1	$f16, %lo(D_80A4C288)($at)
/* 000359 0x80A49C3C 3C014120 */ lui	$at, 0x4120
/* 000360 0x80A49C40 15A00013 */ bnez	$t5, .L80A49C90
/* 000361 0x80A49C44 E6500074 */ swc1	$f16, 0X74($s2)
/* 000362 0x80A49C48 C6520028 */ lwc1	$f18, 0X28($s2)
/* 000363 0x80A49C4C 44812000 */ mtc1	$at, $f4
/* 000364 0x80A49C50 8E470024 */ lw	$a3, 0X24($s2)
/* 000365 0x80A49C54 8FA50064 */ lw	$a1, 0X64($sp)
/* 000366 0x80A49C58 46049181 */ sub.s	$f6, $f18, $f4
/* 000367 0x80A49C5C 240E0002 */ li	$t6, 0X2
/* 000368 0x80A49C60 2406015F */ li	$a2, 0X15F
/* 000369 0x80A49C64 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000370 0x80A49C68 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000371 0x80A49C6C C648002C */ lwc1	$f8, 0X2C($s2)
/* 000372 0x80A49C70 AFAE0024 */ sw	$t6, 0X24($sp)
/* 000373 0x80A49C74 AFA00020 */ sw	$zero, 0X20($sp)
/* 000374 0x80A49C78 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000375 0x80A49C7C AFA00018 */ sw	$zero, 0X18($sp)
/* 000376 0x80A49C80 0C02EB18 */ jal	Actor_Spawn
/* 000377 0x80A49C84 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000378 0x80A49C88 240F0001 */ li	$t7, 0X1
/* 000379 0x80A49C8C A24F0164 */ sb	$t7, 0X164($s2)
.L80A49C90:
/* 000380 0x80A49C90 44805000 */ mtc1	$zero, $f10
/* 000381 0x80A49C94 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000382 0x80A49C98 A6400168 */ sh	$zero, 0X168($s2)
/* 000383 0x80A49C9C 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000384 0x80A49CA0 02002025 */ move	$a0, $s0
/* 000385 0x80A49CA4 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000386 0x80A49CA8 E64A014C */ swc1	$f10, 0X14C($s2)
/* 000387 0x80A49CAC 3C1880A5 */ lui	$t8, %hi(func_80A4A608)
/* 000388 0x80A49CB0 24100003 */ li	$s0, 0X3
/* 000389 0x80A49CB4 2718A608 */ addiu	$t8, $t8, %lo(func_80A4A608)
/* 000390 0x80A49CB8 A6500160 */ sh	$s0, 0X160($s2)
/* 000391 0x80A49CBC A640016A */ sh	$zero, 0X16A($s2)
/* 000392 0x80A49CC0 10000097 */ b	.L80A49F20
/* 000393 0x80A49CC4 AE580144 */ sw	$t8, 0X144($s2)
.L80A49CC8:
/* 000394 0x80A49CC8 54400050 */ bnezl	$v0, .L80A49E0C
/* 000395 0x80A49CCC 24100003 */ li	$s0, 0X3
/* 000396 0x80A49CD0 86590168 */ lh	$t9, 0X168($s2)
/* 000397 0x80A49CD4 5320004D */ beqzl	$t9, .L80A49E0C
/* 000398 0x80A49CD8 24100003 */ li	$s0, 0X3
/* 000399 0x80A49CDC 92480085 */ lbu	$t0, 0X85($s2)
/* 000400 0x80A49CE0 24010032 */ li	$at, 0X32
/* 000401 0x80A49CE4 5501008F */ bnel	$t0, $at, .L80A49F24
/* 000402 0x80A49CE8 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000403 0x80A49CEC 864A0166 */ lh	$t2, 0X166($s2)
/* 000404 0x80A49CF0 24090064 */ li	$t1, 0X64
/* 000405 0x80A49CF4 A649016A */ sh	$t1, 0X16A($s2)
/* 000406 0x80A49CF8 15400030 */ bnez	$t2, .L80A49DBC
/* 000407 0x80A49CFC 8FA50064 */ lw	$a1, 0X64($sp)
/* 000408 0x80A49D00 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000409 0x80A49D04 00008025 */ move	$s0, $zero
/* 000410 0x80A49D08 AFA40040 */ sw	$a0, 0X40($sp)
/* 000411 0x80A49D0C 00008825 */ move	$s1, $zero
.L80A49D10:
/* 000412 0x80A49D10 C6500028 */ lwc1	$f16, 0X28($s2)
/* 000413 0x80A49D14 8E470024 */ lw	$a3, 0X24($s2)
/* 000414 0x80A49D18 240B0001 */ li	$t3, 0X1
/* 000415 0x80A49D1C E7B00010 */ swc1	$f16, 0X10($sp)
/* 000416 0x80A49D20 C652002C */ lwc1	$f18, 0X2C($s2)
/* 000417 0x80A49D24 8FA40040 */ lw	$a0, 0X40($sp)
/* 000418 0x80A49D28 8FA50064 */ lw	$a1, 0X64($sp)
/* 000419 0x80A49D2C AFAB0024 */ sw	$t3, 0X24($sp)
/* 000420 0x80A49D30 AFA00020 */ sw	$zero, 0X20($sp)
/* 000421 0x80A49D34 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000422 0x80A49D38 AFA00018 */ sw	$zero, 0X18($sp)
/* 000423 0x80A49D3C 2406015F */ li	$a2, 0X15F
/* 000424 0x80A49D40 0C02EB18 */ jal	Actor_Spawn
/* 000425 0x80A49D44 E7B20014 */ swc1	$f18, 0X14($sp)
/* 000426 0x80A49D48 3C014580 */ lui	$at, 0x4580
/* 000427 0x80A49D4C 44816000 */ mtc1	$at, $f12
/* 000428 0x80A49D50 0C05E570 */ jal	randPlusMinusPoint5Scaled
/* 000429 0x80A49D54 00000000 */ nop
/* 000430 0x80A49D58 4600010D */ trunc.w.s	$f4, $f0
/* 000431 0x80A49D5C 26310001 */ addiu	$s1, $s1, 0X1
/* 000432 0x80A49D60 24010005 */ li	$at, 0X5
/* 000433 0x80A49D64 440D2000 */ mfc1	$t5, $f4
/* 000434 0x80A49D68 00000000 */ nop
/* 000435 0x80A49D6C 25B83333 */ addiu	$t8, $t5, 0X3333
/* 000436 0x80A49D70 02188021 */ addu	$s0, $s0, $t8
/* 000437 0x80A49D74 00108400 */ sll	$s0, $s0, 16
/* 000438 0x80A49D78 1621FFE5 */ bne	$s1, $at, .L80A49D10
/* 000439 0x80A49D7C 00108403 */ sra	$s0, $s0, 16
/* 000440 0x80A49D80 02402025 */ move	$a0, $s2
/* 000441 0x80A49D84 0C02E3B2 */ jal	func_800B8EC8
/* 000442 0x80A49D88 2405180E */ li	$a1, 0X180E
/* 000443 0x80A49D8C 24040046 */ li	$a0, 0X46
/* 000444 0x80A49D90 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000445 0x80A49D94 2405001E */ li	$a1, 0X1E
/* 000446 0x80A49D98 A642016A */ sh	$v0, 0X16A($s2)
/* 000447 0x80A49D9C 8659016A */ lh	$t9, 0X16A($s2)
/* 000448 0x80A49DA0 02402025 */ move	$a0, $s2
/* 000449 0x80A49DA4 1320000B */ beqz	$t9, .L80A49DD4
/* 000450 0x80A49DA8 00000000 */ nop
/* 000451 0x80A49DAC 0C02E3B2 */ jal	func_800B8EC8
/* 000452 0x80A49DB0 240530AB */ li	$a1, 0X30AB
/* 000453 0x80A49DB4 10000007 */ b	.L80A49DD4
/* 000454 0x80A49DB8 00000000 */ nop
.L80A49DBC:
/* 000455 0x80A49DBC 8648016A */ lh	$t0, 0X16A($s2)
/* 000456 0x80A49DC0 02402025 */ move	$a0, $s2
/* 000457 0x80A49DC4 11000003 */ beqz	$t0, .L80A49DD4
/* 000458 0x80A49DC8 00000000 */ nop
/* 000459 0x80A49DCC 0C02E3B2 */ jal	func_800B8EC8
/* 000460 0x80A49DD0 240520B2 */ li	$a1, 0X20B2
.L80A49DD4:
/* 000461 0x80A49DD4 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 000462 0x80A49DD8 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 000463 0x80A49DDC 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000464 0x80A49DE0 26440064 */ addiu	$a0, $s2, 0X64
/* 000465 0x80A49DE4 44803000 */ mtc1	$zero, $f6
/* 000466 0x80A49DE8 3C0A80A5 */ lui	$t2, %hi(func_80A4A11C)
/* 000467 0x80A49DEC 24090002 */ li	$t1, 0X2
/* 000468 0x80A49DF0 254AA11C */ addiu	$t2, $t2, %lo(func_80A4A11C)
/* 000469 0x80A49DF4 A6400168 */ sh	$zero, 0X168($s2)
/* 000470 0x80A49DF8 A6490160 */ sh	$t1, 0X160($s2)
/* 000471 0x80A49DFC AE4A0144 */ sw	$t2, 0X144($s2)
/* 000472 0x80A49E00 10000047 */ b	.L80A49F20
/* 000473 0x80A49E04 E646014C */ swc1	$f6, 0X14C($s2)
/* 000474 0x80A49E08 24100003 */ li	$s0, 0X3
.L80A49E0C:
/* 000475 0x80A49E0C 52020045 */ beql	$s0, $v0, .L80A49F24
/* 000476 0x80A49E10 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000477 0x80A49E14 864B0168 */ lh	$t3, 0X168($s2)
/* 000478 0x80A49E18 51600042 */ beqzl	$t3, .L80A49F24
/* 000479 0x80A49E1C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000480 0x80A49E20 92420219 */ lbu	$v0, 0X219($s2)
/* 000481 0x80A49E24 304C0002 */ andi	$t4, $v0, 0X2
/* 000482 0x80A49E28 1180000F */ beqz	$t4, .L80A49E68
/* 000483 0x80A49E2C 00000000 */ nop
/* 000484 0x80A49E30 8E4E0244 */ lw	$t6, 0X244($s2)
/* 000485 0x80A49E34 304DFFFD */ andi	$t5, $v0, 0XFFFD
/* 000486 0x80A49E38 A24D0219 */ sb	$t5, 0X219($s2)
/* 000487 0x80A49E3C 8DCF0000 */ lw	$t7, 0X0($t6)
/* 000488 0x80A49E40 24011000 */ li	$at, 0X1000
/* 000489 0x80A49E44 24180001 */ li	$t8, 0X1
/* 000490 0x80A49E48 15E10007 */ bne	$t7, $at, .L80A49E68
/* 000491 0x80A49E4C 26450024 */ addiu	$a1, $s2, 0X24
/* 000492 0x80A49E50 A6400168 */ sh	$zero, 0X168($s2)
/* 000493 0x80A49E54 A2580148 */ sb	$t8, 0X148($s2)
/* 000494 0x80A49E58 8FA40064 */ lw	$a0, 0X64($sp)
/* 000495 0x80A49E5C 24060032 */ li	$a2, 0X32
/* 000496 0x80A49E60 0C03C15A */ jal	func_800F0568
/* 000497 0x80A49E64 240728A2 */ li	$a3, 0X28A2
.L80A49E68:
/* 000498 0x80A49E68 0C049017 */ jal	func_8012405C
/* 000499 0x80A49E6C 8FA40064 */ lw	$a0, 0X64($sp)
/* 000500 0x80A49E70 5040002C */ beqzl	$v0, .L80A49F24
/* 000501 0x80A49E74 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000502 0x80A49E78 92590218 */ lbu	$t9, 0X218($s2)
/* 000503 0x80A49E7C 02402025 */ move	$a0, $s2
/* 000504 0x80A49E80 33280004 */ andi	$t0, $t9, 0X4
/* 000505 0x80A49E84 51000027 */ beqzl	$t0, .L80A49F24
/* 000506 0x80A49E88 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000507 0x80A49E8C 0C02E3B2 */ jal	func_800B8EC8
/* 000508 0x80A49E90 2405180C */ li	$a1, 0X180C
/* 000509 0x80A49E94 3C01BF80 */ lui	$at, 0xBF80
/* 000510 0x80A49E98 44810000 */ mtc1	$at, $f0
/* 000511 0x80A49E9C C6480064 */ lwc1	$f8, 0X64($s2)
/* 000512 0x80A49EA0 3C01BF00 */ lui	$at, 0xBF00
/* 000513 0x80A49EA4 44819000 */ mtc1	$at, $f18
/* 000514 0x80A49EA8 46004282 */ mul.s	$f10, $f8, $f0
/* 000515 0x80A49EAC C6500068 */ lwc1	$f16, 0X68($s2)
/* 000516 0x80A49EB0 C646006C */ lwc1	$f6, 0X6C($s2)
/* 000517 0x80A49EB4 92490218 */ lbu	$t1, 0X218($s2)
/* 000518 0x80A49EB8 46128102 */ mul.s	$f4, $f16, $f18
/* 000519 0x80A49EBC 8E420120 */ lw	$v0, 0X120($s2)
/* 000520 0x80A49EC0 312BFFE9 */ andi	$t3, $t1, 0XFFE9
/* 000521 0x80A49EC4 46003202 */ mul.s	$f8, $f6, $f0
/* 000522 0x80A49EC8 A24B0218 */ sb	$t3, 0X218($s2)
/* 000523 0x80A49ECC 356C0008 */ ori	$t4, $t3, 0X8
/* 000524 0x80A49ED0 240D0020 */ li	$t5, 0X20
/* 000525 0x80A49ED4 240E0002 */ li	$t6, 0X2
/* 000526 0x80A49ED8 240F0064 */ li	$t7, 0X64
/* 000527 0x80A49EDC A24C0218 */ sb	$t4, 0X218($s2)
/* 000528 0x80A49EE0 AE4D0220 */ sw	$t5, 0X220($s2)
/* 000529 0x80A49EE4 A24E0225 */ sb	$t6, 0X225($s2)
/* 000530 0x80A49EE8 A64F0168 */ sh	$t7, 0X168($s2)
/* 000531 0x80A49EEC A6500162 */ sh	$s0, 0X162($s2)
/* 000532 0x80A49EF0 E64A0064 */ swc1	$f10, 0X64($s2)
/* 000533 0x80A49EF4 E6440068 */ swc1	$f4, 0X68($s2)
/* 000534 0x80A49EF8 10400009 */ beqz	$v0, .L80A49F20
/* 000535 0x80A49EFC E648006C */ swc1	$f8, 0X6C($s2)
/* 000536 0x80A49F00 84580000 */ lh	$t8, 0X0($v0)
/* 000537 0x80A49F04 2401015D */ li	$at, 0X15D
/* 000538 0x80A49F08 57010006 */ bnel	$t8, $at, .L80A49F24
/* 000539 0x80A49F0C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000540 0x80A49F10 8C590138 */ lw	$t9, 0X138($v0)
/* 000541 0x80A49F14 53200003 */ beqzl	$t9, .L80A49F24
/* 000542 0x80A49F18 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000543 0x80A49F1C A44003BA */ sh	$zero, 0X3BA($v0)
.L80A49F20:
/* 000544 0x80A49F20 8FBF003C */ lw	$ra, 0X3C($sp)
.L80A49F24:
/* 000545 0x80A49F24 8FB00030 */ lw	$s0, 0X30($sp)
/* 000546 0x80A49F28 8FB10034 */ lw	$s1, 0X34($sp)
/* 000547 0x80A49F2C 8FB20038 */ lw	$s2, 0X38($sp)
/* 000548 0x80A49F30 03E00008 */ jr	$ra
/* 000549 0x80A49F34 27BD0060 */ addiu	$sp, $sp, 0X60

