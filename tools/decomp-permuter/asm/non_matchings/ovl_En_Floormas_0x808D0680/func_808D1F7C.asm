glabel func_808D1F7C
/* 001599 0x808D1F7C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001600 0x808D1F80 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001601 0x808D1F84 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001602 0x808D1F88 00803825 */ move	$a3, $a0
/* 001603 0x808D1F8C 3C063AC4 */ lui	$a2, 0x3AC4
/* 001604 0x808D1F90 34C69BA6 */ ori	$a2, $a2, 0X9BA6
/* 001605 0x808D1F94 24E40058 */ addiu	$a0, $a3, 0X58
/* 001606 0x808D1F98 24050000 */ li	$a1, 0X0
/* 001607 0x808D1F9C 0C03FC0F */ jal	Lib_StepTowardsCheck_f
/* 001608 0x808D1FA0 AFA70018 */ sw	$a3, 0X18($sp)
/* 001609 0x808D1FA4 10400005 */ beqz	$v0, .L808D1FBC
/* 001610 0x808D1FA8 8FA70018 */ lw	$a3, 0X18($sp)
/* 001611 0x808D1FAC 00E02025 */ move	$a0, $a3
/* 001612 0x808D1FB0 0C234A88 */ jal	func_808D2A20
/* 001613 0x808D1FB4 AFA70018 */ sw	$a3, 0X18($sp)
/* 001614 0x808D1FB8 8FA70018 */ lw	$a3, 0X18($sp)
.L808D1FBC:
/* 001615 0x808D1FBC C4E00058 */ lwc1	$f0, 0X58($a3)
/* 001616 0x808D1FC0 E4E00060 */ swc1	$f0, 0X60($a3)
/* 001617 0x808D1FC4 E4E0005C */ swc1	$f0, 0X5C($a3)
/* 001618 0x808D1FC8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001619 0x808D1FCC 03E00008 */ jr	$ra
/* 001620 0x808D1FD0 27BD0018 */ addiu	$sp, $sp, 0X18

