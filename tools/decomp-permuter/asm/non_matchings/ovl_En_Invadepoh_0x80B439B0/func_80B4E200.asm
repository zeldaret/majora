glabel func_80B4E200
/* 010772 0x80B4E200 AFA40000 */ sw	$a0, 0X0($sp)
/* 010773 0x80B4E204 AFA60008 */ sw	$a2, 0X8($sp)
/* 010774 0x80B4E208 AFA7000C */ sw	$a3, 0XC($sp)
/* 010775 0x80B4E20C 2401000E */ li	$at, 0XE
/* 010776 0x80B4E210 14A10010 */ bne	$a1, $at, .L80B4E254
/* 010777 0x80B4E214 8FA20014 */ lw	$v0, 0X14($sp)
/* 010778 0x80B4E218 8FA30010 */ lw	$v1, 0X10($sp)
/* 010779 0x80B4E21C 846E0000 */ lh	$t6, 0X0($v1)
/* 010780 0x80B4E220 844F0346 */ lh	$t7, 0X346($v0)
/* 010781 0x80B4E224 84790002 */ lh	$t9, 0X2($v1)
/* 010782 0x80B4E228 846A0004 */ lh	$t2, 0X4($v1)
/* 010783 0x80B4E22C 01CFC021 */ addu	$t8, $t6, $t7
/* 010784 0x80B4E230 A4780000 */ sh	$t8, 0X0($v1)
/* 010785 0x80B4E234 84480348 */ lh	$t0, 0X348($v0)
/* 010786 0x80B4E238 03284821 */ addu	$t1, $t9, $t0
/* 010787 0x80B4E23C A4690002 */ sh	$t1, 0X2($v1)
/* 010788 0x80B4E240 844B0344 */ lh	$t3, 0X344($v0)
/* 010789 0x80B4E244 014B6021 */ addu	$t4, $t2, $t3
/* 010790 0x80B4E248 A46C0004 */ sh	$t4, 0X4($v1)
/* 010791 0x80B4E24C 10000015 */ b	.L80B4E2A4
/* 010792 0x80B4E250 00001025 */ move	$v0, $zero
.L80B4E254:
/* 010793 0x80B4E254 2401000D */ li	$at, 0XD
/* 010794 0x80B4E258 14A10011 */ bne	$a1, $at, .L80B4E2A0
/* 010795 0x80B4E25C 8FA20014 */ lw	$v0, 0X14($sp)
/* 010796 0x80B4E260 8FA30010 */ lw	$v1, 0X10($sp)
/* 010797 0x80B4E264 844D0346 */ lh	$t5, 0X346($v0)
/* 010798 0x80B4E268 C4440358 */ lwc1	$f4, 0X358($v0)
/* 010799 0x80B4E26C 84680000 */ lh	$t0, 0X0($v1)
/* 010800 0x80B4E270 448D3000 */ mtc1	$t5, $f6
/* 010801 0x80B4E274 846A0004 */ lh	$t2, 0X4($v1)
/* 010802 0x80B4E278 46803220 */ cvt.s.w	$f8, $f6
/* 010803 0x80B4E27C 46082282 */ mul.s	$f10, $f4, $f8
/* 010804 0x80B4E280 4600540D */ trunc.w.s	$f16, $f10
/* 010805 0x80B4E284 44198000 */ mfc1	$t9, $f16
/* 010806 0x80B4E288 00000000 */ nop
/* 010807 0x80B4E28C 01194821 */ addu	$t1, $t0, $t9
/* 010808 0x80B4E290 A4690000 */ sh	$t1, 0X0($v1)
/* 010809 0x80B4E294 844B0364 */ lh	$t3, 0X364($v0)
/* 010810 0x80B4E298 014B6021 */ addu	$t4, $t2, $t3
/* 010811 0x80B4E29C A46C0004 */ sh	$t4, 0X4($v1)
.L80B4E2A0:
/* 010812 0x80B4E2A0 00001025 */ move	$v0, $zero
.L80B4E2A4:
/* 010813 0x80B4E2A4 03E00008 */ jr	$ra
/* 010814 0x80B4E2A8 00000000 */ nop

