glabel func_8093DB90
/* 000500 0x8093DB90 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000501 0x8093DB94 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000502 0x8093DB98 AFA50024 */ sw	$a1, 0X24($sp)
/* 000503 0x8093DB9C 00803825 */ move	$a3, $a0
/* 000504 0x8093DBA0 84EE0166 */ lh	$t6, 0X166($a3)
/* 000505 0x8093DBA4 24E40024 */ addiu	$a0, $a3, 0X24
/* 000506 0x8093DBA8 24E50008 */ addiu	$a1, $a3, 0X8
/* 000507 0x8093DBAC 5DC0001C */ bgtzl	$t6, .L8093DC20
/* 000508 0x8093DBB0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000509 0x8093DBB4 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000510 0x8093DBB8 AFA70020 */ sw	$a3, 0X20($sp)
/* 000511 0x8093DBBC 8FA70020 */ lw	$a3, 0X20($sp)
/* 000512 0x8093DBC0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000513 0x8093DBC4 27A20018 */ addiu	$v0, $sp, 0X18
/* 000514 0x8093DBC8 88F80014 */ lwl	$t8, 0X14($a3)
/* 000515 0x8093DBCC 98F80017 */ lwr	$t8, 0X17($a3)
/* 000516 0x8093DBD0 24850880 */ addiu	$a1, $a0, 0X880
/* 000517 0x8093DBD4 AC580000 */ sw	$t8, 0X0($v0)
/* 000518 0x8093DBD8 94F80018 */ lhu	$t8, 0X18($a3)
/* 000519 0x8093DBDC 8C480000 */ lw	$t0, 0X0($v0)
/* 000520 0x8093DBE0 A4580004 */ sh	$t8, 0X4($v0)
/* 000521 0x8093DBE4 A8E800BC */ swl	$t0, 0XBC($a3)
/* 000522 0x8093DBE8 B8E800BF */ swr	$t0, 0XBF($a3)
/* 000523 0x8093DBEC 94480004 */ lhu	$t0, 0X4($v0)
/* 000524 0x8093DBF0 8CE60144 */ lw	$a2, 0X144($a3)
/* 000525 0x8093DBF4 A4E800C0 */ sh	$t0, 0XC0($a3)
/* 000526 0x8093DBF8 884A0000 */ lwl	$t2, 0X0($v0)
/* 000527 0x8093DBFC 984A0003 */ lwr	$t2, 0X3($v0)
/* 000528 0x8093DC00 A8EA0030 */ swl	$t2, 0X30($a3)
/* 000529 0x8093DC04 B8EA0033 */ swr	$t2, 0X33($a3)
/* 000530 0x8093DC08 944A0004 */ lhu	$t2, 0X4($v0)
/* 000531 0x8093DC0C 0C0318C5 */ jal	func_800C6314
/* 000532 0x8093DC10 A4EA0034 */ sh	$t2, 0X34($a3)
/* 000533 0x8093DC14 0C24F5D8 */ jal	func_8093D760
/* 000534 0x8093DC18 8FA40020 */ lw	$a0, 0X20($sp)
/* 000535 0x8093DC1C 8FBF0014 */ lw	$ra, 0X14($sp)
.L8093DC20:
/* 000536 0x8093DC20 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000537 0x8093DC24 03E00008 */ jr	$ra
/* 000538 0x8093DC28 00000000 */ nop

