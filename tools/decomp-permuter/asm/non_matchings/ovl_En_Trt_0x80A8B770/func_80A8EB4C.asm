glabel func_80A8EB4C
/* 003319 0x80A8EB4C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 003320 0x80A8EB50 AFBF0014 */ sw	$ra, 0X14($sp)
/* 003321 0x80A8EB54 AFA40018 */ sw	$a0, 0X18($sp)
/* 003322 0x80A8EB58 00A03025 */ move	$a2, $a1
/* 003323 0x80A8EB5C 3C0E80A9 */ lui	$t6, %hi(func_80A8E9A4)
/* 003324 0x80A8EB60 25CEE9A4 */ addiu	$t6, $t6, %lo(func_80A8E9A4)
/* 003325 0x80A8EB64 ACCE0144 */ sw	$t6, 0X144($a2)
/* 003326 0x80A8EB68 94C5040A */ lhu	$a1, 0X40A($a2)
/* 003327 0x80A8EB6C AFA6001C */ sw	$a2, 0X1C($sp)
/* 003328 0x80A8EB70 0C05464E */ jal	func_80151938
/* 003329 0x80A8EB74 8FA40018 */ lw	$a0, 0X18($sp)
/* 003330 0x80A8EB78 8FA40018 */ lw	$a0, 0X18($sp)
/* 003331 0x80A8EB7C 0C04554B */ jal	func_8011552C
/* 003332 0x80A8EB80 24050006 */ li	$a1, 0X6
/* 003333 0x80A8EB84 8FA6001C */ lw	$a2, 0X1C($sp)
/* 003334 0x80A8EB88 ACC00384 */ sw	$zero, 0X384($a2)
/* 003335 0x80A8EB8C ACC003BC */ sw	$zero, 0X3BC($a2)
/* 003336 0x80A8EB90 8FBF0014 */ lw	$ra, 0X14($sp)
/* 003337 0x80A8EB94 03E00008 */ jr	$ra
/* 003338 0x80A8EB98 27BD0018 */ addiu	$sp, $sp, 0X18

