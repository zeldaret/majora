glabel func_80BFFE48
/* 001846 0x80BFFE48 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 001847 0x80BFFE4C AFB00020 */ sw	$s0, 0X20($sp)
/* 001848 0x80BFFE50 00808025 */ move	$s0, $a0
/* 001849 0x80BFFE54 AFBF0024 */ sw	$ra, 0X24($sp)
/* 001850 0x80BFFE58 AFA5002C */ sw	$a1, 0X2C($sp)
/* 001851 0x80BFFE5C 860502DC */ lh	$a1, 0X2DC($s0)
/* 001852 0x80BFFE60 AFA00010 */ sw	$zero, 0X10($sp)
/* 001853 0x80BFFE64 26040032 */ addiu	$a0, $s0, 0X32
/* 001854 0x80BFFE68 24060001 */ li	$a2, 0X1
/* 001855 0x80BFFE6C 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001856 0x80BFFE70 24071388 */ li	$a3, 0X1388
/* 001857 0x80BFFE74 3C063E99 */ lui	$a2, 0x3E99
/* 001858 0x80BFFE78 34C6999A */ ori	$a2, $a2, 0X999A
/* 001859 0x80BFFE7C 26040024 */ addiu	$a0, $s0, 0X24
/* 001860 0x80BFFE80 8E0502A4 */ lw	$a1, 0X2A4($s0)
/* 001861 0x80BFFE84 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001862 0x80BFFE88 3C074080 */ lui	$a3, 0x4080
/* 001863 0x80BFFE8C 3C063E99 */ lui	$a2, 0x3E99
/* 001864 0x80BFFE90 34C6999A */ ori	$a2, $a2, 0X999A
/* 001865 0x80BFFE94 2604002C */ addiu	$a0, $s0, 0X2C
/* 001866 0x80BFFE98 8E0502AC */ lw	$a1, 0X2AC($s0)
/* 001867 0x80BFFE9C 0C03FF7E */ jal	Math_SmoothScaleMaxF
/* 001868 0x80BFFEA0 3C074080 */ lui	$a3, 0x4080
/* 001869 0x80BFFEA4 3C0E80C0 */ lui	$t6, %hi(D_80C009F0)
/* 001870 0x80BFFEA8 8DCE09F0 */ lw	$t6, %lo(D_80C009F0)($t6)
/* 001871 0x80BFFEAC 29C10064 */ slti	$at, $t6, 0X64
/* 001872 0x80BFFEB0 54200024 */ bnezl	$at, .L80BFFF44
/* 001873 0x80BFFEB4 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001874 0x80BFFEB8 860F02E4 */ lh	$t7, 0X2E4($s0)
/* 001875 0x80BFFEBC 24010004 */ li	$at, 0X4
/* 001876 0x80BFFEC0 26040290 */ addiu	$a0, $s0, 0X290
/* 001877 0x80BFFEC4 11E1000C */ beq	$t7, $at, .L80BFFEF8
/* 001878 0x80BFFEC8 24052710 */ li	$a1, 0X2710
/* 001879 0x80BFFECC 02002025 */ move	$a0, $s0
/* 001880 0x80BFFED0 2405000F */ li	$a1, 0XF
/* 001881 0x80BFFED4 0C2FF925 */ jal	func_80BFE494
/* 001882 0x80BFFED8 3C063F80 */ lui	$a2, 0x3F80
/* 001883 0x80BFFEDC A60002DC */ sh	$zero, 0X2DC($s0)
/* 001884 0x80BFFEE0 0C2FF997 */ jal	func_80BFE65C
/* 001885 0x80BFFEE4 02002025 */ move	$a0, $s0
/* 001886 0x80BFFEE8 3C1880C0 */ lui	$t8, %hi(func_80BFFF54)
/* 001887 0x80BFFEEC 2718FF54 */ addiu	$t8, $t8, %lo(func_80BFFF54)
/* 001888 0x80BFFEF0 10000013 */ b	.L80BFFF40
/* 001889 0x80BFFEF4 AE180284 */ sw	$t8, 0X284($s0)
.L80BFFEF8:
/* 001890 0x80BFFEF8 24060001 */ li	$a2, 0X1
/* 001891 0x80BFFEFC 24071388 */ li	$a3, 0X1388
/* 001892 0x80BFFF00 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001893 0x80BFFF04 AFA00010 */ sw	$zero, 0X10($sp)
/* 001894 0x80BFFF08 3C1980C0 */ lui	$t9, %hi(D_80C009F0)
/* 001895 0x80BFFF0C 8F3909F0 */ lw	$t9, %lo(D_80C009F0)($t9)
/* 001896 0x80BFFF10 02002025 */ move	$a0, $s0
/* 001897 0x80BFFF14 2405000F */ li	$a1, 0XF
/* 001898 0x80BFFF18 2B210067 */ slti	$at, $t9, 0X67
/* 001899 0x80BFFF1C 14200008 */ bnez	$at, .L80BFFF40
/* 001900 0x80BFFF20 3C063F80 */ lui	$a2, 0x3F80
/* 001901 0x80BFFF24 0C2FF925 */ jal	func_80BFE494
/* 001902 0x80BFFF28 A60002DC */ sh	$zero, 0X2DC($s0)
/* 001903 0x80BFFF2C 0C2FF997 */ jal	func_80BFE65C
/* 001904 0x80BFFF30 02002025 */ move	$a0, $s0
/* 001905 0x80BFFF34 3C0880C0 */ lui	$t0, %hi(func_80BFFF54)
/* 001906 0x80BFFF38 2508FF54 */ addiu	$t0, $t0, %lo(func_80BFFF54)
/* 001907 0x80BFFF3C AE080284 */ sw	$t0, 0X284($s0)
.L80BFFF40:
/* 001908 0x80BFFF40 8FBF0024 */ lw	$ra, 0X24($sp)
.L80BFFF44:
/* 001909 0x80BFFF44 8FB00020 */ lw	$s0, 0X20($sp)
/* 001910 0x80BFFF48 27BD0028 */ addiu	$sp, $sp, 0X28
/* 001911 0x80BFFF4C 03E00008 */ jr	$ra
/* 001912 0x80BFFF50 00000000 */ nop

