glabel func_80BD66AC
/* 000075 0x80BD66AC 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000076 0x80BD66B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000077 0x80BD66B4 00808025 */ move	$s0, $a0
/* 000078 0x80BD66B8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000079 0x80BD66BC AFA5002C */ sw	$a1, 0X2C($sp)
/* 000080 0x80BD66C0 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000081 0x80BD66C4 0C02D731 */ jal	Actor_GetRoomCleared
/* 000082 0x80BD66C8 82050003 */ lb	$a1, 0X3($s0)
/* 000083 0x80BD66CC 10400004 */ beqz	$v0, .L80BD66E0
/* 000084 0x80BD66D0 27A40026 */ addiu	$a0, $sp, 0X26
/* 000085 0x80BD66D4 8E0E0004 */ lw	$t6, 0X4($s0)
/* 000086 0x80BD66D8 35CF0009 */ ori	$t7, $t6, 0X9
/* 000087 0x80BD66DC AE0F0004 */ sw	$t7, 0X4($s0)
.L80BD66E0:
/* 000088 0x80BD66E0 26050160 */ addiu	$a1, $s0, 0X160
/* 000089 0x80BD66E4 0C2F598E */ jal	func_80BD6638
/* 000090 0x80BD66E8 24060001 */ li	$a2, 0X1
/* 000091 0x80BD66EC 14400010 */ bnez	$v0, .L80BD6730
/* 000092 0x80BD66F0 87B80026 */ lh	$t8, 0X26($sp)
/* 000093 0x80BD66F4 0701000E */ bgez	$t8, .L80BD6730
/* 000094 0x80BD66F8 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000095 0x80BD66FC 0C02D731 */ jal	Actor_GetRoomCleared
/* 000096 0x80BD6700 82050003 */ lb	$a1, 0X3($s0)
/* 000097 0x80BD6704 5040000B */ beqzl	$v0, .L80BD6734
/* 000098 0x80BD6708 8E0A0004 */ lw	$t2, 0X4($s0)
/* 000099 0x80BD670C 8E190004 */ lw	$t9, 0X4($s0)
/* 000100 0x80BD6710 92090114 */ lbu	$t1, 0X114($s0)
/* 000101 0x80BD6714 37280001 */ ori	$t0, $t9, 0X1
/* 000102 0x80BD6718 11200009 */ beqz	$t1, .L80BD6740
/* 000103 0x80BD671C AE080004 */ sw	$t0, 0X4($s0)
/* 000104 0x80BD6720 0C2F59D5 */ jal	func_80BD6754
/* 000105 0x80BD6724 02002025 */ move	$a0, $s0
/* 000106 0x80BD6728 10000006 */ b	.L80BD6744
/* 000107 0x80BD672C 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BD6730:
/* 000108 0x80BD6730 8E0A0004 */ lw	$t2, 0X4($s0)
.L80BD6734:
/* 000109 0x80BD6734 2401FFFE */ li	$at, -0X2
/* 000110 0x80BD6738 01415824 */ and	$t3, $t2, $at
/* 000111 0x80BD673C AE0B0004 */ sw	$t3, 0X4($s0)
.L80BD6740:
/* 000112 0x80BD6740 8FBF001C */ lw	$ra, 0X1C($sp)
.L80BD6744:
/* 000113 0x80BD6744 8FB00018 */ lw	$s0, 0X18($sp)
/* 000114 0x80BD6748 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000115 0x80BD674C 03E00008 */ jr	$ra
/* 000116 0x80BD6750 00000000 */ nop

