glabel func_808E7154
/* 002149 0x808E7154 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002150 0x808E7158 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002151 0x808E715C 00803025 */ move	$a2, $a0
/* 002152 0x808E7160 3C050600 */ lui	$a1, 0x0600
/* 002153 0x808E7164 24A57790 */ addiu	$a1, $a1, 0X7790
/* 002154 0x808E7168 24C40144 */ addiu	$a0, $a2, 0X144
/* 002155 0x808E716C 0C04DD50 */ jal	SkelAnime_ChangeAnimDefaultRepeat
/* 002156 0x808E7170 AFA60018 */ sw	$a2, 0X18($sp)
/* 002157 0x808E7174 8FA60018 */ lw	$a2, 0X18($sp)
/* 002158 0x808E7178 3C0141A0 */ lui	$at, 0x41A0
/* 002159 0x808E717C 44800000 */ mtc1	$zero, $f0
/* 002160 0x808E7180 84CE02C6 */ lh	$t6, 0X2C6($a2)
/* 002161 0x808E7184 44812000 */ mtc1	$at, $f4
/* 002162 0x808E7188 E4C00074 */ swc1	$f0, 0X74($a2)
/* 002163 0x808E718C 11C00005 */ beqz	$t6, .L808E71A4
/* 002164 0x808E7190 E4C40068 */ swc1	$f4, 0X68($a2)
/* 002165 0x808E7194 240F0014 */ li	$t7, 0X14
/* 002166 0x808E7198 E4C00070 */ swc1	$f0, 0X70($a2)
/* 002167 0x808E719C 10000006 */ b	.L808E71B8
/* 002168 0x808E71A0 A4CF02BA */ sh	$t7, 0X2BA($a2)
.L808E71A4:
/* 002169 0x808E71A4 3C0140A0 */ lui	$at, 0x40A0
/* 002170 0x808E71A8 44813000 */ mtc1	$at, $f6
/* 002171 0x808E71AC 24180140 */ li	$t8, 0X140
/* 002172 0x808E71B0 A4D802BA */ sh	$t8, 0X2BA($a2)
/* 002173 0x808E71B4 E4C60070 */ swc1	$f6, 0X70($a2)
.L808E71B8:
/* 002174 0x808E71B8 90D90689 */ lbu	$t9, 0X689($a2)
/* 002175 0x808E71BC 8CCA0004 */ lw	$t2, 0X4($a2)
/* 002176 0x808E71C0 2401FDFF */ li	$at, -0X201
/* 002177 0x808E71C4 3C0C808E */ lui	$t4, %hi(func_808E71FC)
/* 002178 0x808E71C8 240900FF */ li	$t1, 0XFF
/* 002179 0x808E71CC 258C71FC */ addiu	$t4, $t4, %lo(func_808E71FC)
/* 002180 0x808E71D0 37280001 */ ori	$t0, $t9, 0X1
/* 002181 0x808E71D4 01415824 */ and	$t3, $t2, $at
/* 002182 0x808E71D8 A4C002BC */ sh	$zero, 0X2BC($a2)
/* 002183 0x808E71DC A0C80689 */ sb	$t0, 0X689($a2)
/* 002184 0x808E71E0 A0C900B6 */ sb	$t1, 0XB6($a2)
/* 002185 0x808E71E4 ACCB0004 */ sw	$t3, 0X4($a2)
/* 002186 0x808E71E8 ACCC0188 */ sw	$t4, 0X188($a2)
/* 002187 0x808E71EC 8FBF0014 */ lw	$ra, 0X14($sp)
/* 002188 0x808E71F0 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002189 0x808E71F4 03E00008 */ jr	$ra
/* 002190 0x808E71F8 00000000 */ nop

