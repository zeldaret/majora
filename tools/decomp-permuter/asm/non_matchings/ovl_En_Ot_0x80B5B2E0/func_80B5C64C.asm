glabel func_80B5C64C
/* 001243 0x80B5C64C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001244 0x80B5C650 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001245 0x80B5C654 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001246 0x80B5C658 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF12)
/* 001247 0x80B5C65C 91CE0582 */ lbu	$t6, %lo(gSaveContext + 0xF12)($t6)
/* 001248 0x80B5C660 31CF0008 */ andi	$t7, $t6, 0X8
/* 001249 0x80B5C664 51E00004 */ beqzl	$t7, .L80B5C678
/* 001250 0x80B5C668 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001251 0x80B5C66C 0C02D9C3 */ jal	Actor_MarkForDeath
/* 001252 0x80B5C670 00000000 */ nop
/* 001253 0x80B5C674 8FBF0014 */ lw	$ra, 0X14($sp)
.L80B5C678:
/* 001254 0x80B5C678 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001255 0x80B5C67C 03E00008 */ jr	$ra
/* 001256 0x80B5C680 00000000 */ nop

