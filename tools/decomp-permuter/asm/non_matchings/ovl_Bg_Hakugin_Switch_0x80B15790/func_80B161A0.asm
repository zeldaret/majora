glabel func_80B161A0
/* 000644 0x80B161A0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000645 0x80B161A4 AFB00018 */ sw	$s0, 0X18($sp)
/* 000646 0x80B161A8 00808025 */ move	$s0, $a0
/* 000647 0x80B161AC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000648 0x80B161B0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000649 0x80B161B4 0C03C6F9 */ jal	ActorCutscene_GetCanPlayNext
/* 000650 0x80B161B8 860401BC */ lh	$a0, 0X1BC($s0)
/* 000651 0x80B161BC 1040001A */ beqz	$v0, .L80B16228
/* 000652 0x80B161C0 02002825 */ move	$a1, $s0
/* 000653 0x80B161C4 0C03C71A */ jal	ActorCutscene_StartAndSetUnkLinkFields
/* 000654 0x80B161C8 860401BC */ lh	$a0, 0X1BC($s0)
/* 000655 0x80B161CC 820E01BE */ lb	$t6, 0X1BE($s0)
/* 000656 0x80B161D0 51C00009 */ beqzl	$t6, .L80B161F8
/* 000657 0x80B161D4 8605001C */ lh	$a1, 0X1C($s0)
/* 000658 0x80B161D8 8605001C */ lh	$a1, 0X1C($s0)
/* 000659 0x80B161DC 8FA40024 */ lw	$a0, 0X24($sp)
/* 000660 0x80B161E0 00052A03 */ sra	$a1, $a1, 8
/* 000661 0x80B161E4 0C02D6FD */ jal	Actor_SetSwitchFlag
/* 000662 0x80B161E8 30A5007F */ andi	$a1, $a1, 0X7F
/* 000663 0x80B161EC 10000007 */ b	.L80B1620C
/* 000664 0x80B161F0 8E1901B4 */ lw	$t9, 0X1B4($s0)
/* 000665 0x80B161F4 8605001C */ lh	$a1, 0X1C($s0)
.L80B161F8:
/* 000666 0x80B161F8 8FA40024 */ lw	$a0, 0X24($sp)
/* 000667 0x80B161FC 00052A03 */ sra	$a1, $a1, 8
/* 000668 0x80B16200 0C02D70D */ jal	Actor_UnsetSwitchFlag
/* 000669 0x80B16204 30A5007F */ andi	$a1, $a1, 0X7F
/* 000670 0x80B16208 8E1901B4 */ lw	$t9, 0X1B4($s0)
.L80B1620C:
/* 000671 0x80B1620C 240F0032 */ li	$t7, 0X32
/* 000672 0x80B16210 A20F01BF */ sb	$t7, 0X1BF($s0)
/* 000673 0x80B16214 8FA50024 */ lw	$a1, 0X24($sp)
/* 000674 0x80B16218 0320F809 */ jalr	$t9
/* 000675 0x80B1621C 02002025 */ move	$a0, $s0
/* 000676 0x80B16220 10000004 */ b	.L80B16234
/* 000677 0x80B16224 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B16228:
/* 000678 0x80B16228 0C03C6E9 */ jal	ActorCutscene_SetIntentToPlay
/* 000679 0x80B1622C 860401BC */ lh	$a0, 0X1BC($s0)
/* 000680 0x80B16230 8FBF001C */ lw	$ra, 0X1C($sp)
.L80B16234:
/* 000681 0x80B16234 8FB00018 */ lw	$s0, 0X18($sp)
/* 000682 0x80B16238 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000683 0x80B1623C 03E00008 */ jr	$ra
/* 000684 0x80B16240 00000000 */ nop

