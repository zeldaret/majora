glabel ObjToudai_Init
/* 000590 0x80A34438 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000591 0x80A3443C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000592 0x80A34440 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000593 0x80A34444 00803825 */ move	$a3, $a0
/* 000594 0x80A34448 3C0580A3 */ lui	$a1, %hi(D_80A34590)
/* 000595 0x80A3444C 24A54590 */ addiu	$a1, $a1, %lo(D_80A34590)
/* 000596 0x80A34450 24E40148 */ addiu	$a0, $a3, 0X148
/* 000597 0x80A34454 0C03FB24 */ jal	Lib_bcopy
/* 000598 0x80A34458 240600E0 */ li	$a2, 0XE0
/* 000599 0x80A3445C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000600 0x80A34460 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000601 0x80A34464 03E00008 */ jr	$ra
/* 000602 0x80A34468 00000000 */ nop

