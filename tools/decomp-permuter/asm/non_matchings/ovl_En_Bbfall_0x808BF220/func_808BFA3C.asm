glabel func_808BFA3C
/* 000519 0x808BFA3C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000520 0x808BFA40 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000521 0x808BFA44 00802825 */ move	$a1, $a0
/* 000522 0x808BFA48 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000523 0x808BFA4C AFA40018 */ sw	$a0, 0X18($sp)
/* 000524 0x808BFA50 24A40144 */ addiu	$a0, $a1, 0X144
/* 000525 0x808BFA54 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000526 0x808BFA58 AFA50018 */ sw	$a1, 0X18($sp)
/* 000527 0x808BFA5C 8FA50018 */ lw	$a1, 0X18($sp)
/* 000528 0x808BFA60 3C0142B4 */ lui	$at, 0x42B4
/* 000529 0x808BFA64 44814000 */ mtc1	$at, $f8
/* 000530 0x808BFA68 C4A60088 */ lwc1	$f6, 0X88($a1)
/* 000531 0x808BFA6C C4A40028 */ lwc1	$f4, 0X28($a1)
/* 000532 0x808BFA70 240E000A */ li	$t6, 0XA
/* 000533 0x808BFA74 46083281 */ sub.s	$f10, $f6, $f8
/* 000534 0x808BFA78 00A02025 */ move	$a0, $a1
/* 000535 0x808BFA7C 460A203C */ c.lt.s	$f4, $f10
/* 000536 0x808BFA80 00000000 */ nop
/* 000537 0x808BFA84 45000005 */ bc1f .L808BFA9C
/* 000538 0x808BFA88 00000000 */ nop
/* 000539 0x808BFA8C 0C22FD78 */ jal	func_808BF5E0
/* 000540 0x808BFA90 A4AE0250 */ sh	$t6, 0X250($a1)
/* 000541 0x808BFA94 10000004 */ b	.L808BFAA8
/* 000542 0x808BFA98 8FBF0014 */ lw	$ra, 0X14($sp)
.L808BFA9C:
/* 000543 0x808BFA9C 0C22FD2D */ jal	func_808BF4B4
/* 000544 0x808BFAA0 00A02025 */ move	$a0, $a1
/* 000545 0x808BFAA4 8FBF0014 */ lw	$ra, 0X14($sp)
.L808BFAA8:
/* 000546 0x808BFAA8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000547 0x808BFAAC 03E00008 */ jr	$ra
/* 000548 0x808BFAB0 00000000 */ nop

