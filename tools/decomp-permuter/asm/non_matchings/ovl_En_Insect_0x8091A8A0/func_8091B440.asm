glabel func_8091B440
/* 000744 0x8091B440 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 000745 0x8091B444 AFB00020 */ sw	$s0, 0X20($sp)
/* 000746 0x8091B448 44800000 */ mtc1	$zero, $f0
/* 000747 0x8091B44C 00808025 */ move	$s0, $a0
/* 000748 0x8091B450 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000749 0x8091B454 AFA5004C */ sw	$a1, 0X4C($sp)
/* 000750 0x8091B458 44050000 */ mfc1	$a1, $f0
/* 000751 0x8091B45C 3C063DCC */ lui	$a2, 0x3DCC
/* 000752 0x8091B460 34C6CCCD */ ori	$a2, $a2, 0XCCCD
/* 000753 0x8091B464 26040070 */ addiu	$a0, $s0, 0X70
/* 000754 0x8091B468 3C073F00 */ lui	$a3, 0x3F00
/* 000755 0x8091B46C 0C03FF36 */ jal	Math_SmoothScaleMaxMinF
/* 000756 0x8091B470 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000757 0x8091B474 260400BC */ addiu	$a0, $s0, 0XBC
/* 000758 0x8091B478 24052AAA */ li	$a1, 0X2AAA
/* 000759 0x8091B47C 0C03FBCB */ jal	Lib_StepTowardsCheck_s
/* 000760 0x8091B480 24060160 */ li	$a2, 0X160
/* 000761 0x8091B484 3C018092 */ lui	$at, %hi(D_8091BE28)
/* 000762 0x8091B488 C42CBE28 */ lwc1	$f12, %lo(D_8091BE28)($at)
/* 000763 0x8091B48C 3C018092 */ lui	$at, %hi(D_8091BE2C)
/* 000764 0x8091B490 C426BE2C */ lwc1	$f6, %lo(D_8091BE2C)($at)
/* 000765 0x8091B494 C6040058 */ lwc1	$f4, 0X58($s0)
/* 000766 0x8091B498 46062001 */ sub.s	$f0, $f4, $f6
/* 000767 0x8091B49C 460C003C */ c.lt.s	$f0, $f12
/* 000768 0x8091B4A0 00000000 */ nop
/* 000769 0x8091B4A4 45020004 */ bc1fl .L8091B4B8
/* 000770 0x8091B4A8 46000086 */ mov.s	$f2, $f0
/* 000771 0x8091B4AC 10000002 */ b	.L8091B4B8
/* 000772 0x8091B4B0 46006086 */ mov.s	$f2, $f12
/* 000773 0x8091B4B4 46000086 */ mov.s	$f2, $f0
.L8091B4B8:
/* 000774 0x8091B4B8 44051000 */ mfc1	$a1, $f2
/* 000775 0x8091B4BC 0C02D9F8 */ jal	Actor_SetScale
/* 000776 0x8091B4C0 02002025 */ move	$a0, $s0
/* 000777 0x8091B4C4 3C018092 */ lui	$at, %hi(D_8091BE30)
/* 000778 0x8091B4C8 C42ABE30 */ lwc1	$f10, %lo(D_8091BE30)($at)
/* 000779 0x8091B4CC C60800C4 */ lwc1	$f8, 0XC4($s0)
/* 000780 0x8091B4D0 460A4401 */ sub.s	$f16, $f8, $f10
/* 000781 0x8091B4D4 0C021BF7 */ jal	randZeroOne
/* 000782 0x8091B4D8 E61000C4 */ swc1	$f16, 0XC4($s0)
/* 000783 0x8091B4DC C6120008 */ lwc1	$f18, 0X8($s0)
/* 000784 0x8091B4E0 3C013F00 */ lui	$at, 0x3F00
/* 000785 0x8091B4E4 44813000 */ mtc1	$at, $f6
/* 000786 0x8091B4E8 46120100 */ add.s	$f4, $f0, $f18
/* 000787 0x8091B4EC 46062201 */ sub.s	$f8, $f4, $f6
/* 000788 0x8091B4F0 0C021BF7 */ jal	randZeroOne
/* 000789 0x8091B4F4 E6080024 */ swc1	$f8, 0X24($s0)
/* 000790 0x8091B4F8 C60A0010 */ lwc1	$f10, 0X10($s0)
/* 000791 0x8091B4FC 3C013F00 */ lui	$at, 0x3F00
/* 000792 0x8091B500 44819000 */ mtc1	$at, $f18
/* 000793 0x8091B504 460A0400 */ add.s	$f16, $f0, $f10
/* 000794 0x8091B508 260401A4 */ addiu	$a0, $s0, 0X1A4
/* 000795 0x8091B50C 46128101 */ sub.s	$f4, $f16, $f18
/* 000796 0x8091B510 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000797 0x8091B514 E604002C */ swc1	$f4, 0X2C($s0)
/* 000798 0x8091B518 860E0312 */ lh	$t6, 0X312($s0)
/* 000799 0x8091B51C 29C10015 */ slti	$at, $t6, 0X15
/* 000800 0x8091B520 54200034 */ bnezl	$at, .L8091B5F4
/* 000801 0x8091B524 86090312 */ lh	$t1, 0X312($s0)
/* 000802 0x8091B528 0C021BF7 */ jal	randZeroOne
/* 000803 0x8091B52C 00000000 */ nop
/* 000804 0x8091B530 3C018092 */ lui	$at, %hi(D_8091BE34)
/* 000805 0x8091B534 C426BE34 */ lwc1	$f6, %lo(D_8091BE34)($at)
/* 000806 0x8091B538 4606003C */ c.lt.s	$f0, $f6
/* 000807 0x8091B53C 00000000 */ nop
/* 000808 0x8091B540 4502002C */ bc1fl .L8091B5F4
/* 000809 0x8091B544 86090312 */ lh	$t1, 0X312($s0)
/* 000810 0x8091B548 0C03FB61 */ jal	Math_Sins
/* 000811 0x8091B54C 860400BE */ lh	$a0, 0XBE($s0)
/* 000812 0x8091B550 3C018092 */ lui	$at, %hi(D_8091BE38)
/* 000813 0x8091B554 C428BE38 */ lwc1	$f8, %lo(D_8091BE38)($at)
/* 000814 0x8091B558 46080282 */ mul.s	$f10, $f0, $f8
/* 000815 0x8091B55C E7AA0034 */ swc1	$f10, 0X34($sp)
/* 000816 0x8091B560 0C03FB61 */ jal	Math_Sins
/* 000817 0x8091B564 860400BC */ lh	$a0, 0XBC($s0)
/* 000818 0x8091B568 3C018092 */ lui	$at, %hi(D_8091BE3C)
/* 000819 0x8091B56C C430BE3C */ lwc1	$f16, %lo(D_8091BE3C)($at)
/* 000820 0x8091B570 46100482 */ mul.s	$f18, $f0, $f16
/* 000821 0x8091B574 E7B20038 */ swc1	$f18, 0X38($sp)
/* 000822 0x8091B578 0C03FB51 */ jal	Math_Coss
/* 000823 0x8091B57C 860400BE */ lh	$a0, 0XBE($s0)
/* 000824 0x8091B580 3C018092 */ lui	$at, %hi(D_8091BE40)
/* 000825 0x8091B584 C424BE40 */ lwc1	$f4, %lo(D_8091BE40)($at)
/* 000826 0x8091B588 46040182 */ mul.s	$f6, $f0, $f4
/* 000827 0x8091B58C 0C021BF7 */ jal	randZeroOne
/* 000828 0x8091B590 E7A6003C */ swc1	$f6, 0X3C($sp)
/* 000829 0x8091B594 0C021BF7 */ jal	randZeroOne
/* 000830 0x8091B598 E7A0002C */ swc1	$f0, 0X2C($sp)
/* 000831 0x8091B59C 3C0140A0 */ lui	$at, 0x40A0
/* 000832 0x8091B5A0 44811000 */ mtc1	$at, $f2
/* 000833 0x8091B5A4 C7A8002C */ lwc1	$f8, 0X2C($sp)
/* 000834 0x8091B5A8 3C014100 */ lui	$at, 0x4100
/* 000835 0x8091B5AC 44816000 */ mtc1	$at, $f12
/* 000836 0x8091B5B0 46024282 */ mul.s	$f10, $f8, $f2
/* 000837 0x8091B5B4 3C078092 */ lui	$a3, %hi(D_8091BDCC)
/* 000838 0x8091B5B8 24E7BDCC */ addiu	$a3, $a3, %lo(D_8091BDCC)
/* 000839 0x8091B5BC 46020102 */ mul.s	$f4, $f0, $f2
/* 000840 0x8091B5C0 8FA4004C */ lw	$a0, 0X4C($sp)
/* 000841 0x8091B5C4 26050024 */ addiu	$a1, $s0, 0X24
/* 000842 0x8091B5C8 27A60034 */ addiu	$a2, $sp, 0X34
/* 000843 0x8091B5CC 460C5400 */ add.s	$f16, $f10, $f12
/* 000844 0x8091B5D0 460C2180 */ add.s	$f6, $f4, $f12
/* 000845 0x8091B5D4 4600848D */ trunc.w.s	$f18, $f16
/* 000846 0x8091B5D8 4600320D */ trunc.w.s	$f8, $f6
/* 000847 0x8091B5DC 44189000 */ mfc1	$t8, $f18
/* 000848 0x8091B5E0 44084000 */ mfc1	$t0, $f8
/* 000849 0x8091B5E4 AFB80010 */ sw	$t8, 0X10($sp)
/* 000850 0x8091B5E8 0C02C484 */ jal	func_800B1210
/* 000851 0x8091B5EC AFA80014 */ sw	$t0, 0X14($sp)
/* 000852 0x8091B5F0 86090312 */ lh	$t1, 0X312($s0)
.L8091B5F4:
/* 000853 0x8091B5F4 5D200004 */ bgtzl	$t1, .L8091B608
/* 000854 0x8091B5F8 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000855 0x8091B5FC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000856 0x8091B600 02002025 */ move	$a0, $s0
/* 000857 0x8091B604 8FBF0024 */ lw	$ra, 0X24($sp)
.L8091B608:
/* 000858 0x8091B608 8FB00020 */ lw	$s0, 0X20($sp)
/* 000859 0x8091B60C 27BD0048 */ addiu	$sp, $sp, 0X48
/* 000860 0x8091B610 03E00008 */ jr	$ra
/* 000861 0x8091B614 00000000 */ nop


.section .late_rodata

glabel D_8091BE28
/* 001378 0x8091BE28 */ .word	0x3A83126F
glabel D_8091BE2C
/* 001379 0x8091BE2C */ .word	0x3951B717
glabel D_8091BE30
/* 001380 0x8091BE30 */ .word	0x3F4CCCCD
glabel D_8091BE34
/* 001381 0x8091BE34 */ .word	0x3DCCCCCD
glabel D_8091BE38
/* 001382 0x8091BE38 */ .word	0xBF19999A
glabel D_8091BE3C
/* 001383 0x8091BE3C */ .word	0x3F19999A
glabel D_8091BE40
/* 001384 0x8091BE40 */ .word	0xBF19999A
