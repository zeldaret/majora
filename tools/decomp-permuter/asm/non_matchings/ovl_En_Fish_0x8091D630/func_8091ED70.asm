glabel func_8091ED70
/* 001488 0x8091ED70 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 001489 0x8091ED74 AFB00020 */ sw	$s0, 0X20($sp)
/* 001490 0x8091ED78 00808025 */ move	$s0, $a0
/* 001491 0x8091ED7C AFBF0024 */ sw	$ra, 0X24($sp)
/* 001492 0x8091ED80 860E0240 */ lh	$t6, 0X240($s0)
/* 001493 0x8091ED84 02002025 */ move	$a0, $s0
/* 001494 0x8091ED88 24060002 */ li	$a2, 0X2
/* 001495 0x8091ED8C 29C100BF */ slti	$at, $t6, 0XBF
/* 001496 0x8091ED90 54200004 */ bnezl	$at, .L8091EDA4
/* 001497 0x8091ED94 44802000 */ mtc1	$zero, $f4
/* 001498 0x8091ED98 0C247610 */ jal	func_8091D840
/* 001499 0x8091ED9C 3C0741C8 */ lui	$a3, 0x41C8
/* 001500 0x8091EDA0 44802000 */ mtc1	$zero, $f4
.L8091EDA4:
/* 001501 0x8091EDA4 3C054033 */ lui	$a1, 0x4033
/* 001502 0x8091EDA8 3C063DCC */ lui	$a2, 0x3DCC
/* 001503 0x8091EDAC 3C073ECC */ lui	$a3, 0x3ECC
/* 001504 0x8091EDB0 34E7CCCD */ ori	$a3, $a3, 0XCCCD
/* 001505 0x8091EDB4 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 001506 0x8091EDB8 34A53333 */ ori	$a1, $a1, 0X3333
/* 001507 0x8091EDBC 26040070 */ addiu	$a0, $s0, 0X70
/* 001508 0x8091EDC0 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 001509 0x8091EDC4 E7A40010 */ swc1	$f4, 0X10($sp)
/* 001510 0x8091EDC8 96020090 */ lhu	$v0, 0X90($s0)
/* 001511 0x8091EDCC 26040024 */ addiu	$a0, $s0, 0X24
/* 001512 0x8091EDD0 304F0008 */ andi	$t7, $v0, 0X8
/* 001513 0x8091EDD4 15E00003 */ bnez	$t7, .L8091EDE4
/* 001514 0x8091EDD8 30580020 */ andi	$t8, $v0, 0X20
/* 001515 0x8091EDDC 57000010 */ bnezl	$t8, .L8091EE20
/* 001516 0x8091EDE0 960D0090 */ lhu	$t5, 0X90($s0)
.L8091EDE4:
/* 001517 0x8091EDE4 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 001518 0x8091EDE8 26050008 */ addiu	$a1, $s0, 0X8
/* 001519 0x8091EDEC A7A2002E */ sh	$v0, 0X2E($sp)
/* 001520 0x8091EDF0 2404FF9C */ li	$a0, -0X64
/* 001521 0x8091EDF4 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001522 0x8091EDF8 24050064 */ li	$a1, 0X64
/* 001523 0x8091EDFC 3C013F00 */ lui	$at, 0x3F00
/* 001524 0x8091EE00 44814000 */ mtc1	$at, $f8
/* 001525 0x8091EE04 C6060070 */ lwc1	$f6, 0X70($s0)
/* 001526 0x8091EE08 87B9002E */ lh	$t9, 0X2E($sp)
/* 001527 0x8091EE0C 46083282 */ mul.s	$f10, $f6, $f8
/* 001528 0x8091EE10 00594021 */ addu	$t0, $v0, $t9
/* 001529 0x8091EE14 A6080016 */ sh	$t0, 0X16($s0)
/* 001530 0x8091EE18 E60A0070 */ swc1	$f10, 0X70($s0)
/* 001531 0x8091EE1C 960D0090 */ lhu	$t5, 0X90($s0)
.L8091EE20:
/* 001532 0x8091EE20 86090016 */ lh	$t1, 0X16($s0)
/* 001533 0x8091EE24 240A03E8 */ li	$t2, 0X3E8
/* 001534 0x8091EE28 240B07D0 */ li	$t3, 0X7D0
/* 001535 0x8091EE2C 240C029B */ li	$t4, 0X29B
/* 001536 0x8091EE30 31AE0001 */ andi	$t6, $t5, 0X1
/* 001537 0x8091EE34 A6000268 */ sh	$zero, 0X268($s0)
/* 001538 0x8091EE38 A600026C */ sh	$zero, 0X26C($s0)
/* 001539 0x8091EE3C A60A026E */ sh	$t2, 0X26E($s0)
/* 001540 0x8091EE40 A60B0270 */ sh	$t3, 0X270($s0)
/* 001541 0x8091EE44 A60C0272 */ sh	$t4, 0X272($s0)
/* 001542 0x8091EE48 11C0000C */ beqz	$t6, .L8091EE7C
/* 001543 0x8091EE4C A609026A */ sh	$t1, 0X26A($s0)
/* 001544 0x8091EE50 3C014080 */ lui	$at, 0x4080
/* 001545 0x8091EE54 44819000 */ mtc1	$at, $f18
/* 001546 0x8091EE58 C610000C */ lwc1	$f16, 0XC($s0)
/* 001547 0x8091EE5C 26040028 */ addiu	$a0, $s0, 0X28
/* 001548 0x8091EE60 3C064000 */ lui	$a2, 0x4000
/* 001549 0x8091EE64 46128101 */ sub.s	$f4, $f16, $f18
/* 001550 0x8091EE68 44052000 */ mfc1	$a1, $f4
/* 001551 0x8091EE6C 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001552 0x8091EE70 00000000 */ nop
/* 001553 0x8091EE74 1000000B */ b	.L8091EEA4
/* 001554 0x8091EE78 860F0240 */ lh	$t7, 0X240($s0)
.L8091EE7C:
/* 001555 0x8091EE7C 3C014120 */ lui	$at, 0x4120
/* 001556 0x8091EE80 44814000 */ mtc1	$at, $f8
/* 001557 0x8091EE84 C606000C */ lwc1	$f6, 0XC($s0)
/* 001558 0x8091EE88 26040028 */ addiu	$a0, $s0, 0X28
/* 001559 0x8091EE8C 3C064000 */ lui	$a2, 0x4000
/* 001560 0x8091EE90 46083281 */ sub.s	$f10, $f6, $f8
/* 001561 0x8091EE94 44055000 */ mfc1	$a1, $f10
/* 001562 0x8091EE98 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001563 0x8091EE9C 00000000 */ nop
/* 001564 0x8091EEA0 860F0240 */ lh	$t7, 0X240($s0)
.L8091EEA4:
/* 001565 0x8091EEA4 29E10064 */ slti	$at, $t7, 0X64
/* 001566 0x8091EEA8 10200007 */ beqz	$at, .L8091EEC8
/* 001567 0x8091EEAC 3C018092 */ lui	$at, %hi(D_8091FB88)
/* 001568 0x8091EEB0 C432FB88 */ lwc1	$f18, %lo(D_8091FB88)($at)
/* 001569 0x8091EEB4 C610025C */ lwc1	$f16, 0X25C($s0)
/* 001570 0x8091EEB8 02002025 */ move	$a0, $s0
/* 001571 0x8091EEBC 46128102 */ mul.s	$f4, $f16, $f18
/* 001572 0x8091EEC0 0C2475CA */ jal	func_8091D728
/* 001573 0x8091EEC4 E604025C */ swc1	$f4, 0X25C($s0)
.L8091EEC8:
/* 001574 0x8091EEC8 3C018092 */ lui	$at, %hi(D_8091FB8C)
/* 001575 0x8091EECC C422FB8C */ lwc1	$f2, %lo(D_8091FB8C)($at)
/* 001576 0x8091EED0 3C013FC0 */ lui	$at, 0x3FC0
/* 001577 0x8091EED4 44814000 */ mtc1	$at, $f8
/* 001578 0x8091EED8 C6060070 */ lwc1	$f6, 0X70($s0)
/* 001579 0x8091EEDC 3C013F80 */ lui	$at, 0x3F80
/* 001580 0x8091EEE0 44818000 */ mtc1	$at, $f16
/* 001581 0x8091EEE4 46083282 */ mul.s	$f10, $f6, $f8
/* 001582 0x8091EEE8 46105000 */ add.s	$f0, $f10, $f16
/* 001583 0x8091EEEC 4600103C */ c.lt.s	$f2, $f0
/* 001584 0x8091EEF0 00000000 */ nop
/* 001585 0x8091EEF4 45020004 */ bc1fl .L8091EF08
/* 001586 0x8091EEF8 E60001C0 */ swc1	$f0, 0X1C0($s0)
/* 001587 0x8091EEFC 10000002 */ b	.L8091EF08
/* 001588 0x8091EF00 E60201C0 */ swc1	$f2, 0X1C0($s0)
/* 001589 0x8091EF04 E60001C0 */ swc1	$f0, 0X1C0($s0)
.L8091EF08:
/* 001590 0x8091EF08 86180240 */ lh	$t8, 0X240($s0)
/* 001591 0x8091EF0C 5F000004 */ bgtzl	$t8, .L8091EF20
/* 001592 0x8091EF10 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001593 0x8091EF14 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001594 0x8091EF18 02002025 */ move	$a0, $s0
/* 001595 0x8091EF1C 8FBF0024 */ lw	$ra, 0X24($sp)
.L8091EF20:
/* 001596 0x8091EF20 8FB00020 */ lw	$s0, 0X20($sp)
/* 001597 0x8091EF24 27BD0038 */ addiu	$sp, $sp, 0X38
/* 001598 0x8091EF28 03E00008 */ jr	$ra
/* 001599 0x8091EF2C 00000000 */ nop

