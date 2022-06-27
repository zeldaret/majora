/*
 * File: z_en_syateki_man.c
 * Overlay: ovl_En_Syateki_Man
 * Description: Shooting Gallery Man
 */

#include "z_en_syateki_man.h"
#include "overlays/actors/ovl_En_Syateki_Crow/z_en_syateki_crow.h"
#include "overlays/actors/ovl_En_Syateki_Dekunuts/z_en_syateki_dekunuts.h"
#include "overlays/actors/ovl_En_Syateki_Wf/z_en_syateki_wf.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_8 | ACTOR_FLAG_10 | ACTOR_FLAG_8000000)

#define THIS ((EnSyatekiMan*)thisx)

void EnSyatekiMan_Init(Actor* thisx, PlayState* play);
void EnSyatekiMan_Destroy(Actor* thisx, PlayState* play);
void EnSyatekiMan_Update(Actor* thisx, PlayState* play);
void EnSyatekiMan_Draw(Actor* thisx, PlayState* play);

void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_Idle(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_Talk(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_Idle(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_Talk(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_SetupGiveReward(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_GiveReward(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_SetupGiveReward(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_GiveReward(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_MovePlayerAndExplainRules(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_StartGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_RunGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_EndGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Swamp_AddBonusPoints(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_MovePlayerAndExplainRules(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_StartGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_RunGame(EnSyatekiMan* this, PlayState* play);
void EnSyatekiMan_Town_EndGame(EnSyatekiMan* this, PlayState* play);

const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_SHN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};

typedef enum {
    /* 0 */ EN_SYATEKI_MAN_ANIMATION_HANDS_ON_TABLE,
    /* 1 */ EN_SYATEKI_MAN_ANIMATION_SWAMP_HEAD_SCRATCH_LOOP,
    /* 2 */ EN_SYATEKI_MAN_ANIMATION_SWAMP_HEAD_SCRATCH_END,
} EnSyatekiManAnimationIndex;

static AnimationInfo sAnimations[] = {
    { &gBurlyGuyHandsOnTableAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gSwampShootingGalleryManHeadScratchLoopAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gSwampShootingGalleryManHeadScratchEndAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
};

static s16 D_809C91C8[] = {
    0x00C1,
    0x0302,
    0x0019,
    0x0026,
};

typedef struct {
    /* 0x00 */ s16 actorId;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ s32 params;
} SwampTargetActorEntry;

static SwampTargetActorEntry sNormalSwampTargetActorList[] = {
    { ACTOR_EN_SYATEKI_WF, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_WF_PARAMS(1, 3, 0) },
    { ACTOR_EN_SYATEKI_WF, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_WF_PARAMS(0, 2, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 0, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 1, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 2, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 3, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 4, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 0, 1) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 1, 1) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(0, 0, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(1, 0, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(2, 0, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(3, 0, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(4, 2, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(5, 2, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(6, 0, 1) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(7, 0, 2) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(8, 0, 1) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(9, 0, 2) },
};

static SwampTargetActorEntry sUnusedSwampTargetActorList[] = {
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(0, 0, 0) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(1, 0, 0) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 0, 1) },
    { ACTOR_EN_SYATEKI_DEKUNUTS, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_DEKUNUTS_PARAMS(0, 1, 1) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(2, 0, 2) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(3, 0, 2) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(0, 0, 3) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(1, 0, 3) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(4, 2, 3) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(2, 0, 4) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(3, 0, 4) },
    { ACTOR_EN_SYATEKI_CROW, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_CROW_PARAMS(4, 2, 4) },
    { ACTOR_EN_SYATEKI_WF, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_WF_PARAMS(0, 2, 5) },
    { ACTOR_EN_SYATEKI_WF, -1000.0f, 200.0f, -700.0f, EN_SYATEKI_WF_PARAMS(1, 3, 6) },
};

static SwampTargetActorEntry* sSwampTargetActorLists[] = {
    sNormalSwampTargetActorList,
    sUnusedSwampTargetActorList,
};

static s32 sSwampTargetActorListLengths[] = {
    ARRAY_COUNT(sNormalSwampTargetActorList),
    ARRAY_COUNT(sUnusedSwampTargetActorList),
};

static Vec3f D_809C9474 = { 0.0f, 10.0f, 140.0f };
static Vec3f D_809C9480 = { -20.0f, 20.0f, 198.0f };
static Vec3f D_809C948C = { -20.0f, 40.0f, 175.0f };

void EnSyatekiMan_Swamp_SpawnTargetActors(EnSyatekiMan* this, PlayState* play2, SwampTargetActorEntry arg2[],
                                          s32 numTargetActors) {
    PlayState* play = play2;
    s32 i;

    for (i = 0; i < numTargetActors; i++) {
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, arg2[i].actorId, arg2[i].pos.x, arg2[i].pos.y,
                           arg2[i].pos.z, 0, 0, 0, arg2[i].params);
    }
}

void EnSyatekiMan_Init(Actor* thisx, PlayState* play) {
    EnSyatekiMan* this = THIS;
    s32 pad;
    Path* path = &play->setupPathList[EN_SYATEKI_MAN_GET_PATH(&this->actor)];
    s32 numTargetActors = sSwampTargetActorListLengths[this->swampTargetActorListIndex];

    this->actor.targetMode = 1;
    Actor_SetScale(&this->actor, 0.01f);
    if (play->sceneNum == SCENE_SYATEKI_MORI) {
        SkelAnime_InitFlex(play, &this->skelAnime, &gBurlyGuySkel, &gSwampShootingGalleryManHeadScratchLoopAnim,
                           this->jointTable, this->morphTable, BURLY_GUY_LIMB_MAX);
    } else {
        SkelAnime_InitFlex(play, &this->skelAnime, &gBurlyGuySkel, &gBurlyGuyHandsOnTableAnim, this->jointTable,
                           this->morphTable, BURLY_GUY_LIMB_MAX);
    }

    this->actor.colChkInfo.cylRadius = 100;
    this->actionFunc = EnSyatekiMan_SetupIdle;
    this->unk_26A = 0;
    this->unk_270 = 15;
    this->unk_27E = 0;
    this->unk_26E = 0;
    this->unk_190 = 0;
    this->unk_272 = 0;
    this->unk_274 = 0;
    this->score = 0;
    this->dekuScrubHitCounter = 0;
    this->guayHitCounter = 0;
    this->textId = 0;
    this->swampTargetActorListIndex = 0;
    this->unk_282 = 0;
    this->eyeIndex = 0;
    this->blinkTimer = 0;

    if (play->sceneNum == SCENE_SYATEKI_MORI) {
        this->path = path;
        EnSyatekiMan_Swamp_SpawnTargetActors(this, play, sSwampTargetActorLists[this->swampTargetActorListIndex],
                                             numTargetActors);
    }
}

void EnSyatekiMan_Destroy(Actor* thisx, PlayState* play) {
    gSaveContext.save.weekEventReg[63] &= (u8)~1;
}

s32 EnSyatekiMan_MovePlayerToTarget(PlayState* play, Vec3f arg1) {
    Player* player = GET_PLAYER(play);
    f32 sp28;
    f32 phi_f0;
    s16 sp22 = Math_Vec3f_Yaw(&player->actor.world.pos, &arg1);

    sp28 = Math_Vec3f_DistXZ(&player->actor.world.pos, &arg1);

    if (sp28 < 5.0f) {
        phi_f0 = 10.0f;
    } else if (sp28 < 30.0f) {
        phi_f0 = 40.0f;
    } else {
        phi_f0 = 80.0f;
    }

    play->actorCtx.unk268 = 1;
    func_800B6F20(play, &play->actorCtx.unk_26C, phi_f0, sp22);

    if (sp28 < 5.0f) {
        return true;
    }

    return false;
}

void EnSyatekiMan_SetupIdle(EnSyatekiMan* this, PlayState* play) {
    if (play->sceneNum == SCENE_SYATEKI_MORI) {
        this->actionFunc = EnSyatekiMan_Swamp_Idle;
    } else if (play->sceneNum == SCENE_SYATEKI_MIZU) {
        this->actionFunc = EnSyatekiMan_Town_Idle;
    }
}

void EnSyatekiMan_Swamp_Idle(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, &play->state)) {
        u16 sp22;

        Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_SYATEKI_MAN_ANIMATION_SWAMP_HEAD_SCRATCH_END);
        sp22 = Text_GetFaceReaction(play, 0x31);
        if (sp22 != 0) {
            Message_StartTextbox(play, sp22, &this->actor);
            this->textId = sp22;
        } else if (player->transformation == PLAYER_FORM_HUMAN) {
            if (this->unk_282 == 0) {
                this->unk_282 = 1;
                // How are you? Wanna play?
                Message_StartTextbox(play, 0xA28, &this->actor);
                this->textId = 0xA28;
            } else {
                // Won't you play?
                Message_StartTextbox(play, 0xA29, &this->actor);
                this->textId = 0xA29;
            }
        } else {
            switch (CURRENT_DAY) {
                case 1:
                    // You can't play if you don't have a bow!
                    Message_StartTextbox(play, 0xA38, &this->actor);
                    this->textId = 0xA38;
                    break;

                case 2:
                    // You can't play if you don't have a bow! Weird, not a single customer!
                    Message_StartTextbox(play, 0xA39, &this->actor);
                    this->textId = 0xA39;
                    break;

                case 3:
                    // You can't play if you don't have a bow! Weird, nobody's been in today...what's going on?
                    Message_StartTextbox(play, 0xA3A, &this->actor);
                    this->textId = 0xA3A;
                    break;
            }
        }
        this->actionFunc = EnSyatekiMan_Swamp_Talk;
    } else {
        func_800B8614(&this->actor, play, 120.0f);
    }

    if (player->actor.world.pos.z < 135.0f) {
        player->actor.world.pos.z = 135.0f;
    }
}

void EnSyatekiMan_Swamp_HandleChoice(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_ShouldAdvance(play)) {
        if (play->msgCtx.choiceIndex == 0) {
            if (!CUR_UPG_VALUE(UPG_QUIVER)) {
                play_sound(NA_SE_SY_ERROR);

                // You don't have a bow!
                Message_StartTextbox(play, 0xA30, &this->actor);
                this->textId = 0xA30;
            } else if (gSaveContext.save.playerData.rupees < 20) {
                play_sound(NA_SE_SY_ERROR);

                // You don't have enough rupees!
                Message_StartTextbox(play, 0xA31, &this->actor);
                this->textId = 0xA31;
                if (this->unk_26A == 4) {
                    gSaveContext.minigameState = 3;
                }
                this->unk_26A = 3;
            } else {
                func_8019F208();
                func_801159EC(-20);
                gSaveContext.save.weekEventReg[63] |= 1;
                gSaveContext.save.weekEventReg[63] &= (u8)~2;
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                this->unk_26A = 7;
                player->stateFlags1 |= 0x20;
                this->actionFunc = EnSyatekiMan_Swamp_MovePlayerAndExplainRules;
            }
        } else {
            func_8019F230();

            switch (CURRENT_DAY) {
                case 1:
                    // You're not playing? Please come again.
                    Message_StartTextbox(play, 0xA2D, &this->actor);
                    this->textId = 0xA2D;
                    break;

                case 2:
                    // You're not playing? Day after tomorrow is the carnival.
                    Message_StartTextbox(play, 0xA2E, &this->actor);
                    this->textId = 0xA2E;
                    break;

                case 3:
                    // You're not playing? Is something happening outside?
                    Message_StartTextbox(play, 0xA2F, &this->actor);
                    this->textId = 0xA2F;
                    break;
            }

            if (this->unk_26A == 4) {
                gSaveContext.minigameState = 3;
            }

            this->unk_26A = 3;
        }
    }
}

void EnSyatekiMan_Swamp_HandleNormalMessage(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_ShouldAdvance(play)) {
        switch (this->textId) {
            case 0xA28: // How are you? Wanna play?
            case 0xA29: // Won't you play?
                // It costs 20 rupees to play.
                Message_StartTextbox(play, 0xA2A, &this->actor);
                this->textId = 0xA2A;
                break;

            case 0xA2B: // The rules of the game are a piece of cake!
            case 0xA2C: // I keep saying - you have to aim with [Control Stick]!
            case 0xA35: // You almost had it! Well...just this once...here you go!
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                player->actor.freezeTimer = 0;
                func_80112AFC(play);
                play->interfaceCtx.hbaAmmo = 80;
                func_80123F2C(play, 80);
                this->unk_26A = 1;
                this->actionFunc = EnSyatekiMan_Swamp_StartGame;
                func_801A2BB8(NA_BGM_MINI_GAME_2);
                break;

            case 0xA32: // You have to try harder!
                if (gSaveContext.save.weekEventReg[63] & 2) {
                    func_801477B4(play);
                    player->stateFlags1 &= ~0x20;
                    gSaveContext.save.weekEventReg[63] &= (u8)~1;
                    gSaveContext.save.weekEventReg[63] &= (u8)~2;
                    this->actionFunc = EnSyatekiMan_Swamp_Idle;
                    gSaveContext.minigameState = 3;
                    this->unk_26A = 0;
                } else {
                    // Wanna play again?
                    Message_StartTextbox(play, 0xA33, &this->actor);
                    this->textId = 0xA33;
                }
                break;

            case 0xA33: // Wanna play again?
                // It costs 20 rupees to play.
                Message_StartTextbox(play, 0xA2A, &this->actor);
                this->textId = 0xA2A;
                this->unk_26A = 4;
                break;

            case 0xA34: // Perfect! Take this!
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                player->actor.freezeTimer = 0;
                gSaveContext.minigameState = 3;
                player->stateFlags1 |= 0x20;
                this->actionFunc = EnSyatekiMan_Swamp_SetupGiveReward;
                EnSyatekiMan_Swamp_SetupGiveReward(this, play);
                break;
        }
    }
}

void EnSyatekiMan_Swamp_Talk(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->stateFlags1 & 0x20) {
        player->stateFlags1 |= 0x20;
    }

    switch (Message_GetState(&play->msgCtx)) {
        case 2:
            this->actionFunc = EnSyatekiMan_Swamp_Idle;
            this->unk_26A = 0;
            break;

        case 4:
            EnSyatekiMan_Swamp_HandleChoice(this, play);
            break;

        case 5:
            EnSyatekiMan_Swamp_HandleNormalMessage(this, play);
            break;

        case 6:
            if (Message_ShouldAdvance(play)) {
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                player->stateFlags1 &= ~0x20;
                gSaveContext.save.weekEventReg[63] &= (u8)~1;
                gSaveContext.save.weekEventReg[63] &= (u8)~2;
                this->actionFunc = EnSyatekiMan_Swamp_Idle;
                this->unk_26A = 0;
            }
            break;

        case 0:
        case 1:
        case 3:
        case 7:
        case 8:
        case 9:
        case 10:
            break;
    }

    if (this->skelAnime.animation == &gSwampShootingGalleryManHeadScratchEndAnim) {
        if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
            Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_SYATEKI_MAN_ANIMATION_HANDS_ON_TABLE);
        }
    }
}

void EnSyatekiMan_Town_StartIntroTextbox(EnSyatekiMan* this, PlayState* play) {
    switch (gSaveContext.save.playerForm) {
        case PLAYER_FORM_HUMAN:
            Flags_SetAllTreasure(play, Flags_GetAllTreasure(play) + 1);
            if (CURRENT_DAY != 3) {
                if (!(this->unk_282 & 1)) {
                    this->unk_282 |= 1;
                    // Why don't you give it a try?
                    Message_StartTextbox(play, 0x3E8, &this->actor);
                    this->textId = 0x3E8;
                } else {
                    // Wanna try?
                    Message_StartTextbox(play, 0x3E9, &this->actor);
                    this->textId = 0x3E9;
                }
            } else if (!(this->unk_282 & 1)) {
                this->unk_282 |= 1;
                // If you still have time, why don't you try it?
                Message_StartTextbox(play, 0x3EA, &this->actor);
                this->textId = 0x3EA;
            } else {
                // How about it? Wanna try?
                Message_StartTextbox(play, 0x3EB, &this->actor);
                this->textId = 0x3EB;
            }
            break;

        case PLAYER_FORM_DEKU:
            if (CURRENT_DAY != 3) {
                if (!(this->unk_282 & 2)) {
                    this->unk_282 |= 2;
                    // When I saw your fairy, I thought you were that masked troublemaker.
                    Message_StartTextbox(play, 0x3EC, &this->actor);
                    this->textId = 0x3EC;
                } else {
                    // You can't play because you don't have a bow.
                    Message_StartTextbox(play, 0x3ED, &this->actor);
                    this->textId = 0x3ED;
                }
            } else if (!(this->unk_282 & 2)) {
                this->unk_282 |= 2;
                // I thought you were a customer, but I guess I can't expect any...
                Message_StartTextbox(play, 0x3EE, &this->actor);
                this->textId = 0x3EE;
            } else {
                // Stop hanging around and go home!
                Message_StartTextbox(play, 0x3EF, &this->actor);
                this->textId = 0x3EF;
            }
            break;

        case PLAYER_FORM_ZORA:
            if (CURRENT_DAY != 3) {
                if (!(this->unk_282 & 8)) {
                    this->unk_282 |= 8;
                    // I swear I've seen you before...
                    Message_StartTextbox(play, 0x3F0, &this->actor);
                    this->textId = 0x3F0;
                } else {
                    // If you don't have a bow, you can't play.
                    Message_StartTextbox(play, 0x3F1, &this->actor);
                    this->textId = 0x3F1;
                }
            } else if (!(this->unk_282 & 8)) {
                this->unk_282 |= 8;
                // Huh? You're still here?
                Message_StartTextbox(play, 0x3F4, &this->actor);
                this->textId = 0x3F4;
            } else {
                // Haven't you heard the news?
                Message_StartTextbox(play, 0x3F5, &this->actor);
                this->textId = 0x3F5;
            }
            break;

        case PLAYER_FORM_GORON:
            if (CURRENT_DAY != 3) {
                if (!(this->unk_282 & 4)) {
                    this->unk_282 |= 4;
                    // You have quite the build!
                    Message_StartTextbox(play, 0x3F2, &this->actor);
                    this->textId = 0x3F2;
                } else {
                    // Sorry...you don't have a bow.
                    Message_StartTextbox(play, 0x3F3, &this->actor);
                    this->textId = 0x3F3;
                }
            } else if (!(this->unk_282 & 4)) {
                this->unk_282 |= 4;
                // Huh? You're still here?
                Message_StartTextbox(play, 0x3F4, &this->actor);
                this->textId = 0x3F4;
            } else {
                // Haven't you heard the news?
                Message_StartTextbox(play, 0x3F5, &this->actor);
                this->textId = 0x3F5;
            }
            break;
    }
}

void EnSyatekiMan_Town_Idle(EnSyatekiMan* this, PlayState* play) {
    if (Actor_ProcessTalkRequest(&this->actor, &play->state)) {
        u16 sp26 = Text_GetFaceReaction(play, 0x30);

        if (sp26 != 0) {
            Message_StartTextbox(play, sp26, &this->actor);
            this->textId = sp26;
        } else {
            EnSyatekiMan_Town_StartIntroTextbox(this, play);
        }
        this->actionFunc = EnSyatekiMan_Town_Talk;
    } else {
        func_800B8614(&this->actor, play, 120.0f);
    }
}

void EnSyatekiMan_Town_HandleChoice(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_ShouldAdvance(play)) {
        if (play->msgCtx.choiceIndex == 0) {
            if (!CUR_UPG_VALUE(UPG_QUIVER)) {
                play_sound(NA_SE_SY_ERROR);
                if (CURRENT_DAY != 3) {
                    // You don't have a bow? Then you can't play.
                    Message_StartTextbox(play, 0x3F9, &this->actor);
                    this->textId = 0x3F9;
                } else {
                    // You don't have a bow? That's too bad.
                    Message_StartTextbox(play, 0x3FA, &this->actor);
                    this->textId = 0x3FA;
                }
            } else if (gSaveContext.save.playerData.rupees < 20) {
                play_sound(NA_SE_SY_ERROR);
                if (CURRENT_DAY != 3) {
                    // You don't have a enough rupees!
                    Message_StartTextbox(play, 0x3FB, &this->actor);
                    this->textId = 0x3FB;
                } else {
                    // You don't have enough rupees? That's too bad.
                    Message_StartTextbox(play, 0x3FC, &this->actor);
                    this->textId = 0x3FC;
                }

                if (this->unk_26A == 4) {
                    player->stateFlags3 &= ~0x400;
                    gSaveContext.minigameState = 3;
                }
                this->unk_26A = 3;
            } else {
                func_8019F208();
                func_801159EC(-20);
                this->unk_26A = 2;
                if (!(this->unk_282 & 0x10)) {
                    this->unk_282 |= 0x10;
                    // The rules are simple.
                    Message_StartTextbox(play, 0x3FD, &this->actor);
                    this->textId = 0x3FD;
                } else {
                    // Aim for the red ones.
                    Message_StartTextbox(play, 0x3FF, &this->actor);
                    this->textId = 0x3FF;
                }
                gSaveContext.save.weekEventReg[63] |= 1;
                gSaveContext.save.weekEventReg[63] &= (u8)~2;
            }
        } else {
            func_8019F230();
            if (CURRENT_DAY != 3) {
                // Well, be that way!
                Message_StartTextbox(play, 0x3F7, &this->actor);
                this->textId = 0x3F7;
            } else {
                // Usually this place is packed...
                Message_StartTextbox(play, 0x3F8, &this->actor);
                this->textId = 0x3F8;
            }

            if (this->unk_26A == 4) {
                player->stateFlags3 &= ~0x400;
                gSaveContext.minigameState = 3;
            }
            this->unk_26A = 3;
        }
    }
}

void EnSyatekiMan_Town_HandleNormalMessage(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_ShouldAdvance(play)) {
        switch (this->textId) {
            case 0x3E8: // Why don't you give it a try?
            case 0x3E9: // Wanna try?
            case 0x3EA: // If you still have time, why don't you try it?
            case 0x3EB: // How about it? Wanna try?
                // One game is 20 rupees.
                Message_StartTextbox(play, 0x3F6, &this->actor);
                this->textId = 0x3F6;
                break;

            case 0x3EC: // When I saw your fairy, I thought you were that masked troublemaker.
                // You can't play because you don't have a bow.
                Message_StartTextbox(play, 0x3ED, &this->actor);
                this->textId = 0x3ED;
                break;

            case 0x3EE: // I thought you were a customer, but I guess I can't expect any...
                // Stop hanging around and go home!
                Message_StartTextbox(play, 0x3EF, &this->actor);
                this->textId = 0x3EF;
                break;

            case 0x3F0: // I swear I've seen you before...
                // If you don't have a bow, you can't play.
                Message_StartTextbox(play, 0x3F1, &this->actor);
                this->textId = 0x3F1;
                break;

            case 0x3F2: // You have quite the build!
                // Sorry...you don't have a bow.
                Message_StartTextbox(play, 0x3F3, &this->actor);
                this->textId = 0x3F3;
                break;

            case 0x3F4: // Huh? You're still here?
                // Haven't you heard the news?
                Message_StartTextbox(play, 0x3F5, &this->actor);
                this->textId = 0x3F5;
                break;

            case 0x3FD: // The rules are simple.
            case 0x3FF: // Aim for the red ones.
                if (this->unk_26A == 4) {
                    if (this->textId == 0x3FD) {
                        // Our highest score is [score]. If you break the record, you'll win a prize!
                        Message_StartTextbox(play, 0x3FE, &this->actor);
                        this->textId = 0x3FE;
                    } else {
                        // Our highest score is [score]. Good luck!
                        Message_StartTextbox(play, 0x400, &this->actor);
                        this->textId = 0x400;
                    }
                } else {
                    play->msgCtx.msgMode = 0x43;
                    play->msgCtx.unk12023 = 4;
                    player->actor.freezeTimer = 0;
                    this->unk_26A = 7;
                    player->stateFlags1 |= 0x20;
                    gSaveContext.save.weekEventReg[63] |= 1;
                    gSaveContext.save.weekEventReg[63] &= (u8)~2;
                    this->actionFunc = EnSyatekiMan_Town_MovePlayerAndExplainRules;
                }
                break;

            case 0x3FE: // Our highest score is [score]. If you break the record, you'll win a prize!
            case 0x400: // Our highest score is [score]. Good luck!
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                player->actor.freezeTimer = 0;
                this->unk_27E = 0;
                func_80112AFC(play);
                func_80123F2C(play, 0x63);
                this->unk_26A = 1;
                func_801A2BB8(NA_BGM_MINI_GAME_2);
                this->actionFunc = EnSyatekiMan_Town_StartGame;
                break;

            case 0x401: // You got [score]? Oh, that's too bad...
                if (gSaveContext.save.weekEventReg[63] & 2) {
                    func_801477B4(play);
                    gSaveContext.save.weekEventReg[63] &= (u8)~1;
                    gSaveContext.save.weekEventReg[63] &= (u8)~2;
                    this->unk_26A = 0;
                    this->actionFunc = EnSyatekiMan_Town_Idle;
                } else {
                    // You can't stop, can you? You can play as long as you have rupees.
                    Message_StartTextbox(play, 0x402, &this->actor);
                    this->textId = 0x402;
                }
                break;

            case 0x403: // You got [score]? Too bad...
                if (gSaveContext.save.weekEventReg[63] & 2) {
                    func_801477B4(play);
                    gSaveContext.save.weekEventReg[63] &= (u8)~1;
                    gSaveContext.save.weekEventReg[63] &= (u8)~2;
                    this->unk_26A = 0;
                    this->actionFunc = EnSyatekiMan_Town_Idle;
                } else {
                    // Frustrating, right? Wanna try again?
                    Message_StartTextbox(play, 0x404, &this->actor);
                    this->textId = 0x404;
                }
                break;

            case 0x402: // You can't stop, can you? You can play as long as you have rupees.
            case 0x404: // Frustrating, right? Wanna try again?
                // One game is 20 rupees.
                Message_StartTextbox(play, 0x3F6, &this->actor);
                this->textId = 0x3F6;
                this->unk_26A = 4;
                break;

            case 0x405: // No way! That was perfect!
            case 0x406: // That was perfect!
            case 0x407: // You got a new record!
                play->msgCtx.msgMode = 0x43;
                play->msgCtx.unk12023 = 4;
                player->actor.freezeTimer = 0;
                gSaveContext.minigameState = 3;
                this->actionFunc = EnSyatekiMan_Town_SetupGiveReward;
                EnSyatekiMan_Town_SetupGiveReward(this, play);
                break;
        }
    }
}

void EnSyatekiMan_Town_Talk(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (player->stateFlags1 & 0x20) {
        player->stateFlags1 |= 0x20;
    }

    switch (Message_GetState(&play->msgCtx)) {
        case 2:
            this->actionFunc = EnSyatekiMan_Town_Idle;
            this->unk_26A = 0;
            break;

        case 4:
            EnSyatekiMan_Town_HandleChoice(this, play);
            break;

        case 5:
            EnSyatekiMan_Town_HandleNormalMessage(this, play);
            break;

        case 6:
            if (Message_ShouldAdvance(play)) {
                gSaveContext.save.weekEventReg[63] &= (u8)~1;
                gSaveContext.save.weekEventReg[63] &= (u8)~2;
                player->stateFlags1 &= ~0x20;
                this->actionFunc = EnSyatekiMan_Town_Idle;
                this->unk_26A = 0;
            }
            break;

        case 0:
        case 1:
        case 3:
        case 7:
        case 8:
        case 9:
        case 10:
            break;
    }
}

void EnSyatekiMan_Swamp_SetupGiveReward(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_HasParent(&this->actor, play)) {
        if (!(gSaveContext.save.weekEventReg[59] & 0x10)) {
            gSaveContext.save.weekEventReg[59] |= 0x10;
        } else if (!(gSaveContext.save.weekEventReg[32] & 2) && (this->score >= 2180)) {
            gSaveContext.save.weekEventReg[32] |= 2;
        }
        this->actor.parent = NULL;
        this->actionFunc = EnSyatekiMan_Swamp_GiveReward;
    } else {
        if ((CUR_UPG_VALUE(UPG_QUIVER) < 3) && !(gSaveContext.save.weekEventReg[59] & 0x10)) {
            Actor_PickUp(&this->actor, play, GI_QUIVER_30 + CUR_UPG_VALUE(UPG_QUIVER), 500.0f, 100.0f);
        } else if (this->score < 2180) {
            Actor_PickUp(&this->actor, play, GI_RUPEE_RED, 500.0f, 100.0f);
        } else if (!(gSaveContext.save.weekEventReg[32] & 2)) {
            Actor_PickUp(&this->actor, play, GI_HEART_PIECE, 500.0f, 100.0f);
        } else {
            Actor_PickUp(&this->actor, play, GI_RUPEE_PURPLE, 500.0f, 100.0f);
        }

        player->actor.shape.rot.y = -0x8000;
        player->actor.velocity.z = 0.0f;
        player->actor.velocity.x = 0.0f;
        player->actor.world.rot.y = player->actor.shape.rot.y;
    }
}

void EnSyatekiMan_Swamp_GiveReward(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_ProcessTalkRequest(&this->actor, &play->state)) {
        if ((CURRENT_DAY == 3) && (gSaveContext.save.time > CLOCK_TIME(12, 0))) {
            // We've been having a lot of earthquakes lately.
            Message_StartTextbox(play, 0xA36, &this->actor);
            this->textId = 0xA36;
        } else {
            // Tell your friends about us.
            Message_StartTextbox(play, 0xA37, &this->actor);
            this->textId = 0xA37;
        }
        player->stateFlags1 &= ~0x20;
        this->actor.flags &= ~ACTOR_FLAG_10000;
        this->score = 0;
        this->unk_26A = 0;
        this->actionFunc = EnSyatekiMan_Swamp_Talk;
    } else {
        func_800B85E0(&this->actor, play, 500.0f, EXCH_ITEM_MINUS1);
    }
}

void EnSyatekiMan_Town_SetupGiveReward(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Actor_HasParent(&this->actor, play)) {
        if (this->textId == 0x407) {
            if (!(gSaveContext.save.weekEventReg[59] & 0x20)) {
                gSaveContext.save.weekEventReg[59] |= 0x20;
            }
        }

        if ((this->textId == 0x405) || (this->textId == 0x406)) {
            if (!(gSaveContext.save.weekEventReg[32] & 4)) {
                gSaveContext.save.weekEventReg[32] |= 4;
            }
        }
        this->actor.parent = NULL;
        this->actionFunc = EnSyatekiMan_Town_GiveReward;
    } else {
        if (this->textId == 0x407) {
            if ((CUR_UPG_VALUE(UPG_QUIVER) < 3) && !(gSaveContext.save.weekEventReg[59] & 0x20)) {
                Actor_PickUp(&this->actor, play, GI_QUIVER_30 + CUR_UPG_VALUE(UPG_QUIVER), 500.0f, 100.0f);
            } else {
                Actor_PickUp(&this->actor, play, GI_RUPEE_PURPLE, 500.0f, 100.0f);
            }
        } else if (!(gSaveContext.save.weekEventReg[32] & 4)) {
            Actor_PickUp(&this->actor, play, GI_HEART_PIECE, 500.0f, 100.0f);
        } else {
            Actor_PickUp(&this->actor, play, GI_RUPEE_HUGE, 500.0f, 100.0f);
        }

        player->actor.shape.rot.y = -0x8000;
        player->actor.velocity.z = 0.0f;
        player->actor.velocity.x = 0.0f;
        player->actor.world.rot.y = player->actor.shape.rot.y;
    }
}

void EnSyatekiMan_Town_GiveReward(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (CURRENT_DAY != 3) {
        if ((Message_GetState(&play->msgCtx) == 6) && Message_ShouldAdvance(play)) {
            player->stateFlags1 &= ~0x20;
            this->score = 0;
            this->unk_26A = 0;
            gSaveContext.save.weekEventReg[63] &= (u8)~1;
            gSaveContext.save.weekEventReg[63] &= (u8)~2;
            this->actionFunc = EnSyatekiMan_SetupIdle;
        }
    } else if (Actor_ProcessTalkRequest(&this->actor, &play->state)) {
        // This may be our last day in business...
        Message_StartTextbox(play, 0x408, &this->actor);
        this->textId = 0x408;
        player->stateFlags1 &= ~0x20;
        this->actor.flags &= ~ACTOR_FLAG_10000;
        this->score = 0;
        this->unk_26A = 0;
        this->actionFunc = EnSyatekiMan_Town_Talk;
    } else {
        func_800B85E0(&this->actor, play, 500.0f, EXCH_ITEM_MINUS1);
    }
}

void EnSyatekiMan_Swamp_MovePlayerAndExplainRules(EnSyatekiMan* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (EnSyatekiMan_MovePlayerToTarget(play, D_809C9474)) {
        player->stateFlags1 |= 0x20;
        this->unk_26A = 2;
        if (this->unk_282 != 2) {
            this->unk_282 = 2;
            // The rules of the game are a piece of cake!
            Message_StartTextbox(play, 0xA2B, &this->actor);
            this->textId = 0xA2B;
        } else {
            // I keep saying - you have to aim with [Control Stick]!
            Message_StartTextbox(play, 0xA2C, &this->actor);
            this->textId = 0xA2C;
        }
        this->actionFunc = EnSyatekiMan_Swamp_Talk;
    }
}

void EnSyatekiMan_Swamp_StartGame(EnSyatekiMan* this, PlayState* play) {
    static s16 D_809C9498 = 30;
    Player* player = GET_PLAYER(play);

    if (D_809C9498 > 0) {
        player->actor.world.pos = D_809C9474;
        player->actor.shape.rot.y = -0x8000;
        player->actor.world.rot.y = player->actor.shape.rot.y;
        play->unk_18790(play, -0x8000, &this->actor);
        D_809C9498--;
    } else {
        D_809C9498 = 30;
        this->unk_27E = 0;
        this->score = 0;
        player->stateFlags1 &= ~0x20;
        Actor_PlaySfxAtPos(&this->actor, NA_SE_SY_FOUND);
        this->unk_272 = 0x1F;
        this->unk_274 = 0;
        this->unk_276 = 0;
        this->unk_26C = 0;
        this->dekuScrubHitCounter = 0;
        this->guayHitCounter = 0;
        this->unk_27C = 0;
        this->unk_26E = 0;
        func_8010E9F0(1, 100);
        this->actor.draw = NULL;
        this->actionFunc = EnSyatekiMan_Swamp_RunGame;
    }
}

void EnSyatekiMan_Swamp_RunGame(EnSyatekiMan* this, PlayState* play) {
    static s16 D_809C949C = 0;
    Player* player = GET_PLAYER(play);

    if (((this->unk_272 == 0) || (this->unk_26C > 140)) && (D_809C949C == 0) && (this->unk_27C < 4)) {
        D_809C949C = 1;
        this->unk_26C = 0;
        Actor_PlaySfxAtPos(&this->actor, NA_SE_SY_FOUND);
        this->unk_274 = D_809C91C8[this->unk_27E];
        if (this->unk_27E == 3) {
            this->unk_27E = 0;
        } else {
            this->unk_27E++;
        }
    } else if ((this->unk_274 == 0) && (this->unk_272 == 0) && (D_809C949C == 1) && (this->unk_27C < 4)) {
        if (this->guayHitCounter < 3) {
            this->guayHitCounter = 0;
        }
        this->unk_26C = 0;
        D_809C949C = 0;
        this->unk_27C++;
        if (this->unk_27C < 4) {
            this->unk_272 = 31;
        }
    }

    if (this->guayHitCounter == 3) {
        this->guayHitCounter = 0;
        this->unk_276 |= 1;
    }

    if (this->dekuScrubHitCounter == 10) {
        this->dekuScrubHitCounter = 0;
        this->unk_276 |= 2;
    }

    this->unk_26C++;
    if (gSaveContext.unk_3DE0[1] == 0) {
        gSaveContext.unk_3DE0[1] = 0;
        gSaveContext.unk_3DD0[1] = 5;
        this->actor.draw = EnSyatekiMan_Draw;
        this->unk_27E = 0;
        this->unk_27C = 0;
        player->stateFlags1 |= 0x20;
        D_809C949C = 0;
        func_801A2C20();
        this->actionFunc = EnSyatekiMan_Swamp_EndGame;
    } else if ((this->unk_27C == 4) && (this->unk_276 == 0) && (this->unk_26E == 2)) {
        this->actor.draw = EnSyatekiMan_Draw;
        this->unk_27E = 0;
        this->unk_27C = 0;
        player->stateFlags1 |= 0x20;
        D_809C949C = 0;
        func_801A2C20();
        this->unk_26A = 5;
        if (this->score == 2120) {
            func_8011B4E0(play, 2);
            gSaveContext.unk_3DD0[1] = 6;
            this->actionFunc = EnSyatekiMan_Swamp_AddBonusPoints;
        } else {
            gSaveContext.unk_3DD0[1] = 5;
            this->actionFunc = EnSyatekiMan_Swamp_EndGame;
        }
    }
}

void EnSyatekiMan_Swamp_EndGame(EnSyatekiMan* this, PlayState* play) {
    if ((this->unk_26A == 1) || (this->unk_26A == 5)) {
        this->unk_190 = 0;
        this->unk_272 = 0;
        this->unk_274 = 0;
        this->unk_276 = 0;
        if (this->unk_270 <= 0) {
            if ((s32)((gSaveContext.save.unk_EF4 & 0xFFFF0000) >> 0x10) < this->score) {
                gSaveContext.save.unk_EF4 = ((gSaveContext.save.unk_EF4) & 0xFFFF) | ((u16)this->score << 0x10);
            }
            this->unk_270 = 15;
            if (this->score >= 2120) {
                // Perfect! Take this!
                Message_StartTextbox(play, 0xA34, &this->actor);
                this->textId = 0xA34;
                this->unk_26A = 6;
            } else if (this->score >= 0x7D0) {
                if (gSaveContext.save.weekEventReg[63] & 2) {
                    gSaveContext.save.weekEventReg[63] &= (u8)~1;
                    gSaveContext.save.weekEventReg[63] &= (u8)~2;
                    this->unk_26A = 0;
                    gSaveContext.minigameState = 3;
                    this->actionFunc = EnSyatekiMan_Swamp_Idle;
                    return;
                }
                // You almost had it! Well...just this once...here you go!
                Message_StartTextbox(play, 0xA35, &this->actor);
                this->textId = 0xA35;
                this->unk_26A = 4;
                this->score = 0;
            } else {
                // You have to try harder!
                Message_StartTextbox(play, 0xA32, &this->actor);
                this->textId = 0xA32;
                this->unk_26A = 6;
            }
            this->actionFunc = EnSyatekiMan_Swamp_Talk;
        } else {
            this->unk_270--;
        }
    }

    if (this->unk_270 < 5) {
        play->unk_1887C = -10;
    }
}

void EnSyatekiMan_Swamp_AddBonusPoints(EnSyatekiMan* this, PlayState* play) {
    static s32 D_809C94A0 = 0;
    Player* player = GET_PLAYER(play);

    player->stateFlags1 |= 0x20;
    if (play->interfaceCtx.unk_286 == 0) {
        if (gSaveContext.unk_3DE0[1] == 0) {
            gSaveContext.unk_3DE0[1] = 0;
            gSaveContext.unk_3DD0[1] = 5;
            this->unk_27E = 0;
            this->unk_27C = 0;
            this->actionFunc = EnSyatekiMan_Swamp_EndGame;
            D_809C94A0 = 0;
        } else if (D_809C94A0 > 10) {
            gSaveContext.unk_3E88[1] += 100;
            play->interfaceCtx.unk_25C += 10;
            this->score += 10;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_SY_TRE_BOX_APPEAR);
            D_809C94A0 = 0;
        } else {
            D_809C94A0++;
        }
    }
}

void EnSyatekiMan_Town_MovePlayerAndExplainRules(EnSyatekiMan* this, PlayState* play) {
    Vec3f sp24;

    if (gSaveContext.save.playerForm == PLAYER_FORM_FIERCE_DEITY) {
        sp24 = D_809C9480;
    } else {
        sp24 = D_809C948C;
    }

    if (EnSyatekiMan_MovePlayerToTarget(play, sp24)) {
        if (this->textId == 0x3FD) {
            // Our highest score is [score]. If you break the record, you'll win a prize!
            Message_StartTextbox(play, 0x3FE, &this->actor);
            this->textId = 0x3FE;
        } else {
            // Our highest score is [score]. Good luck!
            Message_StartTextbox(play, 0x400, &this->actor);
            this->textId = 0x400;
        }
        this->unk_26A = 2;
        this->actionFunc = EnSyatekiMan_Town_Talk;
    }
}

void EnSyatekiMan_Town_StartGame(EnSyatekiMan* this, PlayState* play) {
    static s16 D_809C94A4 = 30;
    Player* player = GET_PLAYER(play);

    if (D_809C94A4 == 30) {
        if (player->transformation == PLAYER_FORM_FIERCE_DEITY) {
            player->actor.world.pos = D_809C9480;
        } else {
            player->actor.world.pos = D_809C948C;
        }
        player->actor.prevPos = player->actor.world.pos;
        player->actor.shape.rot.y = -0x8000;
        player->actor.world.rot.y = player->actor.shape.rot.y;
        play->unk_18790(play, -0x8000, &this->actor);
        player->stateFlags1 |= 0x20;
        D_809C94A4--;
    } else if (D_809C94A4 > 0) {
        player->actor.shape.rot.y = -0x8000;
        player->actor.world.rot.y = player->actor.shape.rot.y;
        D_809C94A4--;
    } else if (D_809C94A4 == 0) {
        player->stateFlags1 &= ~0x20;
        this->score = 0;
        this->unk_27E = 0;
        this->unk_26C = 70;
        this->unk_26E = 0;
        D_809C94A4 = 30;
        func_8010E9F0(1, 75);
        this->actor.draw = NULL;
        this->actionFunc = EnSyatekiMan_Town_RunGame;
    }
}

void EnSyatekiMan_Town_RunGame(EnSyatekiMan* this, PlayState* play) {
    static const s32 D_809C94D0[] = {
        0x00000111, 0x00000650, 0x00010025, 0x00011011, 0x00000984, 0x00004050, 0x00010211, 0x00022015,
        0x00026984, 0x00012852, 0x00011999, 0x00022895, 0x0000056A, 0x0002A451, 0x00004115,
    };
    static s32 D_809C94A8 = 0;
    Player* player = GET_PLAYER(play);
    s32 sp30 = (((void)0, gSaveContext.unk_3DE0[1]) * 0.1f) + 1.0f;

    if (sp30 < 0x2EF) {
        s32 temp;

        if (D_809C94A8 == 0) {
            temp = ((void)0, gSaveContext.unk_3DE0[1]) % 500;
        } else {
            temp = (((void)0, gSaveContext.unk_3DE0[1]) + 250) % 500;
        }

        if (temp < 100) {
            this->unk_26C = 80;
        }

        if (this->unk_26E != 0) {
            if (this->unk_26E == 2) {
                gSaveContext.unk_3E18[1] -= 250;
                D_809C94A8 = (D_809C94A8 + 25) % 50;
            }
            this->unk_26E = 0;
        }

        if (this->unk_26C == 0) {
            this->unk_26C++;
        }

        if ((D_809C94A8 == (sp30 % 50)) && (this->unk_26C >= 70)) {
            if (this->unk_27E < 15) {
                this->unk_190 = D_809C94D0[this->unk_27E++];
                Actor_PlaySfxAtPos(&this->actor, NA_SE_SY_FOUND);
                this->unk_26C = 0;
            }
        }

        if (gSaveContext.unk_3DE0[1] == 0) {
            this->unk_27E = 0;
            this->unk_26C = 80;
            gSaveContext.unk_3DE0[1] = 0;
            gSaveContext.unk_3DD0[1] = 5;
            player->stateFlags1 |= 0x20;
            D_809C94A8 = 0;
            this->actor.draw = EnSyatekiMan_Draw;
            func_801A2C20();
            this->actionFunc = EnSyatekiMan_Town_EndGame;
            if (this->score == 50) {
                func_801A3098(NA_BGM_GET_ITEM | 0x900);
                func_8011B4E0(play, 1);
            }
        }
    }
}

void EnSyatekiMan_Town_EndGame(EnSyatekiMan* this, PlayState* play) {
    if (this->unk_26A == 1) {
        this->unk_190 = 0;
        if ((this->unk_270 <= 0) && (play->interfaceCtx.unk_286 == 0)) {
            Flags_SetAllTreasure(play, this->score);
            this->unk_270 = 15;
            if (((s32)(gSaveContext.save.unk_EF4 & 0xFFFF) < this->score) || (this->score == 50)) {
                if ((s32)(gSaveContext.save.unk_EF4 & 0xFFFF) < this->score) {
                    if (!(gSaveContext.save.weekEventReg[59] & 0x20)) {
                        // You got a new record!
                        Message_StartTextbox(play, 0x407, &this->actor);
                        this->textId = 0x407;
                    } else if (this->score == 50) {
                        // No way! That was perfect!
                        Message_StartTextbox(play, 0x405, &this->actor);
                        this->textId = 0x405;
                    } else {
                        // You got a new record!
                        Message_StartTextbox(play, 0x407, &this->actor);
                        this->textId = 0x407;
                    }
                } else if (this->score == 50) {
                    // That was perfect!
                    Message_StartTextbox(play, 0x406, &this->actor);
                    this->textId = 0x406;
                }
                gSaveContext.save.unk_EF4 = (gSaveContext.save.unk_EF4 & 0xFFFF0000) | (this->score & 0xFFFF);
                this->unk_26A = 6;
            } else {
                if (CURRENT_DAY != 3) {
                    // You got [score]? Oh, that's too bad...
                    Message_StartTextbox(play, 0x401, &this->actor);
                    this->textId = 0x401;
                } else {
                    // You got [score]? Too bad...
                    Message_StartTextbox(play, 0x403, &this->actor);
                    this->textId = 0x403;
                }
                this->unk_26A = 4;
            }
            this->actionFunc = EnSyatekiMan_Town_Talk;
        } else {
            this->unk_270--;
        }
    }

    if (this->unk_270 < 5) {
        play->unk_1887C = -10;
    }
}

void EnSyatekiMan_Blink(EnSyatekiMan* this) {
    switch (this->blinkTimer) {
        case 1:
            this->eyeIndex = 2;
            break;

        case 2:
            this->eyeIndex = 1;
            break;

        case 40:
            this->blinkTimer = 0;

        default:
            this->eyeIndex = 0;
            break;
    }

    this->blinkTimer++;
}

void EnSyatekiMan_Update(Actor* thisx, PlayState* play) {
    EnSyatekiMan* this = THIS;

    this->actionFunc(this, play);
    EnSyatekiMan_Blink(this);
    this->actor.focus.pos.y = 70.0f;
    Actor_SetFocus(&this->actor, 70.0f);
    if (this->unk_26A != 1) {
        SkelAnime_Update(&this->skelAnime);
        Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    }
}

s32 EnSyatekiMan_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnSyatekiMan* this = THIS;

    if ((play->sceneNum == SCENE_SYATEKI_MIZU) && (limbIndex == BURLY_GUY_LIMB_HEAD)) {
        *dList = gTownShootingGalleryManHeadDL;
    }

    if (limbIndex == BURLY_GUY_LIMB_HEAD) {
        Matrix_Translate(3000.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        Matrix_RotateZS(this->headRot.x, MTXMODE_APPLY);
        Matrix_RotateXS(this->headRot.y, MTXMODE_APPLY);
        Matrix_Translate(-3000.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    } else if (limbIndex == BURLY_GUY_LIMB_TORSO) {
        Matrix_RotateXS(-this->torsoRot.y, MTXMODE_APPLY);
    }

    return false;
}

void EnSyatekiMan_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnSyatekiMan* this = THIS;
    Vec3f sp18 = { 1600.0f, 0.0f, 0.0f };

    if (limbIndex == BURLY_GUY_LIMB_HEAD) {
        Matrix_MultVec3f(&sp18, &this->actor.focus.pos);
    }
}

void EnSyatekiMan_Draw(Actor* thisx, PlayState* play) {
    static TexturePtr sEyeTextures[] = {
        gSwampShootingGalleryManEyeOpenTex,
        gSwampShootingGalleryManEyeHalfTex,
        gSwampShootingGalleryManEyeHalfTex,
    };
    EnSyatekiMan* this = THIS;
    s32 pad;

    if (play->sceneNum == SCENE_SYATEKI_MIZU) {
        sEyeTextures[0] = gTownShootingGalleryManEyeOpenTex;
        sEyeTextures[1] = gTownShootingGalleryManEyeClosedTex;
        sEyeTextures[2] = gTownShootingGalleryManEyeClosedTex;
    } else {
        sEyeTextures[0] = gSwampShootingGalleryManEyeOpenTex;
        sEyeTextures[1] = gSwampShootingGalleryManEyeHalfTex;
        sEyeTextures[2] = gSwampShootingGalleryManEyeHalfTex;
    }

    OPEN_DISPS(play->state.gfxCtx);

    func_8012C5B0(play->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, Lib_SegmentedToVirtual(sEyeTextures[this->eyeIndex]));
    gSPSegment(POLY_OPA_DISP++, 0x09, Lib_SegmentedToVirtual(sEyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnSyatekiMan_OverrideLimbDraw, EnSyatekiMan_PostLimbDraw, &this->actor);

    CLOSE_DISPS(play->state.gfxCtx);
}
