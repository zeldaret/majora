glabel EnRd_Draw
/* 003118 0x808D6ED8 27BDFF98 */ addiu	$sp, $sp, -0X68
/* 003119 0x808D6EDC AFB20030 */ sw	$s2, 0X30($sp)
/* 003120 0x808D6EE0 AFB00028 */ sw	$s0, 0X28($sp)
/* 003121 0x808D6EE4 00808025 */ move	$s0, $a0
/* 003122 0x808D6EE8 00A09025 */ move	$s2, $a1
/* 003123 0x808D6EEC AFBF0034 */ sw	$ra, 0X34($sp)
/* 003124 0x808D6EF0 AFB1002C */ sw	$s1, 0X2C($sp)
/* 003125 0x808D6EF4 8E180024 */ lw	$t8, 0X24($s0)
/* 003126 0x808D6EF8 27AE0054 */ addiu	$t6, $sp, 0X54
/* 003127 0x808D6EFC ADD80000 */ sw	$t8, 0X0($t6)
/* 003128 0x808D6F00 8E0F0028 */ lw	$t7, 0X28($s0)
/* 003129 0x808D6F04 ADCF0004 */ sw	$t7, 0X4($t6)
/* 003130 0x808D6F08 8E18002C */ lw	$t8, 0X2C($s0)
/* 003131 0x808D6F0C ADD80008 */ sw	$t8, 0X8($t6)
/* 003132 0x808D6F10 861903DE */ lh	$t9, 0X3DE($s0)
/* 003133 0x808D6F14 8E510000 */ lw	$s1, 0X0($s2)
/* 003134 0x808D6F18 240100FF */ li	$at, 0XFF
/* 003135 0x808D6F1C 1721002B */ bne	$t9, $at, .L808D6FCC
/* 003136 0x808D6F20 AE000290 */ sw	$zero, 0X290($s0)
/* 003137 0x808D6F24 0C04B0A3 */ jal	func_8012C28C
/* 003138 0x808D6F28 8E440000 */ lw	$a0, 0X0($s2)
/* 003139 0x808D6F2C 8E2302B0 */ lw	$v1, 0X2B0($s1)
/* 003140 0x808D6F30 3C09FB00 */ lui	$t1, 0xFB00
/* 003141 0x808D6F34 3C0DDB06 */ lui	$t5, 0xDB06
/* 003142 0x808D6F38 24680008 */ addiu	$t0, $v1, 0X8
/* 003143 0x808D6F3C AE2802B0 */ sw	$t0, 0X2B0($s1)
/* 003144 0x808D6F40 AC690000 */ sw	$t1, 0X0($v1)
/* 003145 0x808D6F44 860A03DE */ lh	$t2, 0X3DE($s0)
/* 003146 0x808D6F48 35AD0020 */ ori	$t5, $t5, 0X20
/* 003147 0x808D6F4C 3C0F808D */ lui	$t7, %hi(func_808D6DA0)
/* 003148 0x808D6F50 314B00FF */ andi	$t3, $t2, 0XFF
/* 003149 0x808D6F54 AC6B0004 */ sw	$t3, 0X4($v1)
/* 003150 0x808D6F58 8E2302B0 */ lw	$v1, 0X2B0($s1)
/* 003151 0x808D6F5C 3C0E801B */ lui	$t6, %hi(D_801AEFA0)
/* 003152 0x808D6F60 25CEEFA0 */ addiu	$t6, $t6, %lo(D_801AEFA0)
/* 003153 0x808D6F64 246C0008 */ addiu	$t4, $v1, 0X8
/* 003154 0x808D6F68 AE2C02B0 */ sw	$t4, 0X2B0($s1)
/* 003155 0x808D6F6C AC6E0004 */ sw	$t6, 0X4($v1)
/* 003156 0x808D6F70 AC6D0000 */ sw	$t5, 0X0($v1)
/* 003157 0x808D6F74 8E050148 */ lw	$a1, 0X148($s0)
/* 003158 0x808D6F78 8E060164 */ lw	$a2, 0X164($s0)
/* 003159 0x808D6F7C 92070146 */ lbu	$a3, 0X146($s0)
/* 003160 0x808D6F80 3C18808D */ lui	$t8, %hi(func_808D6DFC)
/* 003161 0x808D6F84 27186DFC */ addiu	$t8, $t8, %lo(func_808D6DFC)
/* 003162 0x808D6F88 25EF6DA0 */ addiu	$t7, $t7, %lo(func_808D6DA0)
/* 003163 0x808D6F8C AFAF0010 */ sw	$t7, 0X10($sp)
/* 003164 0x808D6F90 AFB80014 */ sw	$t8, 0X14($sp)
/* 003165 0x808D6F94 AFB00018 */ sw	$s0, 0X18($sp)
/* 003166 0x808D6F98 8E3902B0 */ lw	$t9, 0X2B0($s1)
/* 003167 0x808D6F9C 02402025 */ move	$a0, $s2
/* 003168 0x808D6FA0 0C04D36F */ jal	SkelAnime_DrawSV2
/* 003169 0x808D6FA4 AFB9001C */ sw	$t9, 0X1C($sp)
/* 003170 0x808D6FA8 3C05808D */ lui	$a1, %hi(D_808D7138)
/* 003171 0x808D6FAC AE2202B0 */ sw	$v0, 0X2B0($s1)
/* 003172 0x808D6FB0 24A57138 */ addiu	$a1, $a1, %lo(D_808D7138)
/* 003173 0x808D6FB4 27A40054 */ addiu	$a0, $sp, 0X54
/* 003174 0x808D6FB8 240600FF */ li	$a2, 0XFF
/* 003175 0x808D6FBC 0C02F188 */ jal	func_800BC620
/* 003176 0x808D6FC0 02403825 */ move	$a3, $s2
/* 003177 0x808D6FC4 10000028 */ b	.L808D7068
/* 003178 0x808D6FC8 861903E6 */ lh	$t9, 0X3E6($s0)
.L808D6FCC:
/* 003179 0x808D6FCC 0C04B0B7 */ jal	func_8012C2DC
/* 003180 0x808D6FD0 8E440000 */ lw	$a0, 0X0($s2)
/* 003181 0x808D6FD4 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 003182 0x808D6FD8 3C09FB00 */ lui	$t1, 0xFB00
/* 003183 0x808D6FDC 3C0DDB06 */ lui	$t5, 0xDB06
/* 003184 0x808D6FE0 24680008 */ addiu	$t0, $v1, 0X8
/* 003185 0x808D6FE4 AE2802C0 */ sw	$t0, 0X2C0($s1)
/* 003186 0x808D6FE8 AC690000 */ sw	$t1, 0X0($v1)
/* 003187 0x808D6FEC 860A03DE */ lh	$t2, 0X3DE($s0)
/* 003188 0x808D6FF0 35AD0020 */ ori	$t5, $t5, 0X20
/* 003189 0x808D6FF4 3C0F808D */ lui	$t7, %hi(func_808D6DA0)
/* 003190 0x808D6FF8 314B00FF */ andi	$t3, $t2, 0XFF
/* 003191 0x808D6FFC AC6B0004 */ sw	$t3, 0X4($v1)
/* 003192 0x808D7000 8E2302C0 */ lw	$v1, 0X2C0($s1)
/* 003193 0x808D7004 3C0E801B */ lui	$t6, %hi(D_801AEF88)
/* 003194 0x808D7008 25CEEF88 */ addiu	$t6, $t6, %lo(D_801AEF88)
/* 003195 0x808D700C 246C0008 */ addiu	$t4, $v1, 0X8
/* 003196 0x808D7010 AE2C02C0 */ sw	$t4, 0X2C0($s1)
/* 003197 0x808D7014 AC6E0004 */ sw	$t6, 0X4($v1)
/* 003198 0x808D7018 AC6D0000 */ sw	$t5, 0X0($v1)
/* 003199 0x808D701C 8E050148 */ lw	$a1, 0X148($s0)
/* 003200 0x808D7020 8E060164 */ lw	$a2, 0X164($s0)
/* 003201 0x808D7024 92070146 */ lbu	$a3, 0X146($s0)
/* 003202 0x808D7028 25EF6DA0 */ addiu	$t7, $t7, %lo(func_808D6DA0)
/* 003203 0x808D702C AFAF0010 */ sw	$t7, 0X10($sp)
/* 003204 0x808D7030 AFB00018 */ sw	$s0, 0X18($sp)
/* 003205 0x808D7034 AFA00014 */ sw	$zero, 0X14($sp)
/* 003206 0x808D7038 8E3802C0 */ lw	$t8, 0X2C0($s1)
/* 003207 0x808D703C 02402025 */ move	$a0, $s2
/* 003208 0x808D7040 0C04D36F */ jal	SkelAnime_DrawSV2
/* 003209 0x808D7044 AFB8001C */ sw	$t8, 0X1C($sp)
/* 003210 0x808D7048 AE2202C0 */ sw	$v0, 0X2C0($s1)
/* 003211 0x808D704C 3C05808D */ lui	$a1, %hi(D_808D7138)
/* 003212 0x808D7050 24A57138 */ addiu	$a1, $a1, %lo(D_808D7138)
/* 003213 0x808D7054 920603DF */ lbu	$a2, 0X3DF($s0)
/* 003214 0x808D7058 27A40054 */ addiu	$a0, $sp, 0X54
/* 003215 0x808D705C 0C02F188 */ jal	func_800BC620
/* 003216 0x808D7060 02403825 */ move	$a3, $s2
/* 003217 0x808D7064 861903E6 */ lh	$t9, 0X3E6($s0)
.L808D7068:
/* 003218 0x808D7068 3C013F00 */ lui	$at, 0x3F00
/* 003219 0x808D706C 5B20000F */ blezl	$t9, .L808D70AC
/* 003220 0x808D7070 8FBF0034 */ lw	$ra, 0X34($sp)
/* 003221 0x808D7074 C6040298 */ lwc1	$f4, 0X298($s0)
/* 003222 0x808D7078 44813000 */ mtc1	$at, $f6
/* 003223 0x808D707C 02402025 */ move	$a0, $s2
/* 003224 0x808D7080 E7A40010 */ swc1	$f4, 0X10($sp)
/* 003225 0x808D7084 E7A60014 */ swc1	$f6, 0X14($sp)
/* 003226 0x808D7088 C6080294 */ lwc1	$f8, 0X294($s0)
/* 003227 0x808D708C 02002825 */ move	$a1, $s0
/* 003228 0x808D7090 260601DC */ addiu	$a2, $s0, 0X1DC
/* 003229 0x808D7094 E7A80018 */ swc1	$f8, 0X18($sp)
/* 003230 0x808D7098 920803E8 */ lbu	$t0, 0X3E8($s0)
/* 003231 0x808D709C 2407000F */ li	$a3, 0XF
/* 003232 0x808D70A0 0C02F9A0 */ jal	func_800BE680
/* 003233 0x808D70A4 AFA8001C */ sw	$t0, 0X1C($sp)
/* 003234 0x808D70A8 8FBF0034 */ lw	$ra, 0X34($sp)
.L808D70AC:
/* 003235 0x808D70AC 8FB00028 */ lw	$s0, 0X28($sp)
/* 003236 0x808D70B0 8FB1002C */ lw	$s1, 0X2C($sp)
/* 003237 0x808D70B4 8FB20030 */ lw	$s2, 0X30($sp)
/* 003238 0x808D70B8 03E00008 */ jr	$ra
/* 003239 0x808D70BC 27BD0068 */ addiu	$sp, $sp, 0X68
