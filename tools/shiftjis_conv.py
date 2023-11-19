#!/usr/bin/env python3
import sys

# Converts a file with UTF-8 Japanese glyphs in char literals,
#  into one that uses u16 constants

# Follows the layout in the manual page for easier cross reference
sjis_table = {
    "ー": 0x815B, "ぜ": 0x82BA, "へ": 0x82D6, "ァ": 0x8340, "ソ": 0x835C, "ペ": 0x8379,
    "ぁ": 0x829F, "そ": 0x82BB, "べ": 0x82D7, "ア": 0x8341, "ゾ": 0x835D, "ホ": 0x837A,
    "あ": 0x82A0, "ぞ": 0x82BC, "ぺ": 0x82D8, "ィ": 0x8342, "タ": 0x835E, "ボ": 0x837B,
    "ぃ": 0x82A1, "た": 0x82BD, "ほ": 0x82D9, "イ": 0x8343, "ダ": 0x835F, "ポ": 0x837C,
    "い": 0x82A2, "だ": 0x82BE, "ぼ": 0x82DA, "ゥ": 0x8344, "チ": 0x8360, "マ": 0x837D,
    "ぅ": 0x82A3, "ち": 0x82BF, "ぽ": 0x82DB, "ウ": 0x8345, "ヂ": 0x8361, "ミ": 0x837E,
    "う": 0x82A4, "ぢ": 0x82C0, "ま": 0x82DC, "ェ": 0x8346, "ッ": 0x8362, "ム": 0x8380,
    "ぇ": 0x82A5, "っ": 0x82C1, "み": 0x82DD, "エ": 0x8347, "ツ": 0x8363, "メ": 0x8381,
    "え": 0x82A6, "つ": 0x82C2, "む": 0x82DE, "ォ": 0x8348, "ヅ": 0x8364, "モ": 0x8382,
    "ぉ": 0x82A7, "づ": 0x82C3, "め": 0x82DF, "オ": 0x8349, "テ": 0x8365, "ャ": 0x8383,
    "お": 0x82A8, "て": 0x82C4, "も": 0x82E0, "カ": 0x834A, "デ": 0x8366, "ヤ": 0x8384,
    "か": 0x82A9, "で": 0x82C5, "ゃ": 0x82E1, "ガ": 0x834B, "ト": 0x8367, "ュ": 0x8385,
    "が": 0x82AA, "と": 0x82C6, "や": 0x82E2, "キ": 0x834C, "ド": 0x8368, "ユ": 0x8386,
    "き": 0x82AB, "ど": 0x82C7, "ゅ": 0x82E3, "ギ": 0x834D, "ナ": 0x8369, "ョ": 0x8387,
    "ぎ": 0x82AC, "な": 0x82C8, "ゆ": 0x82E4, "ク": 0x834E, "ニ": 0x836A, "ヨ": 0x8388,
    "く": 0x82AD, "に": 0x82C9, "ょ": 0x82E5, "グ": 0x834F, "ヌ": 0x836B, "ラ": 0x8389,
    "ぐ": 0x82AE, "ぬ": 0x82CA, "よ": 0x82E6, "ケ": 0x8350, "ネ": 0x836C, "リ": 0x838A,
    "け": 0x82AF, "ね": 0x82CB, "ら": 0x82E7, "ゲ": 0x8351, "ノ": 0x836D, "ル": 0x838B,
    "げ": 0x82B0, "の": 0x82CC, "り": 0x82E8, "コ": 0x8352, "ハ": 0x836E, "レ": 0x838C,
    "こ": 0x82B1, "は": 0x82CD, "る": 0x82E9, "ゴ": 0x8353, "バ": 0x836F, "ロ": 0x838D,
    "ご": 0x82B2, "ば": 0x82CE, "れ": 0x82EA, "サ": 0x8354, "パ": 0x8370, "ヮ": 0x838E,
    "さ": 0x82B3, "ぱ": 0x82CF, "ろ": 0x82EB, "ザ": 0x8355, "ヒ": 0x8371, "ワ": 0x838F,
    "ざ": 0x82B4, "ひ": 0x82D0, "ゎ": 0x82EC, "シ": 0x8356, "ビ": 0x8372, "ヰ": 0x8390,
    "し": 0x82B5, "び": 0x82D1, "わ": 0x82ED, "ジ": 0x8357, "ピ": 0x8373, "ヱ": 0x8391,
    "じ": 0x82B6, "ぴ": 0x82D2, "ゐ": 0x82EE, "ス": 0x8358, "フ": 0x8374, "ヲ": 0x8392,
    "す": 0x82B7, "ふ": 0x82D3, "ゑ": 0x82EF, "ズ": 0x8359, "ブ": 0x8375, "ン": 0x8393,
    "ず": 0x82B8, "ぶ": 0x82D4, "を": 0x82F0, "セ": 0x835A, "プ": 0x8376, "ヴ": 0x8394,
    "せ": 0x82B9, "ぷ": 0x82D5, "ん": 0x82F1, "ゼ": 0x835B, "ヘ": 0x8377, "ヵ": 0x8395,
                                                           "ベ": 0x8378, "ヶ": 0x8396,
    
    # Other chars not in original table
    "　": 0x8140, "！": 0x8149, "」": 0x8176, "間": 0x8AD4, "沼": 0x8FC0, "発": 0x94AD,
    "、": 0x8141, "―": 0x815C, "＃": 0x8194, "岸": 0x8ADD, "人": 0x906C, "匹": 0x9543,
    "。": 0x8142, "”": 0x8168, "０": 0x824F, "渓": 0x8C6B, "青": 0x90C2, "秒": 0x9562,
    "．": 0x8144, "（": 0x8169, "１": 0x8250, "口": 0x8CFB, "赤": 0x90D4, "分": 0x95AA,
    "・": 0x8145, "）": 0x816A, "黄": 0x89A9, "山": 0x8E52, "谷": 0x924A, "目": 0x96DA,
    "？": 0x8148, "「": 0x8175, "海": 0x8A43, "時": 0x8E9E, "地": 0x926E, "里": 0x97A2,
                                                           "入": 0x93FC, "緑": 0x97CE,
}

skipTimer = 0

def sjis_process(buf, outfile):
    global skipTimer

    for i, char in enumerate(buf):
        if skipTimer > 0:
            skipTimer -= 1
            continue
        if char == "'" and buf[i+1] in sjis_table:
            if sjis_table[buf[i+1]] == 0:
                print("Error: Please map %s in %s" % (buf[i+1], sys.argv[0]))
                exit(1)
            outfile.write("0x%X" % sjis_table[buf[i+1]])
            skipTimer = 2
        else:
            outfile.write(char)

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f'{sys.argv[0]} infile outfile')
        exit(1)

    infile = sys.argv[1]
    outfile = sys.argv[2]

    with open(infile) as f:
        fb = f.read()

    with open(outfile, "w+") as outf:
        sjis_process(fb, outf)
