glabel func_808B94A4
/* 001029 0x808B94A4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001030 0x808B94A8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001031 0x808B94AC AFA40018 */ sw	$a0, 0X18($sp)
/* 001032 0x808B94B0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001033 0x808B94B4 8FA40018 */ lw	$a0, 0X18($sp)
/* 001034 0x808B94B8 0C22E19B */ jal	func_808B866C
/* 001035 0x808B94BC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001036 0x808B94C0 5440000E */ bnezl	$v0, .L808B94FC
/* 001037 0x808B94C4 8FA40018 */ lw	$a0, 0X18($sp)
/* 001038 0x808B94C8 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 001039 0x808B94CC 00000000 */ nop
/* 001040 0x808B94D0 8FAE001C */ lw	$t6, 0X1C($sp)
/* 001041 0x808B94D4 3C0F0002 */ lui	$t7, 0x0002
/* 001042 0x808B94D8 8FA40018 */ lw	$a0, 0X18($sp)
/* 001043 0x808B94DC 01EE7821 */ addu	$t7, $t7, $t6
/* 001044 0x808B94E0 85EF87AC */ lh	$t7, -0X7854($t7)
/* 001045 0x808B94E4 3C05808C */ lui	$a1, %hi(func_808B921C)
/* 001046 0x808B94E8 504F0004 */ beql	$v0, $t7, .L808B94FC
/* 001047 0x808B94EC 8FA40018 */ lw	$a0, 0X18($sp)
/* 001048 0x808B94F0 0C22E124 */ jal	func_808B8490
/* 001049 0x808B94F4 24A5921C */ addiu	$a1, $a1, %lo(func_808B921C)
/* 001050 0x808B94F8 8FA40018 */ lw	$a0, 0X18($sp)
.L808B94FC:
/* 001051 0x808B94FC 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001052 0x808B9500 0C22EE35 */ jal	func_808BB8D4
/* 001053 0x808B9504 24060001 */ li	$a2, 0X1
/* 001054 0x808B9508 8FA40018 */ lw	$a0, 0X18($sp)
/* 001055 0x808B950C 0C02E3B2 */ jal	func_800B8EC8
/* 001056 0x808B9510 240521B8 */ li	$a1, 0X21B8
/* 001057 0x808B9514 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001058 0x808B9518 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001059 0x808B951C 03E00008 */ jr	$ra
/* 001060 0x808B9520 00000000 */ nop

