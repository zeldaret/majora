glabel func_80B000FC
/* 001559 0x80B000FC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001560 0x80B00100 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001561 0x80B00104 00803825 */ move	$a3, $a0
/* 001562 0x80B00108 3C0580B0 */ lui	$a1, %hi(D_80B01200)
/* 001563 0x80B0010C 24A51200 */ addiu	$a1, $a1, %lo(D_80B01200)
/* 001564 0x80B00110 24E40190 */ addiu	$a0, $a3, 0X190
/* 001565 0x80B00114 24060009 */ li	$a2, 0X9
/* 001566 0x80B00118 0C02F717 */ jal	func_800BDC5C
/* 001567 0x80B0011C AFA70018 */ sw	$a3, 0X18($sp)
/* 001568 0x80B00120 8FA70018 */ lw	$a3, 0X18($sp)
/* 001569 0x80B00124 2401FFFE */ li	$at, -0X2
/* 001570 0x80B00128 3C1980B0 */ lui	$t9, %hi(func_80B00158)
/* 001571 0x80B0012C 8CEE0004 */ lw	$t6, 0X4($a3)
/* 001572 0x80B00130 24180028 */ li	$t8, 0X28
/* 001573 0x80B00134 27390158 */ addiu	$t9, $t9, %lo(func_80B00158)
/* 001574 0x80B00138 01C17824 */ and	$t7, $t6, $at
/* 001575 0x80B0013C ACEF0004 */ sw	$t7, 0X4($a3)
/* 001576 0x80B00140 A4F803EA */ sh	$t8, 0X3EA($a3)
/* 001577 0x80B00144 ACF901D4 */ sw	$t9, 0X1D4($a3)
/* 001578 0x80B00148 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001579 0x80B0014C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001580 0x80B00150 03E00008 */ jr	$ra
/* 001581 0x80B00154 00000000 */ nop

