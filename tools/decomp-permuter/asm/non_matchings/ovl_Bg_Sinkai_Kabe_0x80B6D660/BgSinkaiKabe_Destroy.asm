glabel BgSinkaiKabe_Destroy
/* 000227 0x80B6D9EC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000228 0x80B6D9F0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000229 0x80B6D9F4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000230 0x80B6D9F8 00A03825 */ move	$a3, $a1
/* 000231 0x80B6D9FC 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000232 0x80B6DA00 00E02025 */ move	$a0, $a3
/* 000233 0x80B6DA04 24E50880 */ addiu	$a1, $a3, 0X880
/* 000234 0x80B6DA08 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000235 0x80B6DA0C 8DC60144 */ lw	$a2, 0X144($t6)
/* 000236 0x80B6DA10 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000237 0x80B6DA14 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000238 0x80B6DA18 03E00008 */ jr	$ra
/* 000239 0x80B6DA1C 00000000 */ nop

