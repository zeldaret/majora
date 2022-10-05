#include "global.h"
#include "z64rumble.h"
#include "z64quake.h"
#include "z64shrink_window.h"
#include "z64view.h"
#include "overlays/gamestates/ovl_daytelop/z_daytelop.h"
#include "overlays/gamestates/ovl_opening/z_opening.h"
#include "overlays/gamestates/ovl_file_choose/z_file_choose.h"
#include "overlays/kaleido_scope/ovl_kaleido_scope/z_kaleido_scope.h"

extern Gfx D_0E000140[];

s32 gDbgCamEnabled = false;
u8 D_801D0D54 = false;

// bss
extern s16 sTransitionFillTimer;
extern Input D_801F6C18;
extern FbDemoStruct sTrnsnUnk;
extern u16* D_801F6D0C;
extern s32 gTrnsnUnkState;
extern VisMono sVisMono;
extern Color_RGBA8_u32 gVisMonoColor;
extern Struct_80140E80 D_801F6D38;
extern Struct_80140E80* D_801F6D4C;
extern HiresoStruct D_801F6D50;
extern u8 D_801F6DFC;
extern u8 sMotionBlurStatus;

typedef enum {
    /* 0 */ MOTION_BLUR_STOPPED,
    /* 1 */ MOTION_BLUR_INITALIZING,
    /* 2 */ MOTION_BLUR_RUNNING
} MotionBlurStatus;

void Play_MotionBlurDraw(PlayState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s32 alpha;
    Gfx* gfx;
    Gfx* dlistHead;

    if (R_MOTION_BLUR_PRIORITY_ENABLED) {
        alpha = R_MOTION_BLUR_PRIORITY_ALPHA;

        if (sMotionBlurStatus == MOTION_BLUR_STOPPED) {
            sMotionBlurStatus = MOTION_BLUR_INITALIZING;
        }
    } else if (R_MOTION_BLUR_ENABLED) {
        alpha = R_MOTION_BLUR_ALPHA;

        if (sMotionBlurStatus == MOTION_BLUR_STOPPED) {
            sMotionBlurStatus = MOTION_BLUR_INITALIZING;
        }
    } else {
        alpha = 0;
        sMotionBlurStatus = MOTION_BLUR_STOPPED;
    }

    if (sMotionBlurStatus != MOTION_BLUR_STOPPED) {
        OPEN_DISPS(gfxCtx);

        dlistHead = POLY_OPA_DISP;
        gfx = Graph_GfxPlusOne(dlistHead);

        gSPDisplayList(OVERLAY_DISP++, gfx);

        this->pauseBgPreRender.fbuf = gfxCtx->curFrameBuffer;
        this->pauseBgPreRender.fbufSave = this->unk_18E64;

        if (sMotionBlurStatus == MOTION_BLUR_RUNNING) {
            func_80170AE0(&this->pauseBgPreRender, &gfx, alpha);
        } else {
            sMotionBlurStatus = MOTION_BLUR_RUNNING;
        }

        func_801705B4(&this->pauseBgPreRender, &gfx);

        gSPEndDisplayList(gfx++);

        Graph_BranchDlist(dlistHead, gfx);

        POLY_OPA_DISP = gfx;

        CLOSE_DISPS(gfxCtx);
    }
}

void Play_MotionBlurInit(void) {
    R_MOTION_BLUR_ENABLED = false;
    R_MOTION_BLUR_PRIORITY_ENABLED = false;
    sMotionBlurStatus = MOTION_BLUR_STOPPED;
}

void Play_MotionBlurDestroy(void) {
    R_MOTION_BLUR_ENABLED = false;
    R_MOTION_BLUR_PRIORITY_ENABLED = false;
    sMotionBlurStatus = MOTION_BLUR_STOPPED;
}

void Play_MotionBlurSetAlpha(u32 alpha) {
    R_MOTION_BLUR_ALPHA = alpha;
}

void Play_MotionBlurEnable(u32 alpha) {
    R_MOTION_BLUR_ALPHA = alpha;
    R_MOTION_BLUR_ENABLED = true;
}

void Play_MotionBlurDisable(void) {
    R_MOTION_BLUR_ENABLED = false;
}

void func_801656A4(void* arg0, u16* arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    s32 i;
    s32 j;
    u32 t2;
    u32 temp1;
    u32 temp2;
    u32 tempr;
    u32 tempg;
    u32 tempb;

    switch (arg7) {
        case 4: {
            u8* arg01 = (u8*)arg0;

            for (i = arg4; i <= arg6; i++) {
                for (j = arg3; j <= arg5; j += 2) {
                    t2 = arg1[i * arg2 + j];
                    tempr = (t2 >> 11) & 0x1F;
                    tempg = (t2 >> 6) & 0x1F;
                    tempb = (t2 >> 1) & 0x1F;
                    temp1 = ((tempr * 2 + tempg * 4 + tempb) * 0xF) / 217;

                    t2 = arg1[i * arg2 + j + 1];
                    tempr = (t2 >> 11) & 0x1F;
                    tempg = (t2 >> 6) & 0x1F;
                    tempb = (t2 >> 1) & 0x1F;
                    temp2 = ((tempr * 2 + tempg * 4 + tempb) * 0xF) / 217;

                    *(arg01++) = (temp1 << 4) | temp2;
                }
            }
            break;
        }

        case 5: {
            u8* arg02 = (u8*)arg0;

            for (i = arg4; i <= arg6; i++) {
                for (j = arg3; j <= arg5; j++) {
                    t2 = arg1[i * arg2 + j];
                    tempr = (t2 >> 11) & 0x1F;
                    tempg = (t2 >> 6) & 0x1F;
                    tempb = (t2 >> 1) & 0x1F;

                    //! What
                    t2 = 0;

                    *(arg02++) = (((tempr * 2 + tempg * 4 + tempb) * 0xFF) / 217) & 0xF8;
                }
            }
            break;
        }

        case 8: {
            u8* arg03 = (u8*)arg0;

            for (i = arg4; i <= arg6; i++) {
                for (j = arg3; j <= arg5; j++) {
                    t2 = arg1[i * arg2 + j];

                    tempr = (t2 >> 11) & 0x1F;
                    tempg = (t2 >> 6) & 0x1F;
                    tempb = (t2 >> 1) & 0x1F;

                    *(arg03++) = ((tempr * 2 + tempg * 4 + tempb) * 0xFF) / 217;
                }
            }
            break;
        }

        case 16: {
            u16* arg0u = (u16*)arg0;

            for (i = arg4; i <= arg6; i++) {
                for (j = arg3; j <= arg5; j++) {
                    *(arg0u++) = arg1[i * arg2 + j];
                }
            }
            break;
        }
    }
}

void Play_MotionBlurPrioritySetAlpha(u32 alpha) {
    R_MOTION_BLUR_PRIORITY_ALPHA = alpha;
}

void Play_MotionBlurPriorityEnable(u32 alpha) {
    R_MOTION_BLUR_PRIORITY_ALPHA = alpha;
    R_MOTION_BLUR_PRIORITY_ENABLED = true;
}

void Play_MotionBlurPriorityDisable(void) {
    R_MOTION_BLUR_PRIORITY_ENABLED = false;
}

void func_80165E04(void) {
    SREG(89) = 1;
}

// Takes the picto photo, stores it as I8 to gPictoPhotoI8
void func_80165E1C(PreRender* prerender) {
    PreRender_ApplyFilters(prerender);
    func_801656A4(gPictoPhotoI8, prerender->fbufSave, 320, 80, 64, 240 - 1, 176 - 1, 8);
}

s32 func_80165E7C(PlayState* this, s32 transitionType) {
    s32 nextTransitionType = transitionType;

    if (transitionType == TRANS_TYPE_20) {
        if (!gSaveContext.save.isNight) {
            nextTransitionType = TRANS_TYPE_FADE_WHITE;
        } else {
            nextTransitionType = TRANS_TYPE_FADE_BLACK;
        }
    }
    if (nextTransitionType != transitionType) {
        this->transitionType = nextTransitionType;
    }
    return nextTransitionType;
}

void Play_SetupTransition(PlayState* this, s32 transitionType) {
    TransitionContext* transitionCtx = &this->transitionCtx;
    s32 fbdemoType;

    bzero(transitionCtx, sizeof(TransitionContext));

    fbdemoType = -1;
    if (transitionType & 0x40) {
        fbdemoType = FBDEMO_WIPE3;
    } else if ((transitionType & 0x78) == 0x20) {
        fbdemoType = FBDEMO_WIPE4;
    } else if (!(transitionType & 0x60)) {
        switch (transitionType) {
            case TRANS_TYPE_TRIFORCE:
                fbdemoType = FBDEMO_TRIFORCE;
                break;

            case TRANS_TYPE_WIPE:
            case TRANS_TYPE_WIPE_FAST:
                fbdemoType = FBDEMO_WIPE1;
                break;

            case TRANS_TYPE_FADE_BLACK:
            case TRANS_TYPE_FADE_WHITE:
            case TRANS_TYPE_FADE_BLACK_FAST:
            case TRANS_TYPE_FADE_WHITE_FAST:
            case TRANS_TYPE_FADE_BLACK_SLOW:
            case TRANS_TYPE_FADE_WHITE_SLOW:
            case TRANS_TYPE_FADE_WHITE_CS_DELAYED:
            case TRANS_TYPE_FADE_WHITE_INSTANT:
            case TRANS_TYPE_FADE_GREEN:
            case TRANS_TYPE_FADE_BLUE:
                fbdemoType = FBDEMO_FADE;
                break;

            case TRANS_TYPE_FILL_WHITE2:
            case TRANS_TYPE_FILL_WHITE:
                this->transitionMode = TRANS_MODE_FILL_WHITE_INIT;
                break;

            case TRANS_TYPE_INSTANT:
                this->transitionMode = TRANS_MODE_INSTANT;
                break;

            case TRANS_TYPE_FILL_BROWN:
                this->transitionMode = TRANS_MODE_FILL_BROWN_INIT;
                break;

            case TRANS_TYPE_SANDSTORM_PERSIST:
                this->transitionMode = TRANS_MODE_SANDSTORM_INIT;
                break;

            case TRANS_TYPE_SANDSTORM_END:
                this->transitionMode = TRANS_MODE_SANDSTORM_END_INIT;
                break;

            case TRANS_TYPE_CS_BLACK_FILL:
                this->transitionMode = TRANS_MODE_CS_BLACK_FILL_INIT;
                break;

            case TRANS_TYPE_21:
                fbdemoType = FBDEMO_CIRCLE;
                break;

            case TRANS_TYPE_22:
                fbdemoType = FBDEMO_WIPE5;
                break;

            default:
                fbdemoType = -1;
                __assert("../z_play.c", 1420);
        }
    } else {
        fbdemoType = -1;
        __assert("../z_play.c", 1423);
    }

    transitionCtx->transitionType = transitionType;
    transitionCtx->fbdemoType = fbdemoType;
    if (fbdemoType != -1) {
        Transition_Init(transitionCtx);
    }
}

const char D_801DFA18[] = "来た!!!!!!!!!!!!!!!!!!!!!";
const char D_801DFA34[] = "all";
const char D_801DFA38[] = "a";
const char D_801DFA3C[] = "a";
const char D_801DFA40[] = "b";
const char D_801DFA44[] = "b";
const char D_801DFA48[] = "c";
const char D_801DFA4C[] = "c";
const char D_801DFA50[] = "d";
const char D_801DFA54[] = "d";
const char D_801DFA58[] = "e";
const char D_801DFA5C[] = "e";
const char D_801DFA60[] = "f";
const char D_801DFA64[] = "fa";
const char D_801DFA68[] = "fa";
const char D_801DFA6C[] = "fb";
const char D_801DFA70[] = "fb";
const char D_801DFA74[] = "fc";
const char D_801DFA78[] = "fc";
const char D_801DFA7C[] = "fd";
const char D_801DFA80[] = "fd";
const char D_801DFA84[] = "fe";
const char D_801DFA88[] = "fe";
const char D_801DFA8C[] = "fg";
const char D_801DFA90[] = "fg";
const char D_801DFA94[] = "fh";
const char D_801DFA98[] = "fh";
const char D_801DFA9C[] = "fi";
const char D_801DFAA0[] = "fi";
const char D_801DFAA4[] = "fj";
const char D_801DFAA8[] = "fj";
const char D_801DFAAC[] = "fk";
const char D_801DFAB0[] = "fk";
const char D_801DFAB4[] = "f";
const char D_801DFAB8[] = "g";
const char D_801DFABC[] = "g";
const char D_801DFAC0[] = "h";
const char D_801DFAC4[] = "h";
const char D_801DFAC8[] = "i";
const char D_801DFACC[] = "i";
const char D_801DFAD0[] = "all";
const char D_801DFAD4[] = "all";
const char D_801DFAD8[] = "a";
const char D_801DFADC[] = "b";
const char D_801DFAE0[] = "c";
const char D_801DFAE4[] = "d";
const char D_801DFAE8[] = "e";
const char D_801DFAEC[] = "f";
const char D_801DFAF0[] = "g";
const char D_801DFAF4[] = "h";
const char D_801DFAF8[] = "i";
const char D_801DFAFC[] = "f";
const char D_801DFB00[] = "fa";
const char D_801DFB04[] = "fb";
const char D_801DFB08[] = "fc";
const char D_801DFB0C[] = "fd";
const char D_801DFB10[] = "fe";
const char D_801DFB14[] = "ff";
const char D_801DFB18[] = "fg";
const char D_801DFB1C[] = "fh";
const char D_801DFB20[] = "fi";
const char D_801DFB24[] = "fj";
const char D_801DFB28[] = "fk";

void Play_ClearTransitionInstanceType(PlayState* this) {
    if (this->transitionCtx.fbdemoType != -1) {
        Transition_Destroy(&this->transitionCtx);
    }
    this->transitionCtx.transitionType = -1;
}

Gfx* func_801660B8(PlayState* this, Gfx* gfx) {
    s32 phi_v1 = this->lightCtx.unkC * (5.0f / 64.0f);

    return Gfx_SetFogWithSync(gfx, this->lightCtx.unk7, this->lightCtx.unk8, this->lightCtx.unk9, 0,
                              this->lightCtx.unkA, (phi_v1 <= 1000) ? 1000 : phi_v1);
}

void Play_Destroy(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    if (D_801F6DFC) {
        MsgEvent_SendNullTask();
        func_80178750();
        gfxCtx->curFrameBuffer = SysCfb_GetFbPtr(gfxCtx->framebufferIdx % 2);
        gfxCtx->zbuffer = SysCfb_GetZBuffer();
        gfxCtx->viMode = D_801FBB88;
        gfxCtx->viConfigFeatures = gViConfigFeatures;
        gfxCtx->xScale = gViConfigXScale;
        gfxCtx->yScale = gViConfigYScale;
        gfxCtx->updateViMode = true;
        D_801F6DFC = false;
    }

    func_8016FC98(&D_801F6D50);
    this->state.gfxCtx->callback = NULL;
    this->state.gfxCtx->callbackParam = 0;
    Play_MotionBlurDestroy();

    if (SREG(94) != 0) {
        PreRender_ApplyFiltersSlowlyDestroy(&this->pauseBgPreRender);
        SREG(94) = 0;
    }

    SREG(89) = 0;
    PreRender_Destroy(&this->pauseBgPreRender);
    this->unk_18E58 = NULL;
    this->pictoPhotoI8 = NULL;
    this->unk_18E60 = NULL;
    this->unk_18E64 = NULL;
    this->unk_18E68 = NULL;
    Effect_DestroyAll(this);
    EffectSS_Clear(this);
    CollisionCheck_DestroyContext(this, &this->colChkCtx);

    if (gTrnsnUnkState == 3) {
        TransitionUnk_Destroy(&sTrnsnUnk);
        gTrnsnUnkState = 0;
    }

    if ((this->transitionMode == TRANS_MODE_INSTANCE_RUNNING) || D_801D0D54) {
        this->transitionCtx.destroy(&this->transitionCtx.instanceData);
        Play_ClearTransitionInstanceType(this);
        this->transitionMode = TRANS_MODE_OFF;
    }

    ShrinkWindow_Destroy();
    TransitionFade_Destroy(&this->unk_18E48);
    VisMono_Destroy(&sVisMono);
    func_80140EA0(D_801F6D4C);
    D_801F6D4C = NULL;

    if (gSaveContext.save.weekEventReg[0x5C] & 0x80) {
        Actor_CleanupContext(&this->actorCtx, this);
    }
    gSaveContext.save.weekEventReg[0x5C] &= (u8)~0x80;

    Interface_Destroy(this);
    KaleidoScopeCall_Destroy(this);
    KaleidoManager_Destroy();
    ZeldaArena_Cleanup();
}

// compresses from I8 to I5 and stores it in the save file
void func_801663C4(u8* srcI8, s8* destI5, size_t size) {
    u32 i;
    u8* src = srcI8;
    s8* dest = destI5;
    s32 var_a3 = 8;
    u32 var_t0 = 0;
    s32 var_a1;
    u32 temp_lo_2;

    for (i = 0; i < size; i++) {
        temp_lo_2 = *src++;
        temp_lo_2 = (temp_lo_2 * 0x1F + 0x80) / 255;
        var_a1 = var_a3 - 5;
        if (var_a1 > 0) {
            var_t0 |= temp_lo_2 << (var_a1);

        } else {
            var_t0 |= temp_lo_2 >> -(var_a1);
            *dest++ = var_t0;
            var_a1 += 8;
            var_t0 = temp_lo_2 << (var_a1);
        }
        var_a3 = var_a1;
    }
    if (var_a3 < 8) {
        *dest = var_t0;
    }
}

// decompresses from the save file from I5 to I8
void func_80166644(u8* srcI5, s8* destI8, size_t size) {
    u32 i;
    u8* src = srcI5;
    s8* dest = destI8;
    s32 var_a3 = 8;
    u32 var_t0;
    s32 var_a1;
    u32 temp_lo_2 = *src++;

    for (i = 0; i < size; i++) {
        var_a1 = var_a3 - 5;
        if (var_a1 > 0) {
            var_t0 = 0;
            var_t0 |= temp_lo_2 >> (var_a1);
        } else {
            var_t0 = 0;
            var_t0 |= temp_lo_2 << -(var_a1);
            temp_lo_2 = *src++;
            var_a1 += 8;
            var_t0 |= temp_lo_2 >> var_a1;
        }
        var_t0 = (var_t0 & 0x1F) * 0xFF / 0x1F;
        *dest++ = var_t0;
        var_a3 = var_a1;
    }
}

f32 func_801668B4(PlayState* this, Vec3f* arg1, s32* arg2) {
    Player* player = GET_PLAYER(this);
    f32 sp38 = player->actor.world.pos.y;
    WaterBox* waterBox;
    s32 bgId;

    if (!WaterBox_GetSurfaceImpl(this, &this->colCtx, arg1->x, arg1->z, &sp38, &waterBox, &bgId)) {
        return BGCHECK_Y_MIN;
    }

    if (sp38 < arg1->y) {
        return BGCHECK_Y_MIN;
    }

    *arg2 = WaterBox_GetLightSettingIndex(&this->colCtx, waterBox);
    return sp38;
}

void func_80166968(PlayState* this, Camera* camera) {
    static s16 sQuakeIndex = -1;
    static s16 sIsCameraUnderwater = false;
    s32 pad;
    s32 sp28;
    Player* player = GET_PLAYER(this);

    sIsCameraUnderwater = camera->stateFlags & CAM_STATE_UNDERWATER;
    if (func_801668B4(this, &camera->eye, &sp28) != BGCHECK_Y_MIN) {
        if (!sIsCameraUnderwater) {
            Camera_SetFlags(camera, CAM_STATE_UNDERWATER);
            sQuakeIndex = -1;
            Distortion_SetType(0x10);
            Distortion_SetCountdown(80);
        }

        func_801A3EC0(0x20);
        func_800F6834(this, sp28);

        if ((sQuakeIndex == -1) || (Quake_GetCountdown(sQuakeIndex) == 0xA)) {
            s16 quakeIndex = Quake_Add(camera, 5);

            sQuakeIndex = quakeIndex;
            if (quakeIndex != 0) {
                Quake_SetSpeed(sQuakeIndex, 550);
                Quake_SetQuakeValues(sQuakeIndex, 1, 1, 180, 0);
                Quake_SetCountdown(sQuakeIndex, 1000);
            }
        }
        if (player->stateFlags3 & PLAYER_STATE3_8000) {
            Distortion_SetType(8);
            Distortion_ClearType(4);
        } else {
            Distortion_SetType(4);
            Distortion_ClearType(8);
        }
    } else {
        if (sIsCameraUnderwater) {
            Camera_ClearFlags(camera, CAM_STATE_UNDERWATER);
        }
        Distortion_ClearType(4);
        Distortion_ClearType(0x10);
        Distortion_ClearType(8);
        if (sQuakeIndex != 0) {
            Quake_Remove(sQuakeIndex);
        }
        func_800F694C(this);
        func_801A3EC0(0);
    }
}

void Play_UpdateTransition(PlayState* this) {
    s32 pad;

    if (this->transitionMode == TRANS_MODE_OFF) {
        return;
    }

    switch (this->transitionMode) {
        case TRANS_MODE_SETUP:
            if (this->transitionTrigger != TRANS_TRIGGER_END) {
                s16 sceneLayer = 0;

                Interface_SetHudVisibility(HUD_VISIBILITY_NONE);

                if (gSaveContext.nextCutsceneIndex >= 0xFFF0) {
                    sceneLayer = (gSaveContext.nextCutsceneIndex & 0xF) + 1;
                }

                if ((!(Entrance_GetTransitionFlags(this->nextEntrance + sceneLayer) & 0x8000) ||
                     ((this->nextEntrance == ENTRANCE(PATH_TO_MOUNTAIN_VILLAGE, 1)) &&
                      !(gSaveContext.save.weekEventReg[0x21] & 0x80)) ||
                     ((this->nextEntrance == ENTRANCE(ROAD_TO_SOUTHERN_SWAMP, 1)) &&
                      !(gSaveContext.save.weekEventReg[0x14] & 2)) ||
                     ((this->nextEntrance == ENTRANCE(TERMINA_FIELD, 2)) &&
                      !(gSaveContext.save.weekEventReg[0x37] & 0x80)) ||
                     ((this->nextEntrance == ENTRANCE(ROAD_TO_IKANA, 1)) &&
                      !(gSaveContext.save.weekEventReg[0x34] & 0x20))) &&
                    (!func_800FE590(this) || (Entrance_GetSceneId(this->nextEntrance + sceneLayer) < 0) ||
                     (Audio_GetActiveSequence(0) != NA_BGM_FINAL_HOURS))) {
                    func_801A4058(20);
                    gSaveContext.seqId = 0xFF;
                    gSaveContext.ambienceId = 0xFF;
                }

                if (func_800FD768()) {
                    func_801A4058(20);
                    gSaveContext.seqId = 0xFF;
                    gSaveContext.ambienceId = 0xFF;
                }

                if (func_800FE590(this) && (Entrance_GetSceneId(this->nextEntrance + sceneLayer) >= 0) &&
                    (Audio_GetActiveSequence(0) == NA_BGM_FINAL_HOURS)) {
                    func_801A41C8(20);
                }
            }

            if (!D_801D0D54) {
                Play_SetupTransition(this, func_80165E7C(this, this->transitionType));
            }

            if (this->transitionMode >= TRANS_MODE_FILL_WHITE_INIT) {
                // non-instance modes break out of this switch
                break;
            }
            // fallthrough
        case TRANS_MODE_INSTANCE_INIT: {
            s32 transWipeSpeed;
            s32 transFadeDuration;
            u32 color;

            this->transitionCtx.init(&this->transitionCtx.instanceData);

            if (this->transitionCtx.transitionType & 0x60) {
                this->transitionCtx.setType(&this->transitionCtx.instanceData,
                                            this->transitionCtx.transitionType | 0x80);
            }

            if ((this->transitionCtx.transitionType == TRANS_TYPE_WIPE_FAST) ||
                (this->transitionCtx.transitionType == TRANS_TYPE_FILL_WHITE2)) {
                transWipeSpeed = 28;
            } else {
                transWipeSpeed = 14;
            }
            gSaveContext.transWipeSpeed = transWipeSpeed;

            switch (this->transitionCtx.transitionType) {
                case TRANS_TYPE_FADE_BLACK_FAST:
                case TRANS_TYPE_FADE_WHITE_FAST:
                    transFadeDuration = 20;
                    break;

                case TRANS_TYPE_FADE_BLACK_SLOW:
                case TRANS_TYPE_FADE_WHITE_SLOW:
                    transFadeDuration = 150;
                    break;

                case TRANS_TYPE_FADE_WHITE_INSTANT:
                    transFadeDuration = 2;
                    break;

                default:
                    transFadeDuration = 60;
                    break;
            }
            gSaveContext.transFadeDuration = transFadeDuration;

            switch (this->transitionCtx.transitionType) {
                case TRANS_TYPE_FADE_WHITE:
                case TRANS_TYPE_FADE_WHITE_FAST:
                case TRANS_TYPE_FADE_WHITE_SLOW:
                case TRANS_TYPE_FADE_WHITE_CS_DELAYED:
                case TRANS_TYPE_FADE_WHITE_INSTANT:
                    color = RGBA8(160, 160, 160, 255);
                    break;

                case TRANS_TYPE_FADE_GREEN:
                    color = RGBA8(140, 140, 100, 255);
                    break;

                case TRANS_TYPE_FADE_BLUE:
                    color = RGBA8(70, 100, 110, 255);
                    break;

                default:
                    color = RGBA8(0, 0, 0, 255);
                    break;
            }

            this->transitionCtx.setColor(&this->transitionCtx.instanceData, color);
            if (this->transitionCtx.setEnvColor != NULL) {
                this->transitionCtx.setEnvColor(&this->transitionCtx.instanceData, color);
            }

            this->transitionCtx.setType(&this->transitionCtx.instanceData,
                                        (this->transitionTrigger == TRANS_TRIGGER_END) ? 1 : 2);
            this->transitionCtx.start(&this->transitionCtx.instanceData);

            if (this->transitionCtx.transitionType == TRANS_TYPE_FADE_WHITE_CS_DELAYED) {
                this->transitionMode = TRANS_MODE_INSTANCE_WAIT;
            } else {
                this->transitionMode = TRANS_MODE_INSTANCE_RUNNING;
            }
            break;
        }

        case TRANS_MODE_INSTANCE_RUNNING:
            if (this->transitionCtx.isDone(&this->transitionCtx.instanceData)) {
                if (this->transitionTrigger != TRANS_TRIGGER_END) {
                    if (this->transitionCtx.transitionType == TRANS_TYPE_21) {
                        D_801D0D54 = false;
                    }

                    if (gSaveContext.gameMode == 4) {
                        STOP_GAMESTATE(&this->state);
                        SET_NEXT_GAMESTATE(&this->state, TitleSetup_Init, sizeof(TitleSetupState));
                    } else if (gSaveContext.gameMode != 2) {
                        STOP_GAMESTATE(&this->state);
                        SET_NEXT_GAMESTATE(&this->state, Play_Init, sizeof(PlayState));
                        gSaveContext.save.entrance = this->nextEntrance;

                        if (gSaveContext.minigameState == 1) {
                            gSaveContext.minigameState = 3;
                        }
                    } else {
                        STOP_GAMESTATE(&this->state);
                        SET_NEXT_GAMESTATE(&this->state, FileSelect_Init, sizeof(FileSelectState));
                    }
                } else {
                    if (this->transitionCtx.transitionType == TRANS_TYPE_21) {
                        D_801D0D54 = true;
                    } else {
                        this->transitionCtx.destroy(&this->transitionCtx.instanceData);
                        Play_ClearTransitionInstanceType(this);
                    }
                    this->transitionMode = TRANS_MODE_OFF;
                    if (gTrnsnUnkState == 3) {
                        TransitionUnk_Destroy(&sTrnsnUnk);
                        gTrnsnUnkState = 0;
                        Game_SetFramerateDivisor(&this->state, 3);
                    }
                }
                this->transitionTrigger = TRANS_TRIGGER_OFF;
            } else {
                this->transitionCtx.update(&this->transitionCtx.instanceData, this->state.framerateDivisor);
            }
            break;
    }

    // update non-instance transitions
    switch (this->transitionMode) {
        case TRANS_MODE_FILL_WHITE_INIT:
            sTransitionFillTimer = 0;
            this->envCtx.fillScreen = true;
            this->envCtx.screenFillColor[0] = 160;
            this->envCtx.screenFillColor[1] = 160;
            this->envCtx.screenFillColor[2] = 160;

            if (this->transitionTrigger != TRANS_TRIGGER_END) {
                this->envCtx.screenFillColor[3] = 0;
                this->transitionMode = TRANS_MODE_FILL_IN;
            } else {
                this->envCtx.screenFillColor[3] = 255;
                this->transitionMode = TRANS_MODE_FILL_OUT;
            }
            break;

        case TRANS_MODE_FILL_IN:
            this->envCtx.screenFillColor[3] = (sTransitionFillTimer / 20.0f) * 255.0f;

            if (sTransitionFillTimer >= 20) {
                STOP_GAMESTATE(&this->state);
                SET_NEXT_GAMESTATE(&this->state, Play_Init, sizeof(PlayState));
                gSaveContext.save.entrance = this->nextEntrance;
                this->transitionTrigger = TRANS_TRIGGER_OFF;
                this->transitionMode = TRANS_MODE_OFF;
            } else {
                sTransitionFillTimer++;
            }
            break;

        case TRANS_MODE_FILL_OUT:
            this->envCtx.screenFillColor[3] = (1.0f - (sTransitionFillTimer / 20.0f)) * 255.0f;

            if (sTransitionFillTimer >= 20) {
                gTrnsnUnkState = 0;
                Game_SetFramerateDivisor(&this->state, 3);
                this->transitionTrigger = TRANS_TRIGGER_OFF;
                this->transitionMode = TRANS_MODE_OFF;
                this->envCtx.fillScreen = false;
            } else {
                sTransitionFillTimer++;
            }
            break;

        case TRANS_MODE_FILL_BROWN_INIT:
            sTransitionFillTimer = 0;
            this->envCtx.fillScreen = true;
            this->envCtx.screenFillColor[0] = 170;
            this->envCtx.screenFillColor[1] = 160;
            this->envCtx.screenFillColor[2] = 150;

            if (this->transitionTrigger != TRANS_TRIGGER_END) {
                this->envCtx.screenFillColor[3] = 0;
                this->transitionMode = TRANS_MODE_FILL_IN;
            } else {
                this->envCtx.screenFillColor[3] = 255;
                this->transitionMode = TRANS_MODE_FILL_OUT;
            }
            break;

        case TRANS_MODE_INSTANT:
            if (this->transitionTrigger != TRANS_TRIGGER_END) {
                STOP_GAMESTATE(&this->state);
                SET_NEXT_GAMESTATE(&this->state, Play_Init, sizeof(PlayState));
                gSaveContext.save.entrance = this->nextEntrance;
                this->transitionTrigger = TRANS_TRIGGER_OFF;
                this->transitionMode = TRANS_MODE_OFF;
            } else {
                gTrnsnUnkState = 0;
                Game_SetFramerateDivisor(&this->state, 3);
                this->transitionTrigger = TRANS_TRIGGER_OFF;
                this->transitionMode = TRANS_MODE_OFF;
            }
            break;

        case TRANS_MODE_INSTANCE_WAIT:
            if (gSaveContext.cutsceneTransitionControl != 0) {
                this->transitionMode = TRANS_MODE_INSTANCE_RUNNING;
            }
            break;

        case TRANS_MODE_SANDSTORM_INIT:
            if (this->transitionTrigger != TRANS_TRIGGER_END) {
                this->envCtx.sandstormState = 1;
                this->transitionMode = TRANS_MODE_SANDSTORM;
            } else {
                this->envCtx.sandstormState = 2;
                this->envCtx.sandstormPrimA = 255;
                this->envCtx.sandstormEnvA = 255;
                this->transitionMode = TRANS_MODE_SANDSTORM;
            }
            break;

        case TRANS_MODE_SANDSTORM:
            func_8019F128(NA_SE_EV_SAND_STORM - SFX_FLAG);
            if (this->transitionTrigger == TRANS_TRIGGER_END) {
                if (this->envCtx.sandstormPrimA < 110) {
                    gTrnsnUnkState = 0;
                    Game_SetFramerateDivisor(&this->state, 3);
                    this->transitionTrigger = TRANS_TRIGGER_OFF;
                    this->transitionMode = TRANS_MODE_OFF;
                }
            } else {
                if (this->envCtx.sandstormEnvA == 255) {
                    STOP_GAMESTATE(&this->state);
                    SET_NEXT_GAMESTATE(&this->state, Play_Init, sizeof(PlayState));
                    gSaveContext.save.entrance = this->nextEntrance;
                    this->transitionTrigger = TRANS_TRIGGER_OFF;
                    this->transitionMode = TRANS_MODE_OFF;
                }
            }
            break;

        case TRANS_MODE_SANDSTORM_END_INIT:
            if (this->transitionTrigger == TRANS_TRIGGER_END) {
                this->envCtx.sandstormState = 4;
                this->envCtx.sandstormPrimA = 255;
                this->envCtx.sandstormEnvA = 255;
                this->transitionMode = TRANS_MODE_SANDSTORM_END;
            } else {
                this->transitionMode = TRANS_MODE_SANDSTORM_INIT;
            }
            break;

        case TRANS_MODE_SANDSTORM_END:
            func_8019F128(NA_SE_EV_SAND_STORM - SFX_FLAG);

            if (this->transitionTrigger == TRANS_TRIGGER_END) {
                if (this->envCtx.sandstormPrimA <= 0) {
                    gTrnsnUnkState = 0;
                    Game_SetFramerateDivisor(&this->state, 3);
                    this->transitionTrigger = TRANS_TRIGGER_OFF;
                    this->transitionMode = TRANS_MODE_OFF;
                }
            }
            break;

        case TRANS_MODE_CS_BLACK_FILL_INIT:
            sTransitionFillTimer = 0;
            this->envCtx.fillScreen = true;
            this->envCtx.screenFillColor[0] = 0;
            this->envCtx.screenFillColor[1] = 0;
            this->envCtx.screenFillColor[2] = 0;
            this->envCtx.screenFillColor[3] = 255;
            this->transitionMode = TRANS_MODE_CS_BLACK_FILL;
            break;

        case TRANS_MODE_CS_BLACK_FILL:
            if (gSaveContext.cutsceneTransitionControl != 0) {
                this->envCtx.screenFillColor[3] = gSaveContext.cutsceneTransitionControl;

                if (gSaveContext.cutsceneTransitionControl <= 100) {
                    gTrnsnUnkState = 0;
                    Game_SetFramerateDivisor(&this->state, 3);
                    this->transitionTrigger = TRANS_TRIGGER_OFF;
                    this->transitionMode = TRANS_MODE_OFF;
                }
            }
            break;
    }
}

// Stack issues
#ifdef NON_MATCHING
void Play_Update(PlayState* this) {
    PlayState* this2 = this;
    u8 pad60;
    s32 sp5C = 0;
    Input* pad58 = this->state.input;

    gSegments[4] = VIRTUAL_TO_PHYSICAL(this->objectCtx.status[this->objectCtx.mainKeepIndex].segment);
    gSegments[5] = VIRTUAL_TO_PHYSICAL(this->objectCtx.status[this->objectCtx.subKeepIndex].segment);
    gSegments[2] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);

    if (SREG(89) == 2) {
        SREG(89) = 3;
        MsgEvent_SendNullTask();
        func_80165E1C(&this->pauseBgPreRender);
        SREG(89) = 0;
    }
    Actor_SetMovementScale(this->state.framerateDivisor);

    if (FrameAdvance_Update(&this->frameAdvCtx, &pad58[1])) {
        if ((this->transitionMode == TRANS_MODE_OFF) && (this->transitionTrigger != TRANS_TRIGGER_OFF)) {
            this->transitionMode = TRANS_MODE_SETUP;
        }

        if (gTrnsnUnkState != 0) {
            switch (gTrnsnUnkState) {
                case 2:
                    if (TransitionUnk_Init(&sTrnsnUnk, 10, 7) == NULL) {
                        gTrnsnUnkState = 0;
                    } else {
                        D_801F6D0C = gZBufferPtr;
                        gTrnsnUnkState = 3;
                        Game_SetFramerateDivisor(&this->state, 1);
                    }
                    break;
                case 3:
                    func_801647AC(&sTrnsnUnk);
                    break;
            }
        }
        Play_UpdateTransition(this);
        if (gTrnsnUnkState != 3) {
            if ((gSaveContext.gameMode == 0) &&
                (((this->msgCtx.msgMode == 0)) ||
                 ((this->msgCtx.currentTextId == 0xFF) && (this->msgCtx.msgMode == 0x42) &&
                  (this->msgCtx.unk12020 == 0x41)) ||
                 ((this->msgCtx.currentTextId >= 0x100) && (this->msgCtx.currentTextId <= 0x200))) &&
                (this->gameOverCtx.state == GAMEOVER_INACTIVE)) {
                KaleidoSetup_Update(this);
            }

            sp5C = (this->pauseCtx.state != 0) || (this->pauseCtx.debugEditor != DEBUG_EDITOR_NONE);

            AnimationContext_Reset(&this->animationCtx);
            Object_UpdateBank(&this->objectCtx);

            if ((sp5C == 0) && (IREG(72) == 0)) {
                this->gameplayFrames++;
                Rumble_SetUpdateEnabled(true);
                if ((this->actorCtx.freezeFlashTimer != 0) && (this->actorCtx.freezeFlashTimer-- < 5)) {
                    pad60 = this->actorCtx.freezeFlashTimer;
                    if ((pad60 > 0) && ((pad60 % 2) != 0)) {
                        this->envCtx.fillScreen = true;
                        this->envCtx.screenFillColor[0] = this->envCtx.screenFillColor[1] =
                            this->envCtx.screenFillColor[2] = 150;
                        this->envCtx.screenFillColor[3] = 80;
                    } else {
                        this->envCtx.fillScreen = false;
                    }
                } else {
                    Room_HandleLoadCallbacks(this, &this->roomCtx);
                    CollisionCheck_AT(this, &this->colChkCtx);
                    CollisionCheck_OC(this, &this->colChkCtx);
                    CollisionCheck_Damage(this, &this->colChkCtx);
                    CollisionCheck_ClearContext(this, &this->colChkCtx);
                    if (!this->haltAllActors) {
                        Actor_UpdateAll(this, &this->actorCtx);
                    }
                    Cutscene_Update1(this, &this->csCtx);
                    Cutscene_Update2(this, &this->csCtx);
                    Effect_UpdateAll(this);
                    EffectSS_UpdateAllParticles(this);
                    EffFootmark_Update(this);
                }
            } else {
                Rumble_SetUpdateEnabled(false);
            }

            Room_nop8012D510(this, &this->roomCtx.curRoom, &pad58[1], 0);
            Room_nop8012D510(this, &this->roomCtx.prevRoom, &pad58[1], 1);
            SkyboxDraw_Update(&this->skyboxCtx);

            if ((this->pauseCtx.state != 0) || (this->pauseCtx.debugEditor != DEBUG_EDITOR_NONE)) {
                KaleidoScopeCall_Update(this);
            } else if (this->gameOverCtx.state != GAMEOVER_INACTIVE) {
                GameOver_Update(this);
            }

            Message_Update(this);
            Interface_Update(this);
            AnimationContext_Update(this, &this->animationCtx);
            SoundSource_UpdateAll(this);
            ShrinkWindow_Update(this->state.framerateDivisor);
            TransitionFade_Update(&this->unk_18E48, this->state.framerateDivisor);
        }
    }

    if (!sp5C || gDbgCamEnabled) {
        s32 sp54; // camId
        s32 sp50;
        Vec3s sp48; // InputDir

        this->nextCamera = this->activeCamId;
        for (sp54 = 0; sp54 < 4; sp54++) {
            if ((sp54 != this->nextCamera) && (this->cameraPtrs[sp54] != NULL)) {
                Camera_Update(&sp48, this->cameraPtrs[sp54]);
            }
        }
        Camera_Update(&sp48, this->cameraPtrs[this->nextCamera]);
    }

    if (!sp5C) {
        func_80166968(this, this->cameraPtrs[this->nextCamera]);
        Distortion_Update();
    }

    Environment_Update(this, &this->envCtx, &this->lightCtx, &this->pauseCtx, &this->msgCtx, &this->gameOverCtx,
                       this->state.gfxCtx);

    if (this->sramCtx.status != 0) {
        if (gSaveContext.save.isOwlSave) {
            func_80147198(&this->sramCtx);
        } else {
            func_80147068(&this->sramCtx);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Play_Update.s")
#endif

void func_80167DE4(PlayState* this) {
    if (!D_801F6DFC) {
        if (this->pauseCtx.unk_1F0 != 0) {
            D_801F6DFC = true;
            D_801F6D50.unk_00 = 0;
        }
    } else {
        if (CHECK_BTN_ALL(CONTROLLER1(&this->state)->press.button, BTN_L) ||
            CHECK_BTN_ALL(CONTROLLER1(&this->state)->press.button, BTN_B) ||
            CHECK_BTN_ALL(CONTROLLER1(&this->state)->press.button, BTN_START) || (gIrqMgrResetStatus != 0)) {
            D_801F6DFC = false;
            this->pauseCtx.unk_1F0 = 0;
            D_801F6D50.unk_00 = 0;
            this->msgCtx.msgLength = 0;
            this->msgCtx.msgMode = 0;
            this->msgCtx.currentTextId = 0;
            this->msgCtx.stateTimer = 0;
            play_sound(NA_SE_SY_CANCEL);
        }
    }
    if (D_801F6DFC) {
        func_8016F5A8(this, &D_801F6D50, this->state.input);
        Message_Update(this);
    } else {
        Play_Update(this);
    }
}

void Play_DrawOverlayElements(PlayState* this) {
    if ((this->pauseCtx.state != 0) || (this->pauseCtx.debugEditor != DEBUG_EDITOR_NONE)) {
        KaleidoScopeCall_Draw(this);
    }

    if (gSaveContext.gameMode == 0) {
        Interface_Draw(this);
    }

    if (((this->pauseCtx.state == 0) && (this->pauseCtx.debugEditor == DEBUG_EDITOR_NONE)) ||
        (this->msgCtx.currentTextId != 0xFF)) {
        Message_Draw(this);
    }

    if (this->gameOverCtx.state != GAMEOVER_INACTIVE) {
        GameOver_FadeLights(this);
    }

    // Shrink the whole screen display (at the end of First and Second Day by default)
    if (gSaveContext.screenScaleFlag) {
        Gfx* nextOpa;
        Gfx* opa;
        GraphicsContext* gfxCtx = this->state.gfxCtx;

        D_801F6D4C->scale = gSaveContext.screenScale / 1000.0f;

        OPEN_DISPS(gfxCtx);

        opa = POLY_OPA_DISP;
        nextOpa = Graph_GfxPlusOne(opa);
        gSPDisplayList(OVERLAY_DISP++, nextOpa);

        func_80141778(D_801F6D4C, &nextOpa, this->unk_18E60, gfxCtx);

        gSPEndDisplayList(nextOpa++);
        Graph_BranchDlist(opa, nextOpa);
        POLY_OPA_DISP = nextOpa;

        CLOSE_DISPS(gfxCtx);
    }
}

#ifdef NON_MATCHING
void Play_Draw(PlayState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    Lights* sp268;
    Vec3f sp25C;
    u8 sp25B = false;
    f32 var_fv0; // fogFar

    if (SREG(94) >= 4) {
        PreRender_ApplyFiltersSlowlyDestroy(&this->pauseBgPreRender);
        SREG(94) = 0;
    }

    if ((SREG(94) < 2) && (gTrnsnUnkState < 2)) {
        if (this->skyboxCtx.skyboxShouldDraw || (this->roomCtx.curRoom.mesh->type0.type == 1)) {
            func_8012CF0C(gfxCtx, 0, 1, 0, 0, 0);
        } else {
            func_8012CF0C(gfxCtx, 1, 1, this->lightCtx.unk7, this->lightCtx.unk8, this->lightCtx.unk9);
        }
    } else {
        func_8012CF0C(gfxCtx, 0, 0, 0, 0, 0);
    }

    OPEN_DISPS(gfxCtx);

    gSegments[4] = VIRTUAL_TO_PHYSICAL(this->objectCtx.status[this->objectCtx.mainKeepIndex].segment);
    gSegments[5] = VIRTUAL_TO_PHYSICAL(this->objectCtx.status[this->objectCtx.subKeepIndex].segment);
    gSegments[2] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);

    gSPSegment(POLY_OPA_DISP++, 0x04, this->objectCtx.status[this->objectCtx.mainKeepIndex].segment);
    gSPSegment(POLY_XLU_DISP++, 0x04, this->objectCtx.status[this->objectCtx.mainKeepIndex].segment);
    gSPSegment(OVERLAY_DISP++, 0x04, this->objectCtx.status[this->objectCtx.mainKeepIndex].segment);

    gSPSegment(POLY_OPA_DISP++, 0x05, this->objectCtx.status[this->objectCtx.subKeepIndex].segment);
    gSPSegment(POLY_XLU_DISP++, 0x05, this->objectCtx.status[this->objectCtx.subKeepIndex].segment);
    gSPSegment(OVERLAY_DISP++, 0x05, this->objectCtx.status[this->objectCtx.subKeepIndex].segment);

    gSPSegment(POLY_OPA_DISP++, 0x02, this->sceneSegment);
    gSPSegment(POLY_XLU_DISP++, 0x02, this->sceneSegment);
    gSPSegment(OVERLAY_DISP++, 0x02, this->sceneSegment);

    ShrinkWindow_Draw(gfxCtx);

    POLY_OPA_DISP = func_801660B8(this, POLY_OPA_DISP);
    POLY_XLU_DISP = func_801660B8(this, POLY_XLU_DISP);

    // fogFar
    var_fv0 = this->lightCtx.unkC;
    if (var_fv0 > 12800.0f) {
        var_fv0 = 12800.0f;
    }

    View_SetPerspective(&this->view, this->view.fovy, this->view.zNear, var_fv0);

    View_Apply(&this->view, 0xF);

    // The billboard matrix temporarily stores the viewing matrix
    Matrix_MtxToMtxF(&this->view.viewing, &this->billboardMtxF);
    Matrix_MtxToMtxF(&this->view.projection, &this->viewProjectionMtxF);

    this->projectionMtxFDiagonal.x = this->viewProjectionMtxF.xx;
    this->projectionMtxFDiagonal.y = this->viewProjectionMtxF.yy;
    this->projectionMtxFDiagonal.z = -this->viewProjectionMtxF.zz;

    SkinMatrix_MtxFMtxFMult(&this->viewProjectionMtxF, &this->billboardMtxF, &this->viewProjectionMtxF);

    this->billboardMtxF.mf[3][2] =
        (this->billboardMtxF.mf[3][1] =
             (this->billboardMtxF.mf[3][0] =
                  (this->billboardMtxF.mf[2][3] =
                       (this->billboardMtxF.mf[1][3] = (this->billboardMtxF.mf[0][3] = 0.0f)))));

    Matrix_Transpose(&this->billboardMtxF);

    this->billboardMtx = GRAPH_ALLOC(this->state.gfxCtx, 0x80);

    Matrix_MtxFToMtx(&this->billboardMtxF, this->billboardMtx);
    Matrix_RotateYF(((s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(this)) + 0x8000)) * 0.0000958738f, MTXMODE_NEW);
    Matrix_ToMtx(this->billboardMtx + 1);

    gSPSegment(POLY_OPA_DISP++, 0x01, this->billboardMtx);
    gSPSegment(POLY_XLU_DISP++, 0x01, this->billboardMtx);
    gSPSegment(OVERLAY_DISP++, 0x01, this->billboardMtx);

    if (1) {
        Gfx* sp218;
        Gfx* sp214 = POLY_OPA_DISP;

        sp218 = Graph_GfxPlusOne(sp214);
        gSPDisplayList(OVERLAY_DISP++, sp218);

        if (((this->transitionMode == TRANS_MODE_INSTANCE_RUNNING) || (this->transitionMode == TRANS_TYPE_INSTANT)) ||
            D_801D0D54) {
            View spA8;

            View_Init(&spA8, gfxCtx);
            spA8.flags = 0xA;

            SET_FULLSCREEN_VIEWPORT(&spA8);

            View_ApplyTo(&spA8, &sp218);
            this->transitionCtx.draw(&this->transitionCtx.instanceData, &sp218);
        }

        TransitionFade_Draw(&this->unk_18E48, &sp218);

        if (gVisMonoColor.a != 0) {
            sVisMono.primColor.rgba = gVisMonoColor.rgba;
            VisMono_Draw(&sVisMono, &sp218);
        }

        gSPEndDisplayList(sp218++);
        Graph_BranchDlist(sp214, sp218);
        POLY_OPA_DISP = sp218;
    }

    if (gTrnsnUnkState == 3) {
        Gfx* sp90 = POLY_OPA_DISP;

        TransitionUnk_Draw(&sTrnsnUnk, &sp90);
        POLY_OPA_DISP = sp90;
        sp25B = true;
        goto Play_Draw_DrawOverlayElements;
    }

    PreRender_SetValues(&this->pauseBgPreRender, D_801FBBCC, D_801FBBCE, gfxCtx->curFrameBuffer, gfxCtx->zbuffer);

    if (SREG(94) == 2) {
        MsgEvent_SendNullTask();
        if (!gSaveContext.screenScaleFlag) {
            PreRender_ApplyFiltersSlowlyInit(&this->pauseBgPreRender);
        }
        SREG(94) = 3;
        SREG(33) |= 1;
    } else {
        if (SREG(94) == 3) {
            Gfx* sp8C = POLY_OPA_DISP;

            if (this->pauseBgPreRender.unk_4D == 2) {
                func_80170B28(&this->pauseBgPreRender, &sp8C);
            } else {
                func_80170798(&this->pauseBgPreRender, &sp8C);
            }

            gSPDisplayList(sp8C++, D_0E000140);
            POLY_OPA_DISP = sp8C;
            sp25B = true;
            goto Play_Draw_DrawOverlayElements;
        }

        if (!this->unk_18844) {
            if (this->skyboxId && !this->envCtx.skyboxDisabled) {
                if ((this->skyboxId == 1) || (this->skyboxId == 3)) {
                    Environment_UpdateSkybox(this->skyboxId, &this->envCtx, &this->skyboxCtx);
                    SkyboxDraw_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, this->envCtx.unk_13, this->view.eye.x,
                                    this->view.eye.y, this->view.eye.z);
                } else if (!this->skyboxCtx.skyboxShouldDraw) {
                    SkyboxDraw_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, 0, this->view.eye.x, this->view.eye.y,
                                    this->view.eye.z);
                }
            }

            func_800FE390(this);
            sp268 = LightContext_NewLights(&this->lightCtx, gfxCtx);

            if (this->roomCtx.curRoom.enablePosLights || (MREG(93) != 0)) {
                sp268->enablePosLights = true;
            }

            Lights_BindAll(sp268, this->lightCtx.listHead, NULL, this);
            Lights_Draw(sp268, gfxCtx);

            Scene_Draw(this);

            if (this->roomCtx.unk78) {
                //! FAKE: Regalloc around here. s64 solves the regalloc,
                //        but much too large on the stack. Need:
                //        `if (stuff that evaluates to 0 but not trivially)`
                s64 roomDrawFlags = 3;

                Room_Draw(this, &this->roomCtx.curRoom, roomDrawFlags);
                Room_Draw(this, &this->roomCtx.prevRoom, roomDrawFlags);
            }

            if (this->skyboxCtx.skyboxShouldDraw) {
                Vec3f sp78;

                if (1) {}
                Camera_GetQuakeOffset(&sp78, GET_ACTIVE_CAM(this));
                SkyboxDraw_Draw(&this->skyboxCtx, gfxCtx, this->skyboxId, 0, this->view.eye.x + sp78.x,
                                this->view.eye.y + sp78.y, this->view.eye.z + sp78.z);
            }

            // envCtx.precipitation[PRECIP_RAIN_CUR]
            if (this->envCtx.unk_F2[1] != 0) {
                Environment_DrawRain(this, &this->view, gfxCtx);
            }
        }

        Environment_FillScreen(gfxCtx, 0, 0, 0, this->bgCoverAlpha, 1);

        Actor_DrawAll(this, &this->actorCtx);

        if (!this->envCtx.sunMoonDisabled) {
            sp25C.x = this->view.eye.x + this->envCtx.unk_4;
            sp25C.y = this->view.eye.y + this->envCtx.unk_8;
            sp25C.z = this->view.eye.z + this->envCtx.unk_C;
            Environment_DrawSunLensFlare(this, &this->envCtx, &this->view, gfxCtx, sp25C);
        }

        Environment_DrawCustomLensFlare(this);

        if (R_PLAY_FILL_SCREEN_ON) {
            Environment_FillScreen(gfxCtx, R_PLAY_FILL_SCREEN_R, R_PLAY_FILL_SCREEN_G, R_PLAY_FILL_SCREEN_B,
                                   R_PLAY_FILL_SCREEN_ALPHA, 3);
        }

        switch (this->envCtx.fillScreen) {
            case 1:
                Environment_FillScreen(gfxCtx, this->envCtx.screenFillColor[0], this->envCtx.screenFillColor[1],
                                       this->envCtx.screenFillColor[2], this->envCtx.screenFillColor[3], 3);
                break;
            default:
                break;
        }

        if (this->envCtx.sandstormState != 0) {
            Environment_DrawSandstorm(this, this->envCtx.sandstormState);
        }

        if (this->unk_18876 != 0) {
            Environment_FillScreen(gfxCtx, 0, 0, 0, this->unk_18876, 3);
        }

        DebugDisplay_DrawObjects(this);
        Play_MotionBlurDraw(this);

        if (((SREG(94) == 1) || (gTrnsnUnkState == 1)) || (SREG(89) == 1)) {
            Gfx* sp74;
            Gfx* sp70 = POLY_OPA_DISP;

            sp74 = Graph_GfxPlusOne(sp70);
            gSPDisplayList(OVERLAY_DISP++, sp74);
            this->pauseBgPreRender.fbuf = gfxCtx->curFrameBuffer;

            if (SREG(94) == 1) {
                SREG(94) = 2;
                this->pauseBgPreRender.fbufSave = (u16*)gfxCtx->zbuffer;
                this->pauseBgPreRender.cvgSave = this->unk_18E58;
            } else if (SREG(89) == 1) {
                SREG(89) = 2;
                this->pauseBgPreRender.fbufSave = (u16*)gfxCtx->zbuffer;
                this->pauseBgPreRender.cvgSave = this->unk_18E58;
            } else {
                gTrnsnUnkState = 2;
                this->pauseBgPreRender.fbufSave = (u16*)gfxCtx->zbuffer;
                this->pauseBgPreRender.cvgSave = NULL;
            }

            func_801705B4(&this->pauseBgPreRender, &sp74);

            if (this->pauseBgPreRender.cvgSave != NULL) {
                func_80170730(&this->pauseBgPreRender, &sp74);
            }

            gSPEndDisplayList(sp74++);
            Graph_BranchDlist(sp70, sp74);
            POLY_OPA_DISP = sp74;
            this->unk_18B49 = 2;
            SREG(33) |= 1;
        } else {
        Play_Draw_DrawOverlayElements:
            Play_DrawOverlayElements(this);
        }
    }

    //! Fake: regalloc around here
    if (this && this && this) {}

    if ((this->view.unk164 != 0) && !gDbgCamEnabled) {
        Vec3s sp4C;

        Camera_Update(&sp4C, GET_ACTIVE_CAM(this));
        View_UpdateViewingMatrix(&this->view);
        this->view.unk164 = 0;
        if ((this->skyboxId != 0) && !this->envCtx.skyboxDisabled) {
            SkyboxDraw_UpdateMatrix(&this->skyboxCtx, this->view.eye.x, this->view.eye.y, this->view.eye.z);
        }
    }

    if (!sp25B) {
        func_800FE3E0(this);
    }

    CLOSE_DISPS(this->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_play/Play_Draw.s")
#endif

void func_80168DAC(PlayState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    {
        GraphicsContext* gfxCtx2 = this->state.gfxCtx;

        if (D_801F6DFC) {
            if (D_801FBBD4 != 1) {
                MsgEvent_SendNullTask();
                func_80178818();
                gfxCtx2->curFrameBuffer = SysCfb_GetFbPtr(gfxCtx2->framebufferIdx % 2);
                gfxCtx2->zbuffer = SysCfb_GetZBuffer();
                gfxCtx2->viMode = D_801FBB88;
                gfxCtx2->viConfigFeatures = gViConfigFeatures;
                gfxCtx2->xScale = gViConfigXScale;
                gfxCtx2->yScale = gViConfigYScale;
                gfxCtx2->updateViMode = true;
            }
        } else {
            if (D_801FBBD4 != 0) {
                MsgEvent_SendNullTask();
                func_80178750();
                gfxCtx2->curFrameBuffer = SysCfb_GetFbPtr(gfxCtx2->framebufferIdx % 2);
                gfxCtx2->zbuffer = SysCfb_GetZBuffer();
                gfxCtx2->viMode = D_801FBB88;
                gfxCtx2->viConfigFeatures = gViConfigFeatures;
                gfxCtx2->xScale = gViConfigXScale;
                gfxCtx2->yScale = gViConfigYScale;
                gfxCtx2->updateViMode = true;
            }
        }
    }

    if (D_801F6DFC && ((SREG(2) != 2) || (gZBufferPtr == NULL))) {
        func_8016F1A8(&D_801F6D50, gfxCtx);
        Message_Draw(this);
    } else {
        Play_Draw(this);
    }
}

void Play_Main(GameState* thisx) {
    static Input* D_801D0D60 = NULL;
    PlayState* this = (PlayState*)thisx;

    D_801D0D60 = CONTROLLER1(&this->state);
    DebugDisplay_Init();

    {
        GraphicsContext* gfxCtx = this->state.gfxCtx;

        if (1) {
            this->state.gfxCtx = NULL;
        }
        func_80167DE4(this);
        this->state.gfxCtx = gfxCtx;
    }

    {
        Input sp28 = *CONTROLLER1(&this->state);

        if (1) {
            *CONTROLLER1(&this->state) = D_801F6C18;
        }
        func_80168DAC(this);
        *CONTROLLER1(&this->state) = sp28;
    }

    ActorCutscene_Update();
    ActorCutscene_ClearWaiting();
}

s32 Play_InCsMode(PlayState* this) {
    return (this->csCtx.state != 0) || Player_InCsMode(this);
}

f32 func_80169100(PlayState* this, MtxF* mtx, CollisionPoly** poly, s32* bgId, Vec3f* feetPos) {
    f32 floorHeight = BgCheck_EntityRaycastFloor3(&this->colCtx, poly, bgId, feetPos);

    if (floorHeight > BGCHECK_Y_MIN) {
        func_800C0094(*poly, feetPos->x, floorHeight, feetPos->z, mtx);
    } else {
        mtx->xy = 0.0f;
        mtx->zx = 0.0f;
        mtx->yx = 0.0f;
        mtx->xx = 0.0f;
        mtx->wz = 0.0f;
        mtx->xz = 0.0f;
        mtx->wy = 0.0f;
        mtx->wx = 0.0f;
        mtx->zz = 0.0f;
        mtx->yz = 0.0f;
        mtx->zy = 0.0f;
        mtx->yy = 1.0f;
        mtx->xw = feetPos->x;
        mtx->yw = feetPos->y;
        mtx->zw = feetPos->z;
        mtx->ww = 1.0f;
    }
    return floorHeight;
}

void func_801691F0(PlayState* this, MtxF* mtx, Vec3f* feetPos) {
    CollisionPoly* poly;
    s32 bgId;

    func_80169100(this, mtx, &poly, &bgId, feetPos);
}

void* Play_LoadFile(PlayState* this, RomFile* entry) {
    size_t size = entry->vromEnd - entry->vromStart;
    void* allocp = THA_AllocEndAlign16(&this->state.heap, size);

    DmaMgr_SendRequest0(allocp, entry->vromStart, size);

    return allocp;
}

void Play_InitEnvironment(PlayState* this, s16 skyboxId) {
    Skybox_Init(&this->state, &this->skyboxCtx, skyboxId);
    Environment_Init(this, &this->envCtx, 0);
}

void Play_InitScene(PlayState* this, s32 spawn) {
    this->curSpawn = spawn;
    this->linkActorEntry = NULL;
    this->actorCsCamList = NULL;
    this->setupEntranceList = NULL;
    this->setupExitList = NULL;
    this->unk_18868 = NULL;
    this->setupPathList = NULL;
    this->sceneMaterialAnims = NULL;
    this->roomCtx.unk74 = NULL;
    this->numSetupActors = 0;
    Object_InitBank(&this->state, &this->objectCtx);
    LightContext_Init(this, &this->lightCtx);
    Door_InitContext(&this->state, &this->doorCtx);
    Room_Init(this, &this->roomCtx);
    gSaveContext.worldMapArea = 0;
    Scene_ProcessHeader(this, this->sceneSegment);
    Play_InitEnvironment(this, this->skyboxId);
}

void Play_SpawnScene(PlayState* this, s32 sceneId, s32 spawn) {
    s32 pad;
    SceneTableEntry* sp1C = &gSceneTable[sceneId];

    sp1C->unk_D = 0;
    this->loadedScene = sp1C;
    this->sceneId = sceneId;
    this->sceneConfig = sp1C->drawConfig;
    this->sceneSegment = Play_LoadFile(this, &sp1C->segment);
    sp1C->unk_D = 0;
    gSegments[0x02] = VIRTUAL_TO_PHYSICAL(this->sceneSegment);
    Play_InitScene(this, spawn);
    Room_AllocateAndLoad(this, &this->roomCtx);
}

void Play_GetScreenPos(PlayState* this, Vec3f* worldPos, Vec3f* screenPos) {
    f32 invW;

    // screenPos temporarily stores the projectedPos
    Actor_GetProjectedPos(this, worldPos, screenPos, &invW);

    screenPos->x = (SCREEN_WIDTH / 2) + (screenPos->x * invW * (SCREEN_WIDTH / 2));
    screenPos->y = (SCREEN_HEIGHT / 2) - (screenPos->y * invW * (SCREEN_HEIGHT / 2));
}

s16 Play_CreateSubCamera(PlayState* this) {
    s16 subCamId;

    for (subCamId = CAM_ID_SUB_FIRST; subCamId < NUM_CAMS; subCamId++) {
        if (this->cameraPtrs[subCamId] == NULL) {
            break;
        }
    }

    // if no subCameras available
    if (subCamId == NUM_CAMS) {
        return CAM_ID_NONE;
    }

    this->cameraPtrs[subCamId] = &this->subCameras[subCamId - CAM_ID_SUB_FIRST];
    Camera_Init(this->cameraPtrs[subCamId], &this->view, &this->colCtx, this);
    this->cameraPtrs[subCamId]->camId = subCamId;

    return subCamId;
}

s16 Play_GetActiveCamId(PlayState* this) {
    return this->activeCamId;
}

s32 Play_ChangeCameraStatus(PlayState* this, s16 camId, s16 status) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    if (status == CAM_STATUS_ACTIVE) {
        this->activeCamId = camIdx;
    }

    return Camera_ChangeStatus(this->cameraPtrs[camIdx], status);
}

void Play_ClearCamera(PlayState* this, s16 camId) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    if (this->cameraPtrs[camIdx] != NULL) {
        Camera_ChangeStatus(this->cameraPtrs[camIdx], CAM_STATUS_INACTIVE);
        this->cameraPtrs[camIdx] = NULL;
    }
}

void Play_ClearAllSubCameras(PlayState* this) {
    s16 subCamId;

    for (subCamId = CAM_ID_SUB_FIRST; subCamId < NUM_CAMS; subCamId++) {
        if (this->cameraPtrs[subCamId] != NULL) {
            Play_ClearCamera(this, subCamId);
        }
    }

    this->activeCamId = CAM_ID_MAIN;
}

Camera* Play_GetCamera(PlayState* this, s16 camId) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    return this->cameraPtrs[camIdx];
}

/**
 * @return bit-packed success if each of the params were applied
 */
s32 Play_SetCameraAtEye(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye) {
    s32 successfullySet = 0;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];

    successfullySet |= Camera_SetViewParam(camera, CAM_VIEW_AT, at);
    successfullySet <<= 1;
    successfullySet |= Camera_SetViewParam(camera, CAM_VIEW_EYE, eye);

    camera->dist = Math3D_Distance(at, eye);

    if (camera->focalActor != NULL) {
        camera->atActorOffset.x = at->x - camera->focalActor->world.pos.x;
        camera->atActorOffset.y = at->y - camera->focalActor->world.pos.y;
        camera->atActorOffset.z = at->z - camera->focalActor->world.pos.z;
    } else {
        camera->atActorOffset.x = camera->atActorOffset.y = camera->atActorOffset.z = 0.0f;
    }

    camera->atLerpStepScale = 0.01f;

    return successfullySet;
}

/**
 * @return bit-packed success if each of the params were applied
 */
s32 Play_SetCameraAtEyeUp(PlayState* this, s16 camId, Vec3f* at, Vec3f* eye, Vec3f* up) {
    s32 successfullySet = 0;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];

    successfullySet |= Camera_SetViewParam(camera, CAM_VIEW_AT, at);
    successfullySet <<= 1;
    successfullySet |= Camera_SetViewParam(camera, CAM_VIEW_EYE, eye);
    successfullySet <<= 1;
    successfullySet |= Camera_SetViewParam(camera, CAM_VIEW_UP, up);

    camera->dist = Math3D_Distance(at, eye);

    if (camera->focalActor != NULL) {
        camera->atActorOffset.x = at->x - camera->focalActor->world.pos.x;
        camera->atActorOffset.y = at->y - camera->focalActor->world.pos.y;
        camera->atActorOffset.z = at->z - camera->focalActor->world.pos.z;
    } else {
        camera->atActorOffset.x = camera->atActorOffset.y = camera->atActorOffset.z = 0.0f;
    }

    camera->atLerpStepScale = 0.01f;

    return successfullySet;
}

/**
 * @return true if the fov was successfully set
 */
s32 Play_SetCameraFov(PlayState* this, s16 camId, f32 fov) {
    s32 successfullySet = Camera_SetViewParam(this->cameraPtrs[camId], CAM_VIEW_FOV, &fov) & 1;

    if (1) {}
    return successfullySet;
}

s32 Play_SetCameraRoll(PlayState* this, s16 camId, s16 roll) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    Camera* camera = this->cameraPtrs[camIdx];

    camera->roll = roll;

    return 1;
}

void Play_CopyCamera(PlayState* this, s16 destCamId, s16 srcCamId) {
    s16 srcCamId2 = (srcCamId == CAM_ID_NONE) ? this->activeCamId : srcCamId;
    s16 destCamId1 = (destCamId == CAM_ID_NONE) ? this->activeCamId : destCamId;

    Camera_Copy(this->cameraPtrs[destCamId1], this->cameraPtrs[srcCamId2]);
}

// Same as Play_ChangeCameraSetting but also calls Camera_InitPlayerSettings
s32 func_80169A50(PlayState* this, s16 camId, Player* player, s16 setting) {
    Camera* camera;
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;

    camera = this->cameraPtrs[camIdx];
    Camera_InitPlayerSettings(camera, player);
    return Camera_ChangeSetting(camera, setting);
}

s32 Play_ChangeCameraSetting(PlayState* this, s16 camId, s16 setting) {
    return Camera_ChangeSetting(Play_GetCamera(this, camId), setting);
}

// Related to bosses and fishing
void func_80169AFC(PlayState* this, s16 camId, s16 timer) {
    s16 camIdx = (camId == CAM_ID_NONE) ? this->activeCamId : camId;
    s16 i;

    Play_ClearCamera(this, camIdx);

    for (i = CAM_ID_SUB_FIRST; i < NUM_CAMS; i++) {
        if (this->cameraPtrs[i] != NULL) {
            Play_ClearCamera(this, i);
        }
    }

    if (timer <= 0) {
        Play_ChangeCameraStatus(this, CAM_ID_MAIN, CAM_STATUS_ACTIVE);
        this->cameraPtrs[CAM_ID_MAIN]->childCamId = this->cameraPtrs[CAM_ID_MAIN]->doorTimer2 = 0;
    }
}

s16 Play_GetCameraUID(PlayState* this, s16 camId) {
    Camera* camera = this->cameraPtrs[camId];

    if (camera != NULL) {
        return camera->uid;
    } else {
        return -1;
    }
}

// Unused in both MM and OoT, purpose is very unclear
s16 func_80169BF8(PlayState* this, s16 camId, s16 uid) {
    Camera* camera = this->cameraPtrs[camId];

    if (camera != NULL) {
        return 0;
    } else if (camera->uid != uid) {
        return 0;
    } else if (camera->status != CAM_STATUS_ACTIVE) {
        return 2;
    } else {
        return 1;
    }
}

u16 Play_GetActorCsCamSetting(PlayState* this, s32 csCamDataIndex) {
    ActorCsCamInfo* actorCsCamList = &this->actorCsCamList[csCamDataIndex];

    return actorCsCamList->setting;
}

Vec3s* Play_GetActorCsCamFuncData(PlayState* this, s32 csCamDataIndex) {
    ActorCsCamInfo* actorCsCamList = &this->actorCsCamList[csCamDataIndex];

    return Lib_SegmentedToVirtual(actorCsCamList->actorCsCamFuncData);
}

/**
 * Converts the number of a scene to its "original" equivalent, the default version of the area which the player first
 * enters.
 */
s16 Play_GetOriginalSceneId(s16 sceneId) {
    // Inverted Stone Tower Temple -> Stone Tower Temple
    if (sceneId == SCENE_INISIE_R) {
        return SCENE_INISIE_N;
    }

    // Purified Southern Swamp -> Poisoned Sothern Swamp
    if (sceneId == SCENE_20SICHITAI2) {
        return SCENE_20SICHITAI;
    }

    // Spring Mountain Village -> Winter Mountain Village
    if (sceneId == SCENE_10YUKIYAMANOMURA2) {
        return SCENE_10YUKIYAMANOMURA;
    }

    // Spring Goron Village -> Winter Goron Village
    if (sceneId == SCENE_11GORONNOSATO2) {
        return SCENE_11GORONNOSATO;
    }

    // Spring Path to Goron Village -> Winter Path to Goron Village
    if (sceneId == SCENE_17SETUGEN2) {
        return SCENE_17SETUGEN;
    }

    // Inverted Stone Tower -> Stone Tower
    if (sceneId == SCENE_F41) {
        return SCENE_F40;
    }

    return sceneId;
}

/**
 * Copies the flags set in ActorContext over to the current scene's CycleSceneFlags, usually using the original scene
 * number. Exception for Inverted Stone Tower Temple, which uses its own.
 */
void Play_SaveCycleSceneFlags(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;
    CycleSceneFlags* cycleSceneFlags;

    cycleSceneFlags = &gSaveContext.cycleSceneFlags[Play_GetOriginalSceneId(this->sceneId)];
    cycleSceneFlags->chest = this->actorCtx.sceneFlags.chest;
    cycleSceneFlags->switch0 = this->actorCtx.sceneFlags.switches[0];
    cycleSceneFlags->switch1 = this->actorCtx.sceneFlags.switches[1];

    if (this->sceneId == SCENE_INISIE_R) { // Inverted Stone Tower Temple
        cycleSceneFlags = &gSaveContext.cycleSceneFlags[this->sceneId];
    }

    cycleSceneFlags->collectible = this->actorCtx.sceneFlags.collectible[0];
    cycleSceneFlags->clearedRoom = this->actorCtx.sceneFlags.clearedRoom;
}

void Play_SetRespawnData(GameState* thisx, s32 respawnMode, u16 entrance, s32 roomIndex, s32 playerParams, Vec3f* pos,
                         s16 yaw) {
    PlayState* this = (PlayState*)thisx;

    gSaveContext.respawn[respawnMode].entrance = Entrance_Create(entrance >> 9, 0, entrance & 0xF);
    gSaveContext.respawn[respawnMode].roomIndex = roomIndex;
    gSaveContext.respawn[respawnMode].pos = *pos;
    gSaveContext.respawn[respawnMode].yaw = yaw;
    gSaveContext.respawn[respawnMode].playerParams = playerParams;
    gSaveContext.respawn[respawnMode].tempSwitchFlags = this->actorCtx.sceneFlags.switches[2];
    gSaveContext.respawn[respawnMode].unk_18 = this->actorCtx.sceneFlags.collectible[1];
    gSaveContext.respawn[respawnMode].tempCollectFlags = this->actorCtx.sceneFlags.collectible[2];
}

void Play_SetupRespawnPoint(GameState* thisx, s32 respawnMode, s32 playerParams) {
    PlayState* this = (PlayState*)thisx;
    Player* player = GET_PLAYER(this);

    if (this->sceneId != SCENE_KAKUSIANA) { // Grottos
        Play_SetRespawnData(&this->state, respawnMode, (u16)((void)0, gSaveContext.save.entrance),
                            this->roomCtx.curRoom.num, playerParams, &player->actor.world.pos,
                            player->actor.shape.rot.y);
    }
}

// Override respawn data in Sakon's Hideout
void func_80169ECC(PlayState* this) {
    if (this->sceneId == SCENE_SECOM) {
        this->nextEntrance = ENTRANCE(IKANA_CANYON, 6);
        gSaveContext.respawnFlag = -7;
    }
}

void Play_TriggerVoidOut(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;

    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempSwitchFlags = this->actorCtx.sceneFlags.switches[2];
    gSaveContext.respawn[RESPAWN_MODE_DOWN].unk_18 = this->actorCtx.sceneFlags.collectible[1];
    gSaveContext.respawn[RESPAWN_MODE_DOWN].tempCollectFlags = this->actorCtx.sceneFlags.collectible[2];
    this->nextEntrance = gSaveContext.respawn[RESPAWN_MODE_DOWN].entrance;
    gSaveContext.respawnFlag = 1;
    func_80169ECC(this);
    this->transitionTrigger = TRANS_TRIGGER_START;
    this->transitionType = TRANS_TYPE_FADE_BLACK;
}

void Play_LoadToLastEntrance(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;

    this->nextEntrance = gSaveContext.respawn[RESPAWN_MODE_TOP].entrance;
    gSaveContext.respawnFlag = -1;
    func_80169ECC(this);
    this->transitionTrigger = TRANS_TRIGGER_START;
    this->transitionType = TRANS_TYPE_FADE_BLACK;
}

void Play_TriggerRespawn(GameState* thisx) {
    Play_LoadToLastEntrance(thisx);
}

// Used by Kankyo to determine how to change the lighting, e.g. for game over.
s32 func_80169FFC(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;

    return this->roomCtx.curRoom.mesh->type0.type != 1;
}

s32 FrameAdvance_IsEnabled(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;

    return this->frameAdvCtx.enabled != 0;
}

// Unused, unchanged from OoT, which uses it only in one Camera function.
/**
 * @brief Tests if \p actor is a door and the sides are different rooms.
 *
 * @param[in] thisx GameState, promoted to play inside.
 * @param[in] actor Actor to test.
 * @param[out] yaw Facing angle of the actor, or reverse if in the back room.
 * @return true if \p actor is a door and the sides are in different rooms, false otherwise
 */
s32 func_8016A02C(GameState* thisx, Actor* actor, s16* yaw) {
    PlayState* this = (PlayState*)thisx;
    TransitionActorEntry* transitionActor;
    s8 frontRoom;

    if (actor->category != ACTORCAT_DOOR) {
        return false;
    }

    transitionActor = &this->doorCtx.transitionActorList[(u16)actor->params >> 10];
    frontRoom = transitionActor->sides[0].room;
    if (frontRoom == transitionActor->sides[1].room) {
        return false;
    }

    if (frontRoom == actor->room) {
        *yaw = actor->shape.rot.y;
    } else {
        *yaw = actor->shape.rot.y + 0x8000;
    }

    return true;
}

// Unused
/**
 * @brief Tests if \p pos is underwater.
 *
 * @param[in] this PlayState
 * @param[in] pos position to test
 * @return true if inside a waterbox and not above a void.
 */
s32 Play_IsUnderwater(PlayState* this, Vec3f* pos) {
    WaterBox* waterBox;
    CollisionPoly* poly;
    Vec3f waterSurfacePos;
    s32 bgId;

    waterSurfacePos = *pos;

    if ((WaterBox_GetSurface1(this, &this->colCtx, waterSurfacePos.x, waterSurfacePos.z, &waterSurfacePos.y,
                              &waterBox) == true) &&
        (pos->y < waterSurfacePos.y) &&
        (BgCheck_EntityRaycastFloor3(&this->colCtx, &poly, &bgId, &waterSurfacePos) != BGCHECK_Y_MIN)) {
        return true;
    } else {
        return false;
    }
}

s32 Play_IsDebugCamEnabled(void) {
    return gDbgCamEnabled;
}

// A mapping from playerActorCsIds to sGlobalCamDataSettings indices.
s16 D_801D0D64[] = { -3, -2, -4, -5, -7, -11, -8, -9, -6, -16 };

// Used by Player
/**
 * Extract the common actor cutscene ids used by Player from the scene and set the actor cutscene ids in
 * this->playerActorCsIds. If a playerActorCsId is not present in the scene, then that particular id is set
 * to -1. Otherwise, if there is an ActorCutscene where csCamSceneDataId matches the appropriate element of D_801D0D64,
 * set the corresponding playerActorCsId (and possibly change its priority for the zeroth one)
 */
void Play_AssignPlayerActorCsIdsFromScene(GameState* thisx, s32 startActorCsId) {
    PlayState* this = (PlayState*)thisx;
    s32 i;
    s16* curPlayerActorCsId = this->playerActorCsIds;
    s16* phi_s1 = D_801D0D64;

    for (i = 0; i < ARRAY_COUNT(this->playerActorCsIds); i++, curPlayerActorCsId++, phi_s1++) {
        ActorCutscene* actorCutscene;
        s32 curActorCsId;

        *curPlayerActorCsId = -1;

        for (curActorCsId = startActorCsId; curActorCsId != -1; curActorCsId = actorCutscene->additionalCutscene) {
            actorCutscene = ActorCutscene_GetCutscene(curActorCsId);

            if (actorCutscene->csCamSceneDataId == *phi_s1) {
                if ((actorCutscene->csCamSceneDataId == -3) &&
                    (actorCutscene->priority == 700)) { // override ocarina cs priority
                    actorCutscene->priority = 550;
                }
                *curPlayerActorCsId = curActorCsId;
                break;
            }
        }
    }
}

// Set values to fill screen
void Play_FillScreen(GameState* thisx, s16 fillScreenOn, u8 red, u8 green, u8 blue, u8 alpha) {
    R_PLAY_FILL_SCREEN_ON = fillScreenOn;
    R_PLAY_FILL_SCREEN_R = red;
    R_PLAY_FILL_SCREEN_G = green;
    R_PLAY_FILL_SCREEN_B = blue;
    R_PLAY_FILL_SCREEN_ALPHA = alpha;
}

void Play_Init(GameState* thisx) {
    PlayState* this = (PlayState*)thisx;
    GraphicsContext* gfxCtx = this->state.gfxCtx;
    s32 pad;
    u32 temp_v0_12;
    s32 sp94;
    Player* player;
    s32 i;
    s32 spawn;
    u8 sp87;
    s32 scene;

    if ((gSaveContext.respawnFlag == -4) || (gSaveContext.respawnFlag == -0x63)) {
        if (gSaveContext.eventInf[2] & 0x80) {
            gSaveContext.eventInf[2] &= (u8)~0x80;
            STOP_GAMESTATE(&this->state);
            SET_NEXT_GAMESTATE(&this->state, DayTelop_Init, sizeof(DayTelopState));
            return;
        }

        gSaveContext.unk_3CA7 = 1;
        if (gSaveContext.respawnFlag == ~0x62) {
            gSaveContext.respawnFlag = 2;
        }
    } else {
        gSaveContext.unk_3CA7 = 0;
    }

    if (gSaveContext.save.entrance == -1) {
        gSaveContext.save.entrance = 0;
        STOP_GAMESTATE(&this->state);
        SET_NEXT_GAMESTATE(&this->state, TitleSetup_Init, sizeof(TitleSetupState));
        return;
    }

    if ((gSaveContext.nextCutsceneIndex == 0xFFEF) || (gSaveContext.nextCutsceneIndex == 0xFFF0)) {
        scene = ((void)0, gSaveContext.save.entrance) >> 9;
        spawn = (((void)0, gSaveContext.save.entrance) >> 4) & 0x1F;

        if (gSaveContext.save.weekEventReg[33] & 0x80) {
            if (scene == ENTR_SCENE_MOUNTAIN_VILLAGE_WINTER) {
                scene = ENTR_SCENE_MOUNTAIN_VILLAGE_SPRING;
            } else if (scene == ENTR_SCENE_GORON_VILLAGE_WINTER) {
                scene = ENTR_SCENE_GORON_VILLAGE_SPRING;
            } else if (scene == ENTR_SCENE_PATH_TO_GORON_VILLAGE_WINTER) {
                scene = ENTR_SCENE_PATH_TO_GORON_VILLAGE_SPRING;
            } else if ((scene == ENTR_SCENE_SNOWHEAD) || (scene == ENTR_SCENE_PATH_TO_SNOWHEAD) ||
                       (scene == ENTR_SCENE_PATH_TO_MOUNTAIN_VILLAGE) || (scene == ENTR_SCENE_GORON_SHRINE) ||
                       (scene == ENTR_SCENE_GORON_RACETRACK)) {
                gSaveContext.nextCutsceneIndex = 0xFFF0;
            }
        }

        if (gSaveContext.save.weekEventReg[20] & 2) {
            if (scene == ENTR_SCENE_SOUTHERN_SWAMP_POISONED) {
                scene = ENTR_SCENE_SOUTHERN_SWAMP_CLEARED;
            } else if (scene == ENTR_SCENE_WOODFALL) {
                gSaveContext.nextCutsceneIndex = 0xFFF1;
            }
        }

        if ((gSaveContext.save.weekEventReg[52] & 0x20) && (scene == ENTR_SCENE_IKANA_CANYON)) {
            gSaveContext.nextCutsceneIndex = 0xFFF2;
        }

        if ((gSaveContext.save.weekEventReg[55] & 0x80) &&
            ((scene == ENTR_SCENE_GREAT_BAY_COAST) || (scene == ENTR_SCENE_ZORA_CAPE))) {
            gSaveContext.nextCutsceneIndex = 0xFFF0;
        }

        if (INV_CONTENT(ITEM_OCARINA) != ITEM_OCARINA) {
            if ((scene == ENTR_SCENE_TERMINA_FIELD) &&
                (((void)0, gSaveContext.save.entrance) != ENTRANCE(TERMINA_FIELD, 10))) {
                gSaveContext.nextCutsceneIndex = 0xFFF4;
            }
        }
        //! FAKE:
        gSaveContext.save.entrance =
            Entrance_Create(((void)0, scene), spawn, ((void)0, gSaveContext.save.entrance) & 0xF);
    }

    GameState_Realloc(&this->state, 0);
    KaleidoManager_Init(this);
    ShrinkWindow_Init();
    View_Init(&this->view, gfxCtx);
    func_801A3EC0(0);
    Quake_Init();
    Distortion_Init(this);

    for (i = 0; i < ARRAY_COUNT(this->cameraPtrs); i++) {
        this->cameraPtrs[i] = NULL;
    }

    Camera_Init(&this->mainCamera, &this->view, &this->colCtx, this);
    Camera_ChangeStatus(&this->mainCamera, CAM_STATUS_ACTIVE);

    for (i = 0; i < ARRAY_COUNT(this->subCameras); i++) {
        Camera_Init(&this->subCameras[i], &this->view, &this->colCtx, this);
        Camera_ChangeStatus(&this->subCameras[i], CAM_STATUS_INACTIVE);
    }

    this->cameraPtrs[CAM_ID_MAIN] = &this->mainCamera;
    this->cameraPtrs[CAM_ID_MAIN]->uid = CAM_ID_MAIN;
    this->activeCamId = CAM_ID_MAIN;

    func_800DFF18(&this->mainCamera, 0x7F);
    Sram_Alloc(&this->state, &this->sramCtx);
    Construct_InitRegs(this);
    Message_Init(this);
    GameOver_Init(this);
    SoundSource_InitAll(this);
    EffFootmark_Init(this);
    Effect_Init(this);
    EffectSS_Init(this, 100);
    CollisionCheck_InitContext(this, &this->colChkCtx);
    AnimationContext_Reset(&this->animationCtx);
    Cutscene_Init(this, &this->csCtx);

    if (gSaveContext.nextCutsceneIndex != 0xFFEF) {
        gSaveContext.save.cutscene = gSaveContext.nextCutsceneIndex;
        gSaveContext.nextCutsceneIndex = 0xFFEF;
    }

    if (gSaveContext.save.cutscene == 0xFFFD) {
        gSaveContext.save.cutscene = 0;
    }

    if (gSaveContext.nextDayTime != 0xFFFF) {
        gSaveContext.save.time = gSaveContext.nextDayTime;
        gSaveContext.skyboxTime = gSaveContext.nextDayTime;
    }

    if ((gSaveContext.save.time >= CLOCK_TIME(18, 0)) || (gSaveContext.save.time < CLOCK_TIME(6, 30))) {
        gSaveContext.save.isNight = true;
    } else {
        gSaveContext.save.isNight = false;
    }

    func_800EDDB0(this);

    if (((gSaveContext.gameMode != 0) && (gSaveContext.gameMode != 1)) || (gSaveContext.save.cutscene >= 0xFFF0)) {
        gSaveContext.unk_3DC0 = 0;
        Magic_Reset(this);
        gSaveContext.sceneLayer = (gSaveContext.save.cutscene & 0xF) + 1;
        gSaveContext.save.cutscene = 0;
    } else {
        gSaveContext.sceneLayer = 0;
    }

    sp87 = gSaveContext.sceneLayer;

    Play_SpawnScene(
        this, Entrance_GetSceneIdAbsolute(((void)0, gSaveContext.save.entrance) + ((void)0, gSaveContext.sceneLayer)),
        Entrance_GetSpawnNum(((void)0, gSaveContext.save.entrance) + ((void)0, gSaveContext.sceneLayer)));
    KaleidoScopeCall_Init(this);
    func_80121FC4(this);

    if (gSaveContext.nextDayTime != 0xFFFF) {
        if (gSaveContext.nextDayTime == 0x8000) {
            gSaveContext.save.day++;
            gSaveContext.save.daysElapsed++;
            gSaveContext.dogIsLost = true;
            gSaveContext.nextDayTime = -2;
        } else {
            gSaveContext.nextDayTime = -3;
        }
    }

    Play_MotionBlurInit();

    SREG(94) = 0;
    SREG(89) = 0;

    PreRender_Init(&this->pauseBgPreRender);
    PreRender_SetValuesSave(&this->pauseBgPreRender, D_801FBBCC, D_801FBBCE, NULL, NULL, NULL);
    PreRender_SetValues(&this->pauseBgPreRender, D_801FBBCC, D_801FBBCE, NULL, NULL);

    this->unk_18E64 = D_801FBB90;
    this->pictoPhotoI8 = gPictoPhotoI8;
    this->unk_18E68 = D_80784600;
    this->unk_18E58 = D_80784600;
    this->unk_18E60 = D_80784600;
    gTrnsnUnkState = 0;
    this->transitionMode = TRANS_MODE_OFF;
    D_801D0D54 = false;

    FrameAdvance_Init(&this->frameAdvCtx);
    Rand_Seed(osGetTime());
    Matrix_Init(&this->state);

    this->state.main = Play_Main;
    this->state.destroy = Play_Destroy;

    this->transitionTrigger = TRANS_TRIGGER_END;
    this->unk_18876 = 0;
    this->bgCoverAlpha = 0;
    this->haltAllActors = false;
    this->unk_18844 = false;

    if (gSaveContext.gameMode != 1) {
        if (gSaveContext.nextTransitionType == TRANS_NEXT_TYPE_DEFAULT) {
            this->transitionType =
                (Entrance_GetTransitionFlags(((void)0, gSaveContext.save.entrance) + sp87) >> 7) & 0x7F;
        } else {
            this->transitionType = gSaveContext.nextTransitionType;
            gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
        }
    } else {
        this->transitionType = TRANS_TYPE_FADE_BLACK;
    }

    TransitionFade_Init(&this->unk_18E48);
    TransitionFade_SetType(&this->unk_18E48, 3);
    TransitionFade_SetColor(&this->unk_18E48, RGBA8(160, 160, 160, 255));
    TransitionFade_Start(&this->unk_18E48);
    VisMono_Init(&sVisMono);

    gVisMonoColor.a = 0;
    D_801F6D4C = &D_801F6D38;
    func_80140E80(D_801F6D4C);
    D_801F6D4C->lodProportion = 0.0f;
    D_801F6D4C->mode = 1;
    D_801F6D4C->primColor.r = 0;
    D_801F6D4C->primColor.g = 0;
    D_801F6D4C->primColor.b = 0;
    D_801F6D4C->primColor.a = 0;
    D_801F6D4C->envColor.r = 0;
    D_801F6D4C->envColor.g = 0;
    D_801F6D4C->envColor.b = 0;
    D_801F6D4C->envColor.a = 0;
    EnvFlags_UnsetAll(this);
    THA_GetSize(&this->state.heap);
    sp94 = THA_GetSize(&this->state.heap);
    temp_v0_12 = (u32)THA_AllocEndAlign16(&this->state.heap, sp94);
    ZeldaArena_Init(((temp_v0_12 + 8) & ~0xF), (sp94 - ((temp_v0_12 + 8) & ~0xF)) + temp_v0_12);
    Actor_InitContext(this, &this->actorCtx, this->linkActorEntry);

    while (Room_HandleLoadCallbacks(this, &this->roomCtx) == 0) {}

    if ((CURRENT_DAY != 0) && ((this->roomCtx.curRoom.unk3 == 1) || (this->roomCtx.curRoom.unk3 == 5))) {
        Actor_Spawn(&this->actorCtx, this, 0x15A, 0.0f, 0.0f, 0.0f, 0, 0, 0, 0);
    }

    player = GET_PLAYER(this);

    Camera_InitPlayerSettings(&this->mainCamera, player);
    gDbgCamEnabled = false;

    if ((player->actor.params & 0xFF) != 0xFF) {
        Camera_ChangeDataIdx(&this->mainCamera, player->actor.params & 0xFF);
    }

    func_800F15D8(&this->mainCamera);
    func_801129E4(this);
    func_800FB758(this);
    gSaveContext.seqId = this->sequenceCtx.seqId;
    gSaveContext.ambienceId = this->sequenceCtx.ambienceId;
    AnimationContext_Update(this, &this->animationCtx);
    func_800EDBE0(this);
    gSaveContext.respawnFlag = 0;
    D_801F6DFC = false;
    func_8016FC78(&D_801F6D50);
}

// play_hireso need to confirm still
u16 D_801D0D78[] = { 0, 0, 0, 0 };
