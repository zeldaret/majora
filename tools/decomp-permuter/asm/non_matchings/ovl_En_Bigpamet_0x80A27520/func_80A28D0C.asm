glabel func_80A28D0C
/* 001531 0x80A28D0C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001532 0x80A28D10 AFB00018 */ sw	$s0, 0X18($sp)
/* 001533 0x80A28D14 00808025 */ move	$s0, $a0
/* 001534 0x80A28D18 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001535 0x80A28D1C AFA50024 */ sw	$a1, 0X24($sp)
/* 001536 0x80A28D20 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001537 0x80A28D24 26040144 */ addiu	$a0, $s0, 0X144
/* 001538 0x80A28D28 960E0090 */ lhu	$t6, 0X90($s0)
/* 001539 0x80A28D2C 02002025 */ move	$a0, $s0
/* 001540 0x80A28D30 31CF0001 */ andi	$t7, $t6, 0X1
/* 001541 0x80A28D34 51E00009 */ beqzl	$t7, .L80A28D5C
/* 001542 0x80A28D38 861800BC */ lh	$t8, 0XBC($s0)
/* 001543 0x80A28D3C 0C02E3B2 */ jal	func_800B8EC8
/* 001544 0x80A28D40 240538DD */ li	$a1, 0X38DD
/* 001545 0x80A28D44 02002025 */ move	$a0, $s0
/* 001546 0x80A28D48 0C289FFA */ jal	func_80A27FE8
/* 001547 0x80A28D4C 8FA50024 */ lw	$a1, 0X24($sp)
/* 001548 0x80A28D50 0C28A360 */ jal	func_80A28D80
/* 001549 0x80A28D54 02002025 */ move	$a0, $s0
/* 001550 0x80A28D58 861800BC */ lh	$t8, 0XBC($s0)
.L80A28D5C:
/* 001551 0x80A28D5C 860800C0 */ lh	$t0, 0XC0($s0)
/* 001552 0x80A28D60 27190800 */ addiu	$t9, $t8, 0X800
/* 001553 0x80A28D64 25091000 */ addiu	$t1, $t0, 0X1000
/* 001554 0x80A28D68 A61900BC */ sh	$t9, 0XBC($s0)
/* 001555 0x80A28D6C A60900C0 */ sh	$t1, 0XC0($s0)
/* 001556 0x80A28D70 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001557 0x80A28D74 8FB00018 */ lw	$s0, 0X18($sp)
/* 001558 0x80A28D78 03E00008 */ jr	$ra
/* 001559 0x80A28D7C 27BD0020 */ addiu	$sp, $sp, 0X20

