glabel func_8086BDA8
/* 002054 0x8086BDA8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002055 0x8086BDAC AFB00018 */ sw	$s0, 0X18($sp)
/* 002056 0x8086BDB0 00808025 */ move	$s0, $a0
/* 002057 0x8086BDB4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002058 0x8086BDB8 AFA50024 */ sw	$a1, 0X24($sp)
/* 002059 0x8086BDBC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 002060 0x8086BDC0 26040144 */ addiu	$a0, $s0, 0X144
/* 002061 0x8086BDC4 860302B6 */ lh	$v1, 0X2B6($s0)
/* 002062 0x8086BDC8 240E0010 */ li	$t6, 0X10
/* 002063 0x8086BDCC A20E011C */ sb	$t6, 0X11C($s0)
/* 002064 0x8086BDD0 1860000B */ blez	$v1, .L8086BE00
/* 002065 0x8086BDD4 246FFFFF */ addiu	$t7, $v1, -0X1
/* 002066 0x8086BDD8 A60F02B6 */ sh	$t7, 0X2B6($s0)
/* 002067 0x8086BDDC 861802B6 */ lh	$t8, 0X2B6($s0)
/* 002068 0x8086BDE0 3C01BF80 */ lui	$at, 0xBF80
/* 002069 0x8086BDE4 24190032 */ li	$t9, 0X32
/* 002070 0x8086BDE8 57000019 */ bnezl	$t8, .L8086BE50
/* 002071 0x8086BDEC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002072 0x8086BDF0 44812000 */ mtc1	$at, $f4
/* 002073 0x8086BDF4 A21900B6 */ sb	$t9, 0XB6($s0)
/* 002074 0x8086BDF8 10000014 */ b	.L8086BE4C
/* 002075 0x8086BDFC E6040074 */ swc1	$f4, 0X74($s0)
.L8086BE00:
/* 002076 0x8086BE00 860802B8 */ lh	$t0, 0X2B8($s0)
/* 002077 0x8086BE04 860502BA */ lh	$a1, 0X2BA($s0)
/* 002078 0x8086BE08 25090F00 */ addiu	$t1, $t0, 0XF00
/* 002079 0x8086BE0C 10A00008 */ beqz	$a1, .L8086BE30
/* 002080 0x8086BE10 A60902B8 */ sh	$t1, 0X2B8($s0)
/* 002081 0x8086BE14 0C05A5B5 */ jal	Play_GetCamera
/* 002082 0x8086BE18 8FA40024 */ lw	$a0, 0X24($sp)
/* 002083 0x8086BE1C 8FA40024 */ lw	$a0, 0X24($sp)
/* 002084 0x8086BE20 860502BA */ lh	$a1, 0X2BA($s0)
/* 002085 0x8086BE24 26060024 */ addiu	$a2, $s0, 0X24
/* 002086 0x8086BE28 0C05A5C3 */ jal	func_8016970C
/* 002087 0x8086BE2C 2447005C */ addiu	$a3, $v0, 0X5C
.L8086BE30:
/* 002088 0x8086BE30 960A0090 */ lhu	$t2, 0X90($s0)
/* 002089 0x8086BE34 02002025 */ move	$a0, $s0
/* 002090 0x8086BE38 314B0001 */ andi	$t3, $t2, 0X1
/* 002091 0x8086BE3C 51600004 */ beqzl	$t3, .L8086BE50
/* 002092 0x8086BE40 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002093 0x8086BE44 0C21AF98 */ jal	func_8086BE60
/* 002094 0x8086BE48 8FA50024 */ lw	$a1, 0X24($sp)
.L8086BE4C:
/* 002095 0x8086BE4C 8FBF001C */ lw	$ra, 0X1C($sp)
.L8086BE50:
/* 002096 0x8086BE50 8FB00018 */ lw	$s0, 0X18($sp)
/* 002097 0x8086BE54 27BD0020 */ addiu	$sp, $sp, 0X20
/* 002098 0x8086BE58 03E00008 */ jr	$ra
/* 002099 0x8086BE5C 00000000 */ nop

