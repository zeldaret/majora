glabel func_80A3F8D4
/* 001085 0x80A3F8D4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001086 0x80A3F8D8 AFB10020 */ sw	$s1, 0X20($sp)
/* 001087 0x80A3F8DC AFB0001C */ sw	$s0, 0X1C($sp)
/* 001088 0x80A3F8E0 00808025 */ move	$s0, $a0
/* 001089 0x80A3F8E4 00A08825 */ move	$s1, $a1
/* 001090 0x80A3F8E8 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001091 0x80A3F8EC AFA70034 */ sw	$a3, 0X34($sp)
/* 001092 0x80A3F8F0 02002025 */ move	$a0, $s0
/* 001093 0x80A3F8F4 0C28FC57 */ jal	func_80A3F15C
/* 001094 0x80A3F8F8 02202825 */ move	$a1, $s1
/* 001095 0x80A3F8FC 3C0142C8 */ lui	$at, 0x42C8
/* 001096 0x80A3F900 44812000 */ mtc1	$at, $f4
/* 001097 0x80A3F904 3C0141A0 */ lui	$at, 0x41A0
/* 001098 0x80A3F908 44813000 */ mtc1	$at, $f6
/* 001099 0x80A3F90C 02202025 */ move	$a0, $s1
/* 001100 0x80A3F910 02002825 */ move	$a1, $s0
/* 001101 0x80A3F914 240601F2 */ li	$a2, 0X1F2
/* 001102 0x80A3F918 24070006 */ li	$a3, 0X6
/* 001103 0x80A3F91C E7A40010 */ swc1	$f4, 0X10($sp)
/* 001104 0x80A3F920 0C28FCAF */ jal	func_80A3F2BC
/* 001105 0x80A3F924 E7A60014 */ swc1	$f6, 0X14($sp)
/* 001106 0x80A3F928 1440000E */ bnez	$v0, .L80A3F964
/* 001107 0x80A3F92C 00402825 */ move	$a1, $v0
/* 001108 0x80A3F930 3C0142C8 */ lui	$at, 0x42C8
/* 001109 0x80A3F934 44814000 */ mtc1	$at, $f8
/* 001110 0x80A3F938 3C0141A0 */ lui	$at, 0x41A0
/* 001111 0x80A3F93C 44815000 */ mtc1	$at, $f10
/* 001112 0x80A3F940 02202025 */ move	$a0, $s1
/* 001113 0x80A3F944 02002825 */ move	$a1, $s0
/* 001114 0x80A3F948 240601D5 */ li	$a2, 0X1D5
/* 001115 0x80A3F94C 24070004 */ li	$a3, 0X4
/* 001116 0x80A3F950 E7A80010 */ swc1	$f8, 0X10($sp)
/* 001117 0x80A3F954 0C28FCAF */ jal	func_80A3F2BC
/* 001118 0x80A3F958 E7AA0014 */ swc1	$f10, 0X14($sp)
/* 001119 0x80A3F95C 10400004 */ beqz	$v0, .L80A3F970
/* 001120 0x80A3F960 00402825 */ move	$a1, $v0
.L80A3F964:
/* 001121 0x80A3F964 0C02DB35 */ jal	Actor_YawBetweenActors
/* 001122 0x80A3F968 02002025 */ move	$a0, $s0
/* 001123 0x80A3F96C A6020016 */ sh	$v0, 0X16($s0)
.L80A3F970:
/* 001124 0x80A3F970 3C190002 */ lui	$t9, 0x0002
/* 001125 0x80A3F974 0331C821 */ addu	$t9, $t9, $s1
/* 001126 0x80A3F978 8F39877C */ lw	$t9, -0X7884($t9)
/* 001127 0x80A3F97C 02202025 */ move	$a0, $s1
/* 001128 0x80A3F980 02002825 */ move	$a1, $s0
/* 001129 0x80A3F984 0320F809 */ jalr	$t9
/* 001130 0x80A3F988 24060061 */ li	$a2, 0X61
/* 001131 0x80A3F98C 24020001 */ li	$v0, 0X1
/* 001132 0x80A3F990 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001133 0x80A3F994 8FB0001C */ lw	$s0, 0X1C($sp)
/* 001134 0x80A3F998 8FB10020 */ lw	$s1, 0X20($sp)
/* 001135 0x80A3F99C 03E00008 */ jr	$ra
/* 001136 0x80A3F9A0 27BD0028 */ addiu	$sp, $sp, 0X28

