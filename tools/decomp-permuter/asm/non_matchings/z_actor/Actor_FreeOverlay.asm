glabel Actor_FreeOverlay
/* 021583 0x800BABFC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 021584 0x800BAC00 AFBF0014 */ sw	$ra, 0X14($sp)
/* 021585 0x800BAC04 00802825 */ move	$a1, $a0
/* 021586 0x800BAC08 80AE001E */ lb	$t6, 0X1E($a1)
/* 021587 0x800BAC0C 55C00011 */ bnezl	$t6, .L800BAC54
/* 021588 0x800BAC10 8FBF0014 */ lw	$ra, 0X14($sp)
/* 021589 0x800BAC14 8CA40010 */ lw	$a0, 0X10($a1)
/* 021590 0x800BAC18 5080000E */ beqzl	$a0, .L800BAC54
/* 021591 0x800BAC1C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 021592 0x800BAC20 94A2001C */ lhu	$v0, 0X1C($a1)
/* 021593 0x800BAC24 304F0002 */ andi	$t7, $v0, 0X2
/* 021594 0x800BAC28 15E00009 */ bnez	$t7, .L800BAC50
/* 021595 0x800BAC2C 30580001 */ andi	$t8, $v0, 0X1
/* 021596 0x800BAC30 13000003 */ beqz	$t8, .L800BAC40
/* 021597 0x800BAC34 00000000 */ nop
/* 021598 0x800BAC38 10000005 */ b	.L800BAC50
/* 021599 0x800BAC3C ACA00010 */ sw	$zero, 0X10($a1)
.L800BAC40:
/* 021600 0x800BAC40 0C040B38 */ jal	zelda_free
/* 021601 0x800BAC44 AFA50018 */ sw	$a1, 0X18($sp)
/* 021602 0x800BAC48 8FA50018 */ lw	$a1, 0X18($sp)
/* 021603 0x800BAC4C ACA00010 */ sw	$zero, 0X10($a1)
.L800BAC50:
/* 021604 0x800BAC50 8FBF0014 */ lw	$ra, 0X14($sp)
.L800BAC54:
/* 021605 0x800BAC54 27BD0018 */ addiu	$sp, $sp, 0X18
/* 021606 0x800BAC58 03E00008 */ jr	$ra
/* 021607 0x800BAC5C 00000000 */ nop

