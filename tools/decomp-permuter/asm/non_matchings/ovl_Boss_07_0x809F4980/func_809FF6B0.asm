glabel func_809FF6B0
/* 011084 0x809FF6B0 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 011085 0x809FF6B4 AFB10018 */ sw	$s1, 0X18($sp)
/* 011086 0x809FF6B8 00A08825 */ move	$s1, $a1
/* 011087 0x809FF6BC AFBF001C */ sw	$ra, 0X1C($sp)
/* 011088 0x809FF6C0 AFB00014 */ sw	$s0, 0X14($sp)
/* 011089 0x809FF6C4 AFA40038 */ sw	$a0, 0X38($sp)
/* 011090 0x809FF6C8 AFA60040 */ sw	$a2, 0X40($sp)
/* 011091 0x809FF6CC AFA70044 */ sw	$a3, 0X44($sp)
/* 011092 0x809FF6D0 24010018 */ li	$at, 0X18
/* 011093 0x809FF6D4 16210003 */ bne	$s1, $at, .L809FF6E4
/* 011094 0x809FF6D8 8FA40048 */ lw	$a0, 0X48($sp)
/* 011095 0x809FF6DC 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011096 0x809FF6E0 2484003C */ addiu	$a0, $a0, 0X3C
.L809FF6E4:
/* 011097 0x809FF6E4 3C1080A1 */ lui	$s0, %hi(D_80A0826C)
/* 011098 0x809FF6E8 02118021 */ addu	$s0, $s0, $s1
/* 011099 0x809FF6EC 8210826C */ lb	$s0, %lo(D_80A0826C)($s0)
/* 011100 0x809FF6F0 8FAE0048 */ lw	$t6, 0X48($sp)
/* 011101 0x809FF6F4 06000006 */ bltz	$s0, .L809FF710
/* 011102 0x809FF6F8 00107880 */ sll	$t7, $s0, 2
/* 011103 0x809FF6FC 01F07823 */ subu	$t7, $t7, $s0
/* 011104 0x809FF700 000F7880 */ sll	$t7, $t7, 2
/* 011105 0x809FF704 01CF2021 */ addu	$a0, $t6, $t7
/* 011106 0x809FF708 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011107 0x809FF70C 24840334 */ addiu	$a0, $a0, 0X334
.L809FF710:
/* 011108 0x809FF710 3C1080A1 */ lui	$s0, %hi(D_80A081A8)
/* 011109 0x809FF714 02118021 */ addu	$s0, $s0, $s1
/* 011110 0x809FF718 821081A8 */ lb	$s0, %lo(D_80A081A8)($s0)
/* 011111 0x809FF71C 8FB80048 */ lw	$t8, 0X48($sp)
/* 011112 0x809FF720 06020017 */ bltzl	$s0, .L809FF780
/* 011113 0x809FF724 24010008 */ li	$at, 0X8
/* 011114 0x809FF728 87190158 */ lh	$t9, 0X158($t8)
/* 011115 0x809FF72C 00104080 */ sll	$t0, $s0, 2
/* 011116 0x809FF730 01104023 */ subu	$t0, $t0, $s0
/* 011117 0x809FF734 13200007 */ beqz	$t9, .L809FF754
/* 011118 0x809FF738 00084080 */ sll	$t0, $t0, 2
/* 011119 0x809FF73C 3C0180A1 */ lui	$at, %hi(D_80A085B4)
/* 011120 0x809FF740 C42C85B4 */ lwc1	$f12, %lo(D_80A085B4)($at)
/* 011121 0x809FF744 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 011122 0x809FF748 27A50028 */ addiu	$a1, $sp, 0X28
/* 011123 0x809FF74C 10000007 */ b	.L809FF76C
/* 011124 0x809FF750 8FA50048 */ lw	$a1, 0X48($sp)
.L809FF754:
/* 011125 0x809FF754 3C0980A1 */ lui	$t1, %hi(D_80A081E8)
/* 011126 0x809FF758 252981E8 */ addiu	$t1, $t1, %lo(D_80A081E8)
/* 011127 0x809FF75C 01092021 */ addu	$a0, $t0, $t1
/* 011128 0x809FF760 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 011129 0x809FF764 27A50028 */ addiu	$a1, $sp, 0X28
/* 011130 0x809FF768 8FA50048 */ lw	$a1, 0X48($sp)
.L809FF76C:
/* 011131 0x809FF76C 02002025 */ move	$a0, $s0
/* 011132 0x809FF770 27A60028 */ addiu	$a2, $sp, 0X28
/* 011133 0x809FF774 0C27D2EC */ jal	func_809F4BB0
/* 011134 0x809FF778 24A503E8 */ addiu	$a1, $a1, 0X3E8
/* 011135 0x809FF77C 24010008 */ li	$at, 0X8
.L809FF780:
/* 011136 0x809FF780 16210003 */ bne	$s1, $at, .L809FF790
/* 011137 0x809FF784 8FA40048 */ lw	$a0, 0X48($sp)
/* 011138 0x809FF788 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011139 0x809FF78C 24841788 */ addiu	$a0, $a0, 0X1788
.L809FF790:
/* 011140 0x809FF790 24010017 */ li	$at, 0X17
/* 011141 0x809FF794 16210003 */ bne	$s1, $at, .L809FF7A4
/* 011142 0x809FF798 8FA40048 */ lw	$a0, 0X48($sp)
/* 011143 0x809FF79C 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011144 0x809FF7A0 24841794 */ addiu	$a0, $a0, 0X1794
.L809FF7A4:
/* 011145 0x809FF7A4 2401000D */ li	$at, 0XD
/* 011146 0x809FF7A8 16210003 */ bne	$s1, $at, .L809FF7B8
/* 011147 0x809FF7AC 8FA40048 */ lw	$a0, 0X48($sp)
/* 011148 0x809FF7B0 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011149 0x809FF7B4 248417AC */ addiu	$a0, $a0, 0X17AC
.L809FF7B8:
/* 011150 0x809FF7B8 24010012 */ li	$at, 0X12
/* 011151 0x809FF7BC 16210003 */ bne	$s1, $at, .L809FF7CC
/* 011152 0x809FF7C0 8FA40048 */ lw	$a0, 0X48($sp)
/* 011153 0x809FF7C4 0C0606D4 */ jal	SysMatrix_GetStateTranslation
/* 011154 0x809FF7C8 248417A0 */ addiu	$a0, $a0, 0X17A0
.L809FF7CC:
/* 011155 0x809FF7CC 3C1080A1 */ lui	$s0, %hi(D_80A081C8)
/* 011156 0x809FF7D0 02118021 */ addu	$s0, $s0, $s1
/* 011157 0x809FF7D4 821081C8 */ lb	$s0, %lo(D_80A081C8)($s0)
/* 011158 0x809FF7D8 8FAA0048 */ lw	$t2, 0X48($sp)
/* 011159 0x809FF7DC 06000007 */ bltz	$s0, .L809FF7FC
/* 011160 0x809FF7E0 00105880 */ sll	$t3, $s0, 2
/* 011161 0x809FF7E4 014B6021 */ addu	$t4, $t2, $t3
/* 011162 0x809FF7E8 C58C17B8 */ lwc1	$f12, 0X17B8($t4)
/* 011163 0x809FF7EC 24070001 */ li	$a3, 0X1
/* 011164 0x809FF7F0 44066000 */ mfc1	$a2, $f12
/* 011165 0x809FF7F4 0C0600E7 */ jal	SysMatrix_InsertScale
/* 011166 0x809FF7F8 46006386 */ mov.s	$f14, $f12
.L809FF7FC:
/* 011167 0x809FF7FC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 011168 0x809FF800 8FB00014 */ lw	$s0, 0X14($sp)
/* 011169 0x809FF804 8FB10018 */ lw	$s1, 0X18($sp)
/* 011170 0x809FF808 03E00008 */ jr	$ra
/* 011171 0x809FF80C 27BD0038 */ addiu	$sp, $sp, 0X38

