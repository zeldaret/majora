glabel func_80BD9E88
/* 001782 0x80BD9E88 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001783 0x80BD9E8C AFBF0014 */ sw	$ra, 0X14($sp)
/* 001784 0x80BD9E90 00803825 */ move	$a3, $a0
/* 001785 0x80BD9E94 3C0580BE */ lui	$a1, %hi(D_80BDA4B8)
/* 001786 0x80BD9E98 24A5A4B8 */ addiu	$a1, $a1, %lo(D_80BDA4B8)
/* 001787 0x80BD9E9C 24E40190 */ addiu	$a0, $a3, 0X190
/* 001788 0x80BD9EA0 00003025 */ move	$a2, $zero
/* 001789 0x80BD9EA4 0C02F717 */ jal	func_800BDC5C
/* 001790 0x80BD9EA8 AFA70018 */ sw	$a3, 0X18($sp)
/* 001791 0x80BD9EAC 8FA70018 */ lw	$a3, 0X18($sp)
/* 001792 0x80BD9EB0 3C0E80BE */ lui	$t6, %hi(func_80BD9ED0)
/* 001793 0x80BD9EB4 25CE9ED0 */ addiu	$t6, $t6, %lo(func_80BD9ED0)
/* 001794 0x80BD9EB8 A4E0031E */ sh	$zero, 0X31E($a3)
/* 001795 0x80BD9EBC ACEE01D8 */ sw	$t6, 0X1D8($a3)
/* 001796 0x80BD9EC0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001797 0x80BD9EC4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001798 0x80BD9EC8 03E00008 */ jr	$ra
/* 001799 0x80BD9ECC 00000000 */ nop

