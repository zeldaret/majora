.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

.section .data

glabel sintable
/* 023904 0x800975E0 */ .word	0x00000032
/* 023905 0x800975E4 */ .word	0x00640096
/* 023906 0x800975E8 */ .word	0x00C900FB
/* 023907 0x800975EC */ .word	0x012D0160
/* 023908 0x800975F0 */ .word	0x019201C4
/* 023909 0x800975F4 */ .word	0x01F70229
/* 023910 0x800975F8 */ .word	0x025B028E
/* 023911 0x800975FC */ .word	0x02C002F2
/* 023912 0x80097600 */ .word	0x03240357
/* 023913 0x80097604 */ .word	0x038903BB
/* 023914 0x80097608 */ .word	0x03EE0420
/* 023915 0x8009760C */ .word	0x04520484
/* 023916 0x80097610 */ .word	0x04B704E9
/* 023917 0x80097614 */ .word	0x051B054E
/* 023918 0x80097618 */ .word	0x058005B2
/* 023919 0x8009761C */ .word	0x05E40617
/* 023920 0x80097620 */ .word	0x0649067B
/* 023921 0x80097624 */ .word	0x06AD06E0
/* 023922 0x80097628 */ .word	0x07120744
/* 023923 0x8009762C */ .word	0x077607A9
/* 023924 0x80097630 */ .word	0x07DB080D
/* 023925 0x80097634 */ .word	0x083F0871
/* 023926 0x80097638 */ .word	0x08A408D6
/* 023927 0x8009763C */ .word	0x0908093A
/* 023928 0x80097640 */ .word	0x096C099F
/* 023929 0x80097644 */ .word	0x09D10A03
/* 023930 0x80097648 */ .word	0x0A350A67
/* 023931 0x8009764C */ .word	0x0A990ACB
/* 023932 0x80097650 */ .word	0x0AFE0B30
/* 023933 0x80097654 */ .word	0x0B620B94
/* 023934 0x80097658 */ .word	0x0BC60BF8
/* 023935 0x8009765C */ .word	0x0C2A0C5C
/* 023936 0x80097660 */ .word	0x0C8E0CC0
/* 023937 0x80097664 */ .word	0x0CF20D25
/* 023938 0x80097668 */ .word	0x0D570D89
/* 023939 0x8009766C */ .word	0x0DBB0DED
/* 023940 0x80097670 */ .word	0x0E1F0E51
/* 023941 0x80097674 */ .word	0x0E830EB5
/* 023942 0x80097678 */ .word	0x0EE70F19
/* 023943 0x8009767C */ .word	0x0F4B0F7C
/* 023944 0x80097680 */ .word	0x0FAE0FE0
/* 023945 0x80097684 */ .word	0x10121044
/* 023946 0x80097688 */ .word	0x107610A8
/* 023947 0x8009768C */ .word	0x10DA110C
/* 023948 0x80097690 */ .word	0x113E116F
/* 023949 0x80097694 */ .word	0x11A111D3
/* 023950 0x80097698 */ .word	0x12051237
/* 023951 0x8009769C */ .word	0x1269129A
/* 023952 0x800976A0 */ .word	0x12CC12FE
/* 023953 0x800976A4 */ .word	0x13301361
/* 023954 0x800976A8 */ .word	0x139313C5
/* 023955 0x800976AC */ .word	0x13F61428
/* 023956 0x800976B0 */ .word	0x145A148C
/* 023957 0x800976B4 */ .word	0x14BD14EF
/* 023958 0x800976B8 */ .word	0x15201552
/* 023959 0x800976BC */ .word	0x158415B5
/* 023960 0x800976C0 */ .word	0x15E71618
/* 023961 0x800976C4 */ .word	0x164A167B
/* 023962 0x800976C8 */ .word	0x16AD16DF
/* 023963 0x800976CC */ .word	0x17101741
/* 023964 0x800976D0 */ .word	0x177317A4
/* 023965 0x800976D4 */ .word	0x17D61807
/* 023966 0x800976D8 */ .word	0x1839186A
/* 023967 0x800976DC */ .word	0x189B18CD
/* 023968 0x800976E0 */ .word	0x18FE1930
/* 023969 0x800976E4 */ .word	0x19611992
/* 023970 0x800976E8 */ .word	0x19C319F5
/* 023971 0x800976EC */ .word	0x1A261A57
/* 023972 0x800976F0 */ .word	0x1A881ABA
/* 023973 0x800976F4 */ .word	0x1AEB1B1C
/* 023974 0x800976F8 */ .word	0x1B4D1B7E
/* 023975 0x800976FC */ .word	0x1BAF1BE1
/* 023976 0x80097700 */ .word	0x1C121C43
/* 023977 0x80097704 */ .word	0x1C741CA5
/* 023978 0x80097708 */ .word	0x1CD61D07
/* 023979 0x8009770C */ .word	0x1D381D69
/* 023980 0x80097710 */ .word	0x1D9A1DCB
/* 023981 0x80097714 */ .word	0x1DFC1E2D
/* 023982 0x80097718 */ .word	0x1E5D1E8E
/* 023983 0x8009771C */ .word	0x1EBF1EF0
/* 023984 0x80097720 */ .word	0x1F211F52
/* 023985 0x80097724 */ .word	0x1F821FB3
/* 023986 0x80097728 */ .word	0x1FE42015
/* 023987 0x8009772C */ .word	0x20452076
/* 023988 0x80097730 */ .word	0x20A720D7
/* 023989 0x80097734 */ .word	0x21082139
/* 023990 0x80097738 */ .word	0x2169219A
/* 023991 0x8009773C */ .word	0x21CA21FB
/* 023992 0x80097740 */ .word	0x222B225C
/* 023993 0x80097744 */ .word	0x228C22BD
/* 023994 0x80097748 */ .word	0x22ED231D
/* 023995 0x8009774C */ .word	0x234E237E
/* 023996 0x80097750 */ .word	0x23AE23DF
/* 023997 0x80097754 */ .word	0x240F243F
/* 023998 0x80097758 */ .word	0x247024A0
/* 023999 0x8009775C */ .word	0x24D02500
/* 024000 0x80097760 */ .word	0x25302560
/* 024001 0x80097764 */ .word	0x259125C1
/* 024002 0x80097768 */ .word	0x25F12621
/* 024003 0x8009776C */ .word	0x26512681
/* 024004 0x80097770 */ .word	0x26B126E1
/* 024005 0x80097774 */ .word	0x27112740
/* 024006 0x80097778 */ .word	0x277027A0
/* 024007 0x8009777C */ .word	0x27D02800
/* 024008 0x80097780 */ .word	0x2830285F
/* 024009 0x80097784 */ .word	0x288F28BF
/* 024010 0x80097788 */ .word	0x28EE291E
/* 024011 0x8009778C */ .word	0x294E297D
/* 024012 0x80097790 */ .word	0x29AD29DD
/* 024013 0x80097794 */ .word	0x2A0C2A3C
/* 024014 0x80097798 */ .word	0x2A6B2A9B
/* 024015 0x8009779C */ .word	0x2ACA2AF9
/* 024016 0x800977A0 */ .word	0x2B292B58
/* 024017 0x800977A4 */ .word	0x2B872BB7
/* 024018 0x800977A8 */ .word	0x2BE62C15
/* 024019 0x800977AC */ .word	0x2C442C74
/* 024020 0x800977B0 */ .word	0x2CA32CD2
/* 024021 0x800977B4 */ .word	0x2D012D30
/* 024022 0x800977B8 */ .word	0x2D5F2D8E
/* 024023 0x800977BC */ .word	0x2DBD2DEC
/* 024024 0x800977C0 */ .word	0x2E1B2E4A
/* 024025 0x800977C4 */ .word	0x2E792EA8
/* 024026 0x800977C8 */ .word	0x2ED72F06
/* 024027 0x800977CC */ .word	0x2F342F63
/* 024028 0x800977D0 */ .word	0x2F922FC0
/* 024029 0x800977D4 */ .word	0x2FEF301E
/* 024030 0x800977D8 */ .word	0x304C307B
/* 024031 0x800977DC */ .word	0x30A930D8
/* 024032 0x800977E0 */ .word	0x31073135
/* 024033 0x800977E4 */ .word	0x31633192
/* 024034 0x800977E8 */ .word	0x31C031EF
/* 024035 0x800977EC */ .word	0x321D324B
/* 024036 0x800977F0 */ .word	0x327932A8
/* 024037 0x800977F4 */ .word	0x32D63304
/* 024038 0x800977F8 */ .word	0x33323360
/* 024039 0x800977FC */ .word	0x338E33BC
/* 024040 0x80097800 */ .word	0x33EA3418
/* 024041 0x80097804 */ .word	0x34463474
/* 024042 0x80097808 */ .word	0x34A234D0
/* 024043 0x8009780C */ .word	0x34FE352B
/* 024044 0x80097810 */ .word	0x35593587
/* 024045 0x80097814 */ .word	0x35B535E2
/* 024046 0x80097818 */ .word	0x3610363D
/* 024047 0x8009781C */ .word	0x366B3698
/* 024048 0x80097820 */ .word	0x36C636F3
/* 024049 0x80097824 */ .word	0x3721374E
/* 024050 0x80097828 */ .word	0x377C37A9
/* 024051 0x8009782C */ .word	0x37D63803
/* 024052 0x80097830 */ .word	0x3831385E
/* 024053 0x80097834 */ .word	0x388B38B8
/* 024054 0x80097838 */ .word	0x38E53912
/* 024055 0x8009783C */ .word	0x393F396C
/* 024056 0x80097840 */ .word	0x399939C6
/* 024057 0x80097844 */ .word	0x39F33A20
/* 024058 0x80097848 */ .word	0x3A4D3A79
/* 024059 0x8009784C */ .word	0x3AA63AD3
/* 024060 0x80097850 */ .word	0x3B003B2C
/* 024061 0x80097854 */ .word	0x3B593B85
/* 024062 0x80097858 */ .word	0x3BB23BDE
/* 024063 0x8009785C */ .word	0x3C0B3C37
/* 024064 0x80097860 */ .word	0x3C643C90
/* 024065 0x80097864 */ .word	0x3CBC3CE9
/* 024066 0x80097868 */ .word	0x3D153D41
/* 024067 0x8009786C */ .word	0x3D6D3D99
/* 024068 0x80097870 */ .word	0x3DC53DF1
/* 024069 0x80097874 */ .word	0x3E1D3E49
/* 024070 0x80097878 */ .word	0x3E753EA1
/* 024071 0x8009787C */ .word	0x3ECD3EF9
/* 024072 0x80097880 */ .word	0x3F253F50
/* 024073 0x80097884 */ .word	0x3F7C3FA8
/* 024074 0x80097888 */ .word	0x3FD33FFF
/* 024075 0x8009788C */ .word	0x402B4056
/* 024076 0x80097890 */ .word	0x408240AD
/* 024077 0x80097894 */ .word	0x40D84104
/* 024078 0x80097898 */ .word	0x412F415A
/* 024079 0x8009789C */ .word	0x418641B1
/* 024080 0x800978A0 */ .word	0x41DC4207
/* 024081 0x800978A4 */ .word	0x4232425D
/* 024082 0x800978A8 */ .word	0x428842B3
/* 024083 0x800978AC */ .word	0x42DE4309
/* 024084 0x800978B0 */ .word	0x4334435F
/* 024085 0x800978B4 */ .word	0x438943B4
/* 024086 0x800978B8 */ .word	0x43DF4409
/* 024087 0x800978BC */ .word	0x4434445F
/* 024088 0x800978C0 */ .word	0x448944B4
/* 024089 0x800978C4 */ .word	0x44DE4508
/* 024090 0x800978C8 */ .word	0x4533455D
/* 024091 0x800978CC */ .word	0x458745B1
/* 024092 0x800978D0 */ .word	0x45DC4606
/* 024093 0x800978D4 */ .word	0x4630465A
/* 024094 0x800978D8 */ .word	0x468446AE
/* 024095 0x800978DC */ .word	0x46D84702
/* 024096 0x800978E0 */ .word	0x472C4755
/* 024097 0x800978E4 */ .word	0x477F47A9
/* 024098 0x800978E8 */ .word	0x47D247FC
/* 024099 0x800978EC */ .word	0x4826484F
/* 024100 0x800978F0 */ .word	0x487948A2
/* 024101 0x800978F4 */ .word	0x48CC48F5
/* 024102 0x800978F8 */ .word	0x491E4948
/* 024103 0x800978FC */ .word	0x4971499A
/* 024104 0x80097900 */ .word	0x49C349EC
/* 024105 0x80097904 */ .word	0x4A154A3E
/* 024106 0x80097908 */ .word	0x4A674A90
/* 024107 0x8009790C */ .word	0x4AB94AE2
/* 024108 0x80097910 */ .word	0x4B0B4B33
/* 024109 0x80097914 */ .word	0x4B5C4B85
/* 024110 0x80097918 */ .word	0x4BAD4BD6
/* 024111 0x8009791C */ .word	0x4BFE4C27
/* 024112 0x80097920 */ .word	0x4C4F4C78
/* 024113 0x80097924 */ .word	0x4CA04CC8
/* 024114 0x80097928 */ .word	0x4CF04D19
/* 024115 0x8009792C */ .word	0x4D414D69
/* 024116 0x80097930 */ .word	0x4D914DB9
/* 024117 0x80097934 */ .word	0x4DE14E09
/* 024118 0x80097938 */ .word	0x4E314E58
/* 024119 0x8009793C */ .word	0x4E804EA8
/* 024120 0x80097940 */ .word	0x4ED04EF7
/* 024121 0x80097944 */ .word	0x4F1F4F46
/* 024122 0x80097948 */ .word	0x4F6E4F95
/* 024123 0x8009794C */ .word	0x4FBD4FE4
/* 024124 0x80097950 */ .word	0x500B5032
/* 024125 0x80097954 */ .word	0x505A5081
/* 024126 0x80097958 */ .word	0x50A850CF
/* 024127 0x8009795C */ .word	0x50F6511D
/* 024128 0x80097960 */ .word	0x5144516B
/* 024129 0x80097964 */ .word	0x519151B8
/* 024130 0x80097968 */ .word	0x51DF5205
/* 024131 0x8009796C */ .word	0x522C5253
/* 024132 0x80097970 */ .word	0x527952A0
/* 024133 0x80097974 */ .word	0x52C652EC
/* 024134 0x80097978 */ .word	0x53135339
/* 024135 0x8009797C */ .word	0x535F5385
/* 024136 0x80097980 */ .word	0x53AB53D1
/* 024137 0x80097984 */ .word	0x53F7541D
/* 024138 0x80097988 */ .word	0x54435469
/* 024139 0x8009798C */ .word	0x548F54B5
/* 024140 0x80097990 */ .word	0x54DA5500
/* 024141 0x80097994 */ .word	0x5525554B
/* 024142 0x80097998 */ .word	0x55715596
/* 024143 0x8009799C */ .word	0x55BB55E1
/* 024144 0x800979A0 */ .word	0x5606562B
/* 024145 0x800979A4 */ .word	0x56505675
/* 024146 0x800979A8 */ .word	0x569B56C0
/* 024147 0x800979AC */ .word	0x56E55709
/* 024148 0x800979B0 */ .word	0x572E5753
/* 024149 0x800979B4 */ .word	0x5778579D
/* 024150 0x800979B8 */ .word	0x57C157E6
/* 024151 0x800979BC */ .word	0x580A582F
/* 024152 0x800979C0 */ .word	0x58535878
/* 024153 0x800979C4 */ .word	0x589C58C0
/* 024154 0x800979C8 */ .word	0x58E55909
/* 024155 0x800979CC */ .word	0x592D5951
/* 024156 0x800979D0 */ .word	0x59755999
/* 024157 0x800979D4 */ .word	0x59BD59E1
/* 024158 0x800979D8 */ .word	0x5A045A28
/* 024159 0x800979DC */ .word	0x5A4C5A6F
/* 024160 0x800979E0 */ .word	0x5A935AB7
/* 024161 0x800979E4 */ .word	0x5ADA5AFD
/* 024162 0x800979E8 */ .word	0x5B215B44
/* 024163 0x800979EC */ .word	0x5B675B8B
/* 024164 0x800979F0 */ .word	0x5BAE5BD1
/* 024165 0x800979F4 */ .word	0x5BF45C17
/* 024166 0x800979F8 */ .word	0x5C3A5C5D
/* 024167 0x800979FC */ .word	0x5C7F5CA2
/* 024168 0x80097A00 */ .word	0x5CC55CE7
/* 024169 0x80097A04 */ .word	0x5D0A5D2D
/* 024170 0x80097A08 */ .word	0x5D4F5D71
/* 024171 0x80097A0C */ .word	0x5D945DB6
/* 024172 0x80097A10 */ .word	0x5DD85DFA
/* 024173 0x80097A14 */ .word	0x5E1D5E3F
/* 024174 0x80097A18 */ .word	0x5E615E83
/* 024175 0x80097A1C */ .word	0x5EA55EC6
/* 024176 0x80097A20 */ .word	0x5EE85F0A
/* 024177 0x80097A24 */ .word	0x5F2C5F4D
/* 024178 0x80097A28 */ .word	0x5F6F5F90
/* 024179 0x80097A2C */ .word	0x5FB25FD3
/* 024180 0x80097A30 */ .word	0x5FF46016
/* 024181 0x80097A34 */ .word	0x60376058
/* 024182 0x80097A38 */ .word	0x6079609A
/* 024183 0x80097A3C */ .word	0x60BB60DC
/* 024184 0x80097A40 */ .word	0x60FD611E
/* 024185 0x80097A44 */ .word	0x613E615F
/* 024186 0x80097A48 */ .word	0x618061A0
/* 024187 0x80097A4C */ .word	0x61C161E1
/* 024188 0x80097A50 */ .word	0x62026222
/* 024189 0x80097A54 */ .word	0x62426263
/* 024190 0x80097A58 */ .word	0x628362A3
/* 024191 0x80097A5C */ .word	0x62C362E3
/* 024192 0x80097A60 */ .word	0x63036323
/* 024193 0x80097A64 */ .word	0x63426362
/* 024194 0x80097A68 */ .word	0x638263A1
/* 024195 0x80097A6C */ .word	0x63C163E0
/* 024196 0x80097A70 */ .word	0x6400641F
/* 024197 0x80097A74 */ .word	0x643F645E
/* 024198 0x80097A78 */ .word	0x647D649C
/* 024199 0x80097A7C */ .word	0x64BB64DA
/* 024200 0x80097A80 */ .word	0x64F96518
/* 024201 0x80097A84 */ .word	0x65376556
/* 024202 0x80097A88 */ .word	0x65746593
/* 024203 0x80097A8C */ .word	0x65B265D0
/* 024204 0x80097A90 */ .word	0x65EF660D
/* 024205 0x80097A94 */ .word	0x662B664A
/* 024206 0x80097A98 */ .word	0x66686686
/* 024207 0x80097A9C */ .word	0x66A466C2
/* 024208 0x80097AA0 */ .word	0x66E066FE
/* 024209 0x80097AA4 */ .word	0x671C673A
/* 024210 0x80097AA8 */ .word	0x67576775
/* 024211 0x80097AAC */ .word	0x679267B0
/* 024212 0x80097AB0 */ .word	0x67CD67EB
/* 024213 0x80097AB4 */ .word	0x68086825
/* 024214 0x80097AB8 */ .word	0x68436860
/* 024215 0x80097ABC */ .word	0x687D689A
/* 024216 0x80097AC0 */ .word	0x68B768D4
/* 024217 0x80097AC4 */ .word	0x68F1690D
/* 024218 0x80097AC8 */ .word	0x692A6947
/* 024219 0x80097ACC */ .word	0x69636980
/* 024220 0x80097AD0 */ .word	0x699C69B9
/* 024221 0x80097AD4 */ .word	0x69D569F1
/* 024222 0x80097AD8 */ .word	0x6A0E6A2A
/* 024223 0x80097ADC */ .word	0x6A466A62
/* 024224 0x80097AE0 */ .word	0x6A7E6A9A
/* 024225 0x80097AE4 */ .word	0x6AB56AD1
/* 024226 0x80097AE8 */ .word	0x6AED6B08
/* 024227 0x80097AEC */ .word	0x6B246B40
/* 024228 0x80097AF0 */ .word	0x6B5B6B76
/* 024229 0x80097AF4 */ .word	0x6B926BAD
/* 024230 0x80097AF8 */ .word	0x6BC86BE3
/* 024231 0x80097AFC */ .word	0x6BFE6C19
/* 024232 0x80097B00 */ .word	0x6C346C4F
/* 024233 0x80097B04 */ .word	0x6C6A6C84
/* 024234 0x80097B08 */ .word	0x6C9F6CBA
/* 024235 0x80097B0C */ .word	0x6CD46CEF
/* 024236 0x80097B10 */ .word	0x6D096D23
/* 024237 0x80097B14 */ .word	0x6D3E6D58
/* 024238 0x80097B18 */ .word	0x6D726D8C
/* 024239 0x80097B1C */ .word	0x6DA66DC0
/* 024240 0x80097B20 */ .word	0x6DDA6DF3
/* 024241 0x80097B24 */ .word	0x6E0D6E27
/* 024242 0x80097B28 */ .word	0x6E406E5A
/* 024243 0x80097B2C */ .word	0x6E736E8D
/* 024244 0x80097B30 */ .word	0x6EA66EBF
/* 024245 0x80097B34 */ .word	0x6ED96EF2
/* 024246 0x80097B38 */ .word	0x6F0B6F24
/* 024247 0x80097B3C */ .word	0x6F3D6F55
/* 024248 0x80097B40 */ .word	0x6F6E6F87
/* 024249 0x80097B44 */ .word	0x6FA06FB8
/* 024250 0x80097B48 */ .word	0x6FD16FE9
/* 024251 0x80097B4C */ .word	0x7002701A
/* 024252 0x80097B50 */ .word	0x7032704A
/* 024253 0x80097B54 */ .word	0x7062707A
/* 024254 0x80097B58 */ .word	0x709270AA
/* 024255 0x80097B5C */ .word	0x70C270DA
/* 024256 0x80097B60 */ .word	0x70F27109
/* 024257 0x80097B64 */ .word	0x71217138
/* 024258 0x80097B68 */ .word	0x71507167
/* 024259 0x80097B6C */ .word	0x717E7196
/* 024260 0x80097B70 */ .word	0x71AD71C4
/* 024261 0x80097B74 */ .word	0x71DB71F2
/* 024262 0x80097B78 */ .word	0x72097220
/* 024263 0x80097B7C */ .word	0x7236724D
/* 024264 0x80097B80 */ .word	0x7264727A
/* 024265 0x80097B84 */ .word	0x729172A7
/* 024266 0x80097B88 */ .word	0x72BD72D4
/* 024267 0x80097B8C */ .word	0x72EA7300
/* 024268 0x80097B90 */ .word	0x7316732C
/* 024269 0x80097B94 */ .word	0x73427358
/* 024270 0x80097B98 */ .word	0x736E7383
/* 024271 0x80097B9C */ .word	0x739973AE
/* 024272 0x80097BA0 */ .word	0x73C473D9
/* 024273 0x80097BA4 */ .word	0x73EF7404
/* 024274 0x80097BA8 */ .word	0x7419742E
/* 024275 0x80097BAC */ .word	0x74437458
/* 024276 0x80097BB0 */ .word	0x746D7482
/* 024277 0x80097BB4 */ .word	0x749774AC
/* 024278 0x80097BB8 */ .word	0x74C074D5
/* 024279 0x80097BBC */ .word	0x74EA74FE
/* 024280 0x80097BC0 */ .word	0x75127527
/* 024281 0x80097BC4 */ .word	0x753B754F
/* 024282 0x80097BC8 */ .word	0x75637577
/* 024283 0x80097BCC */ .word	0x758B759F
/* 024284 0x80097BD0 */ .word	0x75B375C7
/* 024285 0x80097BD4 */ .word	0x75DA75EE
/* 024286 0x80097BD8 */ .word	0x76017615
/* 024287 0x80097BDC */ .word	0x7628763B
/* 024288 0x80097BE0 */ .word	0x764F7662
/* 024289 0x80097BE4 */ .word	0x76757688
/* 024290 0x80097BE8 */ .word	0x769B76AE
/* 024291 0x80097BEC */ .word	0x76C176D3
/* 024292 0x80097BF0 */ .word	0x76E676F9
/* 024293 0x80097BF4 */ .word	0x770B771E
/* 024294 0x80097BF8 */ .word	0x77307742
/* 024295 0x80097BFC */ .word	0x77547767
/* 024296 0x80097C00 */ .word	0x7779778B
/* 024297 0x80097C04 */ .word	0x779D77AF
/* 024298 0x80097C08 */ .word	0x77C077D2
/* 024299 0x80097C0C */ .word	0x77E477F5
/* 024300 0x80097C10 */ .word	0x78077818
/* 024301 0x80097C14 */ .word	0x782A783B
/* 024302 0x80097C18 */ .word	0x784C785D
/* 024303 0x80097C1C */ .word	0x786E787F
/* 024304 0x80097C20 */ .word	0x789078A1
/* 024305 0x80097C24 */ .word	0x78B278C3
/* 024306 0x80097C28 */ .word	0x78D378E4
/* 024307 0x80097C2C */ .word	0x78F47905
/* 024308 0x80097C30 */ .word	0x79157925
/* 024309 0x80097C34 */ .word	0x79367946
/* 024310 0x80097C38 */ .word	0x79567966
/* 024311 0x80097C3C */ .word	0x79767985
/* 024312 0x80097C40 */ .word	0x799579A5
/* 024313 0x80097C44 */ .word	0x79B579C4
/* 024314 0x80097C48 */ .word	0x79D479E3
/* 024315 0x80097C4C */ .word	0x79F27A02
/* 024316 0x80097C50 */ .word	0x7A117A20
/* 024317 0x80097C54 */ .word	0x7A2F7A3E
/* 024318 0x80097C58 */ .word	0x7A4D7A5B
/* 024319 0x80097C5C */ .word	0x7A6A7A79
/* 024320 0x80097C60 */ .word	0x7A877A96
/* 024321 0x80097C64 */ .word	0x7AA47AB3
/* 024322 0x80097C68 */ .word	0x7AC17ACF
/* 024323 0x80097C6C */ .word	0x7ADD7AEB
/* 024324 0x80097C70 */ .word	0x7AF97B07
/* 024325 0x80097C74 */ .word	0x7B157B23
/* 024326 0x80097C78 */ .word	0x7B317B3E
/* 024327 0x80097C7C */ .word	0x7B4C7B59
/* 024328 0x80097C80 */ .word	0x7B677B74
/* 024329 0x80097C84 */ .word	0x7B817B8E
/* 024330 0x80097C88 */ .word	0x7B9B7BA8
/* 024331 0x80097C8C */ .word	0x7BB57BC2
/* 024332 0x80097C90 */ .word	0x7BCF7BDC
/* 024333 0x80097C94 */ .word	0x7BE87BF5
/* 024334 0x80097C98 */ .word	0x7C027C0E
/* 024335 0x80097C9C */ .word	0x7C1A7C27
/* 024336 0x80097CA0 */ .word	0x7C337C3F
/* 024337 0x80097CA4 */ .word	0x7C4B7C57
/* 024338 0x80097CA8 */ .word	0x7C637C6F
/* 024339 0x80097CAC */ .word	0x7C7A7C86
/* 024340 0x80097CB0 */ .word	0x7C927C9D
/* 024341 0x80097CB4 */ .word	0x7CA97CB4
/* 024342 0x80097CB8 */ .word	0x7CBF7CCB
/* 024343 0x80097CBC */ .word	0x7CD67CE1
/* 024344 0x80097CC0 */ .word	0x7CEC7CF7
/* 024345 0x80097CC4 */ .word	0x7D027D0C
/* 024346 0x80097CC8 */ .word	0x7D177D22
/* 024347 0x80097CCC */ .word	0x7D2C7D37
/* 024348 0x80097CD0 */ .word	0x7D417D4B
/* 024349 0x80097CD4 */ .word	0x7D567D60
/* 024350 0x80097CD8 */ .word	0x7D6A7D74
/* 024351 0x80097CDC */ .word	0x7D7E7D88
/* 024352 0x80097CE0 */ .word	0x7D917D9B
/* 024353 0x80097CE4 */ .word	0x7DA57DAE
/* 024354 0x80097CE8 */ .word	0x7DB87DC1
/* 024355 0x80097CEC */ .word	0x7DCB7DD4
/* 024356 0x80097CF0 */ .word	0x7DDD7DE6
/* 024357 0x80097CF4 */ .word	0x7DEF7DF8
/* 024358 0x80097CF8 */ .word	0x7E017E0A
/* 024359 0x80097CFC */ .word	0x7E137E1B
/* 024360 0x80097D00 */ .word	0x7E247E2C
/* 024361 0x80097D04 */ .word	0x7E357E3D
/* 024362 0x80097D08 */ .word	0x7E457E4D
/* 024363 0x80097D0C */ .word	0x7E567E5E
/* 024364 0x80097D10 */ .word	0x7E667E6D
/* 024365 0x80097D14 */ .word	0x7E757E7D
/* 024366 0x80097D18 */ .word	0x7E857E8C
/* 024367 0x80097D1C */ .word	0x7E947E9B
/* 024368 0x80097D20 */ .word	0x7EA37EAA
/* 024369 0x80097D24 */ .word	0x7EB17EB8
/* 024370 0x80097D28 */ .word	0x7EBF7EC6
/* 024371 0x80097D2C */ .word	0x7ECD7ED4
/* 024372 0x80097D30 */ .word	0x7EDB7EE1
/* 024373 0x80097D34 */ .word	0x7EE87EEE
/* 024374 0x80097D38 */ .word	0x7EF57EFB
/* 024375 0x80097D3C */ .word	0x7F017F08
/* 024376 0x80097D40 */ .word	0x7F0E7F14
/* 024377 0x80097D44 */ .word	0x7F1A7F20
/* 024378 0x80097D48 */ .word	0x7F257F2B
/* 024379 0x80097D4C */ .word	0x7F317F36
/* 024380 0x80097D50 */ .word	0x7F3C7F41
/* 024381 0x80097D54 */ .word	0x7F477F4C
/* 024382 0x80097D58 */ .word	0x7F517F56
/* 024383 0x80097D5C */ .word	0x7F5B7F60
/* 024384 0x80097D60 */ .word	0x7F657F6A
/* 024385 0x80097D64 */ .word	0x7F6F7F74
/* 024386 0x80097D68 */ .word	0x7F787F7D
/* 024387 0x80097D6C */ .word	0x7F817F85
/* 024388 0x80097D70 */ .word	0x7F8A7F8E
/* 024389 0x80097D74 */ .word	0x7F927F96
/* 024390 0x80097D78 */ .word	0x7F9A7F9E
/* 024391 0x80097D7C */ .word	0x7FA27FA6
/* 024392 0x80097D80 */ .word	0x7FA97FAD
/* 024393 0x80097D84 */ .word	0x7FB07FB4
/* 024394 0x80097D88 */ .word	0x7FB77FBA
/* 024395 0x80097D8C */ .word	0x7FBE7FC1
/* 024396 0x80097D90 */ .word	0x7FC47FC7
/* 024397 0x80097D94 */ .word	0x7FCA7FCC
/* 024398 0x80097D98 */ .word	0x7FCF7FD2
/* 024399 0x80097D9C */ .word	0x7FD47FD7
/* 024400 0x80097DA0 */ .word	0x7FD97FDC
/* 024401 0x80097DA4 */ .word	0x7FDE7FE0
/* 024402 0x80097DA8 */ .word	0x7FE27FE4
/* 024403 0x80097DAC */ .word	0x7FE67FE8
/* 024404 0x80097DB0 */ .word	0x7FEA7FEC
/* 024405 0x80097DB4 */ .word	0x7FED7FEF
/* 024406 0x80097DB8 */ .word	0x7FF17FF2
/* 024407 0x80097DBC */ .word	0x7FF37FF5
/* 024408 0x80097DC0 */ .word	0x7FF67FF7
/* 024409 0x80097DC4 */ .word	0x7FF87FF9
/* 024410 0x80097DC8 */ .word	0x7FFA7FFB
/* 024411 0x80097DCC */ .word	0x7FFB7FFC
/* 024412 0x80097DD0 */ .word	0x7FFD7FFD
/* 024413 0x80097DD4 */ .word	0x7FFE7FFE
/* 024414 0x80097DD8 */ .word	0x7FFE7FFE
/* 024415 0x80097DDC */ .word	0x7FFE7FFF
