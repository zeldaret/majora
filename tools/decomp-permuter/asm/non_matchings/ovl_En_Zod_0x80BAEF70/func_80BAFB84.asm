glabel func_80BAFB84
/* 000773 0x80BAFB84 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000774 0x80BAFB88 AFB00018 */ sw	$s0, 0X18($sp)
/* 000775 0x80BAFB8C 00808025 */ move	$s0, $a0
/* 000776 0x80BAFB90 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000777 0x80BAFB94 AFA50024 */ sw	$a1, 0X24($sp)
/* 000778 0x80BAFB98 0C2EBCF8 */ jal	func_80BAF3E0
/* 000779 0x80BAFB9C 02002025 */ move	$a0, $s0
/* 000780 0x80BAFBA0 02002025 */ move	$a0, $s0
/* 000781 0x80BAFBA4 0C02E134 */ jal	func_800B84D0
/* 000782 0x80BAFBA8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000783 0x80BAFBAC 10400008 */ beqz	$v0, .L80BAFBD0
/* 000784 0x80BAFBB0 02002025 */ move	$a0, $s0
/* 000785 0x80BAFBB4 02002025 */ move	$a0, $s0
/* 000786 0x80BAFBB8 0C2EBE91 */ jal	func_80BAFA44
/* 000787 0x80BAFBBC 8FA50024 */ lw	$a1, 0X24($sp)
/* 000788 0x80BAFBC0 3C0E80BB */ lui	$t6, %hi(func_80BAFADC)
/* 000789 0x80BAFBC4 25CEFADC */ addiu	$t6, $t6, %lo(func_80BAFADC)
/* 000790 0x80BAFBC8 10000008 */ b	.L80BAFBEC
/* 000791 0x80BAFBCC AE0E029C */ sw	$t6, 0X29C($s0)
.L80BAFBD0:
/* 000792 0x80BAFBD0 0C2EBCAD */ jal	func_80BAF2B4
/* 000793 0x80BAFBD4 8FA50024 */ lw	$a1, 0X24($sp)
/* 000794 0x80BAFBD8 10400004 */ beqz	$v0, .L80BAFBEC
/* 000795 0x80BAFBDC 02002025 */ move	$a0, $s0
/* 000796 0x80BAFBE0 8FA50024 */ lw	$a1, 0X24($sp)
/* 000797 0x80BAFBE4 0C02E185 */ jal	func_800B8614
/* 000798 0x80BAFBE8 3C064352 */ lui	$a2, 0x4352
.L80BAFBEC:
/* 000799 0x80BAFBEC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000800 0x80BAFBF0 8FB00018 */ lw	$s0, 0X18($sp)
/* 000801 0x80BAFBF4 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000802 0x80BAFBF8 03E00008 */ jr	$ra
/* 000803 0x80BAFBFC 00000000 */ nop

