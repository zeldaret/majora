glabel func_80B5BE04
/* 000713 0x80B5BE04 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000714 0x80B5BE08 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000715 0x80B5BE0C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000716 0x80B5BE10 8C820388 */ lw	$v0, 0X388($a0)
/* 000717 0x80B5BE14 24010001 */ li	$at, 0X1
/* 000718 0x80B5BE18 2406FFFF */ li	$a2, -0X1
/* 000719 0x80B5BE1C 10400005 */ beqz	$v0, .L80B5BE34
/* 000720 0x80B5BE20 00003825 */ move	$a3, $zero
/* 000721 0x80B5BE24 1041000C */ beq	$v0, $at, .L80B5BE58
/* 000722 0x80B5BE28 2406FFFF */ li	$a2, -0X1
/* 000723 0x80B5BE2C 10000013 */ b	.L80B5BE7C
/* 000724 0x80B5BE30 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B5BE34:
/* 000725 0x80B5BE34 8485035A */ lh	$a1, 0X35A($a0)
/* 000726 0x80B5BE38 0C04F8B5 */ jal	func_8013E2D4
/* 000727 0x80B5BE3C AFA40018 */ sw	$a0, 0X18($sp)
/* 000728 0x80B5BE40 1040000D */ beqz	$v0, .L80B5BE78
/* 000729 0x80B5BE44 8FA40018 */ lw	$a0, 0X18($sp)
/* 000730 0x80B5BE48 0C2D6FD8 */ jal	func_80B5BF60
/* 000731 0x80B5BE4C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000732 0x80B5BE50 1000000A */ b	.L80B5BE7C
/* 000733 0x80B5BE54 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B5BE58:
/* 000734 0x80B5BE58 8485035C */ lh	$a1, 0X35C($a0)
/* 000735 0x80B5BE5C AFA40018 */ sw	$a0, 0X18($sp)
/* 000736 0x80B5BE60 0C04F8B5 */ jal	func_8013E2D4
/* 000737 0x80B5BE64 00003825 */ move	$a3, $zero
/* 000738 0x80B5BE68 10400003 */ beqz	$v0, .L80B5BE78
/* 000739 0x80B5BE6C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000740 0x80B5BE70 0C2D6FD8 */ jal	func_80B5BF60
/* 000741 0x80B5BE74 8FA5001C */ lw	$a1, 0X1C($sp)
.L80B5BE78:
/* 000742 0x80B5BE78 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B5BE7C:
/* 000743 0x80B5BE7C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000744 0x80B5BE80 03E00008 */ jr	$ra
/* 000745 0x80B5BE84 00000000 */ nop

