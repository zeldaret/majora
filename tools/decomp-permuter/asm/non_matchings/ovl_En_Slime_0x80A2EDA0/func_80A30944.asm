glabel func_80A30944
/* 001769 0x80A30944 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001770 0x80A30948 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001771 0x80A3094C AFA5001C */ sw	$a1, 0X1C($sp)
/* 001772 0x80A30950 90820148 */ lbu	$v0, 0X148($a0)
/* 001773 0x80A30954 240F000A */ li	$t7, 0XA
/* 001774 0x80A30958 14400012 */ bnez	$v0, .L80A309A4
/* 001775 0x80A3095C 2443FFFB */ addiu	$v1, $v0, -0X5
/* 001776 0x80A30960 8C820124 */ lw	$v0, 0X124($a0)
/* 001777 0x80A30964 1040000B */ beqz	$v0, .L80A30994
/* 001778 0x80A30968 00000000 */ nop
/* 001779 0x80A3096C 8C4E0138 */ lw	$t6, 0X138($v0)
/* 001780 0x80A30970 3C0180A3 */ lui	$at, %hi(D_80A31CB4)
/* 001781 0x80A30974 11C00007 */ beqz	$t6, .L80A30994
/* 001782 0x80A30978 00000000 */ nop
/* 001783 0x80A3097C C444005C */ lwc1	$f4, 0X5C($v0)
/* 001784 0x80A30980 C4261CB4 */ lwc1	$f6, %lo(D_80A31CB4)($at)
/* 001785 0x80A30984 4604303E */ c.le.s	$f6, $f4
/* 001786 0x80A30988 00000000 */ nop
/* 001787 0x80A3098C 4503000B */ bc1tl .L80A309BC
/* 001788 0x80A30990 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A30994:
/* 001789 0x80A30994 0C28C2A4 */ jal	func_80A30A90
/* 001790 0x80A30998 00000000 */ nop
/* 001791 0x80A3099C 10000007 */ b	.L80A309BC
/* 001792 0x80A309A0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A309A4:
/* 001793 0x80A309A4 04610003 */ bgez	$v1, .L80A309B4
/* 001794 0x80A309A8 A08F011C */ sb	$t7, 0X11C($a0)
/* 001795 0x80A309AC 10000002 */ b	.L80A309B8
/* 001796 0x80A309B0 A0800148 */ sb	$zero, 0X148($a0)
.L80A309B4:
/* 001797 0x80A309B4 A0830148 */ sb	$v1, 0X148($a0)
.L80A309B8:
/* 001798 0x80A309B8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A309BC:
/* 001799 0x80A309BC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001800 0x80A309C0 03E00008 */ jr	$ra
/* 001801 0x80A309C4 00000000 */ nop

