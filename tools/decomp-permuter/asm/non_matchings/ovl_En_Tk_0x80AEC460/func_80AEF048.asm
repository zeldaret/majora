glabel func_80AEF048
/* 002810 0x80AEF048 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002811 0x80AEF04C AFBF0014 */ sw	$ra, 0X14($sp)
/* 002812 0x80AEF050 AFA40018 */ sw	$a0, 0X18($sp)
/* 002813 0x80AEF054 AFA5001C */ sw	$a1, 0X1C($sp)
/* 002814 0x80AEF058 8FAE0018 */ lw	$t6, 0X18($sp)
/* 002815 0x80AEF05C 3C0580AF */ lui	$a1, %hi(D_80AEF868)
/* 002816 0x80AEF060 24A5F868 */ addiu	$a1, $a1, %lo(D_80AEF868)
/* 002817 0x80AEF064 24060001 */ li	$a2, 0X1
/* 002818 0x80AEF068 25C40144 */ addiu	$a0, $t6, 0X144
/* 002819 0x80AEF06C 0C04F872 */ jal	func_8013E1C8
/* 002820 0x80AEF070 25C702D4 */ addiu	$a3, $t6, 0X2D4
/* 002821 0x80AEF074 8FB80018 */ lw	$t8, 0X18($sp)
/* 002822 0x80AEF078 3C0F80AF */ lui	$t7, %hi(func_80AEF094)
/* 002823 0x80AEF07C 25EFF094 */ addiu	$t7, $t7, %lo(func_80AEF094)
/* 002824 0x80AEF080 AF0F030C */ sw	$t7, 0X30C($t8)
/* 002825 0x80AEF084 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002826 0x80AEF088 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002827 0x80AEF08C 03E00008 */ jr	$ra
/* 002828 0x80AEF090 00000000 */ nop

