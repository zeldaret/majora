glabel SkelAnime_Free
/* 149384 0x801378E0 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 149385 0x801378E4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 149386 0x801378E8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 149387 0x801378EC 00803025 */ move	$a2, $a0
/* 149388 0x801378F0 8CC50020 */ lw	$a1, 0X20($a2)
/* 149389 0x801378F4 10A00004 */ beqz	$a1, .L80137908
/* 149390 0x801378F8 00A02025 */ move	$a0, $a1
/* 149391 0x801378FC 0C040B38 */ jal	zelda_free
/* 149392 0x80137900 AFA60018 */ sw	$a2, 0X18($sp)
/* 149393 0x80137904 8FA60018 */ lw	$a2, 0X18($sp)
.L80137908:
/* 149394 0x80137908 8CC40024 */ lw	$a0, 0X24($a2)
/* 149395 0x8013790C 50800004 */ beqzl	$a0, .L80137920
/* 149396 0x80137910 8FBF0014 */ lw	$ra, 0X14($sp)
/* 149397 0x80137914 0C040B38 */ jal	zelda_free
/* 149398 0x80137918 00000000 */ nop
/* 149399 0x8013791C 8FBF0014 */ lw	$ra, 0X14($sp)
.L80137920:
/* 149400 0x80137920 27BD0018 */ addiu	$sp, $sp, 0X18
/* 149401 0x80137924 03E00008 */ jr	$ra
/* 149402 0x80137928 00000000 */ nop

