glabel BgKin2Picture_Draw
/* 000616 0x80B6F940 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000617 0x80B6F944 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000618 0x80B6F948 AFA40018 */ sw	$a0, 0X18($sp)
/* 000619 0x80B6F94C 00A03025 */ move	$a2, $a1
/* 000620 0x80B6F950 3C050600 */ lui	$a1, 0x0600
/* 000621 0x80B6F954 24A50658 */ addiu	$a1, $a1, 0X658
/* 000622 0x80B6F958 0C02F7F0 */ jal	func_800BDFC0
/* 000623 0x80B6F95C 00C02025 */ move	$a0, $a2
/* 000624 0x80B6F960 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000625 0x80B6F964 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000626 0x80B6F968 03E00008 */ jr	$ra
/* 000627 0x80B6F96C 00000000 */ nop
