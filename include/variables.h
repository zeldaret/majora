#ifndef VARIABLES_H
#define VARIABLES_H

#include "z64.h"
#include "segment_symbols.h"
#include "macros.h"

// data
extern size_t gDmaMgrDmaBuffSize;
extern vs32 gIrqMgrResetStatus;
extern volatile OSTime sIrqMgrResetTime;
extern volatile OSTime gIrqMgrRetraceTime;
extern s32 sIrqMgrRetraceCount;

// extern UNK_TYPE1 sGfxPrintFontTLUT;
// extern UNK_TYPE1 sGfxPrintRainbowTLUT;
// extern UNK_TYPE1 sGfxPrintRainbowData;
// extern UNK_TYPE1 sGfxPrintFontData;
// extern UNK_TYPE4 D_80097524;

extern u8 sYaz0DataBuffer[0x400];
extern u8* sYaz0CurDataEnd;
extern u32 sYaz0CurRomStart;
extern u32 sYaz0CurSize;
extern u8* sYaz0MaxPtr;
extern void* gYaz0DecompressDstEnd;

// extern UNK_TYPE4 D_8009CD10;
// extern UNK_TYPE4 sArenaLockMsg;

extern DmaEntry dmadata[1568];
// extern UNK_TYPE1 D_80186028;

extern u8 sDropTable[DROP_TABLE_SIZE * DROP_TABLE_NUMBER];
extern u8 sDropTableAmounts[DROP_TABLE_SIZE * DROP_TABLE_NUMBER];
extern s32 D_801AE194[32];
extern u8 D_801AE214[32];
// extern UNK_TYPE4 D_801AE240;
// extern UNK_TYPE4 D_801AE250;
extern UNK_PTR D_801AE260[3];
// extern UNK_TYPE4 D_801AE27C;
// extern UNK_TYPE4 D_801AE28C;
// extern UNK_TYPE4 D_801AE29C;
// extern UNK_TYPE4 D_801AE2AC;
// extern UNK_TYPE4 D_801AE2BC;
// extern UNK_TYPE4 D_801AE2CC;
// extern UNK_TYPE4 D_801AE2DC;
// extern EffectSsInfo sEffectSsInfo;
// extern UNK_TYPE1 D_801AE3B0;
// extern UNK_TYPE1 D_801AE3B4;
// extern UNK_TYPE4 D_801AE3B8;
// extern UNK_TYPE4 D_801AE3BC;
// extern UNK_TYPE1 D_801AE3C0;
// extern UNK_TYPE1 D_801AE3C4;
// extern UNK_TYPE1 D_801AE3C8;
// extern UNK_TYPE1 D_801AE3CC;
// extern UNK_TYPE4 D_801AE3D0;
// extern UNK_TYPE4 D_801AE3D4;
// extern UNK_TYPE4 D_801AE3D8;
// extern UNK_TYPE4 D_801AE3DC;
// extern UNK_TYPE4 D_801AE3E0;
// extern UNK_TYPE4 D_801AE3EC;
// extern UNK_TYPE1 D_801AE3F8;
// extern UNK_TYPE4 D_801AE3FC;
// extern UNK_TYPE4 D_801AE404;
// extern UNK_TYPE1 D_801AE47C;
// extern UNK_TYPE1 D_801AE480;
// extern UNK_TYPE1 D_801AE484;
// extern UNK_TYPE1 D_801AE485;
// extern UNK_TYPE1 D_801AE486;
// extern UNK_TYPE1 D_801AE488;
// extern UNK_TYPE1 D_801AE489;
// extern UNK_TYPE1 D_801AE48A;
// extern UNK_TYPE1 D_801AE48C;
// extern UNK_TYPE1 D_801AE490;
extern EffectSsOverlay gParticleOverlayTable[39];

// extern s32 sEntryIndex;
// extern u32 sCurrentBit;
// extern s32 sTimer;

extern ActorOverlay gActorOverlayTable[ACTOR_ID_MAX];
extern ActorId gMaxActorId;
extern BgCheckSceneSubdivisionEntry sSceneSubdivisionList[];
extern BgSpecialSceneMaxObjects sCustomDynapolyMem[];

// extern UNK_TYPE4 D_801BDAC0;
// extern UNK_TYPE4 D_801BDAC4;
// extern UNK_TYPE4 D_801BDAC8;
// extern UNK_TYPE4 D_801BDACC;
// extern UNK_TYPE4 D_801BDAF0;
// extern UNK_TYPE4 D_801BDAF8;

extern u8 kanfontOrdering[92];
// extern actor_init_var_func sInitChainHandlers[11];
// extern UNK_TYPE4 D_801BEAD4;
// extern UNK_TYPE4 D_801BEAD8;
// extern UNK_TYPE1 D_801BEAE0;
// extern UNK_TYPE4 D_801BEAF4;
// extern UNK_TYPE4 D_801BEAF8;
// extern UNK_TYPE4 D_801BEB04;
// extern UNK_TYPE4 D_801BEB08;
// extern UNK_TYPE4 D_801BEB14;
// extern UNK_TYPE4 D_801BEB18;
// extern UNK_TYPE4 D_801BEB24;
// extern UNK_TYPE4 D_801BEB28;
// extern UNK_TYPE1 D_801BEB38;
// extern UNK_TYPE4 D_801BEBB8;
// extern UNK_TYPE4 D_801BEBD8;
// extern UNK_TYPE2 D_801BEBF8;
// extern UNK_TYPE2 D_801BEBFA;
// extern UNK_TYPE2 D_801BEBFC;
// extern UNK_TYPE2 D_801BEC10;
extern UNK_PTR D_801BEC14;
// extern UNK_TYPE4 D_801BEC1C;
// extern UNK_TYPE4 D_801BEC20;
// extern UNK_TYPE1 D_801BEC24;
// extern UNK_TYPE1 D_801BEC2C;
// extern UNK_TYPE2 D_801BEC5C;
// extern UNK_TYPE2 D_801BEC5E;
// extern UNK_TYPE4 D_801BEC70;
// extern UNK_TYPE1 D_801BEC84;
// extern UNK_TYPE1 D_801BECA4;
// extern UNK_TYPE1 D_801BECC4;
// extern UNK_TYPE1 D_801BECE4;
// extern UNK_TYPE1 D_801BED00;
// extern UNK_TYPE2 D_801BED24;
// extern UNK_TYPE1 D_801BED3C;
// extern UNK_TYPE1 D_801BED40;
// extern UNK_TYPE1 D_801BED4C;
// extern UNK_TYPE1 D_801BED54;
// extern UNK_TYPE1 D_801BED55;
// extern UNK_TYPE1 D_801BED56;
// extern UNK_TYPE1 D_801BED88;
// extern UNK_TYPE1 D_801BEFC8;
// extern UNK_TYPE1 D_801BF15C;
// extern UNK_TYPE1 D_801BF170;
// extern UNK_TYPE1 D_801BF176;
// extern UNK_TYPE1 D_801BF177;
// extern UNK_TYPE1 D_801BF178;
// extern UNK_TYPE1 D_801BF3B4;
// extern UNK_TYPE2 D_801BF550;
// extern UNK_TYPE2 D_801BF554;
// extern UNK_TYPE2 D_801BF558;
// extern UNK_TYPE4 D_801BF55C;
// extern UNK_TYPE4 D_801BF580;
// extern UNK_TYPE4 D_801BF594;
// extern UNK_TYPE4 D_801BF5A4;
// extern UNK_TYPE2 D_801BF5B0;
extern UNK_PTR D_801BF5C0;
// extern UNK_TYPE1 D_801BF68C;

extern FlexSkeletonHeader* gPlayerSkeletons[PLAYER_FORM_MAX];
extern PlayerModelIndices gPlayerModelTypes[];
extern struct_80124618 D_801C03A0[];
extern struct_80124618 D_801C0490[];
extern Gfx gCullBackDList[];
extern Gfx gCullFrontDList[];

extern u32 gBitFlags[32];
extern u16 gEquipMasks[];
extern u16 gEquipNegMasks[];
extern u32 gUpgradeMasks[8];
extern u32 gUpgradeNegMasks[];
extern u8 gEquipShifts[];
extern u8 gUpgradeShifts[8];
extern u16 gUpgradeCapacities[][4];
extern u32 gGsFlagsMask[];
extern u32 gGsFlagsShift[];
extern TexturePtr gItemIcons[];
extern u8 gItemSlots[];
extern s16 gItemPrices[];
extern u16 gSceneIdsPerRegion[11][27];
extern u8 gPlayerFormItemRestrictions[PLAYER_FORM_MAX][114];

extern s16 gPlayerFormObjectIds[PLAYER_FORM_MAX];
extern ObjectId gObjectTableSize;
extern RomFile gObjectTable[OBJECT_ID_MAX];

extern SceneTableEntry gSceneTable[SCENE_MAX];
extern UNK_PTR D_801C5C50;
// extern UNK_TYPE1 D_801C5C9C;
extern UNK_PTR D_801C5CB0;

extern KaleidoMgrOverlay gKaleidoMgrOverlayTable[2];
// extern UNK_TYPE1 D_801D0B8C;
extern KaleidoMgrOverlay* gKaleidoMgrCurOvl;
// extern UNK_TYPE1 D_801D0C80;
// extern UNK_TYPE1 D_801D0CB0;
extern s32 gDbgCamEnabled;
// extern UNK_TYPE1 D_801D0D54;
// extern UNK_TYPE2 sQuakeIndex;
// extern UNK_TYPE2 sIsCameraUnderwater;
extern Input* D_801D0D60;
// extern UNK_TYPE2 sPlayerCsIdToCsCamId;
// extern UNK_TYPE1 D_801D0D7A;

extern u32 retryCount;
extern u32 cfbIdx[3];

extern Vec3f gZeroVec3f;
extern Vec3s gZeroVec3s;

extern s16 gLowPassFilterData[];
extern s16 gHighPassFilterData[];
extern s16 gBandStopFilterData[];
extern s16 gBandPassFilterData[];
extern s16* gWaveSamples[9];
extern f32 gBendPitchOneOctaveFrequencies[];
extern f32 gBendPitchTwoSemitonesFrequencies[];
extern f32 gPitchFrequencies[];
extern u8 gDefaultShortNoteVelocityTable[];
extern u8 gDefaultShortNoteGateTimeTable[];
extern EnvelopePoint gDefaultEnvelope[];
extern NoteSampleState gZeroedSampleState;
extern NoteSampleState gDefaultSampleState;
extern u16 gHaasEffectDelaySize[];
extern u16 gHaasEffectDelaySize[];
extern s16 gInvalidAdpcmCodeBook[];
extern f32 gHeadsetPanVolume[];
extern f32 gStereoPanVolume[];
extern f32 gDefaultPanVolume[];
extern s32 gAudioCtxInitalized;
extern u8 D_801D6200[0x400];
extern u8 gIsLargeSfxBank[7];
extern u8 D_801D6608[7];
extern u8 gChannelsPerBank[4][7];
extern u8 gUsedChannelsPerBank[4][7];
extern f32 gSfxVolume;
extern u8* gScarecrowSpawnSongPtr;
extern OcarinaSongButtons gOcarinaSongButtons[24];
extern SfxParams* gSfxParams[7];
extern SfxBankEntry* gSfxBanks[7];
extern u8 gSfxChannelLayout;
extern Vec3f gSfxDefaultPos;
extern f32 gSfxDefaultFreqAndVolScale;
extern s8 gSfxDefaultReverb;
extern u8 gAudioSpecId;
extern u8 gAudioHeapResetState;
extern AudioSpec gAudioSpecs[21];

// rodata
extern f32 D_801DBDF0;
extern f32 D_801DBE68;
extern f32 D_801DBE6C;
extern f32 D_801DBE70;
extern f32 D_801DBE74;
extern f32 D_801DBE78;
extern f32 D_801DBE7C;
extern f32 D_801DBE80;
extern f32 D_801DBE84;
extern f32 D_801DBE88;
extern f32 D_801DBE8C;
extern f32 D_801DBE90;
extern f32 D_801DBE94;
extern f32 D_801DBE98;
extern f32 D_801DBE9C;
extern f32 D_801DBEA0;
extern f32 D_801DBF10;
extern f32 D_801DBF14;
extern f32 D_801DBF18;
extern f32 D_801DBF1C;
extern f32 D_801DBF20;
extern f32 D_801DC068;
extern f32 D_801DC06C;
extern f32 D_801DC070;
extern f32 D_801DC074;
extern f32 D_801DC080;
extern f32 D_801DC084;
extern f32 D_801DC09C;
extern f32 D_801DC0A0;
extern f32 D_801DC0B0;
extern f32 D_801DC0B4;
extern f32 D_801DC0C0;
extern f32 D_801DC0C4;
extern f32 D_801DC0C8;
extern f32 D_801DC0CC;
extern f32 D_801DC0D0;
extern f32 D_801DC0D4;
extern f32 D_801DC100;
extern f32 D_801DC104;
extern f32 D_801DC108;
extern f32 D_801DC10C;
extern f32 D_801DC110;
extern f32 D_801DC114;
extern char D_801DC120[];
extern char D_801DC134[];
extern char D_801DC148[];
extern char D_801DC15C[];
extern char D_801DC170[];
extern char D_801DC184[];
extern char D_801DC198[];
extern char D_801DC1AC[];
extern char D_801DC1C0[];
extern char D_801DC1D4[];
extern char D_801DC1E8[];
extern char D_801DC1FC[];
extern char D_801DC210[];
extern char D_801DC224[];
extern char D_801DC238[];
extern char D_801DC24C[];
extern char D_801DC260[];
extern char D_801DC274[];
extern char D_801DC288[];
extern char D_801DC29C[];
extern char D_801DC2B0[];
extern char D_801DC2C4[];
extern char D_801DC2D8[];
extern char D_801DC2EC[];
extern char D_801DC300[];
extern char D_801DC314[];
extern char D_801DC328[];
extern char D_801DC33C[];
extern char D_801DC350[];
extern char D_801DC364[];
extern char D_801DC378[];
extern char D_801DC38C[];
extern char D_801DC3A0[];
extern char D_801DC3B4[];
extern char D_801DC3C8[];
extern char D_801DC3DC[];
extern char D_801DC3F0[];
extern char D_801DC404[];
extern char D_801DC418[];
extern char D_801DC42C[];
extern char D_801DC440[];
extern char D_801DC454[];
extern char D_801DC468[];
extern char D_801DC47C[];
extern char D_801DC490[];
extern char D_801DC4A4[];
extern char D_801DC4B8[];
extern char D_801DC4CC[];
extern char D_801DC4E0[];
extern char D_801DC4F4[];
extern char D_801DC508[];
extern char D_801DC51C[];
extern char D_801DC530[];
extern char D_801DC544[];
extern char D_801DC558[];
extern char D_801DC56C[];
extern char D_801DC580[];
extern char D_801DC594[];
extern char D_801DC5A8[];
extern char D_801DC5BC[];
extern char D_801DC5D0[];
extern char D_801DC5E4[];
extern char D_801DC5F8[];
extern char D_801DC60C[];
extern char D_801DC620[];
extern char D_801DC634[];
extern char D_801DC648[];
extern char D_801DC65C[];
extern char D_801DC670[];
extern char D_801DC684[];
extern char D_801DC698[];
extern char D_801DC6AC[];
extern char D_801DC6C0[];
extern char D_801DC6D4[];
extern char D_801DC6E8[];
extern char D_801DC6FC[];
extern char D_801DC710[];
extern char D_801DC724[];
extern char D_801DC738[];
extern char D_801DC74C[];
extern char D_801DC760[];
extern char D_801DC774[];
extern char D_801DC788[];
extern char D_801DC79C[];
extern char D_801DC7B0[];
extern char D_801DC7C4[];
extern char D_801DC7D8[];
extern char D_801DC7EC[];
extern char D_801DC800[];
extern char D_801DC814[];
extern char D_801DC828[];
extern char D_801DC83C[];
extern char D_801DC850[];
extern char D_801DC864[];
extern char D_801DC878[];
extern char D_801DC88C[];
extern char D_801DC8A0[];
extern char D_801DC8B4[];
extern char D_801DC8C8[];
extern char D_801DC8DC[];
extern char D_801DC8F0[];
extern char D_801DC900[];
extern char D_801DC910[];
extern char D_801DC920[];
extern char D_801DC930[];
extern char D_801DC940[];
extern char D_801DC950[];
extern char D_801DC960[];
extern char D_801DC970[];
extern char D_801DC984[];
extern char D_801DC998[];
// extern UNK_TYPE1 D_801DC9AC;
// extern UNK_TYPE1 D_801DC9B0;
// extern UNK_TYPE1 D_801DC9B4;
extern char D_801DC9D0[];
extern char D_801DC9D8[];
extern char D_801DC9F8[];
extern char D_801DCA10[];
extern f32 D_801DCA14;
extern f32 D_801DCA18;
extern f32 D_801DCA1C;
extern f32 D_801DCA20;
extern f32 D_801DCA24;
extern f32 D_801DCA28;
extern f32 D_801DCA2C;
extern f32 D_801DCA30;
extern f32 D_801DCA34;
extern f32 D_801DCA38;
extern f32 D_801DCA3C;
extern f32 D_801DCA40;
extern f32 D_801DCA44;
extern f32 D_801DCA48;
extern f32 D_801DCA4C;
extern f32 D_801DCA50;
extern f32 D_801DCA54;
extern f32 D_801DCA6C;
extern f32 D_801DCA70;
extern f32 D_801DCA74;
extern f32 D_801DCA78;
extern f32 D_801DCA7C;
extern f32 D_801DCA80;
extern f32 D_801DCA84;
extern f32 D_801DCA88;
extern f32 D_801DCA8C;
extern f32 D_801DCA90;
extern f32 D_801DCA94;
extern f32 D_801DCA98;
extern f32 D_801DCA9C;
extern f32 D_801DCAA0;
extern f32 D_801DCAA4;
extern f32 D_801DCAA8;
extern f32 D_801DCAAC;
extern f32 D_801DCAB0;
extern f32 D_801DCAB4;
extern f32 D_801DCAB8;
extern f32 D_801DCABC;
extern f32 D_801DCAC0;
extern f32 D_801DCAC4;
extern f32 D_801DCAC8;
extern f32 D_801DCACC;
extern f32 D_801DCAD0;
extern f32 D_801DCAD4;
extern f32 D_801DCAD8;
extern f32 D_801DCADC;
extern f32 D_801DCAE0;
extern f32 D_801DCB68;
extern f32 D_801DCB6C;
extern f32 D_801DCB70;
extern f32 D_801DCB74;
extern f32 D_801DCB78;
extern f32 D_801DCB7C;
extern f32 D_801DCB80;
extern f32 D_801DCB84;
extern f32 D_801DCB88;
extern f32 D_801DCB8C;
extern f32 D_801DCB90;
extern f32 D_801DCB94;
extern f32 D_801DCB98;
extern f32 D_801DCB9C;
extern f32 D_801DCBA0;
extern f32 D_801DCBA4;
extern f32 D_801DCBA8;
extern f32 D_801DCBAC;
extern char D_801DCBB0[];
extern char D_801DCBC4[];
extern char D_801DCBE4[];
// extern UNK_TYPE1 D_801DCBFC;
extern char D_801DCC00[];
extern char D_801DCC10[];
extern char D_801DCC20[];
extern char D_801DCC64[];
extern char D_801DCC94[];
extern char D_801DCCB8[];
extern char D_801DCCC8[];
extern char D_801DCCE8[];
extern char D_801DCCF8[];
extern char D_801DCD18[];
extern f32 D_801DCD28;
extern f32 D_801DCD2C;
extern f32 D_801DCD30;
extern f32 D_801DCD34;
extern f32 D_801DCD38;
extern f32 D_801DCD3C;
extern f32 D_801DCD40;
extern f32 D_801DCD44;
extern f32 D_801DCD48;
extern f32 D_801DCD4C;
extern f32 D_801DCD50;
extern f32 D_801DCD54;
extern f32 D_801DCD58;
extern f32 D_801DCD5C;
extern f32 D_801DCD60;
extern f32 D_801DCD64;
extern f32 D_801DCD68;
extern f32 D_801DCD6C;
extern f32 D_801DCD70;
extern f32 D_801DCD74;
extern f32 D_801DCD78;
extern f32 D_801DCD7C;
extern f32 D_801DCD80;
extern f32 D_801DCD84;
extern f32 D_801DCD88;
extern f32 D_801DCD8C;
extern f32 D_801DCD90;
extern f32 D_801DCD94;
extern f32 D_801DCD98;
extern f32 D_801DCD9C;
extern f32 D_801DCDA0;
extern f32 D_801DCDA4;
extern f32 D_801DCDB0;
extern f32 D_801DCDB4;
extern f32 D_801DCDC0;
extern f32 D_801DCDC4;
extern f32 D_801DCDC8;
extern f32 D_801DCDCC;
extern f32 D_801DCDD0;
extern f32 D_801DCDD4;
extern f32 D_801DCDD8;
extern f32 D_801DCDE4;
extern f32 D_801DCDE8;
extern f32 D_801DCDEC;
extern f32 D_801DCDF0;
extern f32 D_801DCDF4;
extern f32 D_801DCDF8;
extern f32 D_801DCDFC;
extern f32 D_801DCE00;
extern f32 D_801DCE04;
extern f32 D_801DCE08;
extern f32 D_801DCE0C;
extern f32 D_801DCE10;
extern f32 D_801DCE14;
extern f32 D_801DCE18;
extern f32 D_801DCE1C;
extern f32 D_801DCE20;
extern f32 D_801DCE24;
extern f32 D_801DCE28;
extern f32 D_801DCE2C;
extern f32 D_801DCE30;
extern f32 D_801DCE34;
extern f32 D_801DCE38;
extern f32 D_801DCE3C;
extern f32 D_801DCE40;
extern f32 D_801DCE44;
extern f32 D_801DCE48;
extern f32 D_801DCE4C;
extern f32 D_801DCE50;
extern f32 D_801DCE54;
extern f32 D_801DCE58;
extern f32 D_801DCE5C;
extern f32 D_801DCE60;
extern f32 D_801DCE64;
extern f32 D_801DCE68;
extern f32 D_801DCE6C;
extern f32 D_801DCE70;
extern f32 D_801DCE74;
extern f32 D_801DCE78;
extern f32 D_801DCE7C;
extern f32 D_801DCE80;
extern f32 D_801DCE84;
extern f32 D_801DCE88;
extern f32 D_801DCE8C;
extern f32 D_801DCE90;
extern f32 D_801DCE94;
extern f32 D_801DCE98;
extern f32 D_801DCE9C;
extern f32 D_801DCEA0;
extern f32 D_801DCEA4;
extern f32 D_801DCEA8;
extern f32 D_801DCEAC;
extern f32 D_801DCEB0;
extern f32 D_801DCEB4;
extern f32 D_801DCEB8;
extern f32 D_801DCEBC;
extern f32 D_801DCEC0;
extern f32 D_801DCEC4;
extern f32 D_801DCEC8;
extern f32 D_801DCECC;
extern f32 D_801DCED0;
extern f32 D_801DCED4;
extern f32 D_801DCED8;
extern f32 D_801DCEDC;
extern f32 D_801DCEE0;
extern f32 D_801DCEE4;
extern f32 D_801DCEE8;
extern f32 D_801DCEEC;
extern f32 D_801DCEF0;
extern f32 D_801DCEF4;
extern f32 D_801DCEF8;
extern f32 D_801DCEFC;
extern f32 D_801DCF00;
extern f32 D_801DCF04;
extern f32 D_801DCF08;
extern f32 D_801DCF0C;
extern f32 D_801DCF10;
extern f32 D_801DCF14;
extern f32 D_801DCF18;
extern f32 D_801DCF1C;
extern f32 D_801DCF34;
extern f32 D_801DCF38;
extern f32 D_801DCF3C;
extern f32 D_801DCF40;
extern f32 D_801DCF44;
extern f32 D_801DCF48;
extern f32 D_801DCF4C;
extern f32 D_801DCF50;
extern f32 D_801DCF54;
extern f32 D_801DCF58;
extern f32 D_801DCF5C;
extern f32 D_801DCF60;
extern f32 D_801DCF64;
extern f32 D_801DCF68;
extern f32 D_801DCF6C;
extern f32 D_801DCF70;
extern f32 D_801DCF74;
extern f32 D_801DCF78;
extern f32 D_801DCF7C;
extern f32 D_801DCF80;
extern f32 D_801DCF84;
extern f32 D_801DCF8C;
extern f32 D_801DCF90;
extern f32 D_801DCF98;
extern f32 D_801DCF9C;
extern f32 D_801DCFA0;
extern f32 D_801DCFA4;
extern f32 D_801DCFA8;
extern f32 D_801DCFAC;
extern f32 D_801DCFB0;
extern f32 D_801DCFB8;
extern f32 D_801DCFBC;
extern f32 D_801DCFC0;
extern f32 D_801DCFC4;
extern f32 D_801DCFC8;
extern f32 D_801DCFCC;
extern f32 D_801DCFD0;
extern f32 D_801DCFD4;
extern f32 D_801DD00C;
extern f32 D_801DD010;
extern f32 D_801DD014;
extern f32 D_801DD018;
extern f32 D_801DD01C;
extern f32 D_801DD020;
extern f32 D_801DD024;
extern f32 D_801DD028;
extern f32 D_801DD02C;
extern f32 D_801DD030;
extern f32 D_801DD034;
extern f32 D_801DD038;
extern f32 D_801DD03C;
extern f32 D_801DD040;
extern f32 D_801DD044;
extern f32 D_801DD048;
extern f32 D_801DD04C;
extern f32 D_801DD050;
extern f32 D_801DD054;
extern f32 D_801DD058;
extern f32 D_801DD060;
extern f32 D_801DD064;
extern f32 D_801DD068;
extern f32 D_801DD06C;
extern f32 D_801DD070;
extern f32 D_801DD074;
extern f32 D_801DD078;
extern f32 D_801DD07C;
extern f32 D_801DD080;
extern f32 D_801DD084;
extern f32 D_801DD088;
extern f32 D_801DD08C;
extern f32 D_801DD090;
extern f32 D_801DD094;
extern f32 D_801DD098;
extern f32 D_801DD09C;
extern f32 D_801DD0A0;
extern f32 D_801DD0A4;
extern f32 D_801DD0A8;
extern f32 D_801DD0AC;
extern f32 D_801DD0B0;
extern f32 D_801DD0B4;
extern f32 D_801DD0B8;
extern f32 D_801DD0BC;
extern f32 D_801DD0C0;
extern f32 D_801DD0C4;
extern f32 D_801DD0C8;
extern f32 D_801DD0CC;
extern f32 D_801DD0D0;
extern f32 D_801DD0D4;
extern f32 D_801DD0D8;
extern f32 D_801DD0DC;
extern f32 D_801DD0E0;
extern f32 D_801DD0E4;
extern f32 D_801DD0E8;
extern f32 D_801DD0EC;
extern f32 D_801DD0F0;
extern f32 D_801DD0F4;
extern f32 D_801DD0F8;
extern f32 D_801DD0FC;
extern f32 D_801DD100;
extern f32 D_801DD104;
extern f32 D_801DD108;
extern f32 D_801DD10C;
extern f32 D_801DD110;
extern f32 D_801DD114;
extern f32 D_801DD118;
extern f32 D_801DD11C;
extern f32 D_801DD120;
extern f32 D_801DD124;
extern f32 D_801DD128;
extern f32 D_801DD12C;
extern f32 D_801DD130;
extern f32 D_801DD134;
extern f32 D_801DD138;
extern f32 D_801DD13C;
extern f32 D_801DD140;
extern f32 D_801DD144;
extern f32 D_801DD148;
extern f32 D_801DD14C;
extern f32 D_801DD150;
extern f32 D_801DD154;
extern f32 D_801DD158;
extern f32 D_801DD15C;
extern f32 D_801DD160;
extern f32 D_801DD164;
extern f32 D_801DD168;
extern f32 D_801DD16C;
extern f32 D_801DD170;
extern f32 D_801DD174;
extern f32 D_801DD178;
extern f32 D_801DD1B0;
extern f32 D_801DD1B4;
extern f32 D_801DD1B8;
extern f32 D_801DD1BC;
extern f32 D_801DD1C0;
extern f32 D_801DD1C4;
extern f32 D_801DD1C8;
extern f32 D_801DD1CC;
extern f32 D_801DD1D0;
extern f32 D_801DD1D4;
extern f32 D_801DD1D8;
extern f32 D_801DD1DC;
extern f32 D_801DD1E0;
extern f32 D_801DD1E4;
extern f32 D_801DD1E8;
extern f32 D_801DD1EC;
extern f32 D_801DD1F0;
extern f32 D_801DD1F4;
extern f32 D_801DD1F8;
extern f32 D_801DD1FC;
extern f32 D_801DD200;
extern f32 D_801DD204;
extern f32 D_801DD208;
extern f32 D_801DD20C;
extern f32 D_801DD210;
extern f32 D_801DD214;
extern f32 D_801DD218;
extern f32 D_801DD21C;
extern f32 D_801DD220;
extern f32 D_801DD224;
extern f32 D_801DD228;
extern f32 D_801DD22C;
extern f32 D_801DD230;
extern f32 D_801DD234;
extern f32 D_801DD238;
extern f32 D_801DD23C;
extern f32 D_801DD240;
extern f32 D_801DD244;
extern f32 D_801DD248;
extern f32 D_801DD24C;
extern f32 D_801DD250;
extern f32 D_801DD254;
extern f32 D_801DD258;
extern f32 D_801DD25C;
extern f32 D_801DD260;
extern f32 D_801DD264;
extern f32 D_801DD268;
extern f32 D_801DD26C;
extern f32 D_801DD270;
extern f32 D_801DD274;
extern f32 D_801DD278;
extern f32 D_801DD27C;
extern f32 D_801DD2A0;
extern f32 D_801DD2A4;
extern f32 D_801DD2A8;
extern f32 D_801DD2AC;
extern f32 D_801DD2B0;
extern f32 D_801DD2B4;
extern f32 D_801DD2B8;
extern f32 D_801DD2BC;
extern f32 D_801DD2C0;
extern f32 D_801DD2C4;
extern f32 D_801DD344;
extern f32 D_801DD348;
extern f32 D_801DD34C;
extern f32 D_801DD350;
extern f32 D_801DD354;
extern f32 D_801DD358;
extern f32 D_801DD35C;
extern f32 D_801DD360;
extern f32 D_801DD364;
extern f32 D_801DD368;
extern f32 D_801DD36C;
extern f32 D_801DD370;
extern f32 D_801DD374;
extern f32 D_801DD38C;
extern f32 D_801DD390;
extern f32 D_801DD394;
extern f32 D_801DD398;
extern f32 D_801DD39C;
extern f32 D_801DD3A0;
extern f32 D_801DD3A4;
extern f32 D_801DD3A8;
extern f32 D_801DD3AC;
extern f32 D_801DD3B0;
extern f32 D_801DD3B4;
extern f32 D_801DD3B8;
extern f32 D_801DD3BC;
extern f32 D_801DD3C0;
extern f32 D_801DD3C4;
extern f32 D_801DD3C8;
extern f32 D_801DD3CC;
extern f32 D_801DD3D0;
extern f32 D_801DD3D4;
extern f32 D_801DD3D8;
extern f32 D_801DD3DC;
extern f32 D_801DD3E0;
extern f32 D_801DD3E4;
extern f32 D_801DD3E8;
extern f32 D_801DD3EC;
extern f32 D_801DD3F0;
extern f32 D_801DD3F4;
extern f32 D_801DD3F8;
extern f32 D_801DD3FC;
extern f32 D_801DD400;
extern f32 D_801DD404;
extern f32 D_801DD408;
extern f32 D_801DD40C;
extern f32 D_801DD410;
extern f32 D_801DD414;
extern f32 D_801DD418;
extern f32 D_801DD41C;
extern f32 D_801DD420;
extern f32 D_801DD424;
extern f32 D_801DD43C;
extern f32 D_801DD440;
extern f32 D_801DD444;
extern f32 D_801DD448;
extern f32 D_801DD44C;
extern f32 D_801DD450;
extern f32 D_801DD454;
extern f32 D_801DD458;
extern f32 D_801DD45C;
extern f32 D_801DD460;
extern f32 D_801DD5AC;
extern f32 D_801DD5B0;
extern f32 D_801DD5C0;
extern f32 D_801DD5C4;
extern f32 D_801DD5C8;
extern f32 D_801DD5CC;
extern f32 D_801DD5D0;
extern f32 D_801DD5D4;
extern f32 D_801DD5D8;
extern f32 minCylinderIntersectAmount;
extern f32 D_801DD5E0;
extern f32 D_801DD5E4;
extern f32 D_801DD5E8;
extern f32 D_801DD5EC;
extern f32 D_801DD5F0;
extern f32 D_801DD5F4;
extern f32 D_801DD5F8;
extern f32 D_801DD5FC;
extern char D_801DD600[];
extern char D_801DD604[];
extern f32 D_801DD6FC;
extern f32 D_801DD770;
extern f32 D_801DD774;
extern f32 D_801DD780;
extern f32 D_801DD7B0;
extern f32 D_801DD7C0;
// extern UNK_TYPE2 D_801DD880;
// extern UNK_TYPE1 D_801DD8E0;
// extern UNK_TYPE4 D_801DD900;
extern f32 D_801DD940;
extern f32 D_801DD944;
extern f32 D_801DD948;
extern f32 D_801DD94C;
extern f32 D_801DD950;
extern f32 D_801DD954;
extern f32 D_801DD958;
extern f32 D_801DD95C;
extern f32 D_801DD960;
extern f32 D_801DD964;
extern f32 D_801DD968;
extern f32 D_801DD96C;
extern f32 D_801DD970;
extern f32 D_801DD974;
extern f32 D_801DD978;
extern f32 D_801DD97C;
extern f32 D_801DD980;
extern f32 D_801DD984;
extern f32 D_801DD988;
extern f32 D_801DD98C;
extern f32 D_801DD990;
extern f32 D_801DD9EC;
extern f32 D_801DD9F0;
extern f32 D_801DD9F4;
extern f32 D_801DD9F8;
extern f32 D_801DD9FC;
extern f32 D_801DDA7C;
extern f32 D_801DDA80;
extern f32 D_801DDA84;
extern f32 D_801DDA90;
extern f32 D_801DDA94;
extern f32 D_801DDA98;
extern f32 D_801DDA9C;
extern f32 D_801DDAA0;
extern f32 D_801DDAB0;
extern f32 D_801DDAB4;
extern const f32 D_801DDAB8;
extern f32 D_801DDAC0;
extern f32 D_801DDAC4;
extern f32 D_801DDAC8;
extern f32 D_801DDACC;
extern f32 D_801DDAD0;
extern f32 D_801DDAD4;
extern f32 D_801DDAD8;
extern f32 D_801DDADC;
extern f32 D_801DDAE0;
extern f32 D_801DDAE4;
extern f32 D_801DDAE8;
extern f32 D_801DDAEC;
extern f32 D_801DDAF0;
extern f32 D_801DDAF4;
extern f32 D_801DDAF8;
extern f32 D_801DDAFC;
extern f32 D_801DDBA8;
extern f32 D_801DDBAC;
extern f32 D_801DDBB0;
extern f32 D_801DDBB4;
extern f32 D_801DDBB8;
extern f32 D_801DDBBC;
extern f32 D_801DDBC0;
extern f32 D_801DDBC4;
extern f32 D_801DDBC8;
extern f32 D_801DDBCC;
extern f32 D_801DDCF8;
extern f32 D_801DDCFC;
extern f32 D_801DDD00;
extern f32 D_801DDD04;
extern f32 D_801DDD08;
extern f32 D_801DDD0C;
extern f32 D_801DDD10;
extern f32 D_801DDD14;
extern f32 D_801DDD20;
extern f32 D_801DDD24;
extern f32 D_801DDD28;
extern f32 D_801DDD2C;
extern f32 D_801DDD30;
extern f32 D_801DDD34;
extern f32 D_801DDD38;
extern f32 D_801DDD3C;
extern f32 D_801DDD40;
extern f32 D_801DDD44;
extern f32 D_801DDD48;
extern f32 D_801DDD4C;
extern f32 D_801DDD50;
extern f32 D_801DDD54;
extern f32 D_801DDD58;
extern f32 D_801DDD5C;
extern f32 D_801DDD60;
extern f32 D_801DDD64;
extern f32 D_801DDD68;
extern f32 D_801DDD6C;
extern f32 D_801DDD70;
extern f32 D_801DDD74;
extern f32 D_801DDD78;
extern f32 D_801DDD7C;
extern f32 D_801DDD80;
extern f32 D_801DDD84;
extern f32 D_801DDD88;
extern f32 D_801DDD8C;
extern f32 D_801DDD90;
extern f32 D_801DDD94;
extern f32 D_801DDD98;
extern f32 D_801DDD9C;
extern f32 D_801DDDA0;
extern f32 D_801DDDA4;
extern f32 D_801DDDA8;
extern f32 D_801DDDAC;
extern f32 D_801DDDB0;
extern f32 D_801DDDB4;
extern f32 D_801DDDB8;
extern f32 D_801DDDBC;
extern f32 D_801DDDC0;
extern f32 D_801DDDC4;
extern f32 D_801DDDC8;
extern f32 D_801DDDCC;
extern f32 D_801DDDD0;
extern f32 D_801DDDD4;
extern f32 D_801DDDD8;
extern f32 D_801DDDDC;
extern f32 D_801DDDE0;
extern f32 D_801DDDE4;
extern f32 D_801DDDE8;
extern f32 D_801DDDEC;
extern f32 D_801DDDF0;
extern f32 D_801DDDF4;
extern f32 D_801DDDF8;
extern f32 D_801DDDFC;
extern f32 D_801DDE00;
extern f32 D_801DDE04;
extern f32 D_801DDE90;
extern f32 D_801DDE94;
extern f32 D_801DDE98;
extern f32 D_801DDE9C;
extern f32 D_801DDEA0;
extern f32 D_801DDEA4;
extern f32 D_801DDEA8;
extern f32 D_801DDEAC;
extern f32 D_801DDEB0;
extern f32 D_801DDEB4;
extern f32 D_801DDEB8;
extern f32 D_801DDEBC;
extern f32 D_801DDEC0;
extern f32 D_801DDEC4;
extern f32 D_801DDEC8;
extern f32 D_801DDECC;
extern f32 D_801DDED0;
extern f32 D_801DDED4;
extern f32 D_801DDED8;
extern f32 D_801DDEDC;
extern f32 D_801DDEE0;
extern f32 D_801DDEE4;
extern f32 D_801DDEE8;
extern f32 D_801DDEEC;
extern f32 D_801DDEF0;
extern f32 D_801DDEF4;
extern f32 D_801DDEF8;
extern f32 D_801DDEFC;
extern f32 D_801DDF00;
extern f32 D_801DDF04;
extern f32 D_801DDF08;
extern f32 D_801DDF0C;
extern f32 D_801DDF10;
extern f32 D_801DDF14;
extern f32 D_801DDF18;
extern f32 D_801DDF1C;
extern f32 D_801DDF20;
extern f32 D_801DDF24;
extern f32 D_801DDF28;
extern f32 D_801DDF2C;
extern f32 D_801DDF30;
extern f32 D_801DDF34;
extern f32 D_801DDF38;
extern f32 D_801DDF3C;
extern f32 D_801DDF40;
extern f32 D_801DDF44;
extern f32 D_801DDF48;
extern f32 D_801DDF4C;
extern f32 D_801DDF50;
extern f32 D_801DDF54;
extern f32 D_801DDF58;
extern f32 D_801DDF5C;
extern f32 D_801DDF60;
extern f32 D_801DDF64;
extern f32 D_801DDF68;
extern f32 D_801DDF6C;
extern f32 D_801DDF70;
extern f32 D_801DDF74;
extern f32 D_801DDF78;
extern f32 D_801DDF7C;
extern f32 D_801DDF80;
extern f32 D_801DDF84;
extern f32 D_801DDF88;
extern f32 D_801DDF8C;
extern f32 D_801DDF90;
extern f32 D_801DDF94;
extern char D_801DDFA0[];
extern char D_801DDFAC[];
extern char D_801DDFB8[];
extern f32 D_801DDFC4;
extern f32 D_801DDFC8;
extern f32 D_801DDFCC;
extern f32 D_801DDFD0;
extern f32 D_801DDFD4;
extern f32 D_801DDFD8;
extern f32 D_801DDFDC;
extern f32 D_801DDFE0;
extern f32 D_801DDFE4;
extern char D_801DE020[];
extern char D_801DE030[];
extern char D_801DE03C[];
extern char D_801DE04C[];
extern char D_801DE058[];
extern char D_801DE064[];
extern char D_801DE074[];
extern char D_801DE084[];
extern char D_801DE094[];
extern char D_801DE0A0[];
extern char D_801DE0A8[];
extern char D_801DE0B4[];
extern char D_801DE0C0[];
extern char D_801DE0CC[];
extern char D_801DE0D8[];
extern char D_801DE0E4[];
extern char D_801DE0F0[];
extern char D_801DE0FC[];
extern char D_801DE10C[];
extern char D_801DE118[];
extern char D_801DE12C[];
extern char D_801DE138[];
extern char D_801DE144[];
extern char D_801DE154[];
extern char D_801DE164[];
extern char D_801DE170[];
extern char D_801DE180[];
extern char D_801DE18C[];
extern char D_801DE19C[];
extern char D_801DE1A8[];
extern char D_801DE1B8[];
extern char D_801DE1C4[];
extern char D_801DE1D0[];
extern char D_801DE1E0[];
extern char D_801DE1F0[];
extern char D_801DE200[];
extern char D_801DE20C[];
extern char D_801DE21C[];
extern char D_801DE22C[];
extern char D_801DE234[];
extern char D_801DE244[];
extern char D_801DE258[];
extern char D_801DE268[];
extern char D_801DE278[];
extern char D_801DE280[];
extern char D_801DE290[];
extern char D_801DE29C[];
extern char D_801DE2A8[];
extern char D_801DE2B8[];
extern char D_801DE2C4[];
extern char D_801DE2D4[];
extern char D_801DE2E4[];
extern char D_801DE2F4[];
extern char D_801DE304[];
extern char D_801DE314[];
extern char D_801DE320[];
extern char D_801DE328[];
extern char D_801DE330[];
extern char D_801DE340[];
extern char D_801DE350[];
extern char D_801DE360[];
extern char D_801DE370[];
extern char D_801DE384[];
extern char D_801DE38C[];
extern char D_801DE398[];
extern char D_801DE3A4[];
extern char D_801DE3B0[];
extern char D_801DE3C4[];
extern char D_801DE3D4[];
extern char D_801DE3E0[];
extern char D_801DE3F4[];
extern char D_801DE400[];
extern char D_801DE40C[];
extern char D_801DE418[];
extern char D_801DE424[];
extern char D_801DE434[];
extern char D_801DE444[];
extern char D_801DE450[];
extern char D_801DE458[];
extern char D_801DE460[];
extern char D_801DE478[];
extern char D_801DE48C[];
extern char D_801DE49C[];
extern char D_801DE4AC[];
extern char D_801DE4BC[];
extern char D_801DE4C8[];
extern char D_801DE4D4[];
extern char D_801DE4E0[];
extern char D_801DE4F0[];
extern char D_801DE500[];
extern char D_801DE510[];
extern char D_801DE520[];
extern char D_801DE530[];
extern char D_801DE53C[];
extern char D_801DE548[];
extern char D_801DE558[];
extern char D_801DE568[];
extern char D_801DE578[];
extern char D_801DE580[];
extern char D_801DE58C[];
extern char D_801DE598[];
extern char D_801DE5A8[];
extern f32 D_801DE5C0;
extern f32 D_801DE5D0;
// extern UNK_TYPE1 D_801DE5E0;
extern f32 D_801DE820;
extern f32 D_801DE824;
extern f32 D_801DE828;
extern f32 D_801DE82C;
extern f32 D_801DE830;
extern f32 D_801DE834;
extern f32 D_801DE838;
extern f32 D_801DE83C;
extern f32 D_801DE840;
extern f32 D_801DE844;
extern f32 D_801DE848;
extern f32 D_801DE84C;
extern f32 D_801DE850;
extern f32 D_801DE854;
extern f32 D_801DE858;
extern f32 D_801DE85C;
extern f32 D_801DE860;
extern f32 D_801DE864;
extern f32 D_801DE868;
extern f32 D_801DE884;
extern TexturePtr gCircleTex[];
extern f32 D_801DF090;
extern f32 D_801DF094;
extern f32 D_801DF0A0;
extern char D_801DF0B0[];
// extern UNK_TYPE1 D_801DF0C0;
extern f32 D_801DF120;
extern f32 D_801DF124;
extern f32 D_801DF148;
extern f32 D_801DF3AC;
extern f32 D_801DF3B0;
extern f32 D_801DF3B4;
extern f32 D_801DF3B8;
extern f32 D_801DF3BC;
extern f32 D_801DF3C0;
extern f32 D_801DF3C4;
extern f32 D_801DF3C8;
extern UNK_PTR D_801DF83C;
extern f32 D_801DF8E0;
extern f32 D_801DF970;
extern f32 D_801DF974;
extern f32 D_801DF978;
extern f32 D_801DF97C;
extern f32 D_801DF980;
extern f32 D_801DF984;
extern f32 D_801DF988;
extern f32 D_801DF98C;
extern f32 D_801DF990;
extern f32 D_801DF994;
extern f32 D_801DF998;
extern f32 D_801DF99C;
extern f32 D_801DF9A0;
extern f32 D_801DF9A4;
extern f32 D_801DF9A8;
extern f32 D_801DF9AC;
extern f32 D_801DF9B0;
extern f32 D_801DF9B4;
extern char D_801DF9C0[];
extern char D_801DF9D0[];
extern f32 D_801DF9E0;
extern f32 D_801DF9E4;
extern f32 D_801DF9E8;
extern f32 D_801DF9EC;
extern f32 D_801DF9F0;
extern f32 D_801DF9F4;
extern f32 D_801DF9F8;
extern char D_801DFA00[];
extern char D_801DFA0C[];
extern f32 D_801DFC3C;
extern f32 D_801DFC40;
extern f32 D_801DFC44;
extern f32 D_801DFC50;
extern f32 D_801DFC54;
extern f32 D_801DFC58;
extern f32 D_801DFC5C;
extern char D_801DFC60[];
extern u8 D_801DFC70[7];
// extern UNK_TYPE1 D_801DFC77;
extern char D_801DFC80[];
extern char D_801DFC9C[];
extern char D_801DFCC0[];
extern char D_801DFCCC[];
extern char D_801DFCE0[];
extern char D_801DFCFC[];
extern char D_801DFD10[];
extern char D_801DFD2C[];
extern char D_801DFD40[];
extern char D_801DFD50[];
extern char D_801DFD5C[];
extern char schedThreadName[];
extern char audioThreadName[];
extern char padmgrThreadName[];
extern char graphThreadName[];
extern char D_801DFD90[];
extern char D_801DFD9C[];
extern char D_801DFDA8[];
extern char D_801DFDE0[];
extern char D_801DFDFC[];
extern char D_801DFE18[];
extern char D_801DFE48[];
extern char D_801DFE6C[];
extern char D_801DFE8C[];
// extern UNK_TYPE1 D_801DFEC0;
extern char D_801DFEF0[];
extern char D_801DFF0C[];
extern char D_801DFF28[];
extern char D_801DFF58[];
extern char D_801DFF7C[];
// extern UNK_TYPE1 D_801DFF9C;
// extern UNK_TYPE1 D_801DFFCC;
// extern UNK_TYPE1 D_801DFFE0;
// extern UNK_TYPE1 D_801E0000;
extern char D_801E0038[];
extern char D_801E0060[];
extern char D_801E0088[];
extern char D_801E0094[];
extern char D_801E00A8[];
extern char D_801E00BC[];
extern char D_801E00E8[];
extern f32 D_801E0120;
extern f32 D_801E0124;
extern f32 D_801E0128;
extern f32 D_801E012C;
extern f32 Math3D_Normalize_min_length;
extern f32 D_801E0134;
extern f32 D_801E0138;
extern f32 D_801E013C;
extern f32 D_801E0140;
extern f32 Math3D_AngleBetweenVectors_min_length;
extern f32 D_801E0148;
extern f32 D_801E014C;
extern f32 Math3D_UnitNormalVector_min_length;
extern f32 Math3D_NormalizedDistanceFromPlane_min_length;
extern f32 D_801E0158;
extern f32 D_801E015C;
extern f32 D_801E0160;
extern f32 D_801E0164;
extern f32 D_801E0168;
extern f32 D_801E016C;
extern f32 D_801E0170;
extern f32 D_801E0174;
extern f32 D_801E0178;
extern f32 D_801E017C;
extern f32 D_801E0180;
extern f32 D_801E0184;
extern f32 D_801E0188;
extern f32 D_801E018C;
extern f32 D_801E0190;
extern f32 D_801E0194;
extern f32 D_801E0198;
extern f32 D_801E019C;
extern f32 D_801E01A0;
extern f32 D_801E01A4;
extern f32 D_801E01A8;
extern f32 D_801E01AC;
extern f32 D_801E01B0;
extern f32 D_801E01B4;
extern f32 D_801E01B8;
extern f32 D_801E01BC;
extern f32 D_801E01C0;
extern f32 D_801E01C4;
extern f32 Math3D_ColSphereSphereIntersectAndDistance_min_intersect;
extern f32 D_801E01CC;
extern f32 D_801E01D0;
extern f32 D_801E01D4;
extern f32 D_801E01F0;
extern f32 D_801E01F4;
extern f32 D_801E01F8;
extern f32 D_801E0200;
extern f32 D_801E0204;
extern f32 D_801E0208;
extern f32 D_801E020C;
extern f32 D_801E0210;
extern f32 D_801E0214;
extern f32 D_801E0218;
extern f32 D_801E021C;
extern f32 D_801E0220;
extern f32 D_801E0224;
extern f32 D_801E0228;
extern char D_801E0230[];
extern char D_801E0238[];
extern char D_801E023C[];
extern char D_801E0240[];
extern char D_801E0248[];
extern char D_801E0250[];
extern char D_801E0258[];
extern char D_801E026C[];
extern f32 D_801E02A0;
extern f32 D_801E02B0;
extern f32 D_801E02B4;
extern f32 D_801E02B8;
extern f32 D_801E02D0;
extern char D_801E0300[];
extern char D_801E0330[];
extern char D_801E033C[];
extern char D_801E0348[];
extern char D_801E0354[];
extern f32 D_801E0384;
extern f32 D_801E0388;
extern f32 D_801E038C;
extern f32 D_801E04E0;
extern f32 D_801E04E4;
extern f32 D_801E04E8;
extern f32 D_801E04EC;
extern f32 D_801E04F0;
extern f32 D_801E04F4;
extern f32 D_801E04F8;
extern f32 D_801E04FC;
extern f32 D_801E0500;
extern f32 D_801E0504;
extern f32 D_801E0508;
extern f32 D_801E050C;
extern f32 D_801E0534;
extern f32 D_801E0538;
extern f32 D_801E05B4;
extern f32 D_801E05B8;
extern f32 D_801E05D0;
extern f32 D_801E05D4;
extern const u16 gAudioEnvironmentalSfx[];
// extern UNK_TYPE1 D_801E0BFC;
extern f32 D_801E0CEC;
extern f32 D_801E0CF0;
extern f32 D_801E0CF4;
extern f32 D_801E0CF8;
extern f32 D_801E0CFC;
extern f32 D_801E0D20;
extern f32 D_801E0D24;
extern f32 D_801E0D28;
extern f32 D_801E0D2C;
extern f32 D_801E0D30;
extern f32 D_801E0D34;
extern f64 D_801E0D58;
extern f32 D_801E0D60;
extern f32 D_801E0D64;
extern f32 D_801E0D68;
extern f32 D_801E0D8C;
extern f32 D_801E0D90;
extern f32 D_801E0D94;
extern f32 D_801E0D98;
extern f32 D_801E0D9C;
extern f32 D_801E0DBC;
extern f32 D_801E0DC0;
extern f32 D_801E0DC4;
extern f32 D_801E0DC8;
extern f32 D_801E0DCC;
extern f32 D_801E0DD0;
extern f32 D_801E0DD4;
extern f64 D_801E0DD8;
extern f64 D_801E0DE0;
extern f32 D_801E0DE8;
extern f32 D_801E0DEC;
extern f32 D_801E0DF0;
extern f32 D_801E0DF4;
extern f32 D_801E0DF8;
extern f32 D_801E0DFC;
extern f32 D_801E0E00;
extern f32 D_801E0E04;
extern f32 D_801E0E08;
extern f32 D_801E0E0C;
extern f32 D_801E0E10;
extern f32 D_801E0E14;
extern f32 D_801E0E18;
extern f32 D_801E0E1C;
extern f32 D_801E0E20;
extern f32 D_801E0E24;
extern f64 D_801E0EB0;
// extern UNK_TYPE4 D_801E1068;
extern UNK_PTR D_801E10B0;
extern const s16 gAudioTatumInit[];
extern const AudioHeapInitSizes gAudioHeapInitSizes;
// extern UNK_TYPE4 D_801E1108;
// extern UNK_TYPE4 D_801E110C;
extern u8 gSoundFontTable[];
extern u8 gSequenceFontTable[];
extern u8 gSequenceTable[];
extern u8 gSampleBankTable[];

// bss
// extern UNK_TYPE1 D_801ED894;

extern Vec3f D_801EDE00;
extern Vec3f D_801EDE10;
extern Vec3f D_801EDE20;
extern Vec3f D_801EDE30;
extern TriNorm D_801EDE40;
extern TriNorm D_801EDE78;
extern Linef D_801EDEB0;
extern TriNorm D_801EDEC8;
extern TriNorm D_801EDF00;
extern Vec3f D_801EDF38;
extern Vec3f D_801EDF48;
extern TriNorm D_801EDF58;
extern TriNorm D_801EDF90;
extern Linef D_801EDFC8;
extern Vec3f D_801EDFE0;
extern Vec3f D_801EDFF0;
extern TriNorm D_801EE000;
extern TriNorm D_801EE038;
extern TriNorm D_801EE070[2];
extern Vec3f D_801EE0D8;
extern TriNorm D_801EE0E8[2];
extern TriNorm D_801EE150;
extern TriNorm D_801EE188;
extern Vec3f D_801EE1C0;
extern Vec3f D_801EE1D0;
extern Vec3f D_801EE1E0;
extern Vec3f D_801EE1F0;
// extern UNK_TYPE1 D_801EE1F4;
// extern UNK_TYPE1 D_801EE1F8;
extern EffectSparkInit D_801EE200;
extern TriNorm D_801EE6C8;
extern TriNorm D_801EE700;
extern EffectSparkInit D_801EE738;
extern EffectSparkInit D_801EEC00;
extern EffectSparkInit D_801EF0C8;
extern TriNorm D_801EF590;
extern TriNorm D_801EF5C8;
extern TriNorm D_801EF600;
extern TriNorm D_801EF638;

// extern UNK_TYPE1 D_801F4E20;
// extern UNK_TYPE1 sBeatingHeartsDDPrim;
// extern UNK_TYPE1 sBeatingHeartsDDEnv;
// extern UNK_TYPE1 sHeartsDDPrim;
// extern UNK_TYPE1 D_801F4F56;
// extern UNK_TYPE1 D_801F4F58;
// extern UNK_TYPE1 D_801F4F5A;
// extern UNK_TYPE1 D_801F4F60;
// extern UNK_TYPE1 D_801F4F66;
// extern UNK_TYPE1 D_801F4F68;
// extern UNK_TYPE1 D_801F4F6A;

// extern UNK_TYPE1 D_801F5130;
// extern UNK_TYPE1 D_801F5270;
// extern UNK_TYPE1 D_801F528E;
// extern UNK_TYPE1 D_801F53B0;
// extern UNK_TYPE1 D_801F56B0;
// extern UNK_TYPE1 D_801F5730;
// extern UNK_TYPE1 D_801F57B4;
// extern UNK_TYPE1 D_801F5834;

// extern UNK_TYPE1 sSkyboxDrawMatrix;
// extern UNK_TYPE1 D_801F6AF0;
// extern UNK_TYPE1 D_801F6AF2;
// extern UNK_TYPE4 D_801F6B00;
// extern UNK_TYPE4 D_801F6B04;
// extern UNK_TYPE4 D_801F6B08;

extern void (*sKaleidoScopeUpdateFunc)(PlayState* play);
extern void (*sKaleidoScopeDrawFunc)(PlayState* play);

extern s32 gTransitionTileState;
extern Color_RGBA8_u32 gVisMonoColor;

extern GfxMasterList* gGfxMasterDL;

extern u64* gAudioSPDataPtr;
extern u32 gAudioSPDataSize;

extern MtxF* sMatrixStack;
extern MtxF* sCurrentMatrix;

extern s32 D_801FD120;

extern ActiveSfx gActiveSfx[7][3];
extern SeqRequest sSeqRequests[][5];
extern u8 sNumSeqRequests[5];
extern u32 sAudioSeqCmds[0xB0];
extern ActiveSequence gActiveSeqs[];
extern u8 sResetAudioHeapTimer;
extern u16 sResetAudioHeapFadeReverbVolume;
extern u16 sResetAudioHeapFadeReverbVolumeStep;
extern AudioContext gAudioCtx; // at 0x80200C70
extern AudioCustomUpdateFunction gAudioCustomUpdateFunction;
extern AudioCustomSeqFunction gAudioCustomSeqFunction;
extern AudioCustomReverbFunction gAudioCustomReverbFunction;
extern AudioCustomSynthFunction gAudioCustomSynthFunction;

// other segments
extern Mtx D_01000000;
extern u16 D_0F000000[];


#endif
