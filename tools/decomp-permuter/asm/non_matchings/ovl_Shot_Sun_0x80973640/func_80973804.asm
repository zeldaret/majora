glabel func_80973804
/* 000113 0x80973804 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000114 0x80973808 AFB00030 */ sw	$s0, 0X30($sp)
/* 000115 0x8097380C 00808025 */ move	$s0, $a0
/* 000116 0x80973810 AFBF0034 */ sw	$ra, 0X34($sp)
/* 000117 0x80973814 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000118 0x80973818 82060038 */ lb	$a2, 0X38($s0)
/* 000119 0x8097381C 2401FFFF */ li	$at, -0X1
/* 000120 0x80973820 10C10006 */ beq	$a2, $at, .L8097383C
/* 000121 0x80973824 00062400 */ sll	$a0, $a2, 16
/* 000122 0x80973828 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000123 0x8097382C 00042403 */ sra	$a0, $a0, 16
/* 000124 0x80973830 10400020 */ beqz	$v0, .L809738B4
/* 000125 0x80973834 00000000 */ nop
/* 000126 0x80973838 82060038 */ lb	$a2, 0X38($s0)
.L8097383C:
/* 000127 0x8097383C 2401FFFF */ li	$at, -0X1
/* 000128 0x80973840 10C10004 */ beq	$a2, $at, .L80973854
/* 000129 0x80973844 00062400 */ sll	$a0, $a2, 16
/* 000130 0x80973848 00042403 */ sra	$a0, $a0, 16
/* 000131 0x8097384C 0C03C761 */ jal	ActorCutscene_Start
/* 000132 0x80973850 02002825 */ move	$a1, $s0
.L80973854:
/* 000133 0x80973854 C604000C */ lwc1	$f4, 0XC($s0)
/* 000134 0x80973858 3C0E8097 */ lui	$t6, %hi(func_80973740)
/* 000135 0x8097385C 25CE3740 */ addiu	$t6, $t6, %lo(func_80973740)
/* 000136 0x80973860 240F0032 */ li	$t7, 0X32
/* 000137 0x80973864 AE0E0190 */ sw	$t6, 0X190($s0)
/* 000138 0x80973868 A60F019A */ sh	$t7, 0X19A($s0)
/* 000139 0x8097386C 8E070008 */ lw	$a3, 0X8($s0)
/* 000140 0x80973870 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000141 0x80973874 C6060010 */ lwc1	$f6, 0X10($s0)
/* 000142 0x80973878 8FA5003C */ lw	$a1, 0X3C($sp)
/* 000143 0x8097387C 24190011 */ li	$t9, 0X11
/* 000144 0x80973880 AFB90024 */ sw	$t9, 0X24($sp)
/* 000145 0x80973884 AFA00020 */ sw	$zero, 0X20($sp)
/* 000146 0x80973888 AFA0001C */ sw	$zero, 0X1C($sp)
/* 000147 0x8097388C AFA00018 */ sw	$zero, 0X18($sp)
/* 000148 0x80973890 24060049 */ li	$a2, 0X49
/* 000149 0x80973894 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000150 0x80973898 0C02EB18 */ jal	Actor_Spawn
/* 000151 0x8097389C 24A41CA0 */ addiu	$a0, $a1, 0X1CA0
/* 000152 0x809738A0 260400EC */ addiu	$a0, $s0, 0XEC
/* 000153 0x809738A4 0C067C70 */ jal	func_8019F1C0
/* 000154 0x809738A8 2405287B */ li	$a1, 0X287B
/* 000155 0x809738AC 10000004 */ b	.L809738C0
/* 000156 0x809738B0 8FBF0034 */ lw	$ra, 0X34($sp)
.L809738B4:
/* 000157 0x809738B4 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000158 0x809738B8 82040038 */ lb	$a0, 0X38($s0)
/* 000159 0x809738BC 8FBF0034 */ lw	$ra, 0X34($sp)
.L809738C0:
/* 000160 0x809738C0 8FB00030 */ lw	$s0, 0X30($sp)
/* 000161 0x809738C4 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000162 0x809738C8 03E00008 */ jr	$ra
/* 000163 0x809738CC 00000000 */ nop

