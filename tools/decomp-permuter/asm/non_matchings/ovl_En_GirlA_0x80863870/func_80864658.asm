glabel func_80864658
/* 000890 0x80864658 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 000891 0x8086465C AFBF0014 */ sw	$ra, 0X14($sp)
/* 000892 0x80864660 AFA40018 */ sw	$a0, 0X18($sp)
/* 000893 0x80864664 AFA5001C */ sw	$a1, 0X1C($sp)
/* 000894 0x80864668 8FA40018 */ lw	$a0, 0X18($sp)
/* 000895 0x8086466C 0C044BA0 */ jal	func_80112E80
/* 000896 0x80864670 24050052 */ li	$a1, 0X52
/* 000897 0x80864674 8FAE0018 */ lw	$t6, 0X18($sp)
/* 000898 0x80864678 3C040001 */ lui	$a0, 0x0001
/* 000899 0x8086467C 008E2021 */ addu	$a0, $a0, $t6
/* 000900 0x80864680 8C846974 */ lw	$a0, 0X6974($a0)
/* 000901 0x80864684 00042023 */ negu	$a0, $a0
/* 000902 0x80864688 00042400 */ sll	$a0, $a0, 16
/* 000903 0x8086468C 0C04567B */ jal	func_801159EC
/* 000904 0x80864690 00042403 */ sra	$a0, $a0, 16
/* 000905 0x80864694 8FBF0014 */ lw	$ra, 0X14($sp)
/* 000906 0x80864698 27BD0018 */ addiu	$sp, $sp, 0X18
/* 000907 0x8086469C 03E00008 */ jr	$ra
/* 000908 0x808646A0 00000000 */ nop

