glabel EnGk_Destroy
/* 002410 0x80B529B8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002411 0x80B529BC AFBF0014 */ sw	$ra, 0X14($sp)
/* 002412 0x80B529C0 00803025 */ move	$a2, $a0
/* 002413 0x80B529C4 00A03825 */ move	$a3, $a1
/* 002414 0x80B529C8 00E02025 */ move	$a0, $a3
/* 002415 0x80B529CC 0C03847B */ jal	Collision_FiniCylinder
/* 002416 0x80B529D0 24C50144 */ addiu	$a1, $a2, 0X144
/* 002417 0x80B529D4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002418 0x80B529D8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002419 0x80B529DC 03E00008 */ jr	$ra
/* 002420 0x80B529E0 00000000 */ nop

