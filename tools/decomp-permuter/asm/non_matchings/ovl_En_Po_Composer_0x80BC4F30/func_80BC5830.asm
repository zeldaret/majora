glabel func_80BC5830
/* 000576 0x80BC5830 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000577 0x80BC5834 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000578 0x80BC5838 AFA50024 */ sw	$a1, 0X24($sp)
/* 000579 0x80BC583C 00803825 */ move	$a3, $a0
/* 000580 0x80BC5840 84EE032E */ lh	$t6, 0X32E($a3)
/* 000581 0x80BC5844 24E401F0 */ addiu	$a0, $a3, 0X1F0
/* 000582 0x80BC5848 55C00010 */ bnezl	$t6, .L80BC588C
/* 000583 0x80BC584C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000584 0x80BC5850 8CE50200 */ lw	$a1, 0X200($a3)
/* 000585 0x80BC5854 AFA70020 */ sw	$a3, 0X20($sp)
/* 000586 0x80BC5858 0C04DE2E */ jal	func_801378B8
/* 000587 0x80BC585C AFA4001C */ sw	$a0, 0X1C($sp)
/* 000588 0x80BC5860 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000589 0x80BC5864 10400008 */ beqz	$v0, .L80BC5888
/* 000590 0x80BC5868 8FA70020 */ lw	$a3, 0X20($sp)
/* 000591 0x80BC586C 84EF032E */ lh	$t7, 0X32E($a3)
/* 000592 0x80BC5870 3C0580BC */ lui	$a1, %hi(D_80BC6808)
/* 000593 0x80BC5874 24A56808 */ addiu	$a1, $a1, %lo(D_80BC6808)
/* 000594 0x80BC5878 25F80001 */ addiu	$t8, $t7, 0X1
/* 000595 0x80BC587C A4F8032E */ sh	$t8, 0X32E($a3)
/* 000596 0x80BC5880 0C02F717 */ jal	func_800BDC5C
/* 000597 0x80BC5884 24060008 */ li	$a2, 0X8
.L80BC5888:
/* 000598 0x80BC5888 8FBF0014 */ lw	$ra, 0X14($sp)
.L80BC588C:
/* 000599 0x80BC588C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000600 0x80BC5890 03E00008 */ jr	$ra
/* 000601 0x80BC5894 00000000 */ nop

