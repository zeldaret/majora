glabel func_8092860C
/* 001043 0x8092860C 27BDFF18 */ addiu	$sp, $sp, -0XE8
/* 001044 0x80928610 AFB70094 */ sw	$s7, 0X94($sp)
/* 001045 0x80928614 AFB5008C */ sw	$s5, 0X8C($sp)
/* 001046 0x80928618 00A0A825 */ move	$s5, $a1
/* 001047 0x8092861C 0080B825 */ move	$s7, $a0
/* 001048 0x80928620 AFBF009C */ sw	$ra, 0X9C($sp)
/* 001049 0x80928624 AFBE0098 */ sw	$fp, 0X98($sp)
/* 001050 0x80928628 AFB60090 */ sw	$s6, 0X90($sp)
/* 001051 0x8092862C AFB40088 */ sw	$s4, 0X88($sp)
/* 001052 0x80928630 AFB30084 */ sw	$s3, 0X84($sp)
/* 001053 0x80928634 AFB20080 */ sw	$s2, 0X80($sp)
/* 001054 0x80928638 AFB1007C */ sw	$s1, 0X7C($sp)
/* 001055 0x8092863C AFB00078 */ sw	$s0, 0X78($sp)
/* 001056 0x80928640 F7BE0070 */ sdc1	$f30, 0X70($sp)
/* 001057 0x80928644 F7BC0068 */ sdc1	$f28, 0X68($sp)
/* 001058 0x80928648 F7BA0060 */ sdc1	$f26, 0X60($sp)
/* 001059 0x8092864C F7B80058 */ sdc1	$f24, 0X58($sp)
/* 001060 0x80928650 F7B60050 */ sdc1	$f22, 0X50($sp)
/* 001061 0x80928654 F7B40048 */ sdc1	$f20, 0X48($sp)
/* 001062 0x80928658 86EE001C */ lh	$t6, 0X1C($s7)
/* 001063 0x8092865C 3C014080 */ lui	$at, 0x4080
/* 001064 0x80928660 4481F000 */ mtc1	$at, $f30
/* 001065 0x80928664 3C018093 */ lui	$at, %hi(D_80929624)
/* 001066 0x80928668 C43C9624 */ lwc1	$f28, %lo(D_80929624)($at)
/* 001067 0x8092866C 000E79C3 */ sra	$t7, $t6, 7
/* 001068 0x80928670 31F80003 */ andi	$t8, $t7, 0X3
/* 001069 0x80928674 3C088093 */ lui	$t0, %hi(D_80929530)
/* 001070 0x80928678 3C014120 */ lui	$at, 0x4120
/* 001071 0x8092867C 25089530 */ addiu	$t0, $t0, %lo(D_80929530)
/* 001072 0x80928680 0018C940 */ sll	$t9, $t8, 5
/* 001073 0x80928684 4481D000 */ mtc1	$at, $f26
/* 001074 0x80928688 0328B021 */ addu	$s6, $t9, $t0
/* 001075 0x8092868C 00008825 */ move	$s1, $zero
/* 001076 0x80928690 00009025 */ move	$s2, $zero
/* 001077 0x80928694 26F40024 */ addiu	$s4, $s7, 0X24
/* 001078 0x80928698 27BE00C0 */ addiu	$fp, $sp, 0XC0
/* 001079 0x8092869C 27B300CC */ addiu	$s3, $sp, 0XCC
.L809286A0:
/* 001080 0x809286A0 0C021BF7 */ jal	randZeroOne
/* 001081 0x809286A4 00000000 */ nop
/* 001082 0x809286A8 46000182 */ mul.s	$f6, $f0, $f0
/* 001083 0x809286AC 3C013F80 */ lui	$at, 0x3F80
/* 001084 0x809286B0 44812000 */ mtc1	$at, $f4
/* 001085 0x809286B4 3C018093 */ lui	$at, %hi(D_80929628)
/* 001086 0x809286B8 C42A9628 */ lwc1	$f10, %lo(D_80929628)($at)
/* 001087 0x809286BC 3C018093 */ lui	$at, %hi(D_8092962C)
/* 001088 0x809286C0 C432962C */ lwc1	$f18, %lo(D_8092962C)($at)
/* 001089 0x809286C4 46062201 */ sub.s	$f8, $f4, $f6
/* 001090 0x809286C8 00122400 */ sll	$a0, $s2, 16
/* 001091 0x809286CC 00042403 */ sra	$a0, $a0, 16
/* 001092 0x809286D0 460A4402 */ mul.s	$f16, $f8, $f10
/* 001093 0x809286D4 0C03FB61 */ jal	Math_Sins
/* 001094 0x809286D8 46128500 */ add.s	$f20, $f16, $f18
/* 001095 0x809286DC 00122400 */ sll	$a0, $s2, 16
/* 001096 0x809286E0 46000586 */ mov.s	$f22, $f0
/* 001097 0x809286E4 0C03FB51 */ jal	Math_Coss
/* 001098 0x809286E8 00042403 */ sra	$a0, $a0, 16
/* 001099 0x809286EC 4614B102 */ mul.s	$f4, $f22, $f20
/* 001100 0x809286F0 46000606 */ mov.s	$f24, $f0
/* 001101 0x809286F4 0C021BF7 */ jal	randZeroOne
/* 001102 0x809286F8 E7A400CC */ swc1	$f4, 0XCC($sp)
/* 001103 0x809286FC 3C014170 */ lui	$at, 0x4170
/* 001104 0x80928700 44813000 */ mtc1	$at, $f6
/* 001105 0x80928704 C7A400CC */ lwc1	$f4, 0XCC($sp)
/* 001106 0x80928708 3C014000 */ lui	$at, 0x4000
/* 001107 0x8092870C 46060202 */ mul.s	$f8, $f0, $f6
/* 001108 0x80928710 44815000 */ mtc1	$at, $f10
/* 001109 0x80928714 4614C482 */ mul.s	$f18, $f24, $f20
/* 001110 0x80928718 00000000 */ nop
/* 001111 0x8092871C 461C2182 */ mul.s	$f6, $f4, $f28
/* 001112 0x80928720 460A4400 */ add.s	$f16, $f8, $f10
/* 001113 0x80928724 E7B200D4 */ swc1	$f18, 0XD4($sp)
/* 001114 0x80928728 E7B000D0 */ swc1	$f16, 0XD0($sp)
/* 001115 0x8092872C 0C021BF7 */ jal	randZeroOne
/* 001116 0x80928730 E7A600C0 */ swc1	$f6, 0XC0($sp)
/* 001117 0x80928734 461E0202 */ mul.s	$f8, $f0, $f30
/* 001118 0x80928738 C7B000D4 */ lwc1	$f16, 0XD4($sp)
/* 001119 0x8092873C 02602025 */ move	$a0, $s3
/* 001120 0x80928740 02802825 */ move	$a1, $s4
/* 001121 0x80928744 461C8482 */ mul.s	$f18, $f16, $f28
/* 001122 0x80928748 02603025 */ move	$a2, $s3
/* 001123 0x8092874C 461E4280 */ add.s	$f10, $f8, $f30
/* 001124 0x80928750 E7B200C8 */ swc1	$f18, 0XC8($sp)
/* 001125 0x80928754 0C03FD6F */ jal	Math_Vec3f_Sum
/* 001126 0x80928758 E7AA00C4 */ swc1	$f10, 0XC4($sp)
/* 001127 0x8092875C 0C021BF7 */ jal	randZeroOne
/* 001128 0x80928760 00000000 */ nop
/* 001129 0x80928764 3C018093 */ lui	$at, %hi(D_80929630)
/* 001130 0x80928768 C4249630 */ lwc1	$f4, %lo(D_80929630)($at)
/* 001131 0x8092876C 24100020 */ li	$s0, 0X20
/* 001132 0x80928770 4604003C */ c.lt.s	$f0, $f4
/* 001133 0x80928774 00000000 */ nop
/* 001134 0x80928778 45000003 */ bc1f .L80928788
/* 001135 0x8092877C 00000000 */ nop
/* 001136 0x80928780 10000001 */ b	.L80928788
/* 001137 0x80928784 24100040 */ li	$s0, 0X40
.L80928788:
/* 001138 0x80928788 0C021BF7 */ jal	randZeroOne
/* 001139 0x8092878C 00000000 */ nop
/* 001140 0x80928790 3C0142D2 */ lui	$at, 0x42D2
/* 001141 0x80928794 44813000 */ mtc1	$at, $f6
/* 001142 0x80928798 2409FF56 */ li	$t1, -0XAA
/* 001143 0x8092879C 240A0032 */ li	$t2, 0X32
/* 001144 0x809287A0 46060202 */ mul.s	$f8, $f0, $f6
/* 001145 0x809287A4 240B0003 */ li	$t3, 0X3
/* 001146 0x809287A8 240E0046 */ li	$t6, 0X46
/* 001147 0x809287AC 240FFFFF */ li	$t7, -0X1
/* 001148 0x809287B0 AFAF0034 */ sw	$t7, 0X34($sp)
/* 001149 0x809287B4 AFAE0030 */ sw	$t6, 0X30($sp)
/* 001150 0x809287B8 AFAB001C */ sw	$t3, 0X1C($sp)
/* 001151 0x809287BC 461A4280 */ add.s	$f10, $f8, $f26
/* 001152 0x809287C0 AFAA0018 */ sw	$t2, 0X18($sp)
/* 001153 0x809287C4 AFA90010 */ sw	$t1, 0X10($sp)
/* 001154 0x809287C8 AFB00014 */ sw	$s0, 0X14($sp)
/* 001155 0x809287CC 4600540D */ trunc.w.s	$f16, $f10
/* 001156 0x809287D0 AFA00020 */ sw	$zero, 0X20($sp)
/* 001157 0x809287D4 AFA00028 */ sw	$zero, 0X28($sp)
/* 001158 0x809287D8 AFA0002C */ sw	$zero, 0X2C($sp)
/* 001159 0x809287DC 440D8000 */ mfc1	$t5, $f16
/* 001160 0x809287E0 02A02025 */ move	$a0, $s5
/* 001161 0x809287E4 02602825 */ move	$a1, $s3
/* 001162 0x809287E8 AFAD0024 */ sw	$t5, 0X24($sp)
/* 001163 0x809287EC 86D80000 */ lh	$t8, 0X0($s6)
/* 001164 0x809287F0 03C03025 */ move	$a2, $fp
/* 001165 0x809287F4 02803825 */ move	$a3, $s4
/* 001166 0x809287F8 AFB80038 */ sw	$t8, 0X38($sp)
/* 001167 0x809287FC 8ED9000C */ lw	$t9, 0XC($s6)
/* 001168 0x80928800 0C02CA04 */ jal	EffectSS_SpawnShard
/* 001169 0x80928804 AFB9003C */ sw	$t9, 0X3C($sp)
/* 001170 0x80928808 26310001 */ addiu	$s1, $s1, 0X1
/* 001171 0x8092880C 26524E20 */ addiu	$s2, $s2, 0X4E20
/* 001172 0x80928810 00129400 */ sll	$s2, $s2, 16
/* 001173 0x80928814 2A21000D */ slti	$at, $s1, 0XD
/* 001174 0x80928818 1420FFA1 */ bnez	$at, .L809286A0
/* 001175 0x8092881C 00129403 */ sra	$s2, $s2, 16
/* 001176 0x80928820 3C018093 */ lui	$at, %hi(D_80929634)
/* 001177 0x80928824 C43E9634 */ lwc1	$f30, %lo(D_80929634)($at)
/* 001178 0x80928828 3C014220 */ lui	$at, 0x4220
/* 001179 0x8092882C 4481E000 */ mtc1	$at, $f28
/* 001180 0x80928830 3C0141F0 */ lui	$at, 0x41F0
/* 001181 0x80928834 4481C000 */ mtc1	$at, $f24
/* 001182 0x80928838 3C0141A0 */ lui	$at, 0x41A0
/* 001183 0x8092883C 4481B000 */ mtc1	$at, $f22
/* 001184 0x80928840 3C018093 */ lui	$at, %hi(D_80929638)
/* 001185 0x80928844 C4349638 */ lwc1	$f20, %lo(D_80929638)($at)
/* 001186 0x80928848 00008825 */ move	$s1, $zero
/* 001187 0x8092884C 24100007 */ li	$s0, 0X7
.L80928850:
/* 001188 0x80928850 0C021BF7 */ jal	randZeroOne
/* 001189 0x80928854 00000000 */ nop
/* 001190 0x80928858 461E0482 */ mul.s	$f18, $f0, $f30
/* 001191 0x8092885C 4406B000 */ mfc1	$a2, $f22
/* 001192 0x80928860 4407C000 */ mfc1	$a3, $f24
/* 001193 0x80928864 02A02025 */ move	$a0, $s5
/* 001194 0x80928868 02802825 */ move	$a1, $s4
/* 001195 0x8092886C E7BC0010 */ swc1	$f28, 0X10($sp)
/* 001196 0x80928870 46149100 */ add.s	$f4, $f18, $f20
/* 001197 0x80928874 0C02C7A5 */ jal	EffectSS_SpawnBubble
/* 001198 0x80928878 E7A40014 */ swc1	$f4, 0X14($sp)
/* 001199 0x8092887C 0C021BF7 */ jal	randZeroOne
/* 001200 0x80928880 00000000 */ nop
/* 001201 0x80928884 3C018093 */ lui	$at, %hi(D_8092963C)
/* 001202 0x80928888 C426963C */ lwc1	$f6, %lo(D_8092963C)($at)
/* 001203 0x8092888C 4406D000 */ mfc1	$a2, $f26
/* 001204 0x80928890 4407D000 */ mfc1	$a3, $f26
/* 001205 0x80928894 46060202 */ mul.s	$f8, $f0, $f6
/* 001206 0x80928898 02A02025 */ move	$a0, $s5
/* 001207 0x8092889C 02802825 */ move	$a1, $s4
/* 001208 0x809288A0 E7BA0010 */ swc1	$f26, 0X10($sp)
/* 001209 0x809288A4 46144280 */ add.s	$f10, $f8, $f20
/* 001210 0x809288A8 0C02C7A5 */ jal	EffectSS_SpawnBubble
/* 001211 0x809288AC E7AA0014 */ swc1	$f10, 0X14($sp)
/* 001212 0x809288B0 26310001 */ addiu	$s1, $s1, 0X1
/* 001213 0x809288B4 1630FFE6 */ bne	$s1, $s0, .L80928850
/* 001214 0x809288B8 00000000 */ nop
/* 001215 0x809288BC 8FBF009C */ lw	$ra, 0X9C($sp)
/* 001216 0x809288C0 D7B40048 */ ldc1	$f20, 0X48($sp)
/* 001217 0x809288C4 D7B60050 */ ldc1	$f22, 0X50($sp)
/* 001218 0x809288C8 D7B80058 */ ldc1	$f24, 0X58($sp)
/* 001219 0x809288CC D7BA0060 */ ldc1	$f26, 0X60($sp)
/* 001220 0x809288D0 D7BC0068 */ ldc1	$f28, 0X68($sp)
/* 001221 0x809288D4 D7BE0070 */ ldc1	$f30, 0X70($sp)
/* 001222 0x809288D8 8FB00078 */ lw	$s0, 0X78($sp)
/* 001223 0x809288DC 8FB1007C */ lw	$s1, 0X7C($sp)
/* 001224 0x809288E0 8FB20080 */ lw	$s2, 0X80($sp)
/* 001225 0x809288E4 8FB30084 */ lw	$s3, 0X84($sp)
/* 001226 0x809288E8 8FB40088 */ lw	$s4, 0X88($sp)
/* 001227 0x809288EC 8FB5008C */ lw	$s5, 0X8C($sp)
/* 001228 0x809288F0 8FB60090 */ lw	$s6, 0X90($sp)
/* 001229 0x809288F4 8FB70094 */ lw	$s7, 0X94($sp)
/* 001230 0x809288F8 8FBE0098 */ lw	$fp, 0X98($sp)
/* 001231 0x809288FC 03E00008 */ jr	$ra
/* 001232 0x80928900 27BD00E8 */ addiu	$sp, $sp, 0XE8


.section .late_rodata

glabel D_80929624
/* 002073 0x80929624 */ .word	0x3ECCCCCD
glabel D_80929628
/* 002074 0x80929628 */ .word	0x4099999A
glabel D_8092962C
/* 002075 0x8092962C */ .word	0x404CCCCD
glabel D_80929630
/* 002076 0x80929630 */ .word	0x3E4CCCCD
glabel D_80929634
/* 002077 0x80929634 */ .word	0x3D75C28F
glabel D_80929638
/* 002078 0x80929638 */ .word	0x3DB851EC
glabel D_8092963C
/* 002079 0x8092963C */ .word	0x3DA3D70A
