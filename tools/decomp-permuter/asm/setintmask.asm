.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel osSetIntMask
/* 008172 0x80088010 400C6000 */ mfc0	$t4, $12
/* 008173 0x80088014 3182FF01 */ andi	$v0, $t4, 0XFF01
/* 008174 0x80088018 3C088009 */ lui	$t0, %hi(__OSGlobalIntMask)
/* 008175 0x8008801C 25087E60 */ addiu	$t0, $t0, %lo(__OSGlobalIntMask)
/* 008176 0x80088020 8D0B0000 */ lw	$t3, 0X0($t0)
/* 008177 0x80088024 2401FFFF */ li	$at, -0X1
/* 008178 0x80088028 01614026 */ xor	$t0, $t3, $at
/* 008179 0x8008802C 3108FF00 */ andi	$t0, $t0, 0XFF00
/* 008180 0x80088030 00481025 */ or	$v0, $v0, $t0
/* 008181 0x80088034 3C0AA430 */ lui	$t2, 0xA430
/* 008182 0x80088038 8D4A000C */ lw	$t2, 0XC($t2)
/* 008183 0x8008803C 11400005 */ beqz	$t2, .L80088054
/* 008184 0x80088040 000B4C02 */ srl	$t1, $t3, 16
/* 008185 0x80088044 2401FFFF */ li	$at, -0X1
/* 008186 0x80088048 01214826 */ xor	$t1, $t1, $at
/* 008187 0x8008804C 3129003F */ andi	$t1, $t1, 0X3F
/* 008188 0x80088050 01495025 */ or	$t2, $t2, $t1
.L80088054:
/* 008189 0x80088054 000A5400 */ sll	$t2, $t2, 16
/* 008190 0x80088058 004A1025 */ or	$v0, $v0, $t2
/* 008191 0x8008805C 3C01003F */ lui	$at, 0x003F
/* 008192 0x80088060 00814024 */ and	$t0, $a0, $at
/* 008193 0x80088064 010B4024 */ and	$t0, $t0, $t3
/* 008194 0x80088068 000843C2 */ srl	$t0, $t0, 15
/* 008195 0x8008806C 3C0A800A */ lui	$t2, %hi(D_800991A0)
/* 008196 0x80088070 01485021 */ addu	$t2, $t2, $t0
/* 008197 0x80088074 954A91A0 */ lhu	$t2, %lo(D_800991A0)($t2)
/* 008198 0x80088078 3C01A430 */ lui	$at, 0xA430
/* 008199 0x8008807C AC2A000C */ sw	$t2, 0XC($at)
/* 008200 0x80088080 3088FF01 */ andi	$t0, $a0, 0XFF01
/* 008201 0x80088084 3169FF00 */ andi	$t1, $t3, 0XFF00
/* 008202 0x80088088 01094024 */ and	$t0, $t0, $t1
/* 008203 0x8008808C 3C01FFFF */ lui	$at, 0xFFFF
/* 008204 0x80088090 342100FF */ ori	$at, $at, 0XFF
/* 008205 0x80088094 01816024 */ and	$t4, $t4, $at
/* 008206 0x80088098 01886025 */ or	$t4, $t4, $t0
/* 008207 0x8008809C 408C6000 */ mtc0	$t4, $12
/* 008208 0x800880A0 00000000 */ nop
/* 008209 0x800880A4 00000000 */ nop
/* 008210 0x800880A8 03E00008 */ jr	$ra
/* 008211 0x800880AC 00000000 */ nop
