glabel BgKin2Shelf_Destroy
/* 000337 0x80B70074 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000338 0x80B70078 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000339 0x80B7007C AFA40018 */ sw	$a0, 0X18($sp)
/* 000340 0x80B70080 00A03825 */ move	$a3, $a1
/* 000341 0x80B70084 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000342 0x80B70088 00E02025 */ move	$a0, $a3
/* 000343 0x80B7008C 24E50880 */ addiu	$a1, $a3, 0X880
/* 000344 0x80B70090 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000345 0x80B70094 8DC60144 */ lw	$a2, 0X144($t6)
/* 000346 0x80B70098 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000347 0x80B7009C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000348 0x80B700A0 03E00008 */ jr	$ra
/* 000349 0x80B700A4 00000000 */ nop

