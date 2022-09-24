/**
 * @file audio_load.c
 *
 * Implements the transfer of audio data from the cartridge to the audio heap.
 *
 * The audio data in ROM consists of:
 *      1) Sequences stored as a midi-based script called the music-macro language (.mus files)
 *      2) SoundFonts stored as various sound-font structs bundled togther in a custom way
 *         that is extracted through relocs (See SoundFontData, generic .o files)
 *      3) Samples consisting of raw soundbytes stored using a compressed ADPCM algorithm (.aifc files)
 */

#include "global.h"

/**
 * SoundFont Notes:
 *
 */
// opaque type for soundfont data loaded into ram (should maybe get rid of this?)
typedef void SoundFontData;

typedef struct {
    /* 0x00 */ s32 sampleBankId1;
    /* 0x04 */ s32 sampleBankId2;
    /* 0x08 */ uintptr_t baseAddr1;
    /* 0x0C */ uintptr_t baseAddr2;
    /* 0x10 */ u32 medium1;
    /* 0x14 */ u32 medium2;
} SampleBankRelocInfo; // size = 0x18

void AudioLoad_DiscardFont(s32 fontId);
s32 AudioLoad_SyncInitSeqPlayerInternal(s32 playerIndex, s32 seqId, s32 arg2);
u8* AudioLoad_SyncLoadSeq(s32 seqId);
u32 AudioLoad_TrySyncLoadSampleBank(u32 sampleBankId, u32* outMedium, s32 noLoad);
SoundFontData* AudioLoad_SyncLoadFont(u32 fontId);
void* AudioLoad_SyncLoad(s32 tableType, u32 id, s32* didAllocate);
u32 AudioLoad_GetRealTableIndex(s32 tableType, u32 id);
void* AudioLoad_SearchCaches(s32 tableType, s32 id);
AudioTable* AudioLoad_GetLoadTable(s32 tableType);
void AudioLoad_SyncDma(uintptr_t devAddr, u8* ramAddr, size_t size, s32 medium);
void AudioLoad_SyncDmaUnkMedium(uintptr_t devAddr, u8* addr, size_t size, s32 unkMediumParam);
s32 AudioLoad_Dma(OSIoMesg* mesg, u32 priority, s32 direction, uintptr_t devAddr, void* ramAddr, size_t size,
                  OSMesgQueue* reqQueue, s32 medium, const char* dmaFuncType);
void* AudioLoad_AsyncLoadInner(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue);
Sample* AudioLoad_GetFontSample(s32 fontId, s32 instId);
void AudioLoad_ProcessSlowLoads(s32 resetStatus);
void AudioLoad_DmaSlowCopy(AudioSlowLoad* slowLoad, size_t size);
void AudioLoad_DmaSlowCopyUnkMedium(intptr_t devAddr, intptr_t ramAddr, size_t size, s32 arg3);
AudioAsyncLoad* AudioLoad_StartAsyncLoadUnkMedium(s32 unkMediumParam, uintptr_t devAddr, void* ramAddr, size_t size,
                                                  s32 medium, s32 nChunks, OSMesgQueue* retQueue, s32 retMsg);
AudioAsyncLoad* AudioLoad_StartAsyncLoad(uintptr_t devAddr, void* ramAddr, size_t size, s32 medium, s32 nChunks,
                                         OSMesgQueue* retQueue, s32 retMsg);
void AudioLoad_ProcessAsyncLoads(s32 resetStatus);
void AudioLoad_ProcessAsyncLoadUnkMedium(AudioAsyncLoad* asyncLoad, s32 resetStatus);
void AudioLoad_ProcessAsyncLoad(AudioAsyncLoad* asyncLoad, s32 resetStatus);
void AudioLoad_AsyncDma(AudioAsyncLoad* asyncLoad, size_t size);
void AudioLoad_AsyncDmaRamUnloaded(AudioAsyncLoad* asyncLoad, size_t size);
void AudioLoad_AsyncDmaUnkMedium(uintptr_t devAddr, void* ramAddr, size_t size, s16 arg3);
void AudioLoad_RelocateSample(TunedSample* tunedSample, SoundFontData* fontData, SampleBankRelocInfo* sampleBankReloc);
void AudioLoad_RelocateFontAndPreloadSamples(s32 fontId, SoundFontData* fontData, SampleBankRelocInfo* sampleBankReloc,
                                             s32 isAsync);
s32 AudioLoad_ProcessSamplePreloads(s32 resetStatus);

#define MK_ASYNC_MSG(retData, tableType, id, loadStatus) \
    (((retData) << 24) | ((tableType) << 16) | ((id) << 8) | (loadStatus))

#define ASYNC_TBLTYPE(v) ((u8)(v >> 16))
#define ASYNC_ID(v) ((u8)(v >> 8))
#define ASYNC_STATUS(v) ((u8)(v >> 0))

typedef enum {
    /* 0 */ LOAD_STATUS_WAITING,
    /* 1 */ LOAD_STATUS_START,
    /* 2 */ LOAD_STATUS_LOADING,
    /* 3 */ LOAD_STATUS_DONE
} SlowLoadStatus;

#define OS_MESG_PRI_NORMAL 0
#define OS_MESG_PRI_HIGH 1

typedef struct {
    u16 numInstruments;
    u16 numDrums;
    u16 numSfx;
} UnloadedFonts;

OSMesgQueue sScriptLoadQueue;
OSMesg sScriptLoadMesgBuf[0x10];
s8* sScriptLoadDonePointers[0x10];
s32 sAudioLoadPad1[2]; // file padding
s32 D_801FD1E0;

DmaHandler sDmaHandler = osEPiStartDma;
void* sUnusedHandler = NULL;
s32 gAudioContextInitalized = false;

void AudioLoad_DecreaseSampleDmaTtls(void) {
    u32 i;

    for (i = 0; i < gAudioContext.sampleDmaListSize1; i++) {
        SampleDma* dma = &gAudioContext.sampleDmas[i];

        if (dma->ttl != 0) {
            dma->ttl--;
            if (dma->ttl == 0) {
                dma->reuseIndex = gAudioContext.sampleDmaReuseQueue1WrPos;
                gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1WrPos] = i;
                gAudioContext.sampleDmaReuseQueue1WrPos++;
            }
        }
    }

    for (i = gAudioContext.sampleDmaListSize1; i < gAudioContext.sampleDmaCount; i++) {
        SampleDma* dma = &gAudioContext.sampleDmas[i];

        if (dma->ttl != 0) {
            dma->ttl--;
            if (dma->ttl == 0) {
                dma->reuseIndex = gAudioContext.sampleDmaReuseQueue2WrPos;
                gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2WrPos] = i;
                gAudioContext.sampleDmaReuseQueue2WrPos++;
            }
        }
    }

    gAudioContext.unused2648 = 0;
}

void* AudioLoad_DmaSampleData(uintptr_t devAddr, size_t size, s32 arg2, u8* dmaIndexRef, s32 medium) {
    s32 pad1;
    SampleDma* dma;
    s32 hasDma = false;
    uintptr_t dmaDevAddr;
    u32 pad2;
    u32 dmaIndex;
    u32 transfer;
    s32 bufferPos;
    u32 i;

    if (arg2 != 0 || *dmaIndexRef >= gAudioContext.sampleDmaListSize1) {
        for (i = gAudioContext.sampleDmaListSize1; i < gAudioContext.sampleDmaCount; i++) {
            dma = &gAudioContext.sampleDmas[i];
            bufferPos = devAddr - dma->devAddr;
            if (0 <= bufferPos && ((u32)bufferPos <= dma->size - size)) {
                // We already have a DMA request for this memory range.
                if (dma->ttl == 0 &&
                    gAudioContext.sampleDmaReuseQueue2RdPos != gAudioContext.sampleDmaReuseQueue2WrPos) {
                    // Move the DMA out of the reuse queue, by swapping it with the
                    // read pos, and then incrementing the read pos.
                    if (dma->reuseIndex != gAudioContext.sampleDmaReuseQueue2RdPos) {
                        gAudioContext.sampleDmaReuseQueue2[dma->reuseIndex] =
                            gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos];
                        gAudioContext
                            .sampleDmas[gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos]]
                            .reuseIndex = dma->reuseIndex;
                    }
                    gAudioContext.sampleDmaReuseQueue2RdPos++;
                }
                dma->ttl = 32;
                *dmaIndexRef = (u8)i;
                return dma->ramAddr + (devAddr - dma->devAddr);
            }
        }

        if (arg2 == 0) {
            goto search_short_lived;
        }

        if (gAudioContext.sampleDmaReuseQueue2RdPos != gAudioContext.sampleDmaReuseQueue2WrPos && arg2 != 0) {
            // Allocate a DMA from reuse queue 2, unless full.
            dmaIndex = gAudioContext.sampleDmaReuseQueue2[gAudioContext.sampleDmaReuseQueue2RdPos];
            gAudioContext.sampleDmaReuseQueue2RdPos++;
            dma = gAudioContext.sampleDmas + dmaIndex;
            hasDma = true;
        }
    } else {
    search_short_lived:
        dma = gAudioContext.sampleDmas + *dmaIndexRef;
        i = 0;
    again:
        bufferPos = devAddr - dma->devAddr;
        if (0 <= bufferPos && (u32)bufferPos <= dma->size - size) {
            // We already have DMA for this memory range.
            if (dma->ttl == 0) {
                // Move the DMA out of the reuse queue, by swapping it with the
                // read pos, and then incrementing the read pos.
                if (dma->reuseIndex != gAudioContext.sampleDmaReuseQueue1RdPos) {
                    gAudioContext.sampleDmaReuseQueue1[dma->reuseIndex] =
                        gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos];
                    gAudioContext
                        .sampleDmas[gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos]]
                        .reuseIndex = dma->reuseIndex;
                }
                gAudioContext.sampleDmaReuseQueue1RdPos++;
            }
            dma->ttl = 2;
            return dma->ramAddr + (devAddr - dma->devAddr);
        }
        dma = gAudioContext.sampleDmas + i++;
        if (i <= gAudioContext.sampleDmaListSize1) {
            goto again;
        }
    }

    if (!hasDma) {
        if (gAudioContext.sampleDmaReuseQueue1RdPos == gAudioContext.sampleDmaReuseQueue1WrPos) {
            return NULL;
        }
        // Allocate a DMA from reuse queue 1.
        dmaIndex = gAudioContext.sampleDmaReuseQueue1[gAudioContext.sampleDmaReuseQueue1RdPos++];
        dma = gAudioContext.sampleDmas + dmaIndex;
        hasDma = true;
    }

    transfer = dma->size;
    dmaDevAddr = devAddr & ~0xF;
    dma->ttl = 3;
    dma->devAddr = dmaDevAddr;
    dma->sizeUnused = transfer;
    AudioLoad_Dma(&gAudioContext.currAudioFrameDmaIoMesgBuf[gAudioContext.curAudioFrameDmaCount++], OS_MESG_PRI_NORMAL,
                  OS_READ, dmaDevAddr, dma->ramAddr, transfer, &gAudioContext.curAudioFrameDmaQueue, medium,
                  "SUPERDMA");
    *dmaIndexRef = dmaIndex;
    return (devAddr - dmaDevAddr) + dma->ramAddr;
}

// This string does not appear to belong in context to any function between the previous string and the next string
const char D_801E030C[] = "TYPE %d:ID %d is not External Map.\n";

void AudioLoad_InitSampleDmaBuffers(s32 numNotes) {
    SampleDma* dma;
    s32 i;
    s32 t2;
    s32 j;

    gAudioContext.sampleDmaBufSize = gAudioContext.sampleDmaBufSize1;
    gAudioContext.sampleDmas =
        AudioHeap_Alloc(&gAudioContext.miscPool,
                        4 * gAudioContext.numNotes * sizeof(SampleDma) * gAudioContext.audioBufferParameters.specUnk4);
    t2 = 3 * gAudioContext.numNotes * gAudioContext.audioBufferParameters.specUnk4;

    // First 3/4 sampleDmas
    for (i = 0; i < t2; i++) {
        dma = &gAudioContext.sampleDmas[gAudioContext.sampleDmaCount];
        dma->ramAddr = AudioHeap_AllocAttemptExternal(&gAudioContext.miscPool, gAudioContext.sampleDmaBufSize);
        if (dma->ramAddr == NULL) {
            break;
        } else {
            AudioHeap_WritebackDCache(dma->ramAddr, gAudioContext.sampleDmaBufSize);
            dma->size = gAudioContext.sampleDmaBufSize;
            dma->devAddr = 0;
            dma->sizeUnused = 0;
            dma->unused = 0;
            dma->ttl = 0;
            gAudioContext.sampleDmaCount++;
        }
    }

    for (i = 0; (u32)i < gAudioContext.sampleDmaCount; i++) {
        gAudioContext.sampleDmaReuseQueue1[i] = i;
        gAudioContext.sampleDmas[i].reuseIndex = i;
    }

    for (i = gAudioContext.sampleDmaCount; i < 0x100; i++) {
        gAudioContext.sampleDmaReuseQueue1[i] = 0;
    }

    gAudioContext.sampleDmaReuseQueue1RdPos = 0;
    gAudioContext.sampleDmaReuseQueue1WrPos = gAudioContext.sampleDmaCount;
    gAudioContext.sampleDmaListSize1 = gAudioContext.sampleDmaCount;
    gAudioContext.sampleDmaBufSize = gAudioContext.sampleDmaBufSize2;

    for (j = 0; j < gAudioContext.numNotes; j++) {
        dma = &gAudioContext.sampleDmas[gAudioContext.sampleDmaCount];
        dma->ramAddr = AudioHeap_AllocAttemptExternal(&gAudioContext.miscPool, gAudioContext.sampleDmaBufSize);
        if (dma->ramAddr == NULL) {
            break;
        } else {
            AudioHeap_WritebackDCache(dma->ramAddr, gAudioContext.sampleDmaBufSize);
            dma->size = gAudioContext.sampleDmaBufSize;
            dma->devAddr = 0;
            dma->sizeUnused = 0;
            dma->unused = 0;
            dma->ttl = 0;
            gAudioContext.sampleDmaCount++;
        }
    }

    for (i = gAudioContext.sampleDmaListSize1; (u32)i < gAudioContext.sampleDmaCount; i++) {
        gAudioContext.sampleDmaReuseQueue2[i - gAudioContext.sampleDmaListSize1] = i;
        gAudioContext.sampleDmas[i].reuseIndex = i - gAudioContext.sampleDmaListSize1;
    }

    for (i = gAudioContext.sampleDmaCount; i < 0x100; i++) {
        gAudioContext.sampleDmaReuseQueue2[i] = gAudioContext.sampleDmaListSize1;
    }

    gAudioContext.sampleDmaReuseQueue2RdPos = 0;
    gAudioContext.sampleDmaReuseQueue2WrPos = gAudioContext.sampleDmaCount - gAudioContext.sampleDmaListSize1;
}

s32 AudioLoad_IsFontLoadComplete(s32 fontId) {
    if (fontId == 0xFF) {
        return true;
    } else if (gAudioContext.fontLoadStatus[fontId] >= LOAD_STATUS_COMPLETE) {
        return true;
    } else if (gAudioContext.fontLoadStatus[AudioLoad_GetRealTableIndex(FONT_TABLE, fontId)] >= LOAD_STATUS_COMPLETE) {
        return true;
    } else {
        return false;
    }
}

s32 AudioLoad_IsSeqLoadComplete(s32 seqId) {
    if (seqId == 0xFF) {
        return true;
    } else if (gAudioContext.seqLoadStatus[seqId] >= LOAD_STATUS_COMPLETE) {
        return true;
    } else if (gAudioContext.seqLoadStatus[AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId)] >=
               LOAD_STATUS_COMPLETE) {
        return true;
    } else {
        return false;
    }
}

s32 AudioLoad_IsSampleLoadComplete(s32 sampleBankId) {
    if (sampleBankId == 0xFF) {
        return true;
    } else if (gAudioContext.sampleFontLoadStatus[sampleBankId] >= LOAD_STATUS_COMPLETE) {
        return true;
    } else if (gAudioContext.sampleFontLoadStatus[AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankId)] >=
               LOAD_STATUS_COMPLETE) {
        return true;
    } else {
        return false;
    }
}

void AudioLoad_SetFontLoadStatus(s32 fontId, s32 loadStatus) {
    if ((fontId != 0xFF) && (gAudioContext.fontLoadStatus[fontId] != LOAD_STATUS_PERMANENT)) {
        gAudioContext.fontLoadStatus[fontId] = loadStatus;
    }
}

void AudioLoad_SetSeqLoadStatus(s32 seqId, s32 loadStatus) {
    if ((seqId != 0xFF) && (gAudioContext.seqLoadStatus[seqId] != LOAD_STATUS_PERMANENT)) {
        gAudioContext.seqLoadStatus[seqId] = loadStatus;
    }
}

void AudioLoad_SetSampleFontLoadStatusAndApplyCaches(s32 sampleBankId, s32 loadStatus) {
    if (sampleBankId != 0xFF) {
        if (gAudioContext.sampleFontLoadStatus[sampleBankId] != LOAD_STATUS_PERMANENT) {
            gAudioContext.sampleFontLoadStatus[sampleBankId] = loadStatus;
        }

        if ((gAudioContext.sampleFontLoadStatus[sampleBankId] == LOAD_STATUS_PERMANENT) ||
            (gAudioContext.sampleFontLoadStatus[sampleBankId] == LOAD_STATUS_COMPLETE)) {
            AudioHeap_ApplySampleBankCache(sampleBankId);
        }
    }
}

void AudioLoad_SetSampleFontLoadStatus(s32 sampleBankId, s32 loadStatus) {
    if ((sampleBankId != 0xFF) && (gAudioContext.sampleFontLoadStatus[sampleBankId] != LOAD_STATUS_PERMANENT)) {
        gAudioContext.sampleFontLoadStatus[sampleBankId] = loadStatus;
    }
}

void AudioLoad_InitTable(AudioTable* table, uintptr_t romAddr, u16 unkMediumParam) {
    s32 i;

    table->unkMediumParam = unkMediumParam;
    table->romAddr = romAddr;

    for (i = 0; i < table->numEntries; i++) {
        if ((table->entries[i].size != 0) && (table->entries[i].medium == MEDIUM_CART)) {
            table->entries[i].romAddr += romAddr;
        }
    }
}

SoundFontData* AudioLoad_SyncLoadSeqFonts(s32 seqId, u32* outDefaultFontId) {
    s32 pad[2];
    s32 index;
    SoundFontData* fontData;
    s32 numFonts;
    s32 fontId;
    s32 i;

    if (seqId >= gAudioContext.numSequences) {
        return NULL;
    }

    fontId = 0xFF;
    index = ((u16*)gAudioContext.sequenceFontTable)[seqId];
    numFonts = gAudioContext.sequenceFontTable[index++];

    while (numFonts > 0) {
        fontId = gAudioContext.sequenceFontTable[index++];
        fontData = AudioLoad_SyncLoadFont(fontId);
        numFonts--;
    }

    *outDefaultFontId = fontId;
    return fontData;
}

void AudioLoad_SyncLoadSeqParts(s32 seqId, s32 arg1, s32 arg2, OSMesgQueue* arg3) {
    s32 pad;
    u32 defaultFontId;

    if (seqId < gAudioContext.numSequences) {
        if (arg1 & 2) {
            AudioLoad_SyncLoadSeqFonts(seqId, &defaultFontId);
        }
        if (arg1 & 1) {
            AudioLoad_SyncLoadSeq(seqId);
        }
        if (arg2 != 0) {
            osSendMesg(arg3, arg2 << 0x18, OS_MESG_NOBLOCK);
        }
    }
}

s32 AudioLoad_SyncLoadSample(Sample* sample, s32 fontId) {
    void* sampleAddr;

    if (sample->isRelocated == true) {
        if (sample->medium != MEDIUM_RAM) {
            sampleAddr = AudioHeap_AllocSampleCache(sample->size, fontId, (void*)sample->sampleAddr, sample->medium,
                                                    CACHE_PERSISTENT);
            if (sampleAddr == NULL) {
                return -1;
            }

            if (sample->medium == MEDIUM_UNK) {
                AudioLoad_SyncDmaUnkMedium(sample->sampleAddr, sampleAddr, sample->size,
                                           gAudioContext.sampleBankTable->unkMediumParam);
            } else {
                AudioLoad_SyncDma(sample->sampleAddr, sampleAddr, sample->size, sample->medium);
            }
            sample->medium = MEDIUM_RAM;
            sample->sampleAddr = sampleAddr;
        }
    }
}

s32 AudioLoad_SyncLoadInstrument(s32 fontId, s32 instId, s32 drumId) {
    if (instId < 0x7F) {
        Instrument* instrument = AudioPlayback_GetInstrumentInner(fontId, instId);

        if (instrument == NULL) {
            return -1;
        }
        if (instrument->normalRangeLo != 0) {
            AudioLoad_SyncLoadSample(instrument->lowPitchTunedSample.sample, fontId);
        }
        AudioLoad_SyncLoadSample(instrument->normalPitchTunedSample.sample, fontId);
        if (instrument->normalRangeHi != 0x7F) {
            return AudioLoad_SyncLoadSample(instrument->highPitchTunedSample.sample, fontId);
        }
        // TODO: is this missing return UB?
    } else if (instId == 0x7F) {
        Drum* drum = AudioPlayback_GetDrum(fontId, drumId);

        if (drum == NULL) {
            return -1;
        }
        AudioLoad_SyncLoadSample(drum->tunedSample.sample, fontId);
        return 0;
    }
    // TODO: is this missing return UB?
}

void AudioLoad_AsyncLoad(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue) {
    if (AudioLoad_AsyncLoadInner(tableType, id, nChunks, retData, retQueue) == NULL) {
        osSendMesg(retQueue, 0xFFFFFFFF, OS_MESG_NOBLOCK);
    }
}

void AudioLoad_AsyncLoadSeq(s32 seqId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(SEQUENCE_TABLE, seqId, 0, retData, retQueue);
}

void AudioLoad_AsyncLoadSampleBank(s32 sampleBankId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(SAMPLE_TABLE, sampleBankId, 0, retData, retQueue);
}

void AudioLoad_AsyncLoadFont(s32 fontId, s32 arg1, s32 retData, OSMesgQueue* retQueue) {
    AudioLoad_AsyncLoad(FONT_TABLE, fontId, 0, retData, retQueue);
}

u8* AudioLoad_GetFontsForSequence(s32 seqId, u32* outNumFonts) {
    s32 index = ((u16*)gAudioContext.sequenceFontTable)[seqId];

    *outNumFonts = gAudioContext.sequenceFontTable[index++];
    if (*outNumFonts == 0) {
        return NULL;
    }
    return &gAudioContext.sequenceFontTable[index];
}

void AudioLoad_DiscardSeqFonts(s32 seqId) {
    s32 fontId;
    s32 index = ((u16*)gAudioContext.sequenceFontTable)[seqId];
    s32 numFonts = gAudioContext.sequenceFontTable[index++];

    while (numFonts > 0) {
        numFonts--;
        fontId = AudioLoad_GetRealTableIndex(FONT_TABLE, gAudioContext.sequenceFontTable[index++]);
        if (AudioHeap_SearchPermanentCache(FONT_TABLE, fontId) == NULL) {
            AudioLoad_DiscardFont(fontId);
            AudioLoad_SetFontLoadStatus(fontId, LOAD_STATUS_NOT_LOADED);
        }
    }
}

void AudioLoad_DiscardFont(s32 fontId) {
    u32 i;
    AudioCache* pool = &gAudioContext.fontCache;
    AudioPersistentCache* persistent;

    if (fontId == pool->temporary.entries[0].id) {
        pool->temporary.entries[0].id = -1;
    } else if (fontId == pool->temporary.entries[1].id) {
        pool->temporary.entries[1].id = -1;
    }

    persistent = &pool->persistent;
    for (i = 0; i < persistent->numEntries; i++) {
        if (fontId == persistent->entries[i].id) {
            persistent->entries[i].id = -1;
        }
    }

    AudioHeap_DiscardFont(fontId);
}

void func_8018FA60(u32 tableType, u32 id, s32 type, s32 data) {
    AudioTable* table = AudioLoad_GetLoadTable(tableType);

    if (table->entries[id].medium == MEDIUM_RAM_UNLOADED) {
        switch (type) {
            case 0:
                table->entries[id].romAddr = data;
                break;
            case 1:
                table->entries[id].size = data;
                break;
            default:
                break;
        }
    }
}

s32 AudioLoad_SyncInitSeqPlayer(s32 playerIndex, s32 seqId, s32 arg2) {
    if (gAudioContext.resetTimer != 0) {
        return 0;
    }

    gAudioContext.seqPlayers[playerIndex].skipTicks = 0;
    AudioLoad_SyncInitSeqPlayerInternal(playerIndex, seqId, arg2);
    // Intentionally missing return. Returning the result of the above function
    // call matches but is UB because it too is missing a return, and using the
    // result of a non-void function that has failed to return a value is UB.
    // The callers of this function do not use the return value, so it's fine.
}

s32 AudioLoad_SyncInitSeqPlayerSkipTicks(s32 playerIndex, s32 seqId, s32 skipTicks) {
    if (gAudioContext.resetTimer != 0) {
        return 0;
    }

    gAudioContext.seqPlayers[playerIndex].skipTicks = skipTicks;
    AudioLoad_SyncInitSeqPlayerInternal(playerIndex, seqId, 0);
    // Missing return, see above.
}

s32 AudioLoad_SyncInitSeqPlayerInternal(s32 playerIndex, s32 seqId, s32 arg2) {
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIndex];
    u8* seqData;
    s32 index;
    s32 numFonts;
    s32 fontId;

    if (seqId >= gAudioContext.numSequences) {
        return 0;
    }

    AudioSeq_SequencePlayerDisable(seqPlayer);

    if (1) {}
    fontId = 0xFF;
    index = ((u16*)gAudioContext.sequenceFontTable)[seqId];
    numFonts = gAudioContext.sequenceFontTable[index++];

    while (numFonts > 0) {
        fontId = gAudioContext.sequenceFontTable[index++];
        AudioLoad_SyncLoadFont(fontId);
        numFonts--;
    }

    seqData = AudioLoad_SyncLoadSeq(seqId);
    if (seqData == NULL) {
        return 0;
    }

    AudioSeq_ResetSequencePlayer(seqPlayer);
    seqPlayer->seqId = seqId;

    if (fontId != 0xFF) {
        seqPlayer->defaultFont = AudioLoad_GetRealTableIndex(FONT_TABLE, fontId);
    } else {
        seqPlayer->defaultFont = 0xFF;
    }

    seqPlayer->seqData = seqData;
    seqPlayer->enabled = true;
    seqPlayer->scriptState.pc = seqData;
    seqPlayer->scriptState.depth = 0;
    seqPlayer->delay = 0;
    seqPlayer->finished = false;
    seqPlayer->playerIndex = playerIndex;
    //! @bug missing return (but the return value is not used so it's not UB)
}

u8* AudioLoad_SyncLoadSeq(s32 seqId) {
    s32 pad;
    s32 didAllocate;

    if (gAudioContext.seqLoadStatus[AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId)] == LOAD_STATUS_IN_PROGRESS) {
        return NULL;
    }

    return AudioLoad_SyncLoad(SEQUENCE_TABLE, seqId, &didAllocate);
}

u32 AudioLoad_GetSampleBank(u32 sampleBankId, u32* outMedium) {
    return AudioLoad_TrySyncLoadSampleBank(sampleBankId, outMedium, true);
}

u32 AudioLoad_TrySyncLoadSampleBank(u32 sampleBankId, u32* outMedium, s32 noLoad) {
    void* addr;
    AudioTable* sampleBankTable;
    u32 realTableId = AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankId);
    s8 cachePolicy;

    sampleBankTable = AudioLoad_GetLoadTable(SAMPLE_TABLE);

    addr = AudioLoad_SearchCaches(SAMPLE_TABLE, realTableId);
    if (addr != NULL) {
        if (gAudioContext.sampleFontLoadStatus[realTableId] != LOAD_STATUS_IN_PROGRESS) {
            AudioLoad_SetSampleFontLoadStatus(realTableId, LOAD_STATUS_COMPLETE);
        }

        *outMedium = MEDIUM_RAM;
        return addr;
    }

    cachePolicy = sampleBankTable->entries[sampleBankId].cachePolicy;

    if ((cachePolicy == CACHE_LOAD_EITHER_NOSYNC) || (noLoad == true)) {
        *outMedium = sampleBankTable->entries[sampleBankId].medium;
        return sampleBankTable->entries[realTableId].romAddr;
    }

    addr = AudioLoad_SyncLoad(SAMPLE_TABLE, sampleBankId, &noLoad);
    if (addr != NULL) {
        *outMedium = MEDIUM_RAM;
        return addr;
    }

    *outMedium = sampleBankTable->entries[sampleBankId].medium;
    return sampleBankTable->entries[realTableId].romAddr;
}

SoundFontData* AudioLoad_SyncLoadFont(u32 fontId) {
    SoundFontData* fontData;
    s32 sampleBankId1;
    s32 sampleBankId2;
    s32 didAllocate;
    SampleBankRelocInfo sampleBankReloc;
    s32 realFontId = AudioLoad_GetRealTableIndex(FONT_TABLE, fontId);

    if (gAudioContext.fontLoadStatus[realFontId] == LOAD_STATUS_IN_PROGRESS) {
        return NULL;
    }

    sampleBankId1 = gAudioContext.soundFontList[realFontId].sampleBankId1;
    sampleBankId2 = gAudioContext.soundFontList[realFontId].sampleBankId2;

    sampleBankReloc.sampleBankId1 = sampleBankId1;
    sampleBankReloc.sampleBankId2 = sampleBankId2;
    if (sampleBankReloc.sampleBankId1 != 0xFF) {
        sampleBankReloc.baseAddr1 =
            AudioLoad_TrySyncLoadSampleBank(sampleBankReloc.sampleBankId1, &sampleBankReloc.medium1, false);
    } else {
        sampleBankReloc.baseAddr1 = 0;
    }

    if (sampleBankId2 != 0xFF) {
        sampleBankReloc.baseAddr2 = AudioLoad_TrySyncLoadSampleBank(sampleBankId2, &sampleBankReloc.medium2, false);
    } else {
        sampleBankReloc.baseAddr2 = 0;
    }

    fontData = AudioLoad_SyncLoad(FONT_TABLE, fontId, &didAllocate);
    if (fontData == NULL) {
        return NULL;
    }
    if (didAllocate == true) {
        AudioLoad_RelocateFontAndPreloadSamples(realFontId, fontData, &sampleBankReloc, false);
    }

    return fontData;
}

void* AudioLoad_SyncLoad(s32 tableType, u32 id, s32* didAllocate) {
    size_t size;
    AudioTable* table;
    s32 medium2;
    u32 medium;
    s32 loadStatus;
    uintptr_t romAddr;
    s32 cachePolicy;
    void* ramAddr;
    u32 realId;
    s32 mediumUnk = MEDIUM_UNK;

    realId = AudioLoad_GetRealTableIndex(tableType, id);
    ramAddr = AudioLoad_SearchCaches(tableType, realId);
    if (ramAddr != NULL) {
        *didAllocate = false;
        loadStatus = LOAD_STATUS_COMPLETE;
    } else {
        table = AudioLoad_GetLoadTable(tableType);
        size = table->entries[realId].size;
        size = ALIGN16(size);
        medium = table->entries[id].medium;
        cachePolicy = table->entries[id].cachePolicy;
        romAddr = table->entries[realId].romAddr;
        switch (cachePolicy) {
            case CACHE_LOAD_PERMANENT:
                ramAddr = AudioHeap_AllocPermanent(tableType, realId, size);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;

            case CACHE_LOAD_PERSISTENT:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_PERSISTENT, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;
            case CACHE_LOAD_TEMPORARY:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_TEMPORARY, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;

            case CACHE_LOAD_EITHER:
            case CACHE_LOAD_EITHER_NOSYNC:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_EITHER, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;
        }

        *didAllocate = true;

        medium2 = medium;
        if (medium == MEDIUM_RAM_UNLOADED) {
            if (romAddr == 0) {
                return NULL;
            }

            if (tableType == FONT_TABLE) {
                SoundFont* soundFont = &gAudioContext.soundFontList[realId];

                soundFont->numInstruments = ((UnloadedFonts*)romAddr)->numInstruments;
                soundFont->numDrums = ((UnloadedFonts*)romAddr)->numDrums;
                soundFont->numSfx = ((UnloadedFonts*)romAddr)->numSfx;
                romAddr += 0x10;
                size -= 0x10;
            }

            bcopy(romAddr, ramAddr, size);
        } else if (medium2 == mediumUnk) {
            AudioLoad_SyncDmaUnkMedium(romAddr, ramAddr, size, (s16)table->unkMediumParam);
        } else {
            AudioLoad_SyncDma(romAddr, ramAddr, size, medium);
        }

        loadStatus = (cachePolicy == CACHE_LOAD_PERMANENT) ? LOAD_STATUS_PERMANENT : LOAD_STATUS_COMPLETE;
    }

    switch (tableType) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(realId, loadStatus);
            break;
        case FONT_TABLE:
            AudioLoad_SetFontLoadStatus(realId, loadStatus);
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleFontLoadStatusAndApplyCaches(realId, loadStatus);
            break;
        default:
            break;
    }

    return ramAddr;
}

u32 AudioLoad_GetRealTableIndex(s32 tableType, u32 id) {
    AudioTable* table = AudioLoad_GetLoadTable(tableType);

    if (table->entries[id].size == 0) {
        id = table->entries[id].romAddr;
    }

    return id;
}

void* AudioLoad_SearchCaches(s32 tableType, s32 id) {
    void* addr;

    addr = AudioHeap_SearchPermanentCache(tableType, id);
    if (addr != NULL) {
        return addr;
    }

    addr = AudioHeap_SearchCaches(tableType, CACHE_EITHER, id);
    if (addr != NULL) {
        return addr;
    }

    return NULL;
}

AudioTable* AudioLoad_GetLoadTable(s32 tableType) {
    AudioTable* table;

    switch (tableType) {
        case SEQUENCE_TABLE:
            table = gAudioContext.sequenceTable;
            break;
        case FONT_TABLE:
            table = gAudioContext.soundFontTable;
            break;
        default:
            table = NULL;
            break;
        case SAMPLE_TABLE:
            table = gAudioContext.sampleBankTable;
            break;
    }
    return table;
}

/**
 * Read and extract information from soundFont binary loaded into ram.
 * Also relocate offsets into pointers within this loaded soundFont
 *
 * @param fontId index of font being processed
 * @param fontDataStartAddr ram address of raw soundfont binary loaded into cache
 * @param sampleBankReloc information on the sampleBank containing raw audio samples
 */
void AudioLoad_RelocateFont(s32 fontId, SoundFontData* fontDataStartAddr, SampleBankRelocInfo* sampleBankReloc) {
    uintptr_t soundOffset;
    uintptr_t soundListOffset;
    Instrument* inst;
    Drum* drum;
    SoundEffect* soundEffect;
    s32 i;
    s32 numDrums = gAudioContext.soundFontList[fontId].numDrums;
    s32 numInstruments = gAudioContext.soundFontList[fontId].numInstruments;
    s32 numSfx = gAudioContext.soundFontList[fontId].numSfx;
    u32* fontData = (u32*)fontDataStartAddr;

    // Relocate an offset (relative to the start of the font data) to a pointer (a ram address)
#define RELOC_TO_RAM(x) (void*)((uintptr_t)(x) + (uintptr_t)(fontDataStartAddr))

    // Drums relocation

    // The first u32 in fontData is an offset to a list of offsets to the drums
    soundListOffset = fontData[0];
    if (1) {}

    // If the soundFont has drums
    if ((soundListOffset != 0) && (numDrums != 0)) {

        fontData[0] = RELOC_TO_RAM(soundListOffset);

        // Loop through the drum offsets
        for (i = 0; i < numDrums; i++) {
            // Get the i'th drum offset
            soundOffset = ((Drum**)fontData[0])[i];

            // Some drum data entries are empty, represented by an offset of 0 in the list of drum offsets
            if (soundOffset != 0) {
                soundOffset = RELOC_TO_RAM(soundOffset);
                ((Drum**)fontData[0])[i] = drum = soundOffset;

                // The drum may be in the list multiple times and already relocated
                if (!drum->isRelocated) {
                    AudioLoad_RelocateSample(&drum->tunedSample, fontDataStartAddr, sampleBankReloc);

                    soundOffset = drum->envelope;
                    drum->envelope = RELOC_TO_RAM(soundOffset);

                    drum->isRelocated = true;
                }
            }
        }
    }

    // Sound effects relocation

    // The second u32 in fontData is an offset to the first sound effect entry
    soundListOffset = fontData[1];
    if (1) {}

    // If the soundFont has sound effects
    if ((soundListOffset != 0) && (numSfx != 0)) {

        fontData[1] = RELOC_TO_RAM(soundListOffset);

        // Loop through the sound effects
        for (i = 0; i < numSfx; i++) {
            // Get a pointer to the i'th sound effect
            soundOffset = (TunedSample*)fontData[1] + i;
            soundEffect = (SoundEffect*)soundOffset;

            // Check for NULL (note: the pointer is guaranteed to be in fontData and can never be NULL)
            if ((soundEffect != NULL) && (soundEffect->tunedSample.sample != NULL)) {
                AudioLoad_RelocateSample(&soundEffect->tunedSample, fontDataStartAddr, sampleBankReloc);
            }
        }
    }

    // Instruments relocation

    // Instrument Id 126 and above is reserved.
    // There can only be 126 instruments, indexed from 0 to 125
    if (numInstruments > 126) {
        numInstruments = 126;
    }

    // Starting from the 3rd u32 in fontData is the list of offsets to the instruments
    // Loop through the instruments
    for (i = 2; i <= 2 + numInstruments - 1; i++) {
        // Some instrument data entries are empty, represented by an offset of 0 in the list of instrument offsets
        if (fontData[i] != 0) {
            fontData[i] = RELOC_TO_RAM(fontData[i]);
            inst = (Instrument*)fontData[i];

            // The instrument may be in the list multiple times and already relocated
            if (!inst->isRelocated) {
                // Some instruments have a different sample for low pitches
                if (inst->normalRangeLo != 0) {
                    AudioLoad_RelocateSample(&inst->lowPitchTunedSample, fontDataStartAddr, sampleBankReloc);
                }

                // Every instrument has a sample for the default range
                AudioLoad_RelocateSample(&inst->normalPitchTunedSample, fontDataStartAddr, sampleBankReloc);

                // Some instruments have a different sample for high pitches
                if (inst->normalRangeHi != 0x7F) {
                    AudioLoad_RelocateSample(&inst->highPitchTunedSample, fontDataStartAddr, sampleBankReloc);
                }

                soundOffset = inst->envelope;
                inst->envelope = (EnvelopePoint*)RELOC_TO_RAM(soundOffset);

                inst->isRelocated = true;
            }
        }
    }

#undef RELOC_TO_RAM

    // Store the relocated pointers
    gAudioContext.soundFontList[fontId].drums = (Drum**)fontData[0];
    gAudioContext.soundFontList[fontId].soundEffects = (SoundEffect*)fontData[1];
    gAudioContext.soundFontList[fontId].instruments = (Instrument**)(&fontData[2]);
}

void AudioLoad_SyncDma(uintptr_t devAddr, u8* ramAddr, size_t size, s32 medium) {
    OSMesgQueue* msgQueue = &gAudioContext.syncDmaQueue;
    OSIoMesg* ioMesg = &gAudioContext.syncDmaIoMesg;
    size = ALIGN16(size);

    Audio_InvalDCache(ramAddr, size);

    while (true) {
        if (size < 0x400) {
            break;
        }
        AudioLoad_Dma(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, ramAddr, 0x400, msgQueue, medium, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
        size -= 0x400;
        devAddr += 0x400;
        ramAddr += 0x400;
    }

    if (size != 0) {
        AudioLoad_Dma(ioMesg, OS_MESG_PRI_HIGH, OS_READ, devAddr, ramAddr, size, msgQueue, medium, "FastCopy");
        osRecvMesg(msgQueue, NULL, OS_MESG_BLOCK);
    }
}

void AudioLoad_SyncDmaUnkMedium(uintptr_t devAddr, u8* ramAddr, size_t size, s32 unkMediumParam) {
}

s32 AudioLoad_Dma(OSIoMesg* mesg, u32 priority, s32 direction, uintptr_t devAddr, void* ramAddr, size_t size,
                  OSMesgQueue* reqQueue, s32 medium, const char* dmaFuncType) {
    OSPiHandle* handle;

    if (gAudioContext.resetTimer > 16) {
        return -1;
    }

    switch (medium) {
        case MEDIUM_CART:
            handle = gAudioContext.cartHandle;
            break;

        case MEDIUM_DISK_DRIVE:
            // driveHandle is uninitialized and corresponds to stubbed-out disk drive support.
            // SM64 Shindou called osDriveRomInit here.
            handle = gAudioContext.driveHandle;
            break;

        default:
            return 0;
    }

    if ((size % 0x10) != 0) {
        size = ALIGN16(size);
    }

    mesg->hdr.pri = priority;
    mesg->hdr.retQueue = reqQueue;
    mesg->dramAddr = ramAddr;
    mesg->devAddr = devAddr;
    mesg->size = size;
    handle->transferInfo.cmdType = 2;
    sDmaHandler(handle, mesg, direction);
    return 0;
}

void AudioLoad_Unused1(void) {
}

void AudioLoad_SyncLoadSimple(u32 tableType, u32 fontId) {
    s32 didAllocate;

    AudioLoad_SyncLoad(tableType, fontId, &didAllocate);
}

void* AudioLoad_AsyncLoadInner(s32 tableType, s32 id, s32 nChunks, s32 retData, OSMesgQueue* retQueue) {
    size_t size;
    AudioTable* table;
    void* ramAddr;
    s32 medium;
    s8 cachePolicy;
    uintptr_t romAddr;
    s32 loadStatus;
    SoundFont* soundFont;
    u32 realId = AudioLoad_GetRealTableIndex(tableType, id);
    u32 pad;

    switch (tableType) {
        case SEQUENCE_TABLE:
            if (gAudioContext.seqLoadStatus[realId] == LOAD_STATUS_IN_PROGRESS) {
                return NULL;
            }
            break;

        case FONT_TABLE:
            if (gAudioContext.fontLoadStatus[realId] == LOAD_STATUS_IN_PROGRESS) {
                return NULL;
            }
            break;

        case SAMPLE_TABLE:
            if (gAudioContext.sampleFontLoadStatus[realId] == LOAD_STATUS_IN_PROGRESS) {
                return NULL;
            }
            break;
    }

    ramAddr = AudioLoad_SearchCaches(tableType, realId);
    if (ramAddr != NULL) {
        loadStatus = LOAD_STATUS_COMPLETE;
        osSendMesg(retQueue, MK_ASYNC_MSG(retData, 0, 0, LOAD_STATUS_NOT_LOADED), OS_MESG_NOBLOCK);
    } else {
        table = AudioLoad_GetLoadTable(tableType);
        size = table->entries[realId].size;
        size = ALIGN16(size);
        medium = table->entries[id].medium;
        cachePolicy = table->entries[id].cachePolicy;
        romAddr = table->entries[realId].romAddr;
        loadStatus = LOAD_STATUS_COMPLETE;

        switch (cachePolicy) {
            case CACHE_LOAD_PERMANENT:
                ramAddr = AudioHeap_AllocPermanent(tableType, realId, size);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                loadStatus = LOAD_STATUS_PERMANENT;
                break;

            case CACHE_LOAD_PERSISTENT:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_PERSISTENT, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;

            case CACHE_LOAD_TEMPORARY:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_TEMPORARY, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;

            case CACHE_LOAD_EITHER:
            case CACHE_LOAD_EITHER_NOSYNC:
                ramAddr = AudioHeap_AllocCached(tableType, size, CACHE_EITHER, realId);
                if (ramAddr == NULL) {
                    return ramAddr;
                }
                break;
        }

        if (medium == MEDIUM_RAM_UNLOADED) {
            if (romAddr == 0) {
                return NULL;
            }

            if (tableType == FONT_TABLE) {
                soundFont = &gAudioContext.soundFontList[realId];

                soundFont->numInstruments = ((UnloadedFonts*)romAddr)->numInstruments;
                soundFont->numDrums = ((UnloadedFonts*)romAddr)->numDrums;
                soundFont->numSfx = ((UnloadedFonts*)romAddr)->numSfx;
                romAddr += 0x10;
                size += -0x10;
            }
        }

        if (medium == MEDIUM_UNK) {
            AudioLoad_StartAsyncLoadUnkMedium((s16)table->unkMediumParam, romAddr, ramAddr, size, medium, nChunks,
                                              retQueue, MK_ASYNC_MSG(retData, tableType, realId, loadStatus));
        } else {
            AudioLoad_StartAsyncLoad(romAddr, ramAddr, size, medium, nChunks, retQueue,
                                     MK_ASYNC_MSG(retData, tableType, realId, loadStatus));
        }

        loadStatus = LOAD_STATUS_IN_PROGRESS;
    }

    switch (tableType) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(realId, loadStatus);
            break;
        case FONT_TABLE:
            AudioLoad_SetFontLoadStatus(realId, loadStatus);
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleFontLoadStatusAndApplyCaches(realId, loadStatus);
            break;
        default:
            break;
    }

    return ramAddr;
}

void AudioLoad_ProcessLoads(s32 resetStatus) {
    AudioLoad_ProcessSlowLoads(resetStatus);
    AudioLoad_ProcessSamplePreloads(resetStatus);
    AudioLoad_ProcessAsyncLoads(resetStatus);
}

void AudioLoad_SetDmaHandler(DmaHandler callback) {
    sDmaHandler = callback;
}

void AudioLoad_SetUnusedHandler(void* callback) {
    sUnusedHandler = callback;
}

void AudioLoad_InitSoundFont(s32 fontId) {
    SoundFont* font = &gAudioContext.soundFontList[fontId];
    AudioTableEntry* entry = &gAudioContext.soundFontTable->entries[fontId];

    font->sampleBankId1 = (entry->shortData1 >> 8) & 0xFF;
    font->sampleBankId2 = (entry->shortData1) & 0xFF;
    font->numInstruments = (entry->shortData2 >> 8) & 0xFF;
    font->numDrums = entry->shortData2 & 0xFF;
    font->numSfx = entry->shortData3;
}

void AudioLoad_Init(void* heap, size_t heapSize) {
    s32 pad1[9];
    s32 numFonts;
    s32 pad2[2];
    u8* audioContextPtr;
    void* addr;
    s32 i;
    s32 j;

    D_80208E68 = NULL;
    D_80208E70 = NULL;
    D_80208E74 = NULL;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.unk_29A8); i++) {
        gAudioContext.unk_29A8[i] = NULL;
    }

    gAudioContext.resetTimer = 0;
    gAudioContext.unk_29B8 = false;

    // Set all of gAudioContext to 0
    audioContextPtr = (u8*)&gAudioContext;
    for (j = sizeof(gAudioContext); j >= 0; j--) {
        *audioContextPtr++ = 0;
    }

    switch (osTvType) {
        case OS_TV_PAL:
            gAudioContext.unk_2960 = 20.03042f;
            gAudioContext.refreshRate = 50;
            break;

        case OS_TV_MPAL:
            gAudioContext.unk_2960 = 16.546f;
            gAudioContext.refreshRate = 60;
            break;

        case OS_TV_NTSC:
        default:
            gAudioContext.unk_2960 = 16.713f;
            gAudioContext.refreshRate = 60;
    }

    AudioThread_InitMesgQueues();

    for (i = 0; i < ARRAY_COUNT(gAudioContext.aiBufNumSamples); i++) {
        gAudioContext.aiBufNumSamples[i] = 0xA0;
    }

    gAudioContext.totalTaskCount = 0;
    gAudioContext.rspTaskIndex = 0;
    gAudioContext.curAiBufferIndex = 0;
    gAudioContext.soundMode = SOUNDMODE_STEREO;
    gAudioContext.curTask = NULL;
    gAudioContext.rspTask[0].task.t.dataSize = 0;
    gAudioContext.rspTask[1].task.t.dataSize = 0;

    osCreateMesgQueue(&gAudioContext.syncDmaQueue, &gAudioContext.syncDmaMesg, 1);
    osCreateMesgQueue(&gAudioContext.curAudioFrameDmaQueue, gAudioContext.currAudioFrameDmaMesgBuf,
                      ARRAY_COUNT(gAudioContext.currAudioFrameDmaMesgBuf));
    osCreateMesgQueue(&gAudioContext.externalLoadQueue, gAudioContext.externalLoadMesgBuf,
                      ARRAY_COUNT(gAudioContext.externalLoadMesgBuf));
    osCreateMesgQueue(&gAudioContext.preloadSampleQueue, gAudioContext.preloadSampleMesgBuf,
                      ARRAY_COUNT(gAudioContext.preloadSampleMesgBuf));
    gAudioContext.curAudioFrameDmaCount = 0;
    gAudioContext.sampleDmaCount = 0;
    gAudioContext.cartHandle = osCartRomInit();

    if (heap == NULL) {
        gAudioContext.audioHeap = gAudioHeap;
        gAudioContext.audioHeapSize = gAudioHeapInitSizes.heapSize;
    } else {
        void** hp = &heap;

        gAudioContext.audioHeap = *hp;
        gAudioContext.audioHeapSize = heapSize;
    }

    for (i = 0; i < ((s32)gAudioContext.audioHeapSize / (s32)sizeof(u64)); i++) {
        ((u64*)gAudioContext.audioHeap)[i] = 0;
    }

    // Main Pool Split (split entirety of audio heap into initPool and sessionPool)
    AudioHeap_InitMainPool(gAudioHeapInitSizes.initPoolSize);

    // Initialize the audio interface buffers
    for (i = 0; i < ARRAY_COUNT(gAudioContext.aiBuffers); i++) {
        gAudioContext.aiBuffers[i] = AudioHeap_AllocZeroed(&gAudioContext.initPool, AIBUF_LEN * sizeof(s16));
    }

    // Connect audio tables to their tables in memory
    gAudioContext.sequenceTable = (AudioTable*)gSequenceTable;
    gAudioContext.soundFontTable = (AudioTable*)gSoundFontTable;
    gAudioContext.sampleBankTable = (AudioTable*)gSampleBankTable;
    gAudioContext.sequenceFontTable = gSequenceFontTable;

    gAudioContext.numSequences = gAudioContext.sequenceTable->numEntries;

    gAudioContext.audioResetSpecIdToLoad = 0;
    gAudioContext.resetStatus = 1; // Set reset to immediately initialize the audio heap
    AudioHeap_ResetStep();

    // Initialize audio tables
    AudioLoad_InitTable(gAudioContext.sequenceTable, SEGMENT_ROM_START(Audioseq), 0);
    AudioLoad_InitTable(gAudioContext.soundFontTable, SEGMENT_ROM_START(Audiobank), 0);
    AudioLoad_InitTable(gAudioContext.sampleBankTable, SEGMENT_ROM_START(Audiotable), 0);

    numFonts = gAudioContext.soundFontTable->numEntries;
    gAudioContext.soundFontList = AudioHeap_Alloc(&gAudioContext.initPool, numFonts * sizeof(SoundFont));

    for (i = 0; i < numFonts; i++) {
        AudioLoad_InitSoundFont(i);
    }

    if (addr = AudioHeap_Alloc(&gAudioContext.initPool, gAudioHeapInitSizes.permanentPoolSize), addr == NULL) {
        // cast away const from gAudioHeapInitSizes
        *((u32*)&gAudioHeapInitSizes.permanentPoolSize) = 0;
    }

    AudioHeap_InitPool(&gAudioContext.permanentPool, addr, gAudioHeapInitSizes.permanentPoolSize);
    gAudioContextInitalized = true;
    osSendMesg(gAudioContext.taskStartQueueP, (void*)gAudioContext.totalTaskCount, OS_MESG_NOBLOCK);
}

void AudioLoad_InitSlowLoads(void) {
    gAudioContext.slowLoads[0].status = 0;
    gAudioContext.slowLoads[1].status = 0;
}

s32 AudioLoad_SlowLoadSample(s32 fontId, s32 instId, s8* isDone) {
    Sample* sample;
    AudioSlowLoad* slowLoad;

    sample = AudioLoad_GetFontSample(fontId, instId);
    if (sample == NULL) {
        *isDone = 0;
        return -1;
    }

    if (sample->medium == MEDIUM_RAM) {
        *isDone = 2;
        return 0;
    }

    slowLoad = &gAudioContext.slowLoads[gAudioContext.slowLoadPos];
    if (slowLoad->status == LOAD_STATUS_DONE) {
        slowLoad->status = LOAD_STATUS_WAITING;
    }

    slowLoad->sample = *sample;
    slowLoad->isDone = isDone;
    slowLoad->curRamAddr =
        AudioHeap_AllocSampleCache(sample->size, fontId, sample->sampleAddr, (s32)sample->medium, CACHE_TEMPORARY);

    if (slowLoad->curRamAddr == NULL) {
        if (sample->medium == MEDIUM_UNK || sample->codec == CODEC_S16_INMEMORY) {
            *isDone = 0;
            return -1;
        } else {
            *isDone = 3;
            return -1;
        }
    }

    slowLoad->status = LOAD_STATUS_START;
    slowLoad->bytesRemaining = ALIGN16(sample->size);
    slowLoad->ramAddr = slowLoad->curRamAddr;
    slowLoad->curDevAddr = sample->sampleAddr;
    slowLoad->medium = sample->medium;
    slowLoad->seqOrFontId = fontId;
    slowLoad->instId = instId;

    if (slowLoad->medium == MEDIUM_UNK) {
        slowLoad->unkMediumParam = gAudioContext.sampleBankTable->unkMediumParam;
    }

    gAudioContext.slowLoadPos ^= 1;
    return 0;
}

Sample* AudioLoad_GetFontSample(s32 fontId, s32 instId) {
    Sample* sample;

    if (instId < 0x80) {
        Instrument* instrument = AudioPlayback_GetInstrumentInner(fontId, instId);

        if (instrument == NULL) {
            return NULL;
        }
        sample = instrument->normalPitchTunedSample.sample;
    } else if (instId < 0x100) {
        Drum* drum = AudioPlayback_GetDrum(fontId, instId - 0x80);

        if (drum == NULL) {
            return NULL;
        }
        sample = drum->tunedSample.sample;
    } else {
        SoundEffect* soundEffect = AudioPlayback_GetSoundEffect(fontId, instId - 0x100);

        if (soundEffect == NULL) {
            return NULL;
        }
        sample = soundEffect->tunedSample.sample;
    }

    return sample;
}

void AudioLoad_Unused2(void) {
}

void AudioLoad_FinishSlowLoad(AudioSlowLoad* slowLoad) {
    Sample* sample;

    if (slowLoad->sample.sampleAddr == NULL) {
        return;
    }

    sample = AudioLoad_GetFontSample(slowLoad->seqOrFontId, slowLoad->instId);
    if (sample == NULL) {
        return;
    }

    slowLoad->sample = *sample;
    sample->sampleAddr = slowLoad->ramAddr;
    sample->medium = MEDIUM_RAM;
}

void AudioLoad_ProcessSlowLoads(s32 resetStatus) {
    AudioSlowLoad* slowLoad;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.slowLoads); i++) {
        slowLoad = &gAudioContext.slowLoads[i];
        switch (gAudioContext.slowLoads[i].status) {
            case LOAD_STATUS_LOADING:
                if (slowLoad->medium != MEDIUM_UNK) {
                    osRecvMesg(&slowLoad->msgqueue, NULL, OS_MESG_BLOCK);
                }

                if (resetStatus != 0) {
                    slowLoad->status = LOAD_STATUS_DONE;
                    continue;
                }
            case LOAD_STATUS_START:
                slowLoad->status = LOAD_STATUS_LOADING;
                if (slowLoad->bytesRemaining == 0) {
                    AudioLoad_FinishSlowLoad(slowLoad);
                    slowLoad->status = LOAD_STATUS_DONE;
                    *slowLoad->isDone = 1;
                } else if ((s32)slowLoad->bytesRemaining < 0x400) {
                    if (slowLoad->medium == MEDIUM_UNK) {
                        size_t size = slowLoad->bytesRemaining;

                        AudioLoad_DmaSlowCopyUnkMedium(slowLoad->curDevAddr, slowLoad->curRamAddr, size,
                                                       slowLoad->unkMediumParam);
                    } else {
                        AudioLoad_DmaSlowCopy(slowLoad, slowLoad->bytesRemaining);
                    }
                    slowLoad->bytesRemaining = 0;
                } else {
                    if (slowLoad->medium == MEDIUM_UNK) {
                        AudioLoad_DmaSlowCopyUnkMedium(slowLoad->curDevAddr, slowLoad->curRamAddr, 0x400,
                                                       slowLoad->unkMediumParam);
                    } else {
                        AudioLoad_DmaSlowCopy(slowLoad, 0x400);
                    }
                    slowLoad->bytesRemaining -= 0x400;
                    slowLoad->curRamAddr += 0x400;
                    slowLoad->curDevAddr += 0x400;
                }
                break;
        }
    }
}

void AudioLoad_DmaSlowCopy(AudioSlowLoad* slowLoad, size_t size) {
    Audio_InvalDCache(slowLoad->curRamAddr, size);
    osCreateMesgQueue(&slowLoad->msgqueue, &slowLoad->msg, 1);
    AudioLoad_Dma(&slowLoad->ioMesg, OS_MESG_PRI_NORMAL, OS_READ, slowLoad->curDevAddr, slowLoad->curRamAddr, size,
                  &slowLoad->msgqueue, slowLoad->medium, "SLOWCOPY");
}

void AudioLoad_DmaSlowCopyUnkMedium(intptr_t devAddr, intptr_t ramAddr, size_t size, s32 arg3) {
}

s32 AudioLoad_SlowLoadSeq(s32 seqId, u8* ramAddr, s8* isDone) {
    AudioSlowLoad* slowLoad;
    AudioTable* seqTable;
    size_t size;

    if (seqId >= gAudioContext.numSequences) {
        *isDone = 0;
        return -1;
    }

    seqId = AudioLoad_GetRealTableIndex(SEQUENCE_TABLE, seqId);
    seqTable = AudioLoad_GetLoadTable(SEQUENCE_TABLE);
    slowLoad = &gAudioContext.slowLoads[gAudioContext.slowLoadPos];
    if (slowLoad->status == LOAD_STATUS_DONE) {
        slowLoad->status = LOAD_STATUS_WAITING;
    }

    slowLoad->sample.sampleAddr = NULL;
    slowLoad->isDone = isDone;
    size = seqTable->entries[seqId].size;
    size = ALIGN16(size);
    slowLoad->curRamAddr = ramAddr;
    slowLoad->status = LOAD_STATUS_START;
    slowLoad->bytesRemaining = size;
    slowLoad->ramAddr = ramAddr;
    slowLoad->curDevAddr = seqTable->entries[seqId].romAddr;
    slowLoad->medium = seqTable->entries[seqId].medium;
    slowLoad->seqOrFontId = seqId;

    if (slowLoad->medium == MEDIUM_UNK) {
        slowLoad->unkMediumParam = seqTable->unkMediumParam;
    }

    gAudioContext.slowLoadPos ^= 1;
    return 0;
}

void AudioLoad_InitAsyncLoads(void) {
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        gAudioContext.asyncLoads[i].status = 0;
    }
}

AudioAsyncLoad* AudioLoad_StartAsyncLoadUnkMedium(s32 unkMediumParam, uintptr_t devAddr, void* ramAddr, size_t size,
                                                  s32 medium, s32 nChunks, OSMesgQueue* retQueue, s32 retMsg) {
    AudioAsyncLoad* asyncLoad;

    asyncLoad = AudioLoad_StartAsyncLoad(devAddr, ramAddr, size, medium, nChunks, retQueue, retMsg);
    if (asyncLoad == NULL) {
        return NULL;
    }

    osSendMesg(&gAudioContext.asyncLoadUnkMediumQueue, asyncLoad, OS_MESG_NOBLOCK);
    asyncLoad->unkMediumParam = unkMediumParam;
    return asyncLoad;
}

AudioAsyncLoad* AudioLoad_StartAsyncLoad(uintptr_t devAddr, void* ramAddr, size_t size, s32 medium, s32 nChunks,
                                         OSMesgQueue* retQueue, s32 retMsg) {
    AudioAsyncLoad* asyncLoad;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        if (gAudioContext.asyncLoads[i].status == 0) {
            asyncLoad = &gAudioContext.asyncLoads[i];
            break;
        }
    }

    // no more available async loads
    if (i == ARRAY_COUNT(gAudioContext.asyncLoads)) {
        return NULL;
    }

    asyncLoad->status = LOAD_STATUS_START;
    asyncLoad->curDevAddr = devAddr;
    asyncLoad->ramAddr = ramAddr;
    asyncLoad->curRamAddr = ramAddr;
    asyncLoad->bytesRemaining = size;

    if (nChunks == 0) {
        asyncLoad->chunkSize = 0x1000;
    } else if (nChunks == 1) {
        asyncLoad->chunkSize = size;
    } else {
        asyncLoad->chunkSize = ALIGN256((s32)size / nChunks);
        if (asyncLoad->chunkSize < 0x100) {
            asyncLoad->chunkSize = 0x100;
        }
    }

    asyncLoad->retQueue = retQueue;
    asyncLoad->delay = 3;
    asyncLoad->medium = medium;
    asyncLoad->retMsg = retMsg;
    osCreateMesgQueue(&asyncLoad->msgQueue, &asyncLoad->msg, 1);
    return asyncLoad;
}

void AudioLoad_ProcessAsyncLoads(s32 resetStatus) {
    AudioAsyncLoad* asyncLoad;
    s32 i;

    if (gAudioContext.resetTimer == 1) {
        return;
    }

    if (gAudioContext.curUnkMediumLoad == NULL) {
        if (resetStatus != 0) {
            // Clear and ignore queue if resetting.
            do {
            } while (osRecvMesg(&gAudioContext.asyncLoadUnkMediumQueue, (OSMesg*)&asyncLoad, OS_MESG_NOBLOCK) != -1);
        } else if (osRecvMesg(&gAudioContext.asyncLoadUnkMediumQueue, (OSMesg*)&asyncLoad, OS_MESG_NOBLOCK) == -1) {
            gAudioContext.curUnkMediumLoad = NULL;
        } else {
            gAudioContext.curUnkMediumLoad = asyncLoad;
        }
    }

    if (gAudioContext.curUnkMediumLoad != NULL) {
        AudioLoad_ProcessAsyncLoadUnkMedium(gAudioContext.curUnkMediumLoad, resetStatus);
    }

    for (i = 0; i < ARRAY_COUNT(gAudioContext.asyncLoads); i++) {
        if (gAudioContext.asyncLoads[i].status == 1) {
            asyncLoad = &gAudioContext.asyncLoads[i];
            if (asyncLoad->medium != MEDIUM_UNK) {
                AudioLoad_ProcessAsyncLoad(asyncLoad, resetStatus);
            }
        }
    }
}

void AudioLoad_ProcessAsyncLoadUnkMedium(AudioAsyncLoad* asyncLoad, s32 resetStatus) {
}

void AudioLoad_FinishAsyncLoad(AudioAsyncLoad* asyncLoad) {
    u32 retMsg = asyncLoad->retMsg;
    u32 fontId;
    u32 pad;
    OSMesg doneMsg;
    u32 sampleBankId1;
    u32 sampleBankId2;
    SampleBankRelocInfo sampleBankReloc;

    if (1) {}
    switch (ASYNC_TBLTYPE(retMsg)) {
        case SEQUENCE_TABLE:
            AudioLoad_SetSeqLoadStatus(ASYNC_ID(retMsg), ASYNC_STATUS(retMsg));
            break;
        case SAMPLE_TABLE:
            AudioLoad_SetSampleFontLoadStatusAndApplyCaches(ASYNC_ID(retMsg), ASYNC_STATUS(retMsg));
            break;
        case FONT_TABLE:
            fontId = ASYNC_ID(retMsg);
            sampleBankId1 = gAudioContext.soundFontList[fontId].sampleBankId1;
            sampleBankId2 = gAudioContext.soundFontList[fontId].sampleBankId2;
            sampleBankReloc.sampleBankId1 = sampleBankId1;
            sampleBankReloc.sampleBankId2 = sampleBankId2;
            sampleBankReloc.baseAddr1 =
                (sampleBankId1 != 0xFF) ? AudioLoad_GetSampleBank(sampleBankId1, &sampleBankReloc.medium1) : 0;
            sampleBankReloc.baseAddr2 =
                (sampleBankId2 != 0xFF) ? AudioLoad_GetSampleBank(sampleBankId2, &sampleBankReloc.medium2) : 0;
            AudioLoad_SetFontLoadStatus(fontId, ASYNC_STATUS(retMsg));
            AudioLoad_RelocateFontAndPreloadSamples(fontId, asyncLoad->ramAddr, &sampleBankReloc, true);
            break;
    }

    doneMsg = asyncLoad->retMsg;
    if (1) {}
    asyncLoad->status = LOAD_STATUS_WAITING;
    osSendMesg(asyncLoad->retQueue, doneMsg, OS_MESG_NOBLOCK);
}

void AudioLoad_ProcessAsyncLoad(AudioAsyncLoad* asyncLoad, s32 resetStatus) {
    AudioTable* sampleBankTable = gAudioContext.sampleBankTable;

    if (asyncLoad->delay >= 2) {
        asyncLoad->delay--;
        return;
    }

    if (asyncLoad->delay == 1) {
        asyncLoad->delay = 0;
    } else if (resetStatus != 0) {
        // Await the previous DMA response synchronously, then return.
        osRecvMesg(&asyncLoad->msgQueue, NULL, OS_MESG_BLOCK);
        asyncLoad->status = LOAD_STATUS_WAITING;
        return;
    } else if (osRecvMesg(&asyncLoad->msgQueue, NULL, OS_MESG_NOBLOCK) == -1) {
        // If the previous DMA step isn't done, return.
        return;
    }

    if (asyncLoad->bytesRemaining == 0) {
        AudioLoad_FinishAsyncLoad(asyncLoad);
        return;
    }

    if (asyncLoad->bytesRemaining < asyncLoad->chunkSize) {
        if (asyncLoad->medium == MEDIUM_UNK) {
            AudioLoad_AsyncDmaUnkMedium(asyncLoad->curDevAddr, asyncLoad->curRamAddr, asyncLoad->bytesRemaining,
                                        sampleBankTable->unkMediumParam);
        } else if (asyncLoad->medium == MEDIUM_RAM_UNLOADED) {
            AudioLoad_AsyncDmaRamUnloaded(asyncLoad, asyncLoad->bytesRemaining);
        } else {
            AudioLoad_AsyncDma(asyncLoad, asyncLoad->bytesRemaining);
        }
        asyncLoad->bytesRemaining = 0;
        return;
    }

    if (asyncLoad->medium == MEDIUM_UNK) {
        AudioLoad_AsyncDmaUnkMedium(asyncLoad->curDevAddr, asyncLoad->curRamAddr, asyncLoad->chunkSize,
                                    sampleBankTable->unkMediumParam);
    } else if (asyncLoad->medium == MEDIUM_RAM_UNLOADED) {
        AudioLoad_AsyncDmaRamUnloaded(asyncLoad, asyncLoad->chunkSize);
    } else {
        AudioLoad_AsyncDma(asyncLoad, asyncLoad->chunkSize);
    }

    asyncLoad->bytesRemaining -= asyncLoad->chunkSize;
    asyncLoad->curDevAddr += asyncLoad->chunkSize;
    asyncLoad->curRamAddr = asyncLoad->curRamAddr + asyncLoad->chunkSize;
}

void AudioLoad_AsyncDma(AudioAsyncLoad* asyncLoad, size_t size) {
    if (size) {}
    size = ALIGN16(size);
    Audio_InvalDCache(asyncLoad->curRamAddr, size);
    osCreateMesgQueue(&asyncLoad->msgQueue, &asyncLoad->msg, 1);
    AudioLoad_Dma(&asyncLoad->ioMesg, OS_MESG_PRI_NORMAL, OS_READ, asyncLoad->curDevAddr, asyncLoad->curRamAddr, size,
                  &asyncLoad->msgQueue, asyncLoad->medium, "BGCOPY");
}

void AudioLoad_AsyncDmaRamUnloaded(AudioAsyncLoad* asyncLoad, size_t size) {
    if (size) {}
    size = ALIGN16(size);
    Audio_InvalDCache(asyncLoad->curRamAddr, size);
    osCreateMesgQueue(&asyncLoad->msgQueue, &asyncLoad->msg, 1);
    bcopy(asyncLoad->curDevAddr, asyncLoad->curRamAddr, size);
    osSendMesg(&asyncLoad->msgQueue, NULL, OS_MESG_NOBLOCK);
}

void AudioLoad_AsyncDmaUnkMedium(uintptr_t devAddr, void* ramAddr, size_t size, s16 arg3) {
}

/**
 * Read and extract information from TunedSample and its Sample
 * contained in the soundFont binary loaded into ram
 * TunedSample contains metadata on a sample used by a particular instrument/drum/sfx
 * Also relocate offsets into pointers within this loaded TunedSample
 *
 * @param fontId index of font being processed
 * @param fontData ram address of raw soundfont binary loaded into cache
 * @param sampleBankReloc information on the sampleBank containing raw audio samples
 */
void AudioLoad_RelocateSample(TunedSample* tunedSample, SoundFontData* fontData, SampleBankRelocInfo* sampleBankReloc) {
    Sample* sample;
    void* reloc;

    // Relocate an offset (relative to data loaded in ram at `base`) to a pointer (a ram address)
#define AUDIO_RELOC(v, base) (reloc = (void*)((uintptr_t)(v) + (uintptr_t)(base)))

    if ((uintptr_t)tunedSample->sample <= AUDIO_RELOCATED_ADDRESS_START) {

        sample = tunedSample->sample = AUDIO_RELOC(tunedSample->sample, fontData);

        // If the sample exists and has not already been relocated
        // Note: this is important, as the same sample can be used by different drums, sound effects, instruments
        if ((sample->size != 0) && (sample->isRelocated != true)) {
            sample->loop = AUDIO_RELOC(sample->loop, fontData);
            sample->book = AUDIO_RELOC(sample->book, fontData);

            // Resolve the sample medium 2-bit bitfield into a real value based on sampleBankReloc.
            // Then relocate the offset sample within the sampleBank (not the fontData) into absolute address.
            // sampleAddr can be either rom or ram depending on sampleBank cache policy
            // in practice, this is always in rom
            switch (sample->medium) {
                case 0:
                    sample->sampleAddr = AUDIO_RELOC(sample->sampleAddr, sampleBankReloc->baseAddr1);
                    sample->medium = sampleBankReloc->medium1;
                    break;

                case 1:
                    sample->sampleAddr = AUDIO_RELOC(sample->sampleAddr, sampleBankReloc->baseAddr2);
                    sample->medium = sampleBankReloc->medium2;
                    break;

                case 2:
                case 3:
                    // Invalid? This leaves sample->medium as MEDIUM_CART and MEDIUM_DISK_DRIVE
                    // respectively, and the sampleAddr unrelocated.
                    break;
            }

            sample->isRelocated = true;

            if (sample->unk_bit26 && (sample->medium != MEDIUM_RAM)) {
                gAudioContext.usedSamples[gAudioContext.numUsedSamples++] = sample;
            }
        }
    }
}

#undef AUDIO_RELOC

/**
 * @param fontId index of font being processed
 * @param fontData ram address of raw soundfont binary loaded into cache
 * @param sampleBankReloc information on the sampleBank containing raw audio samples
 * @param isAsync bool for whether this is an asynchronous load or not
 */
void AudioLoad_RelocateFontAndPreloadSamples(s32 fontId, SoundFontData* fontData, SampleBankRelocInfo* sampleBankReloc,
                                             s32 isAsync) {
    AudioPreloadReq* preload;
    AudioPreloadReq* topPreload;
    Sample* sample;
    size_t size;
    s32 nChunks;
    u8* sampleRamAddr;
    s32 preloadInProgress;
    s32 i;

    preloadInProgress = false;
    if (gAudioContext.preloadSampleStackTop != 0) {
        preloadInProgress = true;
    } else {
        D_801FD1E0 = 0;
    }

    gAudioContext.numUsedSamples = 0;
    AudioLoad_RelocateFont(fontId, fontData, sampleBankReloc);

    size = 0;
    for (i = 0; i < gAudioContext.numUsedSamples; i++) {
        size += ALIGN16(gAudioContext.usedSamples[i]->size);
    }
    if (size && size) {}

    for (i = 0; i < gAudioContext.numUsedSamples; i++) {
        if (gAudioContext.preloadSampleStackTop == 120) {
            break;
        }

        sample = gAudioContext.usedSamples[i];
        sampleRamAddr = NULL;
        switch (isAsync) {
            case false:
                if (sample->medium == sampleBankReloc->medium1) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId1,
                                                               sample->sampleAddr, sample->medium, CACHE_PERSISTENT);
                } else if (sample->medium == sampleBankReloc->medium2) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId2,
                                                               sample->sampleAddr, sample->medium, CACHE_PERSISTENT);
                } else if (sample->medium == MEDIUM_DISK_DRIVE) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, 0xFE, sample->sampleAddr, sample->medium,
                                                               CACHE_PERSISTENT);
                }
                break;

            case true:
                if (sample->medium == sampleBankReloc->medium1) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId1,
                                                               sample->sampleAddr, sample->medium, CACHE_TEMPORARY);
                } else if (sample->medium == sampleBankReloc->medium2) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId2,
                                                               sample->sampleAddr, sample->medium, CACHE_TEMPORARY);
                } else if (sample->medium == MEDIUM_DISK_DRIVE) {
                    sampleRamAddr = AudioHeap_AllocSampleCache(sample->size, 0xFE, sample->sampleAddr, sample->medium,
                                                               CACHE_TEMPORARY);
                }
                break;

            default:
                break;
        }
        if (sampleRamAddr == NULL) {
            continue;
        }

        switch (isAsync) {
            case false:
                if (sample->medium == MEDIUM_UNK) {
                    AudioLoad_SyncDmaUnkMedium((uintptr_t)sample->sampleAddr, sampleRamAddr, sample->size,
                                               gAudioContext.sampleBankTable->unkMediumParam);
                    sample->sampleAddr = sampleRamAddr;
                    sample->medium = MEDIUM_RAM;
                } else {
                    AudioLoad_SyncDma((uintptr_t)sample->sampleAddr, sampleRamAddr, sample->size, sample->medium);
                    sample->sampleAddr = sampleRamAddr;
                    sample->medium = MEDIUM_RAM;
                }
                if (sample->medium == MEDIUM_DISK_DRIVE) {}
                break;

            case true:
                preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop];
                preload->sample = sample;
                preload->ramAddr = sampleRamAddr;
                preload->encodedInfo = (gAudioContext.preloadSampleStackTop << 24) | 0xFFFFFF;
                preload->isFree = false;
                preload->endAndMediumKey = (uintptr_t)sample->sampleAddr + sample->size + sample->medium;
                gAudioContext.preloadSampleStackTop++;
                break;

            default:
                break;
        }
    }
    gAudioContext.numUsedSamples = 0;

    if (gAudioContext.preloadSampleStackTop != 0 && !preloadInProgress) {
        topPreload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
        sample = topPreload->sample;
        nChunks = (sample->size >> 12) + 1;
        AudioLoad_StartAsyncLoad((uintptr_t)sample->sampleAddr, topPreload->ramAddr, sample->size, sample->medium,
                                 nChunks, &gAudioContext.preloadSampleQueue, topPreload->encodedInfo);
    }
}

s32 AudioLoad_ProcessSamplePreloads(s32 resetStatus) {
    Sample* sample;
    AudioPreloadReq* preload;
    u32 preloadIndex;
    u32 key;
    u32 nChunks;
    s32 pad;

    if (gAudioContext.preloadSampleStackTop > 0) {
        if (resetStatus != 0) {
            // Clear result queue and preload stack and return.
            osRecvMesg(&gAudioContext.preloadSampleQueue, (OSMesg*)&preloadIndex, OS_MESG_NOBLOCK);
            gAudioContext.preloadSampleStackTop = 0;
            return false;
        }
        if (osRecvMesg(&gAudioContext.preloadSampleQueue, (OSMesg*)&preloadIndex, OS_MESG_NOBLOCK) == -1) {
            // Previous preload is not done yet.
            return false;
        }

        preloadIndex >>= 24;
        preload = &gAudioContext.preloadSampleStack[preloadIndex];

        if (preload->isFree == false) {
            sample = preload->sample;
            key = (uintptr_t)sample->sampleAddr + sample->size + sample->medium;
            if (key == preload->endAndMediumKey) {
                // Change storage for sample to the preloaded version.
                sample->sampleAddr = preload->ramAddr;
                sample->medium = MEDIUM_RAM;
            }
            preload->isFree = true;
        }

        // Pop requests with isFree = true off the stack, as far as possible,
        // and dispatch the next DMA.
        for (;;) {
            if (gAudioContext.preloadSampleStackTop <= 0) {
                break;
            }
            preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
            if (preload->isFree == true) {
                gAudioContext.preloadSampleStackTop--;
                continue;
            }

            sample = preload->sample;
            nChunks = (sample->size >> 12) + 1;
            key = (uintptr_t)sample->sampleAddr + sample->size + sample->medium;
            if (key != preload->endAndMediumKey) {
                preload->isFree = true;
                gAudioContext.preloadSampleStackTop--;
            } else {
                AudioLoad_StartAsyncLoad((uintptr_t)sample->sampleAddr, preload->ramAddr, sample->size, sample->medium,
                                         nChunks, &gAudioContext.preloadSampleQueue, preload->encodedInfo);
                break;
            }
        }
    }
    return true;
}

s32 AudioLoad_AddToSampleSet(Sample* sample, s32 numSamples, Sample** sampleSet) {
    s32 i;

    for (i = 0; i < numSamples; i++) {
        if (sample->sampleAddr == sampleSet[i]->sampleAddr) {
            break;
        }
    }

    if (i == numSamples) {
        sampleSet[numSamples] = sample;
        numSamples++;
    }

    return numSamples;
}

s32 AudioLoad_GetSamplesForFont(s32 fontId, Sample** sampleSet) {
    s32 i;
    s32 numSamples = 0;
    s32 numDrums = gAudioContext.soundFontList[fontId].numDrums;
    s32 numInstruments = gAudioContext.soundFontList[fontId].numInstruments;

    for (i = 0; i < numDrums; i++) {
        Drum* drum = AudioPlayback_GetDrum(fontId, i);

        if (1) {}
        if (drum != NULL) {
            numSamples = AudioLoad_AddToSampleSet(drum->tunedSample.sample, numSamples, sampleSet);
        }
    }

    for (i = 0; i < numInstruments; i++) {
        Instrument* instrument = AudioPlayback_GetInstrumentInner(fontId, i);

        if (instrument != NULL) {
            if (instrument->normalRangeLo != 0) {
                numSamples = AudioLoad_AddToSampleSet(instrument->lowPitchTunedSample.sample, numSamples, sampleSet);
            }
            if (instrument->normalRangeHi != 0x7F) {
                numSamples = AudioLoad_AddToSampleSet(instrument->highPitchTunedSample.sample, numSamples, sampleSet);
            }
            numSamples = AudioLoad_AddToSampleSet(instrument->normalPitchTunedSample.sample, numSamples, sampleSet);
        }
    }

    // Should really also process sfx, but this method is never called
    return numSamples;
}

void AudioLoad_AddUsedSample(TunedSample* tunedSample) {
    Sample* sample = tunedSample->sample;

    if ((sample->size != 0) && (sample->unk_bit26) && (sample->medium != MEDIUM_RAM)) {
        gAudioContext.usedSamples[gAudioContext.numUsedSamples++] = sample;
    }
}

void AudioLoad_PreloadSamplesForFont(s32 fontId, s32 async, SampleBankRelocInfo* sampleBankReloc) {
    s32 numDrums;
    s32 numInstruments;
    s32 numSfx;
    Drum* drum;
    Instrument* instrument;
    SoundEffect* soundEffect;
    AudioPreloadReq* preload;
    AudioPreloadReq* topPreload;
    u8* addr;
    size_t size;
    s32 i;
    Sample* sample;
    s32 preloadInProgress;
    s32 nChunks;

    preloadInProgress = false;
    if (gAudioContext.preloadSampleStackTop != 0) {
        preloadInProgress = true;
    }

    gAudioContext.numUsedSamples = 0;

    numDrums = gAudioContext.soundFontList[fontId].numDrums;
    numInstruments = gAudioContext.soundFontList[fontId].numInstruments;
    numSfx = gAudioContext.soundFontList[fontId].numSfx;

    for (i = 0; i < numInstruments; i++) {
        instrument = AudioPlayback_GetInstrumentInner(fontId, i);
        if (instrument != NULL) {
            if (instrument->normalRangeLo != 0) {
                AudioLoad_AddUsedSample(&instrument->lowPitchTunedSample);
            }
            if (instrument->normalRangeHi != 0x7F) {
                AudioLoad_AddUsedSample(&instrument->highPitchTunedSample);
            }
            AudioLoad_AddUsedSample(&instrument->normalPitchTunedSample);
        }
    }

    for (i = 0; i < numDrums; i++) {
        drum = AudioPlayback_GetDrum(fontId, i);
        if (drum != NULL) {
            AudioLoad_AddUsedSample(&drum->tunedSample);
        }
    }

    for (i = 0; i < numSfx; i++) {
        soundEffect = AudioPlayback_GetSoundEffect(fontId, i);
        if (soundEffect != NULL) {
            AudioLoad_AddUsedSample(&soundEffect->tunedSample);
        }
    }

    if (gAudioContext.numUsedSamples == 0) {
        return;
    }

    size = 0;
    for (i = 0; i < gAudioContext.numUsedSamples; i++) {
        size += ALIGN16(gAudioContext.usedSamples[i]->size);
    }
    if (size) {}

    for (i = 0; i < gAudioContext.numUsedSamples; i++) {
        if (gAudioContext.preloadSampleStackTop == 120) {
            break;
        }

        sample = gAudioContext.usedSamples[i];
        if (sample->medium == MEDIUM_RAM) {
            continue;
        }

        switch (async) {
            case false:
                if (sample->medium == sampleBankReloc->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, CACHE_PERSISTENT);
                } else if (sample->medium == sampleBankReloc->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, CACHE_PERSISTENT);
                }
                break;

            case true:
                if (sample->medium == sampleBankReloc->medium1) {
                    addr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId1, sample->sampleAddr,
                                                      sample->medium, CACHE_TEMPORARY);
                } else if (sample->medium == sampleBankReloc->medium2) {
                    addr = AudioHeap_AllocSampleCache(sample->size, sampleBankReloc->sampleBankId2, sample->sampleAddr,
                                                      sample->medium, CACHE_TEMPORARY);
                }
                break;
        }
        if (addr == NULL) {
            continue;
        }

        switch (async) {
            case false:
                if (sample->medium == MEDIUM_UNK) {
                    AudioLoad_SyncDmaUnkMedium((uintptr_t)sample->sampleAddr, addr, sample->size,
                                               gAudioContext.sampleBankTable->unkMediumParam);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                } else {
                    AudioLoad_SyncDma((uintptr_t)sample->sampleAddr, addr, sample->size, sample->medium);
                    sample->sampleAddr = addr;
                    sample->medium = MEDIUM_RAM;
                }
                break;

            case true:
                preload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop];
                preload->sample = sample;
                preload->ramAddr = addr;
                preload->encodedInfo = (gAudioContext.preloadSampleStackTop << 24) | 0xFFFFFF;
                preload->isFree = false;
                preload->endAndMediumKey = (uintptr_t)sample->sampleAddr + sample->size + sample->medium;
                gAudioContext.preloadSampleStackTop++;
                break;
        }
    }
    gAudioContext.numUsedSamples = 0;

    if (gAudioContext.preloadSampleStackTop != 0 && !preloadInProgress) {
        topPreload = &gAudioContext.preloadSampleStack[gAudioContext.preloadSampleStackTop - 1];
        sample = topPreload->sample;
        nChunks = (sample->size >> 12) + 1;
        AudioLoad_StartAsyncLoad((uintptr_t)sample->sampleAddr, topPreload->ramAddr, sample->size, sample->medium,
                                 nChunks, &gAudioContext.preloadSampleQueue, topPreload->encodedInfo);
    }
}

void AudioLoad_LoadPermanentSamples(void) {
    s32 pad;
    u32 fontId;
    AudioTable* sampleBankTable;
    s32 pad2;
    s32 i;

    sampleBankTable = AudioLoad_GetLoadTable(SAMPLE_TABLE);
    for (i = 0; i < gAudioContext.permanentPool.count; i++) {
        SampleBankRelocInfo sampleBankReloc;

        if (gAudioContext.permanentEntries[i].tableType == FONT_TABLE) {
            fontId = AudioLoad_GetRealTableIndex(FONT_TABLE, gAudioContext.permanentEntries[i].id);
            sampleBankReloc.sampleBankId1 = gAudioContext.soundFontList[fontId].sampleBankId1;
            sampleBankReloc.sampleBankId2 = gAudioContext.soundFontList[fontId].sampleBankId2;

            if (sampleBankReloc.sampleBankId1 != 0xFF) {
                sampleBankReloc.sampleBankId1 =
                    AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankReloc.sampleBankId1);
                sampleBankReloc.medium1 = sampleBankTable->entries[sampleBankReloc.sampleBankId1].medium;
            }

            if (sampleBankReloc.sampleBankId2 != 0xFF) {
                sampleBankReloc.sampleBankId2 =
                    AudioLoad_GetRealTableIndex(SAMPLE_TABLE, sampleBankReloc.sampleBankId2);
                sampleBankReloc.medium2 = sampleBankTable->entries[sampleBankReloc.sampleBankId2].medium;
            }
            AudioLoad_PreloadSamplesForFont(fontId, false, &sampleBankReloc);
        }
    }
}

void AudioLoad_Unused3(void) {
}

void AudioLoad_Unused4(void) {
}

void AudioLoad_Unused5(void) {
}

void AudioLoad_ScriptLoad(s32 tableType, s32 id, s8* isDone) {
    static u32 sLoadIndex = 0;

    sScriptLoadDonePointers[sLoadIndex] = isDone;
    AudioLoad_AsyncLoad(tableType, id, 0, sLoadIndex, &sScriptLoadQueue);
    sLoadIndex++;
    if (sLoadIndex == 0x10) {
        sLoadIndex = 0;
    }
}

void AudioLoad_ProcessScriptLoads(void) {
    u32 temp;
    u32 sp20;
    s8* isDone;

    if (osRecvMesg(&sScriptLoadQueue, (OSMesg*)&sp20, OS_MESG_NOBLOCK) != -1) {
        temp = sp20 >> 24;
        isDone = sScriptLoadDonePointers[temp];
        if (isDone != NULL) {
            *isDone = false;
        }
    }
}

void AudioLoad_InitScriptLoads(void) {
    osCreateMesgQueue(&sScriptLoadQueue, sScriptLoadMesgBuf, ARRAY_COUNT(sScriptLoadMesgBuf));
}
