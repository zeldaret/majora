glabel func_8099AA84
/* 000089 0x8099AA84 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000090 0x8099AA88 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000091 0x8099AA8C 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000092 0x8099AA90 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000093 0x8099AA94 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000094 0x8099AA98 00803025 */ move	$a2, $a0
/* 000095 0x8099AA9C 904E1010 */ lbu	$t6, 0X1010($v0)
/* 000096 0x8099AAA0 24C400EC */ addiu	$a0, $a2, 0XEC
/* 000097 0x8099AAA4 31CF0002 */ andi	$t7, $t6, 0X2
/* 000098 0x8099AAA8 15E00005 */ bnez	$t7, .L8099AAC0
/* 000099 0x8099AAAC 00000000 */ nop
/* 000100 0x8099AAB0 9058100F */ lbu	$t8, 0X100F($v0)
/* 000101 0x8099AAB4 33190020 */ andi	$t9, $t8, 0X20
/* 000102 0x8099AAB8 53200004 */ beqzl	$t9, .L8099AACC
/* 000103 0x8099AABC 8FBF0014 */ lw	$ra, 0X14($sp)
.L8099AAC0:
/* 000104 0x8099AAC0 0C0685FD */ jal	func_801A17F4
/* 000105 0x8099AAC4 80C5001D */ lb	$a1, 0X1D($a2)
/* 000106 0x8099AAC8 8FBF0014 */ lw	$ra, 0X14($sp)
.L8099AACC:
/* 000107 0x8099AACC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000108 0x8099AAD0 03E00008 */ jr	$ra
/* 000109 0x8099AAD4 00000000 */ nop
/* 000110 0x8099AAD8 00000000 */ nop
/* 000111 0x8099AADC 00000000 */ nop
