glabel func_80917E8C
/* 000767 0x80917E8C 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000768 0x80917E90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000769 0x80917E94 AFA50024 */ sw	$a1, 0X24($sp)
/* 000770 0x80917E98 00803825 */ move	$a3, $a0
/* 000771 0x80917E9C 00E02025 */ move	$a0, $a3
/* 000772 0x80917EA0 8FA50024 */ lw	$a1, 0X24($sp)
/* 000773 0x80917EA4 0C245CDE */ jal	func_80917378
/* 000774 0x80917EA8 AFA70020 */ sw	$a3, 0X20($sp)
/* 000775 0x80917EAC 1040000F */ beqz	$v0, .L80917EEC
/* 000776 0x80917EB0 8FA70020 */ lw	$a3, 0X20($sp)
/* 000777 0x80917EB4 944E0160 */ lhu	$t6, 0X160($v0)
/* 000778 0x80917EB8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000779 0x80917EBC 31CF0020 */ andi	$t7, $t6, 0X20
/* 000780 0x80917EC0 51E0000B */ beqzl	$t7, .L80917EF0
/* 000781 0x80917EC4 94F80160 */ lhu	$t8, 0X160($a3)
/* 000782 0x80917EC8 84450150 */ lh	$a1, 0X150($v0)
/* 000783 0x80917ECC 8C460174 */ lw	$a2, 0X174($v0)
/* 000784 0x80917ED0 AFA70020 */ sw	$a3, 0X20($sp)
/* 000785 0x80917ED4 0C245F05 */ jal	func_80917C14
/* 000786 0x80917ED8 AFA20018 */ sw	$v0, 0X18($sp)
/* 000787 0x80917EDC 8FA30018 */ lw	$v1, 0X18($sp)
/* 000788 0x80917EE0 14400002 */ bnez	$v0, .L80917EEC
/* 000789 0x80917EE4 8FA70020 */ lw	$a3, 0X20($sp)
/* 000790 0x80917EE8 ACE301B8 */ sw	$v1, 0X1B8($a3)
.L80917EEC:
/* 000791 0x80917EEC 94F80160 */ lhu	$t8, 0X160($a3)
.L80917EF0:
/* 000792 0x80917EF0 33190100 */ andi	$t9, $t8, 0X100
/* 000793 0x80917EF4 53200020 */ beqzl	$t9, .L80917F78
/* 000794 0x80917EF8 00001025 */ move	$v0, $zero
/* 000795 0x80917EFC 8CE201B8 */ lw	$v0, 0X1B8($a3)
/* 000796 0x80917F00 5040001D */ beqzl	$v0, .L80917F78
/* 000797 0x80917F04 00001025 */ move	$v0, $zero
/* 000798 0x80917F08 94430160 */ lhu	$v1, 0X160($v0)
/* 000799 0x80917F0C 30680010 */ andi	$t0, $v1, 0X10
/* 000800 0x80917F10 11000015 */ beqz	$t0, .L80917F68
/* 000801 0x80917F14 30690020 */ andi	$t1, $v1, 0X20
/* 000802 0x80917F18 C4440024 */ lwc1	$f4, 0X24($v0)
/* 000803 0x80917F1C C4460108 */ lwc1	$f6, 0X108($v0)
/* 000804 0x80917F20 00E02025 */ move	$a0, $a3
/* 000805 0x80917F24 46062201 */ sub.s	$f8, $f4, $f6
/* 000806 0x80917F28 C4E40024 */ lwc1	$f4, 0X24($a3)
/* 000807 0x80917F2C E4E801BC */ swc1	$f8, 0X1BC($a3)
/* 000808 0x80917F30 C4500110 */ lwc1	$f16, 0X110($v0)
/* 000809 0x80917F34 C44A002C */ lwc1	$f10, 0X2C($v0)
/* 000810 0x80917F38 C4E601BC */ lwc1	$f6, 0X1BC($a3)
/* 000811 0x80917F3C 46105481 */ sub.s	$f18, $f10, $f16
/* 000812 0x80917F40 C4EA002C */ lwc1	$f10, 0X2C($a3)
/* 000813 0x80917F44 46062200 */ add.s	$f8, $f4, $f6
/* 000814 0x80917F48 E4F201C0 */ swc1	$f18, 0X1C0($a3)
/* 000815 0x80917F4C C4F001C0 */ lwc1	$f16, 0X1C0($a3)
/* 000816 0x80917F50 E4E80024 */ swc1	$f8, 0X24($a3)
/* 000817 0x80917F54 46105480 */ add.s	$f18, $f10, $f16
/* 000818 0x80917F58 0C245D02 */ jal	func_80917408
/* 000819 0x80917F5C E4F2002C */ swc1	$f18, 0X2C($a3)
/* 000820 0x80917F60 10000005 */ b	.L80917F78
/* 000821 0x80917F64 24020001 */ li	$v0, 0X1
.L80917F68:
/* 000822 0x80917F68 55200003 */ bnezl	$t1, .L80917F78
/* 000823 0x80917F6C 00001025 */ move	$v0, $zero
/* 000824 0x80917F70 ACE001B8 */ sw	$zero, 0X1B8($a3)
/* 000825 0x80917F74 00001025 */ move	$v0, $zero
.L80917F78:
/* 000826 0x80917F78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000827 0x80917F7C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000828 0x80917F80 03E00008 */ jr	$ra
/* 000829 0x80917F84 00000000 */ nop

