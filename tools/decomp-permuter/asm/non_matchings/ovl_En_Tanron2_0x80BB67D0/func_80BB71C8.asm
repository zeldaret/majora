glabel func_80BB71C8
/* 000638 0x80BB71C8 27BDFF48 */ addiu	$sp, $sp, -0XB8
/* 000639 0x80BB71CC AFB3006C */ sw	$s3, 0X6C($sp)
/* 000640 0x80BB71D0 AFB10064 */ sw	$s1, 0X64($sp)
/* 000641 0x80BB71D4 00808825 */ move	$s1, $a0
/* 000642 0x80BB71D8 00A09825 */ move	$s3, $a1
/* 000643 0x80BB71DC AFBF0084 */ sw	$ra, 0X84($sp)
/* 000644 0x80BB71E0 AFBE0080 */ sw	$fp, 0X80($sp)
/* 000645 0x80BB71E4 AFB7007C */ sw	$s7, 0X7C($sp)
/* 000646 0x80BB71E8 AFB60078 */ sw	$s6, 0X78($sp)
/* 000647 0x80BB71EC AFB50074 */ sw	$s5, 0X74($sp)
/* 000648 0x80BB71F0 AFB40070 */ sw	$s4, 0X70($sp)
/* 000649 0x80BB71F4 AFB20068 */ sw	$s2, 0X68($sp)
/* 000650 0x80BB71F8 AFB00060 */ sw	$s0, 0X60($sp)
/* 000651 0x80BB71FC F7BE0058 */ sdc1	$f30, 0X58($sp)
/* 000652 0x80BB7200 F7BC0050 */ sdc1	$f28, 0X50($sp)
/* 000653 0x80BB7204 F7BA0048 */ sdc1	$f26, 0X48($sp)
/* 000654 0x80BB7208 F7B80040 */ sdc1	$f24, 0X40($sp)
/* 000655 0x80BB720C F7B60038 */ sdc1	$f22, 0X38($sp)
/* 000656 0x80BB7210 F7B40030 */ sdc1	$f20, 0X30($sp)
/* 000657 0x80BB7214 3C0142C8 */ lui	$at, 0x42C8
/* 000658 0x80BB7218 4481F000 */ mtc1	$at, $f30
/* 000659 0x80BB721C 3C014120 */ lui	$at, 0x4120
/* 000660 0x80BB7220 4481E000 */ mtc1	$at, $f28
/* 000661 0x80BB7224 3C0140A0 */ lui	$at, 0x40A0
/* 000662 0x80BB7228 4481D000 */ mtc1	$at, $f26
/* 000663 0x80BB722C 3C0180BC */ lui	$at, %hi(D_80BB81FC)
/* 000664 0x80BB7230 C43881FC */ lwc1	$f24, %lo(D_80BB81FC)($at)
/* 000665 0x80BB7234 3C0180BC */ lui	$at, %hi(D_80BB8200)
/* 000666 0x80BB7238 3C1780BC */ lui	$s7, %hi(D_80BB81EC)
/* 000667 0x80BB723C 3C1680BC */ lui	$s6, %hi(D_80BB81E8)
/* 000668 0x80BB7240 26D681E8 */ addiu	$s6, $s6, %lo(D_80BB81E8)
/* 000669 0x80BB7244 26F781EC */ addiu	$s7, $s7, %lo(D_80BB81EC)
/* 000670 0x80BB7248 C4368200 */ lwc1	$f22, %lo(D_80BB8200)($at)
/* 000671 0x80BB724C 00008025 */ move	$s0, $zero
/* 000672 0x80BB7250 241E000F */ li	$fp, 0XF
/* 000673 0x80BB7254 27B5009C */ addiu	$s5, $sp, 0X9C
/* 000674 0x80BB7258 27B40090 */ addiu	$s4, $sp, 0X90
/* 000675 0x80BB725C 27B200A8 */ addiu	$s2, $sp, 0XA8
.L80BB7260:
/* 000676 0x80BB7260 0C05E565 */ jal	randZeroOneScaled
/* 000677 0x80BB7264 4600C306 */ mov.s	$f12, $f24
/* 000678 0x80BB7268 46000306 */ mov.s	$f12, $f0
/* 000679 0x80BB726C 0C0602D2 */ jal	SysMatrix_InsertYRotation_f
/* 000680 0x80BB7270 00002825 */ move	$a1, $zero
/* 000681 0x80BB7274 0C05E565 */ jal	randZeroOneScaled
/* 000682 0x80BB7278 4600C306 */ mov.s	$f12, $f24
/* 000683 0x80BB727C 0C0601EE */ jal	SysMatrix_RotateStateAroundXAxis
/* 000684 0x80BB7280 46000306 */ mov.s	$f12, $f0
/* 000685 0x80BB7284 0C05E565 */ jal	randZeroOneScaled
/* 000686 0x80BB7288 4600E306 */ mov.s	$f12, $f28
/* 000687 0x80BB728C 461A0300 */ add.s	$f12, $f0, $f26
/* 000688 0x80BB7290 0C060704 */ jal	SysMatrix_GetStateTranslationAndScaledZ
/* 000689 0x80BB7294 02402825 */ move	$a1, $s2
/* 000690 0x80BB7298 C6240024 */ lwc1	$f4, 0X24($s1)
/* 000691 0x80BB729C C7A600A8 */ lwc1	$f6, 0XA8($sp)
/* 000692 0x80BB72A0 C7B000AC */ lwc1	$f16, 0XAC($sp)
/* 000693 0x80BB72A4 4600F306 */ mov.s	$f12, $f30
/* 000694 0x80BB72A8 46062200 */ add.s	$f8, $f4, $f6
/* 000695 0x80BB72AC E7A80090 */ swc1	$f8, 0X90($sp)
/* 000696 0x80BB72B0 C62A0028 */ lwc1	$f10, 0X28($s1)
/* 000697 0x80BB72B4 C7A800B0 */ lwc1	$f8, 0XB0($sp)
/* 000698 0x80BB72B8 46105480 */ add.s	$f18, $f10, $f16
/* 000699 0x80BB72BC E7B20094 */ swc1	$f18, 0X94($sp)
/* 000700 0x80BB72C0 C624002C */ lwc1	$f4, 0X2C($s1)
/* 000701 0x80BB72C4 46163482 */ mul.s	$f18, $f6, $f22
/* 000702 0x80BB72C8 46082280 */ add.s	$f10, $f4, $f8
/* 000703 0x80BB72CC 46168102 */ mul.s	$f4, $f16, $f22
/* 000704 0x80BB72D0 E7AA0098 */ swc1	$f10, 0X98($sp)
/* 000705 0x80BB72D4 46164282 */ mul.s	$f10, $f8, $f22
/* 000706 0x80BB72D8 E7B2009C */ swc1	$f18, 0X9C($sp)
/* 000707 0x80BB72DC E7A400A0 */ swc1	$f4, 0XA0($sp)
/* 000708 0x80BB72E0 0C05E565 */ jal	randZeroOneScaled
/* 000709 0x80BB72E4 E7AA00A4 */ swc1	$f10, 0XA4($sp)
/* 000710 0x80BB72E8 46000506 */ mov.s	$f20, $f0
/* 000711 0x80BB72EC 0C05E565 */ jal	randZeroOneScaled
/* 000712 0x80BB72F0 4600D306 */ mov.s	$f12, $f26
/* 000713 0x80BB72F4 3C014348 */ lui	$at, 0x4348
/* 000714 0x80BB72F8 44813000 */ mtc1	$at, $f6
/* 000715 0x80BB72FC 3C014170 */ lui	$at, 0x4170
/* 000716 0x80BB7300 44812000 */ mtc1	$at, $f4
/* 000717 0x80BB7304 4606A480 */ add.s	$f18, $f20, $f6
/* 000718 0x80BB7308 02602025 */ move	$a0, $s3
/* 000719 0x80BB730C 02802825 */ move	$a1, $s4
/* 000720 0x80BB7310 46040200 */ add.s	$f8, $f0, $f4
/* 000721 0x80BB7314 02403025 */ move	$a2, $s2
/* 000722 0x80BB7318 02A03825 */ move	$a3, $s5
/* 000723 0x80BB731C 4600940D */ trunc.w.s	$f16, $f18
/* 000724 0x80BB7320 AFB60010 */ sw	$s6, 0X10($sp)
/* 000725 0x80BB7324 AFB70014 */ sw	$s7, 0X14($sp)
/* 000726 0x80BB7328 4600428D */ trunc.w.s	$f10, $f8
/* 000727 0x80BB732C 440F8000 */ mfc1	$t7, $f16
/* 000728 0x80BB7330 AFA00020 */ sw	$zero, 0X20($sp)
/* 000729 0x80BB7334 44195000 */ mfc1	$t9, $f10
/* 000730 0x80BB7338 AFAF0018 */ sw	$t7, 0X18($sp)
/* 000731 0x80BB733C 0C02C843 */ jal	EffectSS_SpawnBigOctoBubble2
/* 000732 0x80BB7340 AFB9001C */ sw	$t9, 0X1C($sp)
/* 000733 0x80BB7344 26100001 */ addiu	$s0, $s0, 0X1
/* 000734 0x80BB7348 161EFFC5 */ bne	$s0, $fp, .L80BB7260
/* 000735 0x80BB734C 00000000 */ nop
/* 000736 0x80BB7350 8FBF0084 */ lw	$ra, 0X84($sp)
/* 000737 0x80BB7354 D7B40030 */ ldc1	$f20, 0X30($sp)
/* 000738 0x80BB7358 D7B60038 */ ldc1	$f22, 0X38($sp)
/* 000739 0x80BB735C D7B80040 */ ldc1	$f24, 0X40($sp)
/* 000740 0x80BB7360 D7BA0048 */ ldc1	$f26, 0X48($sp)
/* 000741 0x80BB7364 D7BC0050 */ ldc1	$f28, 0X50($sp)
/* 000742 0x80BB7368 D7BE0058 */ ldc1	$f30, 0X58($sp)
/* 000743 0x80BB736C 8FB00060 */ lw	$s0, 0X60($sp)
/* 000744 0x80BB7370 8FB10064 */ lw	$s1, 0X64($sp)
/* 000745 0x80BB7374 8FB20068 */ lw	$s2, 0X68($sp)
/* 000746 0x80BB7378 8FB3006C */ lw	$s3, 0X6C($sp)
/* 000747 0x80BB737C 8FB40070 */ lw	$s4, 0X70($sp)
/* 000748 0x80BB7380 8FB50074 */ lw	$s5, 0X74($sp)
/* 000749 0x80BB7384 8FB60078 */ lw	$s6, 0X78($sp)
/* 000750 0x80BB7388 8FB7007C */ lw	$s7, 0X7C($sp)
/* 000751 0x80BB738C 8FBE0080 */ lw	$fp, 0X80($sp)
/* 000752 0x80BB7390 03E00008 */ jr	$ra
/* 000753 0x80BB7394 27BD00B8 */ addiu	$sp, $sp, 0XB8


.section .late_rodata

glabel D_80BB81FC
/* 001675 0x80BB81FC */ .word	0x40C90FDB
glabel D_80BB8200
/* 001676 0x80BB8200 */ .word	0xBCF5C28F
