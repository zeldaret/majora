#include "global.h"

SaveContext gSaveContext;

void SaveContext_Init(void) {
    bzero(&gSaveContext, sizeof(SaveContext));

    gSaveContext.save.playerForm = 0;
    gSaveContext.seqIndex = (u8)NA_BGM_DISABLED;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.unk_3F46 = NA_BGM_GENERAL_SFX;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.unk_3F4D = 0;
    gSaveContext.nextDayTime = 0xFFFF;
    gSaveContext.skyboxTime = 0;
    gSaveContext.dogIsLost = true;
    gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
    gSaveContext.unk_3F26 = 50;

    gSaveContext.options.language = 1;
    gSaveContext.options.audioSetting = FS_AUDIO_STEREO;
    gSaveContext.options.zTargetSetting = 0;
}
