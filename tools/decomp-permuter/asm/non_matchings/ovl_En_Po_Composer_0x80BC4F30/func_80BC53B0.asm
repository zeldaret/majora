glabel func_80BC53B0
/* 000288 0x80BC53B0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000289 0x80BC53B4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000290 0x80BC53B8 00803825 */ move	$a3, $a0
/* 000291 0x80BC53BC 8CEE0004 */ lw	$t6, 0X4($a3)
/* 000292 0x80BC53C0 A4E0032C */ sh	$zero, 0X32C($a3)
/* 000293 0x80BC53C4 3C0580BC */ lui	$a1, %hi(D_80BC6808)
/* 000294 0x80BC53C8 35CF0001 */ ori	$t7, $t6, 0X1
/* 000295 0x80BC53CC ACEF0004 */ sw	$t7, 0X4($a3)
/* 000296 0x80BC53D0 AFA70018 */ sw	$a3, 0X18($sp)
/* 000297 0x80BC53D4 24A56808 */ addiu	$a1, $a1, %lo(D_80BC6808)
/* 000298 0x80BC53D8 24E401F0 */ addiu	$a0, $a3, 0X1F0
/* 000299 0x80BC53DC 0C02F717 */ jal	func_800BDC5C
/* 000300 0x80BC53E0 24060008 */ li	$a2, 0X8
/* 000301 0x80BC53E4 8FA70018 */ lw	$a3, 0X18($sp)
/* 000302 0x80BC53E8 3C1880BC */ lui	$t8, %hi(func_80BC5404)
/* 000303 0x80BC53EC 27185404 */ addiu	$t8, $t8, %lo(func_80BC5404)
/* 000304 0x80BC53F0 ACF80234 */ sw	$t8, 0X234($a3)
/* 000305 0x80BC53F4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000306 0x80BC53F8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000307 0x80BC53FC 03E00008 */ jr	$ra
/* 000308 0x80BC5400 00000000 */ nop

