glabel func_80B5C684
/* 001257 0x80B5C684 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001258 0x80B5C688 AFBF0014 */ sw	$ra, 0X14($sp)
/* 001259 0x80B5C68C AFA40018 */ sw	$a0, 0X18($sp)
/* 001260 0x80B5C690 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001261 0x80B5C694 44802000 */ mtc1	$zero, $f4
/* 001262 0x80B5C698 8FAE0018 */ lw	$t6, 0X18($sp)
/* 001263 0x80B5C69C 3C0580B6 */ lui	$a1, %hi(D_80B5E3CC)
/* 001264 0x80B5C6A0 24A5E3CC */ addiu	$a1, $a1, %lo(D_80B5E3CC)
/* 001265 0x80B5C6A4 E5C40070 */ swc1	$f4, 0X70($t6)
/* 001266 0x80B5C6A8 8FAF0018 */ lw	$t7, 0X18($sp)
/* 001267 0x80B5C6AC 00003025 */ move	$a2, $zero
/* 001268 0x80B5C6B0 25E40148 */ addiu	$a0, $t7, 0X148
/* 001269 0x80B5C6B4 0C04F872 */ jal	func_8013E1C8
/* 001270 0x80B5C6B8 25E702BC */ addiu	$a3, $t7, 0X2BC
/* 001271 0x80B5C6BC 8FB90018 */ lw	$t9, 0X18($sp)
/* 001272 0x80B5C6C0 3C1880B6 */ lui	$t8, %hi(func_80B5C6DC)
/* 001273 0x80B5C6C4 2718C6DC */ addiu	$t8, $t8, %lo(func_80B5C6DC)
/* 001274 0x80B5C6C8 AF380144 */ sw	$t8, 0X144($t9)
/* 001275 0x80B5C6CC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001276 0x80B5C6D0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001277 0x80B5C6D4 03E00008 */ jr	$ra
/* 001278 0x80B5C6D8 00000000 */ nop

