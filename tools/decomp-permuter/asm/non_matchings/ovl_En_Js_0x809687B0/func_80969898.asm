glabel func_80969898
/* 001082 0x80969898 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 001083 0x8096989C AFB10020 */ sw	$s1, 0X20($sp)
/* 001084 0x809698A0 AFB0001C */ sw	$s0, 0X1C($sp)
/* 001085 0x809698A4 00808025 */ move	$s0, $a0
/* 001086 0x809698A8 00A08825 */ move	$s1, $a1
/* 001087 0x809698AC AFBF0024 */ sw	$ra, 0X24($sp)
/* 001088 0x809698B0 8E2E1CCC */ lw	$t6, 0X1CCC($s1)
/* 001089 0x809698B4 26040144 */ addiu	$a0, $s0, 0X144
/* 001090 0x809698B8 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 001091 0x809698BC AFAE0028 */ sw	$t6, 0X28($sp)
/* 001092 0x809698C0 86050092 */ lh	$a1, 0X92($s0)
/* 001093 0x809698C4 240F0064 */ li	$t7, 0X64
/* 001094 0x809698C8 AFAF0010 */ sw	$t7, 0X10($sp)
/* 001095 0x809698CC 26040032 */ addiu	$a0, $s0, 0X32
/* 001096 0x809698D0 24060006 */ li	$a2, 0X6
/* 001097 0x809698D4 0C03FFAF */ jal	Math_SmoothScaleMaxMinS
/* 001098 0x809698D8 24071838 */ li	$a3, 0X1838
/* 001099 0x809698DC 86180032 */ lh	$t8, 0X32($s0)
/* 001100 0x809698E0 26244908 */ addiu	$a0, $s1, 0X4908
/* 001101 0x809698E4 0C054926 */ jal	func_80152498
/* 001102 0x809698E8 A61800BE */ sh	$t8, 0XBE($s0)
/* 001103 0x809698EC 24010004 */ li	$at, 0X4
/* 001104 0x809698F0 10410005 */ beq	$v0, $at, .L80969908
/* 001105 0x809698F4 24010005 */ li	$at, 0X5
/* 001106 0x809698F8 10410022 */ beq	$v0, $at, .L80969984
/* 001107 0x809698FC 00000000 */ nop
/* 001108 0x80969900 10000063 */ b	.L80969A90
/* 001109 0x80969904 8FBF0024 */ lw	$ra, 0X24($sp)
.L80969908:
/* 001110 0x80969908 0C051D89 */ jal	func_80147624
/* 001111 0x8096990C 02202025 */ move	$a0, $s1
/* 001112 0x80969910 1040005E */ beqz	$v0, .L80969A8C
/* 001113 0x80969914 3C010001 */ lui	$at, 0x0001
/* 001114 0x80969918 02211821 */ addu	$v1, $s1, $at
/* 001115 0x8096991C 9479680C */ lhu	$t9, 0X680C($v1)
/* 001116 0x80969920 24012215 */ li	$at, 0X2215
/* 001117 0x80969924 5721005A */ bnel	$t9, $at, .L80969A90
/* 001118 0x80969928 8FBF0024 */ lw	$ra, 0X24($sp)
/* 001119 0x8096992C 90626929 */ lbu	$v0, 0X6929($v1)
/* 001120 0x80969930 24010001 */ li	$at, 0X1
/* 001121 0x80969934 10400005 */ beqz	$v0, .L8096994C
/* 001122 0x80969938 00000000 */ nop
/* 001123 0x8096993C 1041000A */ beq	$v0, $at, .L80969968
/* 001124 0x80969940 00000000 */ nop
/* 001125 0x80969944 10000052 */ b	.L80969A90
/* 001126 0x80969948 8FBF0024 */ lw	$ra, 0X24($sp)
.L8096994C:
/* 001127 0x8096994C 0C067C82 */ jal	func_8019F208
/* 001128 0x80969950 00000000 */ nop
/* 001129 0x80969954 02202025 */ move	$a0, $s1
/* 001130 0x80969958 0C05464E */ jal	func_80151938
/* 001131 0x8096995C 24052217 */ li	$a1, 0X2217
/* 001132 0x80969960 1000004B */ b	.L80969A90
/* 001133 0x80969964 8FBF0024 */ lw	$ra, 0X24($sp)
.L80969968:
/* 001134 0x80969968 0C067C8C */ jal	func_8019F230
/* 001135 0x8096996C 00000000 */ nop
/* 001136 0x80969970 02202025 */ move	$a0, $s1
/* 001137 0x80969974 0C05464E */ jal	func_80151938
/* 001138 0x80969978 24052216 */ li	$a1, 0X2216
/* 001139 0x8096997C 10000044 */ b	.L80969A90
/* 001140 0x80969980 8FBF0024 */ lw	$ra, 0X24($sp)
.L80969984:
/* 001141 0x80969984 0C051D89 */ jal	func_80147624
/* 001142 0x80969988 02202025 */ move	$a0, $s1
/* 001143 0x8096998C 1040003F */ beqz	$v0, .L80969A8C
/* 001144 0x80969990 3C020001 */ lui	$v0, 0x0001
/* 001145 0x80969994 00511021 */ addu	$v0, $v0, $s1
/* 001146 0x80969998 9442680C */ lhu	$v0, 0X680C($v0)
/* 001147 0x8096999C 2448DDF4 */ addiu	$t0, $v0, -0X220C
/* 001148 0x809699A0 2D01000C */ sltiu	$at, $t0, 0XC
/* 001149 0x809699A4 10200036 */ beqz	$at, .L80969A80
/* 001150 0x809699A8 00084080 */ sll	$t0, $t0, 2
/* 001151 0x809699AC 3C018097 */ lui	$at, %hi(jtbl_D_8096ACC8)
/* 001152 0x809699B0 00280821 */ addu	$at, $at, $t0
/* 001153 0x809699B4 8C28ACC8 */ lw	$t0, %lo(jtbl_D_8096ACC8)($at)
/* 001154 0x809699B8 01000008 */ jr	$t0
/* 001155 0x809699BC 00000000 */ nop
glabel L809699C0
.L809699C0:
/* 001156 0x809699C0 960902B8 */ lhu	$t1, 0X2B8($s0)
/* 001157 0x809699C4 8604001C */ lh	$a0, 0X1C($s0)
/* 001158 0x809699C8 352A0001 */ ori	$t2, $t1, 0X1
/* 001159 0x809699CC A60A02B8 */ sh	$t2, 0X2B8($s0)
/* 001160 0x809699D0 0C25A4CF */ jal	func_8096933C
/* 001161 0x809699D4 3084000F */ andi	$a0, $a0, 0XF
/* 001162 0x809699D8 14400006 */ bnez	$v0, .L809699F4
/* 001163 0x809699DC 02202025 */ move	$a0, $s1
/* 001164 0x809699E0 02202025 */ move	$a0, $s1
/* 001165 0x809699E4 0C05464E */ jal	func_80151938
/* 001166 0x809699E8 2405220F */ li	$a1, 0X220F
/* 001167 0x809699EC 10000028 */ b	.L80969A90
/* 001168 0x809699F0 8FBF0024 */ lw	$ra, 0X24($sp)
.L809699F4:
/* 001169 0x809699F4 0C05464E */ jal	func_80151938
/* 001170 0x809699F8 2405220D */ li	$a1, 0X220D
/* 001171 0x809699FC 10000024 */ b	.L80969A90
/* 001172 0x80969A00 8FBF0024 */ lw	$ra, 0X24($sp)
glabel L80969A04
.L80969A04:
/* 001173 0x80969A04 24450001 */ addiu	$a1, $v0, 0X1
/* 001174 0x80969A08 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 001175 0x80969A0C 0C05464E */ jal	func_80151938
/* 001176 0x80969A10 02202025 */ move	$a0, $s1
/* 001177 0x80969A14 1000001E */ b	.L80969A90
/* 001178 0x80969A18 8FBF0024 */ lw	$ra, 0X24($sp)
glabel L80969A1C
.L80969A1C:
/* 001179 0x80969A1C 02202025 */ move	$a0, $s1
/* 001180 0x80969A20 0C05464E */ jal	func_80151938
/* 001181 0x80969A24 240500FF */ li	$a1, 0XFF
/* 001182 0x80969A28 3C0B8097 */ lui	$t3, %hi(func_80969748)
/* 001183 0x80969A2C 256B9748 */ addiu	$t3, $t3, %lo(func_80969748)
/* 001184 0x80969A30 10000016 */ b	.L80969A8C
/* 001185 0x80969A34 AE0B02C4 */ sw	$t3, 0X2C4($s0)
glabel L80969A38
.L80969A38:
/* 001186 0x80969A38 8FAC0028 */ lw	$t4, 0X28($sp)
/* 001187 0x80969A3C 02202025 */ move	$a0, $s1
/* 001188 0x80969A40 240500FF */ li	$a1, 0XFF
/* 001189 0x80969A44 0C05464E */ jal	func_80151938
/* 001190 0x80969A48 A1800A87 */ sb	$zero, 0XA87($t4)
/* 001191 0x80969A4C 3C0D8097 */ lui	$t5, %hi(func_80969748)
/* 001192 0x80969A50 25AD9748 */ addiu	$t5, $t5, %lo(func_80969748)
/* 001193 0x80969A54 1000000D */ b	.L80969A8C
/* 001194 0x80969A58 AE0D02C4 */ sw	$t5, 0X2C4($s0)
glabel L80969A5C
.L80969A5C:
/* 001195 0x80969A5C 02002025 */ move	$a0, $s0
/* 001196 0x80969A60 0C25A57F */ jal	func_809695FC
/* 001197 0x80969A64 02202825 */ move	$a1, $s1
/* 001198 0x80969A68 14400008 */ bnez	$v0, .L80969A8C
/* 001199 0x80969A6C 02002025 */ move	$a0, $s0
/* 001200 0x80969A70 0C25A525 */ jal	func_80969494
/* 001201 0x80969A74 02202825 */ move	$a1, $s1
/* 001202 0x80969A78 10000005 */ b	.L80969A90
/* 001203 0x80969A7C 8FBF0024 */ lw	$ra, 0X24($sp)
glabel L80969A80
.L80969A80:
/* 001204 0x80969A80 02002025 */ move	$a0, $s0
/* 001205 0x80969A84 0C25A525 */ jal	func_80969494
/* 001206 0x80969A88 02202825 */ move	$a1, $s1
.L80969A8C:
/* 001207 0x80969A8C 8FBF0024 */ lw	$ra, 0X24($sp)
.L80969A90:
/* 001208 0x80969A90 8FB0001C */ lw	$s0, 0X1C($sp)
/* 001209 0x80969A94 8FB10020 */ lw	$s1, 0X20($sp)
/* 001210 0x80969A98 03E00008 */ jr	$ra
/* 001211 0x80969A9C 27BD0030 */ addiu	$sp, $sp, 0X30


.section .late_rodata

glabel jtbl_D_8096ACC8
/* 002374 0x8096ACC8 */ .word	L809699C0
/* 002375 0x8096ACCC */ .word	L80969A04
/* 002376 0x8096ACD0 */ .word	L80969A1C
/* 002377 0x8096ACD4 */ .word	L80969A80
/* 002378 0x8096ACD8 */ .word	L80969A38
/* 002379 0x8096ACDC */ .word	L80969A38
/* 002380 0x8096ACE0 */ .word	L80969A38
/* 002381 0x8096ACE4 */ .word	L80969A04
/* 002382 0x8096ACE8 */ .word	L80969A5C
/* 002383 0x8096ACEC */ .word	L80969A80
/* 002384 0x8096ACF0 */ .word	L80969A80
/* 002385 0x8096ACF4 */ .word	L80969A5C
