.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnAObj_Init
/* 000000 0x800A5AC0 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x800A5AC4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x800A5AC8 00808025 */ move	$s0, $a0
/* 000003 0x800A5ACC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x800A5AD0 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000005 0x800A5AD4 8602001C */ lh	$v0, 0X1C($s0)
/* 000006 0x800A5AD8 3C05801B */ lui	$a1, %hi(enAObjInitVar)
/* 000007 0x800A5ADC 24A5DEAC */ addiu	$a1, $a1, %lo(enAObjInitVar)
/* 000008 0x800A5AE0 00027203 */ sra	$t6, $v0, 8
/* 000009 0x800A5AE4 31CF00FF */ andi	$t7, $t6, 0XFF
/* 000010 0x800A5AE8 305900FF */ andi	$t9, $v0, 0XFF
/* 000011 0x800A5AEC 35F80300 */ ori	$t8, $t7, 0X300
/* 000012 0x800A5AF0 2728FFF7 */ addiu	$t0, $t9, -0X9
/* 000013 0x800A5AF4 A6180116 */ sh	$t8, 0X116($s0)
/* 000014 0x800A5AF8 A608001C */ sh	$t0, 0X1C($s0)
/* 000015 0x800A5AFC 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000016 0x800A5B00 02002025 */ move	$a0, $s0
/* 000017 0x800A5B04 3C06800B */ lui	$a2, %hi(func_800B3FC0)
/* 000018 0x800A5B08 24C63FC0 */ addiu	$a2, $a2, %lo(func_800B3FC0)
/* 000019 0x800A5B0C 260400BC */ addiu	$a0, $s0, 0XBC
/* 000020 0x800A5B10 24050000 */ li	$a1, 0X0
/* 000021 0x800A5B14 0C02CEE9 */ jal	Actor_SetDrawParams
/* 000022 0x800A5B18 3C074140 */ lui	$a3, 0x4140
/* 000023 0x800A5B1C 26050148 */ addiu	$a1, $s0, 0X148
/* 000024 0x800A5B20 3C07801B */ lui	$a3, %hi(enAObjCylinderInit)
/* 000025 0x800A5B24 24E7DE80 */ addiu	$a3, $a3, %lo(enAObjCylinderInit)
/* 000026 0x800A5B28 AFA50020 */ sw	$a1, 0X20($sp)
/* 000027 0x800A5B2C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000028 0x800A5B30 0C0384DD */ jal	Collision_InitCylinder
/* 000029 0x800A5B34 02003025 */ move	$a2, $s0
/* 000030 0x800A5B38 8FA50020 */ lw	$a1, 0X20($sp)
/* 000031 0x800A5B3C 0C039F7E */ jal	Collision_CylinderMoveToActor
/* 000032 0x800A5B40 02002025 */ move	$a0, $s0
/* 000033 0x800A5B44 3C0A800A */ lui	$t2, %hi(EnAObj_Update1)
/* 000034 0x800A5B48 240900FF */ li	$t1, 0XFF
/* 000035 0x800A5B4C 254A5B98 */ addiu	$t2, $t2, %lo(EnAObj_Update1)
/* 000036 0x800A5B50 A20900B6 */ sb	$t1, 0XB6($s0)
/* 000037 0x800A5B54 AE0A0144 */ sw	$t2, 0X144($s0)
/* 000038 0x800A5B58 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000039 0x800A5B5C 8FB00018 */ lw	$s0, 0X18($sp)
/* 000040 0x800A5B60 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000041 0x800A5B64 03E00008 */ jr	$ra
/* 000042 0x800A5B68 00000000 */ nop

glabel EnAObj_Destroy
/* 000043 0x800A5B6C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000044 0x800A5B70 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000045 0x800A5B74 00803025 */ move	$a2, $a0
/* 000046 0x800A5B78 00A03825 */ move	$a3, $a1
/* 000047 0x800A5B7C 00E02025 */ move	$a0, $a3
/* 000048 0x800A5B80 0C03847B */ jal	Collision_FiniCylinder
/* 000049 0x800A5B84 24C50148 */ addiu	$a1, $a2, 0X148
/* 000050 0x800A5B88 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000051 0x800A5B8C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000052 0x800A5B90 03E00008 */ jr	$ra
/* 000053 0x800A5B94 00000000 */ nop

glabel EnAObj_Update1
/* 000054 0x800A5B98 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000055 0x800A5B9C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000056 0x800A5BA0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000057 0x800A5BA4 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000058 0x800A5BA8 0C02E134 */ jal	func_800B84D0
/* 000059 0x800A5BAC AFA40018 */ sw	$a0, 0X18($sp)
/* 000060 0x800A5BB0 10400005 */ beqz	$v0, .L800A5BC8
/* 000061 0x800A5BB4 8FA40018 */ lw	$a0, 0X18($sp)
/* 000062 0x800A5BB8 3C0E800A */ lui	$t6, %hi(EnAObj_Update2)
/* 000063 0x800A5BBC 25CE5C28 */ addiu	$t6, $t6, %lo(EnAObj_Update2)
/* 000064 0x800A5BC0 10000015 */ b	.L800A5C18
/* 000065 0x800A5BC4 AC8E0144 */ sw	$t6, 0X144($a0)
.L800A5BC8:
/* 000066 0x800A5BC8 848F0092 */ lh	$t7, 0X92($a0)
/* 000067 0x800A5BCC 849800BE */ lh	$t8, 0XBE($a0)
/* 000068 0x800A5BD0 01F81023 */ subu	$v0, $t7, $t8
/* 000069 0x800A5BD4 00021400 */ sll	$v0, $v0, 16
/* 000070 0x800A5BD8 00021403 */ sra	$v0, $v0, 16
/* 000071 0x800A5BDC 04410003 */ bgez	$v0, .L800A5BEC
/* 000072 0x800A5BE0 00401825 */ move	$v1, $v0
/* 000073 0x800A5BE4 10000001 */ b	.L800A5BEC
/* 000074 0x800A5BE8 00021823 */ negu	$v1, $v0
.L800A5BEC:
/* 000075 0x800A5BEC 28612800 */ slti	$at, $v1, 0X2800
/* 000076 0x800A5BF0 14200007 */ bnez	$at, .L800A5C10
/* 000077 0x800A5BF4 00000000 */ nop
/* 000078 0x800A5BF8 8499001C */ lh	$t9, 0X1C($a0)
/* 000079 0x800A5BFC 24010001 */ li	$at, 0X1
/* 000080 0x800A5C00 17210005 */ bne	$t9, $at, .L800A5C18
/* 000081 0x800A5C04 28615801 */ slti	$at, $v1, 0X5801
/* 000082 0x800A5C08 54200004 */ bnezl	$at, .L800A5C1C
/* 000083 0x800A5C0C 8FBF0014 */ lw	$ra, 0X14($sp)
.L800A5C10:
/* 000084 0x800A5C10 0C02E18F */ jal	func_800B863C
/* 000085 0x800A5C14 8FA5001C */ lw	$a1, 0X1C($sp)
.L800A5C18:
/* 000086 0x800A5C18 8FBF0014 */ lw	$ra, 0X14($sp)
.L800A5C1C:
/* 000087 0x800A5C1C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000088 0x800A5C20 03E00008 */ jr	$ra
/* 000089 0x800A5C24 00000000 */ nop

glabel EnAObj_Update2
/* 000090 0x800A5C28 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000091 0x800A5C2C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000092 0x800A5C30 AFA40018 */ sw	$a0, 0X18($sp)
/* 000093 0x800A5C34 0C02E19F */ jal	func_800B867C
/* 000094 0x800A5C38 8FA40018 */ lw	$a0, 0X18($sp)
/* 000095 0x800A5C3C 10400004 */ beqz	$v0, .L800A5C50
/* 000096 0x800A5C40 8FAF0018 */ lw	$t7, 0X18($sp)
/* 000097 0x800A5C44 3C0E800A */ lui	$t6, %hi(EnAObj_Update1)
/* 000098 0x800A5C48 25CE5B98 */ addiu	$t6, $t6, %lo(EnAObj_Update1)
/* 000099 0x800A5C4C ADEE0144 */ sw	$t6, 0X144($t7)
.L800A5C50:
/* 000100 0x800A5C50 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000101 0x800A5C54 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000102 0x800A5C58 03E00008 */ jr	$ra
/* 000103 0x800A5C5C 00000000 */ nop

glabel EnAObj_Update
/* 000104 0x800A5C60 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000105 0x800A5C64 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000106 0x800A5C68 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000107 0x800A5C6C AFA40018 */ sw	$a0, 0X18($sp)
/* 000108 0x800A5C70 8C990144 */ lw	$t9, 0X144($a0)
/* 000109 0x800A5C74 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000110 0x800A5C78 0320F809 */ jalr	$t9
/* 000111 0x800A5C7C 00000000 */ nop
/* 000112 0x800A5C80 8FA40018 */ lw	$a0, 0X18($sp)
/* 000113 0x800A5C84 0C02D9D7 */ jal	Actor_SetHeight
/* 000114 0x800A5C88 3C054234 */ lui	$a1, 0x4234
/* 000115 0x800A5C8C 8FA4001C */ lw	$a0, 0X1C($sp)
/* 000116 0x800A5C90 8FA60018 */ lw	$a2, 0X18($sp)
/* 000117 0x800A5C94 3C010001 */ lui	$at, 0x0001
/* 000118 0x800A5C98 34218884 */ ori	$at, $at, 0X8884
/* 000119 0x800A5C9C 00812821 */ addu	$a1, $a0, $at
/* 000120 0x800A5CA0 0C038A4A */ jal	Collision_AddOT
/* 000121 0x800A5CA4 24C60148 */ addiu	$a2, $a2, 0X148
/* 000122 0x800A5CA8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000123 0x800A5CAC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000124 0x800A5CB0 03E00008 */ jr	$ra
/* 000125 0x800A5CB4 00000000 */ nop

glabel EnAObj_Draw
/* 000126 0x800A5CB8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000127 0x800A5CBC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000128 0x800A5CC0 00803825 */ move	$a3, $a0
/* 000129 0x800A5CC4 00A03025 */ move	$a2, $a1
/* 000130 0x800A5CC8 84EE001C */ lh	$t6, 0X1C($a3)
/* 000131 0x800A5CCC 3C05801B */ lui	$a1, %hi(enAObjDisplayLists)
/* 000132 0x800A5CD0 00C02025 */ move	$a0, $a2
/* 000133 0x800A5CD4 000E7880 */ sll	$t7, $t6, 2
/* 000134 0x800A5CD8 00AF2821 */ addu	$a1, $a1, $t7
/* 000135 0x800A5CDC 0C02F7F0 */ jal	func_800BDFC0
/* 000136 0x800A5CE0 8CA5DEB0 */ lw	$a1, %lo(enAObjDisplayLists)($a1)
/* 000137 0x800A5CE4 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000138 0x800A5CE8 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000139 0x800A5CEC 03E00008 */ jr	$ra
/* 000140 0x800A5CF0 00000000 */ nop
/* 000141 0x800A5CF4 00000000 */ nop
/* 000142 0x800A5CF8 00000000 */ nop
/* 000143 0x800A5CFC 00000000 */ nop
