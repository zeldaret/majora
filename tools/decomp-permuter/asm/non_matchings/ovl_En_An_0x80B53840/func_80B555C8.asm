glabel func_80B555C8
/* 001890 0x80B555C8 27BDFFE8 */ addiu	$sp, $sp, -0X18
/* 001891 0x80B555CC AFBF0014 */ sw	$ra, 0X14($sp)
/* 001892 0x80B555D0 908E0200 */ lbu	$t6, 0X200($a0)
/* 001893 0x80B555D4 25CFFFF2 */ addiu	$t7, $t6, -0XE
/* 001894 0x80B555D8 2DE10028 */ sltiu	$at, $t7, 0X28
/* 001895 0x80B555DC 10200026 */ beqz	$at, .L80B55678
/* 001896 0x80B555E0 000F7880 */ sll	$t7, $t7, 2
/* 001897 0x80B555E4 3C0180B6 */ lui	$at, %hi(jtbl_D_80B59138)
/* 001898 0x80B555E8 002F0821 */ addu	$at, $at, $t7
/* 001899 0x80B555EC 8C2F9138 */ lw	$t7, %lo(jtbl_D_80B59138)($at)
/* 001900 0x80B555F0 01E00008 */ jr	$t7
/* 001901 0x80B555F4 00000000 */ nop
glabel L80B555F8
.L80B555F8:
/* 001902 0x80B555F8 0C2D4F3A */ jal	func_80B53CE8
/* 001903 0x80B555FC 24060001 */ li	$a2, 0X1
/* 001904 0x80B55600 10000039 */ b	.L80B556E8
/* 001905 0x80B55604 00001025 */ move	$v0, $zero
glabel L80B55608
.L80B55608:
/* 001906 0x80B55608 24060017 */ li	$a2, 0X17
/* 001907 0x80B5560C 0C2D4F3A */ jal	func_80B53CE8
/* 001908 0x80B55610 AFA40018 */ sw	$a0, 0X18($sp)
/* 001909 0x80B55614 8FA40018 */ lw	$a0, 0X18($sp)
/* 001910 0x80B55618 94980360 */ lhu	$t8, 0X360($a0)
/* 001911 0x80B5561C 37192000 */ ori	$t9, $t8, 0X2000
/* 001912 0x80B55620 10000030 */ b	.L80B556E4
/* 001913 0x80B55624 A4990360 */ sh	$t9, 0X360($a0)
glabel L80B55628
.L80B55628:
/* 001914 0x80B55628 0C2D4F3A */ jal	func_80B53CE8
/* 001915 0x80B5562C 2406000C */ li	$a2, 0XC
/* 001916 0x80B55630 1000002D */ b	.L80B556E8
/* 001917 0x80B55634 00001025 */ move	$v0, $zero
glabel L80B55638
.L80B55638:
/* 001918 0x80B55638 0C2D4F3A */ jal	func_80B53CE8
/* 001919 0x80B5563C 2406000F */ li	$a2, 0XF
/* 001920 0x80B55640 10000029 */ b	.L80B556E8
/* 001921 0x80B55644 00001025 */ move	$v0, $zero
glabel L80B55648
.L80B55648:
/* 001922 0x80B55648 0C2D4F3A */ jal	func_80B53CE8
/* 001923 0x80B5564C 24060007 */ li	$a2, 0X7
/* 001924 0x80B55650 10000025 */ b	.L80B556E8
/* 001925 0x80B55654 00001025 */ move	$v0, $zero
glabel L80B55658
.L80B55658:
/* 001926 0x80B55658 24060016 */ li	$a2, 0X16
/* 001927 0x80B5565C 0C2D4F3A */ jal	func_80B53CE8
/* 001928 0x80B55660 AFA40018 */ sw	$a0, 0X18($sp)
/* 001929 0x80B55664 8FA40018 */ lw	$a0, 0X18($sp)
/* 001930 0x80B55668 94880360 */ lhu	$t0, 0X360($a0)
/* 001931 0x80B5566C 35092000 */ ori	$t1, $t0, 0X2000
/* 001932 0x80B55670 1000001C */ b	.L80B556E4
/* 001933 0x80B55674 A4890360 */ sh	$t1, 0X360($a0)
glabel L80B55678
.L80B55678:
/* 001934 0x80B55678 8C82039C */ lw	$v0, 0X39C($a0)
/* 001935 0x80B5567C 2401000F */ li	$at, 0XF
/* 001936 0x80B55680 24060010 */ li	$a2, 0X10
/* 001937 0x80B55684 54410008 */ bnel	$v0, $at, .L80B556A8
/* 001938 0x80B55688 24010011 */ li	$at, 0X11
/* 001939 0x80B5568C AFA40018 */ sw	$a0, 0X18($sp)
/* 001940 0x80B55690 0C2D4F3A */ jal	func_80B53CE8
/* 001941 0x80B55694 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001942 0x80B55698 8FA40018 */ lw	$a0, 0X18($sp)
/* 001943 0x80B5569C 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001944 0x80B556A0 8C82039C */ lw	$v0, 0X39C($a0)
/* 001945 0x80B556A4 24010011 */ li	$at, 0X11
.L80B556A8:
/* 001946 0x80B556A8 14410007 */ bne	$v0, $at, .L80B556C8
/* 001947 0x80B556AC 24060012 */ li	$a2, 0X12
/* 001948 0x80B556B0 AFA40018 */ sw	$a0, 0X18($sp)
/* 001949 0x80B556B4 0C2D4F3A */ jal	func_80B53CE8
/* 001950 0x80B556B8 AFA5001C */ sw	$a1, 0X1C($sp)
/* 001951 0x80B556BC 8FA40018 */ lw	$a0, 0X18($sp)
/* 001952 0x80B556C0 8FA5001C */ lw	$a1, 0X1C($sp)
/* 001953 0x80B556C4 8C82039C */ lw	$v0, 0X39C($a0)
.L80B556C8:
/* 001954 0x80B556C8 24010001 */ li	$at, 0X1
/* 001955 0x80B556CC 10410003 */ beq	$v0, $at, .L80B556DC
/* 001956 0x80B556D0 24010002 */ li	$at, 0X2
/* 001957 0x80B556D4 54410004 */ bnel	$v0, $at, .L80B556E8
/* 001958 0x80B556D8 00001025 */ move	$v0, $zero
.L80B556DC:
/* 001959 0x80B556DC 0C2D4F3A */ jal	func_80B53CE8
/* 001960 0x80B556E0 24060008 */ li	$a2, 0X8
.L80B556E4:
/* 001961 0x80B556E4 00001025 */ move	$v0, $zero
.L80B556E8:
/* 001962 0x80B556E8 8FBF0014 */ lw	$ra, 0X14($sp)
/* 001963 0x80B556EC 27BD0018 */ addiu	$sp, $sp, 0X18
/* 001964 0x80B556F0 03E00008 */ jr	$ra
/* 001965 0x80B556F4 00000000 */ nop


.section .late_rodata

glabel jtbl_D_80B59138
/* 005694 0x80B59138 */ .word	L80B55628
/* 005695 0x80B5913C */ .word	L80B55678
/* 005696 0x80B59140 */ .word	L80B555F8
/* 005697 0x80B59144 */ .word	L80B555F8
/* 005698 0x80B59148 */ .word	L80B555F8
/* 005699 0x80B5914C */ .word	L80B555F8
/* 005700 0x80B59150 */ .word	L80B55678
/* 005701 0x80B59154 */ .word	L80B55638
/* 005702 0x80B59158 */ .word	L80B55608
/* 005703 0x80B5915C */ .word	L80B555F8
/* 005704 0x80B59160 */ .word	L80B55678
/* 005705 0x80B59164 */ .word	L80B55678
/* 005706 0x80B59168 */ .word	L80B55678
/* 005707 0x80B5916C */ .word	L80B55678
/* 005708 0x80B59170 */ .word	L80B55678
/* 005709 0x80B59174 */ .word	L80B55678
/* 005710 0x80B59178 */ .word	L80B55678
/* 005711 0x80B5917C */ .word	L80B55678
/* 005712 0x80B59180 */ .word	L80B55678
/* 005713 0x80B59184 */ .word	L80B55678
/* 005714 0x80B59188 */ .word	L80B55678
/* 005715 0x80B5918C */ .word	L80B55678
/* 005716 0x80B59190 */ .word	L80B55678
/* 005717 0x80B59194 */ .word	L80B55678
/* 005718 0x80B59198 */ .word	L80B55678
/* 005719 0x80B5919C */ .word	L80B55678
/* 005720 0x80B591A0 */ .word	L80B55678
/* 005721 0x80B591A4 */ .word	L80B55678
/* 005722 0x80B591A8 */ .word	L80B55678
/* 005723 0x80B591AC */ .word	L80B55678
/* 005724 0x80B591B0 */ .word	L80B55678
/* 005725 0x80B591B4 */ .word	L80B55678
/* 005726 0x80B591B8 */ .word	L80B55678
/* 005727 0x80B591BC */ .word	L80B55648
/* 005728 0x80B591C0 */ .word	L80B55678
/* 005729 0x80B591C4 */ .word	L80B55648
/* 005730 0x80B591C8 */ .word	L80B55678
/* 005731 0x80B591CC */ .word	L80B55678
/* 005732 0x80B591D0 */ .word	L80B55658
/* 005733 0x80B591D4 */ .word	L80B55658
