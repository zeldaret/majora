#include "global.h"
#include "overlays/gamestates/ovl_daytelop/z_daytelop.h"

void Cutscene_Nop800EA210(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800EA258(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800ED9C4(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800EA2B8(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800ED980(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800EDA04(GlobalContext* globalCtx, CutsceneContext* cCtxt);
void func_800EDA84(GlobalContext* globalCtx, CutsceneContext* csCtx);

// Unused
UNK_TYPE4 D_801BB120 = 0;
u16 D_801BB124 = 0;
u16 D_801BB128 = 0;
u8 D_801BB12C = 0;
u8 sCutsceneStoredPlayerForm = 0;

// bss
#ifndef NON_MATCHING
static u16 activeSequence;
#endif
s16 sCutsceneQuakeIndex;
struct_801F4D48 sCutsceneCameraInfo;
u16 D_801F4DC8[10];
UNK_TYPE D_801F4DDC;
s8 D_801F4DE0;
s16 D_801F4DE2;

void Cutscene_Init(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    s32 i;

    csCtx->state = CS_STATE_IDLE;
    csCtx->frames = 0;
    csCtx->unk_0C = 0.0f;
    globalCtx->csCtx.sceneCsCount = 0;
    globalCtx->csCtx.unk_12 = 0;

    for (i = 0; i < ARRAY_COUNT(D_801F4DC8); i++) {
        D_801F4DC8[i] = 0;
    }

    D_801F4DE0 = 0;

    Audio_SetCutsceneFlag(0);
}

void func_800EA0D4(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    csCtx->state = CS_STATE_SKIPPABLE_INIT;
    csCtx->playerAction = NULL;
}

void Cutscene_End(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
    }
}

typedef void(*CutsceneStateHandler)(GlobalContext* globalCtx, CutsceneContext* cCtxt);

CutsceneStateHandler sCsStateHandlers1[] = {
    /* CS_STATE_IDLE */ Cutscene_Nop800EA210,
    /* CS_STATE_SKIPPABLE_INIT */ func_800EA258,
    /* CS_STATE_SKIPPABLE_EXEC */ Cutscene_Nop800EA210,
    /* CS_STATE_UNSKIPPABLE_INIT */ func_800ED9C4,
    /* CS_STATE_UNSKIPPABLE_EXEC */ Cutscene_Nop800EA210,
};

void Cutscene_Update1(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (gSaveContext.cutscene < 0xFFF0) {
        sCsStateHandlers1[csCtx->state](globalCtx, csCtx);
    }
}

CutsceneStateHandler sCsStateHandlers2[] = {
    /* CS_STATE_IDLE */ Cutscene_Nop800EA210,
    /* CS_STATE_SKIPPABLE_INIT */ func_800EA2B8,
    /* CS_STATE_SKIPPABLE_EXEC */ func_800ED980,
    /* CS_STATE_UNSKIPPABLE_INIT */ func_800EDA04,
    /* CS_STATE_UNSKIPPABLE_EXEC */ func_800ED980,
};

void Cutscene_Update2(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if ((gSaveContext.cutsceneTrigger != 0) && (globalCtx->sceneLoadFlag == 0x14)) {
        gSaveContext.cutsceneTrigger = 0;
    }

    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE)) {
        gSaveContext.cutscene = 0xFFFD;
        gSaveContext.cutsceneTrigger = 1;
    }

    if (gSaveContext.cutscene >= 0xFFF0) {
        func_800EDA84(globalCtx, csCtx);
        sCsStateHandlers2[csCtx->state](globalCtx, csCtx);
    }
}

// Cutscene_Nop / Cutscene_DoNothing / Cutscene_Wait
void Cutscene_Nop800EA210(GlobalContext* globalCtx, CutsceneContext* csCtx) {
}

s32 func_800EA220(GlobalContext* globalCtx, CutsceneContext* csCtx, f32 target) {
    return Math_StepToF(&csCtx->unk_0C, target, 0.1f);
}

void func_800EA258(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetLetterboxTarget(0x20);
    if (func_800EA220(globalCtx, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++;
    }
}

void func_800EA2B8(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    func_800ED980(globalCtx, csCtx);
    Interface_ChangeAlpha(1);
    ShrinkWindow_SetLetterboxTarget(0x20);
    if (func_800EA220(globalCtx, csCtx, 1.0f)) {
        Audio_SetCutsceneFlag(1);
        csCtx->state++;
    }
}

#ifdef NON_MATCHING
// Command 0x96: Misc. Actions
void Cutscene_Command_Misc(GlobalContext* globalCtx2, CutsceneContext* csCtx, CsCmdBase* cmd) {
    static u16 D_801BB15C = 0xFFFF;
    GlobalContext* globalCtx = globalCtx2;
    Player* player = GET_PLAYER(globalCtx);
    u8 sp3F = 0;
    f32 temp_f0;
    int new_var;
    u16 temp_t5;

    if ((csCtx->frames < cmd->startFrame) || (csCtx->frames >= cmd->endFrame && cmd->endFrame != cmd->startFrame)) {
        return;
    }

    temp_f0 = Environment_LerpWeight(cmd->endFrame - 1, cmd->startFrame, csCtx->frames);
    if (csCtx->frames == cmd->startFrame) {
        sp3F = 1;
    }

    switch (cmd->base) {
        case 0x1:
            if (sp3F != 0) {
                func_800FD78C(globalCtx);
                globalCtx->envCtx.unk_F2[0] = 0x3C;
            }
            break;
        case 0x2:
            if (sp3F != 0) {
                func_801A47DC(0xF, 0, 0);
                func_800FB320(globalCtx, 3);
                D_801F4E68 = 1;
            }
            break;
        case 0x3:
            if (globalCtx->envCtx.lightAdjustments.fogFar < 12800) {
                globalCtx->envCtx.lightAdjustments.fogFar += 35;
            }
            break;
        case 0x4:
            if (sp3F != 0) {
                globalCtx->envCtx.unk_19 = 1;
                globalCtx->envCtx.unk_17 = 1;
                globalCtx->envCtx.unk_18 = 0;
                globalCtx->envCtx.unk_1A = 0x3C;
                globalCtx->envCtx.unk_21 = 1;
                globalCtx->envCtx.unk_1F = 0;
                globalCtx->envCtx.unk_20 = 1;
                globalCtx->envCtx.unk_24 = 0x3C;
                globalCtx->envCtx.unk_22 = globalCtx->envCtx.unk_24;
            }
            break;
        case 0x5:
            if (sp3F && (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC)) {
                csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
            }
            break;
        case 0x7:
            if (sp3F != 0) {
                if (globalCtx->loadedScene->titleTextId != 0) {
                    func_80151A68(globalCtx, globalCtx->loadedScene->titleTextId);
                }
            }
            break;
        case 0x8:
            func_8019F128(0x2150);
            if (sp3F != 0) {
                sCutsceneQuakeIndex = Quake_Add(GET_ACTIVE_CAM(globalCtx), 6);
                Quake_SetSpeed(sCutsceneQuakeIndex, 0x55F0);
                Quake_SetQuakeValues(sCutsceneQuakeIndex, 6, 4, 0, 0);
                if (!gSaveContext.unk_14) {}
                Quake_SetCountdown(sCutsceneQuakeIndex, 800);
            }
            break;
        case 0x9:
            if (sp3F != 0) {
                Quake_Init();
            }
            break;
        case 0xA:
            D_801F6D30.r = 0xFF;
            D_801F6D30.g = 0xFF;
            D_801F6D30.b = 0xFF;
            D_801F6D30.a = 0xFF * temp_f0;
            break;
        case 0xB:
            D_801F6D30.r = 0xFF;
            D_801F6D30.g = 0xB4;
            D_801F6D30.b = 0x64;
            D_801F6D30.a = 0xFF * temp_f0;
            break;
        case 0xC:
            globalCtx->roomCtx.currRoom.segment = NULL;
            break;
        case 0xD:
            if (globalCtx->state.frames & 8) {
                if (globalCtx->envCtx.lightAdjustments.ambientColor[0] < 0x28) {
                    globalCtx->envCtx.lightAdjustments.ambientColor[0] += 2;
                    globalCtx->envCtx.lightAdjustments.diffuseColor1[1] -= 3;
                    globalCtx->envCtx.lightAdjustments.diffuseColor1[2] -= 3;
                }
            } else {
                if (globalCtx->envCtx.lightAdjustments.ambientColor[0] >= 3) {
                    globalCtx->envCtx.lightAdjustments.ambientColor[0] -= 2;
                    globalCtx->envCtx.lightAdjustments.diffuseColor1[1] += 3;
                    globalCtx->envCtx.lightAdjustments.diffuseColor1[2] += 3;
                }
            }
            break;
        case 0xE:
            globalCtx->unk_18845 = 1;
            break;
        case 0xF:
            globalCtx->unk_18845 = 0;
            break;
        case 0x10:
            if (sp3F != 0) {
                globalCtx->envCtx.sandstormState = 1;
            }
            func_8019F128(0x20C0);
            break;
        case 0x11:
            gSaveContext.unk_3F58 = 1;
            break;
        case 0x12:
            if (gSaveContext.isNight == 0) {
                gSaveContext.time -= (u16)gGameInfo->data[0xF];
            } else {
                gSaveContext.time -= 2 * gGameInfo->data[0xF];
            }
            break;
        case 0x13:
            // AudioOcarina_PlayLongScarecrowAfterCredits
            func_8019D758();
            csCtx->frames = cmd->startFrame - 1;
            break;
        case 0x14:
            EnvFlags_Set(globalCtx, 3);
            break;
        case 0x15:
            EnvFlags_Set(globalCtx, 4);
            break;
        case 0x16:
            gSaveContext.playerForm = PLAYER_FORM_DEKU;
            break;
        case 0x17:
            player->stateFlags2 |= 0x4000000;
            break;
        case 0x18:
            player->stateFlags2 &= ~0x4000000;
            break;
        case 0x19:
            sCutsceneStoredPlayerForm = gSaveContext.playerForm;
            gSaveContext.playerForm = PLAYER_FORM_HUMAN;
            gSaveContext.equippedMask = 0;
            break;
        case 0x1A:
            func_8019F128(0x2159);
            if (sp3F != 0) {
                sCutsceneQuakeIndex = Quake_Add(GET_ACTIVE_CAM(globalCtx), 6);
                Quake_SetSpeed(sCutsceneQuakeIndex, 30000);
                Quake_SetQuakeValues(sCutsceneQuakeIndex, 20, 10, 0, 0);
                Quake_SetCountdown(sCutsceneQuakeIndex, 800);
            }
            break;
        case 0x1B:
            if (sp3F != 0) {
                globalCtx->nextEntranceIndex = 0x1C00;
                gSaveContext.nextCutsceneIndex = 0xFFF8;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->unk_1887F = 3;
            }
            break;
        case 0x1C:
            if (sp3F != 0) {
                globalCtx->envCtx.unk_17 = 0xD;
            }
            break;
        case 0x1D:
            gSaveContext.playerForm = sCutsceneStoredPlayerForm;
            break;
        case 0x1E:
            D_801F4DE0 = 1;
            break;
        case 0x1F:
            D_801F4DE0 = 0;
            break;
        case 0x21:
            if (sp3F != 0) {
                func_80146EE8(globalCtx);
            }
            break;
        case 0x22:
            if (sp3F != 0) {
                func_80144A94(&globalCtx->sramCtx);
            }
            break;
        case 0x23:
            if (D_801BB15C != csCtx->frames) {
                D_801BB15C = csCtx->frames;

                if (gGameInfo->data[0xF] != 0) {
                    gSaveContext.time += gGameInfo->data[0xF];
                    gSaveContext.time += (u16)gSaveContext.unk_14;
                }
            }
            break;
        case 0x24:
            func_8019F128(0x2150);
            if (sp3F != 0) {
                sCutsceneQuakeIndex = Quake_Add(GET_ACTIVE_CAM(globalCtx), 6);
                Quake_SetSpeed(sCutsceneQuakeIndex, 22000);
                Quake_SetQuakeValues(sCutsceneQuakeIndex, 2, 1, 0, 0);
                Quake_SetCountdown(sCutsceneQuakeIndex, 800);
            }
            break;

        case 0x26:
            gSaveContext.day = 9;

            {
                GameState* gameState = &globalCtx->state;
                gameState->running = false;
            }
            SET_NEXT_GAMESTATE(&globalCtx->state, Daytelop_Init, DaytelopContext);

            func_80146F5C(globalCtx);
            break;

        case 0x27:
            gSaveContext.playerForm = PLAYER_FORM_ZORA;
            break;

        case 0x28:
            csCtx->frames = cmd->startFrame - 1;
            break;
    }
}
#else
static u16 D_801BB15C = 0xFFFF;
void Cutscene_Command_Misc(GlobalContext* globalCtx2, CutsceneContext* csCtx, CsCmdBase* cmd);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/Cutscene_Command_Misc.s")
#endif

// Command 0x97: Set Environment Lighting
void Cutscene_Command_SetLighting(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdEnvLighting* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        if (cmd->setting != 0x20) {
            globalCtx->envCtx.unk_C3 = cmd->setting - 1;
            globalCtx->envCtx.unk_DC = 1.0f;
        } else {
            globalCtx->envCtx.unk_C3 = 0xFF;
        }
    }
}

// Command 0x12C: Play Background Music or Fanfare
void Cutscene_Command_PlaySequence(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        func_801A2C88(cmd->sequence - 1);
    }
}

// Command 0x12D: Stop Background Music or Fanfare
void Cutscene_Command_StopSequence(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicChange* cmd) {
    if ((csCtx->frames >= cmd->startFrame) && (cmd->endFrame >= csCtx->frames)) {
        func_801A2D54(cmd->sequence - 1);
    }
}

// Command 0x9C: Fade Background Music or Fanfare over duration
void Cutscene_Command_FadeSequence(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdMusicFade* cmd) {
    if ((csCtx->frames == cmd->startFrame) && (csCtx->frames < cmd->endFrame)) {
        u8 frameCount = cmd->endFrame - cmd->startFrame;

        if (cmd->type == 2) {
            Audio_QueueSeqCmd((frameCount << 0x10) | 0x110000FF);
        } else {
            Audio_QueueSeqCmd((frameCount << 0x10) | NA_BGM_STOP);
        }
    }
}

// Command 0x12E: Play Ambience music
void Cutscene_Command_PlayAmbienceSequence(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        // Audio_PlayNatureAmbienceSequence
        // nightSeqIndex is be natureAmbienceId
        func_801A4A28(globalCtx->soundCtx.nightSeqIndex);
    }
}

// Command 0x130:
void func_800EAD48(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        // Audio_SetSfxReverbIndexExceptOcarinaBank
        func_801A4428(2);
    }
}

// Command 0x131:
void func_800EAD7C(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if (csCtx->frames == cmd->startFrame) {
        // Audio_SetSfxReverbIndexExceptOcarinaBank
        func_801A4428(1);
    }
}

#ifdef NON_MATCHING
// Matches, but I don't want to deal with bss reordering yet
void func_800EADB0(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    static u16 activeSequence; // activeSequence
    u8 dayMinusOne;

    if (csCtx->frames == cmd->startFrame) {
        dayMinusOne = (gSaveContext.day - 1);
        if (dayMinusOne >= 3) {
            dayMinusOne = 0;
        }

        switch (cmd->base) {
            case 1:
                // func_801A246C(SEQ_PLAYER_BGM_MAIN, TYPE_1);
                func_801A246C(0, 1);
                break;

            case 2:
                // func_801A246C(SEQ_PLAYER_BGM_MAIN, TYPE_0);
                func_801A246C(0, 0);
                break;

            case 3:
                // func_801A246C(SEQ_PLAYER_BGM_MAIN, TYPE_2);
                func_801A246C(0, 2);
                break;

            case 4:
                // func_801A246C(SEQ_PLAYER_NATURE, TYPE_1);
                func_801A246C(4, 1);
                break;

            case 5:
                // func_801A246C(SEQ_PLAYER_NATURE, TYPE_0);
                func_801A246C(4, 0);
                break;

            case 6:
                // func_801A246C(SEQ_PLAYER_NATURE, TYPE_2);
                func_801A246C(4, 2);
                break;

            case 7:
                // Audio_GetActiveSequence
                activeSequence = func_801A8A50(0);
                break;

            case 8:
                if (activeSequence != 0xFFFF) {
                    // Audio_PlayBgmForDayScene
                    func_801A25E4(activeSequence, dayMinusOne);
                }
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/func_800EADB0.s")
#endif

// Command 0x12F: Fade Ambience music
void Cutscene_Command_FadeAmbienceSequence(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if (csCtx->frames == cmd->startFrame && csCtx->frames < cmd->endFrame) {
        u8 frameCount = cmd->endFrame - cmd->startFrame;

        Audio_QueueSeqCmd((frameCount << 0x10) | 0x140000FF);
    }
}

// Command 0x190: Rumble
void Cutscene_Command_Rumble(GlobalContext* globalCtx, CutsceneContext* csCtx, CsRumble* cmd) {
    switch (cmd->type) {
        case 1:
            if (csCtx->frames == cmd->startFrame) {
                func_8013ECE0(0.0f, cmd->unk6, cmd->unk7, cmd->unk8);
            }
            break;

        case 2:
            if ((csCtx->frames >= cmd->startFrame) && (cmd->endFrame >= csCtx->frames) &&
                ((csCtx->frames == cmd->startFrame) || (globalCtx->state.frames % 64) == 0)) {
                func_8013ECE0(0.0f, cmd->unk6, cmd->unk7, cmd->unk8);
            }
            break;
    }
}

// Command 0x9B: 
void Cutscene_Command_FadeColorScreen(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdFadeScreen* cmd) {
    if ((csCtx->frames >= cmd->startFrame) && (cmd->endFrame >= csCtx->frames)) {
        f32 alpha;

        globalCtx->envCtx.fillScreen = true;
        alpha = Environment_LerpWeight(cmd->endFrame, cmd->startFrame, csCtx->frames);

        if (((cmd->unk0 == 1)) || (cmd->unk0 == 2)) {
            globalCtx->envCtx.screenFillColor[0] = cmd->r;
            globalCtx->envCtx.screenFillColor[1] = cmd->g;
            globalCtx->envCtx.screenFillColor[2] = cmd->b;

            if (cmd->unk0 == 2) {
                globalCtx->envCtx.screenFillColor[3] = (1.0f - alpha) * 255.0f;
            } else {
                globalCtx->envCtx.screenFillColor[3] = 255.0f * alpha;
            }
        }
    }
}

// Command 0x9D: Set Time of Day & Environment Time
void Cutscene_Command_SetTime(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdDayTime* cmd) {
    u16 nextTime;
    u16 hourAsMinutes;
    u16 minutes;

    if (csCtx->frames == cmd->startFrame) {
        hourAsMinutes = (cmd->hour * 60.0f) / (60.0f * 24 / 0x10000);
        minutes = ((cmd->minute + 1) / (60.0f * 24 / 0x10000));

        nextTime = hourAsMinutes + minutes;
        gSaveContext.time = nextTime;
        gSaveContext.environmentTime = nextTime;
    }
}

void func_800EB364(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    csCtx->state = CS_STATE_UNSKIPPABLE_EXEC;
    func_80165690();
    Audio_SetCutsceneFlag(0);
    gSaveContext.unk_3F48 = 1;

    if ((gSaveContext.gameMode != 0) && (csCtx->frames != cmd->startFrame)) {
        gSaveContext.unk_3F1E = 1;
    }

    gSaveContext.cutscene = 0;
    if (cmd->base == 1) {
        globalCtx->nextEntranceIndex = (u16)globalCtx->csCtx.sceneCsList[globalCtx->csCtx.unk_12].unk4;
        gSaveContext.nextCutsceneIndex = 0;
        globalCtx->sceneLoadFlag = 0x14;
        if (gSaveContext.gameMode != 1) {
            Scene_SetExitFade(globalCtx);
        } else {
            D_801BB12C++;
            if (D_801BB12C >= 2) {
                D_801BB12C = 0;
            }
            globalCtx->unk_1887F = 4;
        }

        if ((globalCtx->nextEntranceIndex & 0xF) > 0) {
            gSaveContext.nextCutsceneIndex = (globalCtx->nextEntranceIndex & 0xF) + 0xFFEF;
        }

        globalCtx->nextEntranceIndex &= 0xFFF0;
    }
}

// Command 0x15E:
void Cutscene_Command_Terminator(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if (cmd->base == 1) {
        if (csCtx->frames == cmd->startFrame) {
            func_800EB364(globalCtx, csCtx, cmd);
        }
    } else if (cmd->base == 2) {
        if (csCtx->frames == cmd->startFrame) {
            func_80165690();

            switch (D_801F4DE2) {
                case 0x1F:
                    if (gSaveContext.weekEventReg[0x14] & 2) {
                        globalCtx->nextEntranceIndex = 0x3010;
                        globalCtx->sceneLoadFlag = 0x14;
                        globalCtx->unk_1887F = 3;
                    } else {
                        globalCtx->nextEntranceIndex = 0x8600;
                        gSaveContext.nextCutsceneIndex = 0xFFF0;
                        globalCtx->sceneLoadFlag = 0x14;
                        globalCtx->unk_1887F = 3;
                    }
                    break;

                case 0x44:
                    if (gSaveContext.weekEventReg[0x21] & 0x80) {
                        globalCtx->nextEntranceIndex = 0xAE70;
                        globalCtx->sceneLoadFlag = 0x14;
                        globalCtx->unk_1887F = 3;
                    } else {
                        globalCtx->nextEntranceIndex = 0xAE00;
                        gSaveContext.nextCutsceneIndex = 0xFFF0;
                        globalCtx->sceneLoadFlag = 0x14;
                        globalCtx->unk_1887F = 3;
                    }
                    break;

                case 0x5F:
                    gSaveContext.weekEventReg[0x37] |= 0x80;
                    globalCtx->nextEntranceIndex = 0x6A80;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->unk_1887F = 3;
                    break;

                case 0x36:
                    gSaveContext.weekEventReg[0x34] |= 0x20;
                    globalCtx->nextEntranceIndex = 0x2000;
                    gSaveContext.nextCutsceneIndex = 0xFFF1;
                    globalCtx->sceneLoadFlag = 0x14;
                    globalCtx->unk_1887F = 3;
                    break;
            }
        }
    }
}

// Command 0x15F:
// Related to credits?
void func_800EB6F8(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if ((csCtx->frames >= cmd->startFrame) && (func_801A3950(0, 1) != 0xFF)) {
        switch (cmd->base) {
            case 1:
                func_800EB364(globalCtx, csCtx, cmd);
                break;

            case 2:
                if (INV_CONTENT(ITEM_MASK_KAMARO) == ITEM_MASK_KAMARO) {
                    // Milk bar
                    globalCtx->nextEntranceIndex = 0x2400;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C00;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 3:
                if (INV_CONTENT(ITEM_MASK_GREAT_FAIRY) == ITEM_MASK_GREAT_FAIRY) {
                    // Fairy's fountain
                    globalCtx->nextEntranceIndex = 0x4600;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C10;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 4:
                if (INV_CONTENT(ITEM_MASK_ROMANI) == ITEM_MASK_ROMANI) {
                    // Romani ranch
                    globalCtx->nextEntranceIndex = 0x6400;
                    gSaveContext.nextCutsceneIndex = 0xFFF1;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C20;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 5:
                if (INV_CONTENT(ITEM_MASK_BLAST) == ITEM_MASK_BLAST) {
                    // West clock town
                    globalCtx->nextEntranceIndex = 0xD400;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C30;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 6:
                if (INV_CONTENT(ITEM_MASK_CIRCUS_LEADER) == ITEM_MASK_CIRCUS_LEADER) {
                    // Milk bar
                    globalCtx->nextEntranceIndex = 0x2400;
                    gSaveContext.nextCutsceneIndex = 0xFFF1;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C50;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 7:
                if (INV_CONTENT(ITEM_MASK_BREMEN) == ITEM_MASK_BREMEN) {
                    // Milk bar
                    globalCtx->nextEntranceIndex = 0x2400;
                    gSaveContext.nextCutsceneIndex = 0xFFF3;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C60;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 8:
                // Ikana canyon
                globalCtx->nextEntranceIndex = 0x2000;
                gSaveContext.nextCutsceneIndex = 0xFFF3;
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 9:
                if (INV_CONTENT(ITEM_MASK_COUPLE) == ITEM_MASK_COUPLE) {
                    // Termina field
                    globalCtx->nextEntranceIndex = 0x5400;
                    gSaveContext.nextCutsceneIndex = 0xFFF8;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C70;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 10:
                if (INV_CONTENT(ITEM_MASK_BUNNY) == ITEM_MASK_BUNNY) {
                    // Cucco shack
                    globalCtx->nextEntranceIndex = 0x7E00;
                    gSaveContext.nextCutsceneIndex = 0xFFF0;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C40;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;

            case 11:
                if (INV_CONTENT(ITEM_MASK_POSTMAN) == ITEM_MASK_POSTMAN) {
                    // Termina field
                    globalCtx->nextEntranceIndex = 0x5410;
                    gSaveContext.nextCutsceneIndex = 0xFFF8;
                } else {
                    // SPOT00
                    globalCtx->nextEntranceIndex = 0x1C80;
                    gSaveContext.nextCutsceneIndex = 0xFFF9;
                }
                globalCtx->sceneLoadFlag = 0x14;
                break;
        }
    }
}

// Command 0x99: Motion blur
void Cutscene_Command_MotionBlur(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if ((csCtx->frames >= cmd->startFrame) && (cmd->endFrame >= csCtx->frames)) {
        if ((csCtx->frames == cmd->startFrame) && (cmd->base == 1)) {
            func_8016566C(180);
        }

        if (cmd->base == 2) {
            f32 temp_f0 = Environment_LerpWeight(cmd->endFrame, cmd->startFrame, csCtx->frames);

            if (temp_f0 >= 0.9f) {
                func_80165690();
            } else {
                func_80165658((1.0f - temp_f0) * 180.0f);
            }
        }
    }
}

// Command 0x9A: Gives Tatl to the player
void Cutscene_Command_GiveTatlToPlayer(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    Player* player = GET_PLAYER(globalCtx);

    if ((csCtx->frames == cmd->startFrame) && (cmd->base == 1)) {
        gSaveContext.hasTatl = true;
        if (player->tatlActor != NULL) {
            return;
        }
        player->tatlActor = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ELF, player->actor.world.pos.x,
                                        player->actor.world.pos.y, player->actor.world.pos.z, 0, 0, 0, 0);
    }
}

#ifdef NON_MATCHING
// regalloc
void Cutscene_Command_TransitionFX(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdBase* cmd) {
    if ((csCtx->frames >= cmd->startFrame) && (cmd->endFrame >= csCtx->frames)) {
        f32 temp_f0;

        globalCtx->envCtx.fillScreen = true;
        temp_f0 = Environment_LerpWeight(cmd->endFrame, cmd->startFrame, csCtx->frames);

        switch (cmd->base) {
            case 1:
            case 5:
                globalCtx->envCtx.screenFillColor[0] = 160;
                globalCtx->envCtx.screenFillColor[1] = 160;
                globalCtx->envCtx.screenFillColor[2] = 160;
                if (cmd->base == 1) {
                    globalCtx->envCtx.screenFillColor[3] = 255.0f * temp_f0;
                    if (temp_f0 == 0.0f) {
                        func_8019F128(0x2846);
                    }
                } else {
                    globalCtx->envCtx.screenFillColor[3] = (1.0f - temp_f0) * 255.0f;
                }
                break;

            case 2:
            case 6:
                globalCtx->envCtx.screenFillColor[0] = 0;
                globalCtx->envCtx.screenFillColor[1] = 0;
                globalCtx->envCtx.screenFillColor[2] = 255;
                if (cmd->base == 2) {
                    globalCtx->envCtx.screenFillColor[3] = 255.0f * temp_f0;
                } else {
                    globalCtx->envCtx.screenFillColor[3] = (1.0f - temp_f0) * 255.0f;
                }
                break;

            case 3:
            case 7:
                globalCtx->envCtx.screenFillColor[0] = 255;
                globalCtx->envCtx.screenFillColor[1] = 0;
                globalCtx->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 3) {
                    globalCtx->envCtx.screenFillColor[3] = (1.0f - temp_f0) * 255.0f;
                } else {
                    globalCtx->envCtx.screenFillColor[3] = 255.0f * temp_f0;
                }
                break;

            case 4:
            case 8:
                globalCtx->envCtx.screenFillColor[0] = 0;
                globalCtx->envCtx.screenFillColor[1] = 0xFF;
                globalCtx->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 4) {
                    globalCtx->envCtx.screenFillColor[3] = (1.0f - temp_f0) * 255.0f;
                } else {
                    globalCtx->envCtx.screenFillColor[3] = 255.0f * temp_f0;
                }
                break;

            case 9:
                gSaveContext.unk_3F48 = 1;
                break;

            case 10:
            case 11:
                globalCtx->envCtx.screenFillColor[0] = 0;
                globalCtx->envCtx.screenFillColor[1] = 0;
                globalCtx->envCtx.screenFillColor[2] = 0;
                if (cmd->base == 10) {
                    globalCtx->envCtx.screenFillColor[3] = (1.0f - temp_f0) * 255.0f;
                } else {
                    globalCtx->envCtx.screenFillColor[3] = 255.0f * temp_f0;
                }
                break;

            case 12:
                globalCtx->envCtx.screenFillColor[0] = (160.0f * (1.0f - temp_f0));
                globalCtx->envCtx.screenFillColor[1] = (160.0f * (1.0f - temp_f0));
                globalCtx->envCtx.screenFillColor[2] = (u16)(160.0f * (1.0f - temp_f0));
                globalCtx->envCtx.screenFillColor[3] = 255;
                break;

            case 13:
                globalCtx->envCtx.screenFillColor[0] = (160.0f * temp_f0);
                globalCtx->envCtx.screenFillColor[1] = (160.0f * temp_f0);
                globalCtx->envCtx.screenFillColor[2] = (160.0f * temp_f0);
                globalCtx->envCtx.screenFillColor[3] = 255;
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/Cutscene_Command_TransitionFX.s")
#endif

// Command 0x5A: Camera
s32 Cutscene_Command_Camera(GlobalContext* globalCtx, u8* cmd) {
    s32 sp1C = 0;

    bcopy(cmd, &sp1C, 4);
    cmd += 4;
    if (func_8016A168() == 0) {
        func_80161998(cmd, &sCutsceneCameraInfo);
    }
    return sp1C + 4;
}

/**
 * Counts how many masks the player has
 * The count doesn't include transformation masks
 */
s32 Cutscene_CountNormalMasks(void) {
    s32 count = 0;

    if (INV_CONTENT(ITEM_MASK_TRUTH) == ITEM_MASK_TRUTH) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_KAFEI) == ITEM_MASK_KAFEI) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_ALL_NIGHT) == ITEM_MASK_ALL_NIGHT) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_BUNNY) == ITEM_MASK_BUNNY) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_KEATON) == ITEM_MASK_KEATON) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_GARO) == ITEM_MASK_GARO) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_ROMANI) == ITEM_MASK_ROMANI) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_CIRCUS_LEADER) == ITEM_MASK_CIRCUS_LEADER) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_POSTMAN) == ITEM_MASK_POSTMAN) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_COUPLE) == ITEM_MASK_COUPLE) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_GREAT_FAIRY) == ITEM_MASK_GREAT_FAIRY) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_GIBDO) == ITEM_MASK_GIBDO) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_DON_GERO) == ITEM_MASK_DON_GERO) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_KAMARO) == ITEM_MASK_KAMARO) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_CAPTAIN) == ITEM_MASK_CAPTAIN) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_STONE) == ITEM_MASK_STONE) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_BREMEN) == ITEM_MASK_BREMEN) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_BLAST) == ITEM_MASK_BLAST) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_SCENTS) == ITEM_MASK_SCENTS) {
        count++;
    }
    if (INV_CONTENT(ITEM_MASK_GIANT) == ITEM_MASK_GIANT) {
        count++;
    }

    return count;
}

#ifdef NON_MATCHING
// likely meme
// Command 0xA: Textbox
void Cutscene_Command_Textbox(GlobalContext* globalCtx, CutsceneContext* csCtx, CsCmdTextbox* cmd) {
    static s32 D_801BB160 = CS_TEXTBOX_TYPE_DEFAULT;
    u8 dialogState; // sp27
    s32 pad;
    u16 originalCsFrames; // sp1E
    s32 pad2;

    if ((cmd->startFrame >= csCtx->frames) || ((cmd->endFrame < csCtx->frames))) {
        return;
    }

    if (cmd->type != CS_TEXTBOX_TYPE_LEARN_SONG) {
        if (D_801BB124 != cmd->base) {
            if (D_801BB160 == CS_TEXTBOX_TYPE_3) {
                csCtx->frames--;
            }
            D_801BB160 = CS_TEXTBOX_TYPE_1;
            D_801BB124 = cmd->base;
            if (cmd->type == CS_TEXTBOX_TYPE_BOSSES_REMAINS) {
                if (CHECK_QUEST_ITEM(QUEST_REMAINS_ODOWLA) && CHECK_QUEST_ITEM(QUEST_REMAINS_GOHT) &&
                    CHECK_QUEST_ITEM(QUEST_REMAINS_GYORG) && CHECK_QUEST_ITEM(QUEST_REMAINS_TWINMOLD)) {
                    if (cmd->textId1 != 0xFFFF) {
                        Message_StartTextbox(globalCtx, cmd->textId1, NULL);
                    }
                } else {
                    Message_StartTextbox(globalCtx, cmd->base, NULL);
                }
            } else if (cmd->type == CS_TEXTBOX_TYPE_ALL_NORMAL_MASKS) {
                if (Cutscene_CountNormalMasks() == 20) {
                    if (cmd->textId1 != 0xFFFF) {
                        Message_StartTextbox(globalCtx, cmd->textId1, NULL);
                    }
                } else {
                    Message_StartTextbox(globalCtx, cmd->base, NULL);
                }
            } else {
                Message_StartTextbox(globalCtx, cmd->base, NULL);
            }
            return;
        }
    } else if (D_801BB128 != cmd->base) {
        D_801BB160 = CS_TEXTBOX_TYPE_LEARN_SONG;
        D_801BB128 = cmd->base;
        func_80152434(globalCtx, cmd->base);
        return;
    }

    if (csCtx->frames >= cmd->endFrame) {
        originalCsFrames = csCtx->frames;
        dialogState = func_80152498(&globalCtx->msgCtx);
        if (dialogState != 2 && dialogState != 0 && dialogState != 7 && dialogState != 8) {
            csCtx->frames--;
            if (dialogState == 4 && func_80147624(globalCtx)) {
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    if (cmd->base == 0x33BD) {
                        func_8019F230();
                    }

                    if (cmd->textId1 != 0xFFFF) {
                        func_80151938(globalCtx, cmd->textId1);
                        if (cmd->type == CS_TEXTBOX_TYPE_3) {
                            D_801BB160 = CS_TEXTBOX_TYPE_3;
                            if (cmd->textId2 != 0xFFFF) {
                                csCtx->frames++;
                            }
                        }
                    } else {
                        func_801477B4(globalCtx);
                        csCtx->frames++;
                    }
                } else {
                    if (cmd->base == 0x33BD) {
                        func_8019F208();
                    }

                    if (cmd->textId2 != 0xFFFF) {
                        func_80151938(globalCtx, cmd->textId2);
                        if (cmd->type == CS_TEXTBOX_TYPE_3) {
                            D_801BB160 = CS_TEXTBOX_TYPE_3;
                            if (cmd->textId1 != 0xFFFF) {
                                csCtx->frames++;
                            }
                        }
                    } else {
                        func_801477B4(globalCtx);
                        csCtx->frames++;
                    }
                }
            }

            if (dialogState == 5 && func_80147624(globalCtx) != 0) {
                func_80152434(globalCtx, cmd->base);
            }
        }

        if ((dialogState == 2) && (D_801BB160 == CS_TEXTBOX_TYPE_3)) {
            csCtx->frames--;
            D_801BB124++;
        }

        if (originalCsFrames == csCtx->frames) {
            Interface_ChangeAlpha(1);
            D_801BB124 = 0;
            D_801BB128 = 0;
            func_80161C0C();
        } else {
            func_80161BE0(1);
        }
    }
}
#else
s32 D_801BB160 = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/Cutscene_Command_Textbox.s")
#endif

void func_800ECD7C(CutsceneContext* csCtx, u8** cutscenePtr, s16 index) {
    s32 i;
    s32 count;

    bcopy(*cutscenePtr, &count, sizeof(s32));
    *cutscenePtr += 4;

    for (i = 0; i < count; i++) {
        CsCmdActorAction* actorAction = *(CsCmdActorAction**)cutscenePtr;

        if ((csCtx->frames >= actorAction->startFrame) && (csCtx->frames < actorAction->endFrame)) {
            csCtx->npcActions[index] = actorAction;
        }

        *cutscenePtr += sizeof(CsCmdActorAction);
    }
}

#ifdef NON_MATCHING
void Cutscene_ProcessCommands(GlobalContext* globalCtx, CutsceneContext* csCtx, u8* cutscenePtr) {
    s32 i;
    s16 phi_s0;
    s32 totalEntries;
    s32 j;
    u32 cmdType; // sp5C
    s32 pad;
    s32 cmdEntries;       // sp58
    s32 cutsceneEndFrame; // sp50
    s16 phi_s0_23;
    CsCmdBase* cmd;

    bcopy(cutscenePtr, &totalEntries, 4);
    cutscenePtr += 4;
    bcopy(cutscenePtr, &cutsceneEndFrame, 4);
    cutscenePtr += 4;

    if (((u16)cutsceneEndFrame < csCtx->frames) && (globalCtx->sceneLoadFlag != 0x14) &&
        (csCtx->state != CS_STATE_UNSKIPPABLE_EXEC)) {
        csCtx->state = CS_STATE_UNSKIPPABLE_INIT;
        return;
    }

    for (i = 0; i < totalEntries; i++) {
        bcopy(cutscenePtr, &cmdType, 4);
        cutscenePtr += 4;

        if (cmdType == 0xFFFFFFFF) {
            break;
        }

        if (((cmdType >= 0x64) && (cmdType < 0x96)) || (cmdType == 0xC9) || ((cmdType >= 0x1C2) && (cmdType < 0x258))) {
            for (phi_s0 = 0; phi_s0 < ARRAY_COUNT(D_801F4DC8); phi_s0++) {
                if ((u16)cmdType == D_801F4DC8[phi_s0]) {
                    func_800ECD7C(csCtx, &cutscenePtr, phi_s0);
                    cmdType = -2;
                    break;
                } else if (D_801F4DC8[phi_s0] == 0) {
                    D_801F4DC8[phi_s0] = cmdType;
                    func_800ECD7C(csCtx, &cutscenePtr, phi_s0);
                    cmdType = -2;
                    break;
                }
            }
        }

        switch (cmdType) {
            case CS_CMD_MISC:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_Misc(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_SET_LIGHTING:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_SetLighting(globalCtx, csCtx, (CsCmdEnvLighting*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_PLAYSEQ:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_PlaySequence(globalCtx, csCtx, (CsCmdMusicChange*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_STOPSEQ:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_StopSequence(globalCtx, csCtx, (CsCmdMusicChange*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_FADESEQ:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_FadeSequence(globalCtx, csCtx, (CsCmdMusicFade*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;

            case CS_CMD_PLAYAMBIENCE:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_PlayAmbienceSequence(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_FADEAMBIENCE:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_FadeAmbienceSequence(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_130:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_800EAD48(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_131:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_800EAD7C(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_132:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_800EADB0(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_RUMBLE:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_Rumble(globalCtx, csCtx, (CsRumble*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;

            case CS_CMD_FADESCREEN:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_FadeColorScreen(globalCtx, csCtx, (CsCmdFadeScreen*)cutscenePtr);
                    cutscenePtr += 0xC;
                }
                break;

            case CS_CMD_SETTIME:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_SetTime(globalCtx, csCtx, (CsCmdDayTime*)cutscenePtr);
                    cutscenePtr += sizeof(CsCmdDayTime);
                }
                break;

            case CS_CMD_SET_PLAYER_ACTION:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if ((csCtx->frames >= cmd->startFrame) && (csCtx->frames < cmd->endFrame)) {
                        csCtx->playerAction = (CsCmdActorAction*)cutscenePtr;
                    }
                    cutscenePtr += sizeof(CsCmdActorAction);
                }
                break;

            case CS_CMD_CAMERA:
                cutscenePtr = &cutscenePtr[Cutscene_Command_Camera(globalCtx, cutscenePtr)];
                break;

            case CS_CMD_TERMINATOR:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_Terminator(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_15F:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    func_800EB6F8(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_TEXTBOX:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cmd = (CsCmdBase*)cutscenePtr;
                    if (cmd->base != 0xFFFF) {
                        Cutscene_Command_Textbox(globalCtx, csCtx, (CsCmdTextbox*)cutscenePtr);
                    }
                    cutscenePtr += sizeof(CsCmdTextbox);
                }
                break;

            case CS_CMD_SCENE_TRANS_FX:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_TransitionFX(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += sizeof(CsCmdBase);
                }
                break;

            case CS_CMD_MOTIONBLUR:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_MotionBlur(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case CS_CMD_GIVETATL:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    Cutscene_Command_GiveTatlToPlayer(globalCtx, csCtx, (CsCmdBase*)cutscenePtr);
                    cutscenePtr += 8;
                }
                break;

            case -2:
                // Very useful and necessary case
                break;

            default:
                bcopy(cutscenePtr, &cmdEntries, 4);
                cutscenePtr += 4;
                for (j = 0; j < cmdEntries; j++) {
                    cutscenePtr += 8;
                }
                break;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/Cutscene_ProcessCommands.s")
#endif

void func_800ED980(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (gSaveContext.cutscene >= 0xFFF0) {
        csCtx->frames++;
        Cutscene_ProcessCommands(globalCtx, csCtx, globalCtx->csCtx.segment);
    }
}

void func_800ED9C4(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (func_800EA220(globalCtx, csCtx, 0.0f)) {
        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

// unused
void func_800EDA04(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if (func_800EA220(globalCtx, csCtx, 0.0f)) {
        s16 i;

        csCtx->playerAction = NULL;

        for (i = 0; i < ARRAY_COUNT(csCtx->npcActions); i++) {
            csCtx->npcActions[i] = NULL;
        }

        gSaveContext.cutscene = 0;
        gSaveContext.gameMode = 0;
        ActorCutscene_Stop(0x7F);
        Audio_SetCutsceneFlag(0);
        csCtx->state = CS_STATE_IDLE;
    }
}

void func_800EDA84(GlobalContext* globalCtx, CutsceneContext* csCtx) {
    if ((gSaveContext.cutsceneTrigger != 0) && (csCtx->state == CS_STATE_IDLE) && !func_801233E4(globalCtx)) {
        gSaveContext.cutscene = 0xFFFD;
    }

    if (gSaveContext.cutscene >= 0xFFF0 && csCtx->state == CS_STATE_IDLE) {
        s16 i;

        D_801BB124 = 0;
        D_801BB128 = 0;
        csCtx->playerAction = NULL;

        for (i = 0; i < ARRAY_COUNT(csCtx->npcActions); i++) {
            csCtx->npcActions[i] = NULL;
        }

        csCtx->state++;
        if (csCtx->state == CS_STATE_SKIPPABLE_INIT) {
            Audio_SetCutsceneFlag(1);

            csCtx->frames = 0xFFFF;
            csCtx->unk_14 = ActorCutscene_GetCurrentCamera(0x7F);
            func_8016119C(Play_GetCamera(globalCtx, csCtx->unk_14), &sCutsceneCameraInfo);
            csCtx->unk_18 = 0xFFFF;

            if (gSaveContext.cutsceneTrigger == 0) {
                Interface_ChangeAlpha(1);
                ShrinkWindow_SetLetterboxTarget(0x20);
                ShrinkWindow_SetLetterboxMagnitude(0x20);
                csCtx->state++;
            }

            func_800ED980(globalCtx, csCtx);
        }

        gSaveContext.cutsceneTrigger = 0;
    }
}

#ifdef NON_MATCHING
void func_800EDBE0(GlobalContext* globalCtx) {
    CutsceneEntry* temp_a3;
    s16 sp2A;
    SceneTableEntry* sp24;
    s32 temp_v0_3;

    if (((gSaveContext.gameMode == 0) || (gSaveContext.gameMode == 1)) && (gSaveContext.respawnFlag <= 0)) {
        sp2A = func_800F21CC();
        if (sp2A != -1) {
            temp_v0_3 = func_800F2138(sp2A);
            if (temp_v0_3 != -1) {
                temp_a3 = ((void)0, globalCtx->csCtx.sceneCsList);
                if ((temp_a3[temp_v0_3].unk7 != 0xFF) && (gSaveContext.respawnFlag == 0)) {
                    if (temp_a3[temp_v0_3].unk7 == 0xFE) {
                        ActorCutscene_Start(sp2A, NULL);
                        gSaveContext.showTitleCard = false;
                    } else if (!((1 << (temp_a3[temp_v0_3].unk7 % 8)) &
                                 gSaveContext.weekEventReg[temp_a3[temp_v0_3].unk7 / 8])) {
                        gSaveContext.weekEventReg[(temp_a3[temp_v0_3].unk7 / 8)] |= 1 << (temp_a3[temp_v0_3].unk7 % 8);
                        ActorCutscene_Start(sp2A, NULL);
                        gSaveContext.showTitleCard = false;
                    }
                }
            } else {
                ActorCutscene_StartAndSetUnkLinkFields(sp2A, NULL);
            }
        }
    }

    if ((gSaveContext.respawnFlag == 0) || (gSaveContext.respawnFlag == -2)) {
        sp24 = globalCtx->loadedScene;
        if ((sp24->titleTextId != 0) && gSaveContext.showTitleCard) {
            if ((Entrance_GetTransitionFlags(gSaveContext.sceneSetupIndex + gSaveContext.entranceIndex) & 0x4000) !=
                0) {
                func_80151A68(globalCtx, sp24->titleTextId);
            }
        }
        gSaveContext.showTitleCard = true;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_demo/func_800EDBE0.s")
#endif

void nop_800EDDB0(GlobalContext* globalCtx) {
}

void func_800EDDBC(UNK_TYPE arg0, UNK_TYPE arg1) {
}

void func_800EDDCC(GlobalContext* globalCtx, u8 arg1) {
    if (gGameInfo->data[0xA1F] == 0) {
        globalCtx->csCtx.unk_12 = arg1;
        globalCtx->csCtx.segment = Lib_SegmentedToVirtual(globalCtx->csCtx.sceneCsList[arg1].data);
    }

    gSaveContext.cutsceneTrigger = 1;
}

void func_800EDE34(Actor* actor, GlobalContext* globalCtx, s32 npcActionIndex) {
    Vec3f sp24;
    Vec3f sp18;
    CsCmdActorAction* entry = globalCtx->csCtx.npcActions[npcActionIndex];
    f32 temp_f0;

    sp24.x = entry->startPos.x;
    sp24.y = entry->startPos.y;
    sp24.z = entry->startPos.z;
    sp18.x = entry->endPos.x;
    sp18.y = entry->endPos.y;
    sp18.z = entry->endPos.z;

    temp_f0 = Environment_LerpWeight(entry->endFrame, entry->startFrame, globalCtx->csCtx.frames);
    actor->world.pos.x = ((sp18.x - sp24.x) * temp_f0) + sp24.x;
    actor->world.pos.y = ((sp18.y - sp24.y) * temp_f0) + sp24.y;
    actor->world.pos.z = ((sp18.z - sp24.z) * temp_f0) + sp24.z;
}

void func_800EDF24(Actor* actor, GlobalContext* globalCtx, u32 npcActionIndex) {
    func_800EDE34(actor, globalCtx, npcActionIndex);
    actor->world.rot.y = globalCtx->csCtx.npcActions[npcActionIndex]->urot.y;
    actor->shape.rot.y = actor->world.rot.y;
}

void func_800EDF78(Actor* actor, GlobalContext* globalCtx, s32 npcActionIndex) {
    Vec3f sp44;
    Vec3f sp38;
    CsCmdActorAction* entry;
    f32 temp_f0;

    sp44.x = globalCtx->csCtx.npcActions[npcActionIndex]->startPos.x;
    sp44.y = globalCtx->csCtx.npcActions[npcActionIndex]->startPos.y;
    sp44.z = globalCtx->csCtx.npcActions[npcActionIndex]->startPos.z;
    sp38.x = globalCtx->csCtx.npcActions[npcActionIndex]->endPos.x;
    sp38.y = globalCtx->csCtx.npcActions[npcActionIndex]->endPos.y;
    sp38.z = globalCtx->csCtx.npcActions[npcActionIndex]->endPos.z;

    entry = globalCtx->csCtx.npcActions[npcActionIndex];
    temp_f0 = Environment_LerpWeight(entry->endFrame, entry->startFrame, globalCtx->csCtx.frames);

    actor->world.pos.x = ((sp38.x - sp44.x) * temp_f0) + sp44.x;
    actor->world.pos.y = ((sp38.y - sp44.y) * temp_f0) + sp44.y;
    actor->world.pos.z = ((sp38.z - sp44.z) * temp_f0) + sp44.z;

    Math_SmoothStepToS(&actor->world.rot.y, Math_Vec3f_Yaw(&sp44, &sp38), 10, 1000, 1);
    actor->shape.rot.y = actor->world.rot.y;
}

// unused
void func_800EE0CC(Actor* actor, GlobalContext* globalCtx, s32 arg2) {
    Vec3f sp44;
    Vec3f sp38;
    CsCmdActorAction* entry;
    f32 temp_f0;

    sp44.x = globalCtx->csCtx.npcActions[arg2]->startPos.x;
    sp44.z = globalCtx->csCtx.npcActions[arg2]->startPos.z;
    sp38.x = globalCtx->csCtx.npcActions[arg2]->endPos.x;
    sp38.z = globalCtx->csCtx.npcActions[arg2]->endPos.z;

    entry = globalCtx->csCtx.npcActions[arg2];
    temp_f0 = Environment_LerpWeight(entry->endFrame, entry->startFrame, globalCtx->csCtx.frames);

    actor->world.pos.x = ((sp38.x - sp44.x) * temp_f0) + sp44.x;
    actor->world.pos.z = ((sp38.z - sp44.z) * temp_f0) + sp44.z;

    Math_SmoothStepToS(&actor->world.rot.y, Math_Vec3f_Yaw(&sp44, &sp38), 10, 1000, 1);
    actor->shape.rot.y = actor->world.rot.y;
}

s32 func_800EE1D8(GlobalContext* globalCtx) {
    s32 phi_v1 = 0;

    if (gSaveContext.sceneSetupIndex > 0) {
        phi_v1 = gSaveContext.sceneSetupIndex;
    }
    return phi_v1;
}

s32 func_800EE200(GlobalContext* globalCtx, u16 arg1) {
    s32 i;
    s32 phi_v1 = -1;

    for (i = 0; i < ARRAY_COUNT(D_801F4DC8); i++) {
        if (arg1 == D_801F4DC8[i]) {
            phi_v1 = i;
        }
    }

    return phi_v1;
}

s32 func_800EE29C(GlobalContext* globalCtx, u16 arg1) {
    if (globalCtx->csCtx.state != 0) {
        s32 index = func_800EE200(globalCtx, arg1);

        if (index != -1) {
            return globalCtx->csCtx.npcActions[index] != 0;
        }
    }

    return 0;
}

u8 func_800EE2F4(GlobalContext* globalCtx) {
    return gSaveContext.cutsceneTrigger != 0 || globalCtx->csCtx.state != 0;
}
