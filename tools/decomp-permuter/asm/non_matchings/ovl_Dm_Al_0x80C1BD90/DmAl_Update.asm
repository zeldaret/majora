glabel DmAl_Update
/* 000142 0x80C1BFC8 27BDFFE0 */ addiu	$sp, $sp, -0X20
/* 000143 0x80C1BFCC AFBF001C */ sw	$ra, 0X1C($sp)
/* 000144 0x80C1BFD0 AFA50024 */ sw	$a1, 0X24($sp)
/* 000145 0x80C1BFD4 AFA40020 */ sw	$a0, 0X20($sp)
/* 000146 0x80C1BFD8 8C990188 */ lw	$t9, 0X188($a0)
/* 000147 0x80C1BFDC 8FA50024 */ lw	$a1, 0X24($sp)
/* 000148 0x80C1BFE0 0320F809 */ jalr	$t9
/* 000149 0x80C1BFE4 00000000 */ nop
/* 000150 0x80C1BFE8 8FA40020 */ lw	$a0, 0X20($sp)
/* 000151 0x80C1BFEC 0C04DB34 */ jal	SkelAnime_FrameUpdateMatrix
/* 000152 0x80C1BFF0 24840144 */ addiu	$a0, $a0, 0X144
/* 000153 0x80C1BFF4 44802000 */ mtc1	$zero, $f4
/* 000154 0x80C1BFF8 240E0004 */ li	$t6, 0X4
/* 000155 0x80C1BFFC AFAE0014 */ sw	$t6, 0X14($sp)
/* 000156 0x80C1C000 8FA40024 */ lw	$a0, 0X24($sp)
/* 000157 0x80C1C004 8FA50020 */ lw	$a1, 0X20($sp)
/* 000158 0x80C1C008 3C0641F0 */ lui	$a2, 0x41F0
/* 000159 0x80C1C00C 3C074140 */ lui	$a3, 0x4140
/* 000160 0x80C1C010 0C02DE2E */ jal	func_800B78B8
/* 000161 0x80C1C014 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000162 0x80C1C018 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000163 0x80C1C01C 27BD0020 */ addiu	$sp, $sp, 0X20
/* 000164 0x80C1C020 03E00008 */ jr	$ra
/* 000165 0x80C1C024 00000000 */ nop

