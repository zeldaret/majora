glabel func_80A6FE30
/* 000868 0x80A6FE30 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000869 0x80A6FE34 AFBF001C */ sw	$ra, 0X1C($sp)
/* 000870 0x80A6FE38 AFA40020 */ sw	$a0, 0X20($sp)
/* 000871 0x80A6FE3C 0C02E27E */ jal	Actor_HasParent
/* 000872 0x80A6FE40 AFA50024 */ sw	$a1, 0X24($sp)
/* 000873 0x80A6FE44 8FA40020 */ lw	$a0, 0X20($sp)
/* 000874 0x80A6FE48 1040000C */ beqz	$v0, .L80A6FE7C
/* 000875 0x80A6FE4C 8FA50024 */ lw	$a1, 0X24($sp)
/* 000876 0x80A6FE50 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000877 0x80A6FE54 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000878 0x80A6FE58 90620F45 */ lbu	$v0, 0XF45($v1)
/* 000879 0x80A6FE5C 304E0001 */ andi	$t6, $v0, 0X1
/* 000880 0x80A6FE60 15C00002 */ bnez	$t6, .L80A6FE6C
/* 000881 0x80A6FE64 344F0001 */ ori	$t7, $v0, 0X1
/* 000882 0x80A6FE68 A06F0F45 */ sb	$t7, 0XF45($v1)
.L80A6FE6C:
/* 000883 0x80A6FE6C 0C29BFB6 */ jal	func_80A6FED8
/* 000884 0x80A6FE70 AC800120 */ sw	$zero, 0X120($a0)
/* 000885 0x80A6FE74 10000015 */ b	.L80A6FECC
/* 000886 0x80A6FE78 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A6FE7C:
/* 000887 0x80A6FE7C 3C03801F */ lui	$v1, %hi(gSaveContext)
/* 000888 0x80A6FE80 2463F670 */ addiu	$v1, $v1, %lo(gSaveContext)
/* 000889 0x80A6FE84 90780F45 */ lbu	$t8, 0XF45($v1)
/* 000890 0x80A6FE88 3C0743FA */ lui	$a3, 0x43FA
/* 000891 0x80A6FE8C 2406000C */ li	$a2, 0XC
/* 000892 0x80A6FE90 33190001 */ andi	$t9, $t8, 0X1
/* 000893 0x80A6FE94 13200008 */ beqz	$t9, .L80A6FEB8
/* 000894 0x80A6FE98 3C0142C8 */ lui	$at, 0x42C8
/* 000895 0x80A6FE9C 3C0142C8 */ lui	$at, 0x42C8
/* 000896 0x80A6FEA0 44812000 */ mtc1	$at, $f4
/* 000897 0x80A6FEA4 24060005 */ li	$a2, 0X5
/* 000898 0x80A6FEA8 0C02E287 */ jal	func_800B8A1C
/* 000899 0x80A6FEAC E7A40010 */ swc1	$f4, 0X10($sp)
/* 000900 0x80A6FEB0 10000006 */ b	.L80A6FECC
/* 000901 0x80A6FEB4 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A6FEB8:
/* 000902 0x80A6FEB8 44813000 */ mtc1	$at, $f6
/* 000903 0x80A6FEBC 3C0743FA */ lui	$a3, 0x43FA
/* 000904 0x80A6FEC0 0C02E287 */ jal	func_800B8A1C
/* 000905 0x80A6FEC4 E7A60010 */ swc1	$f6, 0X10($sp)
/* 000906 0x80A6FEC8 8FBF001C */ lw	$ra, 0X1C($sp)
.L80A6FECC:
/* 000907 0x80A6FECC 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000908 0x80A6FED0 03E00008 */ jr	$ra
/* 000909 0x80A6FED4 00000000 */ nop

