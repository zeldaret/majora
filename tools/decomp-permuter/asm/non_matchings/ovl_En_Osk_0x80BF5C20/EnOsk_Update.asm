glabel EnOsk_Update
/* 001028 0x80BF6C30 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001029 0x80BF6C34 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001030 0x80BF6C38 8C990260 */ lw	$t9, 0X260($a0)
/* 001031 0x80BF6C3C 0320F809 */ jalr	$t9
/* 001032 0x80BF6C40 00000000 */ nop
/* 001033 0x80BF6C44 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001034 0x80BF6C48 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001035 0x80BF6C4C 03E00008 */ jr	$ra
/* 001036 0x80BF6C50 00000000 */ nop

