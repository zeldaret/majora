glabel func_80ACCAC0
/* 000404 0x80ACCAC0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000405 0x80ACCAC4 AFB00020 */ sw	$s0, 0X20($sp)
/* 000406 0x80ACCAC8 00808025 */ move	$s0, $a0
/* 000407 0x80ACCACC AFBF0024 */ sw	$ra, 0X24($sp)
/* 000408 0x80ACCAD0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000409 0x80ACCAD4 8E04021C */ lw	$a0, 0X21C($s0)
/* 000410 0x80ACCAD8 00042240 */ sll	$a0, $a0, 9
/* 000411 0x80ACCADC 00042400 */ sll	$a0, $a0, 16
/* 000412 0x80ACCAE0 0C03FB61 */ jal	Math_Sins
/* 000413 0x80ACCAE4 00042403 */ sra	$a0, $a0, 16
/* 000414 0x80ACCAE8 3C0142C8 */ lui	$at, 0x42C8
/* 000415 0x80ACCAEC 44813000 */ mtc1	$at, $f6
/* 000416 0x80ACCAF0 C60400C4 */ lwc1	$f4, 0XC4($s0)
/* 000417 0x80ACCAF4 02002025 */ move	$a0, $s0
/* 000418 0x80ACCAF8 46003202 */ mul.s	$f8, $f6, $f0
/* 000419 0x80ACCAFC 46082280 */ add.s	$f10, $f4, $f8
/* 000420 0x80ACCB00 E60A00C4 */ swc1	$f10, 0XC4($s0)
/* 000421 0x80ACCB04 0C2B3235 */ jal	func_80ACC8D4
/* 000422 0x80ACCB08 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000423 0x80ACCB0C 8FA2002C */ lw	$v0, 0X2C($sp)
/* 000424 0x80ACCB10 C610002C */ lwc1	$f16, 0X2C($s0)
/* 000425 0x80ACCB14 C6060024 */ lwc1	$f6, 0X24($s0)
/* 000426 0x80ACCB18 C4520008 */ lwc1	$f18, 0X8($v0)
/* 000427 0x80ACCB1C C4440000 */ lwc1	$f4, 0X0($v0)
/* 000428 0x80ACCB20 46128301 */ sub.s	$f12, $f16, $f18
/* 000429 0x80ACCB24 46043381 */ sub.s	$f14, $f6, $f4
/* 000430 0x80ACCB28 46006307 */ neg.s	$f12, $f12
/* 000431 0x80ACCB2C 0C060040 */ jal	atans_flip
/* 000432 0x80ACCB30 46007387 */ neg.s	$f14, $f14
/* 000433 0x80ACCB34 3C014000 */ lui	$at, 0x4000
/* 000434 0x80ACCB38 44814000 */ mtc1	$at, $f8
/* 000435 0x80ACCB3C C60A0224 */ lwc1	$f10, 0X224($s0)
/* 000436 0x80ACCB40 00022C00 */ sll	$a1, $v0, 16
/* 000437 0x80ACCB44 00052C03 */ sra	$a1, $a1, 16
/* 000438 0x80ACCB48 460A403C */ c.lt.s	$f8, $f10
/* 000439 0x80ACCB4C 26040032 */ addiu	$a0, $s0, 0X32
/* 000440 0x80ACCB50 2406000A */ li	$a2, 0XA
/* 000441 0x80ACCB54 24070200 */ li	$a3, 0X200
/* 000442 0x80ACCB58 45000009 */ bc1f .L80ACCB80
/* 000443 0x80ACCB5C 240F0080 */ li	$t7, 0X80
/* 000444 0x80ACCB60 240E0100 */ li	$t6, 0X100
/* 000445 0x80ACCB64 AFAE0010 */ sw	$t6, 0X10($sp)
/* 000446 0x80ACCB68 26040032 */ addiu	$a0, $s0, 0X32
/* 000447 0x80ACCB6C 24060002 */ li	$a2, 0X2
/* 000448 0x80ACCB70 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000449 0x80ACCB74 24070400 */ li	$a3, 0X400
/* 000450 0x80ACCB78 10000006 */ b	.L80ACCB94
/* 000451 0x80ACCB7C 00000000 */ nop
.L80ACCB80:
/* 000452 0x80ACCB80 24A52000 */ addiu	$a1, $a1, 0X2000
/* 000453 0x80ACCB84 00052C00 */ sll	$a1, $a1, 16
/* 000454 0x80ACCB88 00052C03 */ sra	$a1, $a1, 16
/* 000455 0x80ACCB8C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 000456 0x80ACCB90 AFAF0010 */ sw	$t7, 0X10($sp)
.L80ACCB94:
/* 000457 0x80ACCB94 0C2B324D */ jal	func_80ACC934
/* 000458 0x80ACCB98 02002025 */ move	$a0, $s0
/* 000459 0x80ACCB9C 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000460 0x80ACCBA0 02002025 */ move	$a0, $s0
/* 000461 0x80ACCBA4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000462 0x80ACCBA8 8FB00020 */ lw	$s0, 0X20($sp)
/* 000463 0x80ACCBAC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000464 0x80ACCBB0 03E00008 */ jr	$ra
/* 000465 0x80ACCBB4 00000000 */ nop

