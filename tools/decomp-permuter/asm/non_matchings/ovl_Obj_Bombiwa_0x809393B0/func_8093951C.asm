glabel func_8093951C
/* 000091 0x8093951C 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000092 0x80939520 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000093 0x80939524 AFA40038 */ sw	$a0, 0X38($sp)
/* 000094 0x80939528 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000095 0x8093952C 8FAF0038 */ lw	$t7, 0X38($sp)
/* 000096 0x80939530 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000097 0x80939534 27B8002C */ addiu	$t8, $sp, 0X2C
/* 000098 0x80939538 8DE60024 */ lw	$a2, 0X24($t7)
/* 000099 0x8093953C 8DE7002C */ lw	$a3, 0X2C($t7)
/* 000100 0x80939540 27B90030 */ addiu	$t9, $sp, 0X30
/* 000101 0x80939544 27A80028 */ addiu	$t0, $sp, 0X28
/* 000102 0x80939548 AFA80018 */ sw	$t0, 0X18($sp)
/* 000103 0x8093954C AFB90014 */ sw	$t9, 0X14($sp)
/* 000104 0x80939550 AFB80010 */ sw	$t8, 0X10($sp)
/* 000105 0x80939554 0C0327AF */ jal	func_800C9EBC
/* 000106 0x80939558 24850830 */ addiu	$a1, $a0, 0X830
/* 000107 0x8093955C 1040000A */ beqz	$v0, .L80939588
/* 000108 0x80939560 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000109 0x80939564 8FA90038 */ lw	$t1, 0X38($sp)
/* 000110 0x80939568 C7A6002C */ lwc1	$f6, 0X2C($sp)
/* 000111 0x8093956C C5240028 */ lwc1	$f4, 0X28($t1)
/* 000112 0x80939570 4606203C */ c.lt.s	$f4, $f6
/* 000113 0x80939574 00000000 */ nop
/* 000114 0x80939578 45020004 */ bc1fl .L8093958C
/* 000115 0x8093957C 00001025 */ move	$v0, $zero
/* 000116 0x80939580 10000002 */ b	.L8093958C
/* 000117 0x80939584 24020001 */ li	$v0, 0X1
.L80939588:
/* 000118 0x80939588 00001025 */ move	$v0, $zero
.L8093958C:
/* 000119 0x8093958C 03E00008 */ jr	$ra
/* 000120 0x80939590 27BD0038 */ addiu	$sp, $sp, 0X38

