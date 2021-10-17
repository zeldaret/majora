.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_80C25360
/* 000000 0x80C25360 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80C25364 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80C25368 AFA40018 */ sw	$a0, 0X18($sp)
/* 000003 0x80C2536C AFA5001C */ sw	$a1, 0X1C($sp)
/* 000004 0x80C25370 0C060067 */ jal	SysMatrix_StatePush
/* 000005 0x80C25374 00000000 */ nop
/* 000006 0x80C25378 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000007 0x80C2537C 00002825 */ move	$a1, $zero
/* 000008 0x80C25380 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000009 0x80C25384 85C400BE */ lh	$a0, 0XBE($t6)
/* 000010 0x80C25388 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000011 0x80C2538C 24050001 */ li	$a1, 0X1
/* 000012 0x80C25390 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000013 0x80C25394 85E400BC */ lh	$a0, 0XBC($t7)
/* 000014 0x80C25398 8FB80018 */ lw	$t8, 0X18($sp)
/* 000015 0x80C2539C 24050001 */ li	$a1, 0X1
/* 000016 0x80C253A0 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000017 0x80C253A4 870400C0 */ lh	$a0, 0XC0($t8)
/* 000018 0x80C253A8 3C013F80 */ lui	$at, 0x3F80
/* 000019 0x80C253AC 44816000 */ mtc1	$at, $f12
/* 000020 0x80C253B0 0C0606F1 */ jal	SysMatrix_GetStateTranslationAndScaledY
/* 000021 0x80C253B4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000022 0x80C253B8 0C060073 */ jal	SysMatrix_StatePop
/* 000023 0x80C253BC 00000000 */ nop
/* 000024 0x80C253C0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000025 0x80C253C4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000026 0x80C253C8 03E00008 */ jr	$ra
/* 000027 0x80C253CC 00000000 */ nop

glabel func_80C253D0
/* 000028 0x80C253D0 27BDFF70 */ addiu	$sp, $sp, -0X90
/* 000029 0x80C253D4 AFBE0058 */ sw	$fp, 0X58($sp)
/* 000030 0x80C253D8 AFB40048 */ sw	$s4, 0X48($sp)
/* 000031 0x80C253DC 0080A025 */ move	$s4, $a0
/* 000032 0x80C253E0 00A0F025 */ move	$fp, $a1
/* 000033 0x80C253E4 AFBF005C */ sw	$ra, 0X5C($sp)
/* 000034 0x80C253E8 AFB70054 */ sw	$s7, 0X54($sp)
/* 000035 0x80C253EC AFB60050 */ sw	$s6, 0X50($sp)
/* 000036 0x80C253F0 AFB5004C */ sw	$s5, 0X4C($sp)
/* 000037 0x80C253F4 AFB30044 */ sw	$s3, 0X44($sp)
/* 000038 0x80C253F8 AFB20040 */ sw	$s2, 0X40($sp)
/* 000039 0x80C253FC AFB1003C */ sw	$s1, 0X3C($sp)
/* 000040 0x80C25400 AFB00038 */ sw	$s0, 0X38($sp)
/* 000041 0x80C25404 F7BA0030 */ sdc1	$f26, 0X30($sp)
/* 000042 0x80C25408 F7B80028 */ sdc1	$f24, 0X28($sp)
/* 000043 0x80C2540C F7B60020 */ sdc1	$f22, 0X20($sp)
/* 000044 0x80C25410 F7B40018 */ sdc1	$f20, 0X18($sp)
/* 000045 0x80C25414 8682001C */ lh	$v0, 0X1C($s4)
/* 000046 0x80C25418 3C0F80C2 */ lui	$t7, %hi(D_80C257F0)
/* 000047 0x80C2541C 25EF57F0 */ addiu	$t7, $t7, %lo(D_80C257F0)
/* 000048 0x80C25420 00021203 */ sra	$v0, $v0, 8
/* 000049 0x80C25424 30420003 */ andi	$v0, $v0, 0X3
/* 000050 0x80C25428 00027040 */ sll	$t6, $v0, 1
/* 000051 0x80C2542C 01CF8021 */ addu	$s0, $t6, $t7
/* 000052 0x80C25430 86170000 */ lh	$s7, 0X0($s0)
/* 000053 0x80C25434 02802025 */ move	$a0, $s4
/* 000054 0x80C25438 0C3094D8 */ jal	func_80C25360
/* 000055 0x80C2543C 27A50078 */ addiu	$a1, $sp, 0X78
/* 000056 0x80C25440 3C1880C2 */ lui	$t8, %hi(D_80C257F4)
/* 000057 0x80C25444 271857F4 */ addiu	$t8, $t8, %lo(D_80C257F4)
/* 000058 0x80C25448 16180035 */ bne	$s0, $t8, .L80C25520
/* 000059 0x80C2544C 03C02025 */ move	$a0, $fp
/* 000060 0x80C25450 3C014000 */ lui	$at, 0x4000
/* 000061 0x80C25454 4481D000 */ mtc1	$at, $f26
/* 000062 0x80C25458 3C014080 */ lui	$at, 0x4080
/* 000063 0x80C2545C 4481C000 */ mtc1	$at, $f24
/* 000064 0x80C25460 3C0180C2 */ lui	$at, %hi(D_80C25800)
/* 000065 0x80C25464 C4365800 */ lwc1	$f22, %lo(D_80C25800)($at)
/* 000066 0x80C25468 3C013F80 */ lui	$at, 0x3F80
/* 000067 0x80C2546C 4481A000 */ mtc1	$at, $f20
/* 000068 0x80C25470 00008025 */ move	$s0, $zero
/* 000069 0x80C25474 26930024 */ addiu	$s3, $s4, 0X24
/* 000070 0x80C25478 24165555 */ li	$s6, 0X5555
/* 000071 0x80C2547C 24150003 */ li	$s5, 0X3
/* 000072 0x80C25480 03C02025 */ move	$a0, $fp
.L80C25484:
/* 000073 0x80C25484 02602825 */ move	$a1, $s3
/* 000074 0x80C25488 0C029DCC */ jal	func_800A7730
/* 000075 0x80C2548C 02E03025 */ move	$a2, $s7
/* 000076 0x80C25490 1040001E */ beqz	$v0, .L80C2550C
/* 000077 0x80C25494 00408825 */ move	$s1, $v0
/* 000078 0x80C25498 C7A4007C */ lwc1	$f4, 0X7C($sp)
/* 000079 0x80C2549C 4616203C */ c.lt.s	$f4, $f22
/* 000080 0x80C254A0 00000000 */ nop
/* 000081 0x80C254A4 45000015 */ bc1f .L80C254FC
/* 000082 0x80C254A8 00000000 */ nop
/* 000083 0x80C254AC 46142180 */ add.s	$f6, $f4, $f20
/* 000084 0x80C254B0 3C0880C2 */ lui	$t0, %hi(D_80C257F8)
/* 000085 0x80C254B4 250857F8 */ addiu	$t0, $t0, %lo(D_80C257F8)
/* 000086 0x80C254B8 0010C840 */ sll	$t9, $s0, 1
/* 000087 0x80C254BC 46183202 */ mul.s	$f8, $f6, $f24
/* 000088 0x80C254C0 03289021 */ addu	$s2, $t9, $t0
/* 000089 0x80C254C4 E6280068 */ swc1	$f8, 0X68($s1)
/* 000090 0x80C254C8 C7A0007C */ lwc1	$f0, 0X7C($sp)
/* 000091 0x80C254CC 46000005 */ abs.s	$f0, $f0
/* 000092 0x80C254D0 4600A081 */ sub.s	$f2, $f20, $f0
/* 000093 0x80C254D4 46021280 */ add.s	$f10, $f2, $f2
/* 000094 0x80C254D8 461A5400 */ add.s	$f16, $f10, $f26
/* 000095 0x80C254DC E6300070 */ swc1	$f16, 0X70($s1)
/* 000096 0x80C254E0 C7AE0078 */ lwc1	$f14, 0X78($sp)
/* 000097 0x80C254E4 0C060040 */ jal	atans_flip
/* 000098 0x80C254E8 C7AC0080 */ lwc1	$f12, 0X80($sp)
/* 000099 0x80C254EC 86490000 */ lh	$t1, 0X0($s2)
/* 000100 0x80C254F0 01225021 */ addu	$t2, $t1, $v0
/* 000101 0x80C254F4 10000005 */ b	.L80C2550C
/* 000102 0x80C254F8 A62A0032 */ sh	$t2, 0X32($s1)
.L80C254FC:
/* 000103 0x80C254FC 02160019 */ multu	$s0, $s6
/* 000104 0x80C25500 00005812 */ mflo	$t3
/* 000105 0x80C25504 A44B0032 */ sh	$t3, 0X32($v0)
/* 000106 0x80C25508 00000000 */ nop
.L80C2550C:
/* 000107 0x80C2550C 26100001 */ addiu	$s0, $s0, 0X1
/* 000108 0x80C25510 5615FFDC */ bnel	$s0, $s5, .L80C25484
/* 000109 0x80C25514 03C02025 */ move	$a0, $fp
/* 000110 0x80C25518 10000021 */ b	.L80C255A0
/* 000111 0x80C2551C 8FBF005C */ lw	$ra, 0X5C($sp)
.L80C25520:
/* 000112 0x80C25520 26850024 */ addiu	$a1, $s4, 0X24
/* 000113 0x80C25524 0C029DCC */ jal	func_800A7730
/* 000114 0x80C25528 02E03025 */ move	$a2, $s7
/* 000115 0x80C2552C 1040001B */ beqz	$v0, .L80C2559C
/* 000116 0x80C25530 00408825 */ move	$s1, $v0
/* 000117 0x80C25534 3C0180C2 */ lui	$at, %hi(D_80C25804)
/* 000118 0x80C25538 C4365804 */ lwc1	$f22, %lo(D_80C25804)($at)
/* 000119 0x80C2553C C7B2007C */ lwc1	$f18, 0X7C($sp)
/* 000120 0x80C25540 3C013F80 */ lui	$at, 0x3F80
/* 000121 0x80C25544 4616903C */ c.lt.s	$f18, $f22
/* 000122 0x80C25548 00000000 */ nop
/* 000123 0x80C2554C 45020014 */ bc1fl .L80C255A0
/* 000124 0x80C25550 8FBF005C */ lw	$ra, 0X5C($sp)
/* 000125 0x80C25554 4481A000 */ mtc1	$at, $f20
/* 000126 0x80C25558 3C014080 */ lui	$at, 0x4080
/* 000127 0x80C2555C 4481C000 */ mtc1	$at, $f24
/* 000128 0x80C25560 46149100 */ add.s	$f4, $f18, $f20
/* 000129 0x80C25564 3C014000 */ lui	$at, 0x4000
/* 000130 0x80C25568 4481D000 */ mtc1	$at, $f26
/* 000131 0x80C2556C 46182182 */ mul.s	$f6, $f4, $f24
/* 000132 0x80C25570 E4460068 */ swc1	$f6, 0X68($v0)
/* 000133 0x80C25574 C7A0007C */ lwc1	$f0, 0X7C($sp)
/* 000134 0x80C25578 46000005 */ abs.s	$f0, $f0
/* 000135 0x80C2557C 4600A081 */ sub.s	$f2, $f20, $f0
/* 000136 0x80C25580 46021200 */ add.s	$f8, $f2, $f2
/* 000137 0x80C25584 461A4280 */ add.s	$f10, $f8, $f26
/* 000138 0x80C25588 E44A0070 */ swc1	$f10, 0X70($v0)
/* 000139 0x80C2558C C7AE0078 */ lwc1	$f14, 0X78($sp)
/* 000140 0x80C25590 0C060040 */ jal	atans_flip
/* 000141 0x80C25594 C7AC0080 */ lwc1	$f12, 0X80($sp)
/* 000142 0x80C25598 A6220032 */ sh	$v0, 0X32($s1)
.L80C2559C:
/* 000143 0x80C2559C 8FBF005C */ lw	$ra, 0X5C($sp)
.L80C255A0:
/* 000144 0x80C255A0 D7B40018 */ ldc1	$f20, 0X18($sp)
/* 000145 0x80C255A4 D7B60020 */ ldc1	$f22, 0X20($sp)
/* 000146 0x80C255A8 D7B80028 */ ldc1	$f24, 0X28($sp)
/* 000147 0x80C255AC D7BA0030 */ ldc1	$f26, 0X30($sp)
/* 000148 0x80C255B0 8FB00038 */ lw	$s0, 0X38($sp)
/* 000149 0x80C255B4 8FB1003C */ lw	$s1, 0X3C($sp)
/* 000150 0x80C255B8 8FB20040 */ lw	$s2, 0X40($sp)
/* 000151 0x80C255BC 8FB30044 */ lw	$s3, 0X44($sp)
/* 000152 0x80C255C0 8FB40048 */ lw	$s4, 0X48($sp)
/* 000153 0x80C255C4 8FB5004C */ lw	$s5, 0X4C($sp)
/* 000154 0x80C255C8 8FB60050 */ lw	$s6, 0X50($sp)
/* 000155 0x80C255CC 8FB70054 */ lw	$s7, 0X54($sp)
/* 000156 0x80C255D0 8FBE0058 */ lw	$fp, 0X58($sp)
/* 000157 0x80C255D4 03E00008 */ jr	$ra
/* 000158 0x80C255D8 27BD0090 */ addiu	$sp, $sp, 0X90

glabel ObjSwprize_Init
/* 000159 0x80C255DC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000160 0x80C255E0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000161 0x80C255E4 00803025 */ move	$a2, $a0
/* 000162 0x80C255E8 00A03825 */ move	$a3, $a1
/* 000163 0x80C255EC 84C5001C */ lh	$a1, 0X1C($a2)
/* 000164 0x80C255F0 AFA60018 */ sw	$a2, 0X18($sp)
/* 000165 0x80C255F4 00E02025 */ move	$a0, $a3
/* 000166 0x80C255F8 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000167 0x80C255FC 30A5007F */ andi	$a1, $a1, 0X7F
/* 000168 0x80C25600 10400005 */ beqz	$v0, .L80C25618
/* 000169 0x80C25604 8FA60018 */ lw	$a2, 0X18($sp)
/* 000170 0x80C25608 0C3095E0 */ jal	func_80C25780
/* 000171 0x80C2560C 00C02025 */ move	$a0, $a2
/* 000172 0x80C25610 10000004 */ b	.L80C25624
/* 000173 0x80C25614 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C25618:
/* 000174 0x80C25618 0C309590 */ jal	func_80C25640
/* 000175 0x80C2561C 00C02025 */ move	$a0, $a2
/* 000176 0x80C25620 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C25624:
/* 000177 0x80C25624 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000178 0x80C25628 03E00008 */ jr	$ra
/* 000179 0x80C2562C 00000000 */ nop

glabel ObjSwprize_Destroy
/* 000180 0x80C25630 AFA40000 */ sw	$a0, 0X0($sp)
/* 000181 0x80C25634 AFA50004 */ sw	$a1, 0X4($sp)
/* 000182 0x80C25638 03E00008 */ jr	$ra
/* 000183 0x80C2563C 00000000 */ nop

glabel func_80C25640
/* 000184 0x80C25640 3C0E80C2 */ lui	$t6, %hi(func_80C25654)
/* 000185 0x80C25644 25CE5654 */ addiu	$t6, $t6, %lo(func_80C25654)
/* 000186 0x80C25648 AC8E0144 */ sw	$t6, 0X144($a0)
/* 000187 0x80C2564C 03E00008 */ jr	$ra
/* 000188 0x80C25650 00000000 */ nop

glabel func_80C25654
/* 000189 0x80C25654 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000190 0x80C25658 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000191 0x80C2565C AFA40018 */ sw	$a0, 0X18($sp)
/* 000192 0x80C25660 00A03025 */ move	$a2, $a1
/* 000193 0x80C25664 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000194 0x80C25668 00C02025 */ move	$a0, $a2
/* 000195 0x80C2566C 85C5001C */ lh	$a1, 0X1C($t6)
/* 000196 0x80C25670 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000197 0x80C25674 30A5007F */ andi	$a1, $a1, 0X7F
/* 000198 0x80C25678 50400004 */ beqzl	$v0, .L80C2568C
/* 000199 0x80C2567C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000200 0x80C25680 0C3095A6 */ jal	func_80C25698
/* 000201 0x80C25684 8FA40018 */ lw	$a0, 0X18($sp)
/* 000202 0x80C25688 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C2568C:
/* 000203 0x80C2568C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000204 0x80C25690 03E00008 */ jr	$ra
/* 000205 0x80C25694 00000000 */ nop

glabel func_80C25698
/* 000206 0x80C25698 3C0E80C2 */ lui	$t6, %hi(func_80C256AC)
/* 000207 0x80C2569C 25CE56AC */ addiu	$t6, $t6, %lo(func_80C256AC)
/* 000208 0x80C256A0 AC8E0144 */ sw	$t6, 0X144($a0)
/* 000209 0x80C256A4 03E00008 */ jr	$ra
/* 000210 0x80C256A8 00000000 */ nop

glabel func_80C256AC
/* 000211 0x80C256AC 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000212 0x80C256B0 AFB00018 */ sw	$s0, 0X18($sp)
/* 000213 0x80C256B4 00808025 */ move	$s0, $a0
/* 000214 0x80C256B8 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000215 0x80C256BC AFA50024 */ sw	$a1, 0X24($sp)
/* 000216 0x80C256C0 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000217 0x80C256C4 82040038 */ lb	$a0, 0X38($s0)
/* 000218 0x80C256C8 1040000A */ beqz	$v0, .L80C256F4
/* 000219 0x80C256CC 02002825 */ move	$a1, $s0
/* 000220 0x80C256D0 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000221 0x80C256D4 82040038 */ lb	$a0, 0X38($s0)
/* 000222 0x80C256D8 02002025 */ move	$a0, $s0
/* 000223 0x80C256DC 0C3094F4 */ jal	func_80C253D0
/* 000224 0x80C256E0 8FA50024 */ lw	$a1, 0X24($sp)
/* 000225 0x80C256E4 0C3095C4 */ jal	func_80C25710
/* 000226 0x80C256E8 02002025 */ move	$a0, $s0
/* 000227 0x80C256EC 10000004 */ b	.L80C25700
/* 000228 0x80C256F0 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C256F4:
/* 000229 0x80C256F4 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000230 0x80C256F8 82040038 */ lb	$a0, 0X38($s0)
/* 000231 0x80C256FC 8FBF001C */ lw	$ra, 0X1C($sp)
.L80C25700:
/* 000232 0x80C25700 8FB00018 */ lw	$s0, 0X18($sp)
/* 000233 0x80C25704 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000234 0x80C25708 03E00008 */ jr	$ra
/* 000235 0x80C2570C 00000000 */ nop

glabel func_80C25710
/* 000236 0x80C25710 3C0F80C2 */ lui	$t7, %hi(func_80C2572C)
/* 000237 0x80C25714 240E0028 */ li	$t6, 0X28
/* 000238 0x80C25718 25EF572C */ addiu	$t7, $t7, %lo(func_80C2572C)
/* 000239 0x80C2571C A48E0148 */ sh	$t6, 0X148($a0)
/* 000240 0x80C25720 AC8F0144 */ sw	$t7, 0X144($a0)
/* 000241 0x80C25724 03E00008 */ jr	$ra
/* 000242 0x80C25728 00000000 */ nop

glabel func_80C2572C
/* 000243 0x80C2572C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000244 0x80C25730 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000245 0x80C25734 00802825 */ move	$a1, $a0
/* 000246 0x80C25738 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000247 0x80C2573C AFA40018 */ sw	$a0, 0X18($sp)
/* 000248 0x80C25740 84A20148 */ lh	$v0, 0X148($a1)
/* 000249 0x80C25744 1840000A */ blez	$v0, .L80C25770
/* 000250 0x80C25748 244EFFFF */ addiu	$t6, $v0, -0X1
/* 000251 0x80C2574C A4AE0148 */ sh	$t6, 0X148($a1)
/* 000252 0x80C25750 84AF0148 */ lh	$t7, 0X148($a1)
/* 000253 0x80C25754 55E00007 */ bnezl	$t7, .L80C25774
/* 000254 0x80C25758 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000255 0x80C2575C 80A40038 */ lb	$a0, 0X38($a1)
/* 000256 0x80C25760 0C03C7EF */ jal	ActorCutscene_Stop
/* 000257 0x80C25764 AFA50018 */ sw	$a1, 0X18($sp)
/* 000258 0x80C25768 0C3095E0 */ jal	func_80C25780
/* 000259 0x80C2576C 8FA40018 */ lw	$a0, 0X18($sp)
.L80C25770:
/* 000260 0x80C25770 8FBF0014 */ lw	$ra, 0X14($sp)
.L80C25774:
/* 000261 0x80C25774 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000262 0x80C25778 03E00008 */ jr	$ra
/* 000263 0x80C2577C 00000000 */ nop

glabel func_80C25780
/* 000264 0x80C25780 3C0E80C2 */ lui	$t6, %hi(func_80C25794)
/* 000265 0x80C25784 25CE5794 */ addiu	$t6, $t6, %lo(func_80C25794)
/* 000266 0x80C25788 AC8E0144 */ sw	$t6, 0X144($a0)
/* 000267 0x80C2578C 03E00008 */ jr	$ra
/* 000268 0x80C25790 00000000 */ nop

glabel func_80C25794
/* 000269 0x80C25794 AFA40000 */ sw	$a0, 0X0($sp)
/* 000270 0x80C25798 AFA50004 */ sw	$a1, 0X4($sp)
/* 000271 0x80C2579C 03E00008 */ jr	$ra
/* 000272 0x80C257A0 00000000 */ nop

glabel ObjSwprize_Update
/* 000273 0x80C257A4 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000274 0x80C257A8 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000275 0x80C257AC 8C990144 */ lw	$t9, 0X144($a0)
/* 000276 0x80C257B0 0320F809 */ jalr	$t9
/* 000277 0x80C257B4 00000000 */ nop
/* 000278 0x80C257B8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000279 0x80C257BC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000280 0x80C257C0 03E00008 */ jr	$ra
/* 000281 0x80C257C4 00000000 */ nop
/* 000282 0x80C257C8 00000000 */ nop
/* 000283 0x80C257CC 00000000 */ nop
