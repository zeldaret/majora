glabel func_80A939E8
/* 003246 0x80A939E8 27BDFF68 */ addiu	$sp, $sp, -0X98
/* 003247 0x80A939EC AFB60040 */ sw	$s6, 0X40($sp)
/* 003248 0x80A939F0 AFB1002C */ sw	$s1, 0X2C($sp)
/* 003249 0x80A939F4 00808825 */ move	$s1, $a0
/* 003250 0x80A939F8 00A0B025 */ move	$s6, $a1
/* 003251 0x80A939FC AFBF004C */ sw	$ra, 0X4C($sp)
/* 003252 0x80A93A00 AFBE0048 */ sw	$fp, 0X48($sp)
/* 003253 0x80A93A04 AFB70044 */ sw	$s7, 0X44($sp)
/* 003254 0x80A93A08 AFB5003C */ sw	$s5, 0X3C($sp)
/* 003255 0x80A93A0C AFB40038 */ sw	$s4, 0X38($sp)
/* 003256 0x80A93A10 AFB30034 */ sw	$s3, 0X34($sp)
/* 003257 0x80A93A14 AFB20030 */ sw	$s2, 0X30($sp)
/* 003258 0x80A93A18 AFB00028 */ sw	$s0, 0X28($sp)
/* 003259 0x80A93A1C F7B40020 */ sdc1	$f20, 0X20($sp)
/* 003260 0x80A93A20 8EC21CCC */ lw	$v0, 0X1CCC($s6)
/* 003261 0x80A93A24 862E0274 */ lh	$t6, 0X274($s1)
/* 003262 0x80A93A28 8ED30000 */ lw	$s3, 0X0($s6)
/* 003263 0x80A93A2C 25CFFFA6 */ addiu	$t7, $t6, -0X5A
/* 003264 0x80A93A30 2DE1000A */ sltiu	$at, $t7, 0XA
/* 003265 0x80A93A34 102000DF */ beqz	$at, .L80A93DB4
/* 003266 0x80A93A38 000F7880 */ sll	$t7, $t7, 2
/* 003267 0x80A93A3C 3C0180A9 */ lui	$at, %hi(jtbl_D_80A94338)
/* 003268 0x80A93A40 002F0821 */ addu	$at, $at, $t7
/* 003269 0x80A93A44 8C2F4338 */ lw	$t7, %lo(jtbl_D_80A94338)($at)
/* 003270 0x80A93A48 01E00008 */ jr	$t7
/* 003271 0x80A93A4C 00000000 */ nop
glabel L80A93A50
.L80A93A50:
/* 003272 0x80A93A50 C4440024 */ lwc1	$f4, 0X24($v0)
/* 003273 0x80A93A54 3C014120 */ lui	$at, 0x4120
/* 003274 0x80A93A58 44815000 */ mtc1	$at, $f10
/* 003275 0x80A93A5C C4480028 */ lwc1	$f8, 0X28($v0)
/* 003276 0x80A93A60 4600218D */ trunc.w.s	$f6, $f4
/* 003277 0x80A93A64 C444002C */ lwc1	$f4, 0X2C($v0)
/* 003278 0x80A93A68 26300168 */ addiu	$s0, $s1, 0X168
/* 003279 0x80A93A6C 460A4401 */ sub.s	$f16, $f8, $f10
/* 003280 0x80A93A70 44053000 */ mfc1	$a1, $f6
/* 003281 0x80A93A74 02002025 */ move	$a0, $s0
/* 003282 0x80A93A78 4600218D */ trunc.w.s	$f6, $f4
/* 003283 0x80A93A7C 00052C00 */ sll	$a1, $a1, 16
/* 003284 0x80A93A80 00052C03 */ sra	$a1, $a1, 16
/* 003285 0x80A93A84 4600848D */ trunc.w.s	$f18, $f16
/* 003286 0x80A93A88 44073000 */ mfc1	$a3, $f6
/* 003287 0x80A93A8C 44069000 */ mfc1	$a2, $f18
/* 003288 0x80A93A90 00073C00 */ sll	$a3, $a3, 16
/* 003289 0x80A93A94 00073C03 */ sra	$a3, $a3, 16
/* 003290 0x80A93A98 00063400 */ sll	$a2, $a2, 16
/* 003291 0x80A93A9C 0C0406BF */ jal	Lights_SetPositionalLightPosition
/* 003292 0x80A93AA0 00063403 */ sra	$a2, $a2, 16
/* 003293 0x80A93AA4 86290282 */ lh	$t1, 0X282($s1)
/* 003294 0x80A93AA8 02002025 */ move	$a0, $s0
/* 003295 0x80A93AAC 240500F5 */ li	$a1, 0XF5
/* 003296 0x80A93AB0 240600F5 */ li	$a2, 0XF5
/* 003297 0x80A93AB4 240700C8 */ li	$a3, 0XC8
/* 003298 0x80A93AB8 0C0406B2 */ jal	Lights_SetPositionalLightColorAndRadius
/* 003299 0x80A93ABC AFA90010 */ sw	$t1, 0X10($sp)
/* 003300 0x80A93AC0 100000BD */ b	.L80A93DB8
/* 003301 0x80A93AC4 8FBF004C */ lw	$ra, 0X4C($sp)
glabel L80A93AC8
.L80A93AC8:
/* 003302 0x80A93AC8 8E6A02C0 */ lw	$t2, 0X2C0($s3)
/* 003303 0x80A93ACC 3C0B0408 */ lui	$t3, 0x0408
/* 003304 0x80A93AD0 256BAFB0 */ addiu	$t3, $t3, -0X5050
/* 003305 0x80A93AD4 AE2A0148 */ sw	$t2, 0X148($s1)
/* 003306 0x80A93AD8 3C0180A9 */ lui	$at, %hi(D_80A94360)
/* 003307 0x80A93ADC 3C17DA38 */ lui	$s7, 0xDA38
/* 003308 0x80A93AE0 3C14FA00 */ lui	$s4, 0xFA00
/* 003309 0x80A93AE4 369400FF */ ori	$s4, $s4, 0XFF
/* 003310 0x80A93AE8 36F70003 */ ori	$s7, $s7, 0X3
/* 003311 0x80A93AEC C4344360 */ lwc1	$f20, %lo(D_80A94360)($at)
/* 003312 0x80A93AF0 AFA20090 */ sw	$v0, 0X90($sp)
/* 003313 0x80A93AF4 AFAB0050 */ sw	$t3, 0X50($sp)
/* 003314 0x80A93AF8 0000A825 */ move	$s5, $zero
/* 003315 0x80A93AFC 02209025 */ move	$s2, $s1
/* 003316 0x80A93B00 3C1EFB00 */ lui	$fp, 0xFB00
.L80A93B04:
/* 003317 0x80A93B04 C64C020C */ lwc1	$f12, 0X20C($s2)
/* 003318 0x80A93B08 C64E0210 */ lwc1	$f14, 0X210($s2)
/* 003319 0x80A93B0C 8E460214 */ lw	$a2, 0X214($s2)
/* 003320 0x80A93B10 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 003321 0x80A93B14 00003825 */ move	$a3, $zero
/* 003322 0x80A93B18 4406A000 */ mfc1	$a2, $f20
/* 003323 0x80A93B1C 4600A306 */ mov.s	$f12, $f20
/* 003324 0x80A93B20 4600A386 */ mov.s	$f14, $f20
/* 003325 0x80A93B24 0C0600E7 */ jal	SysMatrix_InsertScale
/* 003326 0x80A93B28 24070001 */ li	$a3, 0X1
/* 003327 0x80A93B2C 2404C000 */ li	$a0, -0X4000
/* 003328 0x80A93B30 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 003329 0x80A93B34 24050001 */ li	$a1, 0X1
/* 003330 0x80A93B38 86240278 */ lh	$a0, 0X278($s1)
/* 003331 0x80A93B3C 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 003332 0x80A93B40 24050001 */ li	$a1, 0X1
/* 003333 0x80A93B44 8E220148 */ lw	$v0, 0X148($s1)
/* 003334 0x80A93B48 244C0008 */ addiu	$t4, $v0, 0X8
/* 003335 0x80A93B4C AE2C0148 */ sw	$t4, 0X148($s1)
/* 003336 0x80A93B50 AC570000 */ sw	$s7, 0X0($v0)
/* 003337 0x80A93B54 8EC40000 */ lw	$a0, 0X0($s6)
/* 003338 0x80A93B58 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 003339 0x80A93B5C 00408025 */ move	$s0, $v0
/* 003340 0x80A93B60 AE020004 */ sw	$v0, 0X4($s0)
/* 003341 0x80A93B64 8E220148 */ lw	$v0, 0X148($s1)
/* 003342 0x80A93B68 3C0E1C1C */ lui	$t6, 0x1C1C
/* 003343 0x80A93B6C 35CE1CFF */ ori	$t6, $t6, 0X1CFF
/* 003344 0x80A93B70 244D0008 */ addiu	$t5, $v0, 0X8
/* 003345 0x80A93B74 AE2D0148 */ sw	$t5, 0X148($s1)
/* 003346 0x80A93B78 AC4E0004 */ sw	$t6, 0X4($v0)
/* 003347 0x80A93B7C AC540000 */ sw	$s4, 0X0($v0)
/* 003348 0x80A93B80 8E220148 */ lw	$v0, 0X148($s1)
/* 003349 0x80A93B84 3C01F5F5 */ lui	$at, 0xF5F5
/* 003350 0x80A93B88 3421C800 */ ori	$at, $at, 0XC800
/* 003351 0x80A93B8C 244F0008 */ addiu	$t7, $v0, 0X8
/* 003352 0x80A93B90 AE2F0148 */ sw	$t7, 0X148($s1)
/* 003353 0x80A93B94 AC5E0000 */ sw	$fp, 0X0($v0)
/* 003354 0x80A93B98 86380282 */ lh	$t8, 0X282($s1)
/* 003355 0x80A93B9C 3C0AE200 */ lui	$t2, 0xE200
/* 003356 0x80A93BA0 354A001C */ ori	$t2, $t2, 0X1C
/* 003357 0x80A93BA4 331900FF */ andi	$t9, $t8, 0XFF
/* 003358 0x80A93BA8 03214025 */ or	$t0, $t9, $at
/* 003359 0x80A93BAC AC480004 */ sw	$t0, 0X4($v0)
/* 003360 0x80A93BB0 8E220148 */ lw	$v0, 0X148($s1)
/* 003361 0x80A93BB4 3C0BC810 */ lui	$t3, 0xC810
/* 003362 0x80A93BB8 356B49D8 */ ori	$t3, $t3, 0X49D8
/* 003363 0x80A93BBC 24490008 */ addiu	$t1, $v0, 0X8
/* 003364 0x80A93BC0 AE290148 */ sw	$t1, 0X148($s1)
/* 003365 0x80A93BC4 AC4B0004 */ sw	$t3, 0X4($v0)
/* 003366 0x80A93BC8 AC4A0000 */ sw	$t2, 0X0($v0)
/* 003367 0x80A93BCC 8E220148 */ lw	$v0, 0X148($s1)
/* 003368 0x80A93BD0 3C0DDE00 */ lui	$t5, 0xDE00
/* 003369 0x80A93BD4 26B5000C */ addiu	$s5, $s5, 0XC
/* 003370 0x80A93BD8 244C0008 */ addiu	$t4, $v0, 0X8
/* 003371 0x80A93BDC AE2C0148 */ sw	$t4, 0X148($s1)
/* 003372 0x80A93BE0 AC4D0000 */ sw	$t5, 0X0($v0)
/* 003373 0x80A93BE4 8FAE0050 */ lw	$t6, 0X50($sp)
/* 003374 0x80A93BE8 2652000C */ addiu	$s2, $s2, 0XC
/* 003375 0x80A93BEC AC4E0004 */ sw	$t6, 0X4($v0)
/* 003376 0x80A93BF0 8E2F0148 */ lw	$t7, 0X148($s1)
/* 003377 0x80A93BF4 2AA10048 */ slti	$at, $s5, 0X48
/* 003378 0x80A93BF8 1420FFC2 */ bnez	$at, .L80A93B04
/* 003379 0x80A93BFC AE6F02C0 */ sw	$t7, 0X2C0($s3)
/* 003380 0x80A93C00 8E380254 */ lw	$t8, 0X254($s1)
/* 003381 0x80A93C04 0000A025 */ move	$s4, $zero
/* 003382 0x80A93C08 0000A825 */ move	$s5, $zero
/* 003383 0x80A93C0C 1300004C */ beqz	$t8, .L80A93D40
/* 003384 0x80A93C10 3C120402 */ lui	$s2, 0x0402
/* 003385 0x80A93C14 3C010001 */ lui	$at, 0x0001
/* 003386 0x80A93C18 342187FC */ ori	$at, $at, 0X87FC
/* 003387 0x80A93C1C 02C1C821 */ addu	$t9, $s6, $at
/* 003388 0x80A93C20 AFB90050 */ sw	$t9, 0X50($sp)
/* 003389 0x80A93C24 26523210 */ addiu	$s2, $s2, 0X3210
.L80A93C28:
/* 003390 0x80A93C28 0C021BF7 */ jal	randZeroOne
/* 003391 0x80A93C2C 00000000 */ nop
/* 003392 0x80A93C30 8E280254 */ lw	$t0, 0X254($s1)
/* 003393 0x80A93C34 3C0180A9 */ lui	$at, %hi(D_80A94364)
/* 003394 0x80A93C38 C4284364 */ lwc1	$f8, %lo(D_80A94364)($at)
/* 003395 0x80A93C3C 01151021 */ addu	$v0, $t0, $s5
/* 003396 0x80A93C40 C44C0000 */ lwc1	$f12, 0X0($v0)
/* 003397 0x80A93C44 46080502 */ mul.s	$f20, $f0, $f8
/* 003398 0x80A93C48 C44E0004 */ lwc1	$f14, 0X4($v0)
/* 003399 0x80A93C4C 8C460008 */ lw	$a2, 0X8($v0)
/* 003400 0x80A93C50 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 003401 0x80A93C54 00003825 */ move	$a3, $zero
/* 003402 0x80A93C58 4406A000 */ mfc1	$a2, $f20
/* 003403 0x80A93C5C 4600A306 */ mov.s	$f12, $f20
/* 003404 0x80A93C60 4600A386 */ mov.s	$f14, $f20
/* 003405 0x80A93C64 0C0600E7 */ jal	SysMatrix_InsertScale
/* 003406 0x80A93C68 24070001 */ li	$a3, 0X1
/* 003407 0x80A93C6C 8E6202C0 */ lw	$v0, 0X2C0($s3)
/* 003408 0x80A93C70 3C0AFA00 */ lui	$t2, 0xFA00
/* 003409 0x80A93C74 354A0080 */ ori	$t2, $t2, 0X80
/* 003410 0x80A93C78 24490008 */ addiu	$t1, $v0, 0X8
/* 003411 0x80A93C7C AE6902C0 */ sw	$t1, 0X2C0($s3)
/* 003412 0x80A93C80 AC4A0000 */ sw	$t2, 0X0($v0)
/* 003413 0x80A93C84 862B0282 */ lh	$t3, 0X282($s1)
/* 003414 0x80A93C88 3C018080 */ lui	$at, 0x8080
/* 003415 0x80A93C8C 34218000 */ ori	$at, $at, 0X8000
/* 003416 0x80A93C90 000B6043 */ sra	$t4, $t3, 1
/* 003417 0x80A93C94 318D00FF */ andi	$t5, $t4, 0XFF
/* 003418 0x80A93C98 01A17025 */ or	$t6, $t5, $at
/* 003419 0x80A93C9C AC4E0004 */ sw	$t6, 0X4($v0)
/* 003420 0x80A93CA0 8E6202C0 */ lw	$v0, 0X2C0($s3)
/* 003421 0x80A93CA4 3C01E6E6 */ lui	$at, 0xE6E6
/* 003422 0x80A93CA8 3421B400 */ ori	$at, $at, 0XB400
/* 003423 0x80A93CAC 244F0008 */ addiu	$t7, $v0, 0X8
/* 003424 0x80A93CB0 AE6F02C0 */ sw	$t7, 0X2C0($s3)
/* 003425 0x80A93CB4 AC5E0000 */ sw	$fp, 0X0($v0)
/* 003426 0x80A93CB8 86380282 */ lh	$t8, 0X282($s1)
/* 003427 0x80A93CBC 331900FF */ andi	$t9, $t8, 0XFF
/* 003428 0x80A93CC0 03214025 */ or	$t0, $t9, $at
/* 003429 0x80A93CC4 AC480004 */ sw	$t0, 0X4($v0)
/* 003430 0x80A93CC8 0C04B0B7 */ jal	func_8012C2DC
/* 003431 0x80A93CCC 8EC40000 */ lw	$a0, 0X0($s6)
/* 003432 0x80A93CD0 8FA40050 */ lw	$a0, 0X50($sp)
/* 003433 0x80A93CD4 0C060091 */ jal	SysMatrix_InsertMatrix
/* 003434 0x80A93CD8 24050001 */ li	$a1, 0X1
/* 003435 0x80A93CDC 86290278 */ lh	$t1, 0X278($s1)
/* 003436 0x80A93CE0 00145080 */ sll	$t2, $s4, 2
/* 003437 0x80A93CE4 24050001 */ li	$a1, 0X1
/* 003438 0x80A93CE8 012A2021 */ addu	$a0, $t1, $t2
/* 003439 0x80A93CEC 00042400 */ sll	$a0, $a0, 16
/* 003440 0x80A93CF0 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 003441 0x80A93CF4 00042403 */ sra	$a0, $a0, 16
/* 003442 0x80A93CF8 8E6202C0 */ lw	$v0, 0X2C0($s3)
/* 003443 0x80A93CFC 244B0008 */ addiu	$t3, $v0, 0X8
/* 003444 0x80A93D00 AE6B02C0 */ sw	$t3, 0X2C0($s3)
/* 003445 0x80A93D04 AC570000 */ sw	$s7, 0X0($v0)
/* 003446 0x80A93D08 8EC40000 */ lw	$a0, 0X0($s6)
/* 003447 0x80A93D0C 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 003448 0x80A93D10 00408025 */ move	$s0, $v0
/* 003449 0x80A93D14 AE020004 */ sw	$v0, 0X4($s0)
/* 003450 0x80A93D18 8E6202C0 */ lw	$v0, 0X2C0($s3)
/* 003451 0x80A93D1C 3C0DDE00 */ lui	$t5, 0xDE00
/* 003452 0x80A93D20 26940001 */ addiu	$s4, $s4, 0X1
/* 003453 0x80A93D24 244C0008 */ addiu	$t4, $v0, 0X8
/* 003454 0x80A93D28 AE6C02C0 */ sw	$t4, 0X2C0($s3)
/* 003455 0x80A93D2C AC520004 */ sw	$s2, 0X4($v0)
/* 003456 0x80A93D30 AC4D0000 */ sw	$t5, 0X0($v0)
/* 003457 0x80A93D34 24010040 */ li	$at, 0X40
/* 003458 0x80A93D38 1681FFBB */ bne	$s4, $at, .L80A93C28
/* 003459 0x80A93D3C 26B5000C */ addiu	$s5, $s5, 0XC
.L80A93D40:
/* 003460 0x80A93D40 8FAE0090 */ lw	$t6, 0X90($sp)
/* 003461 0x80A93D44 3C014120 */ lui	$at, 0x4120
/* 003462 0x80A93D48 44812000 */ mtc1	$at, $f4
/* 003463 0x80A93D4C C5CA0024 */ lwc1	$f10, 0X24($t6)
/* 003464 0x80A93D50 C5D20028 */ lwc1	$f18, 0X28($t6)
/* 003465 0x80A93D54 26300168 */ addiu	$s0, $s1, 0X168
/* 003466 0x80A93D58 4600540D */ trunc.w.s	$f16, $f10
/* 003467 0x80A93D5C C5CA002C */ lwc1	$f10, 0X2C($t6)
/* 003468 0x80A93D60 02002025 */ move	$a0, $s0
/* 003469 0x80A93D64 46049181 */ sub.s	$f6, $f18, $f4
/* 003470 0x80A93D68 44058000 */ mfc1	$a1, $f16
/* 003471 0x80A93D6C 4600540D */ trunc.w.s	$f16, $f10
/* 003472 0x80A93D70 00052C00 */ sll	$a1, $a1, 16
/* 003473 0x80A93D74 00052C03 */ sra	$a1, $a1, 16
/* 003474 0x80A93D78 4600320D */ trunc.w.s	$f8, $f6
/* 003475 0x80A93D7C 44078000 */ mfc1	$a3, $f16
/* 003476 0x80A93D80 44064000 */ mfc1	$a2, $f8
/* 003477 0x80A93D84 00073C00 */ sll	$a3, $a3, 16
/* 003478 0x80A93D88 00073C03 */ sra	$a3, $a3, 16
/* 003479 0x80A93D8C 00063400 */ sll	$a2, $a2, 16
/* 003480 0x80A93D90 0C0406BF */ jal	Lights_SetPositionalLightPosition
/* 003481 0x80A93D94 00063403 */ sra	$a2, $a2, 16
/* 003482 0x80A93D98 86280282 */ lh	$t0, 0X282($s1)
/* 003483 0x80A93D9C 02002025 */ move	$a0, $s0
/* 003484 0x80A93DA0 240500FA */ li	$a1, 0XFA
/* 003485 0x80A93DA4 240600FA */ li	$a2, 0XFA
/* 003486 0x80A93DA8 24070064 */ li	$a3, 0X64
/* 003487 0x80A93DAC 0C0406B2 */ jal	Lights_SetPositionalLightColorAndRadius
/* 003488 0x80A93DB0 AFA80010 */ sw	$t0, 0X10($sp)
glabel L80A93DB4
.L80A93DB4:
/* 003489 0x80A93DB4 8FBF004C */ lw	$ra, 0X4C($sp)
.L80A93DB8:
/* 003490 0x80A93DB8 D7B40020 */ ldc1	$f20, 0X20($sp)
/* 003491 0x80A93DBC 8FB00028 */ lw	$s0, 0X28($sp)
/* 003492 0x80A93DC0 8FB1002C */ lw	$s1, 0X2C($sp)
/* 003493 0x80A93DC4 8FB20030 */ lw	$s2, 0X30($sp)
/* 003494 0x80A93DC8 8FB30034 */ lw	$s3, 0X34($sp)
/* 003495 0x80A93DCC 8FB40038 */ lw	$s4, 0X38($sp)
/* 003496 0x80A93DD0 8FB5003C */ lw	$s5, 0X3C($sp)
/* 003497 0x80A93DD4 8FB60040 */ lw	$s6, 0X40($sp)
/* 003498 0x80A93DD8 8FB70044 */ lw	$s7, 0X44($sp)
/* 003499 0x80A93DDC 8FBE0048 */ lw	$fp, 0X48($sp)
/* 003500 0x80A93DE0 03E00008 */ jr	$ra
/* 003501 0x80A93DE4 27BD0098 */ addiu	$sp, $sp, 0X98


.section .late_rodata

glabel jtbl_D_80A94338
/* 003842 0x80A94338 */ .word	L80A93DB4
/* 003843 0x80A9433C */ .word	L80A93A50
/* 003844 0x80A94340 */ .word	L80A93DB4
/* 003845 0x80A94344 */ .word	L80A93A50
/* 003846 0x80A94348 */ .word	L80A93DB4
/* 003847 0x80A9434C */ .word	L80A93AC8
/* 003848 0x80A94350 */ .word	L80A93DB4
/* 003849 0x80A94354 */ .word	L80A93DB4
/* 003850 0x80A94358 */ .word	L80A93DB4
/* 003851 0x80A9435C */ .word	L80A93DB4
glabel D_80A94360
/* 003852 0x80A94360 */ .word	0x3E99999A
glabel D_80A94364
/* 003853 0x80A94364 */ .word	0x3B23D70A
/* 003854 0x80A94368 */ .word	0x00000000
/* 003855 0x80A9436C */ .word	0x00000000
