glabel func_809AF110
/* 001548 0x809AF110 27BDFFB0 */ addiu	$sp, $sp, -0X50
/* 001549 0x809AF114 AFB00030 */ sw	$s0, 0X30($sp)
/* 001550 0x809AF118 00808025 */ move	$s0, $a0
/* 001551 0x809AF11C AFBF0034 */ sw	$ra, 0X34($sp)
/* 001552 0x809AF120 AFA50054 */ sw	$a1, 0X54($sp)
/* 001553 0x809AF124 C604015C */ lwc1	$f4, 0X15C($s0)
/* 001554 0x809AF128 26040070 */ addiu	$a0, $s0, 0X70
/* 001555 0x809AF12C 3C053F00 */ lui	$a1, 0x3F00
/* 001556 0x809AF130 3C0640A0 */ lui	$a2, 0x40A0
/* 001557 0x809AF134 0C03FF9A */ jal	Math_SmoothDownscaleMaxF
/* 001558 0x809AF138 E7A4004C */ swc1	$f4, 0X4C($sp)
/* 001559 0x809AF13C 8FA40054 */ lw	$a0, 0X54($sp)
/* 001560 0x809AF140 3C0E0002 */ lui	$t6, 0x0002
/* 001561 0x809AF144 02002825 */ move	$a1, $s0
/* 001562 0x809AF148 01C47021 */ addu	$t6, $t6, $a0
/* 001563 0x809AF14C 8DCE8840 */ lw	$t6, -0X77C0($t6)
/* 001564 0x809AF150 26060024 */ addiu	$a2, $s0, 0X24
/* 001565 0x809AF154 24180001 */ li	$t8, 0X1
/* 001566 0x809AF158 31CF0007 */ andi	$t7, $t6, 0X7
/* 001567 0x809AF15C 15E0000C */ bnez	$t7, .L809AF190
/* 001568 0x809AF160 3C014100 */ lui	$at, 0x4100
/* 001569 0x809AF164 8E0700CC */ lw	$a3, 0XCC($s0)
/* 001570 0x809AF168 44813000 */ mtc1	$at, $f6
/* 001571 0x809AF16C 241901F4 */ li	$t9, 0X1F4
/* 001572 0x809AF170 2408000A */ li	$t0, 0XA
/* 001573 0x809AF174 24090001 */ li	$t1, 0X1
/* 001574 0x809AF178 AFA90020 */ sw	$t1, 0X20($sp)
/* 001575 0x809AF17C AFA8001C */ sw	$t0, 0X1C($sp)
/* 001576 0x809AF180 AFB90018 */ sw	$t9, 0X18($sp)
/* 001577 0x809AF184 AFB80010 */ sw	$t8, 0X10($sp)
/* 001578 0x809AF188 0C02EF6B */ jal	func_800BBDAC
/* 001579 0x809AF18C E7A60014 */ swc1	$f6, 0X14($sp)
.L809AF190:
/* 001580 0x809AF190 920203B8 */ lbu	$v0, 0X3B8($s0)
/* 001581 0x809AF194 240C0001 */ li	$t4, 0X1
/* 001582 0x809AF198 304A0002 */ andi	$t2, $v0, 0X2
/* 001583 0x809AF19C 15400005 */ bnez	$t2, .L809AF1B4
/* 001584 0x809AF1A0 304DFFFD */ andi	$t5, $v0, 0XFFFD
/* 001585 0x809AF1A4 92030438 */ lbu	$v1, 0X438($s0)
/* 001586 0x809AF1A8 306B0002 */ andi	$t3, $v1, 0X2
/* 001587 0x809AF1AC 51600009 */ beqzl	$t3, .L809AF1D4
/* 001588 0x809AF1B0 30580004 */ andi	$t8, $v0, 0X4
.L809AF1B4:
/* 001589 0x809AF1B4 920E0438 */ lbu	$t6, 0X438($s0)
/* 001590 0x809AF1B8 A20C034E */ sb	$t4, 0X34E($s0)
/* 001591 0x809AF1BC A20D03B8 */ sb	$t5, 0X3B8($s0)
/* 001592 0x809AF1C0 31CFFFFD */ andi	$t7, $t6, 0XFFFD
/* 001593 0x809AF1C4 A20F0438 */ sb	$t7, 0X438($s0)
/* 001594 0x809AF1C8 31E300FF */ andi	$v1, $t7, 0XFF
/* 001595 0x809AF1CC 31A200FF */ andi	$v0, $t5, 0XFF
/* 001596 0x809AF1D0 30580004 */ andi	$t8, $v0, 0X4
.L809AF1D4:
/* 001597 0x809AF1D4 17000003 */ bnez	$t8, .L809AF1E4
/* 001598 0x809AF1D8 30790004 */ andi	$t9, $v1, 0X4
/* 001599 0x809AF1DC 5320001B */ beqzl	$t9, .L809AF24C
/* 001600 0x809AF1E0 C7AA004C */ lwc1	$f10, 0X4C($sp)
.L809AF1E4:
/* 001601 0x809AF1E4 920A034D */ lbu	$t2, 0X34D($s0)
/* 001602 0x809AF1E8 3048FFF9 */ andi	$t0, $v0, 0XFFF9
/* 001603 0x809AF1EC 3069FFF9 */ andi	$t1, $v1, 0XFFF9
/* 001604 0x809AF1F0 A20803B8 */ sb	$t0, 0X3B8($s0)
/* 001605 0x809AF1F4 15400014 */ bnez	$t2, .L809AF248
/* 001606 0x809AF1F8 A2090438 */ sb	$t1, 0X438($s0)
/* 001607 0x809AF1FC 86040092 */ lh	$a0, 0X92($s0)
/* 001608 0x809AF200 0C06026B */ jal	SysMatrix_InsertYRotation_s
/* 001609 0x809AF204 00002825 */ move	$a1, $zero
/* 001610 0x809AF208 44800000 */ mtc1	$zero, $f0
/* 001611 0x809AF20C 3C01C120 */ lui	$at, 0xC120
/* 001612 0x809AF210 44814000 */ mtc1	$at, $f8
/* 001613 0x809AF214 27A40040 */ addiu	$a0, $sp, 0X40
/* 001614 0x809AF218 26050FE0 */ addiu	$a1, $s0, 0XFE0
/* 001615 0x809AF21C E7A00040 */ swc1	$f0, 0X40($sp)
/* 001616 0x809AF220 E7A00044 */ swc1	$f0, 0X44($sp)
/* 001617 0x809AF224 0C0606A6 */ jal	SysMatrix_MultiplyVector3fByState
/* 001618 0x809AF228 E7A80048 */ swc1	$f8, 0X48($sp)
/* 001619 0x809AF22C 24020001 */ li	$v0, 0X1
/* 001620 0x809AF230 A202034D */ sb	$v0, 0X34D($s0)
/* 001621 0x809AF234 A202034C */ sb	$v0, 0X34C($s0)
/* 001622 0x809AF238 0C26BCDA */ jal	func_809AF368
/* 001623 0x809AF23C 02002025 */ move	$a0, $s0
/* 001624 0x809AF240 1000000E */ b	.L809AF27C
/* 001625 0x809AF244 8FBF0034 */ lw	$ra, 0X34($sp)
.L809AF248:
/* 001626 0x809AF248 C7AA004C */ lwc1	$f10, 0X4C($sp)
.L809AF24C:
/* 001627 0x809AF24C C6100350 */ lwc1	$f16, 0X350($s0)
/* 001628 0x809AF250 460A803E */ c.le.s	$f16, $f10
/* 001629 0x809AF254 00000000 */ nop
/* 001630 0x809AF258 45020008 */ bc1fl .L809AF27C
/* 001631 0x809AF25C 8FBF0034 */ lw	$ra, 0X34($sp)
/* 001632 0x809AF260 44800000 */ mtc1	$zero, $f0
/* 001633 0x809AF264 240B0001 */ li	$t3, 0X1
/* 001634 0x809AF268 A20B034C */ sb	$t3, 0X34C($s0)
/* 001635 0x809AF26C 02002025 */ move	$a0, $s0
/* 001636 0x809AF270 0C26BCA3 */ jal	func_809AF28C
/* 001637 0x809AF274 E6000070 */ swc1	$f0, 0X70($s0)
/* 001638 0x809AF278 8FBF0034 */ lw	$ra, 0X34($sp)
.L809AF27C:
/* 001639 0x809AF27C 8FB00030 */ lw	$s0, 0X30($sp)
/* 001640 0x809AF280 27BD0050 */ addiu	$sp, $sp, 0X50
/* 001641 0x809AF284 03E00008 */ jr	$ra
/* 001642 0x809AF288 00000000 */ nop

