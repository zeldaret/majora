.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enWfOverlayInfo
/* 004120 0x80994370 */ .word	0x00003E40
/* 004121 0x80994374 */ .word	0x000001D0
/* 004122 0x80994378 */ .word	0x00000050
/* 004123 0x8099437C */ .word	0x00000000
/* 004124 0x80994380 */ .word	0x00000107
glabel enWfOverlayRelocations
/* 004125 0x80994384 */ .word	0x4500001C
/* 004126 0x80994388 */ .word	0x46000020
/* 004127 0x8099438C */ .word	0x4500004C
/* 004128 0x80994390 */ .word	0x46000058
/* 004129 0x80994394 */ .word	0x4500006C
/* 004130 0x80994398 */ .word	0x46000070
/* 004131 0x8099439C */ .word	0x45000084
/* 004132 0x809943A0 */ .word	0x46000088
/* 004133 0x809943A4 */ .word	0x450000AC
/* 004134 0x809943A8 */ .word	0x460000BC
/* 004135 0x809943AC */ .word	0x450002B4
/* 004136 0x809943B0 */ .word	0x460002C4
/* 004137 0x809943B4 */ .word	0x450002B8
/* 004138 0x809943B8 */ .word	0x460002C0
/* 004139 0x809943BC */ .word	0x4500031C
/* 004140 0x809943C0 */ .word	0x4600032C
/* 004141 0x809943C4 */ .word	0x45000320
/* 004142 0x809943C8 */ .word	0x46000328
/* 004143 0x809943CC */ .word	0x44000344
/* 004144 0x809943D0 */ .word	0x44000354
/* 004145 0x809943D4 */ .word	0x45000370
/* 004146 0x809943D8 */ .word	0x46000374
/* 004147 0x809943DC */ .word	0x45000378
/* 004148 0x809943E0 */ .word	0x4600037C
/* 004149 0x809943E4 */ .word	0x45000384
/* 004150 0x809943E8 */ .word	0x46000388
/* 004151 0x809943EC */ .word	0x450003A0
/* 004152 0x809943F0 */ .word	0x460003A4
/* 004153 0x809943F4 */ .word	0x450003BC
/* 004154 0x809943F8 */ .word	0x460003C0
/* 004155 0x809943FC */ .word	0x4500057C
/* 004156 0x80994400 */ .word	0x46000584
/* 004157 0x80994404 */ .word	0x45000588
/* 004158 0x80994408 */ .word	0x4600058C
/* 004159 0x8099440C */ .word	0x45000604
/* 004160 0x80994410 */ .word	0x46000608
/* 004161 0x80994414 */ .word	0x440006EC
/* 004162 0x80994418 */ .word	0x44000750
/* 004163 0x8099441C */ .word	0x440007B4
/* 004164 0x80994420 */ .word	0x440007F4
/* 004165 0x80994424 */ .word	0x44000804
/* 004166 0x80994428 */ .word	0x4400086C
/* 004167 0x8099442C */ .word	0x4400089C
/* 004168 0x80994430 */ .word	0x44000924
/* 004169 0x80994434 */ .word	0x44000934
/* 004170 0x80994438 */ .word	0x450009C8
/* 004171 0x8099443C */ .word	0x460009E0
/* 004172 0x80994440 */ .word	0x45000A10
/* 004173 0x80994444 */ .word	0x46000A1C
/* 004174 0x80994448 */ .word	0x45000A60
/* 004175 0x8099444C */ .word	0x46000A70
/* 004176 0x80994450 */ .word	0x44000B78
/* 004177 0x80994454 */ .word	0x44000BE4
/* 004178 0x80994458 */ .word	0x45000C0C
/* 004179 0x8099445C */ .word	0x46000C14
/* 004180 0x80994460 */ .word	0x44000CA0
/* 004181 0x80994464 */ .word	0x45000D00
/* 004182 0x80994468 */ .word	0x46000D08
/* 004183 0x8099446C */ .word	0x45000D44
/* 004184 0x80994470 */ .word	0x46000D58
/* 004185 0x80994474 */ .word	0x44000DC8
/* 004186 0x80994478 */ .word	0x45000E3C
/* 004187 0x8099447C */ .word	0x46000E44
/* 004188 0x80994480 */ .word	0x45000E8C
/* 004189 0x80994484 */ .word	0x46000E9C
/* 004190 0x80994488 */ .word	0x44000ED8
/* 004191 0x8099448C */ .word	0x45000F3C
/* 004192 0x80994490 */ .word	0x46000F48
/* 004193 0x80994494 */ .word	0x44000FF0
/* 004194 0x80994498 */ .word	0x44001004
/* 004195 0x8099449C */ .word	0x44001078
/* 004196 0x809944A0 */ .word	0x450010BC
/* 004197 0x809944A4 */ .word	0x460010C0
/* 004198 0x809944A8 */ .word	0x440010D4
/* 004199 0x809944AC */ .word	0x440010E4
/* 004200 0x809944B0 */ .word	0x440010F4
/* 004201 0x809944B4 */ .word	0x45001168
/* 004202 0x809944B8 */ .word	0x4600116C
/* 004203 0x809944BC */ .word	0x440011B0
/* 004204 0x809944C0 */ .word	0x45001278
/* 004205 0x809944C4 */ .word	0x4600127C
/* 004206 0x809944C8 */ .word	0x44001290
/* 004207 0x809944CC */ .word	0x440012B0
/* 004208 0x809944D0 */ .word	0x440012F4
/* 004209 0x809944D4 */ .word	0x44001304
/* 004210 0x809944D8 */ .word	0x45001350
/* 004211 0x809944DC */ .word	0x46001354
/* 004212 0x809944E0 */ .word	0x44001390
/* 004213 0x809944E4 */ .word	0x440013D8
/* 004214 0x809944E8 */ .word	0x440013E8
/* 004215 0x809944EC */ .word	0x4400140C
/* 004216 0x809944F0 */ .word	0x45001450
/* 004217 0x809944F4 */ .word	0x46001454
/* 004218 0x809944F8 */ .word	0x44001484
/* 004219 0x809944FC */ .word	0x44001498
/* 004220 0x80994500 */ .word	0x450015DC
/* 004221 0x80994504 */ .word	0x460015E0
/* 004222 0x80994508 */ .word	0x440015F4
/* 004223 0x8099450C */ .word	0x44001604
/* 004224 0x80994510 */ .word	0x450016B8
/* 004225 0x80994514 */ .word	0x460016BC
/* 004226 0x80994518 */ .word	0x44001728
/* 004227 0x8099451C */ .word	0x4400173C
/* 004228 0x80994520 */ .word	0x440017C8
/* 004229 0x80994524 */ .word	0x45001800
/* 004230 0x80994528 */ .word	0x46001804
/* 004231 0x8099452C */ .word	0x44001844
/* 004232 0x80994530 */ .word	0x440018A4
/* 004233 0x80994534 */ .word	0x440018B4
/* 004234 0x80994538 */ .word	0x45001938
/* 004235 0x8099453C */ .word	0x46001940
/* 004236 0x80994540 */ .word	0x45001AEC
/* 004237 0x80994544 */ .word	0x46001AF0
/* 004238 0x80994548 */ .word	0x45001B00
/* 004239 0x8099454C */ .word	0x46001B04
/* 004240 0x80994550 */ .word	0x44001B34
/* 004241 0x80994554 */ .word	0x44001B64
/* 004242 0x80994558 */ .word	0x45001BB4
/* 004243 0x8099455C */ .word	0x46001BB8
/* 004244 0x80994560 */ .word	0x44001BEC
/* 004245 0x80994564 */ .word	0x45001C28
/* 004246 0x80994568 */ .word	0x46001C2C
/* 004247 0x8099456C */ .word	0x44001C48
/* 004248 0x80994570 */ .word	0x44001C88
/* 004249 0x80994574 */ .word	0x44001C9C
/* 004250 0x80994578 */ .word	0x44001CAC
/* 004251 0x8099457C */ .word	0x45001D30
/* 004252 0x80994580 */ .word	0x46001D34
/* 004253 0x80994584 */ .word	0x44001DC8
/* 004254 0x80994588 */ .word	0x45001E18
/* 004255 0x8099458C */ .word	0x46001E1C
/* 004256 0x80994590 */ .word	0x44001E50
/* 004257 0x80994594 */ .word	0x45001E8C
/* 004258 0x80994598 */ .word	0x46001E90
/* 004259 0x8099459C */ .word	0x44001EAC
/* 004260 0x809945A0 */ .word	0x44001EEC
/* 004261 0x809945A4 */ .word	0x44001F00
/* 004262 0x809945A8 */ .word	0x44001F10
/* 004263 0x809945AC */ .word	0x45001F88
/* 004264 0x809945B0 */ .word	0x46001F8C
/* 004265 0x809945B4 */ .word	0x45002014
/* 004266 0x809945B8 */ .word	0x46002018
/* 004267 0x809945BC */ .word	0x4400202C
/* 004268 0x809945C0 */ .word	0x4400205C
/* 004269 0x809945C4 */ .word	0x4400206C
/* 004270 0x809945C8 */ .word	0x450020A4
/* 004271 0x809945CC */ .word	0x460020B0
/* 004272 0x809945D0 */ .word	0x44002104
/* 004273 0x809945D4 */ .word	0x44002124
/* 004274 0x809945D8 */ .word	0x44002134
/* 004275 0x809945DC */ .word	0x450021C0
/* 004276 0x809945E0 */ .word	0x460021C4
/* 004277 0x809945E4 */ .word	0x45002228
/* 004278 0x809945E8 */ .word	0x4600223C
/* 004279 0x809945EC */ .word	0x4400227C
/* 004280 0x809945F0 */ .word	0x440022D4
/* 004281 0x809945F4 */ .word	0x440022E4
/* 004282 0x809945F8 */ .word	0x44002338
/* 004283 0x809945FC */ .word	0x4400236C
/* 004284 0x80994600 */ .word	0x440023A4
/* 004285 0x80994604 */ .word	0x45002450
/* 004286 0x80994608 */ .word	0x46002454
/* 004287 0x8099460C */ .word	0x440024F0
/* 004288 0x80994610 */ .word	0x44002500
/* 004289 0x80994614 */ .word	0x4500259C
/* 004290 0x80994618 */ .word	0x460025A0
/* 004291 0x8099461C */ .word	0x44002664
/* 004292 0x80994620 */ .word	0x44002728
/* 004293 0x80994624 */ .word	0x44002738
/* 004294 0x80994628 */ .word	0x44002748
/* 004295 0x8099462C */ .word	0x45002850
/* 004296 0x80994630 */ .word	0x46002854
/* 004297 0x80994634 */ .word	0x44002920
/* 004298 0x80994638 */ .word	0x4400297C
/* 004299 0x8099463C */ .word	0x44002A0C
/* 004300 0x80994640 */ .word	0x44002A1C
/* 004301 0x80994644 */ .word	0x44002A28
/* 004302 0x80994648 */ .word	0x45002AE0
/* 004303 0x8099464C */ .word	0x46002AE4
/* 004304 0x80994650 */ .word	0x45002BFC
/* 004305 0x80994654 */ .word	0x46002C14
/* 004306 0x80994658 */ .word	0x45002CEC
/* 004307 0x8099465C */ .word	0x46002CF0
/* 004308 0x80994660 */ .word	0x44002D44
/* 004309 0x80994664 */ .word	0x44002D54
/* 004310 0x80994668 */ .word	0x44002D90
/* 004311 0x8099466C */ .word	0x44002DF4
/* 004312 0x80994670 */ .word	0x44002E20
/* 004313 0x80994674 */ .word	0x45002E64
/* 004314 0x80994678 */ .word	0x46002E68
/* 004315 0x8099467C */ .word	0x44002EA4
/* 004316 0x80994680 */ .word	0x44002EC4
/* 004317 0x80994684 */ .word	0x44002ED4
/* 004318 0x80994688 */ .word	0x44002F08
/* 004319 0x8099468C */ .word	0x44002FEC
/* 004320 0x80994690 */ .word	0x4400300C
/* 004321 0x80994694 */ .word	0x45003074
/* 004322 0x80994698 */ .word	0x46003078
/* 004323 0x8099469C */ .word	0x440030B0
/* 004324 0x809946A0 */ .word	0x440030D0
/* 004325 0x809946A4 */ .word	0x440030E0
/* 004326 0x809946A8 */ .word	0x440031D0
/* 004327 0x809946AC */ .word	0x440031E0
/* 004328 0x809946B0 */ .word	0x45003248
/* 004329 0x809946B4 */ .word	0x4600324C
/* 004330 0x809946B8 */ .word	0x4400328C
/* 004331 0x809946BC */ .word	0x440032D0
/* 004332 0x809946C0 */ .word	0x440032E4
/* 004333 0x809946C4 */ .word	0x4400337C
/* 004334 0x809946C8 */ .word	0x4400338C
/* 004335 0x809946CC */ .word	0x440033F4
/* 004336 0x809946D0 */ .word	0x4500343C
/* 004337 0x809946D4 */ .word	0x46003440
/* 004338 0x809946D8 */ .word	0x45003480
/* 004339 0x809946DC */ .word	0x46003484
/* 004340 0x809946E0 */ .word	0x45003448
/* 004341 0x809946E4 */ .word	0x460034A0
/* 004342 0x809946E8 */ .word	0x450034A8
/* 004343 0x809946EC */ .word	0x460034AC
/* 004344 0x809946F0 */ .word	0x450034B4
/* 004345 0x809946F4 */ .word	0x460034B8
/* 004346 0x809946F8 */ .word	0x450034C0
/* 004347 0x809946FC */ .word	0x460034C4
/* 004348 0x80994700 */ .word	0x450034CC
/* 004349 0x80994704 */ .word	0x460034E8
/* 004350 0x80994708 */ .word	0x440036B4
/* 004351 0x8099470C */ .word	0x440036FC
/* 004352 0x80994710 */ .word	0x44003764
/* 004353 0x80994714 */ .word	0x44003780
/* 004354 0x80994718 */ .word	0x440037A8
/* 004355 0x8099471C */ .word	0x44003884
/* 004356 0x80994720 */ .word	0x44003894
/* 004357 0x80994724 */ .word	0x440038E8
/* 004358 0x80994728 */ .word	0x450038F4
/* 004359 0x8099472C */ .word	0x460038F8
/* 004360 0x80994730 */ .word	0x44003904
/* 004361 0x80994734 */ .word	0x44003950
/* 004362 0x80994738 */ .word	0x450039A0
/* 004363 0x8099473C */ .word	0x460039A4
/* 004364 0x80994740 */ .word	0x45003A14
/* 004365 0x80994744 */ .word	0x46003A18
/* 004366 0x80994748 */ .word	0x44003A6C
/* 004367 0x8099474C */ .word	0x45003BB0
/* 004368 0x80994750 */ .word	0x46003BB4
/* 004369 0x80994754 */ .word	0x45003BEC
/* 004370 0x80994758 */ .word	0x46003BF0
/* 004371 0x8099475C */ .word	0x45003C70
/* 004372 0x80994760 */ .word	0x46003C74
/* 004373 0x80994764 */ .word	0x45003CB8
/* 004374 0x80994768 */ .word	0x46003CC4
/* 004375 0x8099476C */ .word	0x45003CF0
/* 004376 0x80994770 */ .word	0x46003CFC
/* 004377 0x80994774 */ .word	0x45003D10
/* 004378 0x80994778 */ .word	0x46003D1C
/* 004379 0x8099477C */ .word	0x45003D14
/* 004380 0x80994780 */ .word	0x46003D18
/* 004381 0x80994784 */ .word	0x44003E08
/* 004382 0x80994788 */ .word	0x44003E18
/* 004383 0x8099478C */ .word	0x82000010
/* 004384 0x80994790 */ .word	0x82000014
/* 004385 0x80994794 */ .word	0x82000018
/* 004386 0x80994798 */ .word	0x8200001C
/* 004387 0x8099479C */ .word	0x820000BC
/* 004388 0x809947A0 */ .word	0x00000000
/* 004389 0x809947A4 */ .word	0x00000000
/* 004390 0x809947A8 */ .word	0x00000000
glabel enWfOverlayInfoOffset
/* 004391 0x809947AC */ .word	0x00000440
