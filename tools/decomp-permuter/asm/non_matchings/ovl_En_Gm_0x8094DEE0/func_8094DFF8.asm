glabel func_8094DFF8
/* 000070 0x8094DFF8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000071 0x8094DFFC AFA5001C */ sw	$a1, 0X1C($sp)
/* 000072 0x8094E000 00802825 */ move	$a1, $a0
/* 000073 0x8094E004 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000074 0x8094E008 AFA40018 */ sw	$a0, 0X18($sp)
/* 000075 0x8094E00C 80A20262 */ lb	$v0, 0X262($a1)
/* 000076 0x8094E010 00001825 */ move	$v1, $zero
/* 000077 0x8094E014 04410003 */ bgez	$v0, .L8094E024
/* 000078 0x8094E018 00000000 */ nop
/* 000079 0x8094E01C 10000009 */ b	.L8094E044
/* 000080 0x8094E020 00001025 */ move	$v0, $zero
.L8094E024:
/* 000081 0x8094E024 04420007 */ bltzl	$v0, .L8094E044
/* 000082 0x8094E028 00601025 */ move	$v0, $v1
/* 000083 0x8094E02C C4A403A8 */ lwc1	$f4, 0X3A8($a1)
/* 000084 0x8094E030 24A40144 */ addiu	$a0, $a1, 0X144
/* 000085 0x8094E034 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000086 0x8094E038 E4A40160 */ swc1	$f4, 0X160($a1)
/* 000087 0x8094E03C 00401825 */ move	$v1, $v0
/* 000088 0x8094E040 00601025 */ move	$v0, $v1
.L8094E044:
/* 000089 0x8094E044 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000090 0x8094E048 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000091 0x8094E04C 03E00008 */ jr	$ra
/* 000092 0x8094E050 00000000 */ nop

