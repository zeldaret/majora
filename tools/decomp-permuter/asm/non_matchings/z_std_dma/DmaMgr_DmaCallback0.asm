glabel DmaMgr_DmaCallback0
/* 000541 0x800808D4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000542 0x800808D8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000543 0x800808DC 0C023B8C */ jal	osEPiStartDma
/* 000544 0x800808E0 00000000 */ nop
/* 000545 0x800808E4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000546 0x800808E8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000547 0x800808EC 03E00008 */ jr	$ra
/* 000548 0x800808F0 00000000 */ nop

