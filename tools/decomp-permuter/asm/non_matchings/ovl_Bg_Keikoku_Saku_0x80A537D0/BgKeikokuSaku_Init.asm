glabel BgKeikokuSaku_Init
/* 000000 0x80A537D0 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000001 0x80A537D4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000002 0x80A537D8 00808025 */ move	$s0, $a0
/* 000003 0x80A537DC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000004 0x80A537E0 AFA50034 */ sw	$a1, 0X34($sp)
/* 000005 0x80A537E4 AFA00024 */ sw	$zero, 0X24($sp)
/* 000006 0x80A537E8 02002025 */ move	$a0, $s0
/* 000007 0x80A537EC 0C032B84 */ jal	BcCheck3_BgActorInit
/* 000008 0x80A537F0 00002825 */ move	$a1, $zero
/* 000009 0x80A537F4 3C040600 */ lui	$a0, 0x0600
/* 000010 0x80A537F8 24842300 */ addiu	$a0, $a0, 0X2300
/* 000011 0x80A537FC 0C032559 */ jal	BgCheck_RelocateMeshHeader
/* 000012 0x80A53800 27A50024 */ addiu	$a1, $sp, 0X24
/* 000013 0x80A53804 8FA40034 */ lw	$a0, 0X34($sp)
/* 000014 0x80A53808 02003025 */ move	$a2, $s0
/* 000015 0x80A5380C 8FA70024 */ lw	$a3, 0X24($sp)
/* 000016 0x80A53810 0C031862 */ jal	BgCheck_AddActorMesh
/* 000017 0x80A53814 24850880 */ addiu	$a1, $a0, 0X880
/* 000018 0x80A53818 860E001C */ lh	$t6, 0X1C($s0)
/* 000019 0x80A5381C AE020144 */ sw	$v0, 0X144($s0)
/* 000020 0x80A53820 31CF007F */ andi	$t7, $t6, 0X7F
/* 000021 0x80A53824 A60F0160 */ sh	$t7, 0X160($s0)
/* 000022 0x80A53828 86050160 */ lh	$a1, 0X160($s0)
/* 000023 0x80A5382C 0C02D6EC */ jal	Actor_GetSwitchFlag
/* 000024 0x80A53830 8FA40034 */ lw	$a0, 0X34($sp)
/* 000025 0x80A53834 10400005 */ beqz	$v0, .L80A5384C
/* 000026 0x80A53838 3C1880A5 */ lui	$t8, %hi(func_80A5389C)
/* 000027 0x80A5383C 3C0180A5 */ lui	$at, %hi(D_80A53B70)
/* 000028 0x80A53840 C4243B70 */ lwc1	$f4, %lo(D_80A53B70)($at)
/* 000029 0x80A53844 10000003 */ b	.L80A53854
/* 000030 0x80A53848 E604002C */ swc1	$f4, 0X2C($s0)
.L80A5384C:
/* 000031 0x80A5384C 2718389C */ addiu	$t8, $t8, %lo(func_80A5389C)
/* 000032 0x80A53850 AE18015C */ sw	$t8, 0X15C($s0)
.L80A53854:
/* 000033 0x80A53854 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000034 0x80A53858 8FB00018 */ lw	$s0, 0X18($sp)
/* 000035 0x80A5385C 27BD0030 */ addiu	$sp, $sp, 0X30
/* 000036 0x80A53860 03E00008 */ jr	$ra
/* 000037 0x80A53864 00000000 */ nop


.section .late_rodata

glabel D_80A53B70
/* 000232 0x80A53B70 */ .word	0x45263000
