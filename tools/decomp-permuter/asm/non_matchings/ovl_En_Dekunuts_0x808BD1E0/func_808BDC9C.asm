glabel func_808BDC9C
/* 000687 0x808BDC9C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000688 0x808BDCA0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000689 0x808BDCA4 AFA40018 */ sw	$a0, 0X18($sp)
/* 000690 0x808BDCA8 8FA40018 */ lw	$a0, 0X18($sp)
/* 000691 0x808BDCAC 3C050600 */ lui	$a1, 0x0600
/* 000692 0x808BDCB0 24A52A5C */ addiu	$a1, $a1, 0X2A5C
/* 000693 0x808BDCB4 3C06C0A0 */ lui	$a2, 0xC0A0
/* 000694 0x808BDCB8 0C04DD22 */ jal	SkelAnime_ChangeAnimTransitionStop
/* 000695 0x808BDCBC 24840144 */ addiu	$a0, $a0, 0X144
/* 000696 0x808BDCC0 8FA40018 */ lw	$a0, 0X18($sp)
/* 000697 0x808BDCC4 2405387D */ li	$a1, 0X387D
/* 000698 0x808BDCC8 0C02E3B2 */ jal	func_800B8EC8
/* 000699 0x808BDCCC A4800190 */ sh	$zero, 0X190($a0)
/* 000700 0x808BDCD0 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000701 0x808BDCD4 3C0E808C */ lui	$t6, %hi(func_808BDD54)
/* 000702 0x808BDCD8 25CEDD54 */ addiu	$t6, $t6, %lo(func_808BDD54)
/* 000703 0x808BDCDC ADEE0188 */ sw	$t6, 0X188($t7)
/* 000704 0x808BDCE0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000705 0x808BDCE4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000706 0x808BDCE8 03E00008 */ jr	$ra
/* 000707 0x808BDCEC 00000000 */ nop

