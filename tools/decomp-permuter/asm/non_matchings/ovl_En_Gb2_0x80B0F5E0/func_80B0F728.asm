glabel func_80B0F728
/* 000082 0x80B0F728 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000083 0x80B0F72C 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000084 0x80B0F730 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000085 0x80B0F734 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000086 0x80B0F738 90431010 */ lbu	$v1, 0X1010($v0)
/* 000087 0x80B0F73C 306E0010 */ andi	$t6, $v1, 0X10
/* 000088 0x80B0F740 11C00012 */ beqz	$t6, .L80B0F78C
/* 000089 0x80B0F744 306A0020 */ andi	$t2, $v1, 0X20
/* 000090 0x80B0F748 0C2C3EFC */ jal	func_80B0FBF0
/* 000091 0x80B0F74C AFA40018 */ sw	$a0, 0X18($sp)
/* 000092 0x80B0F750 8FA40018 */ lw	$a0, 0X18($sp)
/* 000093 0x80B0F754 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000094 0x80B0F758 240F14E1 */ li	$t7, 0X14E1
/* 000095 0x80B0F75C 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000096 0x80B0F760 A48F026E */ sh	$t7, 0X26E($a0)
/* 000097 0x80B0F764 90581010 */ lbu	$t8, 0X1010($v0)
/* 000098 0x80B0F768 2408000A */ li	$t0, 0XA
/* 000099 0x80B0F76C 2409001E */ li	$t1, 0X1E
/* 000100 0x80B0F770 33190080 */ andi	$t9, $t8, 0X80
/* 000101 0x80B0F774 13200003 */ beqz	$t9, .L80B0F784
/* 000102 0x80B0F778 00000000 */ nop
/* 000103 0x80B0F77C 10000011 */ b	.L80B0F7C4
/* 000104 0x80B0F780 A4880288 */ sh	$t0, 0X288($a0)
.L80B0F784:
/* 000105 0x80B0F784 1000000F */ b	.L80B0F7C4
/* 000106 0x80B0F788 A4890288 */ sh	$t1, 0X288($a0)
.L80B0F78C:
/* 000107 0x80B0F78C 1140000C */ beqz	$t2, .L80B0F7C0
/* 000108 0x80B0F790 240E14DC */ li	$t6, 0X14DC
/* 000109 0x80B0F794 0C2C3EFC */ jal	func_80B0FBF0
/* 000110 0x80B0F798 AFA40018 */ sw	$a0, 0X18($sp)
/* 000111 0x80B0F79C 8FA40018 */ lw	$a0, 0X18($sp)
/* 000112 0x80B0F7A0 3C02801F */ lui	$v0, %hi(gSaveContext)
/* 000113 0x80B0F7A4 240B14E0 */ li	$t3, 0X14E0
/* 000114 0x80B0F7A8 948C026C */ lhu	$t4, 0X26C($a0)
/* 000115 0x80B0F7AC 2442F670 */ addiu	$v0, $v0, %lo(gSaveContext)
/* 000116 0x80B0F7B0 A48B026E */ sh	$t3, 0X26E($a0)
/* 000117 0x80B0F7B4 358D0002 */ ori	$t5, $t4, 0X2
/* 000118 0x80B0F7B8 10000002 */ b	.L80B0F7C4
/* 000119 0x80B0F7BC A48D026C */ sh	$t5, 0X26C($a0)
.L80B0F7C0:
/* 000120 0x80B0F7C0 A48E026E */ sh	$t6, 0X26E($a0)
.L80B0F7C4:
/* 000121 0x80B0F7C4 904F1010 */ lbu	$t7, 0X1010($v0)
/* 000122 0x80B0F7C8 3C0B80B1 */ lui	$t3, %hi(func_80B10584)
/* 000123 0x80B0F7CC 256B0584 */ addiu	$t3, $t3, %lo(func_80B10584)
/* 000124 0x80B0F7D0 31F900EF */ andi	$t9, $t7, 0XEF
/* 000125 0x80B0F7D4 332900DF */ andi	$t1, $t9, 0XDF
/* 000126 0x80B0F7D8 A0591010 */ sb	$t9, 0X1010($v0)
/* 000127 0x80B0F7DC A0491010 */ sb	$t1, 0X1010($v0)
/* 000128 0x80B0F7E0 312A00BF */ andi	$t2, $t1, 0XBF
/* 000129 0x80B0F7E4 A04A1010 */ sb	$t2, 0X1010($v0)
/* 000130 0x80B0F7E8 AC8B0218 */ sw	$t3, 0X218($a0)
/* 000131 0x80B0F7EC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000132 0x80B0F7F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000133 0x80B0F7F4 03E00008 */ jr	$ra
/* 000134 0x80B0F7F8 00000000 */ nop

