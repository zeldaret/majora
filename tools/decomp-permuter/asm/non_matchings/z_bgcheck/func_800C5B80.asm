glabel func_800C5B80
/* 032816 0x800C5B80 94820002 */ lhu	$v0, 0X2($a0)
/* 032817 0x800C5B84 94880000 */ lhu	$t0, 0X0($a0)
/* 032818 0x800C5B88 8C8E0004 */ lw	$t6, 0X4($a0)
/* 032819 0x800C5B8C 24580001 */ addiu	$t8, $v0, 0X1
/* 032820 0x800C5B90 3319FFFF */ andi	$t9, $t8, 0XFFFF
/* 032821 0x800C5B94 00027880 */ sll	$t7, $v0, 2
/* 032822 0x800C5B98 0328082A */ slt	$at, $t9, $t0
/* 032823 0x800C5B9C A4980002 */ sh	$t8, 0X2($a0)
/* 032824 0x800C5BA0 14200003 */ bnez	$at, .L800C5BB0
/* 032825 0x800C5BA4 01CF1821 */ addu	$v1, $t6, $t7
/* 032826 0x800C5BA8 03E00008 */ jr	$ra
/* 032827 0x800C5BAC 00001025 */ move	$v0, $zero
.L800C5BB0:
/* 032828 0x800C5BB0 00601025 */ move	$v0, $v1
/* 032829 0x800C5BB4 03E00008 */ jr	$ra
/* 032830 0x800C5BB8 00000000 */ nop

