glabel func_808B04A8
/* 000502 0x808B04A8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000503 0x808B04AC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000504 0x808B04B0 0C22C082 */ jal	func_808B0208
/* 000505 0x808B04B4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000506 0x808B04B8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000507 0x808B04BC 848E0032 */ lh	$t6, 0X32($a0)
/* 000508 0x808B04C0 848F023C */ lh	$t7, 0X23C($a0)
/* 000509 0x808B04C4 55CF0004 */ bnel	$t6, $t7, .L808B04D8
/* 000510 0x808B04C8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000511 0x808B04CC 0C22C15F */ jal	func_808B057C
/* 000512 0x808B04D0 00000000 */ nop
/* 000513 0x808B04D4 8FBF0014 */ lw	$ra, 0X14($sp)
.L808B04D8:
/* 000514 0x808B04D8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000515 0x808B04DC 03E00008 */ jr	$ra
/* 000516 0x808B04E0 00000000 */ nop

