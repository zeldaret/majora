glabel func_8089BAC0
/* 001272 0x8089BAC0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001273 0x8089BAC4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001274 0x8089BAC8 00803825 */ move	$a3, $a0
/* 001275 0x8089BACC 8CEE0284 */ lw	$t6, 0X284($a3)
/* 001276 0x8089BAD0 3C03808A */ lui	$v1, %hi(func_8089BB60)
/* 001277 0x8089BAD4 2463BB60 */ addiu	$v1, $v1, %lo(func_8089BB60)
/* 001278 0x8089BAD8 106E000B */ beq	$v1, $t6, .L8089BB08
/* 001279 0x8089BADC 24E40144 */ addiu	$a0, $a3, 0X144
/* 001280 0x8089BAE0 3C050600 */ lui	$a1, 0x0600
/* 001281 0x8089BAE4 24A50580 */ addiu	$a1, $a1, 0X580
/* 001282 0x8089BAE8 3C06C080 */ lui	$a2, 0xC080
/* 001283 0x8089BAEC AFA3001C */ sw	$v1, 0X1C($sp)
/* 001284 0x8089BAF0 0C04DD65 */ jal	SkelAnime_ChangeAnimTransitionRepeat
/* 001285 0x8089BAF4 AFA70020 */ sw	$a3, 0X20($sp)
/* 001286 0x8089BAF8 8FA70020 */ lw	$a3, 0X20($sp)
/* 001287 0x8089BAFC 44802000 */ mtc1	$zero, $f4
/* 001288 0x8089BB00 8FA3001C */ lw	$v1, 0X1C($sp)
/* 001289 0x8089BB04 E4E40070 */ swc1	$f4, 0X70($a3)
.L8089BB08:
/* 001290 0x8089BB08 84E200BE */ lh	$v0, 0XBE($a3)
/* 001291 0x8089BB0C 84EF0092 */ lh	$t7, 0X92($a3)
/* 001292 0x8089BB10 00E02025 */ move	$a0, $a3
/* 001293 0x8089BB14 24494000 */ addiu	$t1, $v0, 0X4000
/* 001294 0x8089BB18 01E2C023 */ subu	$t8, $t7, $v0
/* 001295 0x8089BB1C 0018CC00 */ sll	$t9, $t8, 16
/* 001296 0x8089BB20 00194403 */ sra	$t0, $t9, 16
/* 001297 0x8089BB24 19000003 */ blez	$t0, .L8089BB34
/* 001298 0x8089BB28 244AC000 */ addiu	$t2, $v0, -0X4000
/* 001299 0x8089BB2C 10000002 */ b	.L8089BB38
/* 001300 0x8089BB30 A4E9028C */ sh	$t1, 0X28C($a3)
.L8089BB34:
/* 001301 0x8089BB34 A4EA028C */ sh	$t2, 0X28C($a3)
.L8089BB38:
/* 001302 0x8089BB38 A4E20032 */ sh	$v0, 0X32($a3)
/* 001303 0x8089BB3C AFA70020 */ sw	$a3, 0X20($sp)
/* 001304 0x8089BB40 0C226B5C */ jal	func_8089AD70
/* 001305 0x8089BB44 AFA3001C */ sw	$v1, 0X1C($sp)
/* 001306 0x8089BB48 8FA3001C */ lw	$v1, 0X1C($sp)
/* 001307 0x8089BB4C 8FA70020 */ lw	$a3, 0X20($sp)
/* 001308 0x8089BB50 ACE30284 */ sw	$v1, 0X284($a3)
/* 001309 0x8089BB54 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001310 0x8089BB58 03E00008 */ jr	$ra
/* 001311 0x8089BB5C 27BD0020 */ addiu	$sp, $sp, 0X20

