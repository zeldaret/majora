glabel Fault_PrintFReg
/* 002141 0x800821D4 3C18FFFA */ lui	$t8, 0xFFFA
/* 002142 0x800821D8 03A0C825 */ move	$t9, $sp
/* 002143 0x800821DC 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 002144 0x800821E0 37185A5A */ ori	$t8, $t8, 0X5A5A
.L800821E4:
/* 002145 0x800821E4 2739FFF8 */ addiu	$t9, $t9, -0X8
/* 002146 0x800821E8 AF380000 */ sw	$t8, 0X0($t9)
/* 002147 0x800821EC 173DFFFD */ bne	$t9, $sp, .L800821E4
/* 002148 0x800821F0 AF380004 */ sw	$t8, 0X4($t9)
/* 002149 0x800821F4 AFBF0014 */ sw	$ra, 0X14($sp)
/* 002150 0x800821F8 AFA40018 */ sw	$a0, 0X18($sp)
/* 002151 0x800821FC AFA5001C */ sw	$a1, 0X1C($sp)
/* 002152 0x80082200 8FAE001C */ lw	$t6, 0X1C($sp)
/* 002153 0x80082204 3C017F80 */ lui	$at, 0x7F80
/* 002154 0x80082208 8DC60000 */ lw	$a2, 0X0($t6)
/* 002155 0x8008220C 00C11024 */ and	$v0, $a2, $at
/* 002156 0x80082210 000215C2 */ srl	$v0, $v0, 23
/* 002157 0x80082214 2442FF81 */ addiu	$v0, $v0, -0X7F
/* 002158 0x80082218 2841FF82 */ slti	$at, $v0, -0X7E
/* 002159 0x8008221C 14200003 */ bnez	$at, .L8008222C
/* 002160 0x80082220 28410080 */ slti	$at, $v0, 0X80
/* 002161 0x80082224 54200004 */ bnezl	$at, .L80082238
/* 002162 0x80082228 8FAF001C */ lw	$t7, 0X1C($sp)
.L8008222C:
/* 002163 0x8008222C 14C0000D */ bnez	$a2, .L80082264
/* 002164 0x80082230 3C04800A */ lui	$a0, %hi(D_800985C8)
/* 002165 0x80082234 8FAF001C */ lw	$t7, 0X1C($sp)
.L80082238:
/* 002166 0x80082238 3C04800A */ lui	$a0, %hi(D_800985B8)
/* 002167 0x8008223C 248485B8 */ addiu	$a0, $a0, %lo(D_800985B8)
/* 002168 0x80082240 C5E40000 */ lwc1	$f4, 0X0($t7)
/* 002169 0x80082244 8FA50018 */ lw	$a1, 0X18($sp)
/* 002170 0x80082248 460021A1 */ cvt.d.s	$f6, $f4
/* 002171 0x8008224C 44073000 */ mfc1	$a3, $f6
/* 002172 0x80082250 44063800 */ mfc1	$a2, $f7
/* 002173 0x80082254 0C0211F3 */ jal	FaultDrawer_Printf
/* 002174 0x80082258 00000000 */ nop
/* 002175 0x8008225C 10000005 */ b	.L80082274
/* 002176 0x80082260 8FBF0014 */ lw	$ra, 0X14($sp)
.L80082264:
/* 002177 0x80082264 248485C8 */ addiu	$a0, $a0, %lo(D_800985C8)
/* 002178 0x80082268 0C0211F3 */ jal	FaultDrawer_Printf
/* 002179 0x8008226C 8FA50018 */ lw	$a1, 0X18($sp)
/* 002180 0x80082270 8FBF0014 */ lw	$ra, 0X14($sp)
.L80082274:
/* 002181 0x80082274 27BD0018 */ addiu	$sp, $sp, 0X18
/* 002182 0x80082278 03E00008 */ jr	$ra
/* 002183 0x8008227C 00000000 */ nop

