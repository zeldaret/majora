glabel ObjJgGakki_Update
/* 000091 0x80B9634C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000092 0x80B96350 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000093 0x80B96354 00802825 */ move	$a1, $a0
/* 000094 0x80B96358 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000095 0x80B9635C AFA40018 */ sw	$a0, 0X18($sp)
/* 000096 0x80B96360 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000097 0x80B96364 24A40144 */ addiu	$a0, $a1, 0X144
/* 000098 0x80B96368 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000099 0x80B9636C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000100 0x80B96370 03E00008 */ jr	$ra
/* 000101 0x80B96374 00000000 */ nop

