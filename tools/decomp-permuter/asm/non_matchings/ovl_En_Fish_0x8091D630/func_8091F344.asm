glabel func_8091F344
/* 001861 0x8091F344 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001862 0x8091F348 44800000 */ mtc1	$zero, $f0
/* 001863 0x8091F34C AFBF0014 */ sw	$ra, 0X14($sp)
/* 001864 0x8091F350 00803025 */ move	$a2, $a0
/* 001865 0x8091F354 E4C00074 */ swc1	$f0, 0X74($a2)
/* 001866 0x8091F358 E4C00078 */ swc1	$f0, 0X78($a2)
/* 001867 0x8091F35C AFA60018 */ sw	$a2, 0X18($sp)
/* 001868 0x8091F360 24040005 */ li	$a0, 0X5
/* 001869 0x8091F364 0C03FD14 */ jal	Math_Rand_S16Offset
/* 001870 0x8091F368 24050023 */ li	$a1, 0X23
/* 001871 0x8091F36C 8FA40018 */ lw	$a0, 0X18($sp)
/* 001872 0x8091F370 240E0001 */ li	$t6, 0X1
/* 001873 0x8091F374 240F05DC */ li	$t7, 0X5DC
/* 001874 0x8091F378 A4820240 */ sh	$v0, 0X240($a0)
/* 001875 0x8091F37C AC8E0248 */ sw	$t6, 0X248($a0)
/* 001876 0x8091F380 A4800268 */ sh	$zero, 0X268($a0)
/* 001877 0x8091F384 A480026C */ sh	$zero, 0X26C($a0)
/* 001878 0x8091F388 A48F026E */ sh	$t7, 0X26E($a0)
/* 001879 0x8091F38C 0C247598 */ jal	func_8091D660
/* 001880 0x8091F390 A4800272 */ sh	$zero, 0X272($a0)
/* 001881 0x8091F394 8FA60018 */ lw	$a2, 0X18($sp)
/* 001882 0x8091F398 44802000 */ mtc1	$zero, $f4
/* 001883 0x8091F39C 3C188092 */ lui	$t8, %hi(func_8091F3BC)
/* 001884 0x8091F3A0 2718F3BC */ addiu	$t8, $t8, %lo(func_8091F3BC)
/* 001885 0x8091F3A4 ACD8023C */ sw	$t8, 0X23C($a2)
/* 001886 0x8091F3A8 E4C4024C */ swc1	$f4, 0X24C($a2)
/* 001887 0x8091F3AC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001888 0x8091F3B0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001889 0x8091F3B4 03E00008 */ jr	$ra
/* 001890 0x8091F3B8 00000000 */ nop

