glabel func_80B165E0
/* 000916 0x80B165E0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000917 0x80B165E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000918 0x80B165E8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000919 0x80B165EC 00803825 */ move	$a3, $a0
/* 000920 0x80B165F0 8CE5000C */ lw	$a1, 0XC($a3)
/* 000921 0x80B165F4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000922 0x80B165F8 24E40028 */ addiu	$a0, $a3, 0X28
/* 000923 0x80B165FC 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000924 0x80B16600 3C0640C0 */ lui	$a2, 0x40C0
/* 000925 0x80B16604 10400004 */ beqz	$v0, .L80B16618
/* 000926 0x80B16608 8FA70018 */ lw	$a3, 0X18($sp)
/* 000927 0x80B1660C 00E02025 */ move	$a0, $a3
/* 000928 0x80B16610 0C2C5891 */ jal	func_80B16244
/* 000929 0x80B16614 8FA5001C */ lw	$a1, 0X1C($sp)
.L80B16618:
/* 000930 0x80B16618 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000931 0x80B1661C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000932 0x80B16620 03E00008 */ jr	$ra
/* 000933 0x80B16624 00000000 */ nop

