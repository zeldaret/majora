glabel ObjSpidertent_Destroy
/* 000802 0x80B30798 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000803 0x80B3079C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000804 0x80B307A0 AFA40018 */ sw	$a0, 0X18($sp)
/* 000805 0x80B307A4 00A03825 */ move	$a3, $a1
/* 000806 0x80B307A8 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000807 0x80B307AC 00E02025 */ move	$a0, $a3
/* 000808 0x80B307B0 24E50880 */ addiu	$a1, $a3, 0X880
/* 000809 0x80B307B4 8DC60144 */ lw	$a2, 0X144($t6)
/* 000810 0x80B307B8 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000811 0x80B307BC AFA7001C */ sw	$a3, 0X1C($sp)
/* 000812 0x80B307C0 8FA50018 */ lw	$a1, 0X18($sp)
/* 000813 0x80B307C4 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000814 0x80B307C8 0C0385ED */ jal	Collision_FiniTriGroup
/* 000815 0x80B307CC 24A5015C */ addiu	$a1, $a1, 0X15C
/* 000816 0x80B307D0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000817 0x80B307D4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000818 0x80B307D8 03E00008 */ jr	$ra
/* 000819 0x80B307DC 00000000 */ nop

