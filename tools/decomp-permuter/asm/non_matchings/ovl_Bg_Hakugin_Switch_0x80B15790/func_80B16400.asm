glabel func_80B16400
/* 000796 0x80B16400 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000797 0x80B16404 AFB00018 */ sw	$s0, 0X18($sp)
/* 000798 0x80B16408 00808025 */ move	$s0, $a0
/* 000799 0x80B1640C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000800 0x80B16410 AFA50024 */ sw	$a1, 0X24($sp)
/* 000801 0x80B16414 3C014000 */ lui	$at, 0x4000
/* 000802 0x80B16418 44813000 */ mtc1	$at, $f6
/* 000803 0x80B1641C 3C0144E1 */ lui	$at, 0x44E1
/* 000804 0x80B16420 44815000 */ mtc1	$at, $f10
/* 000805 0x80B16424 C610005C */ lwc1	$f16, 0X5C($s0)
/* 000806 0x80B16428 C604000C */ lwc1	$f4, 0XC($s0)
/* 000807 0x80B1642C 26040028 */ addiu	$a0, $s0, 0X28
/* 000808 0x80B16430 46105482 */ mul.s	$f18, $f10, $f16
/* 000809 0x80B16434 46062200 */ add.s	$f8, $f4, $f6
/* 000810 0x80B16438 3C064120 */ lui	$a2, 0x4120
/* 000811 0x80B1643C 46124101 */ sub.s	$f4, $f8, $f18
/* 000812 0x80B16440 44052000 */ mfc1	$a1, $f4
/* 000813 0x80B16444 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000814 0x80B16448 00000000 */ nop
/* 000815 0x80B1644C 5040000D */ beqzl	$v0, .L80B16484
/* 000816 0x80B16450 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000817 0x80B16454 0C032BDC */ jal	func_800CAF70
/* 000818 0x80B16458 02002025 */ move	$a0, $s0
/* 000819 0x80B1645C 10400005 */ beqz	$v0, .L80B16474
/* 000820 0x80B16460 24050078 */ li	$a1, 0X78
/* 000821 0x80B16464 C60C0094 */ lwc1	$f12, 0X94($s0)
/* 000822 0x80B16468 24060014 */ li	$a2, 0X14
/* 000823 0x80B1646C 0C04FB38 */ jal	func_8013ECE0
/* 000824 0x80B16470 2407000A */ li	$a3, 0XA
.L80B16474:
/* 000825 0x80B16474 02002025 */ move	$a0, $s0
/* 000826 0x80B16478 0C2C5925 */ jal	func_80B16494
/* 000827 0x80B1647C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000828 0x80B16480 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B16484:
/* 000829 0x80B16484 8FB00018 */ lw	$s0, 0X18($sp)
/* 000830 0x80B16488 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000831 0x80B1648C 03E00008 */ jr	$ra
/* 000832 0x80B16490 00000000 */ nop

