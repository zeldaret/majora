glabel func_80A56F68
/* 000902 0x80A56F68 27BDFFC8 */ addiu	$sp, $sp, -0X38
/* 000903 0x80A56F6C AFB00020 */ sw	$s0, 0X20($sp)
/* 000904 0x80A56F70 00808025 */ move	$s0, $a0
/* 000905 0x80A56F74 AFBF0024 */ sw	$ra, 0X24($sp)
/* 000906 0x80A56F78 AFA5003C */ sw	$a1, 0X3C($sp)
/* 000907 0x80A56F7C 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000908 0x80A56F80 26050024 */ addiu	$a1, $s0, 0X24
/* 000909 0x80A56F84 24060046 */ li	$a2, 0X46
/* 000910 0x80A56F88 240701F4 */ li	$a3, 0X1F4
/* 000911 0x80A56F8C 0C02C7BD */ jal	EffectSS_SpawnGRipple
/* 000912 0x80A56F90 AFA00010 */ sw	$zero, 0X10($sp)
/* 000913 0x80A56F94 3C014120 */ lui	$at, 0x4120
/* 000914 0x80A56F98 44810000 */ mtc1	$at, $f0
/* 000915 0x80A56F9C C606020C */ lwc1	$f6, 0X20C($s0)
/* 000916 0x80A56FA0 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000917 0x80A56FA4 3C0140A0 */ lui	$at, 0x40A0
/* 000918 0x80A56FA8 46003202 */ mul.s	$f8, $f6, $f0
/* 000919 0x80A56FAC 240E0001 */ li	$t6, 0X1
/* 000920 0x80A56FB0 240F01C2 */ li	$t7, 0X1C2
/* 000921 0x80A56FB4 8FA4003C */ lw	$a0, 0X3C($sp)
/* 000922 0x80A56FB8 27A50028 */ addiu	$a1, $sp, 0X28
/* 000923 0x80A56FBC 00003025 */ move	$a2, $zero
/* 000924 0x80A56FC0 00003825 */ move	$a3, $zero
/* 000925 0x80A56FC4 46082281 */ sub.s	$f10, $f4, $f8
/* 000926 0x80A56FC8 E7AA0028 */ swc1	$f10, 0X28($sp)
/* 000927 0x80A56FCC C6120214 */ lwc1	$f18, 0X214($s0)
/* 000928 0x80A56FD0 C610002C */ lwc1	$f16, 0X2C($s0)
/* 000929 0x80A56FD4 44815000 */ mtc1	$at, $f10
/* 000930 0x80A56FD8 46009182 */ mul.s	$f6, $f18, $f0
/* 000931 0x80A56FDC 46068101 */ sub.s	$f4, $f16, $f6
/* 000932 0x80A56FE0 E7A40030 */ swc1	$f4, 0X30($sp)
/* 000933 0x80A56FE4 C6080028 */ lwc1	$f8, 0X28($s0)
/* 000934 0x80A56FE8 AFAF0014 */ sw	$t7, 0X14($sp)
/* 000935 0x80A56FEC AFAE0010 */ sw	$t6, 0X10($sp)
/* 000936 0x80A56FF0 460A4480 */ add.s	$f18, $f8, $f10
/* 000937 0x80A56FF4 0C02C7D3 */ jal	EffectSS_SpawnGSplash
/* 000938 0x80A56FF8 E7B2002C */ swc1	$f18, 0X2C($sp)
/* 000939 0x80A56FFC 8FBF0024 */ lw	$ra, 0X24($sp)
/* 000940 0x80A57000 8FB00020 */ lw	$s0, 0X20($sp)
/* 000941 0x80A57004 27BD0038 */ addiu	$sp, $sp, 0X38
/* 000942 0x80A57008 03E00008 */ jr	$ra
/* 000943 0x80A5700C 00000000 */ nop

