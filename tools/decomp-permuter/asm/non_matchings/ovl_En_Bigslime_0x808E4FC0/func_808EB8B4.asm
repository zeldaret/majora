glabel func_808EB8B4
/* 006717 0x808EB8B4 27BDFFD8 */ addiu	$sp, $sp, -0X28
/* 006718 0x808EB8B8 AFB00018 */ sw	$s0, 0X18($sp)
/* 006719 0x808EB8BC 00808025 */ move	$s0, $a0
/* 006720 0x808EB8C0 AFBF001C */ sw	$ra, 0X1C($sp)
/* 006721 0x808EB8C4 AFA5002C */ sw	$a1, 0X2C($sp)
/* 006722 0x808EB8C8 0C03C81F */ jal	ActorCutscene_GetCurrentIndex
/* 006723 0x808EB8CC 00000000 */ nop
/* 006724 0x808EB8D0 2401007D */ li	$at, 0X7D
/* 006725 0x808EB8D4 14410007 */ bne	$v0, $at, .L808EB8F4
/* 006726 0x808EB8D8 00000000 */ nop
/* 006727 0x808EB8DC 0C03C7EF */ jal	ActorCutscene_Stop
/* 006728 0x808EB8E0 2404007D */ li	$a0, 0X7D
/* 006729 0x808EB8E4 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 006730 0x808EB8E8 860402B8 */ lh	$a0, 0X2B8($s0)
/* 006731 0x808EB8EC 1000003A */ b	.L808EB9D8
/* 006732 0x808EB8F0 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB8F4:
/* 006733 0x808EB8F4 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 006734 0x808EB8F8 860402B8 */ lh	$a0, 0X2B8($s0)
/* 006735 0x808EB8FC 10400033 */ beqz	$v0, .L808EB9CC
/* 006736 0x808EB900 02002825 */ move	$a1, $s0
/* 006737 0x808EB904 0C03C761 */ jal	ActorCutscene_Start
/* 006738 0x808EB908 860402B8 */ lh	$a0, 0X2B8($s0)
/* 006739 0x808EB90C 8E0E018C */ lw	$t6, 0X18C($s0)
/* 006740 0x808EB910 3C03808E */ lui	$v1, %hi(func_808E7B80)
/* 006741 0x808EB914 24637B80 */ addiu	$v1, $v1, %lo(func_808E7B80)
/* 006742 0x808EB918 106E0006 */ beq	$v1, $t6, .L808EB934
/* 006743 0x808EB91C 8FA4002C */ lw	$a0, 0X2C($sp)
/* 006744 0x808EB920 02002825 */ move	$a1, $s0
/* 006745 0x808EB924 24060007 */ li	$a2, 0X7
/* 006746 0x808EB928 0C02DC93 */ jal	func_800B724C
/* 006747 0x808EB92C AFA30024 */ sw	$v1, 0X24($sp)
/* 006748 0x808EB930 8FA30024 */ lw	$v1, 0X24($sp)
.L808EB934:
/* 006749 0x808EB934 860402B8 */ lh	$a0, 0X2B8($s0)
/* 006750 0x808EB938 0C03C86E */ jal	ActorCutscene_GetCurrentCamera
/* 006751 0x808EB93C AFA30024 */ sw	$v1, 0X24($sp)
/* 006752 0x808EB940 920F00B7 */ lbu	$t7, 0XB7($s0)
/* 006753 0x808EB944 8FA30024 */ lw	$v1, 0X24($sp)
/* 006754 0x808EB948 A60202C6 */ sh	$v0, 0X2C6($s0)
/* 006755 0x808EB94C 15E00005 */ bnez	$t7, .L808EB964
/* 006756 0x808EB950 02002025 */ move	$a0, $s0
/* 006757 0x808EB954 0C23ABAF */ jal	func_808EAEBC
/* 006758 0x808EB958 8FA5002C */ lw	$a1, 0X2C($sp)
/* 006759 0x808EB95C 1000001E */ b	.L808EB9D8
/* 006760 0x808EB960 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB964:
/* 006761 0x808EB964 8E02018C */ lw	$v0, 0X18C($s0)
/* 006762 0x808EB968 3C18808F */ lui	$t8, %hi(func_808EA9B8)
/* 006763 0x808EB96C 2718A9B8 */ addiu	$t8, $t8, %lo(func_808EA9B8)
/* 006764 0x808EB970 13020007 */ beq	$t8, $v0, .L808EB990
/* 006765 0x808EB974 3C19808F */ lui	$t9, %hi(func_808EA2D0)
/* 006766 0x808EB978 2739A2D0 */ addiu	$t9, $t9, %lo(func_808EA2D0)
/* 006767 0x808EB97C 13220004 */ beq	$t9, $v0, .L808EB990
/* 006768 0x808EB980 3C08808F */ lui	$t0, %hi(func_808EAA8C)
/* 006769 0x808EB984 2508AA8C */ addiu	$t0, $t0, %lo(func_808EAA8C)
/* 006770 0x808EB988 15020005 */ bne	$t0, $v0, .L808EB9A0
/* 006771 0x808EB98C 00000000 */ nop
.L808EB990:
/* 006772 0x808EB990 0C23AABE */ jal	func_808EAAF8
/* 006773 0x808EB994 02002025 */ move	$a0, $s0
/* 006774 0x808EB998 1000000F */ b	.L808EB9D8
/* 006775 0x808EB99C 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB9A0:
/* 006776 0x808EB9A0 14620006 */ bne	$v1, $v0, .L808EB9BC
/* 006777 0x808EB9A4 02002025 */ move	$a0, $s0
/* 006778 0x808EB9A8 02002025 */ move	$a0, $s0
/* 006779 0x808EB9AC 0C23A22E */ jal	func_808E88B8
/* 006780 0x808EB9B0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 006781 0x808EB9B4 10000008 */ b	.L808EB9D8
/* 006782 0x808EB9B8 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB9BC:
/* 006783 0x808EB9BC 0C239B56 */ jal	func_808E6D58
/* 006784 0x808EB9C0 8FA5002C */ lw	$a1, 0X2C($sp)
/* 006785 0x808EB9C4 10000004 */ b	.L808EB9D8
/* 006786 0x808EB9C8 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB9CC:
/* 006787 0x808EB9CC 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 006788 0x808EB9D0 860402B8 */ lh	$a0, 0X2B8($s0)
/* 006789 0x808EB9D4 8FBF001C */ lw	$ra, 0X1C($sp)
.L808EB9D8:
/* 006790 0x808EB9D8 8FB00018 */ lw	$s0, 0X18($sp)
/* 006791 0x808EB9DC 27BD0028 */ addiu	$sp, $sp, 0X28
/* 006792 0x808EB9E0 03E00008 */ jr	$ra
/* 006793 0x808EB9E4 00000000 */ nop

