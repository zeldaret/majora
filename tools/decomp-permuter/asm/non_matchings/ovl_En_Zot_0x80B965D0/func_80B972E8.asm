glabel func_80B972E8
/* 000838 0x80B972E8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000839 0x80B972EC 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000840 0x80B972F0 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000841 0x80B972F4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000842 0x80B972F8 00803025 */ move	$a2, $a0
/* 000843 0x80B972FC 00A03825 */ move	$a3, $a1
/* 000844 0x80B97300 90620F15 */ lbu	$v0, 0XF15($v1)
/* 000845 0x80B97304 304E0010 */ andi	$t6, $v0, 0X10
/* 000846 0x80B97308 51C00015 */ beqzl	$t6, .L80B97360
/* 000847 0x80B9730C 906A0020 */ lbu	$t2, 0X20($v1)
/* 000848 0x80B97310 906F0020 */ lbu	$t7, 0X20($v1)
/* 000849 0x80B97314 24010002 */ li	$at, 0X2
/* 000850 0x80B97318 30580001 */ andi	$t8, $v0, 0X1
/* 000851 0x80B9731C 15E10008 */ bne	$t7, $at, .L80B97340
/* 000852 0x80B97320 30480002 */ andi	$t0, $v0, 0X2
/* 000853 0x80B97324 13000003 */ beqz	$t8, .L80B97334
/* 000854 0x80B97328 2405126A */ li	$a1, 0X126A
/* 000855 0x80B9732C 1000001D */ b	.L80B973A4
/* 000856 0x80B97330 2405126D */ li	$a1, 0X126D
.L80B97334:
/* 000857 0x80B97334 34590001 */ ori	$t9, $v0, 0X1
/* 000858 0x80B97338 1000001A */ b	.L80B973A4
/* 000859 0x80B9733C A0790F15 */ sb	$t9, 0XF15($v1)
.L80B97340:
/* 000860 0x80B97340 11000003 */ beqz	$t0, .L80B97350
/* 000861 0x80B97344 24051267 */ li	$a1, 0X1267
/* 000862 0x80B97348 10000016 */ b	.L80B973A4
/* 000863 0x80B9734C 24051269 */ li	$a1, 0X1269
.L80B97350:
/* 000864 0x80B97350 34490002 */ ori	$t1, $v0, 0X2
/* 000865 0x80B97354 10000013 */ b	.L80B973A4
/* 000866 0x80B97358 A0690F15 */ sb	$t1, 0XF15($v1)
/* 000867 0x80B9735C 906A0020 */ lbu	$t2, 0X20($v1)
.L80B97360:
/* 000868 0x80B97360 24010002 */ li	$at, 0X2
/* 000869 0x80B97364 304B0004 */ andi	$t3, $v0, 0X4
/* 000870 0x80B97368 15410008 */ bne	$t2, $at, .L80B9738C
/* 000871 0x80B9736C 304D0008 */ andi	$t5, $v0, 0X8
/* 000872 0x80B97370 11600003 */ beqz	$t3, .L80B97380
/* 000873 0x80B97374 24051265 */ li	$a1, 0X1265
/* 000874 0x80B97378 1000000A */ b	.L80B973A4
/* 000875 0x80B9737C 24051266 */ li	$a1, 0X1266
.L80B97380:
/* 000876 0x80B97380 344C0004 */ ori	$t4, $v0, 0X4
/* 000877 0x80B97384 10000007 */ b	.L80B973A4
/* 000878 0x80B97388 A06C0F15 */ sb	$t4, 0XF15($v1)
.L80B9738C:
/* 000879 0x80B9738C 11A00003 */ beqz	$t5, .L80B9739C
/* 000880 0x80B97390 24051262 */ li	$a1, 0X1262
/* 000881 0x80B97394 10000003 */ b	.L80B973A4
/* 000882 0x80B97398 24051264 */ li	$a1, 0X1264
.L80B9739C:
/* 000883 0x80B9739C 344E0008 */ ori	$t6, $v0, 0X8
/* 000884 0x80B973A0 A06E0F15 */ sb	$t6, 0XF15($v1)
.L80B973A4:
/* 000885 0x80B973A4 0C05462C */ jal	func_801518B0
/* 000886 0x80B973A8 00E02025 */ move	$a0, $a3
/* 000887 0x80B973AC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000888 0x80B973B0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000889 0x80B973B4 03E00008 */ jr	$ra
/* 000890 0x80B973B8 00000000 */ nop

