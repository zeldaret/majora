/*
 * File: z_en_snowman.c
 * Overlay: ovl_En_Snowman
 * Description: Eeno
 */

#include "z_en_snowman.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4)

#define THIS ((EnSnowman*)thisx)

void EnSnowman_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSnowman_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSnowman_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSnowman_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnSnowman_SetupMoveSnowPile(EnSnowman* this);
void EnSnowman_MoveSnowPile(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupSurface(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_Surface(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupReadySnowball(EnSnowman* this);
void EnSnowman_ReadySnowball(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupThrowSnowball(EnSnowman* this);
void EnSnowman_ThrowSnowball(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupIdle(EnSnowman* this);
void EnSnowman_Idle(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupHide(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_Hide(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_Melt(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_Stun(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_Damage(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupDead(EnSnowman* this);
void EnSnowman_Dead(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupSplitDead(EnSnowman* this);
void EnSnowman_SplitDead(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_SetupMarkForDeath(EnSnowman* this);
void EnSnowman_MarkForDeath(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_CreateSplitEeno(EnSnowman* this, Vec3f* arg1, s32 arg2);
void EnSnowman_SetupCombine(EnSnowman* this, GlobalContext* globalCtx, Vec3f* arg2);
void EnSnowman_Combine(EnSnowman* this, GlobalContext* globalCtx);
void EnSnowman_UpdateSnowball(Actor* thisx, GlobalContext* globalCtx);
void EnSnowman_DrawSnowPile(Actor* thisx, GlobalContext* globalCtx);
void EnSnowman_DrawSnowball(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Snowman_InitVars = {
    ACTOR_EN_SNOWMAN,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_SNOWMAN,
    sizeof(EnSnowman),
    (ActorFunc)EnSnowman_Init,
    (ActorFunc)EnSnowman_Destroy,
    (ActorFunc)EnSnowman_Update,
    (ActorFunc)EnSnowman_Draw,
};

static ColliderCylinderInit sCylinderInit1 = {
    {
        COLTYPE_HIT4,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0.0f, 0x00, 0x00 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 60, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInit2 = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xF7CFFFFF, 0x00, 0x04 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 60, 80, 0, { 0, 0, 0 } },
};

typedef enum {
    /* 0x0 */ EN_SNOWMAN_DMGEFF_NONE,
    /* 0x1 */ EN_SNOWMAN_DMGEFF_STUN,
    /* 0x2 */ EN_SNOWMAN_DMGEFF_FIRE_ARROW,
    /* 0x4 */ EN_SNOWMAN_DMGEFF_LIGHT_ARROW = 0x4,
    /* 0x5 */ EN_SNOWMAN_DMGEFF_ZORA_MAGIC,
    /* 0xF */ EN_SNOWMAN_DMGEFF_HOOKSHOT = 0xF,
} EnTalkGibudDamageEffect;

static DamageTable sDamageTable = {
    /* Deku Nut       */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_STUN),
    /* Deku Stick     */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Horse trample  */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Explosives     */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Zora boomerang */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Normal arrow   */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Hookshot       */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_HOOKSHOT),
    /* Goron punch    */ DMG_ENTRY(2, EN_SNOWMAN_DMGEFF_NONE),
    /* Sword          */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Goron pound    */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Fire arrow     */ DMG_ENTRY(2, EN_SNOWMAN_DMGEFF_FIRE_ARROW),
    /* Ice arrow      */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Light arrow    */ DMG_ENTRY(2, EN_SNOWMAN_DMGEFF_LIGHT_ARROW),
    /* Goron spikes   */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Deku spin      */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_STUN),
    /* Deku bubble    */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Deku launch    */ DMG_ENTRY(2, EN_SNOWMAN_DMGEFF_NONE),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_STUN),
    /* Zora barrier   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_ZORA_MAGIC),
    /* Normal shield  */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Light ray      */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Thrown object  */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Zora punch     */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Spin attack    */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
    /* Sword beam     */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Normal Roll    */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Unblockable    */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, EN_SNOWMAN_DMGEFF_NONE),
    /* Powder Keg     */ DMG_ENTRY(1, EN_SNOWMAN_DMGEFF_NONE),
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 60, 80, 150 };

static Color_RGBA8 sDustPrimColor = { 250, 250, 250, 255 };

static Color_RGBA8 sDustEnvColor = { 180, 180, 180, 255 };

static Vec3f sDustVelocity = { 0.0f, 1.5f, 0.0f };

static Gfx* sSnowballDLs[] = { gEenoSmallSnowballDL, gEenoLargeSnowballDL, gEenoSmallSnowballDL };

static Gfx* sSnowFragmentDLs[] = { gEenoSnowFragment1DL, gEenoSnowFragment2DL, gEenoSnowFragment3DL };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(hintId, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_STOP),
};

void EnSnowman_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSnowman* this = THIS;
    s32 attackRange;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    attackRange = EN_SNOWMAN_GET_ATTACK_RANGE(&this->actor);
    if (attackRange == 0xFF) {
        attackRange = 0;
    }

    this->actor.params &= 7;
    if (EN_SNOWMAN_GET_TYPE(&this->actor) < EN_SNOWMAN_TYPE_SMALL_SNOWBALL) {
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gEenoSkel, &gEenoSurfaceAnim, this->jointTable,
                           this->morphTable, EENO_LIMB_MAX);
        SkelAnime_InitFlex(globalCtx, &this->snowPileSkelAnime, &gEenoSnowPileSkel, &gEenoSnowPileMoveAnim,
                           this->snowPileJointTable, this->snowPileMorphTable, EENO_SNOW_PILE_LIMB_MAX);
        CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
        Collider_InitAndSetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit1);
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
            this->actor.flags |= ACTOR_FLAG_400;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_SNOWMAN, this->actor.world.pos.x,
                               this->actor.world.pos.y, this->actor.world.pos.z, 0, 0, 0, EN_SNOWMAN_TYPE_SPLIT);
            this->actor.parent = Actor_SpawnAsChildAndCutscene(
                &globalCtx->actorCtx, globalCtx, ACTOR_EN_SNOWMAN, this->actor.world.pos.x, this->actor.world.pos.y,
                this->actor.world.pos.z, 0, 0, 0, EN_SNOWMAN_TYPE_SPLIT, -1, this->actor.unk20, NULL);
            if ((this->actor.child == NULL) || (this->actor.parent == NULL)) {
                if (this->actor.child != NULL) {
                    Actor_MarkForDeath(this->actor.child);
                }

                if (this->actor.parent != NULL) {
                    Actor_MarkForDeath(this->actor.parent);
                }

                Actor_MarkForDeath(&this->actor);
                return;
            }

            this->actor.parent->child = &this->actor;
            this->actor.child->child = this->actor.parent;
            this->actor.parent->parent = this->actor.child;
            if (1) {}
            Actor_SetScale(&this->actor, 0.02f);
        }

        this->eenoScale = thisx->scale.x * 100.0f;
        this->attackRange = (240.0f * this->eenoScale) + (attackRange * 0.1f * 40.0f);
        if (EN_SNOWMAN_GET_TYPE(thisx) == EN_SNOWMAN_TYPE_SPLIT) {
            EnSnowman_SetupSplitDead(this);
        } else {
            EnSnowman_SetupMoveSnowPile(this);
        }
    } else {
        Player* player = GET_PLAYER(globalCtx);

        this->actor.flags &= ~ACTOR_FLAG_1;
        Collider_InitAndSetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit2);
        this->actor.world.rot.y = Actor_YawBetweenActors(&this->actor, &player->actor);
        this->actor.velocity.y = (Actor_XZDistanceBetweenActors(&this->actor, &player->actor) * 0.035f) + -5.0f;
        this->actor.velocity.y = CLAMP_MAX(this->actor.velocity.y, 3.5f);
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SMALL_SNOWBALL) {
            this->actor.speedXZ = 15.0f;
        } else {
            this->actor.speedXZ = 22.5f;
            this->actor.velocity.y *= 1.5f;
        }

        this->actor.world.pos.x += this->actor.speedXZ * Math_SinS(this->actor.world.rot.y);
        this->actor.world.pos.y += this->actor.velocity.y;
        this->actor.world.pos.z += this->actor.speedXZ * Math_CosS(this->actor.world.rot.y);
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SMALL_SNOWBALL) {
            this->collider.dim.radius = 8;
            this->collider.dim.height = 12;
            this->collider.dim.yShift = -6;
            ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 10.0f);
        } else {
            this->collider.dim.radius = 50;
            this->collider.dim.height = 122;
            this->collider.dim.yShift = -8;
            this->collider.info.toucher.damage = 16;
            this->actor.world.pos.y -= 32.0f;
            Actor_SetScale(&this->actor, 0.006f);
            ActorShape_Init(&this->actor.shape, 5333.3335f, ActorShadow_DrawCircle, 170.0f);
            this->actor.gravity = -1.5f;
        }

        this->actor.flags |= ACTOR_FLAG_10;
        this->actor.update = EnSnowman_UpdateSnowball;
        this->actor.draw = EnSnowman_DrawSnowball;
        this->timer = 5;
    }
}

void EnSnowman_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnSnowman* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnSnowman_CreateShowHideDustEffect(EnSnowman* this, GlobalContext* globalCtx) {
    s16 angle = 0;
    Vec3f pos;
    f32 offset;
    s32 i;

    pos.y = (Rand_ZeroFloat(10.0f) * this->eenoScale) + this->actor.world.pos.y;
    for (i = 0; i < 16; i++) {
        offset = (Rand_ZeroFloat(10.0f) + 20.0f) * this->eenoScale;
        pos.x = (Math_SinS(angle) * offset) + this->actor.world.pos.x;
        pos.z = (Math_CosS(angle) * offset) + this->actor.world.pos.z;
        func_800B0DE0(globalCtx, &pos, &sDustVelocity, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor,
                      this->eenoScale * 400.0f, 10);
        angle += 0x1000;
    }
}

void EnSnowman_CreateBigSnowballFragmentEffects(EnSnowman* this, GlobalContext* globalCtx) {
    static Vec3f sAccel = { 0.0f, -1.0f, 0.0f };
    s16 angle1;
    s16 angle2;
    Vec3f pos;
    Vec3f velocity;
    f32 speed;
    s32 i;

    for (i = 0; i < 15; i++) {
        angle1 = Rand_S16Offset(0x1800, 0x2800);
        angle2 = ((u32)Rand_Next() >> 0x10);
        speed = Rand_ZeroFloat(3.0f) + 8.0f;
        velocity.x = (speed * Math_CosS(angle1)) * Math_SinS(angle2);
        velocity.y = speed * Math_SinS(angle1);
        velocity.z = (speed * Math_CosS(angle1)) * Math_CosS(angle2);
        pos.x = (Rand_ZeroFloat(10.0f) * velocity.x) + this->snowballPos.x;
        pos.y = (Rand_ZeroFloat(8.0f) * velocity.y) + this->snowballPos.y;
        pos.z = (Rand_ZeroFloat(10.0f) * velocity.z) + this->snowballPos.z;
        EffectSsHahen_Spawn(globalCtx, &pos, &velocity, &sAccel, 0,
                            Rand_S16Offset((((i % 3) * 50) + 50), (((i % 3) * 25) + 25)), 452, 20,
                            sSnowFragmentDLs[i % 3]);
    }

    func_800B0DE0(globalCtx, &this->snowballPos, &gZeroVec3f, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor, 1000, 150);
}

void EnSnowman_SetupMoveSnowPile(EnSnowman* this) {
    Animation_PlayLoop(&this->snowPileSkelAnime, &gEenoSnowPileMoveAnim);
    this->actor.scale.y = this->actor.scale.x;
    this->actor.speedXZ = 2.0f;
    this->actor.draw = EnSnowman_DrawSnowPile;
    this->timer = 40;
    this->turningOnSteepSlope = false;
    this->collider.dim.radius = this->eenoScale * 30.0f;
    this->collider.dim.height = this->eenoScale * 10.0f;
    this->actionFunc = EnSnowman_MoveSnowPile;
}

void EnSnowman_MoveSnowPile(EnSnowman* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    Vec3f combinePos;

    SkelAnime_Update(&this->snowPileSkelAnime);
    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        func_800B9010(&this->actor, NA_SE_EN_YMAJIN_MOVE - SFX_FLAG);
    } else {
        func_800B9010(&this->actor, NA_SE_EN_YMAJIN_MINI_MOVE - SFX_FLAG);
    }

    if (this->timer > 0) {
        this->timer--;
    }

    if (this->timer == 0) {
        this->collider.base.acFlags |= AC_ON;
    }

    if ((this->combineTimer == 0) && (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SPLIT)) {
        if ((this->actor.parent->colChkInfo.health != 0) && (this->actor.child->colChkInfo.health != 0)) {
            combinePos.x =
                (this->actor.parent->world.pos.x + this->actor.child->world.pos.x + this->actor.world.pos.x) *
                0.33333334f;
            combinePos.z =
                (this->actor.parent->world.pos.z + this->actor.child->world.pos.z + this->actor.world.pos.z) *
                0.33333334f;
        } else if (this->actor.parent->colChkInfo.health != 0) {
            combinePos.x = (this->actor.parent->world.pos.x + this->actor.world.pos.x) / 2.0f;
            combinePos.z = (this->actor.parent->world.pos.z + this->actor.world.pos.z) / 2.0f;
        } else if (this->actor.child->colChkInfo.health != 0) {
            combinePos.x = (this->actor.child->world.pos.x + this->actor.world.pos.x) / 2.0f;
            combinePos.z = (this->actor.child->world.pos.z + this->actor.world.pos.z) / 2.0f;
        } else {
            combinePos.x = this->actor.world.pos.x;
            combinePos.z = this->actor.world.pos.z;
        }

        combinePos.y = this->actor.world.pos.y;
        EnSnowman_SetupCombine((EnSnowman*)this->actor.parent, globalCtx, &combinePos);
        EnSnowman_SetupCombine((EnSnowman*)this->actor.child, globalCtx, &combinePos);
        EnSnowman_SetupCombine(this, globalCtx, &combinePos);
    } else if ((this->timer == 0) && (fabsf(this->actor.playerHeightRel) < 60.0f) &&
               (this->actor.xzDistToPlayer < this->attackRange) && (Player_GetMask(globalCtx) != PLAYER_MASK_STONE) &&
               !(player->stateFlags1 & 0x800000)) {
        EnSnowman_SetupSurface(this, globalCtx);
    } else if (this->snowPileTargetRotY != this->actor.shape.rot.y) {
        if (Math_ScaledStepToS(&this->actor.shape.rot.y, this->snowPileTargetRotY, 0x100)) {
            this->turningOnSteepSlope = false;
        }

        this->actor.world.rot.y = this->actor.shape.rot.y;
    } else if (this->actor.bgCheckFlags & 8) {
        this->snowPileTargetRotY = this->actor.wallYaw;
    } else if (Actor_XZDistanceToPoint(&this->actor, &this->actor.home.pos) > 200.0f) {
        this->snowPileTargetRotY = Actor_YawToPoint(&this->actor, &this->actor.home.pos) + (Rand_Next() >> 0x14);
    } else if (Rand_ZeroOne() < 0.02f) {
        this->snowPileTargetRotY += (s16)((((u32)Rand_Next() >> 0x13) + 0x1000) * ((Rand_ZeroOne() < 0.5f) ? -1 : 1));
    }
}

void EnSnowman_SetupSurface(EnSnowman* this, GlobalContext* globalCtx) {
    Animation_PlayOnce(&this->skelAnime, &gEenoSurfaceAnim);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_SURFACE);
    this->collider.dim.radius = this->eenoScale * 40.0f;
    this->collider.dim.height = this->eenoScale * 25.0f;
    this->actor.draw = EnSnowman_Draw;
    this->actor.scale.y = this->actor.scale.x * 0.4f;
    this->actor.speedXZ = 0.0f;
    this->actor.shape.rot.y = this->actor.yawTowardsPlayer;
    EnSnowman_CreateShowHideDustEffect(this, globalCtx);
    this->collider.base.acFlags &= ~AC_ON;
    this->actionFunc = EnSnowman_Surface;
}

void EnSnowman_Surface(EnSnowman* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    Math_StepToF(&this->actor.scale.y, this->actor.scale.x,
                 (this->actor.scale.x * 0.6f) / Animation_GetLastFrame(&gEenoSurfaceAnim));
    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xA, 0x1000);

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->combineState == 1) {
            EnSnowman_SetupHide(this, globalCtx);
        } else if (!(player->stateFlags1 & 0x800000) && (Player_GetMask(globalCtx) != PLAYER_MASK_STONE)) {
            this->collider.base.acFlags |= AC_ON;
            this->snowballsToThrowBeforeIdling = 3;
            EnSnowman_SetupReadySnowball(this);
        } else {
            this->collider.base.acFlags |= AC_ON;
            this->actor.scale.y = this->actor.scale.x;
            EnSnowman_SetupIdle(this);
        }
    }
}

void EnSnowman_SetupReadySnowball(EnSnowman* this) {
    this->actor.scale.y = this->actor.scale.x;
    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        this->frameToStartHoldingSnowball = 15.0f;
        Animation_PlayOnce(&this->skelAnime, &gEenoLargeSnowballCreateAnim);
    } else {
        this->frameToStartHoldingSnowball = 6.0f;
        Animation_PlayOnce(&this->skelAnime, &gEenoSmallSnowballCreateAnim);
    }

    this->actionFunc = EnSnowman_ReadySnowball;
}

void EnSnowman_ReadySnowball(EnSnowman* this, GlobalContext* globalCtx) {
    Vec3f pos;

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xA, 0x1000);
    if ((EN_SNOWMAN_GET_TYPE(&this->actor) != EN_SNOWMAN_TYPE_LARGE) && this->isHoldingSnowball &&
        ((globalCtx->gameplayFrames % 2) != 0)) {
        pos.x = randPlusMinusPoint5Scaled(10.0f) + this->snowballPos.x;
        pos.y = randPlusMinusPoint5Scaled(10.0f) + this->snowballPos.y;
        pos.z = randPlusMinusPoint5Scaled(10.0f) + this->snowballPos.z;
        func_800B0DE0(globalCtx, &pos, &sDustVelocity, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor, 500, 30);
    } else if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        if ((this->skelAnime.curFrame > 3.0f) && (this->skelAnime.curFrame < 14.0f) &&
            ((globalCtx->gameplayFrames % 2) != 0)) {
            pos.x = (this->actor.world.pos.x + (70.0f * Math_SinS(this->actor.shape.rot.y))) +
                    randPlusMinusPoint5Scaled(40.0f);
            pos.y = this->actor.world.pos.y + randPlusMinusPoint5Scaled(20.0f);
            pos.z = (this->actor.world.pos.z + (70.0f * Math_CosS(this->actor.shape.rot.y))) +
                    randPlusMinusPoint5Scaled(40.0f);
            func_800B0DE0(globalCtx, &pos, &sDustVelocity, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor, 1000, 150);
        }
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnSnowman_SetupThrowSnowball(this);
    } else if (Animation_OnFrame(&this->skelAnime, this->frameToStartHoldingSnowball)) {
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_HOLD_SNOW);
        } else {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_MINI_HOLD);
        }

        this->isHoldingSnowball = true;
    }
}

void EnSnowman_SetupThrowSnowball(EnSnowman* this) {
    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        Animation_PlayOnce(&this->skelAnime, &gEenoLargeSnowballThrowAnim);
        this->frameToThrowSnowball = 17.0f;
    } else {
        Animation_PlayOnce(&this->skelAnime, &gEenoSmallSnowballThrowAnim);
        this->frameToThrowSnowball = 15.0f;
    }

    this->snowballsToThrowBeforeIdling--;
    this->actionFunc = EnSnowman_ThrowSnowball;
}

void EnSnowman_ThrowSnowball(EnSnowman* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s32 params;

    Math_ApproachS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xA, 0x1000);
    if (SkelAnime_Update(&this->skelAnime)) {
        if ((this->snowballsToThrowBeforeIdling != 0) && (Player_GetMask(globalCtx) != PLAYER_MASK_STONE) &&
            !(player->stateFlags1 & 0x800000)) {
            EnSnowman_SetupReadySnowball(this);
        } else {
            this->snowballsToThrowBeforeIdling = 0;
            EnSnowman_SetupIdle(this);
        }
    } else if (Animation_OnFrame(&this->skelAnime, this->frameToThrowSnowball)) {
        this->isHoldingSnowball = false;
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
            params = EN_SNOWMAN_TYPE_LARGE_SNOWBALL;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_THROW);
        } else {
            params = EN_SNOWMAN_TYPE_SMALL_SNOWBALL;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_MINI_THROW);
        }

        Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_SNOWMAN, this->snowballPos.x, this->snowballPos.y,
                    this->snowballPos.z, 0, this->actor.yawTowardsPlayer, 0, params);
    }
}

void EnSnowman_SetupIdle(EnSnowman* this) {
    Animation_PlayLoop(&this->skelAnime, &gEenoIdleAnim);
    this->timer = 60;
    this->actionFunc = EnSnowman_Idle;
}

void EnSnowman_Idle(EnSnowman* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->timer > 0) {
        this->timer--;
    } else {
        EnSnowman_SetupHide(this, globalCtx);
    }
}

void EnSnowman_SetupHide(EnSnowman* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &gEenoSurfaceAnim, -1.0f, Animation_GetLastFrame(&gEenoSurfaceAnim), 0.0f,
                     ANIMMODE_ONCE, -3.0f);
    EnSnowman_CreateShowHideDustEffect(this, globalCtx);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_HIDE);
    this->actionFunc = EnSnowman_Hide;
}

void EnSnowman_Hide(EnSnowman* this, GlobalContext* globalCtx) {
    Math_StepToF(&this->actor.scale.y, this->actor.scale.x * 0.4f,
                 (this->actor.scale.x * 0.6f) / Animation_GetLastFrame(&gEenoSurfaceAnim));

    if (SkelAnime_Update(&this->skelAnime)) {
        if (this->combineState == 1) {
            this->actor.draw = EnSnowman_DrawSnowPile;
            this->collider.base.acFlags |= AC_ON;
            EnSnowman_SetupCombine(this, globalCtx, &this->combinePos);
        } else {
            EnSnowman_SetupMoveSnowPile(this);
        }
    }
}

void EnSnowman_SetupMelt(EnSnowman* this) {
    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 50);
    this->collider.base.acFlags &= ~AC_ON;
    this->timer = 50;
    this->actor.flags &= ~ACTOR_FLAG_1;
    this->actor.flags |= ACTOR_FLAG_10;
    this->actor.scale.y = this->actor.scale.x;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = EnSnowman_Melt;
}

void EnSnowman_Melt(EnSnowman* this, GlobalContext* globalCtx) {
    Vec3f smokeVelocity;
    Vec3f smokePos;

    this->timer--;
    if ((this->timer >= 38) && (!(this->timer & 1))) {
        smokeVelocity.y = (this->timer - 38) * 0.083333336f;
        smokeVelocity.x = randPlusMinusPoint5Scaled(1.5f) * smokeVelocity.y;
        smokeVelocity.z = randPlusMinusPoint5Scaled(1.5f) * smokeVelocity.y;
        smokeVelocity.y += 0.8f;
        smokePos.x = ((smokeVelocity.x >= 0.0f ? 1.0f : -1.0f) * Rand_ZeroFloat(20.0f) * this->eenoScale) +
                     this->actor.world.pos.x;
        smokePos.z = ((smokeVelocity.z >= 0.0f ? 1.0f : -1.0f) * Rand_ZeroFloat(20.0f) * this->eenoScale) +
                     this->actor.world.pos.z;
        smokePos.y = this->actor.world.pos.y + 3.0f;
        EffectSsIceSmoke_Spawn(globalCtx, &smokePos, &smokeVelocity, &gZeroVec3f, this->eenoScale * 300.0f);
    }

    if (this->timer == 0) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x60);
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SPLIT) {
            EnSnowman_SetupSplitDead(this);
        } else if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
            Actor_MarkForDeath(this->actor.parent);
            Actor_MarkForDeath(this->actor.child);
            Actor_MarkForDeath(&this->actor);
        } else {
            Actor_MarkForDeath(&this->actor);
        }
    }

    this->actor.scale.y = this->timer * 0.0002f * this->eenoScale;
    this->actor.scale.x = (this->eenoScale * 0.0139999995f) - (0.4f * this->actor.scale.y);
    this->actor.scale.z = (this->eenoScale * 0.0139999995f) - (0.4f * this->actor.scale.y);
}

void EnSnowman_SetupStun(EnSnowman* this) {
    if (this->actionFunc != EnSnowman_Stun) {
        this->oldActionFunc = this->actionFunc;
    }

    this->actionFunc = EnSnowman_Stun;
}

void EnSnowman_Stun(EnSnowman* this, GlobalContext* globalCtx) {
    if (this->actor.colorFilterTimer == 0) {
        this->actionFunc = this->oldActionFunc;
    }
}

void EnSnowman_SetupDamage(EnSnowman* this) {
    Animation_PlayLoop(&this->skelAnime, &gEenoDamageAnim);
    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 20);
    this->collider.base.acFlags &= ~AC_ON;
    this->timer = 20;
    this->actor.draw = EnSnowman_Draw;
    this->actor.scale.y = this->actor.scale.x;
    this->actor.speedXZ = 10.0f;
    func_800BE504(&this->actor, &this->collider);

    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_DAMAGE);
    } else {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_MINI_DAMAGE);
    }

    this->actionFunc = EnSnowman_Damage;
}

void EnSnowman_Damage(EnSnowman* this, GlobalContext* globalCtx) {
    s32 rotationalVelocityScale;

    SkelAnime_Update(&this->skelAnime);
    rotationalVelocityScale = CLAMP_MAX(this->timer, 10);
    this->actor.shape.rot.y += rotationalVelocityScale * 0x300;
    Math_StepToF(&this->actor.speedXZ, 0.0f, 0.5f);

    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        Math_StepToF(&this->actor.scale.y, 0.012999999f, 0.00070000003f);
        this->actor.scale.x = this->actor.scale.y;
        this->actor.scale.z = this->actor.scale.y;
    }

    if (this->timer > 0) {
        this->timer--;
    } else if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_YMAJIN_SPLIT);
        EnSnowman_CreateShowHideDustEffect(this, globalCtx);
        this->drawDmgEffAlpha = 0.0f;
        EnSnowman_CreateSplitEeno((EnSnowman*)this->actor.parent, &this->actor.world.pos,
                                  this->actor.shape.rot.y + 0x5555);
        EnSnowman_CreateSplitEeno((EnSnowman*)this->actor.child, &this->actor.world.pos,
                                  this->actor.shape.rot.y - 0x5555);
        EnSnowman_CreateSplitEeno(this, &this->actor.world.pos, this->actor.shape.rot.y);
        Math_Vec3f_Copy(&this->snowballPos, &this->actor.world.pos);
        EnSnowman_CreateBigSnowballFragmentEffects(this, globalCtx);
    } else if (this->actor.colChkInfo.health != 0) {
        this->collider.base.acFlags |= AC_ON;
        EnSnowman_SetupHide(this, globalCtx);
    } else {
        EnSnowman_SetupDead(this);
    }
}

void EnSnowman_SetupDead(EnSnowman* this) {
    this->drawDmgEffAlpha = 0.0f;
    this->actionFunc = EnSnowman_Dead;
}

void EnSnowman_Dead(EnSnowman* this, GlobalContext* globalCtx) {
    static Vec3f sAccel = { 0.0f, -0.5f, 0.0f };
    Vec3f velocity;
    Vec3f pos;
    s16 angle1;
    s16 angle2;
    f32 speed;
    s32 i;

    for (i = 0; i < 15; i++) {
        angle1 = Rand_S16Offset(0x1000, 0x3000);
        angle2 = ((u32)Rand_Next() >> 0x10);
        speed = Rand_ZeroFloat(2.0f) + 4.0f;
        velocity.x = (speed * Math_CosS(angle1)) * Math_SinS(angle2);
        velocity.y = speed * Math_SinS(angle1);
        velocity.z = (speed * Math_CosS(angle1)) * Math_CosS(angle2);
        pos.x = (Rand_ZeroFloat(6.0f) * velocity.x) + this->actor.world.pos.x;
        pos.y = (Rand_ZeroFloat(3.0f) * velocity.y) + this->actor.world.pos.y;
        pos.z = (Rand_ZeroFloat(6.0f) * velocity.z) + this->actor.world.pos.z;
        EffectSsHahen_Spawn(globalCtx, &pos, &velocity, &sAccel, 0,
                            Rand_S16Offset((((i % 3) * 20) + 20), (((i % 3) * 10) + 10)), 452, 20,
                            sSnowFragmentDLs[i % 3]);
    }

    func_800B0DE0(globalCtx, &this->actor.world.pos, &gZeroVec3f, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor, 500,
                  30);
    SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 30, NA_SE_EN_YMAJIN_DEAD_BREAK);
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x60);
    if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SPLIT) {
        EnSnowman_SetupSplitDead(this);
    } else {
        Actor_MarkForDeath(&this->actor);
    }
}

void EnSnowman_SetupSplitDead(EnSnowman* this) {
    this->collider.base.acFlags &= ~AC_HIT;
    this->collider.base.acFlags &= ~AC_HIT;
    this->actor.draw = NULL;
    if (this->combineState == 1) {
        this->combineState = 2;
    }

    this->actor.flags &= ~(ACTOR_FLAG_1 | ACTOR_FLAG_10);
    if ((this->actor.parent != NULL) && (((EnSnowman*)this->actor.parent)->actionFunc == EnSnowman_SplitDead)) {
        if ((this->actor.child != NULL) && (((EnSnowman*)this->actor.child)->actionFunc == EnSnowman_SplitDead)) {
            EnSnowman_SetupMarkForDeath((EnSnowman*)this->actor.parent);
            EnSnowman_SetupMarkForDeath((EnSnowman*)this->actor.child);
            Actor_MarkForDeath(&this->actor);
        }
    }

    this->actionFunc = EnSnowman_SplitDead;
}

void EnSnowman_SplitDead(EnSnowman* this, GlobalContext* globalCtx) {
}

void EnSnowman_SetupMarkForDeath(EnSnowman* this) {
    this->collider.base.acFlags &= ~(AC_ON | AC_HIT);
    this->collider.base.ocFlags1 &= ~(OC1_ON | OC1_HIT);
    this->actionFunc = EnSnowman_MarkForDeath;
}

void EnSnowman_MarkForDeath(EnSnowman* this, GlobalContext* globalCtx) {
    Actor_MarkForDeath(&this->actor);
}

void EnSnowman_CreateSplitEeno(EnSnowman* this, Vec3f* basePos, s32 yRot) {
    this->actor.flags |= ACTOR_FLAG_1;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.shape.rot.y = yRot;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->combineState = 0;
    this->actor.colChkInfo.health = 2;
    this->eenoScale = 1.0f;
    this->actor.world.pos.x = (Math_SinS(yRot) * 40.0f) + basePos->x;
    this->actor.world.pos.y = basePos->y;
    this->actor.world.pos.z = (Math_CosS(yRot) * 40.0f) + basePos->z;
    this->combineTimer = 600;
    this->actor.params = EN_SNOWMAN_TYPE_SPLIT;
    this->actor.flags &= ~ACTOR_FLAG_400;
    this->collider.base.ocFlags1 |= OC1_ON;
    this->collider.base.acFlags &= ~AC_ON;
    EnSnowman_SetupMoveSnowPile(this);
}

void EnSnowman_PrepareForCombine(EnSnowman* arg0, EnSnowman* arg1) {
    Actor_PlaySfxAtPos(&arg1->actor, NA_SE_EN_YMAJIN_UNITE);
    arg1->targetScaleDuringCombine += 0.005f;
    arg0->combineState = 3;
    arg0->collider.base.ocFlags1 &= ~OC1_HIT;
    arg0->collider.base.acFlags &= ~AC_HIT;
    arg0->collider.base.ocFlags1 &= ~OC1_ON;
    arg0->collider.base.acFlags &= ~AC_ON;
    arg0->targetScaleDuringCombine = 0.0f;
}

void EnSnowman_SetupCombine(EnSnowman* this, GlobalContext* globalCtx, Vec3f* combinePos) {
    if (this->actor.colChkInfo.health == 0) {
        this->combineState = 2;
    } else {
        this->actor.flags |= ACTOR_FLAG_10;
        Math_Vec3f_Copy(&this->combinePos, combinePos);
        this->combineState = 1;
        if (this->actionFunc != EnSnowman_Hide) {
            this->combineTimer = 400;
            this->targetScaleDuringCombine = 0.01f;
        }

        if (this->actor.draw == EnSnowman_DrawSnowPile) {
            this->actor.speedXZ = 3.0f;
            this->actionFunc = EnSnowman_Combine;
        } else {
            this->isHoldingSnowball = false;
            this->actor.speedXZ = 0.0f;
            EnSnowman_SetupHide(this, globalCtx);
        }
    }
}

void EnSnowman_Combine(EnSnowman* this, GlobalContext* globalCtx) {
    EnSnowman* parent;
    EnSnowman* child;

    SkelAnime_Update(&this->snowPileSkelAnime);
    parent = (EnSnowman*)this->actor.parent;
    child = (EnSnowman*)this->actor.child;
    Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_YawToPoint(&this->actor, &this->combinePos), 0x1000);
    this->actor.world.rot.y = this->actor.shape.rot.y;

    if (this->combineState == 1) {
        if (this->collider.base.ocFlags1 & OC1_HIT) {
            if ((this->collider.base.oc == this->actor.parent) && (parent->combineState == 1)) {
                if (this->actor.scale.x < this->actor.parent->scale.x) {
                    EnSnowman_PrepareForCombine(this, parent);
                } else {
                    EnSnowman_PrepareForCombine(parent, this);
                }
            } else if ((this->collider.base.oc == this->actor.child) && (child->combineState == 1)) {
                if (this->actor.scale.x < this->actor.child->scale.x) {
                    EnSnowman_PrepareForCombine(this, child);
                } else {
                    EnSnowman_PrepareForCombine(child, this);
                }
            }
        }

        if (parent->combineState == 2) {
            EnSnowman_PrepareForCombine(parent, this);
        }

        if (child->combineState == 2) {
            EnSnowman_PrepareForCombine(child, this);
        }
    }

    if ((this->combineTimer == 0) && (parent->targetScaleDuringCombine > 0.0f) &&
        (child->targetScaleDuringCombine > 0.0f) && (this->targetScaleDuringCombine < 0.011f) &&
        (this->combineState != 3)) {
        this->combineState = 2;
        this->targetScaleDuringCombine = 0.0f;
    }

    if (Actor_XZDistanceToPoint(&this->actor, &this->combinePos) < 20.0f) {
        this->actor.speedXZ = 0.0f;
    }

    if (Math_StepToF(&this->actor.scale.x, this->targetScaleDuringCombine, 0.0005f)) {
        if (this->targetScaleDuringCombine < 0.01f) {
            EnSnowman_SetupSplitDead(this);
        } else if (this->targetScaleDuringCombine > 0.018f) {
            Actor_SetScale(&this->actor, 0.02f);
            this->actor.params = EN_SNOWMAN_TYPE_LARGE;
            this->actor.flags |= ACTOR_FLAG_400;
            this->collider.base.ocFlags1 |= OC1_ON;
            this->combineState = 3;
            this->eenoScale = 2.0f;
            EnSnowman_SetupMoveSnowPile(this);
        }
    }

    this->actor.scale.y = this->actor.scale.x;
    this->actor.scale.z = this->actor.scale.x;
}

void EnSnowman_UpdateDamage(EnSnowman* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_SetDropFlag(&this->actor, &this->collider.info);
        if ((this->actor.colChkInfo.damageEffect != EN_SNOWMAN_DMGEFF_HOOKSHOT) ||
            (EN_SNOWMAN_GET_TYPE(&this->actor) != EN_SNOWMAN_TYPE_LARGE)) {
            if (this->actor.colChkInfo.damageEffect == EN_SNOWMAN_DMGEFF_FIRE_ARROW) {
                Enemy_StartFinishingBlow(globalCtx, &this->actor);
                Actor_ApplyDamage(&this->actor);
                EnSnowman_SetupMelt(this);
            } else {
                if ((this->actionFunc == EnSnowman_MoveSnowPile) || (this->actionFunc == EnSnowman_Combine)) {
                    EnSnowman_SetupSurface(this, globalCtx);
                } else if (this->actor.colChkInfo.damageEffect == EN_SNOWMAN_DMGEFF_STUN) {
                    Actor_SetColorFilter(&this->actor, 0, 255, 0, 40);
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_FREEZE);
                    EnSnowman_SetupStun(this);
                } else if (this->actor.colChkInfo.damageEffect == EN_SNOWMAN_DMGEFF_ZORA_MAGIC) {
                    Actor_SetColorFilter(&this->actor, 0, 255, 0, 40);
                    this->drawDmgEffScale = 0.55f;
                    this->drawDmgEffAlpha = 2.0f;
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_ELECTRIC_SPARKS_LARGE;
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_COMMON_FREEZE);
                    EnSnowman_SetupStun(this);
                } else if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) {
                    if (this->isHoldingSnowball == true) {
                        this->isHoldingSnowball = false;
                        EnSnowman_CreateBigSnowballFragmentEffects(this, globalCtx);
                    }

                    EnSnowman_SetupDamage(this);
                } else {
                    if (Actor_ApplyDamage(&this->actor) == 0) {
                        Enemy_StartFinishingBlow(globalCtx, &this->actor);
                    }

                    EnSnowman_SetupDamage(this);
                }
            }

            if (this->actor.colChkInfo.damageEffect == EN_SNOWMAN_DMGEFF_LIGHT_ARROW) {
                this->drawDmgEffScale = 0.55f;
                this->drawDmgEffAlpha = 4.0f;
                this->drawDmgEffType = ACTOR_DRAW_DMGEFF_LIGHT_ORBS;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG, this->collider.info.bumper.hitPos.x,
                            this->collider.info.bumper.hitPos.y, this->collider.info.bumper.hitPos.z, 0, 0, 0,
                            CLEAR_TAG_LARGE_LIGHT_RAYS);
            }
        }
    }
}

void EnSnowman_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSnowman* this = THIS;
    f32 wallCheckRadius;

    if (this->actionFunc != EnSnowman_SplitDead) {
        DECR(this->combineTimer);

        EnSnowman_UpdateDamage(this, globalCtx);
        this->actionFunc(this, globalCtx);

        if (this->actionFunc != EnSnowman_MarkForDeath) {
            Actor_MoveWithGravity(&this->actor);
            if ((EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_LARGE) &&
                (this->actionFunc == EnSnowman_ReadySnowball)) {
                wallCheckRadius = (this->skelAnime.curFrame * 0.016666668f) + 1.0f;
                wallCheckRadius = CLAMP_MAX(wallCheckRadius, 1.3f);
                wallCheckRadius *= this->collider.dim.radius;
            } else {
                wallCheckRadius = this->collider.dim.radius;
            }

            Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, wallCheckRadius, 0.0f, 0x1D);
            if ((this->actor.floorPoly != NULL) && ((this->actor.floorPoly->normal.y * SHT_MINV) < 0.7f)) {
                Math_Vec3f_Copy(&this->actor.world.pos, &this->actor.prevPos);
                if (!this->turningOnSteepSlope) {
                    this->snowPileTargetRotY = Math_FAtan2F(this->actor.floorPoly->normal.z * SHT_MINV,
                                                            this->actor.floorPoly->normal.x * SHT_MINV);
                    this->turningOnSteepSlope = true;
                }
            } else {
                func_800BE3D0(&this->actor, this->actor.shape.rot.y, &this->actor.shape.rot);
            }

            Collider_UpdateCylinder(&this->actor, &this->collider);
            if (this->collider.base.acFlags & AC_ON) {
                CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

            if (this->actor.draw == EnSnowman_Draw) {
                Actor_SetFocus(&this->actor, this->actor.scale.y * 1800.0f);
            } else {
                Actor_SetFocus(&this->actor, this->actor.scale.y * 720.0f);
            }

            if (this->drawDmgEffAlpha > 0.0f) {
                Math_StepToF(&this->drawDmgEffAlpha, 0.0f, 0.05f);
                this->drawDmgEffScale = (this->drawDmgEffAlpha + 1.0f) * 0.275f;
                this->drawDmgEffScale = CLAMP_MAX(this->drawDmgEffScale, 0.55f);
            }
        }
    }
}

void EnSnowman_UpdateSnowball(Actor* thisx, GlobalContext* globalCtx) {
    EnSnowman* this = THIS;
    s16 scale;
    s32 i;

    if (this->timer > 0) {
        this->timer--;
    } else {
        this->collider.base.ocFlags1 |= OC1_ON;
    }

    if ((this->actor.bgCheckFlags & 8) || (this->actor.bgCheckFlags & 1) || (this->actor.bgCheckFlags & 0x10) ||
        (this->collider.base.atFlags & AT_HIT) || (this->collider.base.acFlags & AC_HIT) ||
        (this->collider.base.ocFlags1 & OC1_HIT)) {
        if (EN_SNOWMAN_GET_TYPE(&this->actor) == EN_SNOWMAN_TYPE_SMALL_SNOWBALL) {
            scale = 10;
            for (i = 0; i < 3; i++) {
                EffectSsHahen_SpawnBurst(globalCtx, &thisx->world.pos, 5.0f, 0, scale, scale >> 1, 3, 452, 20,
                                         sSnowFragmentDLs[i]);
                scale *= 2;
            }

            func_800B0DE0(globalCtx, &this->actor.world.pos, &gZeroVec3f, &gZeroVec3f, &sDustPrimColor, &sDustEnvColor,
                          500, 30);
            SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_SMALL_SNOWBALL_BROKEN);
        } else {
            Math_Vec3f_Copy(&this->snowballPos, &this->actor.world.pos);
            EnSnowman_CreateBigSnowballFragmentEffects(this, globalCtx);
            SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 20, NA_SE_EV_SNOWBALL_BROKEN);
        }

        SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 20, NA_SE_IT_REFLECTION_WOOD);
        Actor_MarkForDeath(&this->actor);
    } else {
        this->actor.shape.rot.x += 0xF00;
        Actor_MoveWithGravity(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, this->collider.dim.radius * 0.6f,
                                this->collider.dim.height - this->collider.dim.yShift, 0x1F);
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

/**
 * This maps a given limb based on its limbIndex to its appropriate index
 * in the bodyPartsPos array. An index of -1 indicates that the limb is
 * not part of the bodyPartsPos array.
 */
static s8 sLimbIndexToBodyPartsPosIndex[] = {
    -1, -1, -1, -1, -1, -1, 0, 1, -1, 2, 3, 4,
};

static Vec3f D_80B19ADC[] = {
    { 2000.0f, 3000.0f, 0.0f }, { 2000.0f, -2000.0f, 0.0f }, { 3000.0f, 0.0f, 0.0f },
    { 1000.0f, 0.0f, 3000.0f }, { 1000.0f, 0.0f, -3000.0f },
};

void EnSnowman_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnSnowman* this = THIS;
    s32 pad;
    Gfx* gfx;
    s32 i;

    if (sLimbIndexToBodyPartsPosIndex[limbIndex] != -1) {
        if (sLimbIndexToBodyPartsPosIndex[limbIndex] == 4) {
            for (i = 0; i < 5; i++) {
                Matrix_MultiplyVector3fByState(&D_80B19ADC[i], &this->bodyPartsPos[i + 4]);
            }
        } else {
            Matrix_GetStateTranslation(&this->bodyPartsPos[sLimbIndexToBodyPartsPosIndex[limbIndex]]);
        }
    }

    if ((limbIndex == EENO_LIMB_RIGHT_HAND) && (this->isHoldingSnowball == true)) {
        OPEN_DISPS(globalCtx->state.gfxCtx);

        gfx = POLY_OPA_DISP;

        if (EN_SNOWMAN_GET_TYPE(thisx) != EN_SNOWMAN_TYPE_LARGE) {
            Matrix_InsertTranslation(800.0f, -600.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_InsertTranslation(300.0f, -2300.0f, -1900.0f, MTXMODE_APPLY);
            Matrix_Scale(0.3f, 0.3f, 0.3f, MTXMODE_APPLY);
        }

        gSPMatrix(&gfx[0], Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(&gfx[1], sSnowballDLs[EN_SNOWMAN_GET_TYPE(&this->actor)]);

        POLY_OPA_DISP = &gfx[2];

        CLOSE_DISPS(globalCtx->state.gfxCtx);

        Matrix_GetStateTranslation(&this->snowballPos);
    }
}

void EnSnowman_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnSnowman* this = THIS;

    func_8012C28C(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          NULL, EnSnowman_PostLimbDraw, &this->actor);
    Actor_DrawDamageEffects(globalCtx, &this->actor, this->bodyPartsPos, ARRAY_COUNT(this->bodyPartsPos),
                            this->drawDmgEffScale * this->eenoScale, 0.0f, this->drawDmgEffAlpha, this->drawDmgEffType);
}

void EnSnowman_DrawSnowPile(Actor* thisx, GlobalContext* globalCtx) {
    EnSnowman* this = THIS;

    func_8012C28C(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->snowPileSkelAnime.skeleton, this->snowPileSkelAnime.jointTable,
                          this->snowPileSkelAnime.dListCount, NULL, NULL, &this->actor);
}

void EnSnowman_DrawSnowball(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, sSnowballDLs[thisx->params - 3]);
}
