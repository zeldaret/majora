glabel func_808AD42C
/* 000707 0x808AD42C 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000708 0x808AD430 AFB00018 */ sw	$s0, 0X18($sp)
/* 000709 0x808AD434 00808025 */ move	$s0, $a0
/* 000710 0x808AD438 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000711 0x808AD43C AFA5002C */ sw	$a1, 0X2C($sp)
/* 000712 0x808AD440 260501F4 */ addiu	$a1, $s0, 0X1F4
/* 000713 0x808AD444 AFA50020 */ sw	$a1, 0X20($sp)
/* 000714 0x808AD448 0C02DB92 */ jal	Actor_XZDistanceToPoint
/* 000715 0x808AD44C 02002025 */ move	$a0, $s0
/* 000716 0x808AD450 8FA50020 */ lw	$a1, 0X20($sp)
/* 000717 0x808AD454 E7A00024 */ swc1	$f0, 0X24($sp)
/* 000718 0x808AD458 0C02DB4B */ jal	Actor_YawToPoint
/* 000719 0x808AD45C 02002025 */ move	$a0, $s0
/* 000720 0x808AD460 A60200BE */ sh	$v0, 0XBE($s0)
/* 000721 0x808AD464 860E00BE */ lh	$t6, 0XBE($s0)
/* 000722 0x808AD468 02002025 */ move	$a0, $s0
/* 000723 0x808AD46C 0C22B3E6 */ jal	func_808ACF98
/* 000724 0x808AD470 A60E0032 */ sh	$t6, 0X32($s0)
/* 000725 0x808AD474 920F01D8 */ lbu	$t7, 0X1D8($s0)
/* 000726 0x808AD478 26040200 */ addiu	$a0, $s0, 0X200
/* 000727 0x808AD47C 51E00004 */ beqzl	$t7, .L808AD490
/* 000728 0x808AD480 02002025 */ move	$a0, $s0
/* 000729 0x808AD484 0C03FD43 */ jal	Math_Vec3f_Copy
/* 000730 0x808AD488 26050024 */ addiu	$a1, $s0, 0X24
/* 000731 0x808AD48C 02002025 */ move	$a0, $s0
.L808AD490:
/* 000732 0x808AD490 0C22B3C7 */ jal	func_808ACF1C
/* 000733 0x808AD494 8FA5002C */ lw	$a1, 0X2C($sp)
/* 000734 0x808AD498 10400005 */ beqz	$v0, .L808AD4B0
/* 000735 0x808AD49C C7A00024 */ lwc1	$f0, 0X24($sp)
/* 000736 0x808AD4A0 0C22B553 */ jal	func_808AD54C
/* 000737 0x808AD4A4 02002025 */ move	$a0, $s0
/* 000738 0x808AD4A8 10000024 */ b	.L808AD53C
/* 000739 0x808AD4AC 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AD4B0:
/* 000740 0x808AD4B0 3C0141A0 */ lui	$at, 0x41A0
/* 000741 0x808AD4B4 44812000 */ mtc1	$at, $f4
/* 000742 0x808AD4B8 3C014220 */ lui	$at, 0x4220
/* 000743 0x808AD4BC 4604003C */ c.lt.s	$f0, $f4
/* 000744 0x808AD4C0 00000000 */ nop
/* 000745 0x808AD4C4 4502000D */ bc1fl .L808AD4FC
/* 000746 0x808AD4C8 44813000 */ mtc1	$at, $f6
/* 000747 0x808AD4CC 8E1801E8 */ lw	$t8, 0X1E8($s0)
/* 000748 0x808AD4D0 13000005 */ beqz	$t8, .L808AD4E8
/* 000749 0x808AD4D4 00000000 */ nop
/* 000750 0x808AD4D8 0C22B47C */ jal	func_808AD1F0
/* 000751 0x808AD4DC 02002025 */ move	$a0, $s0
/* 000752 0x808AD4E0 10000016 */ b	.L808AD53C
/* 000753 0x808AD4E4 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AD4E8:
/* 000754 0x808AD4E8 0C22B45C */ jal	func_808AD170
/* 000755 0x808AD4EC 02002025 */ move	$a0, $s0
/* 000756 0x808AD4F0 10000012 */ b	.L808AD53C
/* 000757 0x808AD4F4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000758 0x808AD4F8 44813000 */ mtc1	$at, $f6
.L808AD4FC:
/* 000759 0x808AD4FC 26040070 */ addiu	$a0, $s0, 0X70
/* 000760 0x808AD500 3C054040 */ lui	$a1, 0x4040
/* 000761 0x808AD504 4606003C */ c.lt.s	$f0, $f6
/* 000762 0x808AD508 3C063E99 */ lui	$a2, 0x3E99
/* 000763 0x808AD50C 45000008 */ bc1f .L808AD530
/* 000764 0x808AD510 00000000 */ nop
/* 000765 0x808AD514 3C063E99 */ lui	$a2, 0x3E99
/* 000766 0x808AD518 34C6999A */ ori	$a2, $a2, 0X999A
/* 000767 0x808AD51C 26040070 */ addiu	$a0, $s0, 0X70
/* 000768 0x808AD520 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000769 0x808AD524 3C053F00 */ lui	$a1, 0x3F00
/* 000770 0x808AD528 10000004 */ b	.L808AD53C
/* 000771 0x808AD52C 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AD530:
/* 000772 0x808AD530 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000773 0x808AD534 34C6999A */ ori	$a2, $a2, 0X999A
/* 000774 0x808AD538 8FBF001C */ lw	$ra, 0X1C($sp)
.L808AD53C:
/* 000775 0x808AD53C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000776 0x808AD540 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000777 0x808AD544 03E00008 */ jr	$ra
/* 000778 0x808AD548 00000000 */ nop

