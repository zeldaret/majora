glabel func_80B173D0
/* 000564 0x80B173D0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000565 0x80B173D4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000566 0x80B173D8 00803025 */ move	$a2, $a0
/* 000567 0x80B173DC 3C050600 */ lui	$a1, 0x0600
/* 000568 0x80B173E0 24A546D8 */ addiu	$a1, $a1, 0X46D8
/* 000569 0x80B173E4 24C40188 */ addiu	$a0, $a2, 0X188
/* 000570 0x80B173E8 0C04DD50 */ jal	SkelAnime_ChangeAnimDefaultRepeat
/* 000571 0x80B173EC AFA60018 */ sw	$a2, 0X18($sp)
/* 000572 0x80B173F0 8FA60018 */ lw	$a2, 0X18($sp)
/* 000573 0x80B173F4 3C014000 */ lui	$at, 0x4000
/* 000574 0x80B173F8 44813000 */ mtc1	$at, $f6
/* 000575 0x80B173FC 3C0141F0 */ lui	$at, 0x41F0
/* 000576 0x80B17400 44814000 */ mtc1	$at, $f8
/* 000577 0x80B17404 C4C00294 */ lwc1	$f0, 0X294($a2)
/* 000578 0x80B17408 C4C40058 */ lwc1	$f4, 0X58($a2)
/* 000579 0x80B1740C 3C014120 */ lui	$at, 0x4120
/* 000580 0x80B17410 46080282 */ mul.s	$f10, $f0, $f8
/* 000581 0x80B17414 44819000 */ mtc1	$at, $f18
/* 000582 0x80B17418 E4C4005C */ swc1	$f4, 0X5C($a2)
/* 000583 0x80B1741C E4C60070 */ swc1	$f6, 0X70($a2)
/* 000584 0x80B17420 46120102 */ mul.s	$f4, $f0, $f18
/* 000585 0x80B17424 3C0E80B2 */ lui	$t6, %hi(func_80B19948)
/* 000586 0x80B17428 3C0A80B1 */ lui	$t2, %hi(func_80B1746C)
/* 000587 0x80B1742C 25CE9948 */ addiu	$t6, $t6, %lo(func_80B19948)
/* 000588 0x80B17430 240F0028 */ li	$t7, 0X28
/* 000589 0x80B17434 254A746C */ addiu	$t2, $t2, %lo(func_80B1746C)
/* 000590 0x80B17438 4600540D */ trunc.w.s	$f16, $f10
/* 000591 0x80B1743C ACCE013C */ sw	$t6, 0X13C($a2)
/* 000592 0x80B17440 A4CF028C */ sh	$t7, 0X28C($a2)
/* 000593 0x80B17444 4600218D */ trunc.w.s	$f6, $f4
/* 000594 0x80B17448 44198000 */ mfc1	$t9, $f16
/* 000595 0x80B1744C A0C0028A */ sb	$zero, 0X28A($a2)
/* 000596 0x80B17450 ACCA0280 */ sw	$t2, 0X280($a2)
/* 000597 0x80B17454 44093000 */ mfc1	$t1, $f6
/* 000598 0x80B17458 A4D9036C */ sh	$t9, 0X36C($a2)
/* 000599 0x80B1745C A4C9036E */ sh	$t1, 0X36E($a2)
/* 000600 0x80B17460 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000601 0x80B17464 03E00008 */ jr	$ra
/* 000602 0x80B17468 27BD0018 */ addiu	$sp, $sp, 0X18

