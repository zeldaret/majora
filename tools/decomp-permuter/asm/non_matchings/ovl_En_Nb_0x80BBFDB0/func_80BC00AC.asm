glabel func_80BC00AC
/* 000191 0x80BC00AC 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000192 0x80BC00B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000193 0x80BC00B4 00808025 */ move	$s0, $a0
/* 000194 0x80BC00B8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000195 0x80BC00BC AFA50034 */ sw	$a1, 0X34($sp)
/* 000196 0x80BC00C0 02002025 */ move	$a0, $s0
/* 000197 0x80BC00C4 0C2F0014 */ jal	func_80BC0050
/* 000198 0x80BC00C8 00002825 */ move	$a1, $zero
/* 000199 0x80BC00CC 86040288 */ lh	$a0, 0X288($s0)
/* 000200 0x80BC00D0 00022C00 */ sll	$a1, $v0, 16
/* 000201 0x80BC00D4 00052C03 */ sra	$a1, $a1, 16
/* 000202 0x80BC00D8 2C81000A */ sltiu	$at, $a0, 0XA
/* 000203 0x80BC00DC 10200039 */ beqz	$at, .L80BC01C4
/* 000204 0x80BC00E0 00001825 */ move	$v1, $zero
/* 000205 0x80BC00E4 00047080 */ sll	$t6, $a0, 2
/* 000206 0x80BC00E8 3C0180BC */ lui	$at, %hi(jtbl_D_80BC1690)
/* 000207 0x80BC00EC 002E0821 */ addu	$at, $at, $t6
/* 000208 0x80BC00F0 8C2E1690 */ lw	$t6, %lo(jtbl_D_80BC1690)($at)
/* 000209 0x80BC00F4 01C00008 */ jr	$t6
/* 000210 0x80BC00F8 00000000 */ nop
glabel L80BC00FC
.L80BC00FC:
/* 000211 0x80BC00FC 02002025 */ move	$a0, $s0
/* 000212 0x80BC0100 AFA30024 */ sw	$v1, 0X24($sp)
/* 000213 0x80BC0104 0C2EFFF5 */ jal	func_80BBFFD4
/* 000214 0x80BC0108 A7A5002A */ sh	$a1, 0X2A($sp)
/* 000215 0x80BC010C 8FA30024 */ lw	$v1, 0X24($sp)
/* 000216 0x80BC0110 1040002C */ beqz	$v0, .L80BC01C4
/* 000217 0x80BC0114 87A5002A */ lh	$a1, 0X2A($sp)
glabel L80BC0118
.L80BC0118:
/* 000218 0x80BC0118 00052400 */ sll	$a0, $a1, 16
/* 000219 0x80BC011C 0C03C86E */ jal	ActorCutscene_GetCurrentCamera
/* 000220 0x80BC0120 00042403 */ sra	$a0, $a0, 16
/* 000221 0x80BC0124 00022C00 */ sll	$a1, $v0, 16
/* 000222 0x80BC0128 00052C03 */ sra	$a1, $a1, 16
/* 000223 0x80BC012C 0C05A5B5 */ jal	Play_GetCamera
/* 000224 0x80BC0130 8FA40034 */ lw	$a0, 0X34($sp)
/* 000225 0x80BC0134 00402025 */ move	$a0, $v0
/* 000226 0x80BC0138 0C0380C2 */ jal	func_800E0308
/* 000227 0x80BC013C 02002825 */ move	$a1, $s0
/* 000228 0x80BC0140 860F0288 */ lh	$t7, 0X288($s0)
/* 000229 0x80BC0144 24030001 */ li	$v1, 0X1
/* 000230 0x80BC0148 25F80001 */ addiu	$t8, $t7, 0X1
/* 000231 0x80BC014C 1000001D */ b	.L80BC01C4
/* 000232 0x80BC0150 A6180288 */ sh	$t8, 0X288($s0)
glabel L80BC0154
.L80BC0154:
/* 000233 0x80BC0154 8E020124 */ lw	$v0, 0X124($s0)
/* 000234 0x80BC0158 50400010 */ beqzl	$v0, .L80BC019C
/* 000235 0x80BC015C 24880001 */ addiu	$t0, $a0, 0X1
/* 000236 0x80BC0160 8C590138 */ lw	$t9, 0X138($v0)
/* 000237 0x80BC0164 5320000D */ beqzl	$t9, .L80BC019C
/* 000238 0x80BC0168 24880001 */ addiu	$t0, $a0, 0X1
/* 000239 0x80BC016C 00052400 */ sll	$a0, $a1, 16
/* 000240 0x80BC0170 0C03C86E */ jal	ActorCutscene_GetCurrentCamera
/* 000241 0x80BC0174 00042403 */ sra	$a0, $a0, 16
/* 000242 0x80BC0178 00022C00 */ sll	$a1, $v0, 16
/* 000243 0x80BC017C 00052C03 */ sra	$a1, $a1, 16
/* 000244 0x80BC0180 0C05A5B5 */ jal	Play_GetCamera
/* 000245 0x80BC0184 8FA40034 */ lw	$a0, 0X34($sp)
/* 000246 0x80BC0188 00402025 */ move	$a0, $v0
/* 000247 0x80BC018C 0C0380C2 */ jal	func_800E0308
/* 000248 0x80BC0190 8E050124 */ lw	$a1, 0X124($s0)
/* 000249 0x80BC0194 86040288 */ lh	$a0, 0X288($s0)
/* 000250 0x80BC0198 24880001 */ addiu	$t0, $a0, 0X1
.L80BC019C:
/* 000251 0x80BC019C A6080288 */ sh	$t0, 0X288($s0)
/* 000252 0x80BC01A0 10000008 */ b	.L80BC01C4
/* 000253 0x80BC01A4 24030001 */ li	$v1, 0X1
glabel L80BC01A8
.L80BC01A8:
/* 000254 0x80BC01A8 00052400 */ sll	$a0, $a1, 16
/* 000255 0x80BC01AC 0C03C7EF */ jal	ActorCutscene_Stop
/* 000256 0x80BC01B0 00042403 */ sra	$a0, $a0, 16
/* 000257 0x80BC01B4 86090288 */ lh	$t1, 0X288($s0)
/* 000258 0x80BC01B8 24030001 */ li	$v1, 0X1
/* 000259 0x80BC01BC 252A0001 */ addiu	$t2, $t1, 0X1
/* 000260 0x80BC01C0 A60A0288 */ sh	$t2, 0X288($s0)
.L80BC01C4:
/* 000261 0x80BC01C4 00601025 */ move	$v0, $v1
/* 000262 0x80BC01C8 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000263 0x80BC01CC 8FB00018 */ lw	$s0, 0X18($sp)
/* 000264 0x80BC01D0 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000265 0x80BC01D4 03E00008 */ jr	$ra
/* 000266 0x80BC01D8 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80BC1690
/* 001592 0x80BC1690 */ .word	L80BC00FC
/* 001593 0x80BC1694 */ .word	L80BC0154
/* 001594 0x80BC1698 */ .word	L80BC0118
/* 001595 0x80BC169C */ .word	L80BC0154
/* 001596 0x80BC16A0 */ .word	L80BC0118
/* 001597 0x80BC16A4 */ .word	L80BC0154
/* 001598 0x80BC16A8 */ .word	L80BC0118
/* 001599 0x80BC16AC */ .word	L80BC0154
/* 001600 0x80BC16B0 */ .word	L80BC0118
/* 001601 0x80BC16B4 */ .word	L80BC01A8
