glabel BgLotus_Destroy
/* 000039 0x80AD67FC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000040 0x80AD6800 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000041 0x80AD6804 AFA40018 */ sw	$a0, 0X18($sp)
/* 000042 0x80AD6808 00A03825 */ move	$a3, $a1
/* 000043 0x80AD680C 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000044 0x80AD6810 00E02025 */ move	$a0, $a3
/* 000045 0x80AD6814 24E50880 */ addiu	$a1, $a3, 0X880
/* 000046 0x80AD6818 0C031933 */ jal	BgCheck_RemoveActorMesh
/* 000047 0x80AD681C 8DC60144 */ lw	$a2, 0X144($t6)
/* 000048 0x80AD6820 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000049 0x80AD6824 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000050 0x80AD6828 03E00008 */ jr	$ra
/* 000051 0x80AD682C 00000000 */ nop

