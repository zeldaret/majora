glabel EnFuKago_Destroy
/* 000065 0x80ACF884 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000066 0x80ACF888 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000067 0x80ACF88C AFA40018 */ sw	$a0, 0X18($sp)
/* 000068 0x80ACF890 00A03825 */ move	$a3, $a1
/* 000069 0x80ACF894 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000070 0x80ACF898 00E02025 */ move	$a0, $a3
/* 000071 0x80ACF89C 24E50880 */ addiu	$a1, $a3, 0X880
/* 000072 0x80ACF8A0 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000073 0x80ACF8A4 8DC60144 */ lw	$a2, 0X144($t6)
/* 000074 0x80ACF8A8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000075 0x80ACF8AC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000076 0x80ACF8B0 03E00008 */ jr	$ra
/* 000077 0x80ACF8B4 00000000 */ nop

