glabel func_80C06208
/* 000486 0x80C06208 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 000487 0x80C0620C AFB5003C */ sw	$s5, 0X3C($sp)
/* 000488 0x80C06210 00A0A825 */ move	$s5, $a1
/* 000489 0x80C06214 AFBF004C */ sw	$ra, 0X4C($sp)
/* 000490 0x80C06218 AFBE0048 */ sw	$fp, 0X48($sp)
/* 000491 0x80C0621C AFB70044 */ sw	$s7, 0X44($sp)
/* 000492 0x80C06220 AFB60040 */ sw	$s6, 0X40($sp)
/* 000493 0x80C06224 AFB40038 */ sw	$s4, 0X38($sp)
/* 000494 0x80C06228 AFB30034 */ sw	$s3, 0X34($sp)
/* 000495 0x80C0622C AFB20030 */ sw	$s2, 0X30($sp)
/* 000496 0x80C06230 AFB1002C */ sw	$s1, 0X2C($sp)
/* 000497 0x80C06234 AFB00028 */ sw	$s0, 0X28($sp)
/* 000498 0x80C06238 F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000499 0x80C0623C F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000500 0x80C06240 00803025 */ move	$a2, $a0
/* 000501 0x80C06244 8EB00000 */ lw	$s0, 0X0($s5)
/* 000502 0x80C06248 24D201A4 */ addiu	$s2, $a2, 0X1A4
/* 000503 0x80C0624C 0C04B0A3 */ jal	func_8012C28C
/* 000504 0x80C06250 02002025 */ move	$a0, $s0
/* 000505 0x80C06254 0C04B0B7 */ jal	func_8012C2DC
/* 000506 0x80C06258 8EA40000 */ lw	$a0, 0X0($s5)
/* 000507 0x80C0625C 3C0180C0 */ lui	$at, %hi(D_80C06498)
/* 000508 0x80C06260 C4366498 */ lwc1	$f22, %lo(D_80C06498)($at)
/* 000509 0x80C06264 3C0141A0 */ lui	$at, 0x41A0
/* 000510 0x80C06268 4481A000 */ mtc1	$at, $f20
/* 000511 0x80C0626C 0000A025 */ move	$s4, $zero
/* 000512 0x80C06270 3C1EDE00 */ lui	$fp, 0xDE00
.L80C06274:
/* 000513 0x80C06274 924E0000 */ lbu	$t6, 0X0($s2)
/* 000514 0x80C06278 3C130408 */ lui	$s3, 0x0408
/* 000515 0x80C0627C 2673AB10 */ addiu	$s3, $s3, -0X54F0
/* 000516 0x80C06280 11C0005A */ beqz	$t6, .L80C063EC
/* 000517 0x80C06284 00003825 */ move	$a3, $zero
/* 000518 0x80C06288 3C010001 */ lui	$at, 0x0001
/* 000519 0x80C0628C 342187FC */ ori	$at, $at, 0X87FC
/* 000520 0x80C06290 3C170408 */ lui	$s7, 0x0408
/* 000521 0x80C06294 26F7AB58 */ addiu	$s7, $s7, -0X54A8
/* 000522 0x80C06298 02A1B021 */ addu	$s6, $s5, $at
/* 000523 0x80C0629C C64C0004 */ lwc1	$f12, 0X4($s2)
/* 000524 0x80C062A0 C64E0008 */ lwc1	$f14, 0X8($s2)
/* 000525 0x80C062A4 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000526 0x80C062A8 8E46000C */ lw	$a2, 0XC($s2)
/* 000527 0x80C062AC C64C0030 */ lwc1	$f12, 0X30($s2)
/* 000528 0x80C062B0 24070001 */ li	$a3, 0X1
/* 000529 0x80C062B4 44066000 */ mfc1	$a2, $f12
/* 000530 0x80C062B8 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000531 0x80C062BC 46006386 */ mov.s	$f14, $f12
/* 000532 0x80C062C0 8E0402C0 */ lw	$a0, 0X2C0($s0)
/* 000533 0x80C062C4 0C04AFDE */ jal	Gfx_CallSetupDL
/* 000534 0x80C062C8 24050014 */ li	$a1, 0X14
/* 000535 0x80C062CC AE0202C0 */ sw	$v0, 0X2C0($s0)
/* 000536 0x80C062D0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000537 0x80C062D4 3C18DB06 */ lui	$t8, 0xDB06
/* 000538 0x80C062D8 37180020 */ ori	$t8, $t8, 0X20
/* 000539 0x80C062DC 244F0008 */ addiu	$t7, $v0, 0X8
/* 000540 0x80C062E0 AE0F02C0 */ sw	$t7, 0X2C0($s0)
/* 000541 0x80C062E4 3C040408 */ lui	$a0, 0x0408
/* 000542 0x80C062E8 24849B10 */ addiu	$a0, $a0, -0X64F0
/* 000543 0x80C062EC AC580000 */ sw	$t8, 0X0($v0)
/* 000544 0x80C062F0 0C040141 */ jal	Lib_PtrSegToVirt
/* 000545 0x80C062F4 00408825 */ move	$s1, $v0
/* 000546 0x80C062F8 AE220004 */ sw	$v0, 0X4($s1)
/* 000547 0x80C062FC 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000548 0x80C06300 02C02025 */ move	$a0, $s6
/* 000549 0x80C06304 24590008 */ addiu	$t9, $v0, 0X8
/* 000550 0x80C06308 AE1902C0 */ sw	$t9, 0X2C0($s0)
/* 000551 0x80C0630C AC530004 */ sw	$s3, 0X4($v0)
/* 000552 0x80C06310 AC5E0000 */ sw	$fp, 0X0($v0)
/* 000553 0x80C06314 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000554 0x80C06318 3C09E700 */ lui	$t1, 0xE700
/* 000555 0x80C0631C 24480008 */ addiu	$t0, $v0, 0X8
/* 000556 0x80C06320 AE0802C0 */ sw	$t0, 0X2C0($s0)
/* 000557 0x80C06324 AC400004 */ sw	$zero, 0X4($v0)
/* 000558 0x80C06328 AC490000 */ sw	$t1, 0X0($v0)
/* 000559 0x80C0632C 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000560 0x80C06330 3C0BFA00 */ lui	$t3, 0xFA00
/* 000561 0x80C06334 240CFFFF */ li	$t4, -0X1
/* 000562 0x80C06338 244A0008 */ addiu	$t2, $v0, 0X8
/* 000563 0x80C0633C AE0A02C0 */ sw	$t2, 0X2C0($s0)
/* 000564 0x80C06340 AC4C0004 */ sw	$t4, 0X4($v0)
/* 000565 0x80C06344 AC4B0000 */ sw	$t3, 0X0($v0)
/* 000566 0x80C06348 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000567 0x80C0634C 3C0EFB00 */ lui	$t6, 0xFB00
/* 000568 0x80C06350 3C01FAB4 */ lui	$at, 0xFAB4
/* 000569 0x80C06354 244D0008 */ addiu	$t5, $v0, 0X8
/* 000570 0x80C06358 AE0D02C0 */ sw	$t5, 0X2C0($s0)
/* 000571 0x80C0635C AC4E0000 */ sw	$t6, 0X0($v0)
/* 000572 0x80C06360 864F0014 */ lh	$t7, 0X14($s2)
/* 000573 0x80C06364 3421FF00 */ ori	$at, $at, 0XFF00
/* 000574 0x80C06368 31F800FF */ andi	$t8, $t7, 0XFF
/* 000575 0x80C0636C 0301C825 */ or	$t9, $t8, $at
/* 000576 0x80C06370 AC590004 */ sw	$t9, 0X4($v0)
/* 000577 0x80C06374 0C060091 */ jal	SysMatrix_InsertMatrix
/* 000578 0x80C06378 24050001 */ li	$a1, 0X1
/* 000579 0x80C0637C 8EA8009C */ lw	$t0, 0X9C($s5)
/* 000580 0x80C06380 3C014F80 */ lui	$at, 0x4F80
/* 000581 0x80C06384 44882000 */ mtc1	$t0, $f4
/* 000582 0x80C06388 05010004 */ bgez	$t0, .L80C0639C
/* 000583 0x80C0638C 468021A0 */ cvt.s.w	$f6, $f4
/* 000584 0x80C06390 44814000 */ mtc1	$at, $f8
/* 000585 0x80C06394 00000000 */ nop
/* 000586 0x80C06398 46083180 */ add.s	$f6, $f6, $f8
.L80C0639C:
/* 000587 0x80C0639C 46143282 */ mul.s	$f10, $f6, $f20
/* 000588 0x80C063A0 24050001 */ li	$a1, 0X1
/* 000589 0x80C063A4 46165302 */ mul.s	$f12, $f10, $f22
/* 000590 0x80C063A8 0C0603A4 */ jal	SysMatrix_InsertZRotation_f
/* 000591 0x80C063AC 00000000 */ nop
/* 000592 0x80C063B0 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000593 0x80C063B4 3C0ADA38 */ lui	$t2, 0xDA38
/* 000594 0x80C063B8 354A0003 */ ori	$t2, $t2, 0X3
/* 000595 0x80C063BC 24490008 */ addiu	$t1, $v0, 0X8
/* 000596 0x80C063C0 AE0902C0 */ sw	$t1, 0X2C0($s0)
/* 000597 0x80C063C4 AC4A0000 */ sw	$t2, 0X0($v0)
/* 000598 0x80C063C8 8EA40000 */ lw	$a0, 0X0($s5)
/* 000599 0x80C063CC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000600 0x80C063D0 00408825 */ move	$s1, $v0
/* 000601 0x80C063D4 AE220004 */ sw	$v0, 0X4($s1)
/* 000602 0x80C063D8 8E0202C0 */ lw	$v0, 0X2C0($s0)
/* 000603 0x80C063DC 244B0008 */ addiu	$t3, $v0, 0X8
/* 000604 0x80C063E0 AE0B02C0 */ sw	$t3, 0X2C0($s0)
/* 000605 0x80C063E4 AC570004 */ sw	$s7, 0X4($v0)
/* 000606 0x80C063E8 AC5E0000 */ sw	$fp, 0X0($v0)
.L80C063EC:
/* 000607 0x80C063EC 26940001 */ addiu	$s4, $s4, 0X1
/* 000608 0x80C063F0 0014A400 */ sll	$s4, $s4, 16
/* 000609 0x80C063F4 0014A403 */ sra	$s4, $s4, 16
/* 000610 0x80C063F8 2A8100C8 */ slti	$at, $s4, 0XC8
/* 000611 0x80C063FC 1420FF9D */ bnez	$at, .L80C06274
/* 000612 0x80C06400 26520034 */ addiu	$s2, $s2, 0X34
/* 000613 0x80C06404 8FBF004C */ lw	$ra, 0X4C($sp)
/* 000614 0x80C06408 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000615 0x80C0640C D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000616 0x80C06410 8FB00028 */ lw	$s0, 0X28($sp)
/* 000617 0x80C06414 8FB1002C */ lw	$s1, 0X2C($sp)
/* 000618 0x80C06418 8FB20030 */ lw	$s2, 0X30($sp)
/* 000619 0x80C0641C 8FB30034 */ lw	$s3, 0X34($sp)
/* 000620 0x80C06420 8FB40038 */ lw	$s4, 0X38($sp)
/* 000621 0x80C06424 8FB5003C */ lw	$s5, 0X3C($sp)
/* 000622 0x80C06428 8FB60040 */ lw	$s6, 0X40($sp)
/* 000623 0x80C0642C 8FB70044 */ lw	$s7, 0X44($sp)
/* 000624 0x80C06430 8FBE0048 */ lw	$fp, 0X48($sp)
/* 000625 0x80C06434 03E00008 */ jr	$ra
/* 000626 0x80C06438 27BD0050 */ addiu	$sp, $sp, 0X50
/* 000627 0x80C0643C 00000000 */ nop

.section .late_rodata

glabel D_80C06498
/* 000650 0x80C06498 */ .word	0x3C8EFA35
/* 000651 0x80C0649C */ .word	0x00000000
