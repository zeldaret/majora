glabel ObjHamishi_Draw
/* 000551 0x809A17BC 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000552 0x809A17C0 AFBF0014 */ sw	$ra, 0X14($sp)
/* 000553 0x809A17C4 00803825 */ move	$a3, $a0
/* 000554 0x809A17C8 3C01809A */ lui	$at, %hi(D_809A1B00)
/* 000555 0x809A17CC C4241B00 */ lwc1	$f4, %lo(D_809A1B00)($at)
/* 000556 0x809A17D0 C4E000F4 */ lwc1	$f0, 0XF4($a3)
/* 000557 0x809A17D4 8CA60000 */ lw	$a2, 0X0($a1)
/* 000558 0x809A17D8 241800A0 */ li	$t8, 0XA0
/* 000559 0x809A17DC 4604003E */ c.le.s	$f0, $f4
/* 000560 0x809A17E0 00000000 */ nop
/* 000561 0x809A17E4 4503000C */ bc1tl .L809A1818
/* 000562 0x809A17E8 A0F800D0 */ sb	$t8, 0XD0($a3)
/* 000563 0x809A17EC 90EE01A2 */ lbu	$t6, 0X1A2($a3)
/* 000564 0x809A17F0 3C01809A */ lui	$at, %hi(D_809A1B04)
/* 000565 0x809A17F4 31CF0001 */ andi	$t7, $t6, 0X1
/* 000566 0x809A17F8 11E00035 */ beqz	$t7, .L809A18D0
/* 000567 0x809A17FC 00000000 */ nop
/* 000568 0x809A1800 C42C1B04 */ lwc1	$f12, %lo(D_809A1B04)($at)
/* 000569 0x809A1804 460C003C */ c.lt.s	$f0, $f12
/* 000570 0x809A1808 00000000 */ nop
/* 000571 0x809A180C 45000030 */ bc1f .L809A18D0
/* 000572 0x809A1810 00000000 */ nop
/* 000573 0x809A1814 A0F800D0 */ sb	$t8, 0XD0($a3)
.L809A1818:
/* 000574 0x809A1818 8CA40000 */ lw	$a0, 0X0($a1)
/* 000575 0x809A181C AFA60038 */ sw	$a2, 0X38($sp)
/* 000576 0x809A1820 0C04B0A3 */ jal	func_8012C28C
/* 000577 0x809A1824 AFA50044 */ sw	$a1, 0X44($sp)
/* 000578 0x809A1828 8FA50044 */ lw	$a1, 0X44($sp)
/* 000579 0x809A182C 8FA60038 */ lw	$a2, 0X38($sp)
/* 000580 0x809A1830 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000581 0x809A1834 3C08DB06 */ lui	$t0, 0xDB06
/* 000582 0x809A1838 3C09801B */ lui	$t1, %hi(D_801AEFA0)
/* 000583 0x809A183C 24590008 */ addiu	$t9, $v0, 0X8
/* 000584 0x809A1840 ACD902B0 */ sw	$t9, 0X2B0($a2)
/* 000585 0x809A1844 2529EFA0 */ addiu	$t1, $t1, %lo(D_801AEFA0)
/* 000586 0x809A1848 35080020 */ ori	$t0, $t0, 0X20
/* 000587 0x809A184C AC480000 */ sw	$t0, 0X0($v0)
/* 000588 0x809A1850 AC490004 */ sw	$t1, 0X4($v0)
/* 000589 0x809A1854 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000590 0x809A1858 3C0BDA38 */ lui	$t3, 0xDA38
/* 000591 0x809A185C 356B0003 */ ori	$t3, $t3, 0X3
/* 000592 0x809A1860 244A0008 */ addiu	$t2, $v0, 0X8
/* 000593 0x809A1864 ACCA02B0 */ sw	$t2, 0X2B0($a2)
/* 000594 0x809A1868 AC4B0000 */ sw	$t3, 0X0($v0)
/* 000595 0x809A186C 8CA40000 */ lw	$a0, 0X0($a1)
/* 000596 0x809A1870 AFA60038 */ sw	$a2, 0X38($sp)
/* 000597 0x809A1874 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000598 0x809A1878 AFA2002C */ sw	$v0, 0X2C($sp)
/* 000599 0x809A187C 8FA3002C */ lw	$v1, 0X2C($sp)
/* 000600 0x809A1880 8FA60038 */ lw	$a2, 0X38($sp)
/* 000601 0x809A1884 3C0DFA00 */ lui	$t5, 0xFA00
/* 000602 0x809A1888 AC620004 */ sw	$v0, 0X4($v1)
/* 000603 0x809A188C 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000604 0x809A1890 3C0EFFAA */ lui	$t6, 0xFFAA
/* 000605 0x809A1894 35CE82FF */ ori	$t6, $t6, 0X82FF
/* 000606 0x809A1898 244C0008 */ addiu	$t4, $v0, 0X8
/* 000607 0x809A189C ACCC02B0 */ sw	$t4, 0X2B0($a2)
/* 000608 0x809A18A0 AC4E0004 */ sw	$t6, 0X4($v0)
/* 000609 0x809A18A4 AC4D0000 */ sw	$t5, 0X0($v0)
/* 000610 0x809A18A8 8CC202B0 */ lw	$v0, 0X2B0($a2)
/* 000611 0x809A18AC 3C190500 */ lui	$t9, 0x0500
/* 000612 0x809A18B0 273961E8 */ addiu	$t9, $t9, 0X61E8
/* 000613 0x809A18B4 244F0008 */ addiu	$t7, $v0, 0X8
/* 000614 0x809A18B8 ACCF02B0 */ sw	$t7, 0X2B0($a2)
/* 000615 0x809A18BC 3C18DE00 */ lui	$t8, 0xDE00
/* 000616 0x809A18C0 AC580000 */ sw	$t8, 0X0($v0)
/* 000617 0x809A18C4 AC590004 */ sw	$t9, 0X4($v0)
/* 000618 0x809A18C8 10000067 */ b	.L809A1A68
/* 000619 0x809A18CC 8FBF0014 */ lw	$ra, 0X14($sp)
.L809A18D0:
/* 000620 0x809A18D0 3C01809A */ lui	$at, %hi(D_809A1B08)
/* 000621 0x809A18D4 C42C1B08 */ lwc1	$f12, %lo(D_809A1B08)($at)
/* 000622 0x809A18D8 3C01809A */ lui	$at, %hi(D_809A1B0C)
/* 000623 0x809A18DC 460C003C */ c.lt.s	$f0, $f12
/* 000624 0x809A18E0 00000000 */ nop
/* 000625 0x809A18E4 4502005F */ bc1fl .L809A1A64
/* 000626 0x809A18E8 A0E000D0 */ sb	$zero, 0XD0($a3)
/* 000627 0x809A18EC 46006181 */ sub.s	$f6, $f12, $f0
/* 000628 0x809A18F0 C4281B0C */ lwc1	$f8, %lo(D_809A1B0C)($at)
/* 000629 0x809A18F4 3C01809A */ lui	$at, %hi(D_809A1B10)
/* 000630 0x809A18F8 C42A1B10 */ lwc1	$f10, %lo(D_809A1B10)($at)
/* 000631 0x809A18FC 46083082 */ mul.s	$f2, $f6, $f8
/* 000632 0x809A1900 24090001 */ li	$t1, 0X1
/* 000633 0x809A1904 3C014F00 */ lui	$at, 0x4F00
/* 000634 0x809A1908 460A1402 */ mul.s	$f16, $f2, $f10
/* 000635 0x809A190C 4448F800 */ cfc1	$t0, $31
/* 000636 0x809A1910 44C9F800 */ ctc1	$t1, $31
/* 000637 0x809A1914 00000000 */ nop
/* 000638 0x809A1918 460084A4 */ cvt.w.s	$f18, $f16
/* 000639 0x809A191C 4449F800 */ cfc1	$t1, $31
/* 000640 0x809A1920 00000000 */ nop
/* 000641 0x809A1924 31290078 */ andi	$t1, $t1, 0X78
/* 000642 0x809A1928 51200013 */ beqzl	$t1, .L809A1978
/* 000643 0x809A192C 44099000 */ mfc1	$t1, $f18
/* 000644 0x809A1930 44819000 */ mtc1	$at, $f18
/* 000645 0x809A1934 24090001 */ li	$t1, 0X1
/* 000646 0x809A1938 46128481 */ sub.s	$f18, $f16, $f18
/* 000647 0x809A193C 44C9F800 */ ctc1	$t1, $31
/* 000648 0x809A1940 00000000 */ nop
/* 000649 0x809A1944 460094A4 */ cvt.w.s	$f18, $f18
/* 000650 0x809A1948 4449F800 */ cfc1	$t1, $31
/* 000651 0x809A194C 00000000 */ nop
/* 000652 0x809A1950 31290078 */ andi	$t1, $t1, 0X78
/* 000653 0x809A1954 15200005 */ bnez	$t1, .L809A196C
/* 000654 0x809A1958 00000000 */ nop
/* 000655 0x809A195C 44099000 */ mfc1	$t1, $f18
/* 000656 0x809A1960 3C018000 */ lui	$at, 0x8000
/* 000657 0x809A1964 10000007 */ b	.L809A1984
/* 000658 0x809A1968 01214825 */ or	$t1, $t1, $at
.L809A196C:
/* 000659 0x809A196C 10000005 */ b	.L809A1984
/* 000660 0x809A1970 2409FFFF */ li	$t1, -0X1
/* 000661 0x809A1974 44099000 */ mfc1	$t1, $f18
.L809A1978:
/* 000662 0x809A1978 00000000 */ nop
/* 000663 0x809A197C 0520FFFB */ bltz	$t1, .L809A196C
/* 000664 0x809A1980 00000000 */ nop
.L809A1984:
/* 000665 0x809A1984 A0E900D0 */ sb	$t1, 0XD0($a3)
/* 000666 0x809A1988 8CA40000 */ lw	$a0, 0X0($a1)
/* 000667 0x809A198C 44C8F800 */ ctc1	$t0, $31
/* 000668 0x809A1990 E7A20020 */ swc1	$f2, 0X20($sp)
/* 000669 0x809A1994 AFA60038 */ sw	$a2, 0X38($sp)
/* 000670 0x809A1998 0C04B0B7 */ jal	func_8012C2DC
/* 000671 0x809A199C AFA50044 */ sw	$a1, 0X44($sp)
/* 000672 0x809A19A0 8FA50044 */ lw	$a1, 0X44($sp)
/* 000673 0x809A19A4 8FA60038 */ lw	$a2, 0X38($sp)
/* 000674 0x809A19A8 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000675 0x809A19AC 3C0BDB06 */ lui	$t3, 0xDB06
/* 000676 0x809A19B0 3C0C801B */ lui	$t4, %hi(D_801AEF88)
/* 000677 0x809A19B4 244A0008 */ addiu	$t2, $v0, 0X8
/* 000678 0x809A19B8 ACCA02C0 */ sw	$t2, 0X2C0($a2)
/* 000679 0x809A19BC 258CEF88 */ addiu	$t4, $t4, %lo(D_801AEF88)
/* 000680 0x809A19C0 356B0020 */ ori	$t3, $t3, 0X20
/* 000681 0x809A19C4 AC4B0000 */ sw	$t3, 0X0($v0)
/* 000682 0x809A19C8 AC4C0004 */ sw	$t4, 0X4($v0)
/* 000683 0x809A19CC 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000684 0x809A19D0 3C0EDA38 */ lui	$t6, 0xDA38
/* 000685 0x809A19D4 35CE0003 */ ori	$t6, $t6, 0X3
/* 000686 0x809A19D8 244D0008 */ addiu	$t5, $v0, 0X8
/* 000687 0x809A19DC ACCD02C0 */ sw	$t5, 0X2C0($a2)
/* 000688 0x809A19E0 AC4E0000 */ sw	$t6, 0X0($v0)
/* 000689 0x809A19E4 8CA40000 */ lw	$a0, 0X0($a1)
/* 000690 0x809A19E8 AFA60038 */ sw	$a2, 0X38($sp)
/* 000691 0x809A19EC 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 000692 0x809A19F0 AFA20018 */ sw	$v0, 0X18($sp)
/* 000693 0x809A19F4 8FA30018 */ lw	$v1, 0X18($sp)
/* 000694 0x809A19F8 8FA60038 */ lw	$a2, 0X38($sp)
/* 000695 0x809A19FC 3C0CDE00 */ lui	$t4, 0xDE00
/* 000696 0x809A1A00 AC620004 */ sw	$v0, 0X4($v1)
/* 000697 0x809A1A04 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000698 0x809A1A08 3C18FA00 */ lui	$t8, 0xFA00
/* 000699 0x809A1A0C 3C01FFAA */ lui	$at, 0xFFAA
/* 000700 0x809A1A10 244F0008 */ addiu	$t7, $v0, 0X8
/* 000701 0x809A1A14 ACCF02C0 */ sw	$t7, 0X2C0($a2)
/* 000702 0x809A1A18 AC580000 */ sw	$t8, 0X0($v0)
/* 000703 0x809A1A1C C7A40020 */ lwc1	$f4, 0X20($sp)
/* 000704 0x809A1A20 34218200 */ ori	$at, $at, 0X8200
/* 000705 0x809A1A24 4600218D */ trunc.w.s	$f6, $f4
/* 000706 0x809A1A28 44083000 */ mfc1	$t0, $f6
/* 000707 0x809A1A2C 00000000 */ nop
/* 000708 0x809A1A30 310900FF */ andi	$t1, $t0, 0XFF
/* 000709 0x809A1A34 01215025 */ or	$t2, $t1, $at
/* 000710 0x809A1A38 AC4A0004 */ sw	$t2, 0X4($v0)
/* 000711 0x809A1A3C 8CC202C0 */ lw	$v0, 0X2C0($a2)
/* 000712 0x809A1A40 3C0D0500 */ lui	$t5, 0x0500
/* 000713 0x809A1A44 25AD61E8 */ addiu	$t5, $t5, 0X61E8
/* 000714 0x809A1A48 244B0008 */ addiu	$t3, $v0, 0X8
/* 000715 0x809A1A4C ACCB02C0 */ sw	$t3, 0X2C0($a2)
/* 000716 0x809A1A50 AC4D0004 */ sw	$t5, 0X4($v0)
/* 000717 0x809A1A54 AC4C0000 */ sw	$t4, 0X0($v0)
/* 000718 0x809A1A58 10000003 */ b	.L809A1A68
/* 000719 0x809A1A5C 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000720 0x809A1A60 A0E000D0 */ sb	$zero, 0XD0($a3)
.L809A1A64:
/* 000721 0x809A1A64 8FBF0014 */ lw	$ra, 0X14($sp)
.L809A1A68:
/* 000722 0x809A1A68 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000723 0x809A1A6C 03E00008 */ jr	$ra
/* 000724 0x809A1A70 00000000 */ nop
/* 000725 0x809A1A74 00000000 */ nop
/* 000726 0x809A1A78 00000000 */ nop
/* 000727 0x809A1A7C 00000000 */ nop

.section .late_rodata

glabel D_809A1B00
/* 000760 0x809A1B00 */ .word	0x45066000
glabel D_809A1B04
/* 000761 0x809A1B04 */ .word	0x450CA000
glabel D_809A1B08
/* 000762 0x809A1B08 */ .word	0x450CA000
glabel D_809A1B0C
/* 000763 0x809A1B0C */ .word	0x40233333
glabel D_809A1B10
/* 000764 0x809A1B10 */ .word	0x3F20A0A1
/* 000765 0x809A1B14 */ .word	0x00000000
/* 000766 0x809A1B18 */ .word	0x00000000
/* 000767 0x809A1B1C */ .word	0x00000000
