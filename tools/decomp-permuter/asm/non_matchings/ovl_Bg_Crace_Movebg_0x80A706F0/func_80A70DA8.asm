glabel func_80A70DA8
/* 000430 0x80A70DA8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000431 0x80A70DAC AFB00018 */ sw	$s0, 0X18($sp)
/* 000432 0x80A70DB0 00808025 */ move	$s0, $a0
/* 000433 0x80A70DB4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000434 0x80A70DB8 AFA50024 */ sw	$a1, 0X24($sp)
/* 000435 0x80A70DBC C604000C */ lwc1	$f4, 0XC($s0)
/* 000436 0x80A70DC0 C6060160 */ lwc1	$f6, 0X160($s0)
/* 000437 0x80A70DC4 02002025 */ move	$a0, $s0
/* 000438 0x80A70DC8 46062200 */ add.s	$f8, $f4, $f6
/* 000439 0x80A70DCC E6080028 */ swc1	$f8, 0X28($s0)
/* 000440 0x80A70DD0 0C29C301 */ jal	func_80A70C04
/* 000441 0x80A70DD4 8FA50024 */ lw	$a1, 0X24($sp)
/* 000442 0x80A70DD8 8E0E0170 */ lw	$t6, 0X170($s0)
/* 000443 0x80A70DDC 02002025 */ move	$a0, $s0
/* 000444 0x80A70DE0 31CF0001 */ andi	$t7, $t6, 0X1
/* 000445 0x80A70DE4 51E00004 */ beqzl	$t7, .L80A70DF8
/* 000446 0x80A70DE8 8605001C */ lh	$a1, 0X1C($s0)
/* 000447 0x80A70DEC 0C29C38B */ jal	func_80A70E2C
/* 000448 0x80A70DF0 8FA50024 */ lw	$a1, 0X24($sp)
/* 000449 0x80A70DF4 8605001C */ lh	$a1, 0X1C($s0)
.L80A70DF8:
/* 000450 0x80A70DF8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000451 0x80A70DFC 00052903 */ sra	$a1, $a1, 4
/* 000452 0x80A70E00 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000453 0x80A70E04 30A5007F */ andi	$a1, $a1, 0X7F
/* 000454 0x80A70E08 10400003 */ beqz	$v0, .L80A70E18
/* 000455 0x80A70E0C 02002025 */ move	$a0, $s0
/* 000456 0x80A70E10 0C29C3C5 */ jal	func_80A70F14
/* 000457 0x80A70E14 8FA50024 */ lw	$a1, 0X24($sp)
.L80A70E18:
/* 000458 0x80A70E18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000459 0x80A70E1C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000460 0x80A70E20 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000461 0x80A70E24 03E00008 */ jr	$ra
/* 000462 0x80A70E28 00000000 */ nop

