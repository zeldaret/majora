glabel func_80BCAF0C
/* 000199 0x80BCAF0C 9482033C */ lhu	$v0, 0X33C($a0)
/* 000200 0x80BCAF10 2401162F */ li	$at, 0X162F
/* 000201 0x80BCAF14 3C0E801F */ lui	$t6, %hi(gSaveContext + 0xF2D)
/* 000202 0x80BCAF18 1040000C */ beqz	$v0, .L80BCAF4C
/* 000203 0x80BCAF1C 00000000 */ nop
/* 000204 0x80BCAF20 10410015 */ beq	$v0, $at, .L80BCAF78
/* 000205 0x80BCAF24 24011630 */ li	$at, 0X1630
/* 000206 0x80BCAF28 10410015 */ beq	$v0, $at, .L80BCAF80
/* 000207 0x80BCAF2C 24011631 */ li	$at, 0X1631
/* 000208 0x80BCAF30 10410015 */ beq	$v0, $at, .L80BCAF88
/* 000209 0x80BCAF34 24080096 */ li	$t0, 0X96
/* 000210 0x80BCAF38 24011633 */ li	$at, 0X1633
/* 000211 0x80BCAF3C 10410015 */ beq	$v0, $at, .L80BCAF94
/* 000212 0x80BCAF40 24090064 */ li	$t1, 0X64
/* 000213 0x80BCAF44 10000016 */ b	.L80BCAFA0
/* 000214 0x80BCAF48 00001025 */ move	$v0, $zero
.L80BCAF4C:
/* 000215 0x80BCAF4C 91CE059D */ lbu	$t6, %lo(gSaveContext + 0xF2D)($t6)
/* 000216 0x80BCAF50 31CF0002 */ andi	$t7, $t6, 0X2
/* 000217 0x80BCAF54 11E00006 */ beqz	$t7, .L80BCAF70
/* 000218 0x80BCAF58 00000000 */ nop
/* 000219 0x80BCAF5C 94980328 */ lhu	$t8, 0X328($a0)
/* 000220 0x80BCAF60 24021638 */ li	$v0, 0X1638
/* 000221 0x80BCAF64 37190001 */ ori	$t9, $t8, 0X1
/* 000222 0x80BCAF68 03E00008 */ jr	$ra
/* 000223 0x80BCAF6C A4990328 */ sh	$t9, 0X328($a0)
.L80BCAF70:
/* 000224 0x80BCAF70 03E00008 */ jr	$ra
/* 000225 0x80BCAF74 2402162F */ li	$v0, 0X162F
.L80BCAF78:
/* 000226 0x80BCAF78 03E00008 */ jr	$ra
/* 000227 0x80BCAF7C 24021630 */ li	$v0, 0X1630
.L80BCAF80:
/* 000228 0x80BCAF80 03E00008 */ jr	$ra
/* 000229 0x80BCAF84 24021631 */ li	$v0, 0X1631
.L80BCAF88:
/* 000230 0x80BCAF88 A4880358 */ sh	$t0, 0X358($a0)
/* 000231 0x80BCAF8C 03E00008 */ jr	$ra
/* 000232 0x80BCAF90 24021632 */ li	$v0, 0X1632
.L80BCAF94:
/* 000233 0x80BCAF94 A4890358 */ sh	$t1, 0X358($a0)
/* 000234 0x80BCAF98 03E00008 */ jr	$ra
/* 000235 0x80BCAF9C 24021634 */ li	$v0, 0X1634
.L80BCAFA0:
/* 000236 0x80BCAFA0 03E00008 */ jr	$ra
/* 000237 0x80BCAFA4 00000000 */ nop

