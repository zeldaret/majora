glabel ObjGhaka_Update
/* 000363 0x80B3C80C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000364 0x80B3C810 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000365 0x80B3C814 AFA40018 */ sw	$a0, 0X18($sp)
/* 000366 0x80B3C818 8C99015C */ lw	$t9, 0X15C($a0)
/* 000367 0x80B3C81C 0320F809 */ jalr	$t9
/* 000368 0x80B3C820 00000000 */ nop
/* 000369 0x80B3C824 8FA40018 */ lw	$a0, 0X18($sp)
/* 000370 0x80B3C828 3C014270 */ lui	$at, 0x4270
/* 000371 0x80B3C82C 44814000 */ mtc1	$at, $f8
/* 000372 0x80B3C830 C4860028 */ lwc1	$f6, 0X28($a0)
/* 000373 0x80B3C834 C4840024 */ lwc1	$f4, 0X24($a0)
/* 000374 0x80B3C838 C490002C */ lwc1	$f16, 0X2C($a0)
/* 000375 0x80B3C83C 46083280 */ add.s	$f10, $f6, $f8
/* 000376 0x80B3C840 E484003C */ swc1	$f4, 0X3C($a0)
/* 000377 0x80B3C844 E4900044 */ swc1	$f16, 0X44($a0)
/* 000378 0x80B3C848 E48A0040 */ swc1	$f10, 0X40($a0)
/* 000379 0x80B3C84C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000380 0x80B3C850 03E00008 */ jr	$ra
/* 000381 0x80B3C854 27BD0018 */ addiu	$sp, $sp, 0X18

