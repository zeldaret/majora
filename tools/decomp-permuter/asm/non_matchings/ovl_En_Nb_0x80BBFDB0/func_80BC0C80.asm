glabel func_80BC0C80
/* 000948 0x80BC0C80 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000949 0x80BC0C84 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000950 0x80BC0C88 8C8E0004 */ lw	$t6, 0X4($a0)
/* 000951 0x80BC0C8C 3C014220 */ lui	$at, 0x4220
/* 000952 0x80BC0C90 44812000 */ mtc1	$at, $f4
/* 000953 0x80BC0C94 35CF0001 */ ori	$t7, $t6, 0X1
/* 000954 0x80BC0C98 AC8F0004 */ sw	$t7, 0X4($a0)
/* 000955 0x80BC0C9C A080001F */ sb	$zero, 0X1F($a0)
/* 000956 0x80BC0CA0 A4800262 */ sh	$zero, 0X262($a0)
/* 000957 0x80BC0CA4 E4840274 */ swc1	$f4, 0X274($a0)
/* 000958 0x80BC0CA8 90C20000 */ lbu	$v0, 0X0($a2)
/* 000959 0x80BC0CAC 24010001 */ li	$at, 0X1
/* 000960 0x80BC0CB0 10410009 */ beq	$v0, $at, .L80BC0CD8
/* 000961 0x80BC0CB4 24010002 */ li	$at, 0X2
/* 000962 0x80BC0CB8 1041000B */ beq	$v0, $at, .L80BC0CE8
/* 000963 0x80BC0CBC 24010003 */ li	$at, 0X3
/* 000964 0x80BC0CC0 10410005 */ beq	$v0, $at, .L80BC0CD8
/* 000965 0x80BC0CC4 24010004 */ li	$at, 0X4
/* 000966 0x80BC0CC8 10410003 */ beq	$v0, $at, .L80BC0CD8
/* 000967 0x80BC0CCC 00000000 */ nop
/* 000968 0x80BC0CD0 10000008 */ b	.L80BC0CF4
/* 000969 0x80BC0CD4 00001825 */ move	$v1, $zero
.L80BC0CD8:
/* 000970 0x80BC0CD8 0C2F0303 */ jal	func_80BC0C0C
/* 000971 0x80BC0CDC 00000000 */ nop
/* 000972 0x80BC0CE0 10000004 */ b	.L80BC0CF4
/* 000973 0x80BC0CE4 00401825 */ move	$v1, $v0
.L80BC0CE8:
/* 000974 0x80BC0CE8 0C2F02E6 */ jal	func_80BC0B98
/* 000975 0x80BC0CEC 00000000 */ nop
/* 000976 0x80BC0CF0 00401825 */ move	$v1, $v0
.L80BC0CF4:
/* 000977 0x80BC0CF4 00601025 */ move	$v0, $v1
/* 000978 0x80BC0CF8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000979 0x80BC0CFC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000980 0x80BC0D00 03E00008 */ jr	$ra
/* 000981 0x80BC0D04 00000000 */ nop

