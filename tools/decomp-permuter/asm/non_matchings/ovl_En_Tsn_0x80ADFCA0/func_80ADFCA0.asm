glabel func_80ADFCA0
/* 000000 0x80ADFCA0 8C831CE4 */ lw	$v1, 0X1CE4($a0)
/* 000001 0x80ADFCA4 240201C2 */ li	$v0, 0X1C2
/* 000002 0x80ADFCA8 5060000E */ beqzl	$v1, .L80ADFCE4
/* 000003 0x80ADFCAC 00001025 */ move	$v0, $zero
/* 000004 0x80ADFCB0 846E0000 */ lh	$t6, 0X0($v1)
.L80ADFCB4:
/* 000005 0x80ADFCB4 544E0008 */ bnel	$v0, $t6, .L80ADFCD8
/* 000006 0x80ADFCB8 8C63012C */ lw	$v1, 0X12C($v1)
/* 000007 0x80ADFCBC 846F001C */ lh	$t7, 0X1C($v1)
/* 000008 0x80ADFCC0 31F80100 */ andi	$t8, $t7, 0X100
/* 000009 0x80ADFCC4 57000004 */ bnezl	$t8, .L80ADFCD8
/* 000010 0x80ADFCC8 8C63012C */ lw	$v1, 0X12C($v1)
/* 000011 0x80ADFCCC 03E00008 */ jr	$ra
/* 000012 0x80ADFCD0 00601025 */ move	$v0, $v1
/* 000013 0x80ADFCD4 8C63012C */ lw	$v1, 0X12C($v1)
.L80ADFCD8:
/* 000014 0x80ADFCD8 5460FFF6 */ bnezl	$v1, .L80ADFCB4
/* 000015 0x80ADFCDC 846E0000 */ lh	$t6, 0X0($v1)
/* 000016 0x80ADFCE0 00001025 */ move	$v0, $zero
.L80ADFCE4:
/* 000017 0x80ADFCE4 03E00008 */ jr	$ra
/* 000018 0x80ADFCE8 00000000 */ nop

