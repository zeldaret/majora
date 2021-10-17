glabel func_8096EE64
/* 000137 0x8096EE64 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000138 0x8096EE68 AFB00018 */ sw	$s0, 0X18($sp)
/* 000139 0x8096EE6C 00808025 */ move	$s0, $a0
/* 000140 0x8096EE70 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000141 0x8096EE74 AFA50024 */ sw	$a1, 0X24($sp)
/* 000142 0x8096EE78 02002025 */ move	$a0, $s0
/* 000143 0x8096EE7C 0C02E19F */ jal	func_800B867C
/* 000144 0x8096EE80 8FA50024 */ lw	$a1, 0X24($sp)
/* 000145 0x8096EE84 50400022 */ beqzl	$v0, .L8096EF10
/* 000146 0x8096EE88 82180038 */ lb	$t8, 0X38($s0)
/* 000147 0x8096EE8C 820E0038 */ lb	$t6, 0X38($s0)
/* 000148 0x8096EE90 2401FFFF */ li	$at, -0X1
/* 000149 0x8096EE94 51C10009 */ beql	$t6, $at, .L8096EEBC
/* 000150 0x8096EE98 860F0018 */ lh	$t7, 0X18($s0)
/* 000151 0x8096EE9C 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000152 0x8096EEA0 00000000 */ nop
/* 000153 0x8096EEA4 82040038 */ lb	$a0, 0X38($s0)
/* 000154 0x8096EEA8 54440004 */ bnel	$v0, $a0, .L8096EEBC
/* 000155 0x8096EEAC 860F0018 */ lh	$t7, 0X18($s0)
/* 000156 0x8096EEB0 0C03C7EF */ jal	ActorCutscene_Stop
/* 000157 0x8096EEB4 00000000 */ nop
/* 000158 0x8096EEB8 860F0018 */ lh	$t7, 0X18($s0)
.L8096EEBC:
/* 000159 0x8096EEBC 24010001 */ li	$at, 0X1
/* 000160 0x8096EEC0 02002025 */ move	$a0, $s0
/* 000161 0x8096EEC4 11E1000D */ beq	$t7, $at, .L8096EEFC
/* 000162 0x8096EEC8 3C058097 */ lui	$a1, %hi(func_8096EF98)
/* 000163 0x8096EECC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000164 0x8096EED0 02002025 */ move	$a0, $s0
/* 000165 0x8096EED4 8605001C */ lh	$a1, 0X1C($s0)
/* 000166 0x8096EED8 2401007F */ li	$at, 0X7F
/* 000167 0x8096EEDC 00052A03 */ sra	$a1, $a1, 8
/* 000168 0x8096EEE0 30A5007F */ andi	$a1, $a1, 0X7F
/* 000169 0x8096EEE4 50A10028 */ beql	$a1, $at, .L8096EF88
/* 000170 0x8096EEE8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000171 0x8096EEEC 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000172 0x8096EEF0 8FA40024 */ lw	$a0, 0X24($sp)
/* 000173 0x8096EEF4 10000024 */ b	.L8096EF88
/* 000174 0x8096EEF8 8FBF001C */ lw	$ra, 0X1C($sp)
.L8096EEFC:
/* 000175 0x8096EEFC 0C25BB10 */ jal	func_8096EC40
/* 000176 0x8096EF00 24A5EF98 */ addiu	$a1, $a1, %lo(func_8096EF98)
/* 000177 0x8096EF04 10000020 */ b	.L8096EF88
/* 000178 0x8096EF08 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000179 0x8096EF0C 82180038 */ lb	$t8, 0X38($s0)
.L8096EF10:
/* 000180 0x8096EF10 2401FFFF */ li	$at, -0X1
/* 000181 0x8096EF14 5301001C */ beql	$t8, $at, .L8096EF88
/* 000182 0x8096EF18 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000183 0x8096EF1C 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000184 0x8096EF20 00000000 */ nop
/* 000185 0x8096EF24 82190038 */ lb	$t9, 0X38($s0)
/* 000186 0x8096EF28 50590017 */ beql	$v0, $t9, .L8096EF88
/* 000187 0x8096EF2C 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000188 0x8096EF30 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 000189 0x8096EF34 00000000 */ nop
/* 000190 0x8096EF38 2401007C */ li	$at, 0X7C
/* 000191 0x8096EF3C 14410007 */ bne	$v0, $at, .L8096EF5C
/* 000192 0x8096EF40 00000000 */ nop
/* 000193 0x8096EF44 0C03C7EF */ jal	ActorCutscene_Stop
/* 000194 0x8096EF48 2404007C */ li	$a0, 0X7C
/* 000195 0x8096EF4C 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000196 0x8096EF50 82040038 */ lb	$a0, 0X38($s0)
/* 000197 0x8096EF54 1000000C */ b	.L8096EF88
/* 000198 0x8096EF58 8FBF001C */ lw	$ra, 0X1C($sp)
.L8096EF5C:
/* 000199 0x8096EF5C 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000200 0x8096EF60 82040038 */ lb	$a0, 0X38($s0)
/* 000201 0x8096EF64 10400005 */ beqz	$v0, .L8096EF7C
/* 000202 0x8096EF68 02002825 */ move	$a1, $s0
/* 000203 0x8096EF6C 0C03C761 */ jal	ActorCutscene_Start
/* 000204 0x8096EF70 82040038 */ lb	$a0, 0X38($s0)
/* 000205 0x8096EF74 10000004 */ b	.L8096EF88
/* 000206 0x8096EF78 8FBF001C */ lw	$ra, 0X1C($sp)
.L8096EF7C:
/* 000207 0x8096EF7C 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000208 0x8096EF80 82040038 */ lb	$a0, 0X38($s0)
/* 000209 0x8096EF84 8FBF001C */ lw	$ra, 0X1C($sp)
.L8096EF88:
/* 000210 0x8096EF88 8FB00018 */ lw	$s0, 0X18($sp)
/* 000211 0x8096EF8C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000212 0x8096EF90 03E00008 */ jr	$ra
/* 000213 0x8096EF94 00000000 */ nop

