glabel func_80A87B48
/* 002378 0x80A87B48 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 002379 0x80A87B4C AFB00020 */ sw	$s0, 0X20($sp)
/* 002380 0x80A87B50 00808025 */ move	$s0, $a0
/* 002381 0x80A87B54 AFBF0024 */ sw	$ra, 0X24($sp)
/* 002382 0x80A87B58 AFA50064 */ sw	$a1, 0X64($sp)
/* 002383 0x80A87B5C 8FAE0064 */ lw	$t6, 0X64($sp)
/* 002384 0x80A87B60 24010001 */ li	$at, 0X1
/* 002385 0x80A87B64 02002025 */ move	$a0, $s0
/* 002386 0x80A87B68 8DC61CCC */ lw	$a2, 0X1CCC($t6)
/* 002387 0x80A87B6C AFA00034 */ sw	$zero, 0X34($sp)
/* 002388 0x80A87B70 86030364 */ lh	$v1, 0X364($s0)
/* 002389 0x80A87B74 10600008 */ beqz	$v1, .L80A87B98
/* 002390 0x80A87B78 00000000 */ nop
/* 002391 0x80A87B7C 1061000C */ beq	$v1, $at, .L80A87BB0
/* 002392 0x80A87B80 26040144 */ addiu	$a0, $s0, 0X144
/* 002393 0x80A87B84 24010002 */ li	$at, 0X2
/* 002394 0x80A87B88 5061004E */ beql	$v1, $at, .L80A87CC4
/* 002395 0x80A87B8C 86020370 */ lh	$v0, 0X370($s0)
/* 002396 0x80A87B90 1000007F */ b	.L80A87D90
/* 002397 0x80A87B94 8FA80034 */ lw	$t0, 0X34($sp)
.L80A87B98:
/* 002398 0x80A87B98 0C2A1A49 */ jal	func_80A86924
/* 002399 0x80A87B9C 2405000B */ li	$a1, 0XB
/* 002400 0x80A87BA0 860F0364 */ lh	$t7, 0X364($s0)
/* 002401 0x80A87BA4 25F80001 */ addiu	$t8, $t7, 0X1
/* 002402 0x80A87BA8 10000078 */ b	.L80A87D8C
/* 002403 0x80A87BAC A6180364 */ sh	$t8, 0X364($s0)
.L80A87BB0:
/* 002404 0x80A87BB0 8E050154 */ lw	$a1, 0X154($s0)
/* 002405 0x80A87BB4 0C04DE2E */ jal	func_801378B8
/* 002406 0x80A87BB8 AFA4002C */ sw	$a0, 0X2C($sp)
/* 002407 0x80A87BBC 1040002F */ beqz	$v0, .L80A87C7C
/* 002408 0x80A87BC0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 002409 0x80A87BC4 8FA20064 */ lw	$v0, 0X64($sp)
/* 002410 0x80A87BC8 84590810 */ lh	$t9, 0X810($v0)
/* 002411 0x80A87BCC 00194080 */ sll	$t0, $t9, 2
/* 002412 0x80A87BD0 00484821 */ addu	$t1, $v0, $t0
/* 002413 0x80A87BD4 0C037F37 */ jal	func_800DFCDC
/* 002414 0x80A87BD8 8D240800 */ lw	$a0, 0X800($t1)
/* 002415 0x80A87BDC 34018000 */ ori	$at, $zero, 0X8000
/* 002416 0x80A87BE0 00415021 */ addu	$t2, $v0, $at
/* 002417 0x80A87BE4 3C05801D */ lui	$a1, %hi(D_801D15B0)
/* 002418 0x80A87BE8 A7AA003E */ sh	$t2, 0X3E($sp)
/* 002419 0x80A87BEC 24A515B0 */ addiu	$a1, $a1, %lo(D_801D15B0)
/* 002420 0x80A87BF0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002421 0x80A87BF4 27A4004C */ addiu	$a0, $sp, 0X4C
/* 002422 0x80A87BF8 3C014220 */ lui	$at, 0x4220
/* 002423 0x80A87BFC 44812000 */ mtc1	$at, $f4
/* 002424 0x80A87C00 26040024 */ addiu	$a0, $s0, 0X24
/* 002425 0x80A87C04 87A5003E */ lh	$a1, 0X3E($sp)
/* 002426 0x80A87C08 27A6004C */ addiu	$a2, $sp, 0X4C
/* 002427 0x80A87C0C 27A70040 */ addiu	$a3, $sp, 0X40
/* 002428 0x80A87C10 0C040047 */ jal	Lib_TranslateAndRotateYVec3f
/* 002429 0x80A87C14 E7A40054 */ swc1	$f4, 0X54($sp)
/* 002430 0x80A87C18 3C014270 */ lui	$at, 0x4270
/* 002431 0x80A87C1C 44813000 */ mtc1	$at, $f6
/* 002432 0x80A87C20 3C073DA3 */ lui	$a3, 0x3DA3
/* 002433 0x80A87C24 34E7D70A */ ori	$a3, $a3, 0XD70A
/* 002434 0x80A87C28 26040394 */ addiu	$a0, $s0, 0X394
/* 002435 0x80A87C2C 27A50040 */ addiu	$a1, $sp, 0X40
/* 002436 0x80A87C30 3C064000 */ lui	$a2, 0x4000
/* 002437 0x80A87C34 0C2A1588 */ jal	func_80A85620
/* 002438 0x80A87C38 E7A60010 */ swc1	$f6, 0X10($sp)
/* 002439 0x80A87C3C 240B00A0 */ li	$t3, 0XA0
/* 002440 0x80A87C40 AFAB0010 */ sw	$t3, 0X10($sp)
/* 002441 0x80A87C44 8FA40064 */ lw	$a0, 0X64($sp)
/* 002442 0x80A87C48 24050001 */ li	$a1, 0X1
/* 002443 0x80A87C4C 240600A0 */ li	$a2, 0XA0
/* 002444 0x80A87C50 240700A0 */ li	$a3, 0XA0
/* 002445 0x80A87C54 0C05A89A */ jal	func_8016A268
/* 002446 0x80A87C58 AFA00014 */ sw	$zero, 0X14($sp)
/* 002447 0x80A87C5C 860E0364 */ lh	$t6, 0X364($s0)
/* 002448 0x80A87C60 240C0014 */ li	$t4, 0X14
/* 002449 0x80A87C64 240D000A */ li	$t5, 0XA
/* 002450 0x80A87C68 25CF0001 */ addiu	$t7, $t6, 0X1
/* 002451 0x80A87C6C A60C0370 */ sh	$t4, 0X370($s0)
/* 002452 0x80A87C70 A60D0372 */ sh	$t5, 0X372($s0)
/* 002453 0x80A87C74 10000045 */ b	.L80A87D8C
/* 002454 0x80A87C78 A60F0364 */ sh	$t7, 0X364($s0)
.L80A87C7C:
/* 002455 0x80A87C7C 0C04DE2E */ jal	func_801378B8
/* 002456 0x80A87C80 3C0541B0 */ lui	$a1, 0x41B0
/* 002457 0x80A87C84 10400041 */ beqz	$v0, .L80A87D8C
/* 002458 0x80A87C88 02002025 */ move	$a0, $s0
/* 002459 0x80A87C8C 0C02E3B2 */ jal	func_800B8EC8
/* 002460 0x80A87C90 24053906 */ li	$a1, 0X3906
/* 002461 0x80A87C94 3C014220 */ lui	$at, 0x4220
/* 002462 0x80A87C98 44814000 */ mtc1	$at, $f8
/* 002463 0x80A87C9C 3C073DCC */ lui	$a3, 0x3DCC
/* 002464 0x80A87CA0 34E7CCCD */ ori	$a3, $a3, 0XCCCD
/* 002465 0x80A87CA4 26040394 */ addiu	$a0, $s0, 0X394
/* 002466 0x80A87CA8 260501F8 */ addiu	$a1, $s0, 0X1F8
/* 002467 0x80A87CAC 3C063F80 */ lui	$a2, 0x3F80
/* 002468 0x80A87CB0 0C2A16A9 */ jal	func_80A85AA4
/* 002469 0x80A87CB4 E7A80010 */ swc1	$f8, 0X10($sp)
/* 002470 0x80A87CB8 10000035 */ b	.L80A87D90
/* 002471 0x80A87CBC 8FA80034 */ lw	$t0, 0X34($sp)
/* 002472 0x80A87CC0 86020370 */ lh	$v0, 0X370($s0)
.L80A87CC4:
/* 002473 0x80A87CC4 14400003 */ bnez	$v0, .L80A87CD4
/* 002474 0x80A87CC8 2458FFFF */ addiu	$t8, $v0, -0X1
/* 002475 0x80A87CCC 10000004 */ b	.L80A87CE0
/* 002476 0x80A87CD0 00001825 */ move	$v1, $zero
.L80A87CD4:
/* 002477 0x80A87CD4 A6180370 */ sh	$t8, 0X370($s0)
/* 002478 0x80A87CD8 86020370 */ lh	$v0, 0X370($s0)
/* 002479 0x80A87CDC 00401825 */ move	$v1, $v0
.L80A87CE0:
/* 002480 0x80A87CE0 10600026 */ beqz	$v1, .L80A87D7C
/* 002481 0x80A87CE4 3C18801F */ lui	$t8, %hi(gStaticContext)
/* 002482 0x80A87CE8 44828000 */ mtc1	$v0, $f16
/* 002483 0x80A87CEC 3C01437F */ lui	$at, 0x437F
/* 002484 0x80A87CF0 44811000 */ mtc1	$at, $f2
/* 002485 0x80A87CF4 468084A0 */ cvt.s.w	$f18, $f16
/* 002486 0x80A87CF8 3C014120 */ lui	$at, 0x4120
/* 002487 0x80A87CFC 44815000 */ mtc1	$at, $f10
/* 002488 0x80A87D00 44812000 */ mtc1	$at, $f4
/* 002489 0x80A87D04 3C09801F */ lui	$t1, %hi(gStaticContext)
/* 002490 0x80A87D08 8D293F60 */ lw	$t1, %lo(gStaticContext)($t1)
/* 002491 0x80A87D0C 46125001 */ sub.s	$f0, $f10, $f18
/* 002492 0x80A87D10 24010009 */ li	$at, 0X9
/* 002493 0x80A87D14 02002025 */ move	$a0, $s0
/* 002494 0x80A87D18 46000005 */ abs.s	$f0, $f0
/* 002495 0x80A87D1C 46040183 */ div.s	$f6, $f0, $f4
/* 002496 0x80A87D20 46023202 */ mul.s	$f8, $f6, $f2
/* 002497 0x80A87D24 46081401 */ sub.s	$f16, $f2, $f8
/* 002498 0x80A87D28 4600828D */ trunc.w.s	$f10, $f16
/* 002499 0x80A87D2C 44085000 */ mfc1	$t0, $f10
/* 002500 0x80A87D30 00000000 */ nop
/* 002501 0x80A87D34 A528045C */ sh	$t0, 0X45C($t1)
/* 002502 0x80A87D38 860A0370 */ lh	$t2, 0X370($s0)
/* 002503 0x80A87D3C 55410014 */ bnel	$t2, $at, .L80A87D90
/* 002504 0x80A87D40 8FA80034 */ lw	$t0, 0X34($sp)
/* 002505 0x80A87D44 960B034E */ lhu	$t3, 0X34E($s0)
/* 002506 0x80A87D48 AE0000C8 */ sw	$zero, 0XC8($s0)
/* 002507 0x80A87D4C 356D0208 */ ori	$t5, $t3, 0X208
/* 002508 0x80A87D50 A60D034E */ sh	$t5, 0X34E($s0)
/* 002509 0x80A87D54 31AEF7FF */ andi	$t6, $t5, 0XF7FF
/* 002510 0x80A87D58 A60E034E */ sh	$t6, 0X34E($s0)
/* 002511 0x80A87D5C 80CF0A87 */ lb	$t7, 0XA87($a2)
/* 002512 0x80A87D60 11E00002 */ beqz	$t7, .L80A87D6C
/* 002513 0x80A87D64 00000000 */ nop
/* 002514 0x80A87D68 A0C00A87 */ sb	$zero, 0XA87($a2)
.L80A87D6C:
/* 002515 0x80A87D6C 0C2A1A49 */ jal	func_80A86924
/* 002516 0x80A87D70 2405000C */ li	$a1, 0XC
/* 002517 0x80A87D74 10000006 */ b	.L80A87D90
/* 002518 0x80A87D78 8FA80034 */ lw	$t0, 0X34($sp)
.L80A87D7C:
/* 002519 0x80A87D7C 8F183F60 */ lw	$t8, %lo(gStaticContext)($t8)
/* 002520 0x80A87D80 24190001 */ li	$t9, 0X1
/* 002521 0x80A87D84 A7000454 */ sh	$zero, 0X454($t8)
/* 002522 0x80A87D88 AFB90034 */ sw	$t9, 0X34($sp)
.L80A87D8C:
/* 002523 0x80A87D8C 8FA80034 */ lw	$t0, 0X34($sp)
.L80A87D90:
/* 002524 0x80A87D90 24010001 */ li	$at, 0X1
/* 002525 0x80A87D94 3C0980A8 */ lui	$t1, %hi(func_80A87DC0)
/* 002526 0x80A87D98 15010003 */ bne	$t0, $at, .L80A87DA8
/* 002527 0x80A87D9C 25297DC0 */ addiu	$t1, $t1, %lo(func_80A87DC0)
/* 002528 0x80A87DA0 AE090378 */ sw	$t1, 0X378($s0)
/* 002529 0x80A87DA4 A6000364 */ sh	$zero, 0X364($s0)
.L80A87DA8:
/* 002530 0x80A87DA8 8FA20034 */ lw	$v0, 0X34($sp)
/* 002531 0x80A87DAC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 002532 0x80A87DB0 8FB00020 */ lw	$s0, 0X20($sp)
/* 002533 0x80A87DB4 27BD0060 */ addiu	$sp, $sp, 0X60
/* 002534 0x80A87DB8 03E00008 */ jr	$ra
/* 002535 0x80A87DBC 00000000 */ nop

