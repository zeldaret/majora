glabel func_8098BB10
/* 002676 0x8098BB10 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 002677 0x8098BB14 AFB00018 */ sw	$s0, 0X18($sp)
/* 002678 0x8098BB18 00808025 */ move	$s0, $a0
/* 002679 0x8098BB1C AFBF001C */ sw	$ra, 0X1C($sp)
/* 002680 0x8098BB20 AFA5002C */ sw	$a1, 0X2C($sp)
/* 002681 0x8098BB24 960F0090 */ lhu	$t7, 0X90($s0)
/* 002682 0x8098BB28 8FAE002C */ lw	$t6, 0X2C($sp)
/* 002683 0x8098BB2C 31F80001 */ andi	$t8, $t7, 0X1
/* 002684 0x8098BB30 13000017 */ beqz	$t8, .L8098BB90
/* 002685 0x8098BB34 8DC31CCC */ lw	$v1, 0X1CCC($t6)
/* 002686 0x8098BB38 96020280 */ lhu	$v0, 0X280($s0)
/* 002687 0x8098BB3C 02002025 */ move	$a0, $s0
/* 002688 0x8098BB40 240528EF */ li	$a1, 0X28EF
/* 002689 0x8098BB44 30590010 */ andi	$t9, $v0, 0X10
/* 002690 0x8098BB48 13200005 */ beqz	$t9, .L8098BB60
/* 002691 0x8098BB4C 3048FFEF */ andi	$t0, $v0, 0XFFEF
/* 002692 0x8098BB50 A6080280 */ sh	$t0, 0X280($s0)
/* 002693 0x8098BB54 0C02E3B2 */ jal	func_800B8EC8
/* 002694 0x8098BB58 AFA30024 */ sw	$v1, 0X24($sp)
/* 002695 0x8098BB5C 8FA30024 */ lw	$v1, 0X24($sp)
.L8098BB60:
/* 002696 0x8098BB60 3C01C040 */ lui	$at, 0xC040
/* 002697 0x8098BB64 44802000 */ mtc1	$zero, $f4
/* 002698 0x8098BB68 44813000 */ mtc1	$at, $f6
/* 002699 0x8098BB6C 24010004 */ li	$at, 0X4
/* 002700 0x8098BB70 E6040070 */ swc1	$f4, 0X70($s0)
/* 002701 0x8098BB74 E6060074 */ swc1	$f6, 0X74($s0)
/* 002702 0x8098BB78 9069014B */ lbu	$t1, 0X14B($v1)
/* 002703 0x8098BB7C 02002025 */ move	$a0, $s0
/* 002704 0x8098BB80 55210004 */ bnel	$t1, $at, .L8098BB94
/* 002705 0x8098BB84 8602028A */ lh	$v0, 0X28A($s0)
/* 002706 0x8098BB88 0C262786 */ jal	func_80989E18
/* 002707 0x8098BB8C 8FA5002C */ lw	$a1, 0X2C($sp)
.L8098BB90:
/* 002708 0x8098BB90 8602028A */ lh	$v0, 0X28A($s0)
.L8098BB94:
/* 002709 0x8098BB94 02002025 */ move	$a0, $s0
/* 002710 0x8098BB98 14400003 */ bnez	$v0, .L8098BBA8
/* 002711 0x8098BB9C 244AFFFF */ addiu	$t2, $v0, -0X1
/* 002712 0x8098BBA0 10000003 */ b	.L8098BBB0
/* 002713 0x8098BBA4 00001825 */ move	$v1, $zero
.L8098BBA8:
/* 002714 0x8098BBA8 A60A028A */ sh	$t2, 0X28A($s0)
/* 002715 0x8098BBAC 8603028A */ lh	$v1, 0X28A($s0)
.L8098BBB0:
/* 002716 0x8098BBB0 14600007 */ bnez	$v1, .L8098BBD0
/* 002717 0x8098BBB4 00000000 */ nop
/* 002718 0x8098BBB8 A6000290 */ sh	$zero, 0X290($s0)
/* 002719 0x8098BBBC 0C2626B7 */ jal	func_80989ADC
/* 002720 0x8098BBC0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 002721 0x8098BBC4 3C0B8099 */ lui	$t3, %hi(func_8098A468)
/* 002722 0x8098BBC8 256BA468 */ addiu	$t3, $t3, %lo(func_8098A468)
/* 002723 0x8098BBCC AE0B0144 */ sw	$t3, 0X144($s0)
.L8098BBD0:
/* 002724 0x8098BBD0 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 002725 0x8098BBD4 02002025 */ move	$a0, $s0
/* 002726 0x8098BBD8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002727 0x8098BBDC 8FB00018 */ lw	$s0, 0X18($sp)
/* 002728 0x8098BBE0 27BD0028 */ addiu	$sp, $sp, 0X28
/* 002729 0x8098BBE4 03E00008 */ jr	$ra
/* 002730 0x8098BBE8 00000000 */ nop

