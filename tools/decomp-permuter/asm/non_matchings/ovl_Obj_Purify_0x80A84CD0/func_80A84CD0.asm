glabel func_80A84CD0
/* 000000 0x80A84CD0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80A84CD4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80A84CD8 E7AC0018 */ swc1	$f12, 0X18($sp)
/* 000003 0x80A84CDC 0C06008D */ jal	SysMatrix_GetCurrentState
/* 000004 0x80A84CE0 00000000 */ nop
/* 000005 0x80A84CE4 C7A40018 */ lwc1	$f4, 0X18($sp)
/* 000006 0x80A84CE8 E4440034 */ swc1	$f4, 0X34($v0)
/* 000007 0x80A84CEC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000008 0x80A84CF0 03E00008 */ jr	$ra
/* 000009 0x80A84CF4 27BD0018 */ addiu	$sp, $sp, 0X18

