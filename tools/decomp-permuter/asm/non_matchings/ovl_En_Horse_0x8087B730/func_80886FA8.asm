glabel func_80886FA8
/* 011806 0x80886FA8 27BDFFD0 */ addiu	$sp, $sp, -0X30
/* 011807 0x80886FAC AFB00018 */ sw	$s0, 0X18($sp)
/* 011808 0x80886FB0 00808025 */ move	$s0, $a0
/* 011809 0x80886FB4 AFBF001C */ sw	$ra, 0X1C($sp)
/* 011810 0x80886FB8 00A03025 */ move	$a2, $a1
/* 011811 0x80886FBC 8CC51CCC */ lw	$a1, 0X1CCC($a2)
/* 011812 0x80886FC0 0C02DB35 */ jal	Actor_YawBetweenActors
/* 011813 0x80886FC4 02002025 */ move	$a0, $s0
/* 011814 0x80886FC8 860E0032 */ lh	$t6, 0X32($s0)
/* 011815 0x80886FCC 004E2023 */ subu	$a0, $v0, $t6
/* 011816 0x80886FD0 00042400 */ sll	$a0, $a0, 16
/* 011817 0x80886FD4 00042403 */ sra	$a0, $a0, 16
/* 011818 0x80886FD8 0C03FB61 */ jal	Math_Sins
/* 011819 0x80886FDC A7A4002A */ sh	$a0, 0X2A($sp)
/* 011820 0x80886FE0 87A4002A */ lh	$a0, 0X2A($sp)
/* 011821 0x80886FE4 0C03FB51 */ jal	Math_Coss
/* 011822 0x80886FE8 E7A00024 */ swc1	$f0, 0X24($sp)
/* 011823 0x80886FEC 3C018089 */ lui	$at, %hi(D_80889388)
/* 011824 0x80886FF0 C7A20024 */ lwc1	$f2, 0X24($sp)
/* 011825 0x80886FF4 C4249388 */ lwc1	$f4, %lo(D_80889388)($at)
/* 011826 0x80886FF8 240F0005 */ li	$t7, 0X5
/* 011827 0x80886FFC 3C018089 */ lui	$at, %hi(D_8088938C)
/* 011828 0x80887000 4602203C */ c.lt.s	$f4, $f2
/* 011829 0x80887004 00000000 */ nop
/* 011830 0x80887008 45000003 */ bc1f .L80887018
/* 011831 0x8088700C 00000000 */ nop
/* 011832 0x80887010 1000001F */ b	.L80887090
/* 011833 0x80887014 AE0F0370 */ sw	$t7, 0X370($s0)
.L80887018:
/* 011834 0x80887018 C426938C */ lwc1	$f6, %lo(D_8088938C)($at)
/* 011835 0x8088701C 24180004 */ li	$t8, 0X4
/* 011836 0x80887020 4606103C */ c.lt.s	$f2, $f6
/* 011837 0x80887024 00000000 */ nop
/* 011838 0x80887028 45020004 */ bc1fl .L8088703C
/* 011839 0x8088702C 44806000 */ mtc1	$zero, $f12
/* 011840 0x80887030 10000017 */ b	.L80887090
/* 011841 0x80887034 AE180370 */ sw	$t8, 0X370($s0)
/* 011842 0x80887038 44806000 */ mtc1	$zero, $f12
.L8088703C:
/* 011843 0x8088703C 00000000 */ nop
/* 011844 0x80887040 4600603C */ c.lt.s	$f12, $f0
/* 011845 0x80887044 00000000 */ nop
/* 011846 0x80887048 4502000A */ bc1fl .L80887074
/* 011847 0x8088704C 4602603C */ c.lt.s	$f12, $f2
/* 011848 0x80887050 4602603C */ c.lt.s	$f12, $f2
/* 011849 0x80887054 24190001 */ li	$t9, 0X1
/* 011850 0x80887058 45000003 */ bc1f .L80887068
/* 011851 0x8088705C 00000000 */ nop
/* 011852 0x80887060 1000000B */ b	.L80887090
/* 011853 0x80887064 AE190370 */ sw	$t9, 0X370($s0)
.L80887068:
/* 011854 0x80887068 10000009 */ b	.L80887090
/* 011855 0x8088706C AE000370 */ sw	$zero, 0X370($s0)
/* 011856 0x80887070 4602603C */ c.lt.s	$f12, $f2
.L80887074:
/* 011857 0x80887074 24080003 */ li	$t0, 0X3
/* 011858 0x80887078 24090002 */ li	$t1, 0X2
/* 011859 0x8088707C 45020004 */ bc1fl .L80887090
/* 011860 0x80887080 AE090370 */ sw	$t1, 0X370($s0)
/* 011861 0x80887084 10000002 */ b	.L80887090
/* 011862 0x80887088 AE080370 */ sw	$t0, 0X370($s0)
/* 011863 0x8088708C AE090370 */ sw	$t1, 0X370($s0)
.L80887090:
/* 011864 0x80887090 8FBF001C */ lw	$ra, 0X1C($sp)
/* 011865 0x80887094 8FB00018 */ lw	$s0, 0X18($sp)
/* 011866 0x80887098 27BD0030 */ addiu	$sp, $sp, 0X30
/* 011867 0x8088709C 03E00008 */ jr	$ra
/* 011868 0x808870A0 00000000 */ nop

