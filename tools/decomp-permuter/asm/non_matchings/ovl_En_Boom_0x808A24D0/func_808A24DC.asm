glabel func_808A24DC
/* 000003 0x808A24DC 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 000004 0x808A24E0 AFB10020 */ sw	$s1, 0X20($sp)
/* 000005 0x808A24E4 AFB0001C */ sw	$s0, 0X1C($sp)
/* 000006 0x808A24E8 00808025 */ move	$s0, $a0
/* 000007 0x808A24EC 00A08825 */ move	$s1, $a1
/* 000008 0x808A24F0 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000009 0x808A24F4 C6040028 */ lwc1	$f4, 0X28($s0)
/* 000010 0x808A24F8 27B80050 */ addiu	$t8, $sp, 0X50
/* 000011 0x808A24FC 27B90054 */ addiu	$t9, $sp, 0X54
/* 000012 0x808A2500 E7A40050 */ swc1	$f4, 0X50($sp)
/* 000013 0x808A2504 960E0090 */ lhu	$t6, 0X90($s0)
/* 000014 0x808A2508 02202025 */ move	$a0, $s1
/* 000015 0x808A250C 26250830 */ addiu	$a1, $s1, 0X830
/* 000016 0x808A2510 31CF0020 */ andi	$t7, $t6, 0X20
/* 000017 0x808A2514 A7AF004E */ sh	$t7, 0X4E($sp)
/* 000018 0x808A2518 8E07002C */ lw	$a3, 0X2C($s0)
/* 000019 0x808A251C 8E060024 */ lw	$a2, 0X24($s0)
/* 000020 0x808A2520 AFB90014 */ sw	$t9, 0X14($sp)
/* 000021 0x808A2524 0C03286B */ jal	func_800CA1AC
/* 000022 0x808A2528 AFB80010 */ sw	$t8, 0X10($sp)
/* 000023 0x808A252C 1040001E */ beqz	$v0, .L808A25A8
/* 000024 0x808A2530 C7A80050 */ lwc1	$f8, 0X50($sp)
/* 000025 0x808A2534 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000026 0x808A2538 3C0141A0 */ lui	$at, 0x41A0
/* 000027 0x808A253C 4608303C */ c.lt.s	$f6, $f8
/* 000028 0x808A2540 00000000 */ nop
/* 000029 0x808A2544 45020019 */ bc1fl .L808A25AC
/* 000030 0x808A2548 960A0090 */ lhu	$t2, 0X90($s0)
/* 000031 0x808A254C 44810000 */ mtc1	$at, $f0
/* 000032 0x808A2550 00000000 */ nop
/* 000033 0x808A2554 96080090 */ lhu	$t0, 0X90($s0)
/* 000034 0x808A2558 C60A0024 */ lwc1	$f10, 0X24($s0)
/* 000035 0x808A255C 3C01808A */ lui	$at, %hi(D_808A30B0)
/* 000036 0x808A2560 35090020 */ ori	$t1, $t0, 0X20
/* 000037 0x808A2564 A6090090 */ sh	$t1, 0X90($s0)
/* 000038 0x808A2568 E7AA0040 */ swc1	$f10, 0X40($sp)
/* 000039 0x808A256C C6120028 */ lwc1	$f18, 0X28($s0)
/* 000040 0x808A2570 C42830B0 */ lwc1	$f8, %lo(D_808A30B0)($at)
/* 000041 0x808A2574 44060000 */ mfc1	$a2, $f0
/* 000042 0x808A2578 46009101 */ sub.s	$f4, $f18, $f0
/* 000043 0x808A257C 02202025 */ move	$a0, $s1
/* 000044 0x808A2580 27A50040 */ addiu	$a1, $sp, 0X40
/* 000045 0x808A2584 3C074120 */ lui	$a3, 0x4120
/* 000046 0x808A2588 E7A40044 */ swc1	$f4, 0X44($sp)
/* 000047 0x808A258C C606002C */ lwc1	$f6, 0X2C($s0)
/* 000048 0x808A2590 E7A00010 */ swc1	$f0, 0X10($sp)
/* 000049 0x808A2594 E7A80014 */ swc1	$f8, 0X14($sp)
/* 000050 0x808A2598 0C02C7A5 */ jal	EffectSS_SpawnBubble
/* 000051 0x808A259C E7A60048 */ swc1	$f6, 0X48($sp)
/* 000052 0x808A25A0 10000005 */ b	.L808A25B8
/* 000053 0x808A25A4 96020090 */ lhu	$v0, 0X90($s0)
.L808A25A8:
/* 000054 0x808A25A8 960A0090 */ lhu	$t2, 0X90($s0)
.L808A25AC:
/* 000055 0x808A25AC 314BFFDF */ andi	$t3, $t2, 0XFFDF
/* 000056 0x808A25B0 A60B0090 */ sh	$t3, 0X90($s0)
/* 000057 0x808A25B4 96020090 */ lhu	$v0, 0X90($s0)
.L808A25B8:
/* 000058 0x808A25B8 97AD004E */ lhu	$t5, 0X4E($sp)
/* 000059 0x808A25BC 304C0040 */ andi	$t4, $v0, 0X40
/* 000060 0x808A25C0 11800048 */ beqz	$t4, .L808A26E4
/* 000061 0x808A25C4 304E0020 */ andi	$t6, $v0, 0X20
/* 000062 0x808A25C8 11AE0046 */ beq	$t5, $t6, .L808A26E4
/* 000063 0x808A25CC 26040024 */ addiu	$a0, $s0, 0X24
/* 000064 0x808A25D0 26050108 */ addiu	$a1, $s0, 0X108
/* 000065 0x808A25D4 0C03FD7D */ jal	Math_Vec3f_Diff
/* 000066 0x808A25D8 27A60034 */ addiu	$a2, $sp, 0X34
/* 000067 0x808A25DC 44808000 */ mtc1	$zero, $f16
/* 000068 0x808A25E0 C7AA0038 */ lwc1	$f10, 0X38($sp)
/* 000069 0x808A25E4 C7AC0034 */ lwc1	$f12, 0X34($sp)
/* 000070 0x808A25E8 C7AE003C */ lwc1	$f14, 0X3C($sp)
/* 000071 0x808A25EC 46105032 */ c.eq.s	$f10, $f16
/* 000072 0x808A25F0 00000000 */ nop
/* 000073 0x808A25F4 45030024 */ bc1tl .L808A2688
/* 000074 0x808A25F8 02002025 */ move	$a0, $s0
/* 000075 0x808A25FC 460C6482 */ mul.s	$f18, $f12, $f12
/* 000076 0x808A2600 C7A60050 */ lwc1	$f6, 0X50($sp)
/* 000077 0x808A2604 460E7102 */ mul.s	$f4, $f14, $f14
/* 000078 0x808A2608 46049000 */ add.s	$f0, $f18, $f4
/* 000079 0x808A260C 46000004 */ sqrt.s	$f0, $f0
/* 000080 0x808A2610 46100032 */ c.eq.s	$f0, $f16
/* 000081 0x808A2614 46000086 */ mov.s	$f2, $f0
/* 000082 0x808A2618 45030007 */ bc1tl .L808A2638
/* 000083 0x808A261C C7B20034 */ lwc1	$f18, 0X34($sp)
/* 000084 0x808A2620 C608010C */ lwc1	$f8, 0X10C($s0)
/* 000085 0x808A2624 46083481 */ sub.s	$f18, $f6, $f8
/* 000086 0x808A2628 460A9103 */ div.s	$f4, $f18, $f10
/* 000087 0x808A262C 46002182 */ mul.s	$f6, $f4, $f0
/* 000088 0x808A2630 46003083 */ div.s	$f2, $f6, $f0
/* 000089 0x808A2634 C7B20034 */ lwc1	$f18, 0X34($sp)
.L808A2638:
/* 000090 0x808A2638 C6080108 */ lwc1	$f8, 0X108($s0)
/* 000091 0x808A263C C7A60050 */ lwc1	$f6, 0X50($sp)
/* 000092 0x808A2640 46029282 */ mul.s	$f10, $f18, $f2
/* 000093 0x808A2644 240F012C */ li	$t7, 0X12C
/* 000094 0x808A2648 E7A60038 */ swc1	$f6, 0X38($sp)
/* 000095 0x808A264C 02202025 */ move	$a0, $s1
/* 000096 0x808A2650 27A50034 */ addiu	$a1, $sp, 0X34
/* 000097 0x808A2654 00003025 */ move	$a2, $zero
/* 000098 0x808A2658 00003825 */ move	$a3, $zero
/* 000099 0x808A265C 460A4100 */ add.s	$f4, $f8, $f10
/* 000100 0x808A2660 C7A8003C */ lwc1	$f8, 0X3C($sp)
/* 000101 0x808A2664 46024282 */ mul.s	$f10, $f8, $f2
/* 000102 0x808A2668 E7A40034 */ swc1	$f4, 0X34($sp)
/* 000103 0x808A266C C6120110 */ lwc1	$f18, 0X110($s0)
/* 000104 0x808A2670 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000105 0x808A2674 AFA00010 */ sw	$zero, 0X10($sp)
/* 000106 0x808A2678 460A9100 */ add.s	$f4, $f18, $f10
/* 000107 0x808A267C 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000108 0x808A2680 E7A4003C */ swc1	$f4, 0X3C($sp)
/* 000109 0x808A2684 02002025 */ move	$a0, $s0
.L808A2688:
/* 000110 0x808A2688 0C02E3B2 */ jal	func_800B8EC8
/* 000111 0x808A268C 240528C5 */ li	$a1, 0X28C5
/* 000112 0x808A2690 02202025 */ move	$a0, $s1
/* 000113 0x808A2694 27A50034 */ addiu	$a1, $sp, 0X34
/* 000114 0x808A2698 24060064 */ li	$a2, 0X64
/* 000115 0x808A269C 240701F4 */ li	$a3, 0X1F4
/* 000116 0x808A26A0 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000117 0x808A26A4 AFA00010 */ sw	$zero, 0X10($sp)
/* 000118 0x808A26A8 24180004 */ li	$t8, 0X4
/* 000119 0x808A26AC AFB80010 */ sw	$t8, 0X10($sp)
/* 000120 0x808A26B0 02202025 */ move	$a0, $s1
/* 000121 0x808A26B4 27A50034 */ addiu	$a1, $sp, 0X34
/* 000122 0x808A26B8 24060064 */ li	$a2, 0X64
/* 000123 0x808A26BC 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000124 0x808A26C0 240701F4 */ li	$a3, 0X1F4
/* 000125 0x808A26C4 24190008 */ li	$t9, 0X8
/* 000126 0x808A26C8 AFB90010 */ sw	$t9, 0X10($sp)
/* 000127 0x808A26CC 02202025 */ move	$a0, $s1
/* 000128 0x808A26D0 27A50034 */ addiu	$a1, $sp, 0X34
/* 000129 0x808A26D4 24060064 */ li	$a2, 0X64
/* 000130 0x808A26D8 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000131 0x808A26DC 240701F4 */ li	$a3, 0X1F4
/* 000132 0x808A26E0 96020090 */ lhu	$v0, 0X90($s0)
.L808A26E4:
/* 000133 0x808A26E4 34480040 */ ori	$t0, $v0, 0X40
/* 000134 0x808A26E8 A6080090 */ sh	$t0, 0X90($s0)
/* 000135 0x808A26EC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000136 0x808A26F0 8FB0001C */ lw	$s0, 0X1C($sp)
/* 000137 0x808A26F4 8FB10020 */ lw	$s1, 0X20($sp)
/* 000138 0x808A26F8 03E00008 */ jr	$ra
/* 000139 0x808A26FC 27BD0058 */ addiu	$sp, $sp, 0X58


.section .late_rodata

glabel D_808A30B0
/* 000760 0x808A30B0 */ .word	0x3E051EB8
