glabel func_800B648C
/* 017011 0x800B648C 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 017012 0x800B6490 44876000 */ mtc1	$a3, $f12
/* 017013 0x800B6494 00803825 */ move	$a3, $a0
/* 017014 0x800B6498 AFBF0014 */ sw	$ra, 0X14($sp)
/* 017015 0x800B649C AFA40018 */ sw	$a0, 0X18($sp)
/* 017016 0x800B64A0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 017017 0x800B64A4 90EE1E95 */ lbu	$t6, 0X1E95($a3)
/* 017018 0x800B64A8 8FAF001C */ lw	$t7, 0X1C($sp)
/* 017019 0x800B64AC 24E41E9C */ addiu	$a0, $a3, 0X1E9C
/* 017020 0x800B64B0 51C00009 */ beqzl	$t6, .L800B64D8
/* 017021 0x800B64B4 A0EF1E94 */ sb	$t7, 0X1E94($a3)
/* 017022 0x800B64B8 C4E41E98 */ lwc1	$f4, 0X1E98($a3)
/* 017023 0x800B64BC 4604603C */ c.lt.s	$f12, $f4
/* 017024 0x800B64C0 00000000 */ nop
/* 017025 0x800B64C4 45020004 */ bc1fl .L800B64D8
/* 017026 0x800B64C8 A0EF1E94 */ sb	$t7, 0X1E94($a3)
/* 017027 0x800B64CC 10000007 */ b	.L800B64EC
/* 017028 0x800B64D0 00001025 */ move	$v0, $zero
/* 017029 0x800B64D4 A0EF1E94 */ sb	$t7, 0X1E94($a3)
.L800B64D8:
/* 017030 0x800B64D8 A0E61E95 */ sb	$a2, 0X1E95($a3)
/* 017031 0x800B64DC E4EC1E98 */ swc1	$f12, 0X1E98($a3)
/* 017032 0x800B64E0 0C03FD43 */ jal	Math_Vec3f_Copy
/* 017033 0x800B64E4 8FA50028 */ lw	$a1, 0X28($sp)
/* 017034 0x800B64E8 24020001 */ li	$v0, 0X1
.L800B64EC:
/* 017035 0x800B64EC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 017036 0x800B64F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 017037 0x800B64F4 03E00008 */ jr	$ra
/* 017038 0x800B64F8 00000000 */ nop

