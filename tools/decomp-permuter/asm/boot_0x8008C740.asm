.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm


glabel func_8008C740
/* 012728 0x8008C740 00001825 */ move	$v1, $zero
/* 012729 0x8008C744 00801025 */ move	$v0, $a0
/* 012730 0x8008C748 18A00016 */ blez	$a1, .L8008C7A4
/* 012731 0x8008C74C 00003025 */ move	$a2, $zero
/* 012732 0x8008C750 30A70003 */ andi	$a3, $a1, 0X3
/* 012733 0x8008C754 10E00008 */ beqz	$a3, .L8008C778
/* 012734 0x8008C758 00E02025 */ move	$a0, $a3
.L8008C75C:
/* 012735 0x8008C75C 904E0000 */ lbu	$t6, 0X0($v0)
/* 012736 0x8008C760 24C60001 */ addiu	$a2, $a2, 0X1
/* 012737 0x8008C764 24420001 */ addiu	$v0, $v0, 0X1
/* 012738 0x8008C768 1486FFFC */ bne	$a0, $a2, .L8008C75C
/* 012739 0x8008C76C 006E1821 */ addu	$v1, $v1, $t6
/* 012740 0x8008C770 50C5000D */ beql	$a2, $a1, .L8008C7A8
/* 012741 0x8008C774 00601025 */ move	$v0, $v1
.L8008C778:
/* 012742 0x8008C778 904F0000 */ lbu	$t7, 0X0($v0)
/* 012743 0x8008C77C 90580001 */ lbu	$t8, 0X1($v0)
/* 012744 0x8008C780 90590002 */ lbu	$t9, 0X2($v0)
/* 012745 0x8008C784 006F1821 */ addu	$v1, $v1, $t7
/* 012746 0x8008C788 90480003 */ lbu	$t0, 0X3($v0)
/* 012747 0x8008C78C 00781821 */ addu	$v1, $v1, $t8
/* 012748 0x8008C790 24C60004 */ addiu	$a2, $a2, 0X4
/* 012749 0x8008C794 00791821 */ addu	$v1, $v1, $t9
/* 012750 0x8008C798 24420004 */ addiu	$v0, $v0, 0X4
/* 012751 0x8008C79C 14C5FFF6 */ bne	$a2, $a1, .L8008C778
/* 012752 0x8008C7A0 00681821 */ addu	$v1, $v1, $t0
.L8008C7A4:
/* 012753 0x8008C7A4 00601025 */ move	$v0, $v1
.L8008C7A8:
/* 012754 0x8008C7A8 3049FFFF */ andi	$t1, $v0, 0XFFFF
/* 012755 0x8008C7AC 03E00008 */ jr	$ra
/* 012756 0x8008C7B0 01201025 */ move	$v0, $t1

glabel func_8008C7B4
/* 012757 0x8008C7B4 A4C00000 */ sh	$zero, 0X0($a2)
/* 012758 0x8008C7B8 A4A00000 */ sh	$zero, 0X0($a1)
/* 012759 0x8008C7BC 94820000 */ lhu	$v0, 0X0($a0)
/* 012760 0x8008C7C0 24870004 */ addiu	$a3, $a0, 0X4
/* 012761 0x8008C7C4 24E90002 */ addiu	$t1, $a3, 0X2
/* 012762 0x8008C7C8 0002C021 */ addu	$t8, $zero, $v0
/* 012763 0x8008C7CC A4B80000 */ sh	$t8, 0X0($a1)
/* 012764 0x8008C7D0 94D90000 */ lhu	$t9, 0X0($a2)
/* 012765 0x8008C7D4 00406827 */ nor	$t5, $v0, $zero
/* 012766 0x8008C7D8 24EA0004 */ addiu	$t2, $a3, 0X4
/* 012767 0x8008C7DC 032D7021 */ addu	$t6, $t9, $t5
/* 012768 0x8008C7E0 A4CE0000 */ sh	$t6, 0X0($a2)
/* 012769 0x8008C7E4 94AF0000 */ lhu	$t7, 0X0($a1)
/* 012770 0x8008C7E8 94820002 */ lhu	$v0, 0X2($a0)
/* 012771 0x8008C7EC 2404001C */ li	$a0, 0X1C
/* 012772 0x8008C7F0 24EB0006 */ addiu	$t3, $a3, 0X6
/* 012773 0x8008C7F4 01E2C021 */ addu	$t8, $t7, $v0
/* 012774 0x8008C7F8 A4B80000 */ sh	$t8, 0X0($a1)
/* 012775 0x8008C7FC 94D90000 */ lhu	$t9, 0X0($a2)
/* 012776 0x8008C800 00406827 */ nor	$t5, $v0, $zero
/* 012777 0x8008C804 24030004 */ li	$v1, 0X4
/* 012778 0x8008C808 032D7021 */ addu	$t6, $t9, $t5
/* 012779 0x8008C80C A4CE0000 */ sh	$t6, 0X0($a2)
.L8008C810:
/* 012780 0x8008C810 94E20000 */ lhu	$v0, 0X0($a3)
/* 012781 0x8008C814 94AF0000 */ lhu	$t7, 0X0($a1)
/* 012782 0x8008C818 24630008 */ addiu	$v1, $v1, 0X8
/* 012783 0x8008C81C 00406827 */ nor	$t5, $v0, $zero
/* 012784 0x8008C820 01E2C021 */ addu	$t8, $t7, $v0
/* 012785 0x8008C824 A4B80000 */ sh	$t8, 0X0($a1)
/* 012786 0x8008C828 94D90000 */ lhu	$t9, 0X0($a2)
/* 012787 0x8008C82C 24E70008 */ addiu	$a3, $a3, 0X8
/* 012788 0x8008C830 25290008 */ addiu	$t1, $t1, 0X8
/* 012789 0x8008C834 032D7021 */ addu	$t6, $t9, $t5
/* 012790 0x8008C838 A4CE0000 */ sh	$t6, 0X0($a2)
/* 012791 0x8008C83C 94AF0000 */ lhu	$t7, 0X0($a1)
/* 012792 0x8008C840 9522FFF8 */ lhu	$v0, -0X8($t1)
/* 012793 0x8008C844 254A0008 */ addiu	$t2, $t2, 0X8
/* 012794 0x8008C848 256B0008 */ addiu	$t3, $t3, 0X8
/* 012795 0x8008C84C 01E2C021 */ addu	$t8, $t7, $v0
/* 012796 0x8008C850 A4B80000 */ sh	$t8, 0X0($a1)
/* 012797 0x8008C854 94D90000 */ lhu	$t9, 0X0($a2)
/* 012798 0x8008C858 00406827 */ nor	$t5, $v0, $zero
/* 012799 0x8008C85C 032D7021 */ addu	$t6, $t9, $t5
/* 012800 0x8008C860 A4CE0000 */ sh	$t6, 0X0($a2)
/* 012801 0x8008C864 94AF0000 */ lhu	$t7, 0X0($a1)
/* 012802 0x8008C868 9542FFF8 */ lhu	$v0, -0X8($t2)
/* 012803 0x8008C86C 01E2C021 */ addu	$t8, $t7, $v0
/* 012804 0x8008C870 A4B80000 */ sh	$t8, 0X0($a1)
/* 012805 0x8008C874 94D90000 */ lhu	$t9, 0X0($a2)
/* 012806 0x8008C878 00406827 */ nor	$t5, $v0, $zero
/* 012807 0x8008C87C 032D7021 */ addu	$t6, $t9, $t5
/* 012808 0x8008C880 A4CE0000 */ sh	$t6, 0X0($a2)
/* 012809 0x8008C884 94AF0000 */ lhu	$t7, 0X0($a1)
/* 012810 0x8008C888 9562FFF8 */ lhu	$v0, -0X8($t3)
/* 012811 0x8008C88C 01E2C021 */ addu	$t8, $t7, $v0
/* 012812 0x8008C890 A4B80000 */ sh	$t8, 0X0($a1)
/* 012813 0x8008C894 94D90000 */ lhu	$t9, 0X0($a2)
/* 012814 0x8008C898 00406827 */ nor	$t5, $v0, $zero
/* 012815 0x8008C89C 032D7021 */ addu	$t6, $t9, $t5
/* 012816 0x8008C8A0 1464FFDB */ bne	$v1, $a0, .L8008C810
/* 012817 0x8008C8A4 A4CE0000 */ sh	$t6, 0X0($a2)
/* 012818 0x8008C8A8 03E00008 */ jr	$ra
/* 012819 0x8008C8AC 00001025 */ move	$v0, $zero

glabel func_8008C8B0
/* 012820 0x8008C8B0 27BDFF60 */ addiu	$sp, $sp, -0XA0
/* 012821 0x8008C8B4 AFBF003C */ sw	$ra, 0X3C($sp)
/* 012822 0x8008C8B8 AFB60038 */ sw	$s6, 0X38($sp)
/* 012823 0x8008C8BC AFB50034 */ sw	$s5, 0X34($sp)
/* 012824 0x8008C8C0 AFB40030 */ sw	$s4, 0X30($sp)
/* 012825 0x8008C8C4 AFB3002C */ sw	$s3, 0X2C($sp)
/* 012826 0x8008C8C8 AFB20028 */ sw	$s2, 0X28($sp)
/* 012827 0x8008C8CC AFB10024 */ sw	$s1, 0X24($sp)
/* 012828 0x8008C8D0 AFB00020 */ sw	$s0, 0X20($sp)
/* 012829 0x8008C8D4 240EFFFF */ li	$t6, -0X1
/* 012830 0x8008C8D8 00809025 */ move	$s2, $a0
/* 012831 0x8008C8DC 00C0A025 */ move	$s4, $a2
/* 012832 0x8008C8E0 00A0B025 */ move	$s6, $a1
/* 012833 0x8008C8E4 00009825 */ move	$s3, $zero
/* 012834 0x8008C8E8 0C0234B0 */ jal	osGetCount
/* 012835 0x8008C8EC ACCE0000 */ sw	$t6, 0X0($a2)
/* 012836 0x8008C8F0 AE820004 */ sw	$v0, 0X4($s4)
/* 012837 0x8008C8F4 8ED9000C */ lw	$t9, 0XC($s6)
/* 012838 0x8008C8F8 8ED80008 */ lw	$t8, 0X8($s6)
/* 012839 0x8008C8FC 02402025 */ move	$a0, $s2
/* 012840 0x8008C900 AE99000C */ sw	$t9, 0XC($s4)
/* 012841 0x8008C904 AE980008 */ sw	$t8, 0X8($s4)
/* 012842 0x8008C908 8EC90014 */ lw	$t1, 0X14($s6)
/* 012843 0x8008C90C 8EC80010 */ lw	$t0, 0X10($s6)
/* 012844 0x8008C910 AE890014 */ sw	$t1, 0X14($s4)
/* 012845 0x8008C914 AE880010 */ sw	$t0, 0X10($s4)
/* 012846 0x8008C918 924F0065 */ lbu	$t7, 0X65($s2)
/* 012847 0x8008C91C 51E00008 */ beqzl	$t7, .L8008C940
/* 012848 0x8008C920 27B1007C */ addiu	$s1, $sp, 0X7C
/* 012849 0x8008C924 0C024B00 */ jal	__osPfsSelectBank
/* 012850 0x8008C928 00002825 */ move	$a1, $zero
/* 012851 0x8008C92C 50400004 */ beqzl	$v0, .L8008C940
/* 012852 0x8008C930 27B1007C */ addiu	$s1, $sp, 0X7C
/* 012853 0x8008C934 100000A9 */ b	.L8008CBDC
/* 012854 0x8008C938 8FBF003C */ lw	$ra, 0X3C($sp)
/* 012855 0x8008C93C 27B1007C */ addiu	$s1, $sp, 0X7C
.L8008C940:
/* 012856 0x8008C940 0220A825 */ move	$s5, $s1
/* 012857 0x8008C944 27B0009C */ addiu	$s0, $sp, 0X9C
/* 012858 0x8008C948 02402025 */ move	$a0, $s2
.L8008C94C:
/* 012859 0x8008C94C 0C024B00 */ jal	__osPfsSelectBank
/* 012860 0x8008C950 326500FF */ andi	$a1, $s3, 0XFF
/* 012861 0x8008C954 10400003 */ beqz	$v0, .L8008C964
/* 012862 0x8008C958 00003025 */ move	$a2, $zero
/* 012863 0x8008C95C 1000009F */ b	.L8008CBDC
/* 012864 0x8008C960 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008C964:
/* 012865 0x8008C964 8E440004 */ lw	$a0, 0X4($s2)
/* 012866 0x8008C968 8E450008 */ lw	$a1, 0X8($s2)
/* 012867 0x8008C96C 0C024310 */ jal	__osContRamRead
/* 012868 0x8008C970 02A03825 */ move	$a3, $s5
/* 012869 0x8008C974 10400003 */ beqz	$v0, .L8008C984
/* 012870 0x8008C978 366B0080 */ ori	$t3, $s3, 0X80
/* 012871 0x8008C97C 10000097 */ b	.L8008CBDC
/* 012872 0x8008C980 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008C984:
/* 012873 0x8008C984 A3AB007C */ sb	$t3, 0X7C($sp)
/* 012874 0x8008C988 27A2007D */ addiu	$v0, $sp, 0X7D
.L8008C98C:
/* 012875 0x8008C98C 904C0000 */ lbu	$t4, 0X0($v0)
/* 012876 0x8008C990 24420001 */ addiu	$v0, $v0, 0X1
/* 012877 0x8008C994 0050082B */ sltu	$at, $v0, $s0
/* 012878 0x8008C998 01806827 */ nor	$t5, $t4, $zero
/* 012879 0x8008C99C 1420FFFB */ bnez	$at, .L8008C98C
/* 012880 0x8008C9A0 A04DFFFF */ sb	$t5, -0X1($v0)
/* 012881 0x8008C9A4 8E440004 */ lw	$a0, 0X4($s2)
/* 012882 0x8008C9A8 8E450008 */ lw	$a1, 0X8($s2)
/* 012883 0x8008C9AC AFA00010 */ sw	$zero, 0X10($sp)
/* 012884 0x8008C9B0 00003025 */ move	$a2, $zero
/* 012885 0x8008C9B4 0C024F68 */ jal	__osContRamWrite
/* 012886 0x8008C9B8 02A03825 */ move	$a3, $s5
/* 012887 0x8008C9BC 10400003 */ beqz	$v0, .L8008C9CC
/* 012888 0x8008C9C0 00003025 */ move	$a2, $zero
/* 012889 0x8008C9C4 10000085 */ b	.L8008CBDC
/* 012890 0x8008C9C8 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008C9CC:
/* 012891 0x8008C9CC 8E440004 */ lw	$a0, 0X4($s2)
/* 012892 0x8008C9D0 8E450008 */ lw	$a1, 0X8($s2)
/* 012893 0x8008C9D4 0C024310 */ jal	__osContRamRead
/* 012894 0x8008C9D8 27A7005C */ addiu	$a3, $sp, 0X5C
/* 012895 0x8008C9DC 10400003 */ beqz	$v0, .L8008C9EC
/* 012896 0x8008C9E0 27A3005C */ addiu	$v1, $sp, 0X5C
/* 012897 0x8008C9E4 1000007D */ b	.L8008CBDC
/* 012898 0x8008C9E8 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008C9EC:
/* 012899 0x8008C9EC 27A2007C */ addiu	$v0, $sp, 0X7C
.L8008C9F0:
/* 012900 0x8008C9F0 906E0000 */ lbu	$t6, 0X0($v1)
/* 012901 0x8008C9F4 90580000 */ lbu	$t8, 0X0($v0)
/* 012902 0x8008C9F8 55D80006 */ bnel	$t6, $t8, .L8008CA14
/* 012903 0x8008C9FC 27B9007C */ addiu	$t9, $sp, 0X7C
/* 012904 0x8008CA00 24630001 */ addiu	$v1, $v1, 0X1
/* 012905 0x8008CA04 0071082B */ sltu	$at, $v1, $s1
/* 012906 0x8008CA08 1420FFF9 */ bnez	$at, .L8008C9F0
/* 012907 0x8008CA0C 24420001 */ addiu	$v0, $v0, 0X1
/* 012908 0x8008CA10 27B9007C */ addiu	$t9, $sp, 0X7C
.L8008CA14:
/* 012909 0x8008CA14 14790018 */ bne	$v1, $t9, .L8008CA78
/* 012910 0x8008CA18 02402025 */ move	$a0, $s2
/* 012911 0x8008CA1C 5A600013 */ blezl	$s3, .L8008CA6C
/* 012912 0x8008CA20 26730001 */ addiu	$s3, $s3, 0X1
/* 012913 0x8008CA24 0C024B00 */ jal	__osPfsSelectBank
/* 012914 0x8008CA28 00002825 */ move	$a1, $zero
/* 012915 0x8008CA2C 10400003 */ beqz	$v0, .L8008CA3C
/* 012916 0x8008CA30 00003025 */ move	$a2, $zero
/* 012917 0x8008CA34 10000069 */ b	.L8008CBDC
/* 012918 0x8008CA38 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CA3C:
/* 012919 0x8008CA3C 8E440004 */ lw	$a0, 0X4($s2)
/* 012920 0x8008CA40 8E450008 */ lw	$a1, 0X8($s2)
/* 012921 0x8008CA44 0C024310 */ jal	__osContRamRead
/* 012922 0x8008CA48 02A03825 */ move	$a3, $s5
/* 012923 0x8008CA4C 10400003 */ beqz	$v0, .L8008CA5C
/* 012924 0x8008CA50 93A8007C */ lbu	$t0, 0X7C($sp)
/* 012925 0x8008CA54 10000061 */ b	.L8008CBDC
/* 012926 0x8008CA58 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CA5C:
/* 012927 0x8008CA5C 24010080 */ li	$at, 0X80
/* 012928 0x8008CA60 55010006 */ bnel	$t0, $at, .L8008CA7C
/* 012929 0x8008CA64 92490065 */ lbu	$t1, 0X65($s2)
/* 012930 0x8008CA68 26730001 */ addiu	$s3, $s3, 0X1
.L8008CA6C:
/* 012931 0x8008CA6C 2A61003E */ slti	$at, $s3, 0X3E
/* 012932 0x8008CA70 5420FFB6 */ bnezl	$at, .L8008C94C
/* 012933 0x8008CA74 02402025 */ move	$a0, $s2
.L8008CA78:
/* 012934 0x8008CA78 92490065 */ lbu	$t1, 0X65($s2)
.L8008CA7C:
/* 012935 0x8008CA7C 02402025 */ move	$a0, $s2
/* 012936 0x8008CA80 11200007 */ beqz	$t1, .L8008CAA0
/* 012937 0x8008CA84 00000000 */ nop
/* 012938 0x8008CA88 0C024B00 */ jal	__osPfsSelectBank
/* 012939 0x8008CA8C 00002825 */ move	$a1, $zero
/* 012940 0x8008CA90 10400003 */ beqz	$v0, .L8008CAA0
/* 012941 0x8008CA94 00000000 */ nop
/* 012942 0x8008CA98 10000050 */ b	.L8008CBDC
/* 012943 0x8008CA9C 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CAA0:
/* 012944 0x8008CAA0 1A600003 */ blez	$s3, .L8008CAB0
/* 012945 0x8008CAA4 02802025 */ move	$a0, $s4
/* 012946 0x8008CAA8 10000002 */ b	.L8008CAB4
/* 012947 0x8008CAAC 24020001 */ li	$v0, 0X1
.L8008CAB0:
/* 012948 0x8008CAB0 00001025 */ move	$v0, $zero
.L8008CAB4:
/* 012949 0x8008CAB4 96CF0018 */ lhu	$t7, 0X18($s6)
/* 012950 0x8008CAB8 A293001A */ sb	$s3, 0X1A($s4)
/* 012951 0x8008CABC 2685001C */ addiu	$a1, $s4, 0X1C
/* 012952 0x8008CAC0 31EAFFFE */ andi	$t2, $t7, 0XFFFE
/* 012953 0x8008CAC4 01425825 */ or	$t3, $t2, $v0
/* 012954 0x8008CAC8 A68B0018 */ sh	$t3, 0X18($s4)
/* 012955 0x8008CACC 92CC001B */ lbu	$t4, 0X1B($s6)
/* 012956 0x8008CAD0 2686001E */ addiu	$a2, $s4, 0X1E
/* 012957 0x8008CAD4 0C0231ED */ jal	func_8008C7B4
/* 012958 0x8008CAD8 A28C001B */ sb	$t4, 0X1B($s4)
/* 012959 0x8008CADC 240D0001 */ li	$t5, 0X1
/* 012960 0x8008CAE0 240E0003 */ li	$t6, 0X3
/* 012961 0x8008CAE4 24180004 */ li	$t8, 0X4
/* 012962 0x8008CAE8 24190006 */ li	$t9, 0X6
/* 012963 0x8008CAEC A7AD0048 */ sh	$t5, 0X48($sp)
/* 012964 0x8008CAF0 A7AE004A */ sh	$t6, 0X4A($sp)
/* 012965 0x8008CAF4 A7B8004C */ sh	$t8, 0X4C($sp)
/* 012966 0x8008CAF8 A7B9004E */ sh	$t9, 0X4E($sp)
/* 012967 0x8008CAFC 27B00048 */ addiu	$s0, $sp, 0X48
/* 012968 0x8008CB00 27B10050 */ addiu	$s1, $sp, 0X50
/* 012969 0x8008CB04 8E440004 */ lw	$a0, 0X4($s2)
.L8008CB08:
/* 012970 0x8008CB08 8E450008 */ lw	$a1, 0X8($s2)
/* 012971 0x8008CB0C 96060000 */ lhu	$a2, 0X0($s0)
/* 012972 0x8008CB10 24080001 */ li	$t0, 0X1
/* 012973 0x8008CB14 AFA80010 */ sw	$t0, 0X10($sp)
/* 012974 0x8008CB18 0C024F68 */ jal	__osContRamWrite
/* 012975 0x8008CB1C 02803825 */ move	$a3, $s4
/* 012976 0x8008CB20 10400003 */ beqz	$v0, .L8008CB30
/* 012977 0x8008CB24 26100002 */ addiu	$s0, $s0, 0X2
/* 012978 0x8008CB28 1000002C */ b	.L8008CBDC
/* 012979 0x8008CB2C 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CB30:
/* 012980 0x8008CB30 0211082B */ sltu	$at, $s0, $s1
/* 012981 0x8008CB34 5420FFF4 */ bnezl	$at, .L8008CB08
/* 012982 0x8008CB38 8E440004 */ lw	$a0, 0X4($s2)
/* 012983 0x8008CB3C 8E440004 */ lw	$a0, 0X4($s2)
/* 012984 0x8008CB40 8E450008 */ lw	$a1, 0X8($s2)
/* 012985 0x8008CB44 24060001 */ li	$a2, 0X1
/* 012986 0x8008CB48 0C024310 */ jal	__osContRamRead
/* 012987 0x8008CB4C 02A03825 */ move	$a3, $s5
/* 012988 0x8008CB50 10400003 */ beqz	$v0, .L8008CB60
/* 012989 0x8008CB54 02801825 */ move	$v1, $s4
/* 012990 0x8008CB58 10000020 */ b	.L8008CBDC
/* 012991 0x8008CB5C 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CB60:
/* 012992 0x8008CB60 27A2007C */ addiu	$v0, $sp, 0X7C
/* 012993 0x8008CB64 27A4009C */ addiu	$a0, $sp, 0X9C
.L8008CB68:
/* 012994 0x8008CB68 90490000 */ lbu	$t1, 0X0($v0)
/* 012995 0x8008CB6C 906F0000 */ lbu	$t7, 0X0($v1)
/* 012996 0x8008CB70 512F0004 */ beql	$t1, $t7, .L8008CB84
/* 012997 0x8008CB74 904A0001 */ lbu	$t2, 0X1($v0)
/* 012998 0x8008CB78 10000017 */ b	.L8008CBD8
/* 012999 0x8008CB7C 2402000B */ li	$v0, 0XB
/* 013000 0x8008CB80 904A0001 */ lbu	$t2, 0X1($v0)
.L8008CB84:
/* 013001 0x8008CB84 906B0001 */ lbu	$t3, 0X1($v1)
/* 013002 0x8008CB88 514B0004 */ beql	$t2, $t3, .L8008CB9C
/* 013003 0x8008CB8C 904C0002 */ lbu	$t4, 0X2($v0)
/* 013004 0x8008CB90 10000011 */ b	.L8008CBD8
/* 013005 0x8008CB94 2402000B */ li	$v0, 0XB
/* 013006 0x8008CB98 904C0002 */ lbu	$t4, 0X2($v0)
.L8008CB9C:
/* 013007 0x8008CB9C 906D0002 */ lbu	$t5, 0X2($v1)
/* 013008 0x8008CBA0 518D0004 */ beql	$t4, $t5, .L8008CBB4
/* 013009 0x8008CBA4 904E0003 */ lbu	$t6, 0X3($v0)
/* 013010 0x8008CBA8 1000000B */ b	.L8008CBD8
/* 013011 0x8008CBAC 2402000B */ li	$v0, 0XB
/* 013012 0x8008CBB0 904E0003 */ lbu	$t6, 0X3($v0)
.L8008CBB4:
/* 013013 0x8008CBB4 90780003 */ lbu	$t8, 0X3($v1)
/* 013014 0x8008CBB8 24420004 */ addiu	$v0, $v0, 0X4
/* 013015 0x8008CBBC 11D80003 */ beq	$t6, $t8, .L8008CBCC
/* 013016 0x8008CBC0 00000000 */ nop
/* 013017 0x8008CBC4 10000004 */ b	.L8008CBD8
/* 013018 0x8008CBC8 2402000B */ li	$v0, 0XB
.L8008CBCC:
/* 013019 0x8008CBCC 1444FFE6 */ bne	$v0, $a0, .L8008CB68
/* 013020 0x8008CBD0 24630004 */ addiu	$v1, $v1, 0X4
/* 013021 0x8008CBD4 00001025 */ move	$v0, $zero
.L8008CBD8:
/* 013022 0x8008CBD8 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CBDC:
/* 013023 0x8008CBDC 8FB00020 */ lw	$s0, 0X20($sp)
/* 013024 0x8008CBE0 8FB10024 */ lw	$s1, 0X24($sp)
/* 013025 0x8008CBE4 8FB20028 */ lw	$s2, 0X28($sp)
/* 013026 0x8008CBE8 8FB3002C */ lw	$s3, 0X2C($sp)
/* 013027 0x8008CBEC 8FB40030 */ lw	$s4, 0X30($sp)
/* 013028 0x8008CBF0 8FB50034 */ lw	$s5, 0X34($sp)
/* 013029 0x8008CBF4 8FB60038 */ lw	$s6, 0X38($sp)
/* 013030 0x8008CBF8 03E00008 */ jr	$ra
/* 013031 0x8008CBFC 27BD00A0 */ addiu	$sp, $sp, 0XA0

glabel func_8008CC00
/* 013032 0x8008CC00 27BDFFA0 */ addiu	$sp, $sp, -0X60
/* 013033 0x8008CC04 AFBF003C */ sw	$ra, 0X3C($sp)
/* 013034 0x8008CC08 AFB60038 */ sw	$s6, 0X38($sp)
/* 013035 0x8008CC0C AFB50034 */ sw	$s5, 0X34($sp)
/* 013036 0x8008CC10 AFB40030 */ sw	$s4, 0X30($sp)
/* 013037 0x8008CC14 AFB3002C */ sw	$s3, 0X2C($sp)
/* 013038 0x8008CC18 AFB20028 */ sw	$s2, 0X28($sp)
/* 013039 0x8008CC1C AFB10024 */ sw	$s1, 0X24($sp)
/* 013040 0x8008CC20 AFB00020 */ sw	$s0, 0X20($sp)
/* 013041 0x8008CC24 908E0065 */ lbu	$t6, 0X65($a0)
/* 013042 0x8008CC28 00A09025 */ move	$s2, $a1
/* 013043 0x8008CC2C 00809825 */ move	$s3, $a0
/* 013044 0x8008CC30 51C00008 */ beqzl	$t6, .L8008CC54
/* 013045 0x8008CC34 240F0001 */ li	$t7, 0X1
/* 013046 0x8008CC38 0C024B00 */ jal	__osPfsSelectBank
/* 013047 0x8008CC3C 00002825 */ move	$a1, $zero
/* 013048 0x8008CC40 50400004 */ beqzl	$v0, .L8008CC54
/* 013049 0x8008CC44 240F0001 */ li	$t7, 0X1
/* 013050 0x8008CC48 1000003D */ b	.L8008CD40
/* 013051 0x8008CC4C 8FBF003C */ lw	$ra, 0X3C($sp)
/* 013052 0x8008CC50 240F0001 */ li	$t7, 0X1
.L8008CC54:
/* 013053 0x8008CC54 24180003 */ li	$t8, 0X3
/* 013054 0x8008CC58 24190004 */ li	$t9, 0X4
/* 013055 0x8008CC5C 24080006 */ li	$t0, 0X6
/* 013056 0x8008CC60 A7AF0058 */ sh	$t7, 0X58($sp)
/* 013057 0x8008CC64 A7B8005A */ sh	$t8, 0X5A($sp)
/* 013058 0x8008CC68 A7B9005C */ sh	$t9, 0X5C($sp)
/* 013059 0x8008CC6C A7A8005E */ sh	$t0, 0X5E($sp)
/* 013060 0x8008CC70 24110001 */ li	$s1, 0X1
/* 013061 0x8008CC74 27B0005A */ addiu	$s0, $sp, 0X5A
/* 013062 0x8008CC78 27B60050 */ addiu	$s6, $sp, 0X50
/* 013063 0x8008CC7C 24150004 */ li	$s5, 0X4
/* 013064 0x8008CC80 27B40052 */ addiu	$s4, $sp, 0X52
.L8008CC84:
/* 013065 0x8008CC84 8E640004 */ lw	$a0, 0X4($s3)
/* 013066 0x8008CC88 8E650008 */ lw	$a1, 0X8($s3)
/* 013067 0x8008CC8C 96060000 */ lhu	$a2, 0X0($s0)
/* 013068 0x8008CC90 0C024310 */ jal	__osContRamRead
/* 013069 0x8008CC94 02403825 */ move	$a3, $s2
/* 013070 0x8008CC98 10400003 */ beqz	$v0, .L8008CCA8
/* 013071 0x8008CC9C 02402025 */ move	$a0, $s2
/* 013072 0x8008CCA0 10000027 */ b	.L8008CD40
/* 013073 0x8008CCA4 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CCA8:
/* 013074 0x8008CCA8 02802825 */ move	$a1, $s4
/* 013075 0x8008CCAC 0C0231ED */ jal	func_8008C7B4
/* 013076 0x8008CCB0 02C03025 */ move	$a2, $s6
/* 013077 0x8008CCB4 97A90052 */ lhu	$t1, 0X52($sp)
/* 013078 0x8008CCB8 964A001C */ lhu	$t2, 0X1C($s2)
/* 013079 0x8008CCBC 97AB0050 */ lhu	$t3, 0X50($sp)
/* 013080 0x8008CCC0 552A0005 */ bnel	$t1, $t2, .L8008CCD8
/* 013081 0x8008CCC4 26310001 */ addiu	$s1, $s1, 0X1
/* 013082 0x8008CCC8 964C001E */ lhu	$t4, 0X1E($s2)
/* 013083 0x8008CCCC 116C0004 */ beq	$t3, $t4, .L8008CCE0
/* 013084 0x8008CCD0 00000000 */ nop
/* 013085 0x8008CCD4 26310001 */ addiu	$s1, $s1, 0X1
.L8008CCD8:
/* 013086 0x8008CCD8 1635FFEA */ bne	$s1, $s5, .L8008CC84
/* 013087 0x8008CCDC 26100002 */ addiu	$s0, $s0, 0X2
.L8008CCE0:
/* 013088 0x8008CCE0 16350003 */ bne	$s1, $s5, .L8008CCF0
/* 013089 0x8008CCE4 00008025 */ move	$s0, $zero
/* 013090 0x8008CCE8 10000014 */ b	.L8008CD3C
/* 013091 0x8008CCEC 2402000A */ li	$v0, 0XA
.L8008CCF0:
/* 013092 0x8008CCF0 27B40058 */ addiu	$s4, $sp, 0X58
.L8008CCF4:
/* 013093 0x8008CCF4 1211000D */ beq	$s0, $s1, .L8008CD2C
/* 013094 0x8008CCF8 00106840 */ sll	$t5, $s0, 1
/* 013095 0x8008CCFC 028D7021 */ addu	$t6, $s4, $t5
/* 013096 0x8008CD00 95C60000 */ lhu	$a2, 0X0($t6)
/* 013097 0x8008CD04 8E640004 */ lw	$a0, 0X4($s3)
/* 013098 0x8008CD08 8E650008 */ lw	$a1, 0X8($s3)
/* 013099 0x8008CD0C 240F0001 */ li	$t7, 0X1
/* 013100 0x8008CD10 AFAF0010 */ sw	$t7, 0X10($sp)
/* 013101 0x8008CD14 0C024F68 */ jal	__osContRamWrite
/* 013102 0x8008CD18 02403825 */ move	$a3, $s2
/* 013103 0x8008CD1C 50400004 */ beqzl	$v0, .L8008CD30
/* 013104 0x8008CD20 26100001 */ addiu	$s0, $s0, 0X1
/* 013105 0x8008CD24 10000006 */ b	.L8008CD40
/* 013106 0x8008CD28 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CD2C:
/* 013107 0x8008CD2C 26100001 */ addiu	$s0, $s0, 0X1
.L8008CD30:
/* 013108 0x8008CD30 1615FFF0 */ bne	$s0, $s5, .L8008CCF4
/* 013109 0x8008CD34 00000000 */ nop
/* 013110 0x8008CD38 00001025 */ move	$v0, $zero
.L8008CD3C:
/* 013111 0x8008CD3C 8FBF003C */ lw	$ra, 0X3C($sp)
.L8008CD40:
/* 013112 0x8008CD40 8FB00020 */ lw	$s0, 0X20($sp)
/* 013113 0x8008CD44 8FB10024 */ lw	$s1, 0X24($sp)
/* 013114 0x8008CD48 8FB20028 */ lw	$s2, 0X28($sp)
/* 013115 0x8008CD4C 8FB3002C */ lw	$s3, 0X2C($sp)
/* 013116 0x8008CD50 8FB40030 */ lw	$s4, 0X30($sp)
/* 013117 0x8008CD54 8FB50034 */ lw	$s5, 0X34($sp)
/* 013118 0x8008CD58 8FB60038 */ lw	$s6, 0X38($sp)
/* 013119 0x8008CD5C 03E00008 */ jr	$ra
/* 013120 0x8008CD60 27BD0060 */ addiu	$sp, $sp, 0X60

glabel func_8008CD64
/* 013121 0x8008CD64 27BDFF90 */ addiu	$sp, $sp, -0X70
/* 013122 0x8008CD68 AFBF001C */ sw	$ra, 0X1C($sp)
/* 013123 0x8008CD6C AFB10018 */ sw	$s1, 0X18($sp)
/* 013124 0x8008CD70 AFB00014 */ sw	$s0, 0X14($sp)
/* 013125 0x8008CD74 908E0065 */ lbu	$t6, 0X65($a0)
/* 013126 0x8008CD78 00808025 */ move	$s0, $a0
/* 013127 0x8008CD7C 51C00008 */ beqzl	$t6, .L8008CDA0
/* 013128 0x8008CD80 8E040004 */ lw	$a0, 0X4($s0)
/* 013129 0x8008CD84 0C024B00 */ jal	__osPfsSelectBank
/* 013130 0x8008CD88 00002825 */ move	$a1, $zero
/* 013131 0x8008CD8C 50400004 */ beqzl	$v0, .L8008CDA0
/* 013132 0x8008CD90 8E040004 */ lw	$a0, 0X4($s0)
/* 013133 0x8008CD94 1000005A */ b	.L8008CF00
/* 013134 0x8008CD98 8FBF001C */ lw	$ra, 0X1C($sp)
/* 013135 0x8008CD9C 8E040004 */ lw	$a0, 0X4($s0)
.L8008CDA0:
/* 013136 0x8008CDA0 8E050008 */ lw	$a1, 0X8($s0)
/* 013137 0x8008CDA4 24060001 */ li	$a2, 0X1
/* 013138 0x8008CDA8 0C024310 */ jal	__osContRamRead
/* 013139 0x8008CDAC 27A7004C */ addiu	$a3, $sp, 0X4C
/* 013140 0x8008CDB0 10400003 */ beqz	$v0, .L8008CDC0
/* 013141 0x8008CDB4 27A4004C */ addiu	$a0, $sp, 0X4C
/* 013142 0x8008CDB8 10000051 */ b	.L8008CF00
/* 013143 0x8008CDBC 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CDC0:
/* 013144 0x8008CDC0 27A5006E */ addiu	$a1, $sp, 0X6E
/* 013145 0x8008CDC4 0C0231ED */ jal	func_8008C7B4
/* 013146 0x8008CDC8 27A6006C */ addiu	$a2, $sp, 0X6C
/* 013147 0x8008CDCC 97AF006E */ lhu	$t7, 0X6E($sp)
/* 013148 0x8008CDD0 97B80068 */ lhu	$t8, 0X68($sp)
/* 013149 0x8008CDD4 27A5004C */ addiu	$a1, $sp, 0X4C
/* 013150 0x8008CDD8 00A08825 */ move	$s1, $a1
/* 013151 0x8008CDDC 15F80004 */ bne	$t7, $t8, .L8008CDF0
/* 013152 0x8008CDE0 97B9006C */ lhu	$t9, 0X6C($sp)
/* 013153 0x8008CDE4 97A9006A */ lhu	$t1, 0X6A($sp)
/* 013154 0x8008CDE8 53290015 */ beql	$t9, $t1, .L8008CE40
/* 013155 0x8008CDEC 962A0018 */ lhu	$t2, 0X18($s1)
.L8008CDF0:
/* 013156 0x8008CDF0 0C023300 */ jal	func_8008CC00
/* 013157 0x8008CDF4 02002025 */ move	$a0, $s0
/* 013158 0x8008CDF8 2401000A */ li	$at, 0XA
/* 013159 0x8008CDFC 1441000B */ bne	$v0, $at, .L8008CE2C
/* 013160 0x8008CE00 00401825 */ move	$v1, $v0
/* 013161 0x8008CE04 02002025 */ move	$a0, $s0
/* 013162 0x8008CE08 27A5004C */ addiu	$a1, $sp, 0X4C
/* 013163 0x8008CE0C 0C02322C */ jal	func_8008C8B0
/* 013164 0x8008CE10 27A60028 */ addiu	$a2, $sp, 0X28
/* 013165 0x8008CE14 10400003 */ beqz	$v0, .L8008CE24
/* 013166 0x8008CE18 00000000 */ nop
/* 013167 0x8008CE1C 10000038 */ b	.L8008CF00
/* 013168 0x8008CE20 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CE24:
/* 013169 0x8008CE24 10000005 */ b	.L8008CE3C
/* 013170 0x8008CE28 27B10028 */ addiu	$s1, $sp, 0X28
.L8008CE2C:
/* 013171 0x8008CE2C 50400004 */ beqzl	$v0, .L8008CE40
/* 013172 0x8008CE30 962A0018 */ lhu	$t2, 0X18($s1)
/* 013173 0x8008CE34 10000031 */ b	.L8008CEFC
/* 013174 0x8008CE38 00601025 */ move	$v0, $v1
.L8008CE3C:
/* 013175 0x8008CE3C 962A0018 */ lhu	$t2, 0X18($s1)
.L8008CE40:
/* 013176 0x8008CE40 02002025 */ move	$a0, $s0
/* 013177 0x8008CE44 02202825 */ move	$a1, $s1
/* 013178 0x8008CE48 314B0001 */ andi	$t3, $t2, 0X1
/* 013179 0x8008CE4C 5560000D */ bnezl	$t3, .L8008CE84
/* 013180 0x8008CE50 02202025 */ move	$a0, $s1
/* 013181 0x8008CE54 0C02322C */ jal	func_8008C8B0
/* 013182 0x8008CE58 27A60028 */ addiu	$a2, $sp, 0X28
/* 013183 0x8008CE5C 10400003 */ beqz	$v0, .L8008CE6C
/* 013184 0x8008CE60 97AC0040 */ lhu	$t4, 0X40($sp)
/* 013185 0x8008CE64 10000026 */ b	.L8008CF00
/* 013186 0x8008CE68 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CE6C:
/* 013187 0x8008CE6C 318D0001 */ andi	$t5, $t4, 0X1
/* 013188 0x8008CE70 15A00003 */ bnez	$t5, .L8008CE80
/* 013189 0x8008CE74 27B10028 */ addiu	$s1, $sp, 0X28
/* 013190 0x8008CE78 10000020 */ b	.L8008CEFC
/* 013191 0x8008CE7C 2402000B */ li	$v0, 0XB
.L8008CE80:
/* 013192 0x8008CE80 02202025 */ move	$a0, $s1
.L8008CE84:
/* 013193 0x8008CE84 2605000C */ addiu	$a1, $s0, 0XC
/* 013194 0x8008CE88 0C0244B0 */ jal	_bcopy
/* 013195 0x8008CE8C 24060020 */ li	$a2, 0X20
/* 013196 0x8008CE90 922E001B */ lbu	$t6, 0X1B($s1)
/* 013197 0x8008CE94 24090010 */ li	$t1, 0X10
/* 013198 0x8008CE98 240A0008 */ li	$t2, 0X8
/* 013199 0x8008CE9C AE0E004C */ sw	$t6, 0X4C($s0)
/* 013200 0x8008CEA0 922F001A */ lbu	$t7, 0X1A($s1)
/* 013201 0x8008CEA4 AE090050 */ sw	$t1, 0X50($s0)
/* 013202 0x8008CEA8 AE0A0054 */ sw	$t2, 0X54($s0)
/* 013203 0x8008CEAC 31E200FF */ andi	$v0, $t7, 0XFF
/* 013204 0x8008CEB0 000218C0 */ sll	$v1, $v0, 3
/* 013205 0x8008CEB4 0002C040 */ sll	$t8, $v0, 1
/* 013206 0x8008CEB8 24680008 */ addiu	$t0, $v1, 0X8
/* 013207 0x8008CEBC 27190003 */ addiu	$t9, $t8, 0X3
/* 013208 0x8008CEC0 01035821 */ addu	$t3, $t0, $v1
/* 013209 0x8008CEC4 AE190060 */ sw	$t9, 0X60($s0)
/* 013210 0x8008CEC8 AE080058 */ sw	$t0, 0X58($s0)
/* 013211 0x8008CECC AE0B005C */ sw	$t3, 0X5C($s0)
/* 013212 0x8008CED0 8E040004 */ lw	$a0, 0X4($s0)
/* 013213 0x8008CED4 8E050008 */ lw	$a1, 0X8($s0)
/* 013214 0x8008CED8 24060007 */ li	$a2, 0X7
/* 013215 0x8008CEDC 2607002C */ addiu	$a3, $s0, 0X2C
/* 013216 0x8008CEE0 0C024310 */ jal	__osContRamRead
/* 013217 0x8008CEE4 A20F0064 */ sb	$t7, 0X64($s0)
/* 013218 0x8008CEE8 50400004 */ beqzl	$v0, .L8008CEFC
/* 013219 0x8008CEEC 00001025 */ move	$v0, $zero
/* 013220 0x8008CEF0 10000003 */ b	.L8008CF00
/* 013221 0x8008CEF4 8FBF001C */ lw	$ra, 0X1C($sp)
/* 013222 0x8008CEF8 00001025 */ move	$v0, $zero
.L8008CEFC:
/* 013223 0x8008CEFC 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CF00:
/* 013224 0x8008CF00 8FB00014 */ lw	$s0, 0X14($sp)
/* 013225 0x8008CF04 8FB10018 */ lw	$s1, 0X18($sp)
/* 013226 0x8008CF08 03E00008 */ jr	$ra
/* 013227 0x8008CF0C 27BD0070 */ addiu	$sp, $sp, 0X70

glabel func_8008CF10
/* 013228 0x8008CF10 27BDFFB8 */ addiu	$sp, $sp, -0X48
/* 013229 0x8008CF14 AFBF001C */ sw	$ra, 0X1C($sp)
/* 013230 0x8008CF18 AFB00018 */ sw	$s0, 0X18($sp)
/* 013231 0x8008CF1C 908E0065 */ lbu	$t6, 0X65($a0)
/* 013232 0x8008CF20 00808025 */ move	$s0, $a0
/* 013233 0x8008CF24 51C0000F */ beqzl	$t6, .L8008CF64
/* 013234 0x8008CF28 8E040004 */ lw	$a0, 0X4($s0)
/* 013235 0x8008CF2C 0C024B00 */ jal	__osPfsSelectBank
/* 013236 0x8008CF30 00002825 */ move	$a1, $zero
/* 013237 0x8008CF34 24010002 */ li	$at, 0X2
/* 013238 0x8008CF38 14410005 */ bne	$v0, $at, .L8008CF50
/* 013239 0x8008CF3C 00401825 */ move	$v1, $v0
/* 013240 0x8008CF40 02002025 */ move	$a0, $s0
/* 013241 0x8008CF44 0C024B00 */ jal	__osPfsSelectBank
/* 013242 0x8008CF48 00002825 */ move	$a1, $zero
/* 013243 0x8008CF4C 00401825 */ move	$v1, $v0
.L8008CF50:
/* 013244 0x8008CF50 50400004 */ beqzl	$v0, .L8008CF64
/* 013245 0x8008CF54 8E040004 */ lw	$a0, 0X4($s0)
/* 013246 0x8008CF58 1000001D */ b	.L8008CFD0
/* 013247 0x8008CF5C 00601025 */ move	$v0, $v1
/* 013248 0x8008CF60 8E040004 */ lw	$a0, 0X4($s0)
.L8008CF64:
/* 013249 0x8008CF64 8E050008 */ lw	$a1, 0X8($s0)
/* 013250 0x8008CF68 24060001 */ li	$a2, 0X1
/* 013251 0x8008CF6C 0C024310 */ jal	__osContRamRead
/* 013252 0x8008CF70 27A70028 */ addiu	$a3, $sp, 0X28
/* 013253 0x8008CF74 1040000D */ beqz	$v0, .L8008CFAC
/* 013254 0x8008CF78 24010002 */ li	$at, 0X2
/* 013255 0x8008CF7C 10410003 */ beq	$v0, $at, .L8008CF8C
/* 013256 0x8008CF80 24060001 */ li	$a2, 0X1
/* 013257 0x8008CF84 10000013 */ b	.L8008CFD4
/* 013258 0x8008CF88 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CF8C:
/* 013259 0x8008CF8C 8E040004 */ lw	$a0, 0X4($s0)
/* 013260 0x8008CF90 8E050008 */ lw	$a1, 0X8($s0)
/* 013261 0x8008CF94 0C024310 */ jal	__osContRamRead
/* 013262 0x8008CF98 27A70028 */ addiu	$a3, $sp, 0X28
/* 013263 0x8008CF9C 50400004 */ beqzl	$v0, .L8008CFB0
/* 013264 0x8008CFA0 2604000C */ addiu	$a0, $s0, 0XC
/* 013265 0x8008CFA4 1000000B */ b	.L8008CFD4
/* 013266 0x8008CFA8 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CFAC:
/* 013267 0x8008CFAC 2604000C */ addiu	$a0, $s0, 0XC
.L8008CFB0:
/* 013268 0x8008CFB0 27A50028 */ addiu	$a1, $sp, 0X28
/* 013269 0x8008CFB4 0C0240C0 */ jal	memcmp
/* 013270 0x8008CFB8 24060020 */ li	$a2, 0X20
/* 013271 0x8008CFBC 50400004 */ beqzl	$v0, .L8008CFD0
/* 013272 0x8008CFC0 00001025 */ move	$v0, $zero
/* 013273 0x8008CFC4 10000002 */ b	.L8008CFD0
/* 013274 0x8008CFC8 24020002 */ li	$v0, 0X2
/* 013275 0x8008CFCC 00001025 */ move	$v0, $zero
.L8008CFD0:
/* 013276 0x8008CFD0 8FBF001C */ lw	$ra, 0X1C($sp)
.L8008CFD4:
/* 013277 0x8008CFD4 8FB00018 */ lw	$s0, 0X18($sp)
/* 013278 0x8008CFD8 27BD0048 */ addiu	$sp, $sp, 0X48
/* 013279 0x8008CFDC 03E00008 */ jr	$ra
/* 013280 0x8008CFE0 00000000 */ nop

glabel func_8008CFE4
/* 013281 0x8008CFE4 27BDFFA8 */ addiu	$sp, $sp, -0X58
/* 013282 0x8008CFE8 AFB40030 */ sw	$s4, 0X30($sp)
/* 013283 0x8008CFEC 30D400FF */ andi	$s4, $a2, 0XFF
/* 013284 0x8008CFF0 AFB20028 */ sw	$s2, 0X28($sp)
/* 013285 0x8008CFF4 00809025 */ move	$s2, $a0
/* 013286 0x8008CFF8 AFBF0034 */ sw	$ra, 0X34($sp)
/* 013287 0x8008CFFC AFB3002C */ sw	$s3, 0X2C($sp)
/* 013288 0x8008D000 AFB10024 */ sw	$s1, 0X24($sp)
/* 013289 0x8008D004 AFB00020 */ sw	$s0, 0X20($sp)
/* 013290 0x8008D008 AFA5005C */ sw	$a1, 0X5C($sp)
/* 013291 0x8008D00C AFA60060 */ sw	$a2, 0X60($sp)
/* 013292 0x8008D010 16800011 */ bnez	$s4, .L8008D058
/* 013293 0x8008D014 AFA70064 */ sw	$a3, 0X64($sp)
/* 013294 0x8008D018 3C0F8009 */ lui	$t7, %hi(D_80097F04)
/* 013295 0x8008D01C 91EF7F04 */ lbu	$t7, %lo(D_80097F04)($t7)
/* 013296 0x8008D020 93B80067 */ lbu	$t8, 0X67($sp)
/* 013297 0x8008D024 3C198009 */ lui	$t9, %hi(D_80097F00)
/* 013298 0x8008D028 55F8000C */ bnel	$t7, $t8, .L8008D05C
/* 013299 0x8008D02C 92490065 */ lbu	$t1, 0X65($s2)
/* 013300 0x8008D030 8F397F00 */ lw	$t9, %lo(D_80097F00)($t9)
/* 013301 0x8008D034 8C880008 */ lw	$t0, 0X8($a0)
/* 013302 0x8008D038 3C04800A */ lui	$a0, %hi(D_8009E410)
/* 013303 0x8008D03C 2484E410 */ addiu	$a0, $a0, %lo(D_8009E410)
/* 013304 0x8008D040 57280006 */ bnel	$t9, $t0, .L8008D05C
/* 013305 0x8008D044 92490065 */ lbu	$t1, 0X65($s2)
/* 013306 0x8008D048 0C0244B0 */ jal	_bcopy
/* 013307 0x8008D04C 24060100 */ li	$a2, 0X100
/* 013308 0x8008D050 10000091 */ b	.L8008D298
/* 013309 0x8008D054 00001025 */ move	$v0, $zero
.L8008D058:
/* 013310 0x8008D058 92490065 */ lbu	$t1, 0X65($s2)
.L8008D05C:
/* 013311 0x8008D05C 02402025 */ move	$a0, $s2
/* 013312 0x8008D060 51200008 */ beqzl	$t1, .L8008D084
/* 013313 0x8008D064 93A30067 */ lbu	$v1, 0X67($sp)
/* 013314 0x8008D068 0C024B00 */ jal	__osPfsSelectBank
/* 013315 0x8008D06C 00002825 */ move	$a1, $zero
/* 013316 0x8008D070 50400004 */ beqzl	$v0, .L8008D084
/* 013317 0x8008D074 93A30067 */ lbu	$v1, 0X67($sp)
/* 013318 0x8008D078 10000088 */ b	.L8008D29C
/* 013319 0x8008D07C 8FBF0034 */ lw	$ra, 0X34($sp)
/* 013320 0x8008D080 93A30067 */ lbu	$v1, 0X67($sp)
.L8008D084:
/* 013321 0x8008D084 24020001 */ li	$v0, 0X1
/* 013322 0x8008D088 240A0001 */ li	$t2, 0X1
/* 013323 0x8008D08C 58600004 */ blezl	$v1, .L8008D0A0
/* 013324 0x8008D090 8E4B0060 */ lw	$t3, 0X60($s2)
/* 013325 0x8008D094 10000003 */ b	.L8008D0A4
/* 013326 0x8008D098 AFAA0048 */ sw	$t2, 0X48($sp)
/* 013327 0x8008D09C 8E4B0060 */ lw	$t3, 0X60($s2)
.L8008D0A0:
/* 013328 0x8008D0A0 AFAB0048 */ sw	$t3, 0X48($sp)
.L8008D0A4:
/* 013329 0x8008D0A4 1454000C */ bne	$v0, $s4, .L8008D0D8
/* 013330 0x8008D0A8 8FAD0048 */ lw	$t5, 0X48($sp)
/* 013331 0x8008D0AC 8FAC005C */ lw	$t4, 0X5C($sp)
/* 013332 0x8008D0B0 000D2823 */ negu	$a1, $t5
/* 013333 0x8008D0B4 00057840 */ sll	$t7, $a1, 1
/* 013334 0x8008D0B8 000D7040 */ sll	$t6, $t5, 1
/* 013335 0x8008D0BC 25E50100 */ addiu	$a1, $t7, 0X100
/* 013336 0x8008D0C0 AFA3003C */ sw	$v1, 0X3C($sp)
/* 013337 0x8008D0C4 0C0231D0 */ jal	func_8008C740
/* 013338 0x8008D0C8 018E2021 */ addu	$a0, $t4, $t6
/* 013339 0x8008D0CC 8FB8005C */ lw	$t8, 0X5C($sp)
/* 013340 0x8008D0D0 8FA3003C */ lw	$v1, 0X3C($sp)
/* 013341 0x8008D0D4 A3020001 */ sb	$v0, 0X1($t8)
.L8008D0D8:
/* 013342 0x8008D0D8 00008025 */ move	$s0, $zero
/* 013343 0x8008D0DC 8FB1005C */ lw	$s1, 0X5C($sp)
/* 013344 0x8008D0E0 000398C0 */ sll	$s3, $v1, 3
.L8008D0E4:
/* 013345 0x8008D0E4 24020001 */ li	$v0, 0X1
/* 013346 0x8008D0E8 14540016 */ bne	$v0, $s4, .L8008D144
/* 013347 0x8008D0EC 8E450008 */ lw	$a1, 0X8($s2)
/* 013348 0x8008D0F0 8E590054 */ lw	$t9, 0X54($s2)
/* 013349 0x8008D0F4 8E440004 */ lw	$a0, 0X4($s2)
/* 013350 0x8008D0F8 AFA00010 */ sw	$zero, 0X10($sp)
/* 013351 0x8008D0FC 03334021 */ addu	$t0, $t9, $s3
/* 013352 0x8008D100 01103021 */ addu	$a2, $t0, $s0
/* 013353 0x8008D104 30C9FFFF */ andi	$t1, $a2, 0XFFFF
/* 013354 0x8008D108 01203025 */ move	$a2, $t1
/* 013355 0x8008D10C 0C024F68 */ jal	__osContRamWrite
/* 013356 0x8008D110 02203825 */ move	$a3, $s1
/* 013357 0x8008D114 8E4A0058 */ lw	$t2, 0X58($s2)
/* 013358 0x8008D118 8E440004 */ lw	$a0, 0X4($s2)
/* 013359 0x8008D11C 8E450008 */ lw	$a1, 0X8($s2)
/* 013360 0x8008D120 01535821 */ addu	$t3, $t2, $s3
/* 013361 0x8008D124 01703021 */ addu	$a2, $t3, $s0
/* 013362 0x8008D128 30CCFFFF */ andi	$t4, $a2, 0XFFFF
/* 013363 0x8008D12C 01803025 */ move	$a2, $t4
/* 013364 0x8008D130 AFA00010 */ sw	$zero, 0X10($sp)
/* 013365 0x8008D134 0C024F68 */ jal	__osContRamWrite
/* 013366 0x8008D138 02203825 */ move	$a3, $s1
/* 013367 0x8008D13C 1000000A */ b	.L8008D168
/* 013368 0x8008D140 00401825 */ move	$v1, $v0
.L8008D144:
/* 013369 0x8008D144 8E4E0054 */ lw	$t6, 0X54($s2)
/* 013370 0x8008D148 8E440004 */ lw	$a0, 0X4($s2)
/* 013371 0x8008D14C 02203825 */ move	$a3, $s1
/* 013372 0x8008D150 01D36821 */ addu	$t5, $t6, $s3
/* 013373 0x8008D154 01B03021 */ addu	$a2, $t5, $s0
/* 013374 0x8008D158 30CFFFFF */ andi	$t7, $a2, 0XFFFF
/* 013375 0x8008D15C 0C024310 */ jal	__osContRamRead
/* 013376 0x8008D160 01E03025 */ move	$a2, $t7
/* 013377 0x8008D164 00401825 */ move	$v1, $v0
.L8008D168:
/* 013378 0x8008D168 10400003 */ beqz	$v0, .L8008D178
/* 013379 0x8008D16C 26100001 */ addiu	$s0, $s0, 0X1
/* 013380 0x8008D170 10000049 */ b	.L8008D298
/* 013381 0x8008D174 00601025 */ move	$v0, $v1
.L8008D178:
/* 013382 0x8008D178 2A010008 */ slti	$at, $s0, 0X8
/* 013383 0x8008D17C 1420FFD9 */ bnez	$at, .L8008D0E4
/* 013384 0x8008D180 26310020 */ addiu	$s1, $s1, 0X20
/* 013385 0x8008D184 16800038 */ bnez	$s4, .L8008D268
/* 013386 0x8008D188 8FB90048 */ lw	$t9, 0X48($sp)
/* 013387 0x8008D18C 8FB8005C */ lw	$t8, 0X5C($sp)
/* 013388 0x8008D190 00192823 */ negu	$a1, $t9
/* 013389 0x8008D194 00054840 */ sll	$t1, $a1, 1
/* 013390 0x8008D198 00194040 */ sll	$t0, $t9, 1
/* 013391 0x8008D19C 25250100 */ addiu	$a1, $t1, 0X100
/* 013392 0x8008D1A0 0308A021 */ addu	$s4, $t8, $t0
/* 013393 0x8008D1A4 02802025 */ move	$a0, $s4
/* 013394 0x8008D1A8 0C0231D0 */ jal	func_8008C740
/* 013395 0x8008D1AC AFA5003C */ sw	$a1, 0X3C($sp)
/* 013396 0x8008D1B0 8FAB005C */ lw	$t3, 0X5C($sp)
/* 013397 0x8008D1B4 304A00FF */ andi	$t2, $v0, 0XFF
/* 013398 0x8008D1B8 00008025 */ move	$s0, $zero
/* 013399 0x8008D1BC 916C0001 */ lbu	$t4, 0X1($t3)
/* 013400 0x8008D1C0 01608825 */ move	$s1, $t3
/* 013401 0x8008D1C4 514C0029 */ beql	$t2, $t4, .L8008D26C
/* 013402 0x8008D1C8 93AB0067 */ lbu	$t3, 0X67($sp)
.L8008D1CC:
/* 013403 0x8008D1CC 8E4E0058 */ lw	$t6, 0X58($s2)
/* 013404 0x8008D1D0 8E440004 */ lw	$a0, 0X4($s2)
/* 013405 0x8008D1D4 8E450008 */ lw	$a1, 0X8($s2)
/* 013406 0x8008D1D8 01D36821 */ addu	$t5, $t6, $s3
/* 013407 0x8008D1DC 01B03021 */ addu	$a2, $t5, $s0
/* 013408 0x8008D1E0 30CFFFFF */ andi	$t7, $a2, 0XFFFF
/* 013409 0x8008D1E4 01E03025 */ move	$a2, $t7
/* 013410 0x8008D1E8 0C024310 */ jal	__osContRamRead
/* 013411 0x8008D1EC 02203825 */ move	$a3, $s1
/* 013412 0x8008D1F0 26100001 */ addiu	$s0, $s0, 0X1
/* 013413 0x8008D1F4 2A010008 */ slti	$at, $s0, 0X8
/* 013414 0x8008D1F8 1420FFF4 */ bnez	$at, .L8008D1CC
/* 013415 0x8008D1FC 26310020 */ addiu	$s1, $s1, 0X20
/* 013416 0x8008D200 02802025 */ move	$a0, $s4
/* 013417 0x8008D204 0C0231D0 */ jal	func_8008C740
/* 013418 0x8008D208 8FA5003C */ lw	$a1, 0X3C($sp)
/* 013419 0x8008D20C 8FA8005C */ lw	$t0, 0X5C($sp)
/* 013420 0x8008D210 305800FF */ andi	$t8, $v0, 0XFF
/* 013421 0x8008D214 00008025 */ move	$s0, $zero
/* 013422 0x8008D218 91190001 */ lbu	$t9, 0X1($t0)
/* 013423 0x8008D21C 8FB1005C */ lw	$s1, 0X5C($sp)
/* 013424 0x8008D220 13190003 */ beq	$t8, $t9, .L8008D230
/* 013425 0x8008D224 00000000 */ nop
/* 013426 0x8008D228 1000001B */ b	.L8008D298
/* 013427 0x8008D22C 24020003 */ li	$v0, 0X3
.L8008D230:
/* 013428 0x8008D230 8E490054 */ lw	$t1, 0X54($s2)
/* 013429 0x8008D234 8E440004 */ lw	$a0, 0X4($s2)
/* 013430 0x8008D238 8E450008 */ lw	$a1, 0X8($s2)
/* 013431 0x8008D23C 01335021 */ addu	$t2, $t1, $s3
/* 013432 0x8008D240 01503021 */ addu	$a2, $t2, $s0
/* 013433 0x8008D244 30CCFFFF */ andi	$t4, $a2, 0XFFFF
/* 013434 0x8008D248 01803025 */ move	$a2, $t4
/* 013435 0x8008D24C AFA00010 */ sw	$zero, 0X10($sp)
/* 013436 0x8008D250 0C024F68 */ jal	__osContRamWrite
/* 013437 0x8008D254 02203825 */ move	$a3, $s1
/* 013438 0x8008D258 26100001 */ addiu	$s0, $s0, 0X1
/* 013439 0x8008D25C 24010008 */ li	$at, 0X8
/* 013440 0x8008D260 1601FFF3 */ bne	$s0, $at, .L8008D230
/* 013441 0x8008D264 26310020 */ addiu	$s1, $s1, 0X20
.L8008D268:
/* 013442 0x8008D268 93AB0067 */ lbu	$t3, 0X67($sp)
.L8008D26C:
/* 013443 0x8008D26C 3C018009 */ lui	$at, %hi(D_80097F04)
/* 013444 0x8008D270 3C05800A */ lui	$a1, %hi(D_8009E410)
/* 013445 0x8008D274 24A5E410 */ addiu	$a1, $a1, %lo(D_8009E410)
/* 013446 0x8008D278 8FA4005C */ lw	$a0, 0X5C($sp)
/* 013447 0x8008D27C 24060100 */ li	$a2, 0X100
/* 013448 0x8008D280 0C0244B0 */ jal	_bcopy
/* 013449 0x8008D284 A02B7F04 */ sb	$t3, %lo(D_80097F04)($at)
/* 013450 0x8008D288 8E4E0008 */ lw	$t6, 0X8($s2)
/* 013451 0x8008D28C 3C018009 */ lui	$at, %hi(D_80097F00)
/* 013452 0x8008D290 00001025 */ move	$v0, $zero
/* 013453 0x8008D294 AC2E7F00 */ sw	$t6, %lo(D_80097F00)($at)
.L8008D298:
/* 013454 0x8008D298 8FBF0034 */ lw	$ra, 0X34($sp)
.L8008D29C:
/* 013455 0x8008D29C 8FB00020 */ lw	$s0, 0X20($sp)
/* 013456 0x8008D2A0 8FB10024 */ lw	$s1, 0X24($sp)
/* 013457 0x8008D2A4 8FB20028 */ lw	$s2, 0X28($sp)
/* 013458 0x8008D2A8 8FB3002C */ lw	$s3, 0X2C($sp)
/* 013459 0x8008D2AC 8FB40030 */ lw	$s4, 0X30($sp)
/* 013460 0x8008D2B0 03E00008 */ jr	$ra
/* 013461 0x8008D2B4 27BD0058 */ addiu	$sp, $sp, 0X58
/* 013462 0x8008D2B8 00000000 */ nop
/* 013463 0x8008D2BC 00000000 */ nop
