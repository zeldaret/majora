glabel func_80A24BDC
/* 001747 0x80A24BDC 27BDFF68 */ addiu	$sp, $sp, -0X98
/* 001748 0x80A24BE0 AFB60068 */ sw	$s6, 0X68($sp)
/* 001749 0x80A24BE4 AFB20058 */ sw	$s2, 0X58($sp)
/* 001750 0x80A24BE8 00809025 */ move	$s2, $a0
/* 001751 0x80A24BEC 00A0B025 */ move	$s6, $a1
/* 001752 0x80A24BF0 AFBF006C */ sw	$ra, 0X6C($sp)
/* 001753 0x80A24BF4 AFB50064 */ sw	$s5, 0X64($sp)
/* 001754 0x80A24BF8 AFB40060 */ sw	$s4, 0X60($sp)
/* 001755 0x80A24BFC AFB3005C */ sw	$s3, 0X5C($sp)
/* 001756 0x80A24C00 AFB10054 */ sw	$s1, 0X54($sp)
/* 001757 0x80A24C04 AFB00050 */ sw	$s0, 0X50($sp)
/* 001758 0x80A24C08 F7BE0048 */ sdc1	$f30, 0X48($sp)
/* 001759 0x80A24C0C F7BC0040 */ sdc1	$f28, 0X40($sp)
/* 001760 0x80A24C10 F7BA0038 */ sdc1	$f26, 0X38($sp)
/* 001761 0x80A24C14 F7B80030 */ sdc1	$f24, 0X30($sp)
/* 001762 0x80A24C18 F7B60028 */ sdc1	$f22, 0X28($sp)
/* 001763 0x80A24C1C F7B40020 */ sdc1	$f20, 0X20($sp)
/* 001764 0x80A24C20 AFA600A0 */ sw	$a2, 0XA0($sp)
/* 001765 0x80A24C24 AFA700A4 */ sw	$a3, 0XA4($sp)
/* 001766 0x80A24C28 8E4E0004 */ lw	$t6, 0X4($s2)
/* 001767 0x80A24C2C 8FB500A8 */ lw	$s5, 0XA8($sp)
/* 001768 0x80A24C30 00008825 */ move	$s1, $zero
/* 001769 0x80A24C34 31CF0040 */ andi	$t7, $t6, 0X40
/* 001770 0x80A24C38 51E00053 */ beqzl	$t7, .L80A24D88
/* 001771 0x80A24C3C 8FBF006C */ lw	$ra, 0X6C($sp)
/* 001772 0x80A24C40 C6440244 */ lwc1	$f4, 0X244($s2)
/* 001773 0x80A24C44 00008025 */ move	$s0, $zero
/* 001774 0x80A24C48 1AA0004E */ blez	$s5, .L80A24D84
/* 001775 0x80A24C4C E7A4008C */ swc1	$f4, 0X8C($sp)
/* 001776 0x80A24C50 3C180001 */ lui	$t8, 0x0001
/* 001777 0x80A24C54 0315001A */ div	$zero, $t8, $s5
/* 001778 0x80A24C58 16A00002 */ bnez	$s5, .L80A24C64
/* 001779 0x80A24C5C 00000000 */ nop
/* 001780 0x80A24C60 0007000D */ break	0x00007
.L80A24C64:
/* 001781 0x80A24C64 2401FFFF */ li	$at, -0X1
/* 001782 0x80A24C68 16A10004 */ bne	$s5, $at, .L80A24C7C
/* 001783 0x80A24C6C 3C018000 */ lui	$at, 0x8000
/* 001784 0x80A24C70 17010002 */ bne	$t8, $at, .L80A24C7C
/* 001785 0x80A24C74 00000000 */ nop
/* 001786 0x80A24C78 0006000D */ break	0x00006
.L80A24C7C:
/* 001787 0x80A24C7C 3C0143A0 */ lui	$at, 0x43A0
/* 001788 0x80A24C80 4481F000 */ mtc1	$at, $f30
/* 001789 0x80A24C84 3C014270 */ lui	$at, 0x4270
/* 001790 0x80A24C88 00009812 */ mflo	$s3
/* 001791 0x80A24C8C 00139C00 */ sll	$s3, $s3, 16
/* 001792 0x80A24C90 4481E000 */ mtc1	$at, $f28
/* 001793 0x80A24C94 3C014220 */ lui	$at, 0x4220
/* 001794 0x80A24C98 00139C03 */ sra	$s3, $s3, 16
/* 001795 0x80A24C9C 44933000 */ mtc1	$s3, $f6
/* 001796 0x80A24CA0 4481D000 */ mtc1	$at, $f26
/* 001797 0x80A24CA4 3C0140A0 */ lui	$at, 0x40A0
/* 001798 0x80A24CA8 4481C000 */ mtc1	$at, $f24
/* 001799 0x80A24CAC 27B40088 */ addiu	$s4, $sp, 0X88
/* 001800 0x80A24CB0 468035A0 */ cvt.s.w	$f22, $f6
.L80A24CB4:
/* 001801 0x80A24CB4 0C021BF7 */ jal	randZeroOne
/* 001802 0x80A24CB8 00000000 */ nop
/* 001803 0x80A24CBC 46180202 */ mul.s	$f8, $f0, $f24
/* 001804 0x80A24CC0 C7B000A0 */ lwc1	$f16, 0XA0($sp)
/* 001805 0x80A24CC4 461A4280 */ add.s	$f10, $f8, $f26
/* 001806 0x80A24CC8 46105502 */ mul.s	$f20, $f10, $f16
/* 001807 0x80A24CCC 0C021BF7 */ jal	randZeroOne
/* 001808 0x80A24CD0 00000000 */ nop
/* 001809 0x80A24CD4 46160482 */ mul.s	$f18, $f0, $f22
/* 001810 0x80A24CD8 4600910D */ trunc.w.s	$f4, $f18
/* 001811 0x80A24CDC 44082000 */ mfc1	$t0, $f4
/* 001812 0x80A24CE0 00000000 */ nop
/* 001813 0x80A24CE4 01102021 */ addu	$a0, $t0, $s0
/* 001814 0x80A24CE8 00042400 */ sll	$a0, $a0, 16
/* 001815 0x80A24CEC 0C03FB61 */ jal	Math_Sins
/* 001816 0x80A24CF0 00042403 */ sra	$a0, $a0, 16
/* 001817 0x80A24CF4 46140182 */ mul.s	$f6, $f0, $f20
/* 001818 0x80A24CF8 C6480024 */ lwc1	$f8, 0X24($s2)
/* 001819 0x80A24CFC 46083280 */ add.s	$f10, $f6, $f8
/* 001820 0x80A24D00 0C021BF7 */ jal	randZeroOne
/* 001821 0x80A24D04 E7AA0088 */ swc1	$f10, 0X88($sp)
/* 001822 0x80A24D08 46160402 */ mul.s	$f16, $f0, $f22
/* 001823 0x80A24D0C 4600848D */ trunc.w.s	$f18, $f16
/* 001824 0x80A24D10 440A9000 */ mfc1	$t2, $f18
/* 001825 0x80A24D14 00000000 */ nop
/* 001826 0x80A24D18 01502021 */ addu	$a0, $t2, $s0
/* 001827 0x80A24D1C 00042400 */ sll	$a0, $a0, 16
/* 001828 0x80A24D20 0C03FB51 */ jal	Math_Coss
/* 001829 0x80A24D24 00042403 */ sra	$a0, $a0, 16
/* 001830 0x80A24D28 46140102 */ mul.s	$f4, $f0, $f20
/* 001831 0x80A24D2C C646002C */ lwc1	$f6, 0X2C($s2)
/* 001832 0x80A24D30 46062200 */ add.s	$f8, $f4, $f6
/* 001833 0x80A24D34 0C021BF7 */ jal	randZeroOne
/* 001834 0x80A24D38 E7A80090 */ swc1	$f8, 0X90($sp)
/* 001835 0x80A24D3C 461C0282 */ mul.s	$f10, $f0, $f28
/* 001836 0x80A24D40 C7B200A4 */ lwc1	$f18, 0XA4($sp)
/* 001837 0x80A24D44 02C02025 */ move	$a0, $s6
/* 001838 0x80A24D48 02802825 */ move	$a1, $s4
/* 001839 0x80A24D4C 00003025 */ move	$a2, $zero
/* 001840 0x80A24D50 00003825 */ move	$a3, $zero
/* 001841 0x80A24D54 AFA00010 */ sw	$zero, 0X10($sp)
/* 001842 0x80A24D58 461E5400 */ add.s	$f16, $f10, $f30
/* 001843 0x80A24D5C 46128102 */ mul.s	$f4, $f16, $f18
/* 001844 0x80A24D60 4600218D */ trunc.w.s	$f6, $f4
/* 001845 0x80A24D64 440C3000 */ mfc1	$t4, $f6
/* 001846 0x80A24D68 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 001847 0x80A24D6C AFAC0014 */ sw	$t4, 0X14($sp)
/* 001848 0x80A24D70 02138021 */ addu	$s0, $s0, $s3
/* 001849 0x80A24D74 00108400 */ sll	$s0, $s0, 16
/* 001850 0x80A24D78 26310001 */ addiu	$s1, $s1, 0X1
/* 001851 0x80A24D7C 1635FFCD */ bne	$s1, $s5, .L80A24CB4
/* 001852 0x80A24D80 00108403 */ sra	$s0, $s0, 16
.L80A24D84:
/* 001853 0x80A24D84 8FBF006C */ lw	$ra, 0X6C($sp)
.L80A24D88:
/* 001854 0x80A24D88 D7B40020 */ ldc1	$f20, 0X20($sp)
/* 001855 0x80A24D8C D7B60028 */ ldc1	$f22, 0X28($sp)
/* 001856 0x80A24D90 D7B80030 */ ldc1	$f24, 0X30($sp)
/* 001857 0x80A24D94 D7BA0038 */ ldc1	$f26, 0X38($sp)
/* 001858 0x80A24D98 D7BC0040 */ ldc1	$f28, 0X40($sp)
/* 001859 0x80A24D9C D7BE0048 */ ldc1	$f30, 0X48($sp)
/* 001860 0x80A24DA0 8FB00050 */ lw	$s0, 0X50($sp)
/* 001861 0x80A24DA4 8FB10054 */ lw	$s1, 0X54($sp)
/* 001862 0x80A24DA8 8FB20058 */ lw	$s2, 0X58($sp)
/* 001863 0x80A24DAC 8FB3005C */ lw	$s3, 0X5C($sp)
/* 001864 0x80A24DB0 8FB40060 */ lw	$s4, 0X60($sp)
/* 001865 0x80A24DB4 8FB50064 */ lw	$s5, 0X64($sp)
/* 001866 0x80A24DB8 8FB60068 */ lw	$s6, 0X68($sp)
/* 001867 0x80A24DBC 03E00008 */ jr	$ra
/* 001868 0x80A24DC0 27BD0098 */ addiu	$sp, $sp, 0X98

