glabel func_80B49DFC
/* 006419 0x80B49DFC 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 006420 0x80B49E00 AFB00020 */ sw	$s0, 0X20($sp)
/* 006421 0x80B49E04 00808025 */ move	$s0, $a0
/* 006422 0x80B49E08 AFBF0024 */ sw	$ra, 0X24($sp)
/* 006423 0x80B49E0C AFA50034 */ sw	$a1, 0X34($sp)
/* 006424 0x80B49E10 8FAE0034 */ lw	$t6, 0X34($sp)
/* 006425 0x80B49E14 26040370 */ addiu	$a0, $s0, 0X370
/* 006426 0x80B49E18 240507D0 */ li	$a1, 0X7D0
/* 006427 0x80B49E1C 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 006428 0x80B49E20 240601F4 */ li	$a2, 0X1F4
/* 006429 0x80B49E24 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 006430 0x80B49E28 AFAF0028 */ sw	$t7, 0X28($sp)
/* 006431 0x80B49E2C 86050092 */ lh	$a1, 0X92($s0)
/* 006432 0x80B49E30 86070370 */ lh	$a3, 0X370($s0)
/* 006433 0x80B49E34 24180028 */ li	$t8, 0X28
/* 006434 0x80B49E38 AFB80010 */ sw	$t8, 0X10($sp)
/* 006435 0x80B49E3C 260400BE */ addiu	$a0, $s0, 0XBE
/* 006436 0x80B49E40 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 006437 0x80B49E44 24060005 */ li	$a2, 0X5
/* 006438 0x80B49E48 8FA50028 */ lw	$a1, 0X28($sp)
/* 006439 0x80B49E4C 2604003C */ addiu	$a0, $s0, 0X3C
/* 006440 0x80B49E50 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 006441 0x80B49E54 24A5003C */ addiu	$a1, $a1, 0X3C
/* 006442 0x80B49E58 44822000 */ mtc1	$v0, $f4
/* 006443 0x80B49E5C 3C0180B5 */ lui	$at, %hi(D_80B4EF84)
/* 006444 0x80B49E60 C428EF84 */ lwc1	$f8, %lo(D_80B4EF84)($at)
/* 006445 0x80B49E64 468021A0 */ cvt.s.w	$f6, $f4
/* 006446 0x80B49E68 860B00BC */ lh	$t3, 0XBC($s0)
/* 006447 0x80B49E6C 26020324 */ addiu	$v0, $s0, 0X324
/* 006448 0x80B49E70 240CF448 */ li	$t4, -0XBB8
/* 006449 0x80B49E74 2418E0C0 */ li	$t8, -0X1F40
/* 006450 0x80B49E78 46083282 */ mul.s	$f10, $f6, $f8
/* 006451 0x80B49E7C 4600540D */ trunc.w.s	$f16, $f10
/* 006452 0x80B49E80 440A8000 */ mfc1	$t2, $f16
/* 006453 0x80B49E84 00000000 */ nop
/* 006454 0x80B49E88 014B1823 */ subu	$v1, $t2, $t3
/* 006455 0x80B49E8C 00031C00 */ sll	$v1, $v1, 16
/* 006456 0x80B49E90 00031C03 */ sra	$v1, $v1, 16
/* 006457 0x80B49E94 2861F448 */ slti	$at, $v1, -0XBB8
/* 006458 0x80B49E98 50200005 */ beqzl	$at, .L80B49EB0
/* 006459 0x80B49E9C 28610BB9 */ slti	$at, $v1, 0XBB9
/* 006460 0x80B49EA0 26020324 */ addiu	$v0, $s0, 0X324
/* 006461 0x80B49EA4 10000007 */ b	.L80B49EC4
/* 006462 0x80B49EA8 A44C0026 */ sh	$t4, 0X26($v0)
/* 006463 0x80B49EAC 28610BB9 */ slti	$at, $v1, 0XBB9
.L80B49EB0:
/* 006464 0x80B49EB0 14200003 */ bnez	$at, .L80B49EC0
/* 006465 0x80B49EB4 00602025 */ move	$a0, $v1
/* 006466 0x80B49EB8 10000001 */ b	.L80B49EC0
/* 006467 0x80B49EBC 24040BB8 */ li	$a0, 0XBB8
.L80B49EC0:
/* 006468 0x80B49EC0 A4440026 */ sh	$a0, 0X26($v0)
.L80B49EC4:
/* 006469 0x80B49EC4 860D0092 */ lh	$t5, 0X92($s0)
/* 006470 0x80B49EC8 860E00BE */ lh	$t6, 0XBE($s0)
/* 006471 0x80B49ECC 3C0180B5 */ lui	$at, %hi(D_80B4EF88)
/* 006472 0x80B49ED0 C426EF88 */ lwc1	$f6, %lo(D_80B4EF88)($at)
/* 006473 0x80B49ED4 01AE1823 */ subu	$v1, $t5, $t6
/* 006474 0x80B49ED8 00031C00 */ sll	$v1, $v1, 16
/* 006475 0x80B49EDC 00031C03 */ sra	$v1, $v1, 16
/* 006476 0x80B49EE0 44839000 */ mtc1	$v1, $f18
/* 006477 0x80B49EE4 00000000 */ nop
/* 006478 0x80B49EE8 46809120 */ cvt.s.w	$f4, $f18
/* 006479 0x80B49EEC 46062202 */ mul.s	$f8, $f4, $f6
/* 006480 0x80B49EF0 4600428D */ trunc.w.s	$f10, $f8
/* 006481 0x80B49EF4 44055000 */ mfc1	$a1, $f10
/* 006482 0x80B49EF8 00000000 */ nop
/* 006483 0x80B49EFC 00052C00 */ sll	$a1, $a1, 16
/* 006484 0x80B49F00 00052C03 */ sra	$a1, $a1, 16
/* 006485 0x80B49F04 28A1E0C0 */ slti	$at, $a1, -0X1F40
/* 006486 0x80B49F08 50200004 */ beqzl	$at, .L80B49F1C
/* 006487 0x80B49F0C 28A11F41 */ slti	$at, $a1, 0X1F41
/* 006488 0x80B49F10 10000007 */ b	.L80B49F30
/* 006489 0x80B49F14 A4580028 */ sh	$t8, 0X28($v0)
/* 006490 0x80B49F18 28A11F41 */ slti	$at, $a1, 0X1F41
.L80B49F1C:
/* 006491 0x80B49F1C 14200003 */ bnez	$at, .L80B49F2C
/* 006492 0x80B49F20 00A02025 */ move	$a0, $a1
/* 006493 0x80B49F24 10000001 */ b	.L80B49F2C
/* 006494 0x80B49F28 24041F40 */ li	$a0, 0X1F40
.L80B49F2C:
/* 006495 0x80B49F2C A4440028 */ sh	$a0, 0X28($v0)
.L80B49F30:
/* 006496 0x80B49F30 02002025 */ move	$a0, $s0
/* 006497 0x80B49F34 0C02E19F */ jal	func_800B867C
/* 006498 0x80B49F38 8FA50034 */ lw	$a1, 0X34($sp)
/* 006499 0x80B49F3C 5040000E */ beqzl	$v0, .L80B49F78
/* 006500 0x80B49F40 8FBF0024 */ lw	$ra, 0X24($sp)
/* 006501 0x80B49F44 96190116 */ lhu	$t9, 0X116($s0)
/* 006502 0x80B49F48 2401332D */ li	$at, 0X332D
/* 006503 0x80B49F4C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 006504 0x80B49F50 17210006 */ bne	$t9, $at, .L80B49F6C
/* 006505 0x80B49F54 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 006506 0x80B49F58 90480F2E */ lbu	$t0, 0XF2E($v0)
/* 006507 0x80B49F5C 240A332E */ li	$t2, 0X332E
/* 006508 0x80B49F60 35090010 */ ori	$t1, $t0, 0X10
/* 006509 0x80B49F64 A0490F2E */ sb	$t1, 0XF2E($v0)
/* 006510 0x80B49F68 A60A0116 */ sh	$t2, 0X116($s0)
.L80B49F6C:
/* 006511 0x80B49F6C 0C2D26F4 */ jal	func_80B49BD0
/* 006512 0x80B49F70 02002025 */ move	$a0, $s0
/* 006513 0x80B49F74 8FBF0024 */ lw	$ra, 0X24($sp)
.L80B49F78:
/* 006514 0x80B49F78 8FB00020 */ lw	$s0, 0X20($sp)
/* 006515 0x80B49F7C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 006516 0x80B49F80 03E00008 */ jr	$ra
/* 006517 0x80B49F84 00000000 */ nop

