glabel BgMarketStep_Init
/* 000000 0x80AF0060 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000001 0x80AF0064 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000002 0x80AF0068 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000003 0x80AF006C 3C0580AF */ lui	$a1, %hi(D_80AF0110)
/* 000004 0x80AF0070 0C03FEB7 */ jal	Actor_ProcessInitChain
/* 000005 0x80AF0074 24A50110 */ addiu	$a1, $a1, %lo(D_80AF0110)
/* 000006 0x80AF0078 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000007 0x80AF007C 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000008 0x80AF0080 03E00008 */ jr	$ra
/* 000009 0x80AF0084 00000000 */ nop

