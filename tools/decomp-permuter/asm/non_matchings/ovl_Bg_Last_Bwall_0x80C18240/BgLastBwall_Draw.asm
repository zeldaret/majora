glabel BgLastBwall_Draw
/* 000455 0x80C1895C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000456 0x80C18960 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000457 0x80C18964 00803825 */ move	$a3, $a0
/* 000458 0x80C18968 00A03025 */ move	$a2, $a1
/* 000459 0x80C1896C 90EE0238 */ lbu	$t6, 0X238($a3)
/* 000460 0x80C18970 3C0580C2 */ lui	$a1, %hi(D_80C18A48)
/* 000461 0x80C18974 00C02025 */ move	$a0, $a2
/* 000462 0x80C18978 000E7880 */ sll	$t7, $t6, 2
/* 000463 0x80C1897C 01EE7823 */ subu	$t7, $t7, $t6
/* 000464 0x80C18980 000F7880 */ sll	$t7, $t7, 2
/* 000465 0x80C18984 00AF2821 */ addu	$a1, $a1, $t7
/* 000466 0x80C18988 0C02F7F0 */ jal	func_800BDFC0
/* 000467 0x80C1898C 8CA58A48 */ lw	$a1, %lo(D_80C18A48)($a1)
/* 000468 0x80C18990 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000469 0x80C18994 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000470 0x80C18998 03E00008 */ jr	$ra
/* 000471 0x80C1899C 00000000 */ nop
