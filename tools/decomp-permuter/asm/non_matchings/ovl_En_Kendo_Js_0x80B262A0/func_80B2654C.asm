glabel func_80B2654C
/* 000171 0x80B2654C 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000172 0x80B26550 AFB00018 */ sw	$s0, 0X18($sp)
/* 000173 0x80B26554 00808025 */ move	$s0, $a0
/* 000174 0x80B26558 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000175 0x80B2655C 00A03825 */ move	$a3, $a1
/* 000176 0x80B26560 02002025 */ move	$a0, $s0
/* 000177 0x80B26564 00E02825 */ move	$a1, $a3
/* 000178 0x80B26568 0C02E134 */ jal	func_800B84D0
/* 000179 0x80B2656C AFA7003C */ sw	$a3, 0X3C($sp)
/* 000180 0x80B26570 10400070 */ beqz	$v0, .L80B26734
/* 000181 0x80B26574 8FA7003C */ lw	$a3, 0X3C($sp)
/* 000182 0x80B26578 3C04801F */ lui	$a0, %hi(gSaveContext)
/* 000183 0x80B2657C 2484F670 */ addiu	$a0, $a0, %lo(gSaveContext)
/* 000184 0x80B26580 8C820018 */ lw	$v0, 0X18($a0)
/* 000185 0x80B26584 24010005 */ li	$at, 0X5
/* 000186 0x80B26588 00004025 */ move	$t0, $zero
/* 000187 0x80B2658C 0041001A */ div	$zero, $v0, $at
/* 000188 0x80B26590 00001010 */ mfhi	$v0
/* 000189 0x80B26594 02003025 */ move	$a2, $s0
/* 000190 0x80B26598 10400003 */ beqz	$v0, .L80B265A8
/* 000191 0x80B2659C 00000000 */ nop
/* 000192 0x80B265A0 10000001 */ b	.L80B265A8
/* 000193 0x80B265A4 2448FFFF */ addiu	$t0, $v0, -0X1
.L80B265A8:
/* 000194 0x80B265A8 860E001C */ lh	$t6, 0X1C($s0)
/* 000195 0x80B265AC 24050001 */ li	$a1, 0X1
/* 000196 0x80B265B0 31CF00FF */ andi	$t7, $t6, 0XFF
/* 000197 0x80B265B4 54AF0008 */ bnel	$a1, $t7, .L80B265D8
/* 000198 0x80B265B8 90830020 */ lbu	$v1, 0X20($a0)
/* 000199 0x80B265BC 00E02025 */ move	$a0, $a3
/* 000200 0x80B265C0 0C05462C */ jal	func_801518B0
/* 000201 0x80B265C4 2405273C */ li	$a1, 0X273C
/* 000202 0x80B265C8 2418273C */ li	$t8, 0X273C
/* 000203 0x80B265CC 10000055 */ b	.L80B26724
/* 000204 0x80B265D0 A6180288 */ sh	$t8, 0X288($s0)
/* 000205 0x80B265D4 90830020 */ lbu	$v1, 0X20($a0)
.L80B265D8:
/* 000206 0x80B265D8 24010004 */ li	$at, 0X4
/* 000207 0x80B265DC 00E02025 */ move	$a0, $a3
/* 000208 0x80B265E0 1061001D */ beq	$v1, $at, .L80B26658
/* 000209 0x80B265E4 00084840 */ sll	$t1, $t0, 1
/* 000210 0x80B265E8 1065000B */ beq	$v1, $a1, .L80B26618
/* 000211 0x80B265EC 3C0B80B2 */ lui	$t3, %hi(D_80B27CE0)
/* 000212 0x80B265F0 24010002 */ li	$at, 0X2
/* 000213 0x80B265F4 1061000A */ beq	$v1, $at, .L80B26620
/* 000214 0x80B265F8 24020002 */ li	$v0, 0X2
/* 000215 0x80B265FC 24010003 */ li	$at, 0X3
/* 000216 0x80B26600 10610003 */ beq	$v1, $at, .L80B26610
/* 000217 0x80B26604 00000000 */ nop
/* 000218 0x80B26608 10000005 */ b	.L80B26620
/* 000219 0x80B2660C 00001025 */ move	$v0, $zero
.L80B26610:
/* 000220 0x80B26610 10000003 */ b	.L80B26620
/* 000221 0x80B26614 00001025 */ move	$v0, $zero
.L80B26618:
/* 000222 0x80B26618 10000001 */ b	.L80B26620
/* 000223 0x80B2661C 24020001 */ li	$v0, 0X1
.L80B26620:
/* 000224 0x80B26620 0002C880 */ sll	$t9, $v0, 2
/* 000225 0x80B26624 0322C823 */ subu	$t9, $t9, $v0
/* 000226 0x80B26628 0019C840 */ sll	$t9, $t9, 1
/* 000227 0x80B2662C 03295021 */ addu	$t2, $t9, $t1
/* 000228 0x80B26630 256B7CE0 */ addiu	$t3, $t3, %lo(D_80B27CE0)
/* 000229 0x80B26634 014B1821 */ addu	$v1, $t2, $t3
/* 000230 0x80B26638 94650000 */ lhu	$a1, 0X0($v1)
/* 000231 0x80B2663C AFA30024 */ sw	$v1, 0X24($sp)
/* 000232 0x80B26640 0C05462C */ jal	func_801518B0
/* 000233 0x80B26644 02003025 */ move	$a2, $s0
/* 000234 0x80B26648 8FA30024 */ lw	$v1, 0X24($sp)
/* 000235 0x80B2664C 846C0000 */ lh	$t4, 0X0($v1)
/* 000236 0x80B26650 10000034 */ b	.L80B26724
/* 000237 0x80B26654 A60C0288 */ sh	$t4, 0X288($s0)
.L80B26658:
/* 000238 0x80B26658 00E02025 */ move	$a0, $a3
/* 000239 0x80B2665C AFA7003C */ sw	$a3, 0X3C($sp)
/* 000240 0x80B26660 0C04900F */ jal	func_8012403C
/* 000241 0x80B26664 AFA80030 */ sw	$t0, 0X30($sp)
/* 000242 0x80B26668 8FA7003C */ lw	$a3, 0X3C($sp)
/* 000243 0x80B2666C 10400016 */ beqz	$v0, .L80B266C8
/* 000244 0x80B26670 8FA80030 */ lw	$t0, 0X30($sp)
/* 000245 0x80B26674 00E02025 */ move	$a0, $a3
/* 000246 0x80B26678 AFA7003C */ sw	$a3, 0X3C($sp)
/* 000247 0x80B2667C 0C04900F */ jal	func_8012403C
/* 000248 0x80B26680 AFA80030 */ sw	$t0, 0X30($sp)
/* 000249 0x80B26684 28410014 */ slti	$at, $v0, 0X14
/* 000250 0x80B26688 8FA7003C */ lw	$a3, 0X3C($sp)
/* 000251 0x80B2668C 1020000E */ beqz	$at, .L80B266C8
/* 000252 0x80B26690 8FA80030 */ lw	$t0, 0X30($sp)
/* 000253 0x80B26694 00E02025 */ move	$a0, $a3
/* 000254 0x80B26698 0C04900F */ jal	func_8012403C
/* 000255 0x80B2669C AFA7003C */ sw	$a3, 0X3C($sp)
/* 000256 0x80B266A0 2445273C */ addiu	$a1, $v0, 0X273C
/* 000257 0x80B266A4 30A5FFFF */ andi	$a1, $a1, 0XFFFF
/* 000258 0x80B266A8 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000259 0x80B266AC A7A5002E */ sh	$a1, 0X2E($sp)
/* 000260 0x80B266B0 0C05462C */ jal	func_801518B0
/* 000261 0x80B266B4 02003025 */ move	$a2, $s0
/* 000262 0x80B266B8 97A5002E */ lhu	$a1, 0X2E($sp)
/* 000263 0x80B266BC A6050288 */ sh	$a1, 0X288($s0)
/* 000264 0x80B266C0 10000018 */ b	.L80B26724
/* 000265 0x80B266C4 00000000 */ nop
.L80B266C8:
/* 000266 0x80B266C8 860D028A */ lh	$t5, 0X28A($s0)
/* 000267 0x80B266CC 00E02025 */ move	$a0, $a3
/* 000268 0x80B266D0 0008C040 */ sll	$t8, $t0, 1
/* 000269 0x80B266D4 15A00005 */ bnez	$t5, .L80B266EC
/* 000270 0x80B266D8 3C0980B2 */ lui	$t1, %hi(D_80B27CF4)
/* 000271 0x80B266DC 240E0001 */ li	$t6, 0X1
/* 000272 0x80B266E0 A60E028A */ sh	$t6, 0X28A($s0)
/* 000273 0x80B266E4 10000002 */ b	.L80B266F0
/* 000274 0x80B266E8 00001025 */ move	$v0, $zero
.L80B266EC:
/* 000275 0x80B266EC 24020001 */ li	$v0, 0X1
.L80B266F0:
/* 000276 0x80B266F0 00027880 */ sll	$t7, $v0, 2
/* 000277 0x80B266F4 01E27823 */ subu	$t7, $t7, $v0
/* 000278 0x80B266F8 000F7840 */ sll	$t7, $t7, 1
/* 000279 0x80B266FC 01F8C821 */ addu	$t9, $t7, $t8
/* 000280 0x80B26700 25297CF4 */ addiu	$t1, $t1, %lo(D_80B27CF4)
/* 000281 0x80B26704 03291821 */ addu	$v1, $t9, $t1
/* 000282 0x80B26708 94650000 */ lhu	$a1, 0X0($v1)
/* 000283 0x80B2670C AFA30024 */ sw	$v1, 0X24($sp)
/* 000284 0x80B26710 0C05462C */ jal	func_801518B0
/* 000285 0x80B26714 02003025 */ move	$a2, $s0
/* 000286 0x80B26718 8FA30024 */ lw	$v1, 0X24($sp)
/* 000287 0x80B2671C 846A0000 */ lh	$t2, 0X0($v1)
/* 000288 0x80B26720 A60A0288 */ sh	$t2, 0X288($s0)
.L80B26724:
/* 000289 0x80B26724 0C2C9ABA */ jal	func_80B26AE8
/* 000290 0x80B26728 02002025 */ move	$a0, $s0
/* 000291 0x80B2672C 10000006 */ b	.L80B26748
/* 000292 0x80B26730 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B26734:
/* 000293 0x80B26734 02002025 */ move	$a0, $s0
/* 000294 0x80B26738 00E02825 */ move	$a1, $a3
/* 000295 0x80B2673C 0C02E185 */ jal	func_800B8614
/* 000296 0x80B26740 3C0642C8 */ lui	$a2, 0x42C8
/* 000297 0x80B26744 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B26748:
/* 000298 0x80B26748 8FB00018 */ lw	$s0, 0X18($sp)
/* 000299 0x80B2674C 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000300 0x80B26750 03E00008 */ jr	$ra
/* 000301 0x80B26754 00000000 */ nop

