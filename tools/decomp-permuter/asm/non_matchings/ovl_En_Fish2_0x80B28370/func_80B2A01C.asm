glabel func_80B2A01C
/* 001835 0x80B2A01C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001836 0x80B2A020 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001837 0x80B2A024 00802825 */ move	$a1, $a0
/* 001838 0x80B2A028 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001839 0x80B2A02C AFA40018 */ sw	$a0, 0X18($sp)
/* 001840 0x80B2A030 84AE02B4 */ lh	$t6, 0X2B4($a1)
/* 001841 0x80B2A034 55C00014 */ bnezl	$t6, .L80B2A088
/* 001842 0x80B2A038 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001843 0x80B2A03C 84A402BA */ lh	$a0, 0X2BA($a1)
/* 001844 0x80B2A040 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 001845 0x80B2A044 AFA50018 */ sw	$a1, 0X18($sp)
/* 001846 0x80B2A048 14400005 */ bnez	$v0, .L80B2A060
/* 001847 0x80B2A04C 8FA50018 */ lw	$a1, 0X18($sp)
/* 001848 0x80B2A050 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 001849 0x80B2A054 84A402BA */ lh	$a0, 0X2BA($a1)
/* 001850 0x80B2A058 1000000B */ b	.L80B2A088
/* 001851 0x80B2A05C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B2A060:
/* 001852 0x80B2A060 240F000F */ li	$t7, 0XF
/* 001853 0x80B2A064 A4AF02B4 */ sh	$t7, 0X2B4($a1)
/* 001854 0x80B2A068 84A402BA */ lh	$a0, 0X2BA($a1)
/* 001855 0x80B2A06C 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 001856 0x80B2A070 AFA50018 */ sw	$a1, 0X18($sp)
/* 001857 0x80B2A074 8FA50018 */ lw	$a1, 0X18($sp)
/* 001858 0x80B2A078 3C1880B3 */ lui	$t8, %hi(func_80B2A094)
/* 001859 0x80B2A07C 2718A094 */ addiu	$t8, $t8, %lo(func_80B2A094)
/* 001860 0x80B2A080 ACB802A8 */ sw	$t8, 0X2A8($a1)
/* 001861 0x80B2A084 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B2A088:
/* 001862 0x80B2A088 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001863 0x80B2A08C 03E00008 */ jr	$ra
/* 001864 0x80B2A090 00000000 */ nop

