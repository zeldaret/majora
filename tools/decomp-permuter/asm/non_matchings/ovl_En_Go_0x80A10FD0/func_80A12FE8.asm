glabel func_80A12FE8
/* 002054 0x80A12FE8 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 002055 0x80A12FEC AFB00018 */ sw	$s0, 0X18($sp)
/* 002056 0x80A12FF0 00808025 */ move	$s0, $a0
/* 002057 0x80A12FF4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 002058 0x80A12FF8 AFA50054 */ sw	$a1, 0X54($sp)
/* 002059 0x80A12FFC 8E05038C */ lw	$a1, 0X38C($s0)
/* 002060 0x80A13000 27A40040 */ addiu	$a0, $sp, 0X40
/* 002061 0x80A13004 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002062 0x80A13008 24A50024 */ addiu	$a1, $a1, 0X24
/* 002063 0x80A1300C 27A40034 */ addiu	$a0, $sp, 0X34
/* 002064 0x80A13010 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002065 0x80A13014 26050024 */ addiu	$a1, $s0, 0X24
/* 002066 0x80A13018 27A40034 */ addiu	$a0, $sp, 0X34
/* 002067 0x80A1301C 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 002068 0x80A13020 27A50040 */ addiu	$a1, $sp, 0X40
/* 002069 0x80A13024 A7A20032 */ sh	$v0, 0X32($sp)
/* 002070 0x80A13028 860E03B6 */ lh	$t6, 0X3B6($s0)
/* 002071 0x80A1302C 861800BE */ lh	$t8, 0XBE($s0)
/* 002072 0x80A13030 260403B2 */ addiu	$a0, $s0, 0X3B2
/* 002073 0x80A13034 004E7823 */ subu	$t7, $v0, $t6
/* 002074 0x80A13038 01F82823 */ subu	$a1, $t7, $t8
/* 002075 0x80A1303C 00052C00 */ sll	$a1, $a1, 16
/* 002076 0x80A13040 00052C03 */ sra	$a1, $a1, 16
/* 002077 0x80A13044 24060004 */ li	$a2, 0X4
/* 002078 0x80A13048 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 002079 0x80A1304C 24072AA8 */ li	$a3, 0X2AA8
/* 002080 0x80A13050 860303B2 */ lh	$v1, 0X3B2($s0)
/* 002081 0x80A13054 260403B6 */ addiu	$a0, $s0, 0X3B6
/* 002082 0x80A13058 24060004 */ li	$a2, 0X4
/* 002083 0x80A1305C 2861E002 */ slti	$at, $v1, -0X1FFE
/* 002084 0x80A13060 10200003 */ beqz	$at, .L80A13070
/* 002085 0x80A13064 2419E002 */ li	$t9, -0X1FFE
/* 002086 0x80A13068 10000007 */ b	.L80A13088
/* 002087 0x80A1306C A61903B2 */ sh	$t9, 0X3B2($s0)
.L80A13070:
/* 002088 0x80A13070 28611FFF */ slti	$at, $v1, 0X1FFF
/* 002089 0x80A13074 14200003 */ bnez	$at, .L80A13084
/* 002090 0x80A13078 00601025 */ move	$v0, $v1
/* 002091 0x80A1307C 10000001 */ b	.L80A13084
/* 002092 0x80A13080 24021FFE */ li	$v0, 0X1FFE
.L80A13084:
/* 002093 0x80A13084 A60203B2 */ sh	$v0, 0X3B2($s0)
.L80A13088:
/* 002094 0x80A13088 87A80032 */ lh	$t0, 0X32($sp)
/* 002095 0x80A1308C 860903B2 */ lh	$t1, 0X3B2($s0)
/* 002096 0x80A13090 860B00BE */ lh	$t3, 0XBE($s0)
/* 002097 0x80A13094 24072AA8 */ li	$a3, 0X2AA8
/* 002098 0x80A13098 01095023 */ subu	$t2, $t0, $t1
/* 002099 0x80A1309C 014B2823 */ subu	$a1, $t2, $t3
/* 002100 0x80A130A0 00052C00 */ sll	$a1, $a1, 16
/* 002101 0x80A130A4 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 002102 0x80A130A8 00052C03 */ sra	$a1, $a1, 16
/* 002103 0x80A130AC 860303B6 */ lh	$v1, 0X3B6($s0)
/* 002104 0x80A130B0 27A40034 */ addiu	$a0, $sp, 0X34
/* 002105 0x80A130B4 2861E390 */ slti	$at, $v1, -0X1C70
/* 002106 0x80A130B8 10200003 */ beqz	$at, .L80A130C8
/* 002107 0x80A130BC 240CE390 */ li	$t4, -0X1C70
/* 002108 0x80A130C0 10000007 */ b	.L80A130E0
/* 002109 0x80A130C4 A60C03B6 */ sh	$t4, 0X3B6($s0)
.L80A130C8:
/* 002110 0x80A130C8 28611C71 */ slti	$at, $v1, 0X1C71
/* 002111 0x80A130CC 14200003 */ bnez	$at, .L80A130DC
/* 002112 0x80A130D0 00601025 */ move	$v0, $v1
/* 002113 0x80A130D4 10000001 */ b	.L80A130DC
/* 002114 0x80A130D8 24021C70 */ li	$v0, 0X1C70
.L80A130DC:
/* 002115 0x80A130DC A60203B6 */ sh	$v0, 0X3B6($s0)
.L80A130E0:
/* 002116 0x80A130E0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002117 0x80A130E4 2605003C */ addiu	$a1, $s0, 0X3C
/* 002118 0x80A130E8 8E02038C */ lw	$v0, 0X38C($s0)
/* 002119 0x80A130EC 3C014040 */ lui	$at, 0x4040
/* 002120 0x80A130F0 27A40040 */ addiu	$a0, $sp, 0X40
/* 002121 0x80A130F4 844D0000 */ lh	$t5, 0X0($v0)
/* 002122 0x80A130F8 15A00007 */ bnez	$t5, .L80A13118
/* 002123 0x80A130FC 00000000 */ nop
/* 002124 0x80A13100 C4440C44 */ lwc1	$f4, 0XC44($v0)
/* 002125 0x80A13104 44813000 */ mtc1	$at, $f6
/* 002126 0x80A13108 00000000 */ nop
/* 002127 0x80A1310C 46062200 */ add.s	$f8, $f4, $f6
/* 002128 0x80A13110 10000003 */ b	.L80A13120
/* 002129 0x80A13114 E7A80044 */ swc1	$f8, 0X44($sp)
.L80A13118:
/* 002130 0x80A13118 0C03FD43 */ jal	Math_Vec3f_Copy
/* 002131 0x80A1311C 2445003C */ addiu	$a1, $v0, 0X3C
.L80A13120:
/* 002132 0x80A13120 27A40034 */ addiu	$a0, $sp, 0X34
/* 002133 0x80A13124 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 002134 0x80A13128 27A50040 */ addiu	$a1, $sp, 0X40
/* 002135 0x80A1312C 860E03B4 */ lh	$t6, 0X3B4($s0)
/* 002136 0x80A13130 260403B0 */ addiu	$a0, $s0, 0X3B0
/* 002137 0x80A13134 24060004 */ li	$a2, 0X4
/* 002138 0x80A13138 004E2823 */ subu	$a1, $v0, $t6
/* 002139 0x80A1313C 00052C00 */ sll	$a1, $a1, 16
/* 002140 0x80A13140 00052C03 */ sra	$a1, $a1, 16
/* 002141 0x80A13144 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 002142 0x80A13148 24072AA8 */ li	$a3, 0X2AA8
/* 002143 0x80A1314C 860303B0 */ lh	$v1, 0X3B0($s0)
/* 002144 0x80A13150 240FEAAC */ li	$t7, -0X1554
/* 002145 0x80A13154 27A40034 */ addiu	$a0, $sp, 0X34
/* 002146 0x80A13158 2861EAAC */ slti	$at, $v1, -0X1554
/* 002147 0x80A1315C 50200004 */ beqzl	$at, .L80A13170
/* 002148 0x80A13160 28611555 */ slti	$at, $v1, 0X1555
/* 002149 0x80A13164 10000007 */ b	.L80A13184
/* 002150 0x80A13168 A60F03B0 */ sh	$t7, 0X3B0($s0)
/* 002151 0x80A1316C 28611555 */ slti	$at, $v1, 0X1555
.L80A13170:
/* 002152 0x80A13170 14200003 */ bnez	$at, .L80A13180
/* 002153 0x80A13174 00601025 */ move	$v0, $v1
/* 002154 0x80A13178 10000001 */ b	.L80A13180
/* 002155 0x80A1317C 24021554 */ li	$v0, 0X1554
.L80A13180:
/* 002156 0x80A13180 A60203B0 */ sh	$v0, 0X3B0($s0)
.L80A13184:
/* 002157 0x80A13184 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 002158 0x80A13188 27A50040 */ addiu	$a1, $sp, 0X40
/* 002159 0x80A1318C 861803B0 */ lh	$t8, 0X3B0($s0)
/* 002160 0x80A13190 260403B4 */ addiu	$a0, $s0, 0X3B4
/* 002161 0x80A13194 24060004 */ li	$a2, 0X4
/* 002162 0x80A13198 00582823 */ subu	$a1, $v0, $t8
/* 002163 0x80A1319C 00052C00 */ sll	$a1, $a1, 16
/* 002164 0x80A131A0 00052C03 */ sra	$a1, $a1, 16
/* 002165 0x80A131A4 0C03FFF6 */ jal	Math_SmoothScaleMaxS
/* 002166 0x80A131A8 24072AA8 */ li	$a3, 0X2AA8
/* 002167 0x80A131AC 860303B4 */ lh	$v1, 0X3B4($s0)
/* 002168 0x80A131B0 2419F1C8 */ li	$t9, -0XE38
/* 002169 0x80A131B4 2861F1C8 */ slti	$at, $v1, -0XE38
/* 002170 0x80A131B8 50200004 */ beqzl	$at, .L80A131CC
/* 002171 0x80A131BC 28610E39 */ slti	$at, $v1, 0XE39
/* 002172 0x80A131C0 10000007 */ b	.L80A131E0
/* 002173 0x80A131C4 A61903B4 */ sh	$t9, 0X3B4($s0)
/* 002174 0x80A131C8 28610E39 */ slti	$at, $v1, 0XE39
.L80A131CC:
/* 002175 0x80A131CC 14200003 */ bnez	$at, .L80A131DC
/* 002176 0x80A131D0 00601025 */ move	$v0, $v1
/* 002177 0x80A131D4 10000001 */ b	.L80A131DC
/* 002178 0x80A131D8 24020E38 */ li	$v0, 0XE38
.L80A131DC:
/* 002179 0x80A131DC A60203B4 */ sh	$v0, 0X3B4($s0)
.L80A131E0:
/* 002180 0x80A131E0 00001025 */ move	$v0, $zero
/* 002181 0x80A131E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 002182 0x80A131E8 8FB00018 */ lw	$s0, 0X18($sp)
/* 002183 0x80A131EC 27BD0050 */ addiu	$sp, $sp, 0X50
/* 002184 0x80A131F0 03E00008 */ jr	$ra
/* 002185 0x80A131F4 00000000 */ nop

