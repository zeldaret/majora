glabel func_80A1E6D4
/* 000801 0x80A1E6D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000802 0x80A1E6D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000803 0x80A1E6DC 0C2879A5 */ jal	func_80A1E694
/* 000804 0x80A1E6E0 00000000 */ nop
/* 000805 0x80A1E6E4 1040000B */ beqz	$v0, .L80A1E714
/* 000806 0x80A1E6E8 24440024 */ addiu	$a0, $v0, 0X24
/* 000807 0x80A1E6EC 0C05E9BE */ jal	Math3D_DistanceSquared
/* 000808 0x80A1E6F0 24450108 */ addiu	$a1, $v0, 0X108
/* 000809 0x80A1E6F4 3C0180A2 */ lui	$at, %hi(D_80A1F230)
/* 000810 0x80A1E6F8 C424F230 */ lwc1	$f4, %lo(D_80A1F230)($at)
/* 000811 0x80A1E6FC 4600203C */ c.lt.s	$f4, $f0
/* 000812 0x80A1E700 00000000 */ nop
/* 000813 0x80A1E704 45020004 */ bc1fl .L80A1E718
/* 000814 0x80A1E708 00001025 */ move	$v0, $zero
/* 000815 0x80A1E70C 10000002 */ b	.L80A1E718
/* 000816 0x80A1E710 24020001 */ li	$v0, 0X1
.L80A1E714:
/* 000817 0x80A1E714 00001025 */ move	$v0, $zero
.L80A1E718:
/* 000818 0x80A1E718 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000819 0x80A1E71C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000820 0x80A1E720 03E00008 */ jr	$ra
/* 000821 0x80A1E724 00000000 */ nop


.section .late_rodata

glabel D_80A1F230
/* 001528 0x80A1F230 */ .word	0x38D1B717
