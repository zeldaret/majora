glabel func_80964034
/* 002645 0x80964034 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 002646 0x80964038 AFB00018 */ sw	$s0, 0X18($sp)
/* 002647 0x8096403C 00808025 */ move	$s0, $a0
/* 002648 0x80964040 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002649 0x80964044 AFA5003C */ sw	$a1, 0X3C($sp)
/* 002650 0x80964048 8602054E */ lh	$v0, 0X54E($s0)
/* 002651 0x8096404C 27A6002C */ addiu	$a2, $sp, 0X2C
/* 002652 0x80964050 14400003 */ bnez	$v0, .L80964060
/* 002653 0x80964054 244EFFFF */ addiu	$t6, $v0, -0X1
/* 002654 0x80964058 10000003 */ b	.L80964068
/* 002655 0x8096405C 00001825 */ move	$v1, $zero
.L80964060:
/* 002656 0x80964060 A60E054E */ sh	$t6, 0X54E($s0)
/* 002657 0x80964064 8603054E */ lh	$v1, 0X54E($s0)
.L80964068:
/* 002658 0x80964068 54600013 */ bnezl	$v1, .L809640B8
/* 002659 0x8096406C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 002660 0x80964070 8E190024 */ lw	$t9, 0X24($s0)
/* 002661 0x80964074 240F000C */ li	$t7, 0XC
/* 002662 0x80964078 A60F054E */ sh	$t7, 0X54E($s0)
/* 002663 0x8096407C ACD90000 */ sw	$t9, 0X0($a2)
/* 002664 0x80964080 8E180028 */ lw	$t8, 0X28($s0)
/* 002665 0x80964084 3C014278 */ lui	$at, 0x4278
/* 002666 0x80964088 44813000 */ mtc1	$at, $f6
/* 002667 0x8096408C ACD80004 */ sw	$t8, 0X4($a2)
/* 002668 0x80964090 8E19002C */ lw	$t9, 0X2C($s0)
/* 002669 0x80964094 02002025 */ move	$a0, $s0
/* 002670 0x80964098 260502D8 */ addiu	$a1, $s0, 0X2D8
/* 002671 0x8096409C ACD90008 */ sw	$t9, 0X8($a2)
/* 002672 0x809640A0 C7A40030 */ lwc1	$f4, 0X30($sp)
/* 002673 0x809640A4 2407000A */ li	$a3, 0XA
/* 002674 0x809640A8 46062200 */ add.s	$f8, $f4, $f6
/* 002675 0x809640AC 0C2591A5 */ jal	func_80964694
/* 002676 0x809640B0 E7A80030 */ swc1	$f8, 0X30($sp)
/* 002677 0x809640B4 8FA4003C */ lw	$a0, 0X3C($sp)
.L809640B8:
/* 002678 0x809640B8 260502D8 */ addiu	$a1, $s0, 0X2D8
/* 002679 0x809640BC 0C2591FB */ jal	func_809647EC
/* 002680 0x809640C0 2406000A */ li	$a2, 0XA
/* 002681 0x809640C4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002682 0x809640C8 8FB00018 */ lw	$s0, 0X18($sp)
/* 002683 0x809640CC 27BD0038 */ addiu	$sp, $sp, 0X38
/* 002684 0x809640D0 03E00008 */ jr	$ra
/* 002685 0x809640D4 00000000 */ nop

