glabel func_80BE2D4C
/* 000699 0x80BE2D4C 24050003 */ li	$a1, 0X3
/* 000700 0x80BE2D50 3C010001 */ lui	$at, 0x0001
/* 000701 0x80BE2D54 00811821 */ addu	$v1, $a0, $at
/* 000702 0x80BE2D58 946E6932 */ lhu	$t6, 0X6932($v1)
/* 000703 0x80BE2D5C 8C821CCC */ lw	$v0, 0X1CCC($a0)
/* 000704 0x80BE2D60 54AE002B */ bnel	$a1, $t6, .L80BE2E10
/* 000705 0x80BE2D64 00001025 */ move	$v0, $zero
/* 000706 0x80BE2D68 9044014B */ lbu	$a0, 0X14B($v0)
/* 000707 0x80BE2D6C 24060001 */ li	$a2, 0X1
/* 000708 0x80BE2D70 24070002 */ li	$a3, 0X2
/* 000709 0x80BE2D74 5086000F */ beql	$a0, $a2, .L80BE2DB4
/* 000710 0x80BE2D78 94786936 */ lhu	$t8, 0X6936($v1)
/* 000711 0x80BE2D7C 50870012 */ beql	$a0, $a3, .L80BE2DC8
/* 000712 0x80BE2D80 94796936 */ lhu	$t9, 0X6936($v1)
/* 000713 0x80BE2D84 10850005 */ beq	$a0, $a1, .L80BE2D9C
/* 000714 0x80BE2D88 24010004 */ li	$at, 0X4
/* 000715 0x80BE2D8C 50810013 */ beql	$a0, $at, .L80BE2DDC
/* 000716 0x80BE2D90 94626936 */ lhu	$v0, 0X6936($v1)
/* 000717 0x80BE2D94 1000001E */ b	.L80BE2E10
/* 000718 0x80BE2D98 00001025 */ move	$v0, $zero
.L80BE2D9C:
/* 000719 0x80BE2D9C 946F6936 */ lhu	$t7, 0X6936($v1)
/* 000720 0x80BE2DA0 55E0001B */ bnezl	$t7, .L80BE2E10
/* 000721 0x80BE2DA4 00001025 */ move	$v0, $zero
/* 000722 0x80BE2DA8 03E00008 */ jr	$ra
/* 000723 0x80BE2DAC 24020001 */ li	$v0, 0X1
/* 000724 0x80BE2DB0 94786936 */ lhu	$t8, 0X6936($v1)
.L80BE2DB4:
/* 000725 0x80BE2DB4 54D80016 */ bnel	$a2, $t8, .L80BE2E10
/* 000726 0x80BE2DB8 00001025 */ move	$v0, $zero
/* 000727 0x80BE2DBC 03E00008 */ jr	$ra
/* 000728 0x80BE2DC0 24020001 */ li	$v0, 0X1
/* 000729 0x80BE2DC4 94796936 */ lhu	$t9, 0X6936($v1)
.L80BE2DC8:
/* 000730 0x80BE2DC8 54F90011 */ bnel	$a3, $t9, .L80BE2E10
/* 000731 0x80BE2DCC 00001025 */ move	$v0, $zero
/* 000732 0x80BE2DD0 03E00008 */ jr	$ra
/* 000733 0x80BE2DD4 24020001 */ li	$v0, 0X1
/* 000734 0x80BE2DD8 94626936 */ lhu	$v0, 0X6936($v1)
.L80BE2DDC:
/* 000735 0x80BE2DDC 14400003 */ bnez	$v0, .L80BE2DEC
/* 000736 0x80BE2DE0 00000000 */ nop
/* 000737 0x80BE2DE4 03E00008 */ jr	$ra
/* 000738 0x80BE2DE8 24020001 */ li	$v0, 0X1
.L80BE2DEC:
/* 000739 0x80BE2DEC 14C20003 */ bne	$a2, $v0, .L80BE2DFC
/* 000740 0x80BE2DF0 00000000 */ nop
/* 000741 0x80BE2DF4 03E00008 */ jr	$ra
/* 000742 0x80BE2DF8 24020001 */ li	$v0, 0X1
.L80BE2DFC:
/* 000743 0x80BE2DFC 54E20004 */ bnel	$a3, $v0, .L80BE2E10
/* 000744 0x80BE2E00 00001025 */ move	$v0, $zero
/* 000745 0x80BE2E04 03E00008 */ jr	$ra
/* 000746 0x80BE2E08 24020001 */ li	$v0, 0X1
/* 000747 0x80BE2E0C 00001025 */ move	$v0, $zero
.L80BE2E10:
/* 000748 0x80BE2E10 03E00008 */ jr	$ra
/* 000749 0x80BE2E14 00000000 */ nop

