glabel ObjFlowerpot_Destroy
/* 001287 0x80A1C7EC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001288 0x80A1C7F0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001289 0x80A1C7F4 00803825 */ move	$a3, $a0
/* 001290 0x80A1C7F8 00A03025 */ move	$a2, $a1
/* 001291 0x80A1C7FC 00C02025 */ move	$a0, $a2
/* 001292 0x80A1C800 0C038306 */ jal	Collision_FiniSphereGroup
/* 001293 0x80A1C804 24E50144 */ addiu	$a1, $a3, 0X144
/* 001294 0x80A1C808 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001295 0x80A1C80C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001296 0x80A1C810 03E00008 */ jr	$ra
/* 001297 0x80A1C814 00000000 */ nop

