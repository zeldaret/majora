glabel func_80B61C04
/* 000393 0x80B61C04 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000394 0x80B61C08 AFB00018 */ sw	$s0, 0X18($sp)
/* 000395 0x80B61C0C 00808025 */ move	$s0, $a0
/* 000396 0x80B61C10 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000397 0x80B61C14 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000398 0x80B61C18 860F0092 */ lh	$t7, 0X92($s0)
/* 000399 0x80B61C1C 3C0E80B6 */ lui	$t6, %hi(func_80B64B08)
/* 000400 0x80B61C20 34018000 */ ori	$at, $zero, 0X8000
/* 000401 0x80B61C24 25CE4B08 */ addiu	$t6, $t6, %lo(func_80B64B08)
/* 000402 0x80B61C28 01E1C021 */ addu	$t8, $t7, $at
/* 000403 0x80B61C2C AE0E013C */ sw	$t6, 0X13C($s0)
/* 000404 0x80B61C30 A61800BE */ sh	$t8, 0XBE($s0)
/* 000405 0x80B61C34 0C2D8645 */ jal	func_80B61914
/* 000406 0x80B61C38 02002025 */ move	$a0, $s0
/* 000407 0x80B61C3C 00001025 */ move	$v0, $zero
/* 000408 0x80B61C40 02001825 */ move	$v1, $s0
/* 000409 0x80B61C44 24040003 */ li	$a0, 0X3
.L80B61C48:
/* 000410 0x80B61C48 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000411 0x80B61C4C 24420001 */ addiu	$v0, $v0, 0X1
/* 000412 0x80B61C50 24630020 */ addiu	$v1, $v1, 0X20
/* 000413 0x80B61C54 1444FFFC */ bne	$v0, $a0, .L80B61C48
/* 000414 0x80B61C58 E464031C */ swc1	$f4, 0X31C($v1)
/* 000415 0x80B61C5C 44800000 */ mtc1	$zero, $f0
/* 000416 0x80B61C60 8619020E */ lh	$t9, 0X20E($s0)
/* 000417 0x80B61C64 3C0180B6 */ lui	$at, %hi(D_80B650B0)
/* 000418 0x80B61C68 E6000058 */ swc1	$f0, 0X58($s0)
/* 000419 0x80B61C6C C42650B0 */ lwc1	$f6, %lo(D_80B650B0)($at)
/* 000420 0x80B61C70 E6000060 */ swc1	$f0, 0X60($s0)
/* 000421 0x80B61C74 13200019 */ beqz	$t9, .L80B61CDC
/* 000422 0x80B61C78 E606005C */ swc1	$f6, 0X5C($s0)
/* 000423 0x80B61C7C 3C0180B6 */ lui	$at, %hi(D_80B650B4)
/* 000424 0x80B61C80 C42C50B4 */ lwc1	$f12, %lo(D_80B650B4)($at)
/* 000425 0x80B61C84 C6000024 */ lwc1	$f0, 0X24($s0)
/* 000426 0x80B61C88 C6080338 */ lwc1	$f8, 0X338($s0)
/* 000427 0x80B61C8C 3C014316 */ lui	$at, 0x4316
/* 000428 0x80B61C90 44813000 */ mtc1	$at, $f6
/* 000429 0x80B61C94 46080281 */ sub.s	$f10, $f0, $f8
/* 000430 0x80B61C98 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000431 0x80B61C9C 2606003C */ addiu	$a2, $s0, 0X3C
/* 000432 0x80B61CA0 27A70028 */ addiu	$a3, $sp, 0X28
/* 000433 0x80B61CA4 460C5402 */ mul.s	$f16, $f10, $f12
/* 000434 0x80B61CA8 46008480 */ add.s	$f18, $f16, $f0
/* 000435 0x80B61CAC E7B20028 */ swc1	$f18, 0X28($sp)
/* 000436 0x80B61CB0 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000437 0x80B61CB4 46062200 */ add.s	$f8, $f4, $f6
/* 000438 0x80B61CB8 E7A8002C */ swc1	$f8, 0X2C($sp)
/* 000439 0x80B61CBC C60A0340 */ lwc1	$f10, 0X340($s0)
/* 000440 0x80B61CC0 C602002C */ lwc1	$f2, 0X2C($s0)
/* 000441 0x80B61CC4 460A1401 */ sub.s	$f16, $f2, $f10
/* 000442 0x80B61CC8 460C8482 */ mul.s	$f18, $f16, $f12
/* 000443 0x80B61CCC 46029100 */ add.s	$f4, $f18, $f2
/* 000444 0x80B61CD0 E7A40030 */ swc1	$f4, 0X30($sp)
/* 000445 0x80B61CD4 0C05A5C3 */ jal	func_8016970C
/* 000446 0x80B61CD8 8605020E */ lh	$a1, 0X20E($s0)
.L80B61CDC:
/* 000447 0x80B61CDC 3C0880B6 */ lui	$t0, %hi(func_80B61CFC)
/* 000448 0x80B61CE0 25081CFC */ addiu	$t0, $t0, %lo(func_80B61CFC)
/* 000449 0x80B61CE4 AE080200 */ sw	$t0, 0X200($s0)
/* 000450 0x80B61CE8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000451 0x80B61CEC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000452 0x80B61CF0 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000453 0x80B61CF4 03E00008 */ jr	$ra
/* 000454 0x80B61CF8 00000000 */ nop

