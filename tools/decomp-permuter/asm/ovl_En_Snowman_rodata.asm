.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .rodata

glabel enSnowmanOverlayInfo
/* 003112 0x80B19BA0 */ .word	0x00002EE0
/* 003113 0x80B19BA4 */ .word	0x00000140
/* 003114 0x80B19BA8 */ .word	0x00000080
/* 003115 0x80B19BAC */ .word	0x00000000
/* 003116 0x80B19BB0 */ .word	0x000000E9
glabel enSnowmanOverlayRelocations
/* 003117 0x80B19BB4 */ .word	0x45000014
/* 003118 0x80B19BB8 */ .word	0x46000018
/* 003119 0x80B19BBC */ .word	0x450000C4
/* 003120 0x80B19BC0 */ .word	0x460000D0
/* 003121 0x80B19BC4 */ .word	0x450000C8
/* 003122 0x80B19BC8 */ .word	0x460000CC
/* 003123 0x80B19BCC */ .word	0x450000DC
/* 003124 0x80B19BD0 */ .word	0x460000E0
/* 003125 0x80B19BD4 */ .word	0x4500022C
/* 003126 0x80B19BD8 */ .word	0x46000240
/* 003127 0x80B19BDC */ .word	0x44000274
/* 003128 0x80B19BE0 */ .word	0x44000284
/* 003129 0x80B19BE4 */ .word	0x4500029C
/* 003130 0x80B19BE8 */ .word	0x460002A8
/* 003131 0x80B19BEC */ .word	0x450002E4
/* 003132 0x80B19BF0 */ .word	0x460002E8
/* 003133 0x80B19BF4 */ .word	0x45000458
/* 003134 0x80B19BF8 */ .word	0x46000460
/* 003135 0x80B19BFC */ .word	0x4500045C
/* 003136 0x80B19C00 */ .word	0x46000464
/* 003137 0x80B19C04 */ .word	0x45000530
/* 003138 0x80B19C08 */ .word	0x46000558
/* 003139 0x80B19C0C */ .word	0x45000534
/* 003140 0x80B19C10 */ .word	0x46000554
/* 003141 0x80B19C14 */ .word	0x4500053C
/* 003142 0x80B19C18 */ .word	0x46000548
/* 003143 0x80B19C1C */ .word	0x45000808
/* 003144 0x80B19C20 */ .word	0x4600081C
/* 003145 0x80B19C24 */ .word	0x450007FC
/* 003146 0x80B19C28 */ .word	0x46000804
/* 003147 0x80B19C2C */ .word	0x45000850
/* 003148 0x80B19C30 */ .word	0x46000860
/* 003149 0x80B19C34 */ .word	0x45000854
/* 003150 0x80B19C38 */ .word	0x4600085C
/* 003151 0x80B19C3C */ .word	0x45000924
/* 003152 0x80B19C40 */ .word	0x4600092C
/* 003153 0x80B19C44 */ .word	0x45000928
/* 003154 0x80B19C48 */ .word	0x46000934
/* 003155 0x80B19C4C */ .word	0x45000A30
/* 003156 0x80B19C50 */ .word	0x46000A38
/* 003157 0x80B19C54 */ .word	0x44000B18
/* 003158 0x80B19C58 */ .word	0x44000B28
/* 003159 0x80B19C5C */ .word	0x44000B38
/* 003160 0x80B19C60 */ .word	0x44000BB4
/* 003161 0x80B19C64 */ .word	0x45000C6C
/* 003162 0x80B19C68 */ .word	0x46000C70
/* 003163 0x80B19C6C */ .word	0x45000D34
/* 003164 0x80B19C70 */ .word	0x46000D38
/* 003165 0x80B19C74 */ .word	0x45000D44
/* 003166 0x80B19C78 */ .word	0x46000D70
/* 003167 0x80B19C7C */ .word	0x44000D84
/* 003168 0x80B19C80 */ .word	0x45000D90
/* 003169 0x80B19C84 */ .word	0x46000D94
/* 003170 0x80B19C88 */ .word	0x45000DE4
/* 003171 0x80B19C8C */ .word	0x46000DE8
/* 003172 0x80B19C90 */ .word	0x44000E4C
/* 003173 0x80B19C94 */ .word	0x44000E90
/* 003174 0x80B19C98 */ .word	0x44000EB4
/* 003175 0x80B19C9C */ .word	0x45000F3C
/* 003176 0x80B19CA0 */ .word	0x46000F40
/* 003177 0x80B19CA4 */ .word	0x4500100C
/* 003178 0x80B19CA8 */ .word	0x4600102C
/* 003179 0x80B19CAC */ .word	0x45000FF8
/* 003180 0x80B19CB0 */ .word	0x46001008
/* 003181 0x80B19CB4 */ .word	0x45000FFC
/* 003182 0x80B19CB8 */ .word	0x46001004
/* 003183 0x80B19CBC */ .word	0x4500112C
/* 003184 0x80B19CC0 */ .word	0x46001150
/* 003185 0x80B19CC4 */ .word	0x45001118
/* 003186 0x80B19CC8 */ .word	0x46001128
/* 003187 0x80B19CCC */ .word	0x45001120
/* 003188 0x80B19CD0 */ .word	0x46001124
/* 003189 0x80B19CD4 */ .word	0x44001180
/* 003190 0x80B19CD8 */ .word	0x45001254
/* 003191 0x80B19CDC */ .word	0x46001258
/* 003192 0x80B19CE0 */ .word	0x440012F0
/* 003193 0x80B19CE4 */ .word	0x44001304
/* 003194 0x80B19CE8 */ .word	0x450013D8
/* 003195 0x80B19CEC */ .word	0x460013E0
/* 003196 0x80B19CF0 */ .word	0x44001434
/* 003197 0x80B19CF4 */ .word	0x440014AC
/* 003198 0x80B19CF8 */ .word	0x450014C4
/* 003199 0x80B19CFC */ .word	0x460014C8
/* 003200 0x80B19D00 */ .word	0x45001500
/* 003201 0x80B19D04 */ .word	0x46001504
/* 003202 0x80B19D08 */ .word	0x4500150C
/* 003203 0x80B19D0C */ .word	0x46001510
/* 003204 0x80B19D10 */ .word	0x45001554
/* 003205 0x80B19D14 */ .word	0x4600155C
/* 003206 0x80B19D18 */ .word	0x44001578
/* 003207 0x80B19D1C */ .word	0x44001588
/* 003208 0x80B19D20 */ .word	0x450015E4
/* 003209 0x80B19D24 */ .word	0x460015F0
/* 003210 0x80B19D28 */ .word	0x45001660
/* 003211 0x80B19D2C */ .word	0x46001664
/* 003212 0x80B19D30 */ .word	0x450016A4
/* 003213 0x80B19D34 */ .word	0x460016AC
/* 003214 0x80B19D38 */ .word	0x440017DC
/* 003215 0x80B19D3C */ .word	0x45001828
/* 003216 0x80B19D40 */ .word	0x4600182C
/* 003217 0x80B19D44 */ .word	0x45001838
/* 003218 0x80B19D48 */ .word	0x4600184C
/* 003219 0x80B19D4C */ .word	0x45001850
/* 003220 0x80B19D50 */ .word	0x46001854
/* 003221 0x80B19D54 */ .word	0x45001884
/* 003222 0x80B19D58 */ .word	0x46001888
/* 003223 0x80B19D5C */ .word	0x45001910
/* 003224 0x80B19D60 */ .word	0x46001918
/* 003225 0x80B19D64 */ .word	0x4500196C
/* 003226 0x80B19D68 */ .word	0x46001970
/* 003227 0x80B19D6C */ .word	0x44001A4C
/* 003228 0x80B19D70 */ .word	0x44001A6C
/* 003229 0x80B19D74 */ .word	0x44001A80
/* 003230 0x80B19D78 */ .word	0x44001A90
/* 003231 0x80B19D7C */ .word	0x44001AA8
/* 003232 0x80B19D80 */ .word	0x44001AD4
/* 003233 0x80B19D84 */ .word	0x44001AE4
/* 003234 0x80B19D88 */ .word	0x45001B04
/* 003235 0x80B19D8C */ .word	0x46001B08
/* 003236 0x80B19D90 */ .word	0x45001CEC
/* 003237 0x80B19D94 */ .word	0x46001CF8
/* 003238 0x80B19D98 */ .word	0x45001CE0
/* 003239 0x80B19D9C */ .word	0x46001CE8
/* 003240 0x80B19DA0 */ .word	0x45001D30
/* 003241 0x80B19DA4 */ .word	0x46001D40
/* 003242 0x80B19DA8 */ .word	0x45001D34
/* 003243 0x80B19DAC */ .word	0x46001D3C
/* 003244 0x80B19DB0 */ .word	0x44001DA8
/* 003245 0x80B19DB4 */ .word	0x45001E64
/* 003246 0x80B19DB8 */ .word	0x46001E68
/* 003247 0x80B19DBC */ .word	0x44001E8C
/* 003248 0x80B19DC0 */ .word	0x44001E94
/* 003249 0x80B19DC4 */ .word	0x45001EA4
/* 003250 0x80B19DC8 */ .word	0x46001EA8
/* 003251 0x80B19DCC */ .word	0x45001EE0
/* 003252 0x80B19DD0 */ .word	0x46001EE4
/* 003253 0x80B19DD4 */ .word	0x44002014
/* 003254 0x80B19DD8 */ .word	0x45002058
/* 003255 0x80B19DDC */ .word	0x4600205C
/* 003256 0x80B19DE0 */ .word	0x450020FC
/* 003257 0x80B19DE4 */ .word	0x46002108
/* 003258 0x80B19DE8 */ .word	0x4500211C
/* 003259 0x80B19DEC */ .word	0x46002120
/* 003260 0x80B19DF0 */ .word	0x4500212C
/* 003261 0x80B19DF4 */ .word	0x46002130
/* 003262 0x80B19DF8 */ .word	0x45002140
/* 003263 0x80B19DFC */ .word	0x46002144
/* 003264 0x80B19E00 */ .word	0x44002164
/* 003265 0x80B19E04 */ .word	0x44002234
/* 003266 0x80B19E08 */ .word	0x44002244
/* 003267 0x80B19E0C */ .word	0x44002294
/* 003268 0x80B19E10 */ .word	0x440022A4
/* 003269 0x80B19E14 */ .word	0x440022C4
/* 003270 0x80B19E18 */ .word	0x440022E0
/* 003271 0x80B19E1C */ .word	0x45002318
/* 003272 0x80B19E20 */ .word	0x46002330
/* 003273 0x80B19E24 */ .word	0x450023A4
/* 003274 0x80B19E28 */ .word	0x460023AC
/* 003275 0x80B19E2C */ .word	0x440023C4
/* 003276 0x80B19E30 */ .word	0x450023B0
/* 003277 0x80B19E34 */ .word	0x460023D4
/* 003278 0x80B19E38 */ .word	0x4400242C
/* 003279 0x80B19E3C */ .word	0x440024C0
/* 003280 0x80B19E40 */ .word	0x450024D4
/* 003281 0x80B19E44 */ .word	0x460024D8
/* 003282 0x80B19E48 */ .word	0x450024E0
/* 003283 0x80B19E4C */ .word	0x460024E4
/* 003284 0x80B19E50 */ .word	0x440024F4
/* 003285 0x80B19E54 */ .word	0x44002534
/* 003286 0x80B19E58 */ .word	0x45002564
/* 003287 0x80B19E5C */ .word	0x46002568
/* 003288 0x80B19E60 */ .word	0x44002590
/* 003289 0x80B19E64 */ .word	0x440025C0
/* 003290 0x80B19E68 */ .word	0x440025C8
/* 003291 0x80B19E6C */ .word	0x440025F0
/* 003292 0x80B19E70 */ .word	0x45002614
/* 003293 0x80B19E74 */ .word	0x46002618
/* 003294 0x80B19E78 */ .word	0x450026A4
/* 003295 0x80B19E7C */ .word	0x460026A8
/* 003296 0x80B19E80 */ .word	0x440026C4
/* 003297 0x80B19E84 */ .word	0x450026E4
/* 003298 0x80B19E88 */ .word	0x460026E8
/* 003299 0x80B19E8C */ .word	0x45002714
/* 003300 0x80B19E90 */ .word	0x46002718
/* 003301 0x80B19E94 */ .word	0x45002720
/* 003302 0x80B19E98 */ .word	0x46002724
/* 003303 0x80B19E9C */ .word	0x45002728
/* 003304 0x80B19EA0 */ .word	0x4600272C
/* 003305 0x80B19EA4 */ .word	0x450027B8
/* 003306 0x80B19EA8 */ .word	0x460027BC
/* 003307 0x80B19EAC */ .word	0x450027C4
/* 003308 0x80B19EB0 */ .word	0x460027C8
/* 003309 0x80B19EB4 */ .word	0x450027F4
/* 003310 0x80B19EB8 */ .word	0x460027F8
/* 003311 0x80B19EBC */ .word	0x4500289C
/* 003312 0x80B19EC0 */ .word	0x460028A0
/* 003313 0x80B19EC4 */ .word	0x4500291C
/* 003314 0x80B19EC8 */ .word	0x46002920
/* 003315 0x80B19ECC */ .word	0x45002930
/* 003316 0x80B19ED0 */ .word	0x46002934
/* 003317 0x80B19ED4 */ .word	0x45002A28
/* 003318 0x80B19ED8 */ .word	0x46002A3C
/* 003319 0x80B19EDC */ .word	0x45002A2C
/* 003320 0x80B19EE0 */ .word	0x46002A38
/* 003321 0x80B19EE4 */ .word	0x45002A9C
/* 003322 0x80B19EE8 */ .word	0x46002AAC
/* 003323 0x80B19EEC */ .word	0x45002AA0
/* 003324 0x80B19EF0 */ .word	0x46002AA8
/* 003325 0x80B19EF4 */ .word	0x44002B00
/* 003326 0x80B19EF8 */ .word	0x45002B64
/* 003327 0x80B19EFC */ .word	0x46002B68
/* 003328 0x80B19F00 */ .word	0x45002C3C
/* 003329 0x80B19F04 */ .word	0x46002C40
/* 003330 0x80B19F08 */ .word	0x45002C68
/* 003331 0x80B19F0C */ .word	0x46002C74
/* 003332 0x80B19F10 */ .word	0x45002C6C
/* 003333 0x80B19F14 */ .word	0x46002C70
/* 003334 0x80B19F18 */ .word	0x45002CB8
/* 003335 0x80B19F1C */ .word	0x46002CBC
/* 003336 0x80B19F20 */ .word	0x45002D18
/* 003337 0x80B19F24 */ .word	0x46002D24
/* 003338 0x80B19F28 */ .word	0x45002D30
/* 003339 0x80B19F2C */ .word	0x46002D34
/* 003340 0x80B19F30 */ .word	0x45002D70
/* 003341 0x80B19F34 */ .word	0x46002D80
/* 003342 0x80B19F38 */ .word	0x45002DDC
/* 003343 0x80B19F3C */ .word	0x46002DE0
/* 003344 0x80B19F40 */ .word	0x45002EAC
/* 003345 0x80B19F44 */ .word	0x46002EC0
/* 003346 0x80B19F48 */ .word	0x82000010
/* 003347 0x80B19F4C */ .word	0x82000014
/* 003348 0x80B19F50 */ .word	0x82000018
/* 003349 0x80B19F54 */ .word	0x8200001C
/* 003350 0x80B19F58 */ .word	0x00000000
glabel enSnowmanOverlayInfoOffset
/* 003351 0x80B19F5C */ .word	0x000003C0
