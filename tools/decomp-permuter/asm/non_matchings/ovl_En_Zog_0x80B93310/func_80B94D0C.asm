glabel func_80B94D0C
/* 001663 0x80B94D0C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 001664 0x80B94D10 AFB10018 */ sw	$s1, 0X18($sp)
/* 001665 0x80B94D14 AFB00014 */ sw	$s0, 0X14($sp)
/* 001666 0x80B94D18 00808025 */ move	$s0, $a0
/* 001667 0x80B94D1C 00A08825 */ move	$s1, $a1
/* 001668 0x80B94D20 AFBF001C */ sw	$ra, 0X1C($sp)
/* 001669 0x80B94D24 02002025 */ move	$a0, $s0
/* 001670 0x80B94D28 0C2E4F4B */ jal	func_80B93D2C
/* 001671 0x80B94D2C 02202825 */ move	$a1, $s1
/* 001672 0x80B94D30 86020320 */ lh	$v0, 0X320($s0)
/* 001673 0x80B94D34 44802000 */ mtc1	$zero, $f4
/* 001674 0x80B94D38 240F0002 */ li	$t7, 0X2
/* 001675 0x80B94D3C 18400007 */ blez	$v0, .L80B94D5C
/* 001676 0x80B94D40 E6040070 */ swc1	$f4, 0X70($s0)
/* 001677 0x80B94D44 24030001 */ li	$v1, 0X1
/* 001678 0x80B94D48 244EFFFF */ addiu	$t6, $v0, -0X1
/* 001679 0x80B94D4C A60E0320 */ sh	$t6, 0X320($s0)
/* 001680 0x80B94D50 A603031C */ sh	$v1, 0X31C($s0)
/* 001681 0x80B94D54 10000003 */ b	.L80B94D64
/* 001682 0x80B94D58 A603031E */ sh	$v1, 0X31E($s0)
.L80B94D5C:
/* 001683 0x80B94D5C A60F031C */ sh	$t7, 0X31C($s0)
/* 001684 0x80B94D60 A600031E */ sh	$zero, 0X31E($s0)
.L80B94D64:
/* 001685 0x80B94D64 0C054926 */ jal	func_80152498
/* 001686 0x80B94D68 26244908 */ addiu	$a0, $s1, 0X4908
/* 001687 0x80B94D6C 24010005 */ li	$at, 0X5
/* 001688 0x80B94D70 54410029 */ bnel	$v0, $at, .L80B94E18
/* 001689 0x80B94D74 02002025 */ move	$a0, $s0
/* 001690 0x80B94D78 0C051D89 */ jal	func_80147624
/* 001691 0x80B94D7C 02202025 */ move	$a0, $s1
/* 001692 0x80B94D80 10400024 */ beqz	$v0, .L80B94E14
/* 001693 0x80B94D84 24180005 */ li	$t8, 0X5
/* 001694 0x80B94D88 3C030001 */ lui	$v1, 0x0001
/* 001695 0x80B94D8C A6180320 */ sh	$t8, 0X320($s0)
/* 001696 0x80B94D90 00711821 */ addu	$v1, $v1, $s1
/* 001697 0x80B94D94 9463680C */ lhu	$v1, 0X680C($v1)
/* 001698 0x80B94D98 24011004 */ li	$at, 0X1004
/* 001699 0x80B94D9C 02202025 */ move	$a0, $s1
/* 001700 0x80B94DA0 1061000A */ beq	$v1, $at, .L80B94DCC
/* 001701 0x80B94DA4 00601025 */ move	$v0, $v1
/* 001702 0x80B94DA8 24011005 */ li	$at, 0X1005
/* 001703 0x80B94DAC 10410007 */ beq	$v0, $at, .L80B94DCC
/* 001704 0x80B94DB0 24011006 */ li	$at, 0X1006
/* 001705 0x80B94DB4 10410005 */ beq	$v0, $at, .L80B94DCC
/* 001706 0x80B94DB8 24011007 */ li	$at, 0X1007
/* 001707 0x80B94DBC 10410008 */ beq	$v0, $at, .L80B94DE0
/* 001708 0x80B94DC0 00000000 */ nop
/* 001709 0x80B94DC4 10000014 */ b	.L80B94E18
/* 001710 0x80B94DC8 02002025 */ move	$a0, $s0
.L80B94DCC:
/* 001711 0x80B94DCC 24650001 */ addiu	$a1, $v1, 0X1
/* 001712 0x80B94DD0 0C05464E */ jal	func_80151938
/* 001713 0x80B94DD4 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 001714 0x80B94DD8 1000000F */ b	.L80B94E18
/* 001715 0x80B94DDC 02002025 */ move	$a0, $s0
.L80B94DE0:
/* 001716 0x80B94DE0 0C051DED */ jal	func_801477B4
/* 001717 0x80B94DE4 02202025 */ move	$a0, $s1
/* 001718 0x80B94DE8 3C1980B9 */ lui	$t9, %hi(func_80B94E34)
/* 001719 0x80B94DEC 27394E34 */ addiu	$t9, $t9, %lo(func_80B94E34)
/* 001720 0x80B94DF0 24080005 */ li	$t0, 0X5
/* 001721 0x80B94DF4 24090002 */ li	$t1, 0X2
/* 001722 0x80B94DF8 AE190328 */ sw	$t9, 0X328($s0)
/* 001723 0x80B94DFC A6080300 */ sh	$t0, 0X300($s0)
/* 001724 0x80B94E00 A6000320 */ sh	$zero, 0X320($s0)
/* 001725 0x80B94E04 A609031C */ sh	$t1, 0X31C($s0)
/* 001726 0x80B94E08 A600031E */ sh	$zero, 0X31E($s0)
/* 001727 0x80B94E0C 0C2E4ED1 */ jal	func_80B93B44
/* 001728 0x80B94E10 02002025 */ move	$a0, $s0
.L80B94E14:
/* 001729 0x80B94E14 02002025 */ move	$a0, $s0
.L80B94E18:
/* 001730 0x80B94E18 0C2E4E92 */ jal	func_80B93A48
/* 001731 0x80B94E1C 02202825 */ move	$a1, $s1
/* 001732 0x80B94E20 8FBF001C */ lw	$ra, 0X1C($sp)
/* 001733 0x80B94E24 8FB00014 */ lw	$s0, 0X14($sp)
/* 001734 0x80B94E28 8FB10018 */ lw	$s1, 0X18($sp)
/* 001735 0x80B94E2C 03E00008 */ jr	$ra
/* 001736 0x80B94E30 27BD0020 */ addiu	$sp, $sp, 0X20

