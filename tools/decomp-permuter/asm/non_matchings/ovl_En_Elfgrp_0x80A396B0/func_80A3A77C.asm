glabel func_80A3A77C
/* 001075 0x80A3A77C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001076 0x80A3A780 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001077 0x80A3A784 00803025 */ move	$a2, $a0
/* 001078 0x80A3A788 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 001079 0x80A3A78C 3C012000 */ lui	$at, 0x2000
/* 001080 0x80A3A790 240E0064 */ li	$t6, 0X64
/* 001081 0x80A3A794 8C4F0A6C */ lw	$t7, 0XA6C($v0)
/* 001082 0x80A3A798 A44E0118 */ sh	$t6, 0X118($v0)
/* 001083 0x80A3A79C 00C02025 */ move	$a0, $a2
/* 001084 0x80A3A7A0 01E1C025 */ or	$t8, $t7, $at
/* 001085 0x80A3A7A4 AC580A6C */ sw	$t8, 0XA6C($v0)
/* 001086 0x80A3A7A8 AFA60018 */ sw	$a2, 0X18($sp)
/* 001087 0x80A3A7AC 0C02E19F */ jal	func_800B867C
/* 001088 0x80A3A7B0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001089 0x80A3A7B4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001090 0x80A3A7B8 1040000C */ beqz	$v0, .L80A3A7EC
/* 001091 0x80A3A7BC 8FA60018 */ lw	$a2, 0X18($sp)
/* 001092 0x80A3A7C0 00A02025 */ move	$a0, $a1
/* 001093 0x80A3A7C4 0C28E7EF */ jal	func_80A39FBC
/* 001094 0x80A3A7C8 AFA60018 */ sw	$a2, 0X18($sp)
/* 001095 0x80A3A7CC 8FA60018 */ lw	$a2, 0X18($sp)
/* 001096 0x80A3A7D0 3C1980A4 */ lui	$t9, %hi(func_80A3A610)
/* 001097 0x80A3A7D4 2739A610 */ addiu	$t9, $t9, %lo(func_80A3A610)
/* 001098 0x80A3A7D8 94C8014A */ lhu	$t0, 0X14A($a2)
/* 001099 0x80A3A7DC A4C20144 */ sh	$v0, 0X144($a2)
/* 001100 0x80A3A7E0 ACD9014C */ sw	$t9, 0X14C($a2)
/* 001101 0x80A3A7E4 3109FFF7 */ andi	$t1, $t0, 0XFFF7
/* 001102 0x80A3A7E8 A4C9014A */ sh	$t1, 0X14A($a2)
.L80A3A7EC:
/* 001103 0x80A3A7EC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001104 0x80A3A7F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001105 0x80A3A7F4 03E00008 */ jr	$ra
/* 001106 0x80A3A7F8 00000000 */ nop

