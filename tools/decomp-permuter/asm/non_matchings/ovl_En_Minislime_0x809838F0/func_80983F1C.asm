glabel func_80983F1C
/* 000395 0x80983F1C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000396 0x80983F20 AFB00014 */ sw	$s0, 0X14($sp)
/* 000397 0x80983F24 00808025 */ move	$s0, $a0
/* 000398 0x80983F28 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000399 0x80983F2C AFB10018 */ sw	$s1, 0X18($sp)
/* 000400 0x80983F30 920E0170 */ lbu	$t6, 0X170($s0)
/* 000401 0x80983F34 92180171 */ lbu	$t8, 0X171($s0)
/* 000402 0x80983F38 92080172 */ lbu	$t0, 0X172($s0)
/* 000403 0x80983F3C 8CB11CCC */ lw	$s1, 0X1CCC($a1)
/* 000404 0x80983F40 8E0B0144 */ lw	$t3, 0X144($s0)
/* 000405 0x80983F44 3C01C000 */ lui	$at, 0xC000
/* 000406 0x80983F48 44802000 */ mtc1	$zero, $f4
/* 000407 0x80983F4C 44813000 */ mtc1	$at, $f6
/* 000408 0x80983F50 3C0A8098 */ lui	$t2, %hi(func_8098537C)
/* 000409 0x80983F54 254A537C */ addiu	$t2, $t2, %lo(func_8098537C)
/* 000410 0x80983F58 35CF0001 */ ori	$t7, $t6, 0X1
/* 000411 0x80983F5C 37190001 */ ori	$t9, $t8, 0X1
/* 000412 0x80983F60 35090001 */ ori	$t1, $t0, 0X1
/* 000413 0x80983F64 A20F0170 */ sb	$t7, 0X170($s0)
/* 000414 0x80983F68 A2190171 */ sb	$t9, 0X171($s0)
/* 000415 0x80983F6C A2090172 */ sb	$t1, 0X172($s0)
/* 000416 0x80983F70 E6040070 */ swc1	$f4, 0X70($s0)
/* 000417 0x80983F74 114B0026 */ beq	$t2, $t3, .L80984010
/* 000418 0x80983F78 E6060074 */ swc1	$f6, 0X74($s0)
/* 000419 0x80983F7C 3C018098 */ lui	$at, %hi(D_80985858)
/* 000420 0x80983F80 C4205858 */ lwc1	$f0, %lo(D_80985858)($at)
/* 000421 0x80983F84 3C018098 */ lui	$at, %hi(D_8098585C)
/* 000422 0x80983F88 02002025 */ move	$a0, $s0
/* 000423 0x80983F8C E6000058 */ swc1	$f0, 0X58($s0)
/* 000424 0x80983F90 E6000060 */ swc1	$f0, 0X60($s0)
/* 000425 0x80983F94 C428585C */ lwc1	$f8, %lo(D_8098585C)($at)
/* 000426 0x80983F98 02202825 */ move	$a1, $s1
/* 000427 0x80983F9C 0C02DB87 */ jal	Actor_XZDistanceBetweenActors
/* 000428 0x80983FA0 E608005C */ swc1	$f8, 0X5C($s0)
/* 000429 0x80983FA4 3C014361 */ lui	$at, 0x4361
/* 000430 0x80983FA8 44815000 */ mtc1	$at, $f10
/* 000431 0x80983FAC 02202025 */ move	$a0, $s1
/* 000432 0x80983FB0 460A003C */ c.lt.s	$f0, $f10
/* 000433 0x80983FB4 00000000 */ nop
/* 000434 0x80983FB8 45000015 */ bc1f .L80984010
/* 000435 0x80983FBC 00000000 */ nop
/* 000436 0x80983FC0 0C02DB35 */ jal	Actor_YawBetweenActors
/* 000437 0x80983FC4 02002825 */ move	$a1, $s0
/* 000438 0x80983FC8 00022400 */ sll	$a0, $v0, 16
/* 000439 0x80983FCC A7A20022 */ sh	$v0, 0X22($sp)
/* 000440 0x80983FD0 0C03FB61 */ jal	Math_Sins
/* 000441 0x80983FD4 00042403 */ sra	$a0, $a0, 16
/* 000442 0x80983FD8 3C014361 */ lui	$at, 0x4361
/* 000443 0x80983FDC 44818000 */ mtc1	$at, $f16
/* 000444 0x80983FE0 C6240024 */ lwc1	$f4, 0X24($s1)
/* 000445 0x80983FE4 46100482 */ mul.s	$f18, $f0, $f16
/* 000446 0x80983FE8 46049180 */ add.s	$f6, $f18, $f4
/* 000447 0x80983FEC E6060024 */ swc1	$f6, 0X24($s0)
/* 000448 0x80983FF0 0C03FB51 */ jal	Math_Coss
/* 000449 0x80983FF4 87A40022 */ lh	$a0, 0X22($sp)
/* 000450 0x80983FF8 3C014361 */ lui	$at, 0x4361
/* 000451 0x80983FFC 44814000 */ mtc1	$at, $f8
/* 000452 0x80984000 C630002C */ lwc1	$f16, 0X2C($s1)
/* 000453 0x80984004 46080282 */ mul.s	$f10, $f0, $f8
/* 000454 0x80984008 46105480 */ add.s	$f18, $f10, $f16
/* 000455 0x8098400C E612002C */ swc1	$f18, 0X2C($s0)
.L80984010:
/* 000456 0x80984010 3C0C8098 */ lui	$t4, %hi(func_80984030)
/* 000457 0x80984014 258C4030 */ addiu	$t4, $t4, %lo(func_80984030)
/* 000458 0x80984018 AE0C0144 */ sw	$t4, 0X144($s0)
/* 000459 0x8098401C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000460 0x80984020 8FB00014 */ lw	$s0, 0X14($sp)
/* 000461 0x80984024 8FB10018 */ lw	$s1, 0X18($sp)
/* 000462 0x80984028 03E00008 */ jr	$ra
/* 000463 0x8098402C 27BD0028 */ addiu	$sp, $sp, 0X28


.section .late_rodata

glabel D_80985858
/* 002010 0x80985858 */ .word	0x3DC28F5C
glabel D_8098585C
/* 002011 0x8098585C */ .word	0x3DDB22D2
