glabel EnDnk_Update
/* 000313 0x80A519D4 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000314 0x80A519D8 AFB10018 */ sw	$s1, 0X18($sp)
/* 000315 0x80A519DC AFB00014 */ sw	$s0, 0X14($sp)
/* 000316 0x80A519E0 00808025 */ move	$s0, $a0
/* 000317 0x80A519E4 00A08825 */ move	$s1, $a1
/* 000318 0x80A519E8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000319 0x80A519EC 8E190188 */ lw	$t9, 0X188($s0)
/* 000320 0x80A519F0 02002025 */ move	$a0, $s0
/* 000321 0x80A519F4 02202825 */ move	$a1, $s1
/* 000322 0x80A519F8 0320F809 */ jalr	$t9
/* 000323 0x80A519FC 00000000 */ nop
/* 000324 0x80A51A00 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000325 0x80A51A04 26040144 */ addiu	$a0, $s0, 0X144
/* 000326 0x80A51A08 0C294571 */ jal	func_80A515C4
/* 000327 0x80A51A0C 02002025 */ move	$a0, $s0
/* 000328 0x80A51A10 02002025 */ move	$a0, $s0
/* 000329 0x80A51A14 0C02D9D7 */ jal	Actor_SetHeight
/* 000330 0x80A51A18 3C054208 */ lui	$a1, 0x4208
/* 000331 0x80A51A1C 26050190 */ addiu	$a1, $s0, 0X190
/* 000332 0x80A51A20 AFA50020 */ sw	$a1, 0X20($sp)
/* 000333 0x80A51A24 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000334 0x80A51A28 02002025 */ move	$a0, $s0
/* 000335 0x80A51A2C 3C010001 */ lui	$at, 0x0001
/* 000336 0x80A51A30 34218884 */ ori	$at, $at, 0X8884
/* 000337 0x80A51A34 02212821 */ addu	$a1, $s1, $at
/* 000338 0x80A51A38 AFA50024 */ sw	$a1, 0X24($sp)
/* 000339 0x80A51A3C 02202025 */ move	$a0, $s1
/* 000340 0x80A51A40 0C0389D0 */ jal	Collision_AddAC
/* 000341 0x80A51A44 8FA60020 */ lw	$a2, 0X20($sp)
/* 000342 0x80A51A48 8FA50024 */ lw	$a1, 0X24($sp)
/* 000343 0x80A51A4C 02202025 */ move	$a0, $s1
/* 000344 0x80A51A50 0C038A4A */ jal	Collision_AddOT
/* 000345 0x80A51A54 8FA60020 */ lw	$a2, 0X20($sp)
/* 000346 0x80A51A58 02002025 */ move	$a0, $s0
/* 000347 0x80A51A5C 0C29484D */ jal	func_80A52134
/* 000348 0x80A51A60 02202825 */ move	$a1, $s1
/* 000349 0x80A51A64 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000350 0x80A51A68 8FB00014 */ lw	$s0, 0X14($sp)
/* 000351 0x80A51A6C 8FB10018 */ lw	$s1, 0X18($sp)
/* 000352 0x80A51A70 03E00008 */ jr	$ra
/* 000353 0x80A51A74 27BD0030 */ addiu	$sp, $sp, 0X30

