glabel Effect_Init
/* 010100 0x800AF890 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 010101 0x800AF894 AFBF001C */ sw	$ra, 0X1C($sp)
/* 010102 0x800AF898 AFB10018 */ sw	$s1, 0X18($sp)
/* 010103 0x800AF89C AFB00014 */ sw	$s0, 0X14($sp)
/* 010104 0x800AF8A0 AFA40020 */ sw	$a0, 0X20($sp)
/* 010105 0x800AF8A4 3C10801E */ lui	$s0, %hi(sEffTable + 0x4)
/* 010106 0x800AF8A8 3C11801E */ lui	$s1, 0x801E
/* 010107 0x800AF8AC 26314E0C */ addiu	$s1, $s1, 0X4E0C
/* 010108 0x800AF8B0 26103FB4 */ addiu	$s0, $s0, %lo(sEffTable + 0x4)
.L800AF8B4:
/* 010109 0x800AF8B4 0C02BE1F */ jal	Effect_InitCommon
/* 010110 0x800AF8B8 02002025 */ move	$a0, $s0
/* 010111 0x800AF8BC 261004C8 */ addiu	$s0, $s0, 0X4C8
/* 010112 0x800AF8C0 0211082B */ sltu	$at, $s0, $s1
/* 010113 0x800AF8C4 1420FFFB */ bnez	$at, .L800AF8B4
/* 010114 0x800AF8C8 00000000 */ nop
/* 010115 0x800AF8CC 3C10801E */ lui	$s0, 0x801E
/* 010116 0x800AF8D0 3C11801E */ lui	$s1, 0x801E
/* 010117 0x800AF8D4 2631783C */ addiu	$s1, $s1, 0X783C
/* 010118 0x800AF8D8 26104E0C */ addiu	$s0, $s0, 0X4E0C
.L800AF8DC:
/* 010119 0x800AF8DC 0C02BE1F */ jal	Effect_InitCommon
/* 010120 0x800AF8E0 02002025 */ move	$a0, $s0
/* 010121 0x800AF8E4 261001B0 */ addiu	$s0, $s0, 0X1B0
/* 010122 0x800AF8E8 0211082B */ sltu	$at, $s0, $s1
/* 010123 0x800AF8EC 1420FFFB */ bnez	$at, .L800AF8DC
/* 010124 0x800AF8F0 00000000 */ nop
/* 010125 0x800AF8F4 3C10801E */ lui	$s0, 0x801E
/* 010126 0x800AF8F8 3C11801E */ lui	$s1, %hi(D_801E531C)
/* 010127 0x800AF8FC 2631531C */ addiu	$s1, $s1, %lo(D_801E531C)
/* 010128 0x800AF900 26104E0C */ addiu	$s0, $s0, 0X4E0C
.L800AF904:
/* 010129 0x800AF904 0C02BE1F */ jal	Effect_InitCommon
/* 010130 0x800AF908 02002025 */ move	$a0, $s0
/* 010131 0x800AF90C 261001B0 */ addiu	$s0, $s0, 0X1B0
/* 010132 0x800AF910 0211082B */ sltu	$at, $s0, $s1
/* 010133 0x800AF914 1420FFFB */ bnez	$at, .L800AF904
/* 010134 0x800AF918 00000000 */ nop
/* 010135 0x800AF91C 3C10801E */ lui	$s0, 0x801E
/* 010136 0x800AF920 3C11801F */ lui	$s1, %hi(D_801ED890)
/* 010137 0x800AF924 2631D890 */ addiu	$s1, $s1, %lo(D_801ED890)
/* 010138 0x800AF928 26107DA0 */ addiu	$s0, $s0, 0X7DA0
.L800AF92C:
/* 010139 0x800AF92C 0C02BE1F */ jal	Effect_InitCommon
/* 010140 0x800AF930 02002025 */ move	$a0, $s0
/* 010141 0x800AF934 26100610 */ addiu	$s0, $s0, 0X610
/* 010142 0x800AF938 1611FFFC */ bne	$s0, $s1, .L800AF92C
/* 010143 0x800AF93C 00000000 */ nop
/* 010144 0x800AF940 8FAE0020 */ lw	$t6, 0X20($sp)
/* 010145 0x800AF944 3C01801E */ lui	$at, %hi(sEffTable)
/* 010146 0x800AF948 8FBF001C */ lw	$ra, 0X1C($sp)
/* 010147 0x800AF94C AC2E3FB0 */ sw	$t6, %lo(sEffTable)($at)
/* 010148 0x800AF950 8FB00014 */ lw	$s0, 0X14($sp)
/* 010149 0x800AF954 8FB10018 */ lw	$s1, 0X18($sp)
/* 010150 0x800AF958 03E00008 */ jr	$ra
/* 010151 0x800AF95C 27BD0020 */ addiu	$sp, $sp, 0X20

