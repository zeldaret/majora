glabel ObjSmork_Init
/* 000722 0x80A3E1C8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000723 0x80A3E1CC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000724 0x80A3E1D0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000725 0x80A3E1D4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000726 0x80A3E1D8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000727 0x80A3E1DC 3C0580A4 */ lui	$a1, %hi(D_80A3E290)
/* 000728 0x80A3E1E0 24A5E290 */ addiu	$a1, $a1, %lo(D_80A3E290)
/* 000729 0x80A3E1E4 24060070 */ li	$a2, 0X70
/* 000730 0x80A3E1E8 0C03FB24 */ jal	Lib_bcopy
/* 000731 0x80A3E1EC 24840148 */ addiu	$a0, $a0, 0X148
/* 000732 0x80A3E1F0 00002025 */ move	$a0, $zero
/* 000733 0x80A3E1F4 0C03FD14 */ jal	Math_Rand_S16Offset
/* 000734 0x80A3E1F8 2405003B */ li	$a1, 0X3B
/* 000735 0x80A3E1FC 8FA30018 */ lw	$v1, 0X18($sp)
/* 000736 0x80A3E200 A46201C6 */ sh	$v0, 0X1C6($v1)
/* 000737 0x80A3E204 A06001C4 */ sb	$zero, 0X1C4($v1)
/* 000738 0x80A3E208 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000739 0x80A3E20C 03E00008 */ jr	$ra
/* 000740 0x80A3E210 27BD0018 */ addiu	$sp, $sp, 0X18

