glabel func_80B97240
/* 000796 0x80B97240 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000797 0x80B97244 AFB00018 */ sw	$s0, 0X18($sp)
/* 000798 0x80B97248 00808025 */ move	$s0, $a0
/* 000799 0x80B9724C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000800 0x80B97250 AFA50024 */ sw	$a1, 0X24($sp)
/* 000801 0x80B97254 02002025 */ move	$a0, $s0
/* 000802 0x80B97258 0C02E134 */ jal	func_800B84D0
/* 000803 0x80B9725C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000804 0x80B97260 10400009 */ beqz	$v0, .L80B97288
/* 000805 0x80B97264 3C0142C8 */ lui	$at, 0x42C8
/* 000806 0x80B97268 3C0E80B9 */ lui	$t6, %hi(func_80B97194)
/* 000807 0x80B9726C 25CE7194 */ addiu	$t6, $t6, %lo(func_80B97194)
/* 000808 0x80B97270 AE0E02F8 */ sw	$t6, 0X2F8($s0)
/* 000809 0x80B97274 8FA50024 */ lw	$a1, 0X24($sp)
/* 000810 0x80B97278 0C2E5C44 */ jal	func_80B97110
/* 000811 0x80B9727C 02002025 */ move	$a0, $s0
/* 000812 0x80B97280 10000015 */ b	.L80B972D8
/* 000813 0x80B97284 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B97288:
/* 000814 0x80B97288 C6040098 */ lwc1	$f4, 0X98($s0)
/* 000815 0x80B9728C 44813000 */ mtc1	$at, $f6
/* 000816 0x80B97290 02002025 */ move	$a0, $s0
/* 000817 0x80B97294 24053000 */ li	$a1, 0X3000
/* 000818 0x80B97298 4606203C */ c.lt.s	$f4, $f6
/* 000819 0x80B9729C 00000000 */ nop
/* 000820 0x80B972A0 4502000D */ bc1fl .L80B972D8
/* 000821 0x80B972A4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000822 0x80B972A8 0C02DCC8 */ jal	Actor_IsLinkFacingActor
/* 000823 0x80B972AC 8FA60024 */ lw	$a2, 0X24($sp)
/* 000824 0x80B972B0 10400008 */ beqz	$v0, .L80B972D4
/* 000825 0x80B972B4 02002025 */ move	$a0, $s0
/* 000826 0x80B972B8 0C02DCF8 */ jal	Actor_IsActorFacingLink
/* 000827 0x80B972BC 24053000 */ li	$a1, 0X3000
/* 000828 0x80B972C0 10400004 */ beqz	$v0, .L80B972D4
/* 000829 0x80B972C4 02002025 */ move	$a0, $s0
/* 000830 0x80B972C8 8FA50024 */ lw	$a1, 0X24($sp)
/* 000831 0x80B972CC 0C02E185 */ jal	func_800B8614
/* 000832 0x80B972D0 3C0642F0 */ lui	$a2, 0x42F0
.L80B972D4:
/* 000833 0x80B972D4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B972D8:
/* 000834 0x80B972D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 000835 0x80B972DC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000836 0x80B972E0 03E00008 */ jr	$ra
/* 000837 0x80B972E4 00000000 */ nop

