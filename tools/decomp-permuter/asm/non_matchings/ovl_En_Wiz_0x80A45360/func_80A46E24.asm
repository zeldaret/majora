glabel func_80A46E24
/* 001713 0x80A46E24 27BDFF98 */ addiu	$sp, $sp, -0X68
/* 001714 0x80A46E28 AFB00038 */ sw	$s0, 0X38($sp)
/* 001715 0x80A46E2C 00808025 */ move	$s0, $a0
/* 001716 0x80A46E30 AFBF003C */ sw	$ra, 0X3C($sp)
/* 001717 0x80A46E34 AFA5006C */ sw	$a1, 0X6C($sp)
/* 001718 0x80A46E38 C604015C */ lwc1	$f4, 0X15C($s0)
/* 001719 0x80A46E3C E7A40064 */ swc1	$f4, 0X64($sp)
/* 001720 0x80A46E40 860E03B6 */ lh	$t6, 0X3B6($s0)
/* 001721 0x80A46E44 29C10003 */ slti	$at, $t6, 0X3
/* 001722 0x80A46E48 54200004 */ bnezl	$at, .L80A46E5C
/* 001723 0x80A46E4C 860F03B2 */ lh	$t7, 0X3B2($s0)
/* 001724 0x80A46E50 0C291829 */ jal	func_80A460A4
/* 001725 0x80A46E54 02002025 */ move	$a0, $s0
/* 001726 0x80A46E58 860F03B2 */ lh	$t7, 0X3B2($s0)
.L80A46E5C:
/* 001727 0x80A46E5C 26040144 */ addiu	$a0, $s0, 0X144
/* 001728 0x80A46E60 55E00063 */ bnezl	$t7, .L80A46FF0
/* 001729 0x80A46E64 8FBF003C */ lw	$ra, 0X3C($sp)
/* 001730 0x80A46E68 0C04DE2E */ jal	func_801378B8
/* 001731 0x80A46E6C 3C0540C0 */ lui	$a1, 0x40C0
/* 001732 0x80A46E70 50400049 */ beqzl	$v0, .L80A46F98
/* 001733 0x80A46E74 3C014100 */ lui	$at, 0x4100
/* 001734 0x80A46E78 861803BA */ lh	$t8, 0X3BA($s0)
/* 001735 0x80A46E7C 8FB9006C */ lw	$t9, 0X6C($sp)
/* 001736 0x80A46E80 57000045 */ bnezl	$t8, .L80A46F98
/* 001737 0x80A46E84 3C014100 */ lui	$at, 0x4100
/* 001738 0x80A46E88 8F281CCC */ lw	$t0, 0X1CCC($t9)
/* 001739 0x80A46E8C 27A40054 */ addiu	$a0, $sp, 0X54
/* 001740 0x80A46E90 26050024 */ addiu	$a1, $s0, 0X24
/* 001741 0x80A46E94 AFA80060 */ sw	$t0, 0X60($sp)
/* 001742 0x80A46E98 8609074A */ lh	$t1, 0X74A($s0)
/* 001743 0x80A46E9C 0C03FD43 */ jal	Math_Vec3f_Copy
/* 001744 0x80A46EA0 AFA90050 */ sw	$t1, 0X50($sp)
/* 001745 0x80A46EA4 0C03FB61 */ jal	Math_Sins
/* 001746 0x80A46EA8 86040032 */ lh	$a0, 0X32($s0)
/* 001747 0x80A46EAC 3C014220 */ lui	$at, 0x4220
/* 001748 0x80A46EB0 44814000 */ mtc1	$at, $f8
/* 001749 0x80A46EB4 3C014270 */ lui	$at, 0x4270
/* 001750 0x80A46EB8 C7A60054 */ lwc1	$f6, 0X54($sp)
/* 001751 0x80A46EBC 46080282 */ mul.s	$f10, $f0, $f8
/* 001752 0x80A46EC0 44812000 */ mtc1	$at, $f4
/* 001753 0x80A46EC4 C7B20058 */ lwc1	$f18, 0X58($sp)
/* 001754 0x80A46EC8 46049200 */ add.s	$f8, $f18, $f4
/* 001755 0x80A46ECC 460A3400 */ add.s	$f16, $f6, $f10
/* 001756 0x80A46ED0 E7A80058 */ swc1	$f8, 0X58($sp)
/* 001757 0x80A46ED4 E7B00054 */ swc1	$f16, 0X54($sp)
/* 001758 0x80A46ED8 0C03FB51 */ jal	Math_Coss
/* 001759 0x80A46EDC 86040032 */ lh	$a0, 0X32($s0)
/* 001760 0x80A46EE0 3C014220 */ lui	$at, 0x4220
/* 001761 0x80A46EE4 44815000 */ mtc1	$at, $f10
/* 001762 0x80A46EE8 C7A6005C */ lwc1	$f6, 0X5C($sp)
/* 001763 0x80A46EEC 8FAA0050 */ lw	$t2, 0X50($sp)
/* 001764 0x80A46EF0 460A0402 */ mul.s	$f16, $f0, $f10
/* 001765 0x80A46EF4 24010002 */ li	$at, 0X2
/* 001766 0x80A46EF8 46103480 */ add.s	$f18, $f6, $f16
/* 001767 0x80A46EFC 15410002 */ bne	$t2, $at, .L80A46F08
/* 001768 0x80A46F00 E7B2005C */ swc1	$f18, 0X5C($sp)
/* 001769 0x80A46F04 AFA00050 */ sw	$zero, 0X50($sp)
.L80A46F08:
/* 001770 0x80A46F08 8FA50060 */ lw	$a1, 0X60($sp)
/* 001771 0x80A46F0C 27A40054 */ addiu	$a0, $sp, 0X54
/* 001772 0x80A46F10 24A50024 */ addiu	$a1, $a1, 0X24
/* 001773 0x80A46F14 0C03FEA5 */ jal	Math_Vec3f_Pitch
/* 001774 0x80A46F18 AFA50044 */ sw	$a1, 0X44($sp)
/* 001775 0x80A46F1C 8FA50044 */ lw	$a1, 0X44($sp)
/* 001776 0x80A46F20 A7A20048 */ sh	$v0, 0X48($sp)
/* 001777 0x80A46F24 0C03FE98 */ jal	Math_Vec3f_Yaw
/* 001778 0x80A46F28 27A40054 */ addiu	$a0, $sp, 0X54
/* 001779 0x80A46F2C 8FAD0050 */ lw	$t5, 0X50($sp)
/* 001780 0x80A46F30 8FA6006C */ lw	$a2, 0X6C($sp)
/* 001781 0x80A46F34 C7A40054 */ lwc1	$f4, 0X54($sp)
/* 001782 0x80A46F38 C7A80058 */ lwc1	$f8, 0X58($sp)
/* 001783 0x80A46F3C C7AA005C */ lwc1	$f10, 0X5C($sp)
/* 001784 0x80A46F40 87AC0048 */ lh	$t4, 0X48($sp)
/* 001785 0x80A46F44 000D7080 */ sll	$t6, $t5, 2
/* 001786 0x80A46F48 AFAE0028 */ sw	$t6, 0X28($sp)
/* 001787 0x80A46F4C 02002825 */ move	$a1, $s0
/* 001788 0x80A46F50 2407015F */ li	$a3, 0X15F
/* 001789 0x80A46F54 AFA20020 */ sw	$v0, 0X20($sp)
/* 001790 0x80A46F58 AFA00024 */ sw	$zero, 0X24($sp)
/* 001791 0x80A46F5C 24C41CA0 */ addiu	$a0, $a2, 0X1CA0
/* 001792 0x80A46F60 E7A40010 */ swc1	$f4, 0X10($sp)
/* 001793 0x80A46F64 E7A80014 */ swc1	$f8, 0X14($sp)
/* 001794 0x80A46F68 E7AA0018 */ swc1	$f10, 0X18($sp)
/* 001795 0x80A46F6C 0C02EC30 */ jal	Actor_SpawnWithParent
/* 001796 0x80A46F70 AFAC001C */ sw	$t4, 0X1C($sp)
/* 001797 0x80A46F74 240F0001 */ li	$t7, 0X1
/* 001798 0x80A46F78 A60F03BA */ sh	$t7, 0X3BA($s0)
/* 001799 0x80A46F7C 02002025 */ move	$a0, $s0
/* 001800 0x80A46F80 0C02E3B2 */ jal	func_800B8EC8
/* 001801 0x80A46F84 240538A8 */ li	$a1, 0X38A8
/* 001802 0x80A46F88 02002025 */ move	$a0, $s0
/* 001803 0x80A46F8C 0C02E3B2 */ jal	func_800B8EC8
/* 001804 0x80A46F90 24050879 */ li	$a1, 0X879
/* 001805 0x80A46F94 3C014100 */ lui	$at, 0x4100
.L80A46F98:
/* 001806 0x80A46F98 44818000 */ mtc1	$at, $f16
/* 001807 0x80A46F9C C7A60064 */ lwc1	$f6, 0X64($sp)
/* 001808 0x80A46FA0 4606803E */ c.le.s	$f16, $f6
/* 001809 0x80A46FA4 00000000 */ nop
/* 001810 0x80A46FA8 45020009 */ bc1fl .L80A46FD0
/* 001811 0x80A46FAC C7B20064 */ lwc1	$f18, 0X64($sp)
/* 001812 0x80A46FB0 921803CA */ lbu	$t8, 0X3CA($s0)
/* 001813 0x80A46FB4 24190003 */ li	$t9, 0X3
/* 001814 0x80A46FB8 24080001 */ li	$t0, 0X1
/* 001815 0x80A46FBC 57000004 */ bnezl	$t8, .L80A46FD0
/* 001816 0x80A46FC0 C7B20064 */ lwc1	$f18, 0X64($sp)
/* 001817 0x80A46FC4 A61903B2 */ sh	$t9, 0X3B2($s0)
/* 001818 0x80A46FC8 A20803CA */ sb	$t0, 0X3CA($s0)
/* 001819 0x80A46FCC C7B20064 */ lwc1	$f18, 0X64($sp)
.L80A46FD0:
/* 001820 0x80A46FD0 C60403D0 */ lwc1	$f4, 0X3D0($s0)
/* 001821 0x80A46FD4 4612203E */ c.le.s	$f4, $f18
/* 001822 0x80A46FD8 00000000 */ nop
/* 001823 0x80A46FDC 45020004 */ bc1fl .L80A46FF0
/* 001824 0x80A46FE0 8FBF003C */ lw	$ra, 0X3C($sp)
/* 001825 0x80A46FE4 0C291C00 */ jal	func_80A47000
/* 001826 0x80A46FE8 02002025 */ move	$a0, $s0
/* 001827 0x80A46FEC 8FBF003C */ lw	$ra, 0X3C($sp)
.L80A46FF0:
/* 001828 0x80A46FF0 8FB00038 */ lw	$s0, 0X38($sp)
/* 001829 0x80A46FF4 27BD0068 */ addiu	$sp, $sp, 0X68
/* 001830 0x80A46FF8 03E00008 */ jr	$ra
/* 001831 0x80A46FFC 00000000 */ nop

