glabel func_8087EC20
/* 003388 0x8087EC20 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 003389 0x8087EC24 AFBF0014 */ sw	$ra, 0X14($sp)
/* 003390 0x8087EC28 00803025 */ move	$a2, $a0
/* 003391 0x8087EC2C 8CD80150 */ lw	$t8, 0X150($a2)
/* 003392 0x8087EC30 240E000C */ li	$t6, 0XC
/* 003393 0x8087EC34 240F0006 */ li	$t7, 0X6
/* 003394 0x8087EC38 3C088089 */ lui	$t0, %hi(D_80888F08)
/* 003395 0x8087EC3C 0018C880 */ sll	$t9, $t8, 2
/* 003396 0x8087EC40 ACC00148 */ sw	$zero, 0X148($a2)
/* 003397 0x8087EC44 ACC0014C */ sw	$zero, 0X14C($a2)
/* 003398 0x8087EC48 ACCE0144 */ sw	$t6, 0X144($a2)
/* 003399 0x8087EC4C ACCF020C */ sw	$t7, 0X20C($a2)
/* 003400 0x8087EC50 ACC00230 */ sw	$zero, 0X230($a2)
/* 003401 0x8087EC54 01194021 */ addu	$t0, $t0, $t9
/* 003402 0x8087EC58 8D088F08 */ lw	$t0, %lo(D_80888F08)($t0)
/* 003403 0x8087EC5C 24C401A4 */ addiu	$a0, $a2, 0X1A4
/* 003404 0x8087EC60 0C04DD0C */ jal	SkelAnime_ChangeAnimDefaultStop
/* 003405 0x8087EC64 8D050018 */ lw	$a1, 0X18($t0)
/* 003406 0x8087EC68 8FBF0014 */ lw	$ra, 0X14($sp)
/* 003407 0x8087EC6C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 003408 0x8087EC70 03E00008 */ jr	$ra
/* 003409 0x8087EC74 00000000 */ nop

