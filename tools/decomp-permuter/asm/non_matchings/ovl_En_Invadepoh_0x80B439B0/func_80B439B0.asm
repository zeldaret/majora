glabel func_80B439B0
/* 000000 0x80B439B0 24A5E556 */ addiu	$a1, $a1, -0X1AAA
/* 000001 0x80B439B4 04A10002 */ bgez	$a1, .L80B439C0
/* 000002 0x80B439B8 308E0001 */ andi	$t6, $a0, 0X1
/* 000003 0x80B439BC 00002825 */ move	$a1, $zero
.L80B439C0:
/* 000004 0x80B439C0 15C0000D */ bnez	$t6, .L80B439F8
/* 000005 0x80B439C4 00046043 */ sra	$t4, $a0, 1
/* 000006 0x80B439C8 00047843 */ sra	$t7, $a0, 1
/* 000007 0x80B439CC 3C19801F */ lui	$t9, %hi(gSaveContext)
/* 000008 0x80B439D0 2739F670 */ addiu	$t9, $t9, %lo(gSaveContext)
/* 000009 0x80B439D4 000FC080 */ sll	$t8, $t7, 2
/* 000010 0x80B439D8 03191021 */ addu	$v0, $t8, $t9
/* 000011 0x80B439DC 8C480E88 */ lw	$t0, 0XE88($v0)
/* 000012 0x80B439E0 3C01FFFF */ lui	$at, 0xFFFF
/* 000013 0x80B439E4 30AAFFFF */ andi	$t2, $a1, 0XFFFF
/* 000014 0x80B439E8 01014824 */ and	$t1, $t0, $at
/* 000015 0x80B439EC 012A5825 */ or	$t3, $t1, $t2
/* 000016 0x80B439F0 03E00008 */ jr	$ra
/* 000017 0x80B439F4 AC4B0E88 */ sw	$t3, 0XE88($v0)
.L80B439F8:
/* 000018 0x80B439F8 3C0E801F */ lui	$t6, %hi(gSaveContext)
/* 000019 0x80B439FC 25CEF670 */ addiu	$t6, $t6, %lo(gSaveContext)
/* 000020 0x80B43A00 000C6880 */ sll	$t5, $t4, 2
/* 000021 0x80B43A04 01AE1021 */ addu	$v0, $t5, $t6
/* 000022 0x80B43A08 8C4F0E88 */ lw	$t7, 0XE88($v0)
/* 000023 0x80B43A0C 00054400 */ sll	$t0, $a1, 16
/* 000024 0x80B43A10 31F8FFFF */ andi	$t8, $t7, 0XFFFF
/* 000025 0x80B43A14 03084825 */ or	$t1, $t8, $t0
/* 000026 0x80B43A18 AC490E88 */ sw	$t1, 0XE88($v0)
/* 000027 0x80B43A1C 03E00008 */ jr	$ra
/* 000028 0x80B43A20 00000000 */ nop

