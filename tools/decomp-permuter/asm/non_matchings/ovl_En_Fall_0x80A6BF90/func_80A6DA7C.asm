glabel func_80A6DA7C
/* 001723 0x80A6DA7C 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 001724 0x80A6DA80 AFBF002C */ sw	$ra, 0X2C($sp)
/* 001725 0x80A6DA84 AFB00028 */ sw	$s0, 0X28($sp)
/* 001726 0x80A6DA88 AFA40048 */ sw	$a0, 0X48($sp)
/* 001727 0x80A6DA8C AFA5004C */ sw	$a1, 0X4C($sp)
/* 001728 0x80A6DA90 8FAE004C */ lw	$t6, 0X4C($sp)
/* 001729 0x80A6DA94 8DC40000 */ lw	$a0, 0X0($t6)
/* 001730 0x80A6DA98 0C04B0A3 */ jal	func_8012C28C
/* 001731 0x80A6DA9C 00808025 */ move	$s0, $a0
/* 001732 0x80A6DAA0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001733 0x80A6DAA4 3C18DA38 */ lui	$t8, 0xDA38
/* 001734 0x80A6DAA8 37180003 */ ori	$t8, $t8, 0X3
/* 001735 0x80A6DAAC 244F0008 */ addiu	$t7, $v0, 0X8
/* 001736 0x80A6DAB0 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 001737 0x80A6DAB4 AC580000 */ sw	$t8, 0X0($v0)
/* 001738 0x80A6DAB8 8FB9004C */ lw	$t9, 0X4C($sp)
/* 001739 0x80A6DABC 8F240000 */ lw	$a0, 0X0($t9)
/* 001740 0x80A6DAC0 0C060690 */ jal	SysMatrix_AppendStateToPolyOpaDisp
/* 001741 0x80A6DAC4 AFA20030 */ sw	$v0, 0X30($sp)
/* 001742 0x80A6DAC8 8FA30030 */ lw	$v1, 0X30($sp)
/* 001743 0x80A6DACC 24050014 */ li	$a1, 0X14
/* 001744 0x80A6DAD0 24060019 */ li	$a2, 0X19
/* 001745 0x80A6DAD4 AC620004 */ sw	$v0, 0X4($v1)
/* 001746 0x80A6DAD8 8E0402B0 */ lw	$a0, 0X2B0($s0)
/* 001747 0x80A6DADC 240803E7 */ li	$t0, 0X3E7
/* 001748 0x80A6DAE0 24093200 */ li	$t1, 0X3200
/* 001749 0x80A6DAE4 AFA90018 */ sw	$t1, 0X18($sp)
/* 001750 0x80A6DAE8 AFA80014 */ sw	$t0, 0X14($sp)
/* 001751 0x80A6DAEC AFA00010 */ sw	$zero, 0X10($sp)
/* 001752 0x80A6DAF0 0C04AF14 */ jal	Gfx_SetFog
/* 001753 0x80A6DAF4 2407001E */ li	$a3, 0X1E
/* 001754 0x80A6DAF8 AE0202B0 */ sw	$v0, 0X2B0($s0)
/* 001755 0x80A6DAFC 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001756 0x80A6DB00 3C0BE200 */ lui	$t3, 0xE200
/* 001757 0x80A6DB04 3C0C0C19 */ lui	$t4, 0x0C19
/* 001758 0x80A6DB08 244A0008 */ addiu	$t2, $v0, 0X8
/* 001759 0x80A6DB0C AE0A02B0 */ sw	$t2, 0X2B0($s0)
/* 001760 0x80A6DB10 358C2078 */ ori	$t4, $t4, 0X2078
/* 001761 0x80A6DB14 356B001C */ ori	$t3, $t3, 0X1C
/* 001762 0x80A6DB18 AC4B0000 */ sw	$t3, 0X0($v0)
/* 001763 0x80A6DB1C AC4C0004 */ sw	$t4, 0X4($v0)
/* 001764 0x80A6DB20 3C06D900 */ lui	$a2, 0xD900
/* 001765 0x80A6DB24 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001766 0x80A6DB28 3C0E0020 */ lui	$t6, 0x0020
/* 001767 0x80A6DB2C 35CE0405 */ ori	$t6, $t6, 0X405
/* 001768 0x80A6DB30 244D0008 */ addiu	$t5, $v0, 0X8
/* 001769 0x80A6DB34 AE0D02B0 */ sw	$t5, 0X2B0($s0)
/* 001770 0x80A6DB38 AC4E0004 */ sw	$t6, 0X4($v0)
/* 001771 0x80A6DB3C AC460000 */ sw	$a2, 0X0($v0)
/* 001772 0x80A6DB40 8FAF0048 */ lw	$t7, 0X48($sp)
/* 001773 0x80A6DB44 3C014348 */ lui	$at, 0x4348
/* 001774 0x80A6DB48 44813000 */ mtc1	$at, $f6
/* 001775 0x80A6DB4C C5E40150 */ lwc1	$f4, 0X150($t7)
/* 001776 0x80A6DB50 3C014220 */ lui	$at, 0x4220
/* 001777 0x80A6DB54 44815000 */ mtc1	$at, $f10
/* 001778 0x80A6DB58 46062202 */ mul.s	$f8, $f4, $f6
/* 001779 0x80A6DB5C 3C08FA00 */ lui	$t0, 0xFA00
/* 001780 0x80A6DB60 35080080 */ ori	$t0, $t0, 0X80
/* 001781 0x80A6DB64 3C04DE00 */ lui	$a0, 0xDE00
/* 001782 0x80A6DB68 460A4400 */ add.s	$f16, $f8, $f10
/* 001783 0x80A6DB6C 4600848D */ trunc.w.s	$f18, $f16
/* 001784 0x80A6DB70 44059000 */ mfc1	$a1, $f18
/* 001785 0x80A6DB74 00000000 */ nop
/* 001786 0x80A6DB78 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001787 0x80A6DB7C 30A300FF */ andi	$v1, $a1, 0XFF
/* 001788 0x80A6DB80 00034E00 */ sll	$t1, $v1, 24
/* 001789 0x80A6DB84 00035400 */ sll	$t2, $v1, 16
/* 001790 0x80A6DB88 012A5825 */ or	$t3, $t1, $t2
/* 001791 0x80A6DB8C 00036200 */ sll	$t4, $v1, 8
/* 001792 0x80A6DB90 24590008 */ addiu	$t9, $v0, 0X8
/* 001793 0x80A6DB94 AE1902B0 */ sw	$t9, 0X2B0($s0)
/* 001794 0x80A6DB98 016C6825 */ or	$t5, $t3, $t4
/* 001795 0x80A6DB9C 35AE00FF */ ori	$t6, $t5, 0XFF
/* 001796 0x80A6DBA0 AC4E0004 */ sw	$t6, 0X4($v0)
/* 001797 0x80A6DBA4 AC480000 */ sw	$t0, 0X0($v0)
/* 001798 0x80A6DBA8 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001799 0x80A6DBAC 3C180600 */ lui	$t8, 0x0600
/* 001800 0x80A6DBB0 271810E0 */ addiu	$t8, $t8, 0X10E0
/* 001801 0x80A6DBB4 244F0008 */ addiu	$t7, $v0, 0X8
/* 001802 0x80A6DBB8 AE0F02B0 */ sw	$t7, 0X2B0($s0)
/* 001803 0x80A6DBBC AC580004 */ sw	$t8, 0X4($v0)
/* 001804 0x80A6DBC0 AC440000 */ sw	$a0, 0X0($v0)
/* 001805 0x80A6DBC4 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001806 0x80A6DBC8 3C080022 */ lui	$t0, 0x0022
/* 001807 0x80A6DBCC 35080405 */ ori	$t0, $t0, 0X405
/* 001808 0x80A6DBD0 24590008 */ addiu	$t9, $v0, 0X8
/* 001809 0x80A6DBD4 AE1902B0 */ sw	$t9, 0X2B0($s0)
/* 001810 0x80A6DBD8 AC480004 */ sw	$t0, 0X4($v0)
/* 001811 0x80A6DBDC AC460000 */ sw	$a2, 0X0($v0)
/* 001812 0x80A6DBE0 8E0202B0 */ lw	$v0, 0X2B0($s0)
/* 001813 0x80A6DBE4 3C0A0600 */ lui	$t2, 0x0600
/* 001814 0x80A6DBE8 254A1158 */ addiu	$t2, $t2, 0X1158
/* 001815 0x80A6DBEC 24490008 */ addiu	$t1, $v0, 0X8
/* 001816 0x80A6DBF0 AE0902B0 */ sw	$t1, 0X2B0($s0)
/* 001817 0x80A6DBF4 AC4A0004 */ sw	$t2, 0X4($v0)
/* 001818 0x80A6DBF8 AC440000 */ sw	$a0, 0X0($v0)
/* 001819 0x80A6DBFC 8FA4004C */ lw	$a0, 0X4C($sp)
/* 001820 0x80A6DC00 0C05982E */ jal	func_801660B8
/* 001821 0x80A6DC04 8E0502B0 */ lw	$a1, 0X2B0($s0)
/* 001822 0x80A6DC08 AE0202B0 */ sw	$v0, 0X2B0($s0)
/* 001823 0x80A6DC0C 8FBF002C */ lw	$ra, 0X2C($sp)
/* 001824 0x80A6DC10 8FB00028 */ lw	$s0, 0X28($sp)
/* 001825 0x80A6DC14 27BD0048 */ addiu	$sp, $sp, 0X48
/* 001826 0x80A6DC18 03E00008 */ jr	$ra
/* 001827 0x80A6DC1C 00000000 */ nop

