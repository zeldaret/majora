glabel func_808D2CDC
/* 002455 0x808D2CDC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002456 0x808D2CE0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002457 0x808D2CE4 00803025 */ move	$a2, $a0
/* 002458 0x808D2CE8 3C050600 */ lui	$a1, 0x0600
/* 002459 0x808D2CEC 24A50EA4 */ addiu	$a1, $a1, 0XEA4
/* 002460 0x808D2CF0 24C40144 */ addiu	$a0, $a2, 0X144
/* 002461 0x808D2CF4 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 002462 0x808D2CF8 AFA60018 */ sw	$a2, 0X18($sp)
/* 002463 0x808D2CFC 8FA60018 */ lw	$a2, 0X18($sp)
/* 002464 0x808D2D00 44800000 */ mtc1	$zero, $f0
/* 002465 0x808D2D04 3C0F808D */ lui	$t7, %hi(func_808D2D30)
/* 002466 0x808D2D08 84CE00BE */ lh	$t6, 0XBE($a2)
/* 002467 0x808D2D0C 25EF2D30 */ addiu	$t7, $t7, %lo(func_808D2D30)
/* 002468 0x808D2D10 ACCF0188 */ sw	$t7, 0X188($a2)
/* 002469 0x808D2D14 E4C00070 */ swc1	$f0, 0X70($a2)
/* 002470 0x808D2D18 E4C00068 */ swc1	$f0, 0X68($a2)
/* 002471 0x808D2D1C A4CE0032 */ sh	$t6, 0X32($a2)
/* 002472 0x808D2D20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002473 0x808D2D24 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002474 0x808D2D28 03E00008 */ jr	$ra
/* 002475 0x808D2D2C 00000000 */ nop

