glabel DemoGetitem_Init
/* 000000 0x80A4FA40 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 000001 0x80A4FA44 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80A4FA48 AFA5002C */ sw	$a1, 0X2C($sp)
/* 000003 0x80A4FA4C 00803025 */ move	$a2, $a0
/* 000004 0x80A4FA50 84CE001C */ lh	$t6, 0X1C($a2)
/* 000005 0x80A4FA54 24010001 */ li	$at, 0X1
/* 000006 0x80A4FA58 00001825 */ move	$v1, $zero
/* 000007 0x80A4FA5C 31CF000F */ andi	$t7, $t6, 0XF
/* 000008 0x80A4FA60 15E10002 */ bne	$t7, $at, .L80A4FA6C
/* 000009 0x80A4FA64 00C02025 */ move	$a0, $a2
/* 000010 0x80A4FA68 24030001 */ li	$v1, 0X1
.L80A4FA6C:
/* 000011 0x80A4FA6C 3C053E80 */ lui	$a1, 0x3E80
/* 000012 0x80A4FA70 AFA3001C */ sw	$v1, 0X1C($sp)
/* 000013 0x80A4FA74 0C02D9F8 */ jal	Actor_SetScale
/* 000014 0x80A4FA78 AFA60028 */ sw	$a2, 0X28($sp)
/* 000015 0x80A4FA7C 8FA3001C */ lw	$v1, 0X1C($sp)
/* 000016 0x80A4FA80 8FA60028 */ lw	$a2, 0X28($sp)
/* 000017 0x80A4FA84 3C1880A5 */ lui	$t8, %hi(func_80A4FB10)
/* 000018 0x80A4FA88 2718FB10 */ addiu	$t8, $t8, %lo(func_80A4FB10)
/* 000019 0x80A4FA8C 3C1980A5 */ lui	$t9, %hi(D_80A4FD64)
/* 000020 0x80A4FA90 00031040 */ sll	$v0, $v1, 1
/* 000021 0x80A4FA94 0322C821 */ addu	$t9, $t9, $v0
/* 000022 0x80A4FA98 ACD8014C */ sw	$t8, 0X14C($a2)
/* 000023 0x80A4FA9C 8739FD64 */ lh	$t9, %lo(D_80A4FD64)($t9)
/* 000024 0x80A4FAA0 3C0880A5 */ lui	$t0, %hi(D_80A4FD68)
/* 000025 0x80A4FAA4 01024021 */ addu	$t0, $t0, $v0
/* 000026 0x80A4FAA8 A4D90144 */ sh	$t9, 0X144($a2)
/* 000027 0x80A4FAAC 9508FD68 */ lhu	$t0, %lo(D_80A4FD68)($t0)
/* 000028 0x80A4FAB0 3C010001 */ lui	$at, 0x0001
/* 000029 0x80A4FAB4 3C0580A5 */ lui	$a1, %hi(D_80A4FD60)
/* 000030 0x80A4FAB8 A4C80146 */ sh	$t0, 0X146($a2)
/* 000031 0x80A4FABC 8FA4002C */ lw	$a0, 0X2C($sp)
/* 000032 0x80A4FAC0 00A22821 */ addu	$a1, $a1, $v0
/* 000033 0x80A4FAC4 34217D88 */ ori	$at, $at, 0X7D88
/* 000034 0x80A4FAC8 84A5FD60 */ lh	$a1, %lo(D_80A4FD60)($a1)
/* 000035 0x80A4FACC 0C04BD82 */ jal	Scene_FindSceneObjectIndex
/* 000036 0x80A4FAD0 00812021 */ addu	$a0, $a0, $at
/* 000037 0x80A4FAD4 04410005 */ bgez	$v0, .L80A4FAEC
/* 000038 0x80A4FAD8 8FA60028 */ lw	$a2, 0X28($sp)
/* 000039 0x80A4FADC 0C02D9C3 */ jal	Actor_MarkForDeath
/* 000040 0x80A4FAE0 00C02025 */ move	$a0, $a2
/* 000041 0x80A4FAE4 10000003 */ b	.L80A4FAF4
/* 000042 0x80A4FAE8 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A4FAEC:
/* 000043 0x80A4FAEC A0C20148 */ sb	$v0, 0X148($a2)
/* 000044 0x80A4FAF0 8FBF0014 */ lw	$ra, 0X14($sp)
.L80A4FAF4:
/* 000045 0x80A4FAF4 27BD0028 */ addiu	$sp, $sp, 0X28
/* 000046 0x80A4FAF8 03E00008 */ jr	$ra
/* 000047 0x80A4FAFC 00000000 */ nop

