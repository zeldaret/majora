glabel func_808C1E94
/* 000085 0x808C1E94 94820090 */ lhu	$v0, 0X90($a0)
/* 000086 0x808C1E98 304E0008 */ andi	$t6, $v0, 0X8
/* 000087 0x808C1E9C 11C00016 */ beqz	$t6, .L808C1EF8
/* 000088 0x808C1EA0 00000000 */ nop
/* 000089 0x808C1EA4 848500BE */ lh	$a1, 0XBE($a0)
/* 000090 0x808C1EA8 84860086 */ lh	$a2, 0X86($a0)
/* 000091 0x808C1EAC 00A61823 */ subu	$v1, $a1, $a2
/* 000092 0x808C1EB0 00031C00 */ sll	$v1, $v1, 16
/* 000093 0x808C1EB4 00031C03 */ sra	$v1, $v1, 16
/* 000094 0x808C1EB8 04610003 */ bgez	$v1, .L808C1EC8
/* 000095 0x808C1EBC 00603825 */ move	$a3, $v1
/* 000096 0x808C1EC0 10000001 */ b	.L808C1EC8
/* 000097 0x808C1EC4 00033823 */ negu	$a3, $v1
.L808C1EC8:
/* 000098 0x808C1EC8 28E14001 */ slti	$at, $a3, 0X4001
/* 000099 0x808C1ECC 14200007 */ bnez	$at, .L808C1EEC
/* 000100 0x808C1ED0 00067840 */ sll	$t7, $a2, 1
/* 000101 0x808C1ED4 01E5C023 */ subu	$t8, $t7, $a1
/* 000102 0x808C1ED8 24018000 */ li	$at, -0X8000
/* 000103 0x808C1EDC 0301C821 */ addu	$t9, $t8, $at
/* 000104 0x808C1EE0 A49900BE */ sh	$t9, 0XBE($a0)
/* 000105 0x808C1EE4 848500BE */ lh	$a1, 0XBE($a0)
/* 000106 0x808C1EE8 94820090 */ lhu	$v0, 0X90($a0)
.L808C1EEC:
/* 000107 0x808C1EEC 3048FFF7 */ andi	$t0, $v0, 0XFFF7
/* 000108 0x808C1EF0 A4850254 */ sh	$a1, 0X254($a0)
/* 000109 0x808C1EF4 A4880090 */ sh	$t0, 0X90($a0)
.L808C1EF8:
/* 000110 0x808C1EF8 03E00008 */ jr	$ra
/* 000111 0x808C1EFC 00000000 */ nop

