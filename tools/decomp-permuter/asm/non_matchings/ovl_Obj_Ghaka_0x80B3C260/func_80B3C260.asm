glabel func_80B3C260
/* 000000 0x80B3C260 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF0C)
/* 000001 0x80B3C264 91CE057C */ lbu	$t6, %lo(gSaveContext + 0xF0C)($t6)
/* 000002 0x80B3C268 3C1880B4 */ lui	$t8, %hi(func_80B3C39C)
/* 000003 0x80B3C26C 3C0142C8 */ lui	$at, 0x42C8
/* 000004 0x80B3C270 31CF0020 */ andi	$t7, $t6, 0X20
/* 000005 0x80B3C274 11E00006 */ beqz	$t7, .L80B3C290
/* 000006 0x80B3C278 2718C39C */ addiu	$t8, $t8, %lo(func_80B3C39C)
/* 000007 0x80B3C27C C4840010 */ lwc1	$f4, 0X10($a0)
/* 000008 0x80B3C280 44813000 */ mtc1	$at, $f6
/* 000009 0x80B3C284 00000000 */ nop
/* 000010 0x80B3C288 46062200 */ add.s	$f8, $f4, $f6
/* 000011 0x80B3C28C E488002C */ swc1	$f8, 0X2C($a0)
.L80B3C290:
/* 000012 0x80B3C290 AC98015C */ sw	$t8, 0X15C($a0)
/* 000013 0x80B3C294 03E00008 */ jr	$ra
/* 000014 0x80B3C298 00000000 */ nop

