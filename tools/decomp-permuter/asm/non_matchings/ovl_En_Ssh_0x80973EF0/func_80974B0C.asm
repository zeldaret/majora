glabel func_80974B0C
/* 000775 0x80974B0C C4800068 */ lwc1	$f0, 0X68($a0)
/* 000776 0x80974B10 C4840028 */ lwc1	$f4, 0X28($a0)
/* 000777 0x80974B14 C488000C */ lwc1	$f8, 0XC($a0)
/* 000778 0x80974B18 46000180 */ add.s	$f6, $f0, $f0
/* 000779 0x80974B1C 00001025 */ move	$v0, $zero
/* 000780 0x80974B20 46062080 */ add.s	$f2, $f4, $f6
/* 000781 0x80974B24 4602403E */ c.le.s	$f8, $f2
/* 000782 0x80974B28 00000000 */ nop
/* 000783 0x80974B2C 45000003 */ bc1f .L80974B3C
/* 000784 0x80974B30 00000000 */ nop
/* 000785 0x80974B34 03E00008 */ jr	$ra
/* 000786 0x80974B38 24020001 */ li	$v0, 0X1
.L80974B3C:
/* 000787 0x80974B3C 03E00008 */ jr	$ra
/* 000788 0x80974B40 00000000 */ nop

