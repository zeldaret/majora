glabel func_80B024AC
/* 000711 0x80B024AC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000712 0x80B024B0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000713 0x80B024B4 00802825 */ move	$a1, $a0
/* 000714 0x80B024B8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000715 0x80B024BC AFA40018 */ sw	$a0, 0X18($sp)
/* 000716 0x80B024C0 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000717 0x80B024C4 24A40144 */ addiu	$a0, $a1, 0X144
/* 000718 0x80B024C8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000719 0x80B024CC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000720 0x80B024D0 03E00008 */ jr	$ra
/* 000721 0x80B024D4 00000000 */ nop

