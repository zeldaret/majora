/*
 * File: z_en_po_sisters.c
 * Overlay: ovl_En_Po_Sisters
 * Description: Poe Sisters
 */

#include "z_en_po_sisters.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_10 | ACTOR_FLAG_1000 | ACTOR_FLAG_4000)

#define THIS ((EnPoSisters*)thisx)

void EnPoSisters_Init(Actor* thisx, PlayState* play);
void EnPoSisters_Destroy(Actor* thisx, PlayState* play);
void EnPoSisters_Update(Actor* thisx, PlayState* play);
void EnPoSisters_Draw(Actor* thisx, PlayState* play);

void EnPoSisters_SetupObserverIdle(EnPoSisters* this);
void EnPoSisters_ObserverIdle(EnPoSisters* this, PlayState* play);
void func_80B1ABB8(EnPoSisters* this, PlayState* play);
void func_80B1AC40(EnPoSisters* this);
void func_80B1ACB8(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupIdleFlying(EnPoSisters* this);
void EnPoSisters_IdleFlying(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupSpinUp(EnPoSisters* this);
void EnPoSisters_SpinUp(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupSpinAttack(EnPoSisters* this);
void EnPoSisters_SpinAttack(EnPoSisters* this, PlayState* play);
void EnPoSisters_AttackConnectDrift(EnPoSisters* this, PlayState* play);
void EnPoSisters_DamageFlinch(EnPoSisters* this, PlayState* play);
void func_80B1B5B4(EnPoSisters* this);
void func_80B1B628(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupSpinToInvis(EnPoSisters* this);
void EnPoSisters_SpinToInvis(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupSpinBack(EnPoSisters* this, PlayState* play);
void EnPoSisters_SpinBack(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupDeathStage1(EnPoSisters* this);
void EnPoSisters_DeathStage1(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupDeathStage2(EnPoSisters* this, PlayState* play);
void EnPoSisters_DeathStage2(EnPoSisters* this, PlayState* play);
void EnPoSisters_SpawnMegClones(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegCloneVanish(EnPoSisters* this, PlayState* play);
void EnPoSisters_MegCloneWaitForSpinBack(EnPoSisters* this, PlayState* play);
void EnPoSisters_SetupMegSurroundPlayer(EnPoSisters* this);
void EnPoSisters_MegSurroundPlayer(EnPoSisters* this, PlayState* play);
void func_80B1C2E8(EnPoSisters* this);
void func_80B1C340(EnPoSisters* this, PlayState* play);

static Color_RGBA8 sPoSisterFlameColors[] = {
    { 255, 170, 255, 255 }, // meg
    { 255, 200, 0, 255 },   // jo
    { 0, 170, 255, 255 },   // beth
    { 170, 255, 0, 255 },   // amy
};

static Color_RGBA8 sPoSisterEnvColors[] = {
    { 100, 0, 255, 255 }, // meg
    { 255, 0, 0, 255 },   // jo
    { 0, 0, 255, 255 },   // beth
    { 0, 150, 0, 255 },   // amy
};

const ActorInit En_Po_Sisters_InitVars = {
    ACTOR_EN_PO_SISTERS,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(EnPoSisters),
    (ActorFunc)EnPoSisters_Init,
    (ActorFunc)EnPoSisters_Destroy,
    (ActorFunc)EnPoSisters_Update,
    (ActorFunc)EnPoSisters_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT3,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xF7CFFFFF, 0x00, 0x08 },
        { 0xF7CBFFFE, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 18, 60, 15, { 0, 0, 0 } },
};

// health:6, mass:50
static CollisionCheckInfoInit sColChkInfoInit = { 6, 25, 60, 50 };

static DamageTable sDamageTable = {
    /* Deku Nut       */ DMG_ENTRY(0, 0xF),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(1, 0x0),
    /* Goron punch    */ DMG_ENTRY(1, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(0, 0x0),
    /* Fire arrow     */ DMG_ENTRY(1, 0x0),
    /* Ice arrow      */ DMG_ENTRY(1, 0x0),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(1, 0x0),
    /* Deku bubble    */ DMG_ENTRY(1, 0x0),
    /* Deku launch    */ DMG_ENTRY(2, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x1),
    /* Zora barrier   */ DMG_ENTRY(0, 0x0),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0x0),
    /* Zora punch     */ DMG_ENTRY(1, 0x0),
    /* Spin attack    */ DMG_ENTRY(1, 0xE),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0x0),
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 7, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 6000, ICHAIN_STOP),
};

// clang-format off
// PoSisters have their own flags variable for cross function behavior detection
#define PO_SISTER_FLAG_CLEAR                 (0)
#define PO_SISTER_FLAG_CHECK_AC              (1 << 0)
#define PO_SISTER_FLAG_UPDATE_SHAPE_ROT      (1 << 1)
#define PO_SISTER_FLAG_CHECK_Z_TARGET        (1 << 2) // meg doesnt go invis if you ztarget her for too long
#define PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT   (1 << 3)
#define PO_SISTER_FLAG_UPDATE_BGCHECK_INFO   (1 << 4)
#define PO_SISTER_FLAG_UPDATE_FIRES          (1 << 5)
#define PO_SISTER_FLAG_REAL_MEG_ROTATION     (1 << 6) // real meg rotates different than her clones for one cycle
#define PO_SISTER_FLAG_DRAW_TORCH            (1 << 7)
// clang-format on

void EnPoSisters_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnPoSisters* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 50.0f);
    SkelAnime_Init(play, &this->skelAnime, &gPoSistersSkeleton, &gPoeSistersSwayAnim,
                   this->jointTable, this->morphTable, PO_SISTERS_LIMB_MAX);

    this->color.r = 255;
    this->color.g = 255;
    this->color.b = 210;
    this->color.a = 255;
    this->lightNode = LightContext_InsertLight(play, &play->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.home.pos.x, this->actor.home.pos.y, this->actor.home.pos.z, 0,
                            0, 0, 0);

    Collider_InitAndSetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->type = ENPOSISTERS_GET_TYPE(thisx);
    this->actor.hintId = this->type + 80;
    this->megCloneId = ENPOSISTERS_GET_MEG_CLONE(thisx);
    this->floatingBobbingTimer = 32;
    this->zTargetTimer = 20;
    this->fireCount = 1;
    this->poSisterFlags = PO_SISTER_FLAG_UPDATE_FIRES;
    this->megDistToPlayer = 110.0f;
    thisx->flags &= ~ACTOR_FLAG_1;

    if (ENPOSISTERS_GET_OBSERVER_FLAG(&this->actor)) {
        // if flagged observer, they are a floating prop spawned by EnGb2 (po hut proprieter)
        EnPoSisters_SetupObserverIdle(this);
    } else if (this->type == POSISTER_TYPE_MEG) {
        if (this->megCloneId == REALMEG) {
            this->actor.colChkInfo.health = 8;
            this->collider.info.toucher.damage = 16;
            this->collider.base.ocFlags1 = (OC1_TYPE_PLAYER | OC1_ON);
            EnPoSisters_SpawnMegClones(this, play);
            func_80B1C2E8(this);
        } else {
            this->actor.flags &= ~(ACTOR_FLAG_200 | ACTOR_FLAG_4000);
            this->collider.info.elemType = ELEMTYPE_UNK4;
            this->collider.info.bumper.dmgFlags |= (0x40000 | 0x1);
            this->collider.base.ocFlags1 = OC1_NONE;
            EnPoSisters_MegCloneVanish(this, NULL);
        }
    } else {
        func_80B1C2E8(this);
    }
    this->actor.params &= 0xFF;
}

void EnPoSisters_Destroy(Actor* thisx, PlayState* play) {
    EnPoSisters* this = THIS;

    LightContext_RemoveLight(play, &play->lightCtx, this->lightNode);
    Collider_DestroyCylinder(play, &this->collider);
}

// update the fires as they spread away from the dying poe I think
// only used once, arg2 "pos" is this->deathTimer
// some stupid shit, it takes timer as a param, and uses param from itself anyway, both at the same time
void func_80B1A648(EnPoSisters* this, s32 timer, Vec3f* pos) {
    s32 i;
    Vec3f* ptr;
    f32 timerf = timer;

    for (i = 0; i < this->fireCount; i++) {
        ptr = &this->firePos[i];
        ptr->x = Math_SinS(this->actor.shape.rot.y + (this->deathTimer * 0x800) + (i * 0x2000)) * (SQ(timerf) * 0.1f) +
                 pos->x;
        ptr->z = Math_CosS(this->actor.shape.rot.y + (this->deathTimer * 0x800) + (i * 0x2000)) * (SQ(timerf) * 0.1f) +
                 pos->z;
        ptr->y = pos->y + timerf;
    }
}

void EnPoSisters_MatchPlayerXZ(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 dist;

    if (this->megCloneId == REALMEG || this->actionFunc != EnPoSisters_DamageFlinch) {
        if ((player->swordState == 0 || player->swordAnimation >= 30) &&
            ((player->actor.world.pos.y - player->actor.floorHeight) < 1.0f)) {
            Math_StepToF(&this->megDistToPlayer, 110.0f, 3.0f);
        } else {
            Math_StepToF(&this->megDistToPlayer, 170.0f, 10.0f);
        }
        dist = this->megDistToPlayer;
    } else if (this->megCloneId != REALMEG) {
        dist = this->actor.parent->xzDistToPlayer;
    }

    this->actor.world.pos.x = (Math_SinS(BINANG_ROT180(this->actor.shape.rot.y)) * dist) + player->actor.world.pos.x;
    this->actor.world.pos.z = (Math_CosS(BINANG_ROT180(this->actor.shape.rot.y)) * dist) + player->actor.world.pos.z;
}

void EnPoSisters_MatchPlayerY(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    // equalize to player height
    Math_ApproachF(&this->actor.world.pos.y, player->actor.world.pos.y + 5.0f, 0.5f, 3.0f);

    if (this->floatingBobbingTimer == 0) {
        this->floatingBobbingTimer = 32;
        if (this->floatingBobbingTimer) {}
    }

    DECR(this->floatingBobbingTimer);

    // random float/flying wobble
    this->actor.world.pos.y += (2.0f + (0.5f * Rand_ZeroOne())) * Math_SinS(this->floatingBobbingTimer * 0x800);

    // fully opaque
    if (this->color.a == 255 && this->actionFunc != EnPoSisters_SpinAttack && this->actionFunc != EnPoSisters_SpinUp) {
        if (this->actionFunc == func_80B1B628) {
            func_800B9010(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
        } else {
            func_800B9010(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
        }
    }
}

// check for z target
void EnPoSisters_CheckZTarget(EnPoSisters* this, PlayState* play) {
    if (this->actor.isTargeted && (this->color.a == 255)) {
        DECR(this->zTargetTimer);
    } else {
        this->zTargetTimer = 20;
    }

    if (this->color.a == 0) {
        DECR(this->inivisTimer);
    }

    if ((this->actionFunc != EnPoSisters_SpinUp) && (this->actionFunc != EnPoSisters_SpinAttack) &&
        (this->actionFunc != EnPoSisters_DamageFlinch)) {
        if (this->zTargetTimer == 0) {
            EnPoSisters_SetupSpinToInvis(this);
        } else if ((this->inivisTimer == 0) && (this->color.a == 0)) {
            EnPoSisters_SetupSpinBack(this, play);
        }
    }
}

void EnPoSisters_SetupObserverIdle(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersSwayAnim, -3.0f);
    this->actor.speedXZ = 0.0f;
    this->laughTimer = Rand_S16Offset(100, 50);
    this->actionFunc = EnPoSisters_ObserverIdle;
}

void EnPoSisters_ObserverIdle(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (DECR(this->laughTimer) == 0) {
        this->laughTimer = Rand_S16Offset(100, 50);
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_LAUGH2);
    }
}

// does not go off in red
void func_80B1AB5C(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersSwayAnim, -3.0f);
    this->stateTimer = Rand_S16Offset(2, 3);
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80B1ABB8;
}

// does not go off in red
void func_80B1ABB8(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        DECR(this->stateTimer);
    }

    if ((this->stateTimer == 0) || (this->actor.xzDistToPlayer < 600.0f)) {
        func_80B1AC40(this);
    }
}

// goes off once after rolling attack
void func_80B1AC40(EnPoSisters* this) {
    if (this->actionFunc != EnPoSisters_IdleFlying) {
        Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    }
    this->stateTimer = Rand_S16Offset(15, 3);
    this->poSisterFlags |= (PO_SISTER_FLAG_CHECK_Z_TARGET | PO_SISTER_FLAG_UPDATE_SHAPE_ROT | PO_SISTER_FLAG_CHECK_AC);
    this->actionFunc = func_80B1ACB8;
}

// sometimes goes off once behind the above
void func_80B1ACB8(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_StepToF(&this->actor.speedXZ, 1.0f, 0.2f);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        DECR(this->stateTimer);
    }

    if ((this->actor.xzDistToPlayer < 600.0f) && (fabsf(this->actor.playerHeightRel + 5.0f) < 30.0f)) {
        EnPoSisters_SetupIdleFlying(this);
    } else if ((this->stateTimer == 0) && Math_StepToF(&this->actor.speedXZ, 0.0f, 0.2f)) {
        func_80B1AB5C(this);
    }

    if (this->actor.bgCheckFlags & 8) {
        Math_ScaledStepToS(&this->actor.world.rot.y, Actor_YawToPoint(&this->actor, &this->actor.home.pos), 0x71C);
    } else if (Actor_XZDistanceToPoint(&this->actor, &this->actor.home.pos) > 600.0f) {
        Math_ScaledStepToS(&this->actor.world.rot.y, Actor_YawToPoint(&this->actor, &this->actor.home.pos), 0x71C);
    }
}

void EnPoSisters_SetupIdleFlying(EnPoSisters* this) {
    this->actionFunc = EnPoSisters_IdleFlying;
}

void EnPoSisters_IdleFlying(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime);
    yawDiff = this->actor.yawTowardsPlayer - player->actor.shape.rot.y;
    Math_StepToF(&this->actor.speedXZ, 2.0f, 0.2f);

    if (yawDiff > 0x3000) {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer + 0x3000, 0x71C);
    } else if (yawDiff < -0x3000) {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer - 0x3000, 0x71C);
    } else {
        Math_ScaledStepToS(&this->actor.world.rot.y, this->actor.yawTowardsPlayer, 0x71C);
    }

    if ((this->actor.xzDistToPlayer < 320.0f) && (fabsf(this->actor.playerHeightRel + 5.0f) < 30.0f)) {
        EnPoSisters_SetupSpinUp(this);
    } else if (this->actor.xzDistToPlayer > 720.0f) {
        func_80B1AC40(this);
    }
}

// EnPoSisters_SetupSpinUp
void EnPoSisters_SetupSpinUp(EnPoSisters* this) {
    if (this->color.a != 0) {
        this->collider.base.colType = COLTYPE_METAL;
        this->collider.base.acFlags |= AC_HARD;
    }

    Animation_MorphToLoop(&this->skelAnime, &gPoSistersAttackAnim, -5.0f);
    this->actor.speedXZ = 0.0f;
    this->spinupTimer = Animation_GetLastFrame(&gPoSistersAttackAnim.common) * 3 + 3;
    this->poSisterFlags &= ~PO_SISTER_FLAG_UPDATE_SHAPE_ROT;
    this->actionFunc = EnPoSisters_SpinUp;
}

// EnPoSisters_SpinUp
// gaining speed for spin attack
void EnPoSisters_SpinUp(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    DECR(this->spinupTimer);
    this->actor.shape.rot.y += ((s32)((this->skelAnime.endFrame + 1.0f) * 3.0f) - this->spinupTimer) * 0x180;
    if ((this->spinupTimer == 18) || (this->spinupTimer == 7)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_ROLL);
    } else if (this->spinupTimer == 0) {
        EnPoSisters_SetupSpinAttack(this);
    }
}

// setup spin dive
void EnPoSisters_SetupSpinAttack(EnPoSisters* this) {
    this->actor.speedXZ = 5.0f;
    if (this->type == POSISTER_TYPE_MEG) {
        this->collider.base.colType = COLTYPE_METAL;
        this->collider.base.acFlags |= AC_HARD;
        Animation_MorphToLoop(&this->skelAnime, &gPoSistersAttackAnim, -5.0f);
    }

    this->spinTimer = 5;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    this->poSisterFlags |= PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT;
    this->actionFunc = EnPoSisters_SpinAttack;
}

// spin attack dive at player
void EnPoSisters_SpinAttack(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        DECR(this->spinTimer);
    }

    this->actor.shape.rot.y += (s32)(1152.0f * this->skelAnime.endFrame);

    if (this->spinTimer == 0) {
        s16 rotY = this->actor.shape.rot.y - this->actor.world.rot.y;

        if (ABS_ALT(rotY) < 0x1000) {
            if (this->type != POSISTER_TYPE_MEG) {
                this->collider.base.colType = COLTYPE_HIT3;
                this->collider.base.acFlags &= ~AC_HARD;
                func_80B1AC40(this);
            } else {
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_LAUGH2);
                EnPoSisters_MegCloneVanish(this, play);
            }
        }
    }

    if (Animation_OnFrame(&this->skelAnime, 1.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_ROLL);
    }
}

void EnPoSisters_SetupAttackConnect(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->actor.world.rot.y = BINANG_ROT180(this->actor.yawTowardsPlayer);
    if (this->type != POSISTER_TYPE_MEG) {
        this->collider.base.colType = COLTYPE_HIT3;
        this->collider.base.acFlags &= ~AC_HARD;
    }

    this->actionFunc = EnPoSisters_AttackConnectDrift;
}

void EnPoSisters_AttackConnectDrift(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y -= (s16)(this->actor.speedXZ * 10.0f * 128.0f);

    if (Math_StepToF(&this->actor.speedXZ, 0.0f, 0.1f)) { // wait to stop moving
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (this->type != POSISTER_TYPE_MEG) {
            func_80B1AC40(this);
        } else {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_LAUGH2);
            EnPoSisters_MegCloneVanish(this, play);
        }
    }
}

void EnPoSisters_SetupDamageFlinch(EnPoSisters* this) {
    Animation_MorphToPlayOnce(&this->skelAnime, &gPoeSistersDamagedAnim, -3.0f);
    if (this->collider.base.ac != NULL) {
        func_800BE504(&this->actor, &this->collider); // ?
    }

    if (this->type != POSISTER_TYPE_MEG) {
        this->actor.speedXZ = 10.0f;
    }

    this->poSisterFlags &=
        ~(PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT | PO_SISTER_FLAG_UPDATE_SHAPE_ROT | PO_SISTER_FLAG_CHECK_AC);
    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 16);
    this->actionFunc = EnPoSisters_DamageFlinch;
}

void EnPoSisters_DamageFlinch(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime) && !(this->actor.flags & ACTOR_FLAG_8000)) {
        if (this->actor.colChkInfo.health != 0) {
            if (this->type != POSISTER_TYPE_MEG) {
                func_80B1B5B4(this);
            } else if (this->megCloneId != REALMEG) {
                EnPoSisters_MegCloneVanish(this, NULL);
            } else {
                EnPoSisters_MegCloneVanish(this, play);
            }
        } else {
            EnPoSisters_SetupDeathStage1(this);
        }
    }

    if (this->megCloneId != REALMEG) {
        s32 alpha;
        Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.parent->shape.rot.y,
                           (this->megCloneId == 2) ? 0x800 : 0x400);
        alpha = ((this->skelAnime.endFrame - this->skelAnime.curFrame) * 255.0f) / this->skelAnime.endFrame;
        this->color.a = CLAMP(alpha, 0, 255);
        this->actor.world.pos.y = this->actor.parent->world.pos.y;
        EnPoSisters_MatchPlayerXZ(this, play);

    } else if (this->type != POSISTER_TYPE_MEG) {
        Math_StepToF(&this->actor.speedXZ, 0.0f, 0.5f);
    }
}

// still alive, after flinch
void func_80B1B5B4(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoSistersFleeAnim, -3.0f);
    this->actor.world.rot.y = BINANG_ROT180(this->actor.shape.rot.y);
    this->flinchTimer = 5;
    this->poSisterFlags |=
        (PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT | PO_SISTER_FLAG_UPDATE_SHAPE_ROT | PO_SISTER_FLAG_CHECK_AC);
    this->actor.speedXZ = 5.0f;
    this->actionFunc = func_80B1B628;
}

// post flinch shake? a few frames of shock
void func_80B1B628(EnPoSisters* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Math_ScaledStepToS(&this->actor.world.rot.y, BINANG_ROT180(this->actor.yawTowardsPlayer), 0x71C);
    if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
        DECR(this->flinchTimer);
    }

    if (this->actor.bgCheckFlags & 8) { // touching a wall
        this->actor.world.rot.y = this->actor.shape.rot.y;
        this->poSisterFlags |= PO_SISTER_FLAG_UPDATE_SHAPE_ROT;
        EnPoSisters_SetupSpinToInvis(this);
    } else if (this->flinchTimer == 0 && this->actor.xzDistToPlayer > 480.0f) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        func_80B1AC40(this);
    }
}

void EnPoSisters_SetupSpinToInvis(EnPoSisters* this) {
    Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 1.5f, 0.0f,
                     Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim.common), 2, -3.0f);
    this->inivisTimer = 100;
    this->actor.speedXZ = 0.0f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->poSisterFlags &= ~(PO_SISTER_FLAG_CHECK_Z_TARGET | PO_SISTER_FLAG_CHECK_AC);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_LAUGH2);
    this->actionFunc = EnPoSisters_SpinToInvis;
}

void EnPoSisters_SpinToInvis(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->color.a = 0;
        this->collider.info.bumper.dmgFlags = (0x40000 | 0x1);
        func_80B1AC40(this);
    } else {
        s32 alpha = ((this->skelAnime.endFrame - this->skelAnime.curFrame) * 255.0f) / this->skelAnime.endFrame;
        this->color.a = CLAMP(alpha, 0, 255);
    }
}

// spinning back to visible
// TODO rename to something better
void EnPoSisters_SetupSpinBack(EnPoSisters* this, PlayState* play) {
    Animation_Change(&this->skelAnime, &gPoeSistersAppearDisappearAnim, 1.5f, 0.0f,
                     Animation_GetLastFrame(&gPoeSistersAppearDisappearAnim.common), 2, -3.0f);
    if (this->type == POSISTER_TYPE_MEG) {
        this->megDistToPlayer = 110.0f;
        EnPoSisters_MatchPlayerXZ(this, play);
        this->color.a = 0;
        this->actor.draw = EnPoSisters_Draw;
    } else {
        this->actor.world.rot.y = this->actor.shape.rot.y;
    }

    this->spinInvisibleTimer = 15;
    this->actor.speedXZ = 0.0f;
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_STALKIDS_APPEAR);
    this->poSisterFlags &= ~PO_SISTER_FLAG_CHECK_AC;
    this->actionFunc = EnPoSisters_SpinBack;
}

void EnPoSisters_SpinBack(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->color.a = 255; // fully visible
        if (this->type != POSISTER_TYPE_MEG) {
            this->poSisterFlags |= PO_SISTER_FLAG_CHECK_AC;
            this->collider.info.bumper.dmgFlags = ~(0x8000000 | 0x200000 | 0x100000 | 0x40000 | 0x1);

            DECR(this->spinInvisibleTimer);

            if (this->spinInvisibleTimer == 0) {
                this->zTargetTimer = 20;
                func_80B1AC40(this);
            }
        } else {
            EnPoSisters_SetupMegSurroundPlayer(this);
        }
    } else {
        s32 alpha = (this->skelAnime.curFrame * 255.0f) / this->skelAnime.endFrame;

        this->color.a = CLAMP(alpha, 0, 255);
        if (this->type == POSISTER_TYPE_MEG) {
            EnPoSisters_MatchPlayerXZ(this, play);
        }
    }
}

void EnPoSisters_SetupDeathStage1(EnPoSisters* this) {
    this->deathTimer = 0;
    this->actor.speedXZ = 0.0f;
    this->actor.world.pos.y += 42.0f;
    this->actor.shape.yOffset = -6000.0f;
    this->actor.flags &= ~ACTOR_FLAG_1;
    this->poSisterFlags = PO_SISTER_FLAG_CLEAR;
    this->actionFunc = EnPoSisters_DeathStage1;
}

// first half, stunned
void EnPoSisters_DeathStage1(EnPoSisters* this, PlayState* play) {
    s32 i;
    s32 end = this->fireCount;

    this->deathTimer++;
    end++;
    if (end > ARRAY_COUNT(this->firePos)) {
        this->fireCount = 8;
    } else {
        this->fireCount = end;
    }

    for (end = this->fireCount - 1; end > 0; end--) {
        this->firePos[end] = this->firePos[end - 1];
    }

    this->firePos[0].x = (Math_SinS((this->actor.shape.rot.y + (this->deathTimer * 0x3000)) - 0x4000) *
                          (3000.0f * this->actor.scale.x)) +
                         this->actor.world.pos.x;
    this->firePos[0].z = (Math_CosS((this->actor.shape.rot.y + (this->deathTimer * 0x3000)) - 0x4000) *
                          (3000.0f * this->actor.scale.x)) +
                         this->actor.world.pos.z;

    if (this->deathTimer < 8) {
        this->firePos[0].y = this->firePos[1].y - 9.0f;
    } else {
        this->firePos[0].y = this->firePos[1].y + 2.0f;
        if (this->deathTimer >= 16) {
            if (Math_StepToF(&this->actor.scale.x, 0.0f, 0.001f)) {
                EnPoSisters_SetupDeathStage2(this, play);
            }
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }

    if (this->deathTimer == 16) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_WIZ_DISAPPEAR);
    }
}

// fading away, the fire has split and circles outward and away
void EnPoSisters_SetupDeathStage2(EnPoSisters* this, PlayState* play) {
    this->deathTimer = 0;
    this->actor.world.pos.y = this->firePos[0].y;
    Item_DropCollectibleRandom(play, &this->actor, &this->actor.world.pos, (0x8 << 4)); // drop table 8
    this->actionFunc = EnPoSisters_DeathStage2;
}

// might be where meg never dissapears, she might start with deathTimer > 32
void EnPoSisters_DeathStage2(EnPoSisters* this, PlayState* play) {
    this->deathTimer++;

    if (this->deathTimer == 32) { // waiting for death animation to finish
        Actor_MarkForDeath(&this->actor);
    } else {
        func_80B1A648(this, this->deathTimer, &this->actor.world.pos);
    }
}

void EnPoSisters_SpawnMegClones(EnPoSisters* this, PlayState* play) {
    Actor* clone1 =
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,
                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0x400);
    Actor* clone2 =
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,
                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0x800);
    Actor* clone3 =
        Actor_SpawnAsChild(&play->actorCtx, &this->actor, play, ACTOR_EN_PO_SISTERS, this->actor.world.pos.x,
                           this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, 0xC00);

    // if we cannot spawn all clones, abort
    if ((clone1 == NULL) || (clone2 == NULL) || (clone3 == NULL)) {
        if (clone1 != NULL) {
            Actor_MarkForDeath(clone1);
        }
        if (clone2 != NULL) {
            Actor_MarkForDeath(clone2);
        }
        if (clone3 != NULL) {
            Actor_MarkForDeath(clone3);
        }
        Actor_MarkForDeath(&this->actor);
    }
}


/**
 * Meg and her clones vanish instantly, instead of slowing fading while spinning.
 *
 * PlayState is an optional parameter, passed only when drawing the fire flash as they vanish.
 */
void EnPoSisters_MegCloneVanish(EnPoSisters* this, PlayState* play) {
    Vec3f effectLoc;

    this->actor.draw = NULL;
    this->actor.flags &= ~ACTOR_FLAG_1;
    this->inivisTimer = 100;
    this->poSisterFlags = PO_SISTER_FLAG_UPDATE_FIRES;
    this->collider.base.colType = COLTYPE_HIT3;
    this->collider.base.acFlags &= ~AC_HARD;

    if (play) {
        effectLoc.x = this->actor.world.pos.x;
        effectLoc.y = this->actor.world.pos.y + 45.0f;
        effectLoc.z = this->actor.world.pos.z;
        // spawns EffectSsDeadDb
        func_800B3030(play, &effectLoc, &gZeroVec3f, &gZeroVec3f, 150, 0, 3);
    }

    Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0); // light OFF
    this->actionFunc = EnPoSisters_MegCloneWaitForSpinBack;
}


void EnPoSisters_MegCloneWaitForSpinBack(EnPoSisters* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    EnPoSisters* parent = (EnPoSisters*)this->actor.parent;

    if (this->megCloneId == REALMEG) {
        DECR(this->inivisTimer);
        if (this->inivisTimer == 0) {
            s32 rand = Rand_ZeroFloat(4.0f);

            this->actor.shape.rot.y = (rand * 0x4000) + this->actor.yawTowardsPlayer;
            this->actor.world.pos.y = player->actor.world.pos.y + 5.0f;
            EnPoSisters_SetupSpinBack(this, play);
        }

    } else if (parent->actionFunc == EnPoSisters_SpinBack) {
        this->actor.shape.rot.y = this->actor.parent->shape.rot.y + (this->megCloneId * 0x4000);
        this->actor.world.pos.y = player->actor.world.pos.y + 5.0f;
        EnPoSisters_SetupSpinBack(this, play);

    } else if (parent->actionFunc == EnPoSisters_DeathStage1) {
        Actor_MarkForDeath(&this->actor);
    }
}

void EnPoSisters_SetupMegSurroundPlayer(EnPoSisters* this) {
    Animation_MorphToLoop(&this->skelAnime, &gPoeSistersFloatAnim, -3.0f);
    this->color.a = 255;
    this->megSurroundTimer = 300; // 15 seconds
    this->inivisTimer = 3;
    this->poSisterFlags |= (PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT | PO_SISTER_FLAG_CHECK_AC);
    this->actor.flags |= ACTOR_FLAG_1;
    this->actionFunc = EnPoSisters_MegSurroundPlayer;
}

void EnPoSisters_MegSurroundPlayer(EnPoSisters* this, PlayState* play) {
    EnPoSisters* parent;

    DECR(this->megSurroundTimer);

    if (this->inivisTimer > 0 && this->megSurroundTimer >= 16) {
        SkelAnime_Update(&this->skelAnime);
        if (this->megCloneId == REALMEG) {
            if (ABS_ALT(16 - this->floatingBobbingTimer) < 14) {
                this->actor.shape.rot.y +=
                    (s16)((0x580 - (this->inivisTimer * 0x180)) * fabsf(Math_SinS(this->floatingBobbingTimer * 0x800)));
            }

            // spin realmeg backwards for a bit to hint player
            if ((this->megSurroundTimer >= 284) || (this->megSurroundTimer < 31)) {
                this->poSisterFlags |= PO_SISTER_FLAG_REAL_MEG_ROTATION;
            } else {
                this->poSisterFlags &= ~PO_SISTER_FLAG_REAL_MEG_ROTATION;
            }
        } else {
            this->actor.shape.rot.y = this->actor.parent->shape.rot.y + (this->megCloneId * 0x4000);
        }
    }

    if (this->megCloneId == REALMEG) {
        if ((this->megSurroundTimer >= 284) || ((this->megSurroundTimer < 31) && (this->megSurroundTimer >= 16))) {
            this->poSisterFlags |= PO_SISTER_FLAG_REAL_MEG_ROTATION;
        } else {
            this->poSisterFlags &= ~PO_SISTER_FLAG_REAL_MEG_ROTATION;
        }
    }

    if (this->megSurroundTimer == 0) {
        if (this->megCloneId == REALMEG) {
            EnPoSisters_SetupSpinAttack(this);
        } else {
            EnPoSisters_MegCloneVanish(this, play);
        }
    } else if (this->megCloneId != REALMEG) {
        parent = (EnPoSisters*)this->actor.parent;
        if (parent->actionFunc == EnPoSisters_DamageFlinch) {
            EnPoSisters_SetupDamageFlinch(this);
        }
    } else if (this->inivisTimer == 0) {
        this->inivisTimer = -15;
    } else if (this->inivisTimer < 0) {
        this->inivisTimer++;
        if (this->inivisTimer == 0) {
            EnPoSisters_SetupSpinAttack(this);
        }
    }
    EnPoSisters_MatchPlayerXZ(this, play);
}

// regular spawn in for non-meg versions
// also regular meg
void func_80B1C2E8(EnPoSisters* this) {
    Animation_PlayOnce(&this->skelAnime, &gPoeSistersAppearDisappearAnim);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_STALKIDS_APPEAR);
    this->color.a = 0;
    this->poSisterFlags = PO_SISTER_FLAG_UPDATE_FIRES;
    this->actionFunc = func_80B1C340;
}

// summoning in?
void func_80B1C340(EnPoSisters* this, PlayState* play) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->color.a = 255;
        this->actor.flags |= ACTOR_FLAG_1;
        this->poSisterFlags |= (PO_SISTER_FLAG_UPDATE_BGCHECK_INFO | PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT);
        if (this->type == POSISTER_TYPE_MEG) {
            EnPoSisters_MegCloneVanish(this, play);
        } else {
            func_80B1AC40(this);
        }
    } else {
        f32 alphaPercent = this->skelAnime.curFrame / this->skelAnime.endFrame;
        s32 alpha = 255.0f * alphaPercent;

        this->color.a = CLAMP(alpha, 0, 255);
    }
}

// combat collider? laughs and drops arrows for meg clone
void func_80B1C408(EnPoSisters* this, PlayState* play) {
    Vec3f pos;

    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.info);

        if (this->megCloneId != REALMEG) {
            ((EnPoSisters*)this->actor.parent)->inivisTimer--;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_LAUGH2);
            EnPoSisters_MegCloneVanish(this, play);
            if (Rand_ZeroOne() < 0.2f) {
                pos.x = this->actor.world.pos.x;
                pos.y = this->actor.world.pos.y;
                pos.z = this->actor.world.pos.z;
                Item_DropCollectible(play, &pos, ITEM00_ARROWS_10);
            }
        } else if (this->collider.base.colType != 9) {
            if (this->actor.colChkInfo.damageEffect == 0xF) {
                this->actor.world.rot.y = this->actor.shape.rot.y;
                this->poSisterFlags |= PO_SISTER_FLAG_UPDATE_SHAPE_ROT;
                EnPoSisters_SetupSpinBack(this, play);
            } else if ((this->type == POSISTER_TYPE_MEG) && (this->actor.colChkInfo.damageEffect == 0xE) &&
                       (this->actionFunc == EnPoSisters_MegSurroundPlayer)) {
                if (this->inivisTimer == 0) {
                    this->inivisTimer = -45;
                }
            } else {
                if (Actor_ApplyDamage(&this->actor)) {
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_DAMAGE);
                } else {
                    Enemy_StartFinishingBlow(play, &this->actor);
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_PO_SISTER_DEAD);
                }

                if (this->actor.colChkInfo.damageEffect == 4) {
                    this->drawDmgEffAlpha = 4.0f;
                    this->drawDmgEffScale = 0.5f;
                    Actor_Spawn(&play->actorCtx, play, ACTOR_EN_CLEAR_TAG, this->collider.info.bumper.hitPos.x,
                                this->collider.info.bumper.hitPos.y, this->collider.info.bumper.hitPos.z, 0, 0, 0,
                                CLEAR_TAG_LARGE_LIGHT_RAYS);
                }
                EnPoSisters_SetupDamageFlinch(this);
            }
        }
    }
}

void EnPoSisters_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    EnPoSisters* this = THIS;
    f32 alpha;
    Vec3f checkPos; // set by BgCheck_EntityRaycastFloor5 unused by us after
    s32 bgId;       // set by BgCheck_EntityRaycastFloor5 unused by us after

    if (this->collider.base.atFlags & AT_HIT) { // collided with player
        this->collider.base.atFlags &= ~AT_HIT;
        EnPoSisters_SetupAttackConnect(this);
    }

    func_80B1C408(this, play);
    if (this->poSisterFlags & PO_SISTER_FLAG_CHECK_Z_TARGET) {
        EnPoSisters_CheckZTarget(this, play);
    }

    this->actionFunc(this, play);

    if (this->poSisterFlags & PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT) {
        EnPoSisters_MatchPlayerY(this, play);
    }

    Actor_MoveWithGravity(&this->actor);

    if (this->poSisterFlags & PO_SISTER_FLAG_UPDATE_BGCHECK_INFO) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 20.0f, 20.0f, 0.0f, 5);
    } else {
        checkPos.x = this->actor.world.pos.x;
        checkPos.y = this->actor.world.pos.y + 10.0f;
        checkPos.z = this->actor.world.pos.z;
        this->actor.floorHeight =
            BgCheck_EntityRaycastFloor5(&play->colCtx, &this->actor.floorPoly, &bgId, &this->actor, &checkPos);
    }

    this->actor.shape.shadowAlpha = this->color.a;
    Actor_SetFocus(&this->actor, 40.0f);

    if (this->drawDmgEffAlpha > 0.0f) {
        Math_StepToF(&this->drawDmgEffAlpha, 0.0f, 0.05f);
        if (this->color.a != 255) {
            alpha = this->color.a * (1.0f / 255);
            if (alpha < this->color.a) {
                this->drawDmgEffAlpha = alpha;
            }
        }

        this->drawDmgEffScale = (this->drawDmgEffAlpha + 1.0f) * 0.25f;
        this->drawDmgEffScale = CLAMP_MAX(this->drawDmgEffScale, 0.5f);
    }

    if (this->poSisterFlags &
        (PO_SISTER_FLAG_UPDATE_BGCHECK_INFO | PO_SISTER_FLAG_MATCH_PLAYER_HEIGHT | PO_SISTER_FLAG_CHECK_Z_TARGET |
         PO_SISTER_FLAG_UPDATE_SHAPE_ROT | PO_SISTER_FLAG_CHECK_AC)) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        if ((this->actionFunc == EnPoSisters_SpinAttack) || (this->actionFunc == EnPoSisters_SpinUp)) {
            this->fireCount++;
            this->fireCount = CLAMP_MAX(this->fireCount, ARRAY_COUNT(this->firePos));
        } else if (this->actionFunc != EnPoSisters_DeathStage1) {
            this->fireCount = CLAMP_MIN(this->fireCount - 1, 1);
        }

        if (this->actionFunc == EnPoSisters_SpinAttack) {
            this->actor.flags |= ACTOR_FLAG_1000000;
            CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        }

        if (this->poSisterFlags & PO_SISTER_FLAG_CHECK_AC) {
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }

        if (this->actionFunc != EnPoSisters_MegCloneWaitForSpinBack) {
            CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
        }

        if (this->actionFunc == func_80B1B628) {
            this->actor.shape.rot.y = BINANG_ROT180(this->actor.world.rot.y);
        } else if (this->poSisterFlags & PO_SISTER_FLAG_UPDATE_SHAPE_ROT) {
            this->actor.shape.rot.y = this->actor.world.rot.y;
        }
    }
}

void EnPoSisters_UpdateColors(EnPoSisters* this) {
    if (this->skelAnime.animation == &gPoSistersAttackAnim) {
        this->color.r = CLAMP_MAX(this->color.r + 5, 255);
        this->color.g = CLAMP_MIN(this->color.g - 5, 50);
        this->color.b = CLAMP_MIN(this->color.b - 5, 0);
    } else if (this->skelAnime.animation == &gPoSistersFleeAnim) {
        this->color.r = CLAMP_MAX(this->color.r + 5, 80);
        this->color.g = CLAMP_MAX(this->color.g + 5, 255);
        this->color.b = CLAMP_MAX(this->color.b + 5, 225);
    } else if (this->skelAnime.animation == &gPoeSistersDamagedAnim) {
        // flash every other frame after taking damage
        if (this->actor.colorFilterTimer & 0x2) {
            this->color.r = 0;
            this->color.g = 0;
            this->color.b = 0;
        } else {
            this->color.r = 80;
            this->color.g = 255;
            this->color.b = 225;
        }
    } else {
        this->color.r = CLAMP_MAX(this->color.r + 5, 255);
        this->color.g = CLAMP_MAX(this->color.g + 5, 255);

        if (this->color.b > 210) {
            if (this->color.b && this->color.b && this->color.b) {}
            this->color.b = CLAMP_MIN(this->color.b - 5, 210);
        } else {
            this->color.b = CLAMP_MAX(this->color.b + 5, 210);
        }
    }
}

s32 EnPoSisters_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 Actor* thisx, Gfx** gfx) {
    static Gfx* gPoSisterBodyDisplayLists[] = {
        gPoSistersMegBodyDL,
        gPoSistersJoelleBodyDL,
        gPoSistersBethBodyDL,
        gPoSistersAmyBodyDL,
    };
    static Gfx* gPoSisterFaceDisplayLists[] = {
        gPoSistersMegFaceDL,
        gPoSistersJoelleFaceDL,
        gPoSistersBethFaceDL,
        gPoSistersAmyFaceDL,
    };
    static Color_RGBA8 gPoSisterColors[] = {
        { 80, 0, 100, 0 },
        { 80, 15, 0, 0 },
        { 0, 70, 50, 0 },
        { 70, 70, 0, 0 },
    };
    EnPoSisters* this = THIS;

    if (limbIndex == PO_SISTERS_LIMB_ROOT && (this->poSisterFlags & PO_SISTER_FLAG_REAL_MEG_ROTATION)) {
        if (this->megSurroundTimer >= 284) {
            rot->x += (this->megSurroundTimer - 284) * 0x1000;
        } else {
            rot->x += (this->megSurroundTimer - 15) * 0x1000;
        }
    }

    if ((this->color.a == 0) || (limbIndex == PO_SISTERS_LIMB_TORCH) ||
        ((this->actionFunc == EnPoSisters_DeathStage1) && (this->deathTimer >= 8))) {
        *dList = NULL;
    } else if (limbIndex == PO_SISTERS_LIMB_MAIN_BODY) {
        *dList = gPoSisterBodyDisplayLists[this->type];
    } else if (limbIndex == PO_SISTERS_LIMB_FACE) {
        *dList = gPoSisterFaceDisplayLists[this->type];

        gDPPipeSync((*gfx)++);
        gDPSetEnvColor((*gfx)++, this->color.r, this->color.g, this->color.b, this->color.a);
    } else if (limbIndex == PO_SISTERS_LIMB_LOWER_BODY) {
        Color_RGBA8* color = &gPoSisterColors[this->type];

        gDPPipeSync((*gfx)++);
        gDPSetEnvColor((*gfx)++, color->r, color->g, color->b, this->color.a);
    }

    return false;
}

// TODO add more values for our wack limbPos array
#define POSISTER_LIMBPOS_INVALID -1

void EnPoSisters_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx,
                              Gfx** gfx) {
    static Vec3f D_80B1DAFC = { 1000.0f, -1700.0f, 0.0f };
    static s8 D_80B1DB08[] = {
        POSISTER_LIMBPOS_INVALID,
        POSISTER_LIMBPOS_INVALID,
        0,
        1,
        2,
        POSISTER_LIMBPOS_INVALID,
        3,
        POSISTER_LIMBPOS_INVALID,
        POSISTER_LIMBPOS_INVALID,
        POSISTER_LIMBPOS_INVALID,
        POSISTER_LIMBPOS_INVALID,
        POSISTER_LIMBPOS_INVALID,
    };
    EnPoSisters* this = THIS;
    s32 end;
    f32 brightness;

    // specific matrix manipulation per limb
    if (D_80B1DB08[limbIndex] != POSISTER_LIMBPOS_INVALID) {
        Matrix_MultZero(&this->limbPos[D_80B1DB08[limbIndex]]);
    } else if (limbIndex == PO_SISTERS_LIMB_MAIN_BODY) {
        Matrix_MultVecY(-2500.0f, &this->limbPos[4]);
        Matrix_MultVecY(3000.0f, &this->limbPos[5]);
    } else if (limbIndex == PO_SISTERS_LIMB_FACE) {
        Matrix_MultVecY(-4000.0f, &this->limbPos[6]);
    } else if (limbIndex == PO_SISTERS_LIMB_LOWER_BODY) {
        Matrix_MultVecX(3000.0f, &this->limbPos[7]);
    }

    if (this->actionFunc == EnPoSisters_DeathStage1 && this->deathTimer >= 8 && limbIndex == PO_SISTERS_LIMB_MAIN_BODY) {
        gSPMatrix((*gfx)++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfx)++, gPoSistersBurnBodyDL);
    }

    if (limbIndex == PO_SISTERS_LIMB_TORCH) {
        if (this->poSisterFlags & PO_SISTER_FLAG_UPDATE_FIRES) {
            for (end = this->fireCount - 1; end > 0; end--) {
                this->firePos[end] = this->firePos[end - 1];
            }

            Matrix_MultVec3f(&D_80B1DAFC, this->firePos);
        }

        if (this->fireCount > 0) {
            Color_RGBA8* flameColor = &sPoSisterFlameColors[this->type];

            brightness = Rand_ZeroFloat(0.3f) + 0.7f; // flickering torch light level

            if (this->actionFunc == EnPoSisters_DeathStage2) {
                Lights_PointNoGlowSetInfo(&this->lightInfo, this->firePos[0].x, this->firePos[0].y + 15.0f,
                                          this->firePos[0].z, flameColor->r * brightness, flameColor->g * brightness,
                                          flameColor->b * brightness, 200);
            } else {
                Lights_PointGlowSetInfo(&this->lightInfo, this->firePos[0].x, this->firePos[0].y + 15.0f,
                                        this->firePos[0].z, flameColor->r * brightness, flameColor->g * brightness,
                                        flameColor->b * brightness, 200);
            }
        } else {
            Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
        }

        if (!(this->poSisterFlags & PO_SISTER_FLAG_DRAW_TORCH)) {
            Matrix_Get(&this->mtxf);
        }
    }
}

void EnPoSisters_Draw(Actor* thisx, PlayState* play) {
    EnPoSisters* this = THIS;
    Color_RGBA8* sisterEnvColor = &sPoSisterEnvColors[this->type];
    Color_RGBA8* flameColor = &sPoSisterFlameColors[this->type];
    s32 pad;
    s32 i;
    u8 alpha;
    f32 scale;
    s32 pad2;

    OPEN_DISPS(play->state.gfxCtx);

    EnPoSisters_UpdateColors(this);
    func_8012C28C(play->state.gfxCtx);
    func_8012C2DC(play->state.gfxCtx);

    if ((this->color.a == 255) || (this->color.a == 0)) {
        gDPSetEnvColor(POLY_OPA_DISP++, this->color.r, this->color.g, this->color.b, this->color.a);
        gSPSegment(POLY_OPA_DISP++, 0x09, D_801AEFA0); // empty
        POLY_OPA_DISP =
            SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnPoSisters_OverrideLimbDraw,
                           EnPoSisters_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->color.a);
        gSPSegment(POLY_XLU_DISP++, 0x09, D_801AEF88); // xlu only DL
        POLY_XLU_DISP =
            SkelAnime_Draw(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnPoSisters_OverrideLimbDraw,
                           EnPoSisters_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    }

    if (!(this->poSisterFlags & PO_SISTER_FLAG_DRAW_TORCH)) {
        Matrix_Put(&this->mtxf);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, gPoSistersDrawTorchDL);
    }

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (play->gameplayFrames * -20) % 512,
                                32, 128));
    gDPSetEnvColor(POLY_XLU_DISP++, sisterEnvColor->r, sisterEnvColor->g, sisterEnvColor->b, sisterEnvColor->a);

    if (this->actionFunc == EnPoSisters_DeathStage2) {
        alpha = ((-this->deathTimer * 255) + 0x1FE0) / 32;
        scale = (7 / 1.2500 * 0.001f);
    } else {
        alpha = 0;
        scale = this->actor.scale.x * 0.5f;
    }

    for (i = 0; i < this->fireCount; i++) {
        if (this->actionFunc != EnPoSisters_DeathStage2) {
            alpha = (-i * 31) + 248;
        }

        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, flameColor->r, flameColor->g, flameColor->b, alpha);

        Matrix_Translate(this->firePos[i].x, this->firePos[i].y, this->firePos[i].z, MTXMODE_NEW);
        Matrix_RotateZYX(0, BINANG_ROT180(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play))), 0, MTXMODE_APPLY);

        if (this->actionFunc == EnPoSisters_DeathStage1) {
            scale = ((this->deathTimer - i) * 0.025f) + 0.5f;
            scale = CLAMP(scale, 0.5f, 0.8f) * 0.007f;
        }
        Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);

        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gGameplayKeepDrawFlameDL);
    }

    Actor_DrawDamageEffects(play, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos),
                            this->actor.scale.x * (1.0f / 0.007f) * this->drawDmgEffScale, 0.0f, this->drawDmgEffAlpha,
                            ACTOR_DRAW_DMGEFF_LIGHT_ORBS);

    CLOSE_DISPS(play->state.gfxCtx);
}
