glabel func_8093DEAC
/* 000003 0x8093DEAC 27BDFFC0 */ addiu	$sp, $sp, -0X40
/* 000004 0x8093DEB0 AFB00038 */ sw	$s0, 0X38($sp)
/* 000005 0x8093DEB4 00808025 */ move	$s0, $a0
/* 000006 0x8093DEB8 AFBF003C */ sw	$ra, 0X3C($sp)
/* 000007 0x8093DEBC 00A03025 */ move	$a2, $a1
/* 000008 0x8093DEC0 860E001C */ lh	$t6, 0X1C($s0)
/* 000009 0x8093DEC4 000E7943 */ sra	$t7, $t6, 5
/* 000010 0x8093DEC8 31F80001 */ andi	$t8, $t7, 0X1
/* 000011 0x8093DECC 53000014 */ beqzl	$t8, .L8093DF20
/* 000012 0x8093DED0 8FBF003C */ lw	$ra, 0X3C($sp)
/* 000013 0x8093DED4 C6040024 */ lwc1	$f4, 0X24($s0)
/* 000014 0x8093DED8 340AFF64 */ ori	$t2, $zero, 0XFF64
/* 000015 0x8093DEDC 24C41CA0 */ addiu	$a0, $a2, 0X1CA0
/* 000016 0x8093DEE0 E7A40010 */ swc1	$f4, 0X10($sp)
/* 000017 0x8093DEE4 C6060028 */ lwc1	$f6, 0X28($s0)
/* 000018 0x8093DEE8 02002825 */ move	$a1, $s0
/* 000019 0x8093DEEC 2407008E */ li	$a3, 0X8E
/* 000020 0x8093DEF0 E7A60014 */ swc1	$f6, 0X14($sp)
/* 000021 0x8093DEF4 C608002C */ lwc1	$f8, 0X2C($s0)
/* 000022 0x8093DEF8 E7A80018 */ swc1	$f8, 0X18($sp)
/* 000023 0x8093DEFC 86190030 */ lh	$t9, 0X30($s0)
/* 000024 0x8093DF00 AFB9001C */ sw	$t9, 0X1C($sp)
/* 000025 0x8093DF04 86080032 */ lh	$t0, 0X32($s0)
/* 000026 0x8093DF08 AFA80020 */ sw	$t0, 0X20($sp)
/* 000027 0x8093DF0C 86090034 */ lh	$t1, 0X34($s0)
/* 000028 0x8093DF10 AFAA0028 */ sw	$t2, 0X28($sp)
/* 000029 0x8093DF14 0C02EC30 */ jal	Actor_SpawnWithParent
/* 000030 0x8093DF18 AFA90024 */ sw	$t1, 0X24($sp)
/* 000031 0x8093DF1C 8FBF003C */ lw	$ra, 0X3C($sp)
.L8093DF20:
/* 000032 0x8093DF20 8FB00038 */ lw	$s0, 0X38($sp)
/* 000033 0x8093DF24 27BD0040 */ addiu	$sp, $sp, 0X40
/* 000034 0x8093DF28 03E00008 */ jr	$ra
/* 000035 0x8093DF2C 00000000 */ nop

