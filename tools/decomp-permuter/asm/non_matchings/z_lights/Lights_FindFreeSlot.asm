glabel Lights_FindFreeSlot
/* 094790 0x801023D8 3C05801F */ lui	$a1, %hi(lightsList)
/* 094791 0x801023DC 24A54F70 */ addiu	$a1, $a1, %lo(lightsList)
/* 094792 0x801023E0 8CA30000 */ lw	$v1, 0X0($a1)
/* 094793 0x801023E4 28610020 */ slti	$at, $v1, 0X20
/* 094794 0x801023E8 14200003 */ bnez	$at, .L801023F8
/* 094795 0x801023EC 246B0001 */ addiu	$t3, $v1, 0X1
/* 094796 0x801023F0 03E00008 */ jr	$ra
/* 094797 0x801023F4 00001025 */ move	$v0, $zero
.L801023F8:
/* 094798 0x801023F8 8CAE0004 */ lw	$t6, 0X4($a1)
/* 094799 0x801023FC 3C02801F */ lui	$v0, %hi(lightsList + 0x8)
/* 094800 0x80102400 24424F78 */ addiu	$v0, $v0, %lo(lightsList + 0x8)
/* 094801 0x80102404 000E7880 */ sll	$t7, $t6, 2
/* 094802 0x80102408 01EE7823 */ subu	$t7, $t7, $t6
/* 094803 0x8010240C 000F7880 */ sll	$t7, $t7, 2
/* 094804 0x80102410 00AF2021 */ addu	$a0, $a1, $t7
/* 094805 0x80102414 8C980008 */ lw	$t8, 0X8($a0)
/* 094806 0x80102418 24840008 */ addiu	$a0, $a0, 0X8
/* 094807 0x8010241C 5300000E */ beqzl	$t8, .L80102458
/* 094808 0x80102420 ACAB0000 */ sw	$t3, 0X0($a1)
/* 094809 0x80102424 8CB90004 */ lw	$t9, 0X4($a1)
.L80102428:
/* 094810 0x80102428 27280001 */ addiu	$t0, $t9, 0X1
/* 094811 0x8010242C 29010020 */ slti	$at, $t0, 0X20
/* 094812 0x80102430 10200003 */ beqz	$at, .L80102440
/* 094813 0x80102434 ACA80004 */ sw	$t0, 0X4($a1)
/* 094814 0x80102438 10000003 */ b	.L80102448
/* 094815 0x8010243C 2484000C */ addiu	$a0, $a0, 0XC
.L80102440:
/* 094816 0x80102440 ACA00004 */ sw	$zero, 0X4($a1)
/* 094817 0x80102444 00402025 */ move	$a0, $v0
.L80102448:
/* 094818 0x80102448 8C8A0000 */ lw	$t2, 0X0($a0)
/* 094819 0x8010244C 5540FFF6 */ bnezl	$t2, .L80102428
/* 094820 0x80102450 8CB90004 */ lw	$t9, 0X4($a1)
/* 094821 0x80102454 ACAB0000 */ sw	$t3, 0X0($a1)
.L80102458:
/* 094822 0x80102458 00801025 */ move	$v0, $a0
/* 094823 0x8010245C 03E00008 */ jr	$ra
/* 094824 0x80102460 00000000 */ nop

