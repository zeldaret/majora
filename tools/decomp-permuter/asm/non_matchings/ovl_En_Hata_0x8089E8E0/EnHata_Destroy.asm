glabel EnHata_Destroy
/* 000063 0x8089E9DC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000064 0x8089E9E0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000065 0x8089E9E4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000066 0x8089E9E8 00A03825 */ move	$a3, $a1
/* 000067 0x8089E9EC 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000068 0x8089E9F0 00E02025 */ move	$a0, $a3
/* 000069 0x8089E9F4 24E50880 */ addiu	$a1, $a3, 0X880
/* 000070 0x8089E9F8 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000071 0x8089E9FC 8DC60144 */ lw	$a2, 0X144($t6)
/* 000072 0x8089EA00 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000073 0x8089EA04 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000074 0x8089EA08 03E00008 */ jr	$ra
/* 000075 0x8089EA0C 00000000 */ nop

