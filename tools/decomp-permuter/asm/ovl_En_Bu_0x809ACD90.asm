.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel EnBu_Init
/* 000000 0x809ACD90 AFA50004 */ sw	$a1, 0X4($sp)
/* 000001 0x809ACD94 3C0E809B */ lui	$t6, %hi(func_809ACDB8)
/* 000002 0x809ACD98 25CECDB8 */ addiu	$t6, $t6, %lo(func_809ACDB8)
/* 000003 0x809ACD9C AC8E0144 */ sw	$t6, 0X144($a0)
/* 000004 0x809ACDA0 03E00008 */ jr	$ra
/* 000005 0x809ACDA4 00000000 */ nop

glabel EnBu_Destroy
/* 000006 0x809ACDA8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000007 0x809ACDAC AFA50004 */ sw	$a1, 0X4($sp)
/* 000008 0x809ACDB0 03E00008 */ jr	$ra
/* 000009 0x809ACDB4 00000000 */ nop

glabel func_809ACDB8
/* 000010 0x809ACDB8 AFA40000 */ sw	$a0, 0X0($sp)
/* 000011 0x809ACDBC AFA50004 */ sw	$a1, 0X4($sp)
/* 000012 0x809ACDC0 03E00008 */ jr	$ra
/* 000013 0x809ACDC4 00000000 */ nop

glabel EnBu_Update
/* 000014 0x809ACDC8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000015 0x809ACDCC AFBF0014 */ sw	$ra, 0X14($sp)
/* 000016 0x809ACDD0 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000017 0x809ACDD4 0C02DAA2 */ jal	Actor_SetVelocityAndMoveYRotationAndGravity
/* 000018 0x809ACDD8 AFA40018 */ sw	$a0, 0X18($sp)
/* 000019 0x809ACDDC 8FA40018 */ lw	$a0, 0X18($sp)
/* 000020 0x809ACDE0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 000021 0x809ACDE4 8C990144 */ lw	$t9, 0X144($a0)
/* 000022 0x809ACDE8 0320F809 */ jalr	$t9
/* 000023 0x809ACDEC 00000000 */ nop
/* 000024 0x809ACDF0 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000025 0x809ACDF4 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000026 0x809ACDF8 03E00008 */ jr	$ra
/* 000027 0x809ACDFC 00000000 */ nop

glabel EnBu_Draw
/* 000028 0x809ACE00 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 000029 0x809ACE04 AFB00014 */ sw	$s0, 0X14($sp)
/* 000030 0x809ACE08 00808025 */ move	$s0, $a0
/* 000031 0x809ACE0C AFBF001C */ sw	$ra, 0X1C($sp)
/* 000032 0x809ACE10 AFB10018 */ sw	$s1, 0X18($sp)
/* 000033 0x809ACE14 AFA50034 */ sw	$a1, 0X34($sp)
/* 000034 0x809ACE18 8FAE0034 */ lw	$t6, 0X34($sp)
/* 000035 0x809ACE1C C60C0024 */ lwc1	$f12, 0X24($s0)
/* 000036 0x809ACE20 C60E0028 */ lwc1	$f14, 0X28($s0)
/* 000037 0x809ACE24 8E06002C */ lw	$a2, 0X2C($s0)
/* 000038 0x809ACE28 00003825 */ move	$a3, $zero
/* 000039 0x809ACE2C 0C0600A7 */ jal	SysMatrix_InsertTranslation
/* 000040 0x809ACE30 8DD10000 */ lw	$s1, 0X0($t6)
/* 000041 0x809ACE34 860400C0 */ lh	$a0, 0XC0($s0)
/* 000042 0x809ACE38 0C06033E */ jal	SysMatrix_InsertZRotation_s
/* 000043 0x809ACE3C 24050001 */ li	$a1, 0X1
/* 000044 0x809ACE40 860400BE */ lh	$a0, 0XBE($s0)
/* 000045 0x809ACE44 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 000046 0x809ACE48 24050001 */ li	$a1, 0X1
/* 000047 0x809ACE4C 860400BC */ lh	$a0, 0XBC($s0)
/* 000048 0x809ACE50 0C06011E */ jal	SysMatrix_InsertXRotation_s
/* 000049 0x809ACE54 24050001 */ li	$a1, 0X1
/* 000050 0x809ACE58 3C01809B */ lui	$at, %hi(D_809ACEF0)
/* 000051 0x809ACE5C C42CCEF0 */ lwc1	$f12, %lo(D_809ACEF0)($at)
/* 000052 0x809ACE60 24070001 */ li	$a3, 0X1
/* 000053 0x809ACE64 44066000 */ mfc1	$a2, $f12
/* 000054 0x809ACE68 0C0600E7 */ jal	SysMatrix_InsertScale
/* 000055 0x809ACE6C 46006386 */ mov.s	$f14, $f12
/* 000056 0x809ACE70 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 000057 0x809ACE74 3C18DA38 */ lui	$t8, 0xDA38
/* 000058 0x809ACE78 37180003 */ ori	$t8, $t8, 0X3
/* 000059 0x809ACE7C 244F0008 */ addiu	$t7, $v0, 0X8
/* 000060 0x809ACE80 AE2F02B0 */ sw	$t7, 0X2B0($s1)
/* 000061 0x809ACE84 AC580000 */ sw	$t8, 0X0($v0)
/* 000062 0x809ACE88 8FB90034 */ lw	$t9, 0X34($sp)
/* 000063 0x809ACE8C 8F240000 */ lw	$a0, 0X0($t9)
/* 000064 0x809ACE90 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000065 0x809ACE94 AFA20020 */ sw	$v0, 0X20($sp)
/* 000066 0x809ACE98 8FA30020 */ lw	$v1, 0X20($sp)
/* 000067 0x809ACE9C AC620004 */ sw	$v0, 0X4($v1)
/* 000068 0x809ACEA0 8E2202B0 */ lw	$v0, 0X2B0($s1)
/* 000069 0x809ACEA4 3C09DE00 */ lui	$t1, 0xDE00
/* 000070 0x809ACEA8 24480008 */ addiu	$t0, $v0, 0X8
/* 000071 0x809ACEAC AE2802B0 */ sw	$t0, 0X2B0($s1)
/* 000072 0x809ACEB0 AC490000 */ sw	$t1, 0X0($v0)
/* 000073 0x809ACEB4 8E0A018C */ lw	$t2, 0X18C($s0)
/* 000074 0x809ACEB8 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000075 0x809ACEBC 8FBF001C */ lw	$ra, 0X1C($sp)
/* 000076 0x809ACEC0 8FB00014 */ lw	$s0, 0X14($sp)
/* 000077 0x809ACEC4 8FB10018 */ lw	$s1, 0X18($sp)
/* 000078 0x809ACEC8 03E00008 */ jr	$ra
/* 000079 0x809ACECC 27BD0030 */ addiu	$sp, $sp, 0X30
