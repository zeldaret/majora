glabel ObjBoat_Draw
/* 000438 0x80B9B628 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000439 0x80B9B62C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000440 0x80B9B630 AFA40018 */ sw	$a0, 0X18($sp)
/* 000441 0x80B9B634 00A03025 */ move	$a2, $a1
/* 000442 0x80B9B638 3C050600 */ lui	$a1, 0x0600
/* 000443 0x80B9B63C 24A57630 */ addiu	$a1, $a1, 0X7630
/* 000444 0x80B9B640 0C02F7F0 */ jal	func_800BDFC0
/* 000445 0x80B9B644 00C02025 */ move	$a0, $a2
/* 000446 0x80B9B648 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000447 0x80B9B64C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000448 0x80B9B650 03E00008 */ jr	$ra
/* 000449 0x80B9B654 00000000 */ nop
/* 000450 0x80B9B658 00000000 */ nop
/* 000451 0x80B9B65C 00000000 */ nop
