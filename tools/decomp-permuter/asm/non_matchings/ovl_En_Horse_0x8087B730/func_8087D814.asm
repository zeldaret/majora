glabel func_8087D814
/* 002105 0x8087D814 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 002106 0x8087D818 AFB00018 */ sw	$s0, 0X18($sp)
/* 002107 0x8087D81C 44800000 */ mtc1	$zero, $f0
/* 002108 0x8087D820 00808025 */ move	$s0, $a0
/* 002109 0x8087D824 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002110 0x8087D828 8E0E0148 */ lw	$t6, 0X148($s0)
/* 002111 0x8087D82C E6000070 */ swc1	$f0, 0X70($s0)
/* 002112 0x8087D830 24010001 */ li	$at, 0X1
/* 002113 0x8087D834 25CFFFFF */ addiu	$t7, $t6, -0X1
/* 002114 0x8087D838 05E1004E */ bgez	$t7, .L8087D974
/* 002115 0x8087D83C AE0F0148 */ sw	$t7, 0X148($s0)
/* 002116 0x8087D840 9219028A */ lbu	$t9, 0X28A($s0)
/* 002117 0x8087D844 920902D6 */ lbu	$t1, 0X2D6($s0)
/* 002118 0x8087D848 920B0322 */ lbu	$t3, 0X322($s0)
/* 002119 0x8087D84C 8E0D0208 */ lw	$t5, 0X208($s0)
/* 002120 0x8087D850 37280001 */ ori	$t0, $t9, 0X1
/* 002121 0x8087D854 352A0001 */ ori	$t2, $t1, 0X1
/* 002122 0x8087D858 356C0001 */ ori	$t4, $t3, 0X1
/* 002123 0x8087D85C A208028A */ sb	$t0, 0X28A($s0)
/* 002124 0x8087D860 A20A02D6 */ sb	$t2, 0X2D6($s0)
/* 002125 0x8087D864 15A1002D */ bne	$t5, $at, .L8087D91C
/* 002126 0x8087D868 A20C0322 */ sb	$t4, 0X322($s0)
/* 002127 0x8087D86C 8E0E01E8 */ lw	$t6, 0X1E8($s0)
/* 002128 0x8087D870 8602001C */ lh	$v0, 0X1C($s0)
/* 002129 0x8087D874 2401FF7F */ li	$at, -0X81
/* 002130 0x8087D878 01C17824 */ and	$t7, $t6, $at
/* 002131 0x8087D87C 24010006 */ li	$at, 0X6
/* 002132 0x8087D880 14410005 */ bne	$v0, $at, .L8087D898
/* 002133 0x8087D884 AE0F01E8 */ sw	$t7, 0X1E8($s0)
/* 002134 0x8087D888 0C21F77B */ jal	func_8087DDEC
/* 002135 0x8087D88C 02002025 */ move	$a0, $s0
/* 002136 0x8087D890 1000001E */ b	.L8087D90C
/* 002137 0x8087D894 8609001C */ lh	$t1, 0X1C($s0)
.L8087D898:
/* 002138 0x8087D898 2401000B */ li	$at, 0XB
/* 002139 0x8087D89C 14410010 */ bne	$v0, $at, .L8087D8E0
/* 002140 0x8087D8A0 24180007 */ li	$t8, 0X7
/* 002141 0x8087D8A4 A618001C */ sh	$t8, 0X1C($s0)
/* 002142 0x8087D8A8 90B91F2C */ lbu	$t9, 0X1F2C($a1)
/* 002143 0x8087D8AC 3C014100 */ lui	$at, 0x4100
/* 002144 0x8087D8B0 53200006 */ beqzl	$t9, .L8087D8CC
/* 002145 0x8087D8B4 44812000 */ mtc1	$at, $f4
/* 002146 0x8087D8B8 0C21F78A */ jal	func_8087DE28
/* 002147 0x8087D8BC 02002025 */ move	$a0, $s0
/* 002148 0x8087D8C0 10000012 */ b	.L8087D90C
/* 002149 0x8087D8C4 8609001C */ lh	$t1, 0X1C($s0)
/* 002150 0x8087D8C8 44812000 */ mtc1	$at, $f4
.L8087D8CC:
/* 002151 0x8087D8CC 02002025 */ move	$a0, $s0
/* 002152 0x8087D8D0 0C21FADE */ jal	func_8087EB78
/* 002153 0x8087D8D4 E6040070 */ swc1	$f4, 0X70($s0)
/* 002154 0x8087D8D8 1000000C */ b	.L8087D90C
/* 002155 0x8087D8DC 8609001C */ lh	$t1, 0X1C($s0)
.L8087D8E0:
/* 002156 0x8087D8E0 8E080254 */ lw	$t0, 0X254($s0)
/* 002157 0x8087D8E4 24010002 */ li	$at, 0X2
/* 002158 0x8087D8E8 15010005 */ bne	$t0, $at, .L8087D900
/* 002159 0x8087D8EC 00000000 */ nop
/* 002160 0x8087D8F0 0C21F78A */ jal	func_8087DE28
/* 002161 0x8087D8F4 02002025 */ move	$a0, $s0
/* 002162 0x8087D8F8 10000004 */ b	.L8087D90C
/* 002163 0x8087D8FC 8609001C */ lh	$t1, 0X1C($s0)
.L8087D900:
/* 002164 0x8087D900 0C21F77B */ jal	func_8087DDEC
/* 002165 0x8087D904 02002025 */ move	$a0, $s0
/* 002166 0x8087D908 8609001C */ lh	$t1, 0X1C($s0)
.L8087D90C:
/* 002167 0x8087D90C 5120001A */ beqzl	$t1, .L8087D978
/* 002168 0x8087D910 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002169 0x8087D914 10000017 */ b	.L8087D974
/* 002170 0x8087D918 A600001C */ sh	$zero, 0X1C($s0)
.L8087D91C:
/* 002171 0x8087D91C 8E020254 */ lw	$v0, 0X254($s0)
/* 002172 0x8087D920 24010007 */ li	$at, 0X7
/* 002173 0x8087D924 02002025 */ move	$a0, $s0
/* 002174 0x8087D928 54410007 */ bnel	$v0, $at, .L8087D948
/* 002175 0x8087D92C 24010008 */ li	$at, 0X8
/* 002176 0x8087D930 44060000 */ mfc1	$a2, $f0
/* 002177 0x8087D934 0C220129 */ jal	func_808804A4
/* 002178 0x8087D938 00002825 */ move	$a1, $zero
/* 002179 0x8087D93C 1000000E */ b	.L8087D978
/* 002180 0x8087D940 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002181 0x8087D944 24010008 */ li	$at, 0X8
.L8087D948:
/* 002182 0x8087D948 14410007 */ bne	$v0, $at, .L8087D968
/* 002183 0x8087D94C 02002025 */ move	$a0, $s0
/* 002184 0x8087D950 44060000 */ mfc1	$a2, $f0
/* 002185 0x8087D954 02002025 */ move	$a0, $s0
/* 002186 0x8087D958 0C220129 */ jal	func_808804A4
/* 002187 0x8087D95C 00002825 */ move	$a1, $zero
/* 002188 0x8087D960 10000005 */ b	.L8087D978
/* 002189 0x8087D964 8FBF001C */ lw	$ra, 0X1C($sp)
.L8087D968:
/* 002190 0x8087D968 44060000 */ mfc1	$a2, $f0
/* 002191 0x8087D96C 0C220129 */ jal	func_808804A4
/* 002192 0x8087D970 00002825 */ move	$a1, $zero
.L8087D974:
/* 002193 0x8087D974 8FBF001C */ lw	$ra, 0X1C($sp)
.L8087D978:
/* 002194 0x8087D978 8FB00018 */ lw	$s0, 0X18($sp)
/* 002195 0x8087D97C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 002196 0x8087D980 03E00008 */ jr	$ra
/* 002197 0x8087D984 00000000 */ nop

