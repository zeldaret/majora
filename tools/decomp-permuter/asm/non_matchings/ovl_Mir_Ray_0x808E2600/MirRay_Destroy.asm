glabel MirRay_Destroy
/* 000321 0x808E2B04 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000322 0x808E2B08 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000323 0x808E2B0C AFA40018 */ sw	$a0, 0X18($sp)
/* 000324 0x808E2B10 00A03825 */ move	$a3, $a1
/* 000325 0x808E2B14 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000326 0x808E2B18 00E02025 */ move	$a0, $a3
/* 000327 0x808E2B1C 24E50818 */ addiu	$a1, $a3, 0X818
/* 000328 0x808E2B20 8DC60294 */ lw	$a2, 0X294($t6)
/* 000329 0x808E2B24 0C0409A1 */ jal	Lights_Remove
/* 000330 0x808E2B28 AFA7001C */ sw	$a3, 0X1C($sp)
/* 000331 0x808E2B2C 8FA20018 */ lw	$v0, 0X18($sp)
/* 000332 0x808E2B30 3C19808E */ lui	$t9, %hi(D_808E3C97)
/* 000333 0x808E2B34 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000334 0x808E2B38 844F001C */ lh	$t7, 0X1C($v0)
/* 000335 0x808E2B3C 000FC140 */ sll	$t8, $t7, 5
/* 000336 0x808E2B40 0338C821 */ addu	$t9, $t9, $t8
/* 000337 0x808E2B44 93393C97 */ lbu	$t9, %lo(D_808E3C97)($t9)
/* 000338 0x808E2B48 33280002 */ andi	$t0, $t9, 0X2
/* 000339 0x808E2B4C 51000005 */ beqzl	$t0, .L808E2B64
/* 000340 0x808E2B50 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000341 0x808E2B54 0C038306 */ jal	Collision_FiniSphereGroup
/* 000342 0x808E2B58 24450144 */ addiu	$a1, $v0, 0X144
/* 000343 0x808E2B5C 8FA20018 */ lw	$v0, 0X18($sp)
/* 000344 0x808E2B60 8FA4001C */ lw	$a0, 0X1C($sp)
.L808E2B64:
/* 000345 0x808E2B64 0C03879A */ jal	Collision_FiniQuad
/* 000346 0x808E2B68 244501A4 */ addiu	$a1, $v0, 0X1A4
/* 000347 0x808E2B6C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000348 0x808E2B70 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000349 0x808E2B74 03E00008 */ jr	$ra
/* 000350 0x808E2B78 00000000 */ nop

