glabel func_80B50410
/* 000000 0x80B50410 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80B50414 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80B50418 84A300A4 */ lh	$v1, 0XA4($a1)
/* 000003 0x80B5041C 2401005E */ li	$at, 0X5E
/* 000004 0x80B50420 8CA21CCC */ lw	$v0, 0X1CCC($a1)
/* 000005 0x80B50424 54610053 */ bnel	$v1, $at, .L80B50574
/* 000006 0x80B50428 2401006B */ li	$at, 0X6B
/* 000007 0x80B5042C 904E014B */ lbu	$t6, 0X14B($v0)
/* 000008 0x80B50430 24010001 */ li	$at, 0X1
/* 000009 0x80B50434 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000010 0x80B50438 15C10029 */ bne	$t6, $at, .L80B504E0
/* 000011 0x80B5043C 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000012 0x80B50440 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000013 0x80B50444 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000014 0x80B50448 90A30F20 */ lbu	$v1, 0XF20($a1)
/* 000015 0x80B5044C 306F0080 */ andi	$t7, $v1, 0X80
/* 000016 0x80B50450 55E0001F */ bnezl	$t7, .L80B504D0
/* 000017 0x80B50454 948B01E4 */ lhu	$t3, 0X1E4($a0)
/* 000018 0x80B50458 9498031C */ lhu	$t8, 0X31C($a0)
/* 000019 0x80B5045C 2719F186 */ addiu	$t9, $t8, -0XE7A
/* 000020 0x80B50460 2F210006 */ sltiu	$at, $t9, 0X6
/* 000021 0x80B50464 10200017 */ beqz	$at, .L80B504C4
/* 000022 0x80B50468 0019C880 */ sll	$t9, $t9, 2
/* 000023 0x80B5046C 3C0180B5 */ lui	$at, %hi(jtbl_D_80B53400)
/* 000024 0x80B50470 00390821 */ addu	$at, $at, $t9
/* 000025 0x80B50474 8C393400 */ lw	$t9, %lo(jtbl_D_80B53400)($at)
/* 000026 0x80B50478 03200008 */ jr	$t9
/* 000027 0x80B5047C 00000000 */ nop
glabel L80B50480
.L80B50480:
/* 000028 0x80B50480 1000009F */ b	.L80B50700
/* 000029 0x80B50484 24020E7B */ li	$v0, 0XE7B
glabel L80B50488
.L80B50488:
/* 000030 0x80B50488 1000009D */ b	.L80B50700
/* 000031 0x80B5048C 24020E7C */ li	$v0, 0XE7C
glabel L80B50490
.L80B50490:
/* 000032 0x80B50490 1000009B */ b	.L80B50700
/* 000033 0x80B50494 24020E7D */ li	$v0, 0XE7D
glabel L80B50498
.L80B50498:
/* 000034 0x80B50498 10000099 */ b	.L80B50700
/* 000035 0x80B5049C 24020E7E */ li	$v0, 0XE7E
glabel L80B504A0
.L80B504A0:
/* 000036 0x80B504A0 10000097 */ b	.L80B50700
/* 000037 0x80B504A4 24020E7F */ li	$v0, 0XE7F
glabel L80B504A8
.L80B504A8:
/* 000038 0x80B504A8 34680080 */ ori	$t0, $v1, 0X80
/* 000039 0x80B504AC A0A80F20 */ sb	$t0, 0XF20($a1)
/* 000040 0x80B504B0 948901E4 */ lhu	$t1, 0X1E4($a0)
/* 000041 0x80B504B4 24020E80 */ li	$v0, 0XE80
/* 000042 0x80B504B8 352A0001 */ ori	$t2, $t1, 0X1
/* 000043 0x80B504BC 10000090 */ b	.L80B50700
/* 000044 0x80B504C0 A48A01E4 */ sh	$t2, 0X1E4($a0)
.L80B504C4:
/* 000045 0x80B504C4 1000008E */ b	.L80B50700
/* 000046 0x80B504C8 24020E7A */ li	$v0, 0XE7A
/* 000047 0x80B504CC 948B01E4 */ lhu	$t3, 0X1E4($a0)
.L80B504D0:
/* 000048 0x80B504D0 24020E81 */ li	$v0, 0XE81
/* 000049 0x80B504D4 356C0001 */ ori	$t4, $t3, 0X1
/* 000050 0x80B504D8 10000089 */ b	.L80B50700
/* 000051 0x80B504DC A48C01E4 */ sh	$t4, 0X1E4($a0)
.L80B504E0:
/* 000052 0x80B504E0 90A30F21 */ lbu	$v1, 0XF21($a1)
/* 000053 0x80B504E4 306D0001 */ andi	$t5, $v1, 0X1
/* 000054 0x80B504E8 55A0001D */ bnezl	$t5, .L80B50560
/* 000055 0x80B504EC 948901E4 */ lhu	$t1, 0X1E4($a0)
/* 000056 0x80B504F0 948E031C */ lhu	$t6, 0X31C($a0)
/* 000057 0x80B504F4 25CFF183 */ addiu	$t7, $t6, -0XE7D
/* 000058 0x80B504F8 2DE10007 */ sltiu	$at, $t7, 0X7
/* 000059 0x80B504FC 10200015 */ beqz	$at, .L80B50554
/* 000060 0x80B50500 000F7880 */ sll	$t7, $t7, 2
/* 000061 0x80B50504 3C0180B5 */ lui	$at, %hi(jtbl_D_80B53418)
/* 000062 0x80B50508 002F0821 */ addu	$at, $at, $t7
/* 000063 0x80B5050C 8C2F3418 */ lw	$t7, %lo(jtbl_D_80B53418)($at)
/* 000064 0x80B50510 01E00008 */ jr	$t7
/* 000065 0x80B50514 00000000 */ nop
glabel L80B50518
.L80B50518:
/* 000066 0x80B50518 10000079 */ b	.L80B50700
/* 000067 0x80B5051C 24020E83 */ li	$v0, 0XE83
glabel L80B50520
.L80B50520:
/* 000068 0x80B50520 10000077 */ b	.L80B50700
/* 000069 0x80B50524 24020E7D */ li	$v0, 0XE7D
glabel L80B50528
.L80B50528:
/* 000070 0x80B50528 10000075 */ b	.L80B50700
/* 000071 0x80B5052C 24020E7E */ li	$v0, 0XE7E
glabel L80B50530
.L80B50530:
/* 000072 0x80B50530 10000073 */ b	.L80B50700
/* 000073 0x80B50534 24020E7F */ li	$v0, 0XE7F
glabel L80B50538
.L80B50538:
/* 000074 0x80B50538 34780001 */ ori	$t8, $v1, 0X1
/* 000075 0x80B5053C A0B80F21 */ sb	$t8, 0XF21($a1)
/* 000076 0x80B50540 949901E4 */ lhu	$t9, 0X1E4($a0)
/* 000077 0x80B50544 24020E80 */ li	$v0, 0XE80
/* 000078 0x80B50548 37280001 */ ori	$t0, $t9, 0X1
/* 000079 0x80B5054C 1000006C */ b	.L80B50700
/* 000080 0x80B50550 A48801E4 */ sh	$t0, 0X1E4($a0)
glabel L80B50554
.L80B50554:
/* 000081 0x80B50554 1000006A */ b	.L80B50700
/* 000082 0x80B50558 24020E82 */ li	$v0, 0XE82
/* 000083 0x80B5055C 948901E4 */ lhu	$t1, 0X1E4($a0)
.L80B50560:
/* 000084 0x80B50560 24020E81 */ li	$v0, 0XE81
/* 000085 0x80B50564 352A0001 */ ori	$t2, $t1, 0X1
/* 000086 0x80B50568 10000065 */ b	.L80B50700
/* 000087 0x80B5056C A48A01E4 */ sh	$t2, 0X1E4($a0)
/* 000088 0x80B50570 2401006B */ li	$at, 0X6B
.L80B50574:
/* 000089 0x80B50574 54610062 */ bnel	$v1, $at, .L80B50700
/* 000090 0x80B50578 00001025 */ move	$v0, $zero
/* 000091 0x80B5057C 904B014B */ lbu	$t3, 0X14B($v0)
/* 000092 0x80B50580 24010001 */ li	$at, 0X1
/* 000093 0x80B50584 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000094 0x80B50588 15610041 */ bne	$t3, $at, .L80B50690
/* 000095 0x80B5058C 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000096 0x80B50590 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000097 0x80B50594 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000098 0x80B50598 90A30F21 */ lbu	$v1, 0XF21($a1)
/* 000099 0x80B5059C 306C0004 */ andi	$t4, $v1, 0X4
/* 000100 0x80B505A0 5580001B */ bnezl	$t4, .L80B50610
/* 000101 0x80B505A4 9482031C */ lhu	$v0, 0X31C($a0)
/* 000102 0x80B505A8 948D031C */ lhu	$t5, 0X31C($a0)
/* 000103 0x80B505AC 24010E88 */ li	$at, 0XE88
/* 000104 0x80B505B0 306E0008 */ andi	$t6, $v1, 0X8
/* 000105 0x80B505B4 15A10013 */ bne	$t5, $at, .L80B50604
/* 000106 0x80B505B8 00000000 */ nop
/* 000107 0x80B505BC 11C00007 */ beqz	$t6, .L80B505DC
/* 000108 0x80B505C0 00000000 */ nop
/* 000109 0x80B505C4 0C0453A4 */ jal	func_80114E90
/* 000110 0x80B505C8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000111 0x80B505CC 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000112 0x80B505D0 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000113 0x80B505D4 10400003 */ beqz	$v0, .L80B505E4
/* 000114 0x80B505D8 8FA40018 */ lw	$a0, 0X18($sp)
.L80B505DC:
/* 000115 0x80B505DC 10000048 */ b	.L80B50700
/* 000116 0x80B505E0 24020E89 */ li	$v0, 0XE89
.L80B505E4:
/* 000117 0x80B505E4 90AF0F21 */ lbu	$t7, 0XF21($a1)
/* 000118 0x80B505E8 24020E94 */ li	$v0, 0XE94
/* 000119 0x80B505EC 35F80004 */ ori	$t8, $t7, 0X4
/* 000120 0x80B505F0 A0B80F21 */ sb	$t8, 0XF21($a1)
/* 000121 0x80B505F4 949901E4 */ lhu	$t9, 0X1E4($a0)
/* 000122 0x80B505F8 37280001 */ ori	$t0, $t9, 0X1
/* 000123 0x80B505FC 10000040 */ b	.L80B50700
/* 000124 0x80B50600 A48801E4 */ sh	$t0, 0X1E4($a0)
.L80B50604:
/* 000125 0x80B50604 1000003E */ b	.L80B50700
/* 000126 0x80B50608 24020E88 */ li	$v0, 0XE88
/* 000127 0x80B5060C 9482031C */ lhu	$v0, 0X31C($a0)
.L80B50610:
/* 000128 0x80B50610 24010E8D */ li	$at, 0XE8D
/* 000129 0x80B50614 30690008 */ andi	$t1, $v1, 0X8
/* 000130 0x80B50618 10410003 */ beq	$v0, $at, .L80B50628
/* 000131 0x80B5061C 24010E98 */ li	$at, 0XE98
/* 000132 0x80B50620 54410014 */ bnel	$v0, $at, .L80B50674
/* 000133 0x80B50624 948E01E4 */ lhu	$t6, 0X1E4($a0)
.L80B50628:
/* 000134 0x80B50628 11200007 */ beqz	$t1, .L80B50648
/* 000135 0x80B5062C 00000000 */ nop
/* 000136 0x80B50630 0C0453A4 */ jal	func_80114E90
/* 000137 0x80B50634 AFA40018 */ sw	$a0, 0X18($sp)
/* 000138 0x80B50638 3C05801F */ lui	$a1, %hi(gSaveContext)
/* 000139 0x80B5063C 24A5F670 */ addiu	$a1, $a1, %lo(gSaveContext)
/* 000140 0x80B50640 10400003 */ beqz	$v0, .L80B50650
/* 000141 0x80B50644 8FA40018 */ lw	$a0, 0X18($sp)
.L80B50648:
/* 000142 0x80B50648 1000002D */ b	.L80B50700
/* 000143 0x80B5064C 24020E89 */ li	$v0, 0XE89
.L80B50650:
/* 000144 0x80B50650 90AA0F21 */ lbu	$t2, 0XF21($a1)
/* 000145 0x80B50654 24020E94 */ li	$v0, 0XE94
/* 000146 0x80B50658 354B0004 */ ori	$t3, $t2, 0X4
/* 000147 0x80B5065C A0AB0F21 */ sb	$t3, 0XF21($a1)
/* 000148 0x80B50660 948C01E4 */ lhu	$t4, 0X1E4($a0)
/* 000149 0x80B50664 358D0001 */ ori	$t5, $t4, 0X1
/* 000150 0x80B50668 10000025 */ b	.L80B50700
/* 000151 0x80B5066C A48D01E4 */ sh	$t5, 0X1E4($a0)
/* 000152 0x80B50670 948E01E4 */ lhu	$t6, 0X1E4($a0)
.L80B50674:
/* 000153 0x80B50674 31CF0010 */ andi	$t7, $t6, 0X10
/* 000154 0x80B50678 11E00003 */ beqz	$t7, .L80B50688
/* 000155 0x80B5067C 00000000 */ nop
/* 000156 0x80B50680 1000001F */ b	.L80B50700
/* 000157 0x80B50684 24020E8D */ li	$v0, 0XE8D
.L80B50688:
/* 000158 0x80B50688 1000001D */ b	.L80B50700
/* 000159 0x80B5068C 24020E98 */ li	$v0, 0XE98
.L80B50690:
/* 000160 0x80B50690 90A30F21 */ lbu	$v1, 0XF21($a1)
/* 000161 0x80B50694 30780002 */ andi	$t8, $v1, 0X2
/* 000162 0x80B50698 57000014 */ bnezl	$t8, .L80B506EC
/* 000163 0x80B5069C 948A01E4 */ lhu	$t2, 0X1E4($a0)
/* 000164 0x80B506A0 9482031C */ lhu	$v0, 0X31C($a0)
/* 000165 0x80B506A4 24010E85 */ li	$at, 0XE85
/* 000166 0x80B506A8 10410005 */ beq	$v0, $at, .L80B506C0
/* 000167 0x80B506AC 24010E86 */ li	$at, 0XE86
/* 000168 0x80B506B0 10410005 */ beq	$v0, $at, .L80B506C8
/* 000169 0x80B506B4 34790002 */ ori	$t9, $v1, 0X2
/* 000170 0x80B506B8 10000011 */ b	.L80B50700
/* 000171 0x80B506BC 24020E85 */ li	$v0, 0XE85
.L80B506C0:
/* 000172 0x80B506C0 1000000F */ b	.L80B50700
/* 000173 0x80B506C4 24020E86 */ li	$v0, 0XE86
.L80B506C8:
/* 000174 0x80B506C8 A0B90F21 */ sb	$t9, 0XF21($a1)
/* 000175 0x80B506CC 948801E4 */ lhu	$t0, 0X1E4($a0)
/* 000176 0x80B506D0 24020E87 */ li	$v0, 0XE87
/* 000177 0x80B506D4 35090001 */ ori	$t1, $t0, 0X1
/* 000178 0x80B506D8 10000009 */ b	.L80B50700
/* 000179 0x80B506DC A48901E4 */ sh	$t1, 0X1E4($a0)
/* 000180 0x80B506E0 10000007 */ b	.L80B50700
/* 000181 0x80B506E4 24020E85 */ li	$v0, 0XE85
/* 000182 0x80B506E8 948A01E4 */ lhu	$t2, 0X1E4($a0)
.L80B506EC:
/* 000183 0x80B506EC 24020E87 */ li	$v0, 0XE87
/* 000184 0x80B506F0 354B0001 */ ori	$t3, $t2, 0X1
/* 000185 0x80B506F4 10000002 */ b	.L80B50700
/* 000186 0x80B506F8 A48B01E4 */ sh	$t3, 0X1E4($a0)
/* 000187 0x80B506FC 00001025 */ move	$v0, $zero
.L80B50700:
/* 000188 0x80B50700 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000189 0x80B50704 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000190 0x80B50708 03E00008 */ jr	$ra
/* 000191 0x80B5070C 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80B53400
/* 003068 0x80B53400 */ .word	L80B50480
/* 003069 0x80B53404 */ .word	L80B50488
/* 003070 0x80B53408 */ .word	L80B50490
/* 003071 0x80B5340C */ .word	L80B50498
/* 003072 0x80B53410 */ .word	L80B504A0
/* 003073 0x80B53414 */ .word	L80B504A8
glabel jtbl_D_80B53418
/* 003074 0x80B53418 */ .word	L80B50528
/* 003075 0x80B5341C */ .word	L80B50530
/* 003076 0x80B53420 */ .word	L80B50538
/* 003077 0x80B53424 */ .word	L80B50554
/* 003078 0x80B53428 */ .word	L80B50554
/* 003079 0x80B5342C */ .word	L80B50518
/* 003080 0x80B53430 */ .word	L80B50520
