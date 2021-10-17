.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel D_80A7B4F0
/* 004172 0x80A7B4F0 */ .word	0x10F100F1
/* 004173 0x80A7B4F4 */ .word	0xF1F10010
/* 004174 0x80A7B4F8 */ .word	0xF1F1F122
/* 004175 0x80A7B4FC */ .word	0x3242F110
/* 004176 0x80A7B500 */ .word	0xF1F21050
/* 004177 0x80A7B504 */ .word	0x0000F1F1
/* 004178 0x80A7B508 */ .word	0xF1000000
/* 004179 0x80A7B50C */ .word	0x000000F1
glabel D_80A7B510
/* 004180 0x80A7B510 */ .word	0x3B449BA6
/* 004181 0x80A7B514 */ .word	0x3B449BA6
/* 004182 0x80A7B518 */ .word	0x3B449BA6
/* 004183 0x80A7B51C */ .word	0x3B03126F
/* 004184 0x80A7B520 */ .word	0x3B03126F
/* 004185 0x80A7B524 */ .word	0x3B03126F
/* 004186 0x80A7B528 */ .word	0x3A83126F
/* 004187 0x80A7B52C */ .word	0x3A83126F
/* 004188 0x80A7B530 */ .word	0x3A83126F
/* 004189 0x80A7B534 */ .word	0x3B449BA6
/* 004190 0x80A7B538 */ .word	0x3B449BA6
/* 004191 0x80A7B53C */ .word	0x3B449BA6
/* 004192 0x80A7B540 */ .word	0x3B03126F
/* 004193 0x80A7B544 */ .word	0x3B03126F
/* 004194 0x80A7B548 */ .word	0x3B03126F
/* 004195 0x80A7B54C */ .word	0x3A83126F
/* 004196 0x80A7B550 */ .word	0x3A83126F
/* 004197 0x80A7B554 */ .word	0x3A83126F
glabel D_80A7B558
/* 004198 0x80A7B558 */ .word	0x44480000
/* 004199 0x80A7B55C */ .word	0xC1A00000
/* 004200 0x80A7B560 */ .word	0xC2480000
glabel D_80A7B564
/* 004201 0x80A7B564 */ .word	0x43FA0000
/* 004202 0x80A7B568 */ .word	0xC1A00000
/* 004203 0x80A7B56C */ .word	0xC28C0000
glabel D_80A7B570
/* 004204 0x80A7B570 */ .word	0x43960000
/* 004205 0x80A7B574 */ .word	0xC1A00000
/* 004206 0x80A7B578 */ .word	0xC2B40000
glabel D_80A7B57C
/* 004207 0x80A7B57C */ .word	0x44480000
/* 004208 0x80A7B580 */ .word	0xC1A00000
/* 004209 0x80A7B584 */ .word	0x42480000
glabel D_80A7B588
/* 004210 0x80A7B588 */ .word	0x43FA0000
/* 004211 0x80A7B58C */ .word	0xC1A00000
/* 004212 0x80A7B590 */ .word	0x428C0000
glabel D_80A7B594
/* 004213 0x80A7B594 */ .word	0x43960000
/* 004214 0x80A7B598 */ .word	0xC1A00000
/* 004215 0x80A7B59C */ .word	0x42B40000
glabel D_80A7B5A0
/* 004216 0x80A7B5A0 */ .word	0x44160000
/* 004217 0x80A7B5A4 */ .word	0xC2C80000
/* 004218 0x80A7B5A8 */ .word	0x42C80000
glabel D_80A7B5AC
/* 004219 0x80A7B5AC */ .word	0x43960000
/* 004220 0x80A7B5B0 */ .word	0xC2C80000
/* 004221 0x80A7B5B4 */ .word	0x42A00000
glabel D_80A7B5B8
/* 004222 0x80A7B5B8 */ .word	0x42C80000
/* 004223 0x80A7B5BC */ .word	0xC2C80000
/* 004224 0x80A7B5C0 */ .word	0x42700000
glabel D_80A7B5C4
/* 004225 0x80A7B5C4 */ .word	0x44160000
/* 004226 0x80A7B5C8 */ .word	0xC2C80000
/* 004227 0x80A7B5CC */ .word	0xC2C80000
glabel D_80A7B5D0
/* 004228 0x80A7B5D0 */ .word	0x43960000
/* 004229 0x80A7B5D4 */ .word	0xC2C80000
/* 004230 0x80A7B5D8 */ .word	0xC2A00000
glabel D_80A7B5DC
/* 004231 0x80A7B5DC */ .word	0x42C80000
/* 004232 0x80A7B5E0 */ .word	0xC2C80000
/* 004233 0x80A7B5E4 */ .word	0xC2700000
glabel En_Jso2_InitVars
/* 004234 0x80A7B5E8 */ .word	0x01820500
/* 004235 0x80A7B5EC */ .word	0x80100035
/* 004236 0x80A7B5F0 */ .word	0x01550000
/* 004237 0x80A7B5F4 */ .word	0x00001090
/* 004238 0x80A7B5F8 */ .word	EnJso2_Init
/* 004239 0x80A7B5FC */ .word	EnJso2_Destroy
/* 004240 0x80A7B600 */ .word	EnJso2_Update
/* 004241 0x80A7B604 */ .word	EnJso2_Draw
glabel D_80A7B608
/* 004242 0x80A7B608 */ .word	0x0A110D39
/* 004243 0x80A7B60C */ .word	0x10010000
/* 004244 0x80A7B610 */ .word	0x00000000
/* 004245 0x80A7B614 */ .word	0xF7CFFFFF
/* 004246 0x80A7B618 */ .word	0x08040000
/* 004247 0x80A7B61C */ .word	0xF7CFFFFF
/* 004248 0x80A7B620 */ .word	0x00000000
/* 004249 0x80A7B624 */ .word	0x01010100
/* 004250 0x80A7B628 */ .word	0x00160046
/* 004251 0x80A7B62C */ .word	0x00000000
/* 004252 0x80A7B630 */ .word	0x00000000
glabel D_80A7B634
/* 004253 0x80A7B634 */ .word	0x0A110000
/* 004254 0x80A7B638 */ .word	0x00030000
/* 004255 0x80A7B63C */ .word	0x00000000
/* 004256 0x80A7B640 */ .word	0xF7CFFFFF
/* 004257 0x80A7B644 */ .word	0x09100000
/* 004258 0x80A7B648 */ .word	0x00000000
/* 004259 0x80A7B64C */ .word	0x00000000
/* 004260 0x80A7B650 */ .word	0x81000000
/* 004261 0x80A7B654 */ .word	0x00000000
/* 004262 0x80A7B658 */ .word	0x00000000
/* 004263 0x80A7B65C */ .word	0x00000000
/* 004264 0x80A7B660 */ .word	0x00000000
/* 004265 0x80A7B664 */ .word	0x00000000
/* 004266 0x80A7B668 */ .word	0x00000000
/* 004267 0x80A7B66C */ .word	0x00000000
/* 004268 0x80A7B670 */ .word	0x00000000
/* 004269 0x80A7B674 */ .word	0x00000000
/* 004270 0x80A7B678 */ .word	0x00000000
/* 004271 0x80A7B67C */ .word	0x00000000
/* 004272 0x80A7B680 */ .word	0x00000000
glabel D_80A7B684
/* 004273 0x80A7B684 */ .word	0x06003530
/* 004274 0x80A7B688 */ .word	0x0600378C
/* 004275 0x80A7B68C */ .word	0x060038AC
/* 004276 0x80A7B690 */ .word	0x06003D5C
/* 004277 0x80A7B694 */ .word	0x060044F8
/* 004278 0x80A7B698 */ .word	0x06004858
/* 004279 0x80A7B69C */ .word	0x060081F4
/* 004280 0x80A7B6A0 */ .word	0x0600AE80
/* 004281 0x80A7B6A4 */ .word	0x0600B5F0
/* 004282 0x80A7B6A8 */ .word	0x06005D5C
/* 004283 0x80A7B6AC */ .word	0x0600603C
/* 004284 0x80A7B6B0 */ .word	0x06007B04
/* 004285 0x80A7B6B4 */ .word	0x0600788C
/* 004286 0x80A7B6B8 */ .word	0x06005778
/* 004287 0x80A7B6BC */ .word	0x060072AC
/* 004288 0x80A7B6C0 */ .word	0x06004384
/* 004289 0x80A7B6C4 */ .word	0x060071E0
/* 004290 0x80A7B6C8 */ .word	0x0600B1DC
/* 004291 0x80A7B6CC */ .word	0x060070BC
/* 004292 0x80A7B6D0 */ .word	0x060067F0
/* 004293 0x80A7B6D4 */ .word	0x060063A4
/* 004294 0x80A7B6D8 */ .word	0x06004018
glabel D_80A7B6DC
/* 004295 0x80A7B6DC */ .word	0x02020002
/* 004296 0x80A7B6E0 */ .word	0x00020000
/* 004297 0x80A7B6E4 */ .word	0x00020200
/* 004298 0x80A7B6E8 */ .word	0x00020002
/* 004299 0x80A7B6EC */ .word	0x02000202
/* 004300 0x80A7B6F0 */ .word	0x00020000
glabel D_80A7B6F4
/* 004301 0x80A7B6F4 */ .word	0x015EFFEC
/* 004302 0x80A7B6F8 */ .word	0xF29A0000
glabel D_80A7B6FC
/* 004303 0x80A7B6FC */ .word	0x00000000
/* 004304 0x80A7B700 */ .word	0x00000000
/* 004305 0x80A7B704 */ .word	0x00000000
glabel D_80A7B708
/* 004306 0x80A7B708 */ .word	0x44C80000
/* 004307 0x80A7B70C */ .word	0x00000000
/* 004308 0x80A7B710 */ .word	0x00000000
glabel D_80A7B714
/* 004309 0x80A7B714 */ .word	0x00000000
/* 004310 0x80A7B718 */ .word	0x00000000
/* 004311 0x80A7B71C */ .word	0x00000000
glabel D_80A7B720
/* 004312 0x80A7B720 */ .word	0x44D48000
/* 004313 0x80A7B724 */ .word	0x00000000
/* 004314 0x80A7B728 */ .word	0x00000000
glabel D_80A7B72C
/* 004315 0x80A7B72C */ .word	0x00000000
/* 004316 0x80A7B730 */ .word	0x00000000
/* 004317 0x80A7B734 */ .word	0x00000000
glabel D_80A7B738
/* 004318 0x80A7B738 */ .word	0x00800000
/* 004319 0x80A7B73C */ .word	0x00000000
/* 004320 0x80A7B740 */ .word	0x00000080
/* 004321 0x80A7B744 */ .word	0x00000000
/* 004322 0x80A7B748 */ .word	0x00000000
/* 004323 0x80A7B74C */ .word	0x00800000
/* 004324 0x80A7B750 */ .word	0x00000000
/* 004325 0x80A7B754 */ .word	0x00000080
/* 004326 0x80A7B758 */ .word	0x00000000
/* 004327 0x80A7B75C */ .word	0x00000000
