glabel func_80BA7234
/* 001933 0x80BA7234 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 001934 0x80BA7238 AFB00020 */ sw	$s0, 0X20($sp)
/* 001935 0x80BA723C 00808025 */ move	$s0, $a0
/* 001936 0x80BA7240 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001937 0x80BA7244 AFA50044 */ sw	$a1, 0X44($sp)
/* 001938 0x80BA7248 8FAE0044 */ lw	$t6, 0X44($sp)
/* 001939 0x80BA724C 3C0280BA */ lui	$v0, %hi(func_80BA5E18)
/* 001940 0x80BA7250 24425E18 */ addiu	$v0, $v0, %lo(func_80BA5E18)
/* 001941 0x80BA7254 8DCF1CCC */ lw	$t7, 0X1CCC($t6)
/* 001942 0x80BA7258 8FA40044 */ lw	$a0, 0X44($sp)
/* 001943 0x80BA725C 02002825 */ move	$a1, $s0
/* 001944 0x80BA7260 AFAF003C */ sw	$t7, 0X3C($sp)
/* 001945 0x80BA7264 8E1801D4 */ lw	$t8, 0X1D4($s0)
/* 001946 0x80BA7268 3C0641F0 */ lui	$a2, 0x41F0
/* 001947 0x80BA726C 3C0741A0 */ lui	$a3, 0x41A0
/* 001948 0x80BA7270 14580011 */ bne	$v0, $t8, .L80BA72B8
/* 001949 0x80BA7274 2409001D */ li	$t1, 0X1D
/* 001950 0x80BA7278 861903F0 */ lh	$t9, 0X3F0($s0)
/* 001951 0x80BA727C 24010002 */ li	$at, 0X2
/* 001952 0x80BA7280 24080001 */ li	$t0, 0X1
/* 001953 0x80BA7284 1321000C */ beq	$t9, $at, .L80BA72B8
/* 001954 0x80BA7288 3C01420C */ lui	$at, 0x420C
/* 001955 0x80BA728C 44812000 */ mtc1	$at, $f4
/* 001956 0x80BA7290 01C02025 */ move	$a0, $t6
/* 001957 0x80BA7294 02002825 */ move	$a1, $s0
/* 001958 0x80BA7298 3C0641F0 */ lui	$a2, 0x41F0
/* 001959 0x80BA729C 3C0741A0 */ lui	$a3, 0x41A0
/* 001960 0x80BA72A0 AFA80014 */ sw	$t0, 0X14($sp)
/* 001961 0x80BA72A4 AFA20028 */ sw	$v0, 0X28($sp)
/* 001962 0x80BA72A8 0C02DE2E */ jal	func_800B78B8
/* 001963 0x80BA72AC E7A40010 */ swc1	$f4, 0X10($sp)
/* 001964 0x80BA72B0 10000008 */ b	.L80BA72D4
/* 001965 0x80BA72B4 8FA20028 */ lw	$v0, 0X28($sp)
.L80BA72B8:
/* 001966 0x80BA72B8 3C01420C */ lui	$at, 0x420C
/* 001967 0x80BA72BC 44813000 */ mtc1	$at, $f6
/* 001968 0x80BA72C0 AFA90014 */ sw	$t1, 0X14($sp)
/* 001969 0x80BA72C4 AFA20028 */ sw	$v0, 0X28($sp)
/* 001970 0x80BA72C8 0C02DE2E */ jal	func_800B78B8
/* 001971 0x80BA72CC E7A60010 */ swc1	$f6, 0X10($sp)
/* 001972 0x80BA72D0 8FA20028 */ lw	$v0, 0X28($sp)
.L80BA72D4:
/* 001973 0x80BA72D4 8E0A01D4 */ lw	$t2, 0X1D4($s0)
/* 001974 0x80BA72D8 544A0027 */ bnel	$v0, $t2, .L80BA7378
/* 001975 0x80BA72DC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001976 0x80BA72E0 860B03F0 */ lh	$t3, 0X3F0($s0)
/* 001977 0x80BA72E4 55600024 */ bnezl	$t3, .L80BA7378
/* 001978 0x80BA72E8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001979 0x80BA72EC 960C0090 */ lhu	$t4, 0X90($s0)
/* 001980 0x80BA72F0 8FA2003C */ lw	$v0, 0X3C($sp)
/* 001981 0x80BA72F4 318D0008 */ andi	$t5, $t4, 0X8
/* 001982 0x80BA72F8 51A0001F */ beqzl	$t5, .L80BA7378
/* 001983 0x80BA72FC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001984 0x80BA7300 8C590024 */ lw	$t9, 0X24($v0)
/* 001985 0x80BA7304 27AF0030 */ addiu	$t7, $sp, 0X30
/* 001986 0x80BA7308 24420024 */ addiu	$v0, $v0, 0X24
/* 001987 0x80BA730C ADF90000 */ sw	$t9, 0X0($t7)
/* 001988 0x80BA7310 8C580004 */ lw	$t8, 0X4($v0)
/* 001989 0x80BA7314 ADF80004 */ sw	$t8, 0X4($t7)
/* 001990 0x80BA7318 8C590008 */ lw	$t9, 0X8($v0)
/* 001991 0x80BA731C ADF90008 */ sw	$t9, 0X8($t7)
/* 001992 0x80BA7320 86040086 */ lh	$a0, 0X86($s0)
/* 001993 0x80BA7324 0C03FB61 */ jal	Math_Sins
/* 001994 0x80BA7328 AFA20028 */ sw	$v0, 0X28($sp)
/* 001995 0x80BA732C 3C014120 */ lui	$at, 0x4120
/* 001996 0x80BA7330 44815000 */ mtc1	$at, $f10
/* 001997 0x80BA7334 C7A80030 */ lwc1	$f8, 0X30($sp)
/* 001998 0x80BA7338 46005402 */ mul.s	$f16, $f10, $f0
/* 001999 0x80BA733C 46104480 */ add.s	$f18, $f8, $f16
/* 002000 0x80BA7340 E7B20030 */ swc1	$f18, 0X30($sp)
/* 002001 0x80BA7344 0C03FB51 */ jal	Math_Coss
/* 002002 0x80BA7348 86040086 */ lh	$a0, 0X86($s0)
/* 002003 0x80BA734C 3C014120 */ lui	$at, 0x4120
/* 002004 0x80BA7350 44813000 */ mtc1	$at, $f6
/* 002005 0x80BA7354 C7A40038 */ lwc1	$f4, 0X38($sp)
/* 002006 0x80BA7358 8FA40028 */ lw	$a0, 0X28($sp)
/* 002007 0x80BA735C 46003282 */ mul.s	$f10, $f6, $f0
/* 002008 0x80BA7360 27A50030 */ addiu	$a1, $sp, 0X30
/* 002009 0x80BA7364 3C0640A0 */ lui	$a2, 0x40A0
/* 002010 0x80BA7368 460A2200 */ add.s	$f8, $f4, $f10
/* 002011 0x80BA736C 0C040112 */ jal	Lib_PushAwayVec3f
/* 002012 0x80BA7370 E7A80038 */ swc1	$f8, 0X38($sp)
/* 002013 0x80BA7374 8FBF0024 */ lw	$ra, 0X24($sp)
.L80BA7378:
/* 002014 0x80BA7378 8FB00020 */ lw	$s0, 0X20($sp)
/* 002015 0x80BA737C 27BD0040 */ addiu	$sp, $sp, 0X40
/* 002016 0x80BA7380 03E00008 */ jr	$ra
/* 002017 0x80BA7384 00000000 */ nop

