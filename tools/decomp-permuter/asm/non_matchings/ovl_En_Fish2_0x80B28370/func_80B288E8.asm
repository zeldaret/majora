glabel func_80B288E8
/* 000350 0x80B288E8 AFA50004 */ sw	$a1, 0X4($sp)
/* 000351 0x80B288EC AFA60008 */ sw	$a2, 0X8($sp)
/* 000352 0x80B288F0 AFA7000C */ sw	$a3, 0XC($sp)
/* 000353 0x80B288F4 8C820350 */ lw	$v0, 0X350($a0)
/* 000354 0x80B288F8 C7A60004 */ lwc1	$f6, 0X4($sp)
/* 000355 0x80B288FC C7AA0008 */ lwc1	$f10, 0X8($sp)
/* 000356 0x80B28900 C4440024 */ lwc1	$f4, 0X24($v0)
/* 000357 0x80B28904 C4480028 */ lwc1	$f8, 0X28($v0)
/* 000358 0x80B28908 C7B2000C */ lwc1	$f18, 0XC($sp)
/* 000359 0x80B2890C 46062081 */ sub.s	$f2, $f4, $f6
/* 000360 0x80B28910 C450002C */ lwc1	$f16, 0X2C($v0)
/* 000361 0x80B28914 8FAE0010 */ lw	$t6, 0X10($sp)
/* 000362 0x80B28918 460A4301 */ sub.s	$f12, $f8, $f10
/* 000363 0x80B2891C 46021102 */ mul.s	$f4, $f2, $f2
/* 000364 0x80B28920 3C0141A0 */ lui	$at, 0x41A0
/* 000365 0x80B28924 46128381 */ sub.s	$f14, $f16, $f18
/* 000366 0x80B28928 460C6182 */ mul.s	$f6, $f12, $f12
/* 000367 0x80B2892C 00001025 */ move	$v0, $zero
/* 000368 0x80B28930 460E7282 */ mul.s	$f10, $f14, $f14
/* 000369 0x80B28934 46062200 */ add.s	$f8, $f4, $f6
/* 000370 0x80B28938 460A4000 */ add.s	$f0, $f8, $f10
/* 000371 0x80B2893C 15C00005 */ bnez	$t6, .L80B28954
/* 000372 0x80B28940 46000004 */ sqrt.s	$f0, $f0
/* 000373 0x80B28944 3C014220 */ lui	$at, 0x4220
/* 000374 0x80B28948 44811000 */ mtc1	$at, $f2
/* 000375 0x80B2894C 1000000C */ b	.L80B28980
/* 000376 0x80B28950 4602003C */ c.lt.s	$f0, $f2
.L80B28954:
/* 000377 0x80B28954 44816000 */ mtc1	$at, $f12
/* 000378 0x80B28958 3C0144FA */ lui	$at, 0x44FA
/* 000379 0x80B2895C 44819000 */ mtc1	$at, $f18
/* 000380 0x80B28960 C4900330 */ lwc1	$f16, 0X330($a0)
/* 000381 0x80B28964 46128082 */ mul.s	$f2, $f16, $f18
/* 000382 0x80B28968 4602603C */ c.lt.s	$f12, $f2
/* 000383 0x80B2896C 00000000 */ nop
/* 000384 0x80B28970 45020003 */ bc1fl .L80B28980
/* 000385 0x80B28974 4602003C */ c.lt.s	$f0, $f2
/* 000386 0x80B28978 46006086 */ mov.s	$f2, $f12
/* 000387 0x80B2897C 4602003C */ c.lt.s	$f0, $f2
.L80B28980:
/* 000388 0x80B28980 00000000 */ nop
/* 000389 0x80B28984 45000003 */ bc1f .L80B28994
/* 000390 0x80B28988 00000000 */ nop
/* 000391 0x80B2898C 03E00008 */ jr	$ra
/* 000392 0x80B28990 24020001 */ li	$v0, 0X1
.L80B28994:
/* 000393 0x80B28994 03E00008 */ jr	$ra
/* 000394 0x80B28998 00000000 */ nop

