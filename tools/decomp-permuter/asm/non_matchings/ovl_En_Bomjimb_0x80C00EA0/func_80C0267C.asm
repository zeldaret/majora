glabel func_80C0267C
/* 001527 0x80C0267C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001528 0x80C02680 AFB00018 */ sw	$s0, 0X18($sp)
/* 001529 0x80C02684 00808025 */ move	$s0, $a0
/* 001530 0x80C02688 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001531 0x80C0268C 0C3004B8 */ jal	func_80C012E0
/* 001532 0x80C02690 02002025 */ move	$a0, $s0
/* 001533 0x80C02694 02002025 */ move	$a0, $s0
/* 001534 0x80C02698 24050008 */ li	$a1, 0X8
/* 001535 0x80C0269C 0C30044F */ jal	func_80C0113C
/* 001536 0x80C026A0 3C063F80 */ lui	$a2, 0x3F80
/* 001537 0x80C026A4 44802000 */ mtc1	$zero, $f4
/* 001538 0x80C026A8 860E0092 */ lh	$t6, 0X92($s0)
/* 001539 0x80C026AC 3C014270 */ lui	$at, 0x4270
/* 001540 0x80C026B0 240F0028 */ li	$t7, 0X28
/* 001541 0x80C026B4 44816000 */ mtc1	$at, $f12
/* 001542 0x80C026B8 A60F02AE */ sh	$t7, 0X2AE($s0)
/* 001543 0x80C026BC A60002C2 */ sh	$zero, 0X2C2($s0)
/* 001544 0x80C026C0 E6040070 */ swc1	$f4, 0X70($s0)
/* 001545 0x80C026C4 0C05E565 */ jal	randZeroOneScaled
/* 001546 0x80C026C8 A60E0032 */ sh	$t6, 0X32($s0)
/* 001547 0x80C026CC 4600018D */ trunc.w.s	$f6, $f0
/* 001548 0x80C026D0 3C0A80C0 */ lui	$t2, %hi(func_80C02704)
/* 001549 0x80C026D4 24090007 */ li	$t1, 0X7
/* 001550 0x80C026D8 254A2704 */ addiu	$t2, $t2, %lo(func_80C02704)
/* 001551 0x80C026DC 44193000 */ mfc1	$t9, $f6
/* 001552 0x80C026E0 A60902CA */ sh	$t1, 0X2CA($s0)
/* 001553 0x80C026E4 AE0A0284 */ sw	$t2, 0X284($s0)
/* 001554 0x80C026E8 27280014 */ addiu	$t0, $t9, 0X14
/* 001555 0x80C026EC A60802C4 */ sh	$t0, 0X2C4($s0)
/* 001556 0x80C026F0 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001557 0x80C026F4 8FB00018 */ lw	$s0, 0X18($sp)
/* 001558 0x80C026F8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 001559 0x80C026FC 03E00008 */ jr	$ra
/* 001560 0x80C02700 00000000 */ nop

