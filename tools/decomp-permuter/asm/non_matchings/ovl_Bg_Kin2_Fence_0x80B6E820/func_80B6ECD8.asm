glabel func_80B6ECD8
/* 000302 0x80B6ECD8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000303 0x80B6ECDC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000304 0x80B6ECE0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000305 0x80B6ECE4 00803825 */ move	$a3, $a0
/* 000306 0x80B6ECE8 3C014268 */ lui	$at, 0x4268
/* 000307 0x80B6ECEC 44813000 */ mtc1	$at, $f6
/* 000308 0x80B6ECF0 C4E4000C */ lwc1	$f4, 0XC($a3)
/* 000309 0x80B6ECF4 AFA70018 */ sw	$a3, 0X18($sp)
/* 000310 0x80B6ECF8 24E40028 */ addiu	$a0, $a3, 0X28
/* 000311 0x80B6ECFC 46062200 */ add.s	$f8, $f4, $f6
/* 000312 0x80B6ED00 3C0640A0 */ lui	$a2, 0x40A0
/* 000313 0x80B6ED04 44054000 */ mfc1	$a1, $f8
/* 000314 0x80B6ED08 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 000315 0x80B6ED0C 00000000 */ nop
/* 000316 0x80B6ED10 10400003 */ beqz	$v0, .L80B6ED20
/* 000317 0x80B6ED14 8FA70018 */ lw	$a3, 0X18($sp)
/* 000318 0x80B6ED18 0C2DBB4C */ jal	func_80B6ED30
/* 000319 0x80B6ED1C 00E02025 */ move	$a0, $a3
.L80B6ED20:
/* 000320 0x80B6ED20 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000321 0x80B6ED24 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000322 0x80B6ED28 03E00008 */ jr	$ra
/* 000323 0x80B6ED2C 00000000 */ nop

