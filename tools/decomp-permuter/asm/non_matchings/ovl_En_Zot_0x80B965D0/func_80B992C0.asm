glabel func_80B992C0
/* 002876 0x80B992C0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002877 0x80B992C4 AFB00018 */ sw	$s0, 0X18($sp)
/* 002878 0x80B992C8 00808025 */ move	$s0, $a0
/* 002879 0x80B992CC AFBF001C */ sw	$ra, 0X1C($sp)
/* 002880 0x80B992D0 AFA50024 */ sw	$a1, 0X24($sp)
/* 002881 0x80B992D4 02002025 */ move	$a0, $s0
/* 002882 0x80B992D8 0C02E134 */ jal	func_800B84D0
/* 002883 0x80B992DC 8FA50024 */ lw	$a1, 0X24($sp)
/* 002884 0x80B992E0 1040000F */ beqz	$v0, .L80B99320
/* 002885 0x80B992E4 02002025 */ move	$a0, $s0
/* 002886 0x80B992E8 3C0E80BA */ lui	$t6, %hi(func_80B991E4)
/* 002887 0x80B992EC 25CE91E4 */ addiu	$t6, $t6, %lo(func_80B991E4)
/* 002888 0x80B992F0 AE0E02F8 */ sw	$t6, 0X2F8($s0)
/* 002889 0x80B992F4 8FA50024 */ lw	$a1, 0X24($sp)
/* 002890 0x80B992F8 0C2E6458 */ jal	func_80B99160
/* 002891 0x80B992FC 02002025 */ move	$a0, $s0
/* 002892 0x80B99300 44802000 */ mtc1	$zero, $f4
/* 002893 0x80B99304 02002025 */ move	$a0, $s0
/* 002894 0x80B99308 00002825 */ move	$a1, $zero
/* 002895 0x80B9930C 00003025 */ move	$a2, $zero
/* 002896 0x80B99310 0C2E5AFB */ jal	func_80B96BEC
/* 002897 0x80B99314 E6040070 */ swc1	$f4, 0X70($s0)
/* 002898 0x80B99318 10000016 */ b	.L80B99374
/* 002899 0x80B9931C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B99320:
/* 002900 0x80B99320 24053000 */ li	$a1, 0X3000
/* 002901 0x80B99324 0C02DCC8 */ jal	Actor_IsLinkFacingActor
/* 002902 0x80B99328 8FA60024 */ lw	$a2, 0X24($sp)
/* 002903 0x80B9932C 1040000B */ beqz	$v0, .L80B9935C
/* 002904 0x80B99330 3C0142C8 */ lui	$at, 0x42C8
/* 002905 0x80B99334 C6060098 */ lwc1	$f6, 0X98($s0)
/* 002906 0x80B99338 44814000 */ mtc1	$at, $f8
/* 002907 0x80B9933C 02002025 */ move	$a0, $s0
/* 002908 0x80B99340 8FA50024 */ lw	$a1, 0X24($sp)
/* 002909 0x80B99344 4608303C */ c.lt.s	$f6, $f8
/* 002910 0x80B99348 00000000 */ nop
/* 002911 0x80B9934C 45020004 */ bc1fl .L80B99360
/* 002912 0x80B99350 3C013FC0 */ lui	$at, 0x3FC0
/* 002913 0x80B99354 0C02E185 */ jal	func_800B8614
/* 002914 0x80B99358 3C0642F0 */ lui	$a2, 0x42F0
.L80B9935C:
/* 002915 0x80B9935C 3C013FC0 */ lui	$at, 0x3FC0
.L80B99360:
/* 002916 0x80B99360 44815000 */ mtc1	$at, $f10
/* 002917 0x80B99364 02002025 */ move	$a0, $s0
/* 002918 0x80B99368 0C2E5BEC */ jal	func_80B96FB0
/* 002919 0x80B9936C E60A0070 */ swc1	$f10, 0X70($s0)
/* 002920 0x80B99370 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B99374:
/* 002921 0x80B99374 8FB00018 */ lw	$s0, 0X18($sp)
/* 002922 0x80B99378 27BD0020 */ addiu	$sp, $sp, 0X20
/* 002923 0x80B9937C 03E00008 */ jr	$ra
/* 002924 0x80B99380 00000000 */ nop

