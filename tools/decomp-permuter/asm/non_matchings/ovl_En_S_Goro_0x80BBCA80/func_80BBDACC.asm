glabel func_80BBDACC
/* 001043 0x80BBDACC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001044 0x80BBDAD0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001045 0x80BBDAD4 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001046 0x80BBDAD8 00803825 */ move	$a3, $a0
/* 001047 0x80BBDADC 8CE20308 */ lw	$v0, 0X308($a3)
/* 001048 0x80BBDAE0 2401000F */ li	$at, 0XF
/* 001049 0x80BBDAE4 54410025 */ bnel	$v0, $at, .L80BBDB7C
/* 001050 0x80BBDAE8 2401000C */ li	$at, 0XC
/* 001051 0x80BBDAEC 8CEE0144 */ lw	$t6, 0X144($a3)
/* 001052 0x80BBDAF0 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001053 0x80BBDAF4 3C010001 */ lui	$at, 0x0001
/* 001054 0x80BBDAF8 95CF03CC */ lhu	$t7, 0X3CC($t6)
/* 001055 0x80BBDAFC 34217D88 */ ori	$at, $at, 0X7D88
/* 001056 0x80BBDB00 240501D8 */ li	$a1, 0X1D8
/* 001057 0x80BBDB04 31F80001 */ andi	$t8, $t7, 0X1
/* 001058 0x80BBDB08 13000045 */ beqz	$t8, .L80BBDC20
/* 001059 0x80BBDB0C 00812021 */ addu	$a0, $a0, $at
/* 001060 0x80BBDB10 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 001061 0x80BBDB14 AFA70018 */ sw	$a3, 0X18($sp)
/* 001062 0x80BBDB18 8FA70018 */ lw	$a3, 0X18($sp)
/* 001063 0x80BBDB1C 00024900 */ sll	$t1, $v0, 4
/* 001064 0x80BBDB20 0440003F */ bltz	$v0, .L80BBDC20
/* 001065 0x80BBDB24 ACE201F4 */ sw	$v0, 0X1F4($a3)
/* 001066 0x80BBDB28 8FB9001C */ lw	$t9, 0X1C($sp)
/* 001067 0x80BBDB2C 01224821 */ addu	$t1, $t1, $v0
/* 001068 0x80BBDB30 00094880 */ sll	$t1, $t1, 2
/* 001069 0x80BBDB34 3C0B0001 */ lui	$t3, 0x0001
/* 001070 0x80BBDB38 03295021 */ addu	$t2, $t9, $t1
/* 001071 0x80BBDB3C 016A5821 */ addu	$t3, $t3, $t2
/* 001072 0x80BBDB40 8D6B7D98 */ lw	$t3, 0X7D98($t3)
/* 001073 0x80BBDB44 3C018000 */ lui	$at, 0x8000
/* 001074 0x80BBDB48 240D000C */ li	$t5, 0XC
/* 001075 0x80BBDB4C 01616021 */ addu	$t4, $t3, $at
/* 001076 0x80BBDB50 3C018020 */ lui	$at, %hi(gRspSegmentPhysAddrs + 0x18)
/* 001077 0x80BBDB54 AC2C8198 */ sw	$t4, %lo(gRspSegmentPhysAddrs + 0x18)($at)
/* 001078 0x80BBDB58 3C0580BC */ lui	$a1, %hi(D_80BBF878)
/* 001079 0x80BBDB5C ACED0308 */ sw	$t5, 0X308($a3)
/* 001080 0x80BBDB60 24A5F878 */ addiu	$a1, $a1, %lo(D_80BBF878)
/* 001081 0x80BBDB64 24E40148 */ addiu	$a0, $a3, 0X148
/* 001082 0x80BBDB68 0C04EF1B */ jal	func_8013BC6C
/* 001083 0x80BBDB6C 2406000C */ li	$a2, 0XC
/* 001084 0x80BBDB70 1000002C */ b	.L80BBDC24
/* 001085 0x80BBDB74 24020001 */ li	$v0, 0X1
/* 001086 0x80BBDB78 2401000C */ li	$at, 0XC
.L80BBDB7C:
/* 001087 0x80BBDB7C 54410029 */ bnel	$v0, $at, .L80BBDC24
/* 001088 0x80BBDB80 00001025 */ move	$v0, $zero
/* 001089 0x80BBDB84 8CEE0144 */ lw	$t6, 0X144($a3)
/* 001090 0x80BBDB88 8FA4001C */ lw	$a0, 0X1C($sp)
/* 001091 0x80BBDB8C 3C010001 */ lui	$at, 0x0001
/* 001092 0x80BBDB90 95CF03CC */ lhu	$t7, 0X3CC($t6)
/* 001093 0x80BBDB94 34217D88 */ ori	$at, $at, 0X7D88
/* 001094 0x80BBDB98 240500A1 */ li	$a1, 0XA1
/* 001095 0x80BBDB9C 31F80001 */ andi	$t8, $t7, 0X1
/* 001096 0x80BBDBA0 1700001F */ bnez	$t8, .L80BBDC20
/* 001097 0x80BBDBA4 00812021 */ addu	$a0, $a0, $at
/* 001098 0x80BBDBA8 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 001099 0x80BBDBAC AFA70018 */ sw	$a3, 0X18($sp)
/* 001100 0x80BBDBB0 8FA70018 */ lw	$a3, 0X18($sp)
/* 001101 0x80BBDBB4 00024900 */ sll	$t1, $v0, 4
/* 001102 0x80BBDBB8 04400019 */ bltz	$v0, .L80BBDC20
/* 001103 0x80BBDBBC ACE201F4 */ sw	$v0, 0X1F4($a3)
/* 001104 0x80BBDBC0 8FA8001C */ lw	$t0, 0X1C($sp)
/* 001105 0x80BBDBC4 01224821 */ addu	$t1, $t1, $v0
/* 001106 0x80BBDBC8 00094880 */ sll	$t1, $t1, 2
/* 001107 0x80BBDBCC 3C0B0001 */ lui	$t3, 0x0001
/* 001108 0x80BBDBD0 01095021 */ addu	$t2, $t0, $t1
/* 001109 0x80BBDBD4 016A5821 */ addu	$t3, $t3, $t2
/* 001110 0x80BBDBD8 8D6B7D98 */ lw	$t3, 0X7D98($t3)
/* 001111 0x80BBDBDC 3C018000 */ lui	$at, 0x8000
/* 001112 0x80BBDBE0 240D000F */ li	$t5, 0XF
/* 001113 0x80BBDBE4 01616021 */ addu	$t4, $t3, $at
/* 001114 0x80BBDBE8 3C018020 */ lui	$at, %hi(gRspSegmentPhysAddrs + 0x18)
/* 001115 0x80BBDBEC AC2C8198 */ sw	$t4, %lo(gRspSegmentPhysAddrs + 0x18)($at)
/* 001116 0x80BBDBF0 ACED0308 */ sw	$t5, 0X308($a3)
/* 001117 0x80BBDBF4 3C0580BC */ lui	$a1, %hi(D_80BBF878)
/* 001118 0x80BBDBF8 24A5F878 */ addiu	$a1, $a1, %lo(D_80BBF878)
/* 001119 0x80BBDBFC AFA70018 */ sw	$a3, 0X18($sp)
/* 001120 0x80BBDC00 24E40148 */ addiu	$a0, $a3, 0X148
/* 001121 0x80BBDC04 0C04EF1B */ jal	func_8013BC6C
/* 001122 0x80BBDC08 2406000F */ li	$a2, 0XF
/* 001123 0x80BBDC0C 8FA70018 */ lw	$a3, 0X18($sp)
/* 001124 0x80BBDC10 24020001 */ li	$v0, 0X1
/* 001125 0x80BBDC14 C4E40158 */ lwc1	$f4, 0X158($a3)
/* 001126 0x80BBDC18 10000002 */ b	.L80BBDC24
/* 001127 0x80BBDC1C E4E40160 */ swc1	$f4, 0X160($a3)
.L80BBDC20:
/* 001128 0x80BBDC20 00001025 */ move	$v0, $zero
.L80BBDC24:
/* 001129 0x80BBDC24 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001130 0x80BBDC28 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001131 0x80BBDC2C 03E00008 */ jr	$ra
/* 001132 0x80BBDC30 00000000 */ nop

