glabel SceneProc_DrawTranslucentSceneAnimatedTextures
/* 143168 0x801317C0 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 143169 0x801317C4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 143170 0x801317C8 3C070002 */ lui	$a3, 0x0002
/* 143171 0x801317CC 00E43821 */ addu	$a3, $a3, $a0
/* 143172 0x801317D0 8CE78840 */ lw	$a3, -0X77C0($a3)
/* 143173 0x801317D4 240E0002 */ li	$t6, 0X2
/* 143174 0x801317D8 AFAE0010 */ sw	$t6, 0X10($sp)
/* 143175 0x801317DC 0C04C5A4 */ jal	SceneProc_DrawAnimatedTextures
/* 143176 0x801317E0 3C063F80 */ lui	$a2, 0x3F80
/* 143177 0x801317E4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 143178 0x801317E8 27BD0020 */ addiu	$sp, $sp, 0X20
/* 143179 0x801317EC 03E00008 */ jr	$ra
/* 143180 0x801317F0 00000000 */ nop

