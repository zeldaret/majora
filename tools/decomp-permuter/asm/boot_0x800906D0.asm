.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_800906D0
/* 016796 0x800906D0 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 016797 0x800906D4 AFBF0024 */ sw	$ra, 0X24($sp)
/* 016798 0x800906D8 AFB30020 */ sw	$s3, 0X20($sp)
/* 016799 0x800906DC AFB2001C */ sw	$s2, 0X1C($sp)
/* 016800 0x800906E0 AFB10018 */ sw	$s1, 0X18($sp)
/* 016801 0x800906E4 AFB00014 */ sw	$s0, 0X14($sp)
/* 016802 0x800906E8 A3A00037 */ sb	$zero, 0X37($sp)
/* 016803 0x800906EC 00A03825 */ move	$a3, $a1
/* 016804 0x800906F0 ACA60004 */ sw	$a2, 0X4($a1)
/* 016805 0x800906F4 ACA40000 */ sw	$a0, 0X0($a1)
/* 016806 0x800906F8 ACA00008 */ sw	$zero, 0X8($a1)
/* 016807 0x800906FC 00C09025 */ move	$s2, $a2
/* 016808 0x80090700 00C02825 */ move	$a1, $a2
/* 016809 0x80090704 00809825 */ move	$s3, $a0
/* 016810 0x80090708 27A60037 */ addiu	$a2, $sp, 0X37
/* 016811 0x8009070C 0C0249CC */ jal	func_80092730
/* 016812 0x80090710 AFA70044 */ sw	$a3, 0X44($sp)
/* 016813 0x80090714 10400003 */ beqz	$v0, .L80090724
/* 016814 0x80090718 02602025 */ move	$a0, $s3
/* 016815 0x8009071C 10000033 */ b	.L800907EC
/* 016816 0x80090720 8FBF0024 */ lw	$ra, 0X24($sp)
.L80090724:
/* 016817 0x80090724 0C024204 */ jal	func_80090810
/* 016818 0x80090728 02402825 */ move	$a1, $s2
/* 016819 0x8009072C 10400003 */ beqz	$v0, .L8009073C
/* 016820 0x80090730 3C108009 */ lui	$s0, %hi(D_80097FA0)
/* 016821 0x80090734 1000002C */ b	.L800907E8
/* 016822 0x80090738 24020004 */ li	$v0, 0X4
.L8009073C:
/* 016823 0x8009073C 3C118009 */ lui	$s1, %hi(D_80097FA5)
/* 016824 0x80090740 26317FA5 */ addiu	$s1, $s1, %lo(D_80097FA5)
/* 016825 0x80090744 26107FA0 */ addiu	$s0, $s0, %lo(D_80097FA0)
/* 016826 0x80090748 02602025 */ move	$a0, $s3
.L8009074C:
/* 016827 0x8009074C 02402825 */ move	$a1, $s2
/* 016828 0x80090750 0C024240 */ jal	func_80090900
/* 016829 0x80090754 92060000 */ lbu	$a2, 0X0($s0)
/* 016830 0x80090758 10400003 */ beqz	$v0, .L80090768
/* 016831 0x8009075C 26100001 */ addiu	$s0, $s0, 0X1
/* 016832 0x80090760 10000022 */ b	.L800907EC
/* 016833 0x80090764 8FBF0024 */ lw	$ra, 0X24($sp)
.L80090768:
/* 016834 0x80090768 5611FFF8 */ bnel	$s0, $s1, .L8009074C
/* 016835 0x8009076C 02602025 */ move	$a0, $s3
/* 016836 0x80090770 02602025 */ move	$a0, $s3
/* 016837 0x80090774 02402825 */ move	$a1, $s2
/* 016838 0x80090778 0C0249CC */ jal	func_80092730
/* 016839 0x8009077C 27A60037 */ addiu	$a2, $sp, 0X37
/* 016840 0x80090780 10400003 */ beqz	$v0, .L80090790
/* 016841 0x80090784 93AE0037 */ lbu	$t6, 0X37($sp)
/* 016842 0x80090788 10000018 */ b	.L800907EC
/* 016843 0x8009078C 8FBF0024 */ lw	$ra, 0X24($sp)
.L80090790:
/* 016844 0x80090790 31CF0002 */ andi	$t7, $t6, 0X2
/* 016845 0x80090794 11E00003 */ beqz	$t7, .L800907A4
/* 016846 0x80090798 24180100 */ li	$t8, 0X100
/* 016847 0x8009079C 10000012 */ b	.L800907E8
/* 016848 0x800907A0 2402000F */ li	$v0, 0XF
.L800907A4:
/* 016849 0x800907A4 AFB80030 */ sw	$t8, 0X30($sp)
/* 016850 0x800907A8 02602025 */ move	$a0, $s3
/* 016851 0x800907AC 02402825 */ move	$a1, $s2
/* 016852 0x800907B0 00003025 */ move	$a2, $zero
/* 016853 0x800907B4 0C025950 */ jal	func_80096540
/* 016854 0x800907B8 27A70030 */ addiu	$a3, $sp, 0X30
/* 016855 0x800907BC 10400003 */ beqz	$v0, .L800907CC
/* 016856 0x800907C0 8FA40044 */ lw	$a0, 0X44($sp)
/* 016857 0x800907C4 10000009 */ b	.L800907EC
/* 016858 0x800907C8 8FBF0024 */ lw	$ra, 0X24($sp)
.L800907CC:
/* 016859 0x800907CC 0C022560 */ jal	func_80089580
/* 016860 0x800907D0 27A50037 */ addiu	$a1, $sp, 0X37
/* 016861 0x800907D4 3059FF00 */ andi	$t9, $v0, 0XFF00
/* 016862 0x800907D8 13200002 */ beqz	$t9, .L800907E4
/* 016863 0x800907DC 00401825 */ move	$v1, $v0
/* 016864 0x800907E0 24030005 */ li	$v1, 0X5
.L800907E4:
/* 016865 0x800907E4 00601025 */ move	$v0, $v1
.L800907E8:
/* 016866 0x800907E8 8FBF0024 */ lw	$ra, 0X24($sp)
.L800907EC:
/* 016867 0x800907EC 8FB00014 */ lw	$s0, 0X14($sp)
/* 016868 0x800907F0 8FB10018 */ lw	$s1, 0X18($sp)
/* 016869 0x800907F4 8FB2001C */ lw	$s2, 0X1C($sp)
/* 016870 0x800907F8 8FB30020 */ lw	$s3, 0X20($sp)
/* 016871 0x800907FC 03E00008 */ jr	$ra
/* 016872 0x80090800 27BD0040 */ addiu	$sp, $sp, 0X40
/* 016873 0x80090804 00000000 */ nop
/* 016874 0x80090808 00000000 */ nop
/* 016875 0x8009080C 00000000 */ nop
