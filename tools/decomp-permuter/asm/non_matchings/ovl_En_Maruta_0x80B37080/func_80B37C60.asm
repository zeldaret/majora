glabel func_80B37C60
/* 000760 0x80B37C60 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000761 0x80B37C64 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000762 0x80B37C68 8C8F0144 */ lw	$t7, 0X144($a0)
/* 000763 0x80B37C6C 3C0E80B3 */ lui	$t6, %hi(func_80B37AA0)
/* 000764 0x80B37C70 25CE7AA0 */ addiu	$t6, $t6, %lo(func_80B37AA0)
/* 000765 0x80B37C74 51CF0007 */ beql	$t6, $t7, .L80B37C94
/* 000766 0x80B37C78 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000767 0x80B37C7C 909800B7 */ lbu	$t8, 0XB7($a0)
/* 000768 0x80B37C80 57000004 */ bnezl	$t8, .L80B37C94
/* 000769 0x80B37C84 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000770 0x80B37C88 0C2CDEA3 */ jal	func_80B37A8C
/* 000771 0x80B37C8C 00000000 */ nop
/* 000772 0x80B37C90 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B37C94:
/* 000773 0x80B37C94 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000774 0x80B37C98 03E00008 */ jr	$ra
/* 000775 0x80B37C9C 00000000 */ nop

