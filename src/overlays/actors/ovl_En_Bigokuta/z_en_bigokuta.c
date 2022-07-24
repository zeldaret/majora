/*
 * File: z_en_bigokuta.c
 * Overlay: ovl_En_Bigokuta
 * Description: Big Octo
 */

#include "z_en_bigokuta.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4)

#define THIS ((EnBigokuta*)thisx)

void EnBigokuta_Init(Actor* thisx, PlayState* play);
void EnBigokuta_Destroy(Actor* thisx, PlayState* play);
void EnBigokuta_Update(Actor* thisx, PlayState* play);
void EnBigokuta_Draw(Actor* thisx, PlayState* play);

void func_80AC2B4C(PlayState* play, EnBigokuta* this);
void EnBigokuta_SetupIdle(EnBigokuta* this);
void EnBigokuta_Idle(EnBigokuta* this, PlayState* play);
void EnBigokuta_SetupRise(EnBigokuta* this, PlayState* play);
void EnBigokuta_RiseOutOfWater(EnBigokuta* this, PlayState* play);
void EnBigokuta_SetupIdleAboveWater(EnBigokuta* this);
void EnBigokuta_IdleAboveWater(EnBigokuta* this, PlayState* play);
void EnBigokuta_SetupSuckInPlayer(EnBigokuta* this, PlayState* play);
void EnBigokuta_SuckInPlayer(EnBigokuta* this, PlayState* play);
void EnBigokuta_SetupHoldPlayer(EnBigokuta* this);
void EnBigokuta_HoldPlayer(EnBigokuta* this, PlayState* play);
void EnBigokuta_PlayDeathCutscene(EnBigokuta* this, PlayState* play);
void EnBigokuta_SetupDeathEffects(EnBigokuta* this);
void EnBigokuta_PlayDeathEffects(EnBigokuta* this, PlayState* play);

const ActorInit En_Bigokuta_InitVars = {
    ACTOR_EN_BIGOKUTA,
    ACTORCAT_BOSS,
    FLAGS,
    OBJECT_BIGOKUTA,
    sizeof(EnBigokuta),
    (ActorFunc)EnBigokuta_Init,
    (ActorFunc)EnBigokuta_Destroy,
    (ActorFunc)EnBigokuta_Update,
    (ActorFunc)EnBigokuta_Draw,
};

static ColliderCylinderInit sShellCylinderInit = {
    {
        COLTYPE_HARD,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xF7CFC74F, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_ON,
    },
    { 75, 125, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sBodyCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x000038B0, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 70, 125, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 4, 130, 120, MASS_HEAVY };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 2500, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_U8(targetMode, 2, ICHAIN_CONTINUE),
    ICHAIN_S8(hintId, 89, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 33, ICHAIN_STOP),
};

void EnBigokuta_Init(Actor* thisx, PlayState* play) {
    EnBigokuta* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_InitFlex(play, &this->skelAnime, &gBigOctoSkel, &gBigOctoIdleAnim, this->jointTable, this->morphTable,
                       BIGOKUTA_LIMB_MAX);

    Collider_InitAndSetCylinder(play, &this->shellCollider, &this->actor, &sShellCylinderInit);
    Collider_InitAndSetCylinder(play, &this->bodyCollider, &this->actor, &sBodyCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->cutscene = ActorCutscene_GetAdditionalCutscene(this->actor.cutscene);

    if (gSaveContext.save.weekEventReg[20] & 2 ||
        ((this->actor.params != 0xFF) && Flags_GetSwitch(play, this->actor.params))) {
        Actor_MarkForDeath(&this->actor);
    } else {
        this->actor.world.pos.y -= 99.0f;
        EnBigokuta_SetupIdle(this);
    }

    this->subCamAt.x = (Math_SinS(this->actor.home.rot.y) * 66.0f) + this->actor.world.pos.x;
    this->subCamAt.y = (this->actor.home.pos.y - 49.5f) + 42.899998f;
    this->subCamAt.z = (Math_CosS(this->actor.home.rot.y) * 66.0f) + this->actor.world.pos.z;

    this->unkFunc = func_80AC2B4C; // set but never called
}

void EnBigokuta_Destroy(Actor* thisx, PlayState* play) {
    EnBigokuta* this = THIS;

    Collider_DestroyCylinder(play, &this->shellCollider);
    Collider_DestroyCylinder(play, &this->bodyCollider);
}

void EnBigokuta_SetupCutsceneCamera(EnBigokuta* this, PlayState* play, Vec3f* subCamAt, Vec3f* subCamEye) {
    s16 angle;

    ActorCutscene_Start(this->actor.cutscene, &this->actor);
    this->subCamId = ActorCutscene_GetCurrentSubCamId(this->actor.cutscene);
    Play_SetCameraAtEye(play, this->subCamId, subCamAt, subCamEye);

    angle = BINANG_SUB(Actor_YawToPoint(&this->actor, subCamEye), this->actor.home.rot.y);
    if (angle > 0) {
        angle = BINANG_ADD(this->actor.home.rot.y, 0x1800);
    } else {
        angle = BINANG_SUB(this->actor.home.rot.y, 0x1800);
    }

    this->subCamEye.x = (Math_SinS(angle) * 250.0f) + this->subCamAt.x;
    this->subCamEye.y = this->subCamAt.y + 100.0f;
    this->subCamEye.z = (Math_CosS(angle) * 250.0f) + this->subCamAt.z;
}

void EnBigokuta_MoveCamera(EnBigokuta* this, PlayState* play) {
    Camera* subCam = Play_GetCamera(play, this->subCamId);

    Math_Vec3f_StepTo(&subCam->eye, &this->subCamEye, 20.0f);
    Math_Vec3f_StepTo(&subCam->at, &this->subCamAt, 20.0f);
    Play_SetCameraAtEye(play, this->subCamId, &subCam->at, &subCam->eye);
}

void EnBigokuta_ResetCamera(EnBigokuta* this, PlayState* play) {
    Camera* subCam;

    if (this->subCamId != SUB_CAM_ID_DONE) {
        subCam = Play_GetCamera(play, this->subCamId);
        Play_SetCameraAtEye(play, CAM_ID_MAIN, &subCam->at, &subCam->eye);
        this->subCamId = SUB_CAM_ID_DONE;
        ActorCutscene_Stop(this->actor.cutscene);
    }
}

void EnBigokuta_ShootPlayer(EnBigokuta* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (&this->actor == player->actor.parent) {
        player->actor.parent = NULL;
        player->unk_AE8 = 100;
        player->actor.velocity.y = 0.0f;
        player->actor.world.pos.x += 20.0f * Math_SinS(this->actor.home.rot.y);
        player->actor.world.pos.z += 20.0f * Math_CosS(this->actor.home.rot.y);
        func_800B8D50(play, &this->actor, 10.0f, this->actor.home.rot.y, 10.0f, 4);
    }
    EnBigokuta_ResetCamera(this, play);
}

void func_80AC2B4C(PlayState* play, EnBigokuta* this) {
    func_8013A530(play, &this->actor, 3, &this->actor.focus.pos, &this->actor.shape.rot, 280.0f, 1800.0f, -1);
}

s32 EnBigokuta_IsInWater(EnBigokuta* this, PlayState* play) {
    WaterBox* box;
    s32 bgId;

    this->actor.floorHeight =
        BgCheck_EntityRaycastFloor5(&play->colCtx, &this->actor.floorPoly, &bgId, &this->actor, &this->actor.world.pos);
    if (!WaterBox_GetSurface1_2(play, &play->colCtx, this->actor.world.pos.x, this->actor.world.pos.z,
                                &this->actor.home.pos.y, &box) ||
        (this->actor.home.pos.y <= this->actor.floorHeight)) {
        return false;
    } else {
        return true;
    }
}

void EnBigokuta_SpawnRipple(EnBigokuta* this, PlayState* play) {
    Vec3f ripplePos;

    ripplePos.x = this->actor.world.pos.x;
    ripplePos.y = this->actor.home.pos.y;
    ripplePos.z = this->actor.world.pos.z;
    EffectSsGRipple_Spawn(play, &ripplePos, 1000, 1400, 0);
}

void EnBigokuta_SetupIdle(EnBigokuta* this) {
    Animation_Change(&this->skelAnime, &gBigOctoIdleAnim, 0.5f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, -3.0f);
    this->actionFunc = EnBigokuta_Idle;
}

void EnBigokuta_Idle(EnBigokuta* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 99.0f, 2.5f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);
    if ((this->actor.xzDistToPlayer < 300.0f) && ((player->actor.world.pos.y - this->actor.home.pos.y) < 100.0f)) {
        EnBigokuta_SetupRise(this, play);
    }
}

void EnBigokuta_SetupRise(EnBigokuta* this, PlayState* play) {
    Vec3f splashPos;
    s32 i;
    s16 angle = 0;

    Animation_PlayOnce(&this->skelAnime, &gBigOctoRiseOutOfWaterAnim);
    splashPos.y = this->actor.home.pos.y;
    for (i = 0; i < 8; i++) {
        splashPos.x = Math_SinS(angle) * 70.0f + this->actor.world.pos.x;
        splashPos.z = Math_CosS(angle) * 70.0f + this->actor.world.pos.z;
        EffectSsGSplash_Spawn(play, &splashPos, NULL, NULL, 0, Rand_S16Offset(1000, 200));
        angle = BINANG_ADD(angle, 0x2000);
    }
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_DAIOCTA_LAND);
    this->actionFunc = EnBigokuta_RiseOutOfWater;
}

void EnBigokuta_RiseOutOfWater(EnBigokuta* this, PlayState* play) {
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 16.5f, 15.0f);
    if (SkelAnime_Update(&this->skelAnime)) {
        EnBigokuta_SetupIdleAboveWater(this);
    }
}

void EnBigokuta_SetupIdleAboveWater(EnBigokuta* this) {
    Animation_MorphToLoop(&this->skelAnime, &gBigOctoIdleAnim, -5.0f);
    this->actionFunc = EnBigokuta_IdleAboveWater;
}

void EnBigokuta_IdleAboveWater(EnBigokuta* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 16.5f, 2.5f);
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 5, 0x1000);

    if ((this->actor.xzDistToPlayer > 400.0f) || (this->actor.playerHeightRel > 200.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_DAIOCTA_SINK);
        EnBigokuta_SetupIdle(this);
    } else if ((this->actor.xzDistToPlayer < 200.0f) && play->grabPlayer(play, GET_PLAYER(play))) {
        EnBigokuta_SetupSuckInPlayer(this, play);
    }
}

void EnBigokuta_UpdateOrSetupCam(EnBigokuta* this, PlayState* play) {
    if (this->actor.cutscene != -1) {
        if (this->subCamId != SUB_CAM_ID_DONE) {
            EnBigokuta_MoveCamera(this, play);
        } else if (ActorCutscene_GetCanPlayNext(this->actor.cutscene)) {
            Camera* mainCam = Play_GetCamera(play, CAM_ID_MAIN);

            EnBigokuta_SetupCutsceneCamera(this, play, &mainCam->at, &mainCam->eye);
        } else {
            ActorCutscene_SetIntentToPlay(this->actor.cutscene);
        }
    }
}

void EnBigokuta_SetupSuckInPlayer(EnBigokuta* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    player->actor.parent = &this->actor;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    Math_Vec3f_Copy(&this->playerPos, &player->actor.world.pos);
    this->timer = 0;

    Animation_Change(&this->skelAnime, &gBigOctoIdleAnim, 1.0f, 12.0f, 12.0f, ANIMMODE_ONCE, -3.0f);
    ActorCutscene_SetIntentToPlay(this->actor.cutscene);

    this->playerHoldPos.x = (Math_SinS(this->actor.shape.rot.y) * 66.0f) + this->actor.world.pos.x;
    this->playerHoldPos.y = (this->actor.home.pos.y - 49.5f) + 42.899998f;
    this->playerHoldPos.z = (Math_CosS(this->actor.shape.rot.y) * 66.0f) + this->actor.world.pos.z;

    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_SLIME_DEAD);
    this->actionFunc = EnBigokuta_SuckInPlayer;
}

void EnBigokuta_SuckInPlayer(EnBigokuta* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    EnBigokuta_UpdateOrSetupCam(this, play);
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 49.5f, 10.0f);

    if (this->timer < 9) {
        this->timer++;
    }

    player->unk_AE8 = 0;
    Math_Vec3f_Copy(&player->actor.world.pos, &this->playerPos);
    if (Math_Vec3f_StepTo(&player->actor.world.pos, &this->playerHoldPos, sqrtf(this->timer) * 5.0f) < 0.1f) {
        s16 rotY = this->actor.shape.rot.y;

        if (Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.home.rot.y, 0x800)) {
            EnBigokuta_SetupHoldPlayer(this);
        }

        this->playerHoldPos.x = (Math_SinS(this->actor.shape.rot.y) * 66.0f) + this->actor.world.pos.x;
        this->playerHoldPos.y = (this->actor.home.pos.y - 49.5f) + 42.899998f;
        this->playerHoldPos.z = (Math_CosS(this->actor.shape.rot.y) * 66.0f) + this->actor.world.pos.z;

        Math_Vec3f_Copy(&player->actor.world.pos, &this->playerHoldPos);
        Math_Vec3f_Copy(&this->playerPos, &player->actor.world.pos);
        player->actor.shape.rot.y += BINANG_SUB(this->actor.shape.rot.y, rotY);
    } else {
        Math_Vec3f_Copy(&this->playerPos, &player->actor.world.pos);
        player->actor.velocity.y = 0.0f;
    }
}

void EnBigokuta_SetupHoldPlayer(EnBigokuta* this) {
    this->timer = 12;
    this->actionFunc = EnBigokuta_HoldPlayer;
}

void EnBigokuta_HoldPlayer(EnBigokuta* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    this->timer--;
    if (this->timer >= 0) {
        EnBigokuta_UpdateOrSetupCam(this, play);
        Math_Vec3f_Copy(&player->actor.world.pos, &this->playerHoldPos);

        if (this->timer == 0) {
            EnBigokuta_ShootPlayer(this, play);
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_DAIOCTA_REVERSE);
        }
    } else if (this->timer == -24) {
        EnBigokuta_SetupIdleAboveWater(this);
    }
}

void EnBigokuta_SetupDeathCutscene(EnBigokuta* this) {
    ActorCutscene_SetIntentToPlay(this->cutscene);
    this->timer = 0;
    this->bodyCollider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnBigokuta_PlayDeathCutscene;
}

void EnBigokuta_PlayDeathCutscene(EnBigokuta* this, PlayState* play) {
    Player* player;

    this->actor.colorFilterTimer = Animation_GetLastFrame(&gBigOctoDeathAnim);

    if (this->timer != 0) {
        this->timer--;
        if (this->timer == 0) {
            this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
            this->drawDmgEffAlpha = 0.0f;
            Actor_SpawnIceEffects(play, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos), 2, 0.5f, 0.35f);
            EnBigokuta_SetupDeathEffects(this);
        }
    } else if (ActorCutscene_GetCanPlayNext(this->cutscene)) {
        ActorCutscene_Start(this->cutscene, &this->actor);

        if (!(gSaveContext.eventInf[4] & 2) && !(gSaveContext.eventInf[3] & 0x20)) {
            func_800B724C(play, &this->actor, 7);
        } else {
            player = GET_PLAYER(play);
            player->stateFlags1 |= 0x20;
        }

        if (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX) {
            this->timer = 3;
        } else {
            EnBigokuta_SetupDeathEffects(this);
        }
    } else {
        ActorCutscene_SetIntentToPlay(this->cutscene);
    }
}

void EnBigokuta_SetupDeathEffects(EnBigokuta* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gBigOctoDeathAnim, -5.0f);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_DAIOCTA_DEAD2);
    this->actor.flags &= ~1;
    this->timer = 10;
    this->actionFunc = EnBigokuta_PlayDeathEffects;
}

void EnBigokuta_PlayDeathEffects(EnBigokuta* this, PlayState* play) {
    static Vec3f D_80AC45A4 = { 0.0f, -0.5f, 0.0f };
    static Color_RGBA8 D_80AC45B0 = { 255, 255, 255, 255 };
    static Color_RGBA8 D_80AC45B4 = { 100, 255, 255, 255 };
    static Color_RGBA8 D_80AC45B8 = { 150, 150, 150, 0 };

    if (SkelAnime_Update(&this->skelAnime)) {
        this->actor.world.pos.y -= 0.2f;

        if (this->timer > 0) {
            this->timer--;

            if (this->timer == 6) {
                Vec3f dustPos;

                dustPos.x = this->actor.world.pos.x;
                dustPos.y = this->actor.world.pos.y + 150.0f;
                dustPos.z = this->actor.world.pos.z;

                func_800B0DE0(play, &dustPos, &gZeroVec3f, &gZeroVec3f, &D_80AC45B0, &D_80AC45B4, 1200, 20);
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_OCTAROCK_DEAD2);
            }
        } else {
            this->actor.world.pos.y -= 0.2f;

            if (Math_StepToF(&this->actor.scale.y, 0.001f, 0.001f)) {
                s32 i;
                Vec3f bubbleVel;
                Vec3f bubblePos;

                SoundSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 50, NA_SE_EN_COMMON_WATER_MID);
                bubblePos.y = this->actor.world.pos.y;

                for (i = 0; i < 20; i++) {
                    bubbleVel.x = randPlusMinusPoint5Scaled(10.0f);
                    bubbleVel.y = Rand_ZeroFloat(5.5f) + 5.5f;
                    bubbleVel.z = randPlusMinusPoint5Scaled(10.0f);
                    bubblePos.x = this->actor.world.pos.x + (2.0f * bubbleVel.x);
                    bubblePos.z = this->actor.world.pos.z + (2.0f * bubbleVel.z);

                    EffectSsDtBubble_SpawnCustomColor(play, &bubblePos, &bubbleVel, &D_80AC45A4, &D_80AC45B0,
                                                      &D_80AC45B8, Rand_S16Offset(150, 50), 25, 0);
                }

                if (this->actor.params != 0xFF) {
                    Flags_SetSwitch(play, this->actor.params);
                }

                ActorCutscene_Stop(this->cutscene);
                Actor_MarkForDeath(&this->actor);

                if (!(gSaveContext.eventInf[4] & 2) && !(gSaveContext.eventInf[3] & 0x20)) {
                    func_800B724C(play, &this->actor, 6);
                } else {
                    Player* player = GET_PLAYER(play);

                    player->stateFlags1 &= ~0x20;
                }
            }

            if (this->drawDmgEffAlpha > 0.0f) {
                this->drawDmgEffAlpha = this->actor.scale.y * 30.30303f;
            }
        }
    } else {
        Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y - 16.5f, 15.0f);
    }
}

s32 EnBigokuta_IsNearSwampBoat(EnBigokuta* this, PlayState* play) {
    this->actor.child = SubS_FindActor(play, NULL, ACTORCAT_BG, ACTOR_BG_INGATE);

    if ((this->actor.child != NULL) && (Actor_XZDistanceBetweenActors(&this->actor, this->actor.child) < 250.0f)) {
        return true;
    } else {
        return false;
    }
}

void EnBigokuta_CheckOneHitKill(EnBigokuta* this, PlayState* play) {
    if ((this->bodyCollider.base.acFlags & AC_ON) &&
        ((this->bodyCollider.base.acFlags & AC_HIT) ||
         ((play->sceneNum == SCENE_20SICHITAI || play->sceneNum == SCENE_20SICHITAI2) &&
          EnBigokuta_IsNearSwampBoat(this, play)))) {
        Enemy_StartFinishingBlow(play, &this->actor);

        if (this->bodyCollider.base.acFlags & AC_HIT) {
            if (this->bodyCollider.info.acHitInfo->toucher.dmgFlags & 0x1000) { // Ice Arrow
                this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX;
                this->drawDmgEffScale = 1.2f;
                this->drawDmgEffFrozenSteamScale = 1.8000001f;
                this->drawDmgEffAlpha = 1.0f;
            } else if (this->bodyCollider.info.acHitInfo->toucher.dmgFlags & 0x2000) { // Light Arrow
                this->drawDmgEffType = ACTOR_DRAW_DMGEFF_LIGHT_ORBS;
                this->drawDmgEffScale = 1.2f;
                this->drawDmgEffAlpha = 4.0f;
                Actor_Spawn(&play->actorCtx, play, ACTOR_EN_CLEAR_TAG, this->bodyCollider.info.bumper.hitPos.x,
                            this->bodyCollider.info.bumper.hitPos.y, this->bodyCollider.info.bumper.hitPos.z, 0, 0, 0,
                            CLEAR_TAG_LARGE_LIGHT_RAYS);
            }
        }

        this->bodyCollider.base.acFlags &= ~AC_HIT;
        Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, Animation_GetLastFrame(&gBigOctoDeathAnim));
        EnBigokuta_ShootPlayer(this, play);
        EnBigokuta_SetupDeathCutscene(this);
    }
}

void EnBigokuta_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBigokuta* this = THIS;

    if (!EnBigokuta_IsInWater(this, play)) {
        Actor_MarkForDeath(&this->actor);
        return;
    }

    if (play->gameplayFrames % 7 == 0) {
        EnBigokuta_SpawnRipple(this, play);
    }

    EnBigokuta_CheckOneHitKill(this, play);
    this->actionFunc(this, play);

    if ((this->bodyCollider.base.acFlags & AC_ON)) {
        this->shellCollider.dim.pos.x = Math_SinS(this->actor.shape.rot.y) * -20.0f + this->actor.world.pos.x;
        this->shellCollider.dim.pos.y = this->actor.world.pos.y;
        this->shellCollider.dim.pos.z = Math_CosS(this->actor.shape.rot.y) * -20.0f + this->actor.world.pos.z;

        this->bodyCollider.dim.pos.x = this->shellCollider.dim.pos.x;
        this->bodyCollider.dim.pos.y = this->shellCollider.dim.pos.y;
        this->bodyCollider.dim.pos.z = this->shellCollider.dim.pos.z;

        CollisionCheck_SetAC(play, &play->colChkCtx, &this->bodyCollider.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->shellCollider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->shellCollider.base);
        Actor_SetFocus(&this->actor, 82.5f);
    }

    if (this->drawDmgEffAlpha > 0.0f) {
        if (this->drawDmgEffType != ACTOR_DRAW_DMGEFF_FROZEN_NO_SFX) {
            Math_StepToF(&this->drawDmgEffAlpha, 0.0f, 0.05f);
            this->drawDmgEffScale = (this->drawDmgEffAlpha + 1.0f) * 0.6f;
            this->drawDmgEffScale = CLAMP_MAX(this->drawDmgEffScale, 1.2f);
        } else if (!Math_StepToF(&this->drawDmgEffFrozenSteamScale, 1.2f, 0.030000001f)) {
            func_800B9010(&this->actor, NA_SE_EV_ICE_FREEZE - SFX_FLAG);
        }
    }
}

s32 EnBigokuta_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                                Gfx** gfx) {
    if (limbIndex == BIGOKUTA_LIMB_HEAD) {
        EnBigokuta* this = THIS;
        s32 envColor;
        s16 rotX;
        f32 lastFrame;

        if (this->actionFunc == EnBigokuta_PlayDeathEffects) {
            lastFrame = Animation_GetLastFrame(&gBigOctoDeathAnim);
            envColor = ((255.0f / lastFrame) * (lastFrame - this->skelAnime.curFrame));
        } else {
            envColor = 255;
        }
        gDPPipeSync((*gfx)++);
        gDPSetEnvColor((*gfx)++, envColor, envColor, envColor, envColor);

        if (this->actionFunc == EnBigokuta_SuckInPlayer) {
            rotX = (s16)(this->timer * 6144.0f * (1 / 9.0f));
            rot->x -= rotX;
        } else if (this->actionFunc == EnBigokuta_HoldPlayer) {
            if (this->timer == 1) {
                rotX = 0;
            } else if (this->timer == 0) {
                rotX = -0xC00;
            } else if (this->timer > 0) {
                rotX = 0x1800;
            } else {
                rotX = ((this->timer + 0x18) * 0.041666668f * -6144.0f);
            }
            rot->x -= rotX;
        }
    } else if (limbIndex == BIGOKUTA_LIMB_CENTER_SNOUT) {
        EnBigokuta* this = THIS;

        if (this->actionFunc == EnBigokuta_PlayDeathEffects) {
            if (this->timer < 5) {
                Matrix_Scale(1.0f, 1.0f, (this->timer * 0.2f * 0.25f) + 1.0f, MTXMODE_APPLY);
            } else if (this->timer < 8) {
                f32 time = (this->timer - 5) * (1 / 12.0f);

                Matrix_Scale(1.0f + time, 1.0f + time, 1.25f - time, MTXMODE_APPLY);
            } else {
                Matrix_Scale(1.25f - ((this->timer - 8) * 0.125f), 1.25f - ((this->timer - 8) * 0.125f), 1.0f,
                             MTXMODE_APPLY);
            }
        } else if (this->actionFunc == EnBigokuta_SuckInPlayer) {
            f32 sin = sin_rad(this->timer * (M_PI / 3.0f)) * 0.5f;

            Matrix_Scale(((this->timer * (2 / 90.0f)) * (0.5f + sin)) + 1.0f,
                         ((this->timer * (2 / 90.0f)) * (0.5f - sin)) + 1.0f, 1.0f - ((this->timer * 0.3f) / 9.0f),
                         MTXMODE_APPLY);
        } else if (this->actionFunc == EnBigokuta_HoldPlayer && this->timer != 1) {
            if (this->timer == 0) {
                Matrix_Scale(0.9f, 0.9f, 1.15f, MTXMODE_APPLY);
            } else if (this->timer > 0) {
                f32 sin = sin_rad(this->timer * (M_PI / 3.0f)) * 0.5f;

                Matrix_Scale(((0.5f + sin) * 0.2f) + 1.0f, ((0.5f - sin) * 0.2f) + 1.0f, 0.7f, MTXMODE_APPLY);
            } else {
                Matrix_Scale(1.0f - ((this->timer + 0x18) * 0.2f * 0.041666668f),
                             1.0f - ((this->timer + 0x18) * 0.2f * 0.041666668f),
                             ((this->timer + 0x18) * 0.3f * 0.041666668f) + 1.0f, MTXMODE_APPLY);
            }
        }
    }
    return false;
}

void EnBigokuta_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    static s8 D_80AC45BC[] = {
        -1, -1, -1, 0, -1, 1, -1, 2, -1, 3, 8, 4, -1, 5, -1, -1, -1, -1, 6, 7,
    };
    static Vec3f D_80AC45D0[] = {
        { 0.0f, 2000.0f, 1000.0f },    { 0.0f, 2000.0f, -2000.0f }, { 1700.0f, 700.0f, -600.0f },
        { -1700.0f, 700.0f, -600.0f }, { 0.0f, 500.0f, -2500.0f },
    };
    EnBigokuta* this = THIS;
    s32 i;
    s8 limbPosIndex = D_80AC45BC[limbIndex];

    if (limbPosIndex != -1) {
        if (limbPosIndex < 6) {
            Matrix_MultVecX(800.0f, &this->limbPos[limbPosIndex]);
        } else if (limbPosIndex < 8) {
            Matrix_MultZero(&this->limbPos[limbPosIndex]);
        } else {
            for (i = 0; i < ARRAY_COUNT(D_80AC45D0); i++) {
                Matrix_MultVec3f(&D_80AC45D0[i], &this->limbPos[limbPosIndex + i]);
            }
        }
    }
}

void EnBigokuta_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    EnBigokuta* this = THIS;
    Gfx* gfx;

    OPEN_DISPS(play->state.gfxCtx);
    if ((this->actionFunc != EnBigokuta_PlayDeathEffects) || (this->timer != 0)) {
        Scene_SetRenderModeXlu(play, 0, 1);
        gfx = POLY_OPA_DISP;
        gSPDisplayList(&gfx[0], &sSetupDL[6 * 25]);
        gDPSetEnvColor(&gfx[1], 255, 255, 255, 255);
        POLY_OPA_DISP =
            SkelAnime_DrawFlex(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                               EnBigokuta_OverrideLimbDraw, EnBigokuta_PostLimbDraw, &this->actor, &gfx[2]);
    } else {
        Scene_SetRenderModeXlu(play, 1, 2);
        gfx = POLY_XLU_DISP;
        gSPDisplayList(&gfx[0], &sSetupDL[6 * 25]);
        gDPSetEnvColor(&gfx[1], 0, 0, 0, (this->actor.scale.y * 7727.273f));
        POLY_XLU_DISP =
            SkelAnime_DrawFlex(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                               NULL, EnBigokuta_PostLimbDraw, &this->actor, &gfx[2]);
    }

    Actor_DrawDamageEffects(play, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos), this->drawDmgEffScale,
                            this->drawDmgEffFrozenSteamScale, this->drawDmgEffAlpha, this->drawDmgEffType);

    CLOSE_DISPS(play->state.gfxCtx);
}
