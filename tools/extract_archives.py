#!/usr/bin/env python3

# SPDX-FileCopyrightText: © 2023 ZeldaRET
# SPDX-License-Identifier: MIT

from __future__ import annotations

import argparse
import dataclasses
import libyaz0
from pathlib import Path
import struct


PRINT_XML = False

@dataclasses.dataclass
class ArchiveMeta:
    start: int
    end: int


def readFileAsBytearray(filepath: Path) -> bytearray:
    with filepath.open(mode="rb") as f:
        return bytearray(f.read())


def readBytesAsWord(array_of_bytes: bytearray, offset: int) -> int:
    return struct.unpack_from(f">I", array_of_bytes, offset)[0]


def getOffsetsList(archiveBytes: bytearray) -> list[ArchiveMeta]:
    archivesOffsets: list[ArchiveMeta] = []

    firstEntryOffset = readBytesAsWord(archiveBytes, 0)
    firstEntrySize = readBytesAsWord(archiveBytes, 4)

    archivesOffsets.append(ArchiveMeta(firstEntryOffset, firstEntryOffset + firstEntrySize))

    offset = 4
    while offset < firstEntryOffset - 4:
        entry = readBytesAsWord(archiveBytes, offset)
        nextEntry = readBytesAsWord(archiveBytes, offset + 4)
        # print(f"0x{entry:04X}")
        entryStart = entry + firstEntryOffset
        entryEnd = nextEntry + firstEntryOffset
        archivesOffsets.append(ArchiveMeta(entryStart, entryEnd))

        offset += 4

    return archivesOffsets


def extractArchive(archivePath: Path, outPath: Path):
    archiveBytes = readFileAsBytearray(archivePath)

    archivesOffsets = getOffsetsList(archiveBytes)

    if PRINT_XML:
        print('<Root>')
        print(f'    <File Name="{outPath.stem}">')

    with outPath.open("wb") as out:
        currentOffset = 0
        for meta in archivesOffsets:
            decompressedBytes = libyaz0.decompress(archiveBytes[meta.start:meta.end])
            decompressedSize = len(decompressedBytes)
            out.write(decompressedBytes)

            if PRINT_XML:
                print(f'        <Blob Name="{archivePath.stem}_Blob_{currentOffset:06X}" Size="0x{decompressedSize:04X}" Offset="0x{currentOffset:X}" />')

            currentOffset += decompressedSize

    if PRINT_XML:
        print(f'    </File>')
        print('</Root>')


def main():
    parser = argparse.ArgumentParser(description="MM archives extractor")
    parser.add_argument("-v", "--version", help="version to process", default="mm.us.rev1")
    parser.add_argument("--xml", help="Generate xml to stdout", action="store_true")

    args = parser.parse_args()

    global PRINT_XML
    PRINT_XML = args.xml

    archivesCsvPath = Path(f"tools/filelists/{args.version}/archives.csv")

    # archivesNames: list[Path] = []
    with archivesCsvPath.open() as f:
        for line in f:
            archiveName = line.strip().split(",")[1]
            archivePath = Path(f"baserom/{archiveName}")

            extractedPath = Path(str(archivePath) + ".unarchive")
            print(f"Extracting '{archivePath}' -> '{extractedPath}'")
            extractArchive(archivePath, extractedPath)
            # print()
            # archivesNames.append()


if __name__ == "__main__":
    main()
