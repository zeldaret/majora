/*
 * File: z_en_railgibud.c
 * Overlay: ovl_En_Railgibud
 * Description: Music Box House - Patrolling Gibdos
 */

#include "z_en_railgibud.h"
#include "objects/object_rd/object_rd.h"

#define FLAGS 0x00000415

#define THIS ((EnRailgibud*)thisx)

void EnRailgibud_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80BA57A8(EnRailgibud* this);
void func_80BA57F8(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupAttemptPlayerStun(EnRailgibud* this);
void EnRailgibud_AttemptPlayerStun(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupWalkToPlayer(EnRailgibud* this);
void EnRailgibud_WalkToPlayer(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupGrab(EnRailgibud* this);
void EnRailgibud_Grab(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupGrabFail(EnRailgibud* this);
void EnRailgibud_GrabFail(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupTurnAwayAndShakeHead(EnRailgibud* this);
void EnRailgibud_TurnAwayAndShakeHead(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupWalkToHome(EnRailgibud* this);
void EnRailgibud_WalkToHome(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_Damage(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_Stunned(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupDead(EnRailgibud* this);
void EnRailgibud_Dead(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA6974(GlobalContext* globalCtx, Vec3f* vec, f32 arg2, s32 arg3, s16 arg4, s16 arg5);
void EnRailgibud_TurnTowardsPlayer(EnRailgibud* this, GlobalContext* globalCtx);
s32 func_80BA6D10(EnRailgibud* this, GlobalContext* globalCtx);
s32 func_80BA6DAC(EnRailgibud* this, GlobalContext* globalCtx);
s32 EnRailgibud_MoveToIdealGrabPositionAndRotation(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA7578(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA7878(Actor* thisx, GlobalContext* globalCtx);
void func_80BA7B6C(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA7C78(EnRailgibud* this);
void func_80BA7CF0(EnRailgibud* this);
void func_80BA7D04(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA7D30(EnRailgibud* this, GlobalContext* globalCtx);
void func_80BA8050(Actor* thisx, GlobalContext* globalCtx);

typedef enum {
    /* 0 */ EN_RAILGIBUD_TYPE_GIBDO,
    /* 1 */ EN_RAILGIBUD_TYPE_REDEAD,
} EnRailgibudType;

typedef enum {
    /* 0 */ EN_RAILGIBUD_GRAB_START,
    /* 1 */ EN_RAILGIBUD_GRAB_ATTACK,
    /* 2 */ EN_RAILGIBUD_GRAB_RELEASE,
} EnRailgibudGrabState;

const ActorInit En_Railgibud_InitVars = {
    ACTOR_EN_RAILGIBUD,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_RD,
    sizeof(EnRailgibud),
    (ActorFunc)EnRailgibud_Init,
    (ActorFunc)EnRailgibud_Destroy,
    (ActorFunc)EnRailgibud_Update,
    (ActorFunc)EnRailgibud_Draw,
};

static ActorAnimationEntry sAnimations[] = {
    { &gGibdoRedeadGrabAttackAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadGrabEndAnim, 0.5f, 0.0f, 0.0f, 3, 0.0f },
    { &gGibdoRedeadGrabStartAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadLookBackAnim, 0.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadWipingTearsAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadSobbingAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadDeathAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadDamageAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadStandUpAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadIdleAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadWalkAnim, 0.4f, 0.0f, 0.0f, 1, -8.0f },
    { &gGibdoRedeadSquattingDanceAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadPirouetteAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadClappingDanceAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadStandUpAnim, 3.0f, 0.0f, 0.0f, 2, -6.0f },
    { &gGibdoRedeadSlumpStartAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadSlumpLoopAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadConvulsionAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
    { &gGibdoRedeadArmsUpStartAnim, 1.0f, 0.0f, 0.0f, 2, -8.0f },
    { &gGibdoRedeadArmsUpLoopAnim, 1.0f, 0.0f, 0.0f, 0, -8.0f },
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0xF7EFFFFF, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 70, 0, { 0, 0, 0 } },
};

typedef enum {
    /* 0x0 */ EN_RAILGIBUD_DMGEFF_NONE,       // Does not interact with the Gibdo/Redead at all
    /* 0x1 */ EN_RAILGIBUD_DMGEFF_STUN,       // Stuns without applying any effect
    /* 0x2 */ EN_RAILGIBUD_DMGEFF_FIRE_ARROW, // Damages, applies a fire effect, and changes a Gibdo into a Redead
    /* 0x4 */ EN_RAILGIBUD_DMGEFF_LIGHT_ARROW = 0x4, // Damages and applies a light effect
    /* 0xC */ EN_RAILGIBUD_DMGEFF_ZORA_MAGIC = 0xC,  // Stuns and applies an electric effect
    /* 0xD */ EN_RAILGIBUD_DMGEFF_RECOIL,            // Deals no damage, but displays hit mark and recoil animation
    /* 0xE */ EN_RAILGIBUD_DMGEFF_LIGHT_RAY,         // Instantly kills a Redead on contact
    /* 0xF */ EN_RAILGIBUD_DMGEFF_DAMAGE,            // Deals damage and plays the damage animation
} EnRailgibudDamageEffect;

static DamageTable sDamageTable = {
    /* Deku Nut       */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Deku Stick     */ DMG_ENTRY(2, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Horse trample  */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Explosives     */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Zora boomerang */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_RECOIL),
    /* Normal arrow   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_RECOIL),
    /* UNK_DMG_0x06   */ DMG_ENTRY(2, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Hookshot       */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_RECOIL),
    /* Goron punch    */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Sword          */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Goron pound    */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Fire arrow     */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_FIRE_ARROW),
    /* Ice arrow      */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_RECOIL),
    /* Light arrow    */ DMG_ENTRY(2, EN_RAILGIBUD_DMGEFF_LIGHT_ARROW),
    /* Goron spikes   */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Deku spin      */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_STUN),
    /* Deku bubble    */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_RECOIL),
    /* Deku launch    */ DMG_ENTRY(2, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Zora barrier   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_ZORA_MAGIC),
    /* Normal shield  */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Light ray      */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_LIGHT_RAY),
    /* Thrown object  */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Zora punch     */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Spin attack    */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
    /* Sword beam     */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Normal Roll    */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Unblockable    */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, EN_RAILGIBUD_DMGEFF_NONE),
    /* Powder Keg     */ DMG_ENTRY(1, EN_RAILGIBUD_DMGEFF_DAMAGE),
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 8, 0, 0, 0, MASS_IMMOVABLE };

void func_80BA5400(EnRailgibud* this, GlobalContext* globalCtx) {
    static s32 D_80BA82F8 = 0;
    s32 phi_a3;
    Vec3f sp70;
    Path* path = &globalCtx->setupPathList[ENRAILGIBUD_GET_FF00(&this->actor)];

    this->unk_294 = Lib_SegmentedToVirtual(path->points);
    this->unk_298 = D_80BA82F8;
    this->unk_29C = path->count;
    if (D_80BA82F8 == 0) {
        s32 i;

        for (i = 1; i < this->unk_29C && i < 10; i++) {
            D_80BA82F8++;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_RAILGIBUD, 0.0f, 0.0f, 0.0f, 0,
                               0, 0, this->actor.params);
        }
        D_80BA82F8 = 0;
    }

    this->actor.world.pos.x = this->unk_294[this->unk_298].x;
    this->actor.world.pos.y = this->unk_294[this->unk_298].y;
    this->actor.world.pos.z = this->unk_294[this->unk_298].z;
    if (this->unk_298 < (this->unk_29C - 1)) {
        phi_a3 = this->unk_298 + 1;
    } else {
        phi_a3 = 0;
    }

    sp70.x = this->unk_294[phi_a3].x;
    sp70.y = this->unk_294[phi_a3].y;
    sp70.z = this->unk_294[phi_a3].z;
    this->actor.world.rot.y = this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &sp70);

    this->actor.home = this->actor.world;
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(targetArrowOffset, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

void EnRailgibud_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.targetMode = 0;
    this->actor.hintId = 0x2D;
    this->actor.textId = 0;
    if (ENRAILGIBUD_GET_80(&this->actor)) {
        func_80BA7B6C(this, globalCtx);
        return;
    }

    func_80BA5400(this, globalCtx);
    this->playerStunWaitTimer = 0;
    this->timeInitialized = gSaveContext.time;
    this->effectType = 0;
    this->type = EN_RAILGIBUD_TYPE_GIBDO;
    this->textId = 0;
    this->isInvincible = false;
    if (this->actor.parent == NULL) {
        this->unk_3EC = 1;
        this->unk_3EE = 1;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, func_800B3FC0, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGibdoSkel, &gGibdoRedeadIdleAnim, this->jointTable,
                       this->morphTable, REDEAD_GIBDO_LIMB_MAX);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if (gSaveContext.weekEventReg[14] & 4) {
        Actor_MarkForDeath(&this->actor);
    }

    func_80BA57A8(this);
}

void EnRailgibud_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80BA57A8(EnRailgibud* this) {
    this->actor.speedXZ = 0.6f;
    func_800BDC5C(&this->skelAnime, sAnimations, 10);
    this->actionFunc = func_80BA57F8;
}

void func_80BA57F8(EnRailgibud* this, GlobalContext* globalCtx) {
    Vec3f sp3C;
    s32 pad;
    s16 sp36;

    sp3C.x = this->unk_294[this->unk_298].x;
    sp3C.y = this->unk_294[this->unk_298].y;
    sp3C.z = this->unk_294[this->unk_298].z;

    if ((this->actor.xzDistToPlayer <= 100.0f) && func_800B715C(globalCtx) &&
        (Player_GetMask(globalCtx) != PLAYER_MASK_GIBDO)) {
        this->actor.home = this->actor.world;
        EnRailgibud_SetupAttemptPlayerStun(this);
    }

    Math_SmoothStepToS(&this->headRotation.y, 0, 1, 0x64, 0);
    Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 0x64, 0);

    if (this->actor.parent == NULL) {
        if (this->unk_3EC != 0) {
        } else {
            return;
        }
    } else {
        EnRailgibud* parent = (EnRailgibud*)this->actor.parent;

        if (parent->unk_3EC == 0) {
            return;
        }
    }

    sp36 = Math_Vec3f_Yaw(&this->actor.world.pos, &sp3C);
    if (Math_Vec3f_DistXZ(&this->actor.world.pos, &sp3C) > 60.0f) {
        Math_SmoothStepToS(&this->actor.world.rot.y, sp36, 1, 0x190, 0xA);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    } else if (this->unk_298 < (this->unk_29C - 1)) {
        this->unk_298++;
    } else {
        this->unk_298 = 0;
    }
    Actor_SetVelocityAndMoveYRotationAndGravity(&this->actor);
}

void EnRailgibud_SetupAttemptPlayerStun(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 9);
    this->actionFunc = EnRailgibud_AttemptPlayerStun;
}

void EnRailgibud_AttemptPlayerStun(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s16 rot = this->actor.shape.rot.y + this->headRotation.y + this->upperBodyRotation.y;
    s16 yaw = BINANG_SUB(this->actor.yawTowardsPlayer, rot);

    if (ABS_ALT(yaw) < 0x2008) {
        player->actor.freezeTimer = 60;
        func_8013ECE0(this->actor.xzDistToPlayer, 255, 20, 150);
        func_80123E90(globalCtx, &this->actor);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_AIM);
        EnRailgibud_SetupWalkToPlayer(this);
    }
    EnRailgibud_TurnTowardsPlayer(this, globalCtx);
}

void EnRailgibud_SetupWalkToPlayer(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 10);
    this->actor.speedXZ = 0.4f;
    if (this->actionFunc == EnRailgibud_AttemptPlayerStun) {
        this->playerStunWaitTimer = 80;
    } else {
        this->playerStunWaitTimer = 20;
    }
    this->actionFunc = EnRailgibud_WalkToPlayer;
}

void EnRailgibud_WalkToPlayer(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s32 pad;

    Math_ScaledStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsPlayer, 0xFA);
    this->actor.world.rot = this->actor.shape.rot;
    Math_SmoothStepToS(&this->headRotation.y, 0, 1, 0x64, 0);
    Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 0x64, 0);
    if (func_80BA6D10(this, globalCtx) && Actor_IsActorFacingLink(&this->actor, 0x38E3)) {
        if ((this->grabWaitTimer == 0) && (this->actor.xzDistToPlayer <= 45.0f)) {
            player->actor.freezeTimer = 0;
            if ((gSaveContext.playerForm == PLAYER_FORM_GORON) || (gSaveContext.playerForm == PLAYER_FORM_DEKU)) {
                // If the Gibdo/Redead tries to grab Goron or Deku Link, it will fail to
                // do so. It will appear to take damage and shake its head side-to-side.
                EnRailgibud_SetupGrabFail(this);
            } else if (globalCtx->grabPlayer(globalCtx, player)) {
                EnRailgibud_SetupGrab(this);
            }
        } else {
            if (this->playerStunWaitTimer == 0) {
                player->actor.freezeTimer = 40;
                this->playerStunWaitTimer = 60;
                func_8013ECE0(this->actor.xzDistToPlayer, 255, 20, 150);
                func_80123E90(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_AIM);
            } else {
                this->playerStunWaitTimer--;
            }
        }
    } else if ((this->grabWaitTimer == 0) && (this->actor.xzDistToPlayer <= 45.0f)) {
        EnRailgibud_SetupWalkToHome(this);
    } else if (func_80BA6DAC(this, globalCtx)) {
        EnRailgibud_SetupWalkToHome(this);
    }

    if (this->grabWaitTimer > 0) {
        this->grabWaitTimer--;
    }

    if (Animation_OnFrame(&this->skelAnime, 10.0f) || Animation_OnFrame(&this->skelAnime, 22.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_WALK);
    } else if ((globalCtx->gameplayFrames & 95) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void EnRailgibud_SetupGrab(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 2);
    this->grabDamageTimer = 0;
    this->actor.flags &= ~1;
    this->grabState = EN_RAILGIBUD_GRAB_START;
    this->actionFunc = EnRailgibud_Grab;
}

void EnRailgibud_Grab(EnRailgibud* this, GlobalContext* globalCtx) {
    // This function needs to have two different temps for Player to match,
    // but you don't have to necessarily use them both. This is just the most
    // likely scenario; they got an Actor* pointer in the first temp, then
    // casted it to Player* in the second temp.
    Actor* playerActor = &GET_PLAYER(globalCtx)->actor;
    Player* player = (Player*)playerActor;
    s32 inPositionToAttack;
    u16 damageSfxId;

    switch (this->grabState) {
        case EN_RAILGIBUD_GRAB_START:
            inPositionToAttack = EnRailgibud_MoveToIdealGrabPositionAndRotation(this, globalCtx);
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) && (inPositionToAttack == true)) {
                this->grabState = EN_RAILGIBUD_GRAB_ATTACK;
                func_800BDC5C(&this->skelAnime, sAnimations, 0);
            } else if (!(player->stateFlags2 & 0x80)) {
                func_800BDC5C(&this->skelAnime, sAnimations, 1);
                this->actor.flags |= 1;
                this->grabState = EN_RAILGIBUD_GRAB_RELEASE;
                this->grabDamageTimer = 0;
            }
            break;

        case EN_RAILGIBUD_GRAB_ATTACK:
            if (this->grabDamageTimer == 20) {
                s16 requiredScopeTemp;

                damageSfxId = player->ageProperties->unk_92 + NA_SE_VO_LI_DAMAGE_S;
                globalCtx->damagePlayer(globalCtx, -8);
                func_800B8E58(playerActor, damageSfxId);
                func_8013ECE0(this->actor.xzDistToPlayer, 240, 1, 12);
                this->grabDamageTimer = 0;
            } else {
                this->grabDamageTimer++;
            }

            if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_ATTACK);
            }

            if (!(player->stateFlags2 & 0x80) || (player->unk_B62 != 0)) {
                if ((player->unk_B62 != 0) && (player->stateFlags2 & 0x80)) {
                    player->stateFlags2 &= ~0x80;
                    player->unk_AE8 = 100;
                }
                func_800BDC5C(&this->skelAnime, sAnimations, 1);
                this->actor.flags |= 1;
                this->grabState = EN_RAILGIBUD_GRAB_RELEASE;
                this->grabDamageTimer = 0;
            }
            break;

        case EN_RAILGIBUD_GRAB_RELEASE:
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                this->grabWaitTimer = 40;
                this->actor.shape.yOffset = 0.0f;
                EnRailgibud_SetupWalkToPlayer(this);
            } else {
                Math_SmoothStepToF(&this->actor.shape.yOffset, 0.0f, 1.0f, 400.0f, 0.0f);
            }
            break;
    }
}

void EnRailgibud_SetupGrabFail(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 7);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
    this->actor.speedXZ = -2.0f;
    this->actionFunc = EnRailgibud_GrabFail;
}

void EnRailgibud_GrabFail(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->actor.speedXZ < 0.0f) {
        this->actor.speedXZ += 0.15f;
    }

    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    Math_SmoothStepToS(&this->headRotation.y, 0, 1, 0x12C, 0);
    Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 0x12C, 0);
    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        this->actor.world.rot.y = this->actor.shape.rot.y;
        EnRailgibud_SetupTurnAwayAndShakeHead(this);
    }
}

void EnRailgibud_SetupTurnAwayAndShakeHead(EnRailgibud* this) {
    this->headShakeTimer = 0;
    func_800BDC5C(&this->skelAnime, sAnimations, 10);
    this->actionFunc = EnRailgibud_TurnAwayAndShakeHead;
}

void EnRailgibud_TurnAwayAndShakeHead(EnRailgibud* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->actor.world.rot.y, BINANG_ROT180(this->actor.yawTowardsPlayer), 5, 3500, 200);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    if (this->headShakeTimer > 60) {
        EnRailgibud_SetupWalkToHome(this);
        this->playerStunWaitTimer = 0;
    } else {
        this->headRotation.y =
            Math_SinS(this->headShakeTimer * 4000) * (0x256F * ((60 - this->headShakeTimer) / 60.0f));
        this->headShakeTimer++;
    }
}

void EnRailgibud_SetupWalkToHome(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 10);
    this->actor.speedXZ = 0.4f;
    this->actionFunc = EnRailgibud_WalkToHome;
}

void EnRailgibud_WalkToHome(EnRailgibud* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->headRotation.y, 0, 1, 100, 0);
    Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 100, 0);
    if (Actor_XZDistanceToPoint(&this->actor, &this->actor.home.pos) < 5.0f) {
        if (this->actor.speedXZ > 0.2f) {
            this->actor.speedXZ -= 0.2f;
        } else {
            this->actor.speedXZ = 0.0f;
        }
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.home.rot.y, 1, 200, 10);
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if (this->actor.world.rot.y == this->actor.home.rot.y) {
            func_80BA57A8(this);
        }
    } else {
        Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_YawToPoint(&this->actor, &this->actor.home.pos), 450);
        this->actor.world.rot = this->actor.shape.rot;
    }
    if (func_80BA6D10(this, globalCtx)) {
        if ((gSaveContext.playerForm != PLAYER_FORM_GORON) && (gSaveContext.playerForm != PLAYER_FORM_DEKU) &&
            Actor_IsActorFacingLink(&this->actor, 0x38E3)) {
            EnRailgibud_SetupWalkToPlayer(this);
        }
    }
}

void EnRailgibud_SetupDamage(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 7);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
    this->stunTimer = 0;
    this->grabWaitTimer = 0;
    this->actor.world.rot.y = this->actor.yawTowardsPlayer;
    this->actor.speedXZ = -2.0f;
    this->actionFunc = EnRailgibud_Damage;
}

void EnRailgibud_Damage(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->actor.speedXZ < 0.0f) {
        this->actor.speedXZ += 0.15f;
    }

    if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        this->unk_405 = -1;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        if ((this->effectTimer > 0) && (this->effectType == 0) && (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
            this->actor.hintId = 0x2A;
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gRedeadSkel, NULL, this->jointTable, this->morphTable,
                               REDEAD_GIBDO_LIMB_MAX);
            this->type = EN_RAILGIBUD_TYPE_REDEAD;
        }
        EnRailgibud_SetupWalkToHome(this);
    }
}

void EnRailgibud_SetupStunned(EnRailgibud* this) {
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->stunTimer = 10;
    if (this->effectTimer != 0) {
        func_800BCB70(&this->actor, 0, 0xC8, 0, 0x28);
    } else {
        func_800BCB70(&this->actor, 0, 0xC8, 0, 0x28);
    }
    this->actionFunc = EnRailgibud_Stunned;
}

void EnRailgibud_Stunned(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->actor.colorFilterTimer == 0) {
        if (this->actor.colChkInfo.health == 0) {
            EnRailgibud_SetupDead(this);
        } else {
            EnRailgibud_SetupDamage(this);
        }
    }

    if (this->stunTimer != 0) {
        this->stunTimer--;
    }
}

void EnRailgibud_SetupDead(EnRailgibud* this) {
    func_800BDC5C(&this->skelAnime, sAnimations, 6);
    this->actor.flags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_DEAD);
    this->deathTimer = 0;
    this->actionFunc = EnRailgibud_Dead;
}

void EnRailgibud_Dead(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->deathTimer > 300) {
        if (this->actor.shape.shadowAlpha == 0) {
            if (this->actor.parent != NULL) {
                Actor_MarkForDeath(&this->actor);
            } else {
                this->actor.draw = NULL;
                this->actor.flags &= ~1;
                this->actor.update = func_80BA7878;
            }
        } else {
            this->actor.shape.shadowAlpha -= 5;
            if (this->actor.shape.shadowAlpha < 5) {
                this->actor.shape.shadowAlpha = 0;
            }
        }
    } else {
        Math_SmoothStepToS(&this->headRotation.y, 0, 1, 250, 0);
        Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 250, 0);
        this->deathTimer++;
    }

    if ((this->deathTimer == 20) && (this->effectTimer > 0) && (this->effectType == 0) &&
        (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gRedeadSkel, NULL, this->jointTable, this->morphTable,
                           REDEAD_GIBDO_LIMB_MAX);
        this->type = EN_RAILGIBUD_TYPE_REDEAD;
    }
}

void func_80BA6800(EnRailgibud* this, GlobalContext* globalCtx, s32 arg2) {
    Vec3f sp5C = this->actor.world.pos;
    Vec3f sp50 = { 0.0f, 8.0f, 0.0f };
    Vec3f sp44 = { 0.0f, -1.5f, 0.0f };
    s16 rand;
    s32 pad;

    if ((globalCtx->gameplayFrames & arg2) == 0) {
        rand = Rand_Next();
        sp5C.x += 15.0f * Math_SinS(rand);
        sp5C.z += 15.0f * Math_CosS(rand);
        sp44.x = Rand_Centered();
        sp44.z = Rand_Centered();
        sp50.y += Rand_Centered() * 4.0f;
        EffectSsHahen_Spawn(globalCtx, &sp5C, &sp50, &sp44, 0, (Rand_Next() & 7) + 10, -1, 10, NULL);
        func_80BA6974(globalCtx, &sp5C, 10.0f, 10, 150, 0);
    }
}

void func_80BA6974(GlobalContext* globalCtx, Vec3f* vec, f32 arg2, s32 arg3, s16 arg4, s16 arg5) {
    Vec3f sp8C;
    Vec3f sp80 = { 0.0f, 0.3f, 0.0f };
    Vec3f sp74 = gZeroVec3f;
    s32 i;
    s32 pad;

    sp74.y = 2.5f;

    for (i = arg3; i >= 0; i--) {
        sp74.x = (Rand_ZeroOne() - 0.5f) * arg2;
        sp74.z = (Rand_ZeroOne() - 0.5f) * arg2;

        sp8C.x = vec->x + sp74.x;
        sp8C.y = ((Rand_ZeroOne() - 0.5f) * arg2) + vec->y;
        sp8C.z = vec->z + sp74.z;

        sp74.x *= 0.5f;
        sp74.z *= 0.5f;
        func_800B1210(globalCtx, &sp8C, &sp74, &sp80, (s16)(Rand_ZeroOne() * arg4 * 0.2f) + arg4, arg5);
    }
}

void func_80BA6B30(EnRailgibud* this) {
    if (this->actor.parent == NULL) {
        this->unk_3EC = this->unk_3EE;
        this->unk_3EE = 1;
        if ((this->actionFunc != func_80BA57F8) && (this->actionFunc != EnRailgibud_Dead)) {
            this->unk_3EE = 0;
        }
    } else if ((this->actionFunc != func_80BA57F8) && (this->actionFunc != EnRailgibud_Dead)) {
        ((EnRailgibud*)this->actor.parent)->unk_3EE = 0;
    }
}

void EnRailgibud_TurnTowardsPlayer(EnRailgibud* this, GlobalContext* globalCtx) {
    s16 headAngle = (this->actor.yawTowardsPlayer - this->actor.shape.rot.y) - this->upperBodyRotation.y;
    s16 upperBodyAngle = CLAMP(headAngle, -500, 500);

    headAngle -= this->headRotation.y;
    headAngle = CLAMP(headAngle, -500, 500);

    if (BINANG_SUB(this->actor.yawTowardsPlayer, this->actor.shape.rot.y) >= 0) {
        this->upperBodyRotation.y += ABS_ALT(upperBodyAngle);
        this->headRotation.y += ABS_ALT(headAngle);
    } else {
        this->upperBodyRotation.y -= ABS_ALT(upperBodyAngle);
        this->headRotation.y -= ABS_ALT(headAngle);
    }

    this->upperBodyRotation.y = CLAMP(this->upperBodyRotation.y, -0x495F, 0x495F);
    this->headRotation.y = CLAMP(this->headRotation.y, -0x256F, 0x256F);
}

s32 func_80BA6D10(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Player_GetMask(globalCtx) == PLAYER_MASK_GIBDO) {
        return false;
    }

    if ((Actor_DistanceToPoint(&player->actor, &this->actor.home.pos) < 100.0f) && !(player->stateFlags1 & 0x2C6080) &&
        !(player->stateFlags2 & 0x4080)) {
        return true;
    }

    return false;
}

s32 func_80BA6DAC(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Actor_DistanceToPoint(&player->actor, &this->actor.home.pos) >= 100.0f) {
        return true;
    }

    return false;
}

void EnRailgibud_UpdateDamage(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((this->isInvincible != true) && (this->collider.base.acFlags & AC_HIT)) {
        if (this->actionFunc == func_80BA57F8) {
            this->actor.home = this->actor.world;
        }
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_ApplyDamage(&this->actor);

        switch (this->actor.colChkInfo.damageEffect) {
            case EN_RAILGIBUD_DMGEFF_DAMAGE:
                func_800BCB70(&this->actor, 0x4000, 255, 0, 8);
                if (player->unk_ADC != 0) {
                    this->unk_405 = player->unk_ADD;
                }
                this->actor.shape.yOffset = 0.0f;
                if (this->actor.colChkInfo.health == 0) {
                    EnRailgibud_SetupDead(this);
                } else {
                    EnRailgibud_SetupDamage(this);
                }
                break;

            case EN_RAILGIBUD_DMGEFF_LIGHT_RAY:
                if (this->type == EN_RAILGIBUD_TYPE_REDEAD) {
                    this->actor.colChkInfo.health = 0;
                    this->actor.shape.yOffset = 0.0f;
                    EnRailgibud_SetupDead(this);
                }
                break;

            case EN_RAILGIBUD_DMGEFF_FIRE_ARROW:
                func_800BCB70(&this->actor, 0x4000, 255, 0, 8);
                if (this->actor.colChkInfo.health == 0) {
                    EnRailgibud_SetupDead(this);
                } else {
                    EnRailgibud_SetupDamage(this);
                }
                this->effectType = 0;
                this->effectTimer = 180;
                this->effectAlpha = 1.0f;
                break;

            case EN_RAILGIBUD_DMGEFF_LIGHT_ARROW:
                func_800BCB70(&this->actor, 0x4000, 255, 0, 8);
                if (this->actor.colChkInfo.health == 0) {
                    EnRailgibud_SetupDead(this);
                } else {
                    EnRailgibud_SetupDamage(this);
                }
                this->effectType = 20;
                this->effectTimer = 60;
                this->effectAlpha = 1.0f;
                break;

            case EN_RAILGIBUD_DMGEFF_ZORA_MAGIC:
                if ((this->actionFunc != EnRailgibud_Grab) &&
                    ((this->actionFunc != EnRailgibud_Stunned) || (this->stunTimer == 0))) {
                    this->effectType = 30;
                    this->effectTimer = 40;
                    this->effectAlpha = 1.0f;
                    EnRailgibud_SetupStunned(this);
                }
                break;

            case EN_RAILGIBUD_DMGEFF_STUN:
                if ((this->actionFunc != EnRailgibud_Stunned) || (this->stunTimer == 0)) {
                    EnRailgibud_SetupStunned(this);
                }
                break;
        }
    }
}

/**
 * Returns true if the Gibdo is in the correct position and rotation to start
 * performing its grab attack. Regardless of what this returns, the Gibdo is
 * moved closer to this ideal position and rotation.
 */
s32 EnRailgibud_MoveToIdealGrabPositionAndRotation(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    Vec3f targetPos;
    f32 distanceFromTargetPos;
    f32 distanceFromTargetYOffset = 0.0f;
    s16 distanceFromTargetAngle;

    targetPos = player->actor.world.pos;
    targetPos.x -= 25.0f * Math_SinS(player->actor.shape.rot.y);
    targetPos.z -= 25.0f * Math_CosS(player->actor.shape.rot.y);
    distanceFromTargetPos = Math_Vec3f_StepTo(&this->actor.world.pos, &targetPos, 10.0f);
    distanceFromTargetAngle = Math_SmoothStepToS(&this->actor.shape.rot.y, player->actor.shape.rot.y, 1, 0x1770, 0x64);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (gSaveContext.playerForm == PLAYER_FORM_HUMAN) {
        distanceFromTargetYOffset = Math_SmoothStepToF(&this->actor.shape.yOffset, -1500.0f, 1.0f, 150.0f, 0.0f);
    }

    if ((distanceFromTargetPos == 0.0f) && (ABS_ALT(distanceFromTargetAngle) < 100) &&
        (distanceFromTargetYOffset == 0.0f)) {
        return true;
    }

    return false;
}

void EnRailgibud_MoveWithGravity(EnRailgibud* this, GlobalContext* globalCtx) {
    if ((this->actionFunc == EnRailgibud_WalkToPlayer) || (this->actionFunc == EnRailgibud_WalkToHome) ||
        (this->actionFunc == EnRailgibud_Damage)) {
        Actor_SetVelocityAndMoveYRotationAndGravity(&this->actor);
    }
}

/**
 * If the Gibdo is starting a grab and is touching a wall, the player is moved
 * away from that wall with this function. This can happen when the player's
 * back is close to a wall before being grabbed. The Gibdo changes its own
 * position to match the player's position at the start of a grab, so moving
 * the player like this will help prevent the Gibdo from looking like it's
 * clipping into the wall as it grabs onto the player.
 */
void EnRailgibud_MoveGrabbedPlayerAwayFromWall(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    Vec3f targetPos;

    if ((this->actionFunc == EnRailgibud_Grab) && (this->grabState != EN_RAILGIBUD_GRAB_RELEASE)) {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, 20.0f, 35.0f, 1);
    } else {
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, 20.0f, 35.0f, 0x1D);
    }

    if ((this->actionFunc == EnRailgibud_Grab) && (this->grabState == EN_RAILGIBUD_GRAB_START) &&
        (this->actor.bgCheckFlags & 8)) {
        targetPos = player->actor.world.pos;
        targetPos.x += 10.0f * Math_SinS(this->actor.wallYaw);
        targetPos.z += 10.0f * Math_CosS(this->actor.wallYaw);
        Math_Vec3f_StepTo(&player->actor.world.pos, &targetPos, 5.0f);
    }
}

void EnRailgibud_UpdateEffect(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->effectTimer > 0) {
        this->effectTimer--;
    }

    if (this->effectTimer < 20) {
        Math_SmoothStepToF(&this->effectScale, 0.0f, 0.5f, 0.03f, 0.0f);
        this->effectAlpha = this->effectTimer * 0.05f;
    } else {
        Math_SmoothStepToF(&this->effectScale, 0.5f, 0.1f, 0.02f, 0.0f);
    }
}

void func_80BA7434(EnRailgibud* this, GlobalContext* globalCtx) {
    if ((this->actionFunc != EnRailgibud_Grab) && (this->actionFunc != EnRailgibud_Damage) &&
        (this->actionFunc != EnRailgibud_GrabFail) && (this->actionFunc != EnRailgibud_TurnAwayAndShakeHead) &&
        (this->actionFunc != EnRailgibud_Dead)) {
        if ((this->actor.flags & 5) == 5) {
            if (Player_GetMask(globalCtx) == PLAYER_MASK_GIBDO) {
                this->actor.flags &= ~5;
                this->actor.flags |= 9;
                this->actor.hintId = 0xFF;
                this->actor.textId = 0;
                if ((this->actionFunc != func_80BA57F8) && (this->actionFunc != EnRailgibud_WalkToHome)) {
                    EnRailgibud_SetupWalkToHome(this);
                }
            }
        } else if (Player_GetMask(globalCtx) != PLAYER_MASK_GIBDO) {
            this->actor.flags &= ~(0x8 | 0x1);
            this->actor.flags |= (0x4 | 0x1);
            if (this->type == EN_RAILGIBUD_TYPE_REDEAD) {
                this->actor.hintId = 0x2A;
            } else {
                this->actor.hintId = 0x2D;
            }
            this->actor.textId = 0;
        }
        func_80BA7578(this, globalCtx);
    }
}

void func_80BA7578(EnRailgibud* this, GlobalContext* globalCtx) {
    if ((this->textId == 0) && (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
        if (func_800B84D0(&this->actor, globalCtx)) {
            this->isInvincible = true;
            func_801518B0(globalCtx, 0x13B2, &this->actor);
            this->textId = 0x13B2;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_AIM);
            this->actor.speedXZ = 0.0f;
        } else if (((this->actor.flags & 9) == 9) && !(this->collider.base.acFlags & AC_HIT)) {
            func_800B8614(&this->actor, globalCtx, 100.0f);
        }
    } else {
        switch (func_80152498(&globalCtx->msgCtx)) {
            case 5:
                if (func_80147624(globalCtx)) {
                    func_801518B0(globalCtx, 0x13B3, &this->actor);
                    this->textId = 0x13B3;
                }
                break;

            case 6:
                if (func_80147624(globalCtx)) {
                    this->textId = 0;
                    this->isInvincible = false;
                    this->actor.speedXZ = 0.6f;
                }
                break;

            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                break;
        }
    }
}

void EnRailgibud_CheckCollision(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((this->actionFunc != EnRailgibud_Dead) &&
        ((this->actionFunc != EnRailgibud_Grab) || (this->grabState == EN_RAILGIBUD_GRAB_RELEASE))) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (((this->actionFunc != EnRailgibud_Damage) ||
             ((player->unk_ADC != 0) && (player->unk_ADD != this->unk_405))) &&
            ((this->actionFunc != EnRailgibud_Stunned) || (this->stunTimer == 0))) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void EnRailgibud_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    func_80BA6B30(this);
    func_80BA7434(this, globalCtx);
    EnRailgibud_UpdateDamage(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != EnRailgibud_Stunned) {
        SkelAnime_Update(&this->skelAnime);
    }
    EnRailgibud_MoveWithGravity(this, globalCtx);
    EnRailgibud_CheckCollision(this, globalCtx);
    EnRailgibud_MoveGrabbedPlayerAwayFromWall(this, globalCtx);
    EnRailgibud_UpdateEffect(this, globalCtx);
    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 50.0f;
}

void func_80BA7878(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    func_80BA6B30(this);
}

s32 EnRailgibud_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 Actor* thisx, Gfx** gfx) {
    EnRailgibud* this = THIS;

    if (limbIndex == REDEAD_GIBDO_LIMB_UPPER_BODY_ROOT) {
        rot->y += this->upperBodyRotation.y;
    } else if (limbIndex == REDEAD_GIBDO_LIMB_HEAD_ROOT) {
        rot->y += this->headRotation.y;
    }

    return false;
}

void EnRailgibud_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx,
                              Gfx** gfx) {
    EnRailgibud* this = THIS;

    if ((this->effectTimer != 0) &&
        ((limbIndex == REDEAD_GIBDO_LIMB_LEFT_THIGH) || (limbIndex == REDEAD_GIBDO_LIMB_LEFT_LOWER_LEG) ||
         (limbIndex == REDEAD_GIBDO_LIMB_LEFT_FOOT) || (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_THIGH) ||
         (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_LOWER_LEG) || (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_FOOT) ||
         (limbIndex == REDEAD_GIBDO_LIMB_TORSO) || (limbIndex == REDEAD_GIBDO_LIMB_LEFT_SHOULDER_AND_UPPER_ARM) ||
         (limbIndex == REDEAD_GIBDO_LIMB_LEFT_FOREARM) || (limbIndex == REDEAD_GIBDO_LIMB_LEFT_HAND) ||
         (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_SHOULDER_AND_UPPER_ARM) ||
         (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_FOREARM) || (limbIndex == REDEAD_GIBDO_LIMB_RIGHT_HAND) ||
         (limbIndex == REDEAD_GIBDO_LIMB_HEAD) || (limbIndex == REDEAD_GIBDO_LIMB_PELVIS))) {
        Matrix_GetStateTranslation(&this->limbPos[this->limbIndex]);
        this->limbIndex++;
    }
}

void EnRailgibud_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    this->limbIndex = 0;
    if (this->actor.shape.shadowAlpha == 255) {
        func_8012C28C(globalCtx->state.gfxCtx);

        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->actor.shape.shadowAlpha);
        gSPSegment(POLY_OPA_DISP++, 0x08, D_801AEFA0);

        POLY_OPA_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                           this->skelAnime.dListCount, EnRailgibud_OverrideLimbDraw,
                                           EnRailgibud_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        func_8012C2DC(globalCtx->state.gfxCtx);

        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->actor.shape.shadowAlpha);
        gSPSegment(POLY_XLU_DISP++, 0x08, D_801AEF88);

        POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable,
                                           this->skelAnime.dListCount, EnRailgibud_OverrideLimbDraw,
                                           EnRailgibud_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    }

    if (this->effectTimer > 0) {
        func_800BE680(globalCtx, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos), this->effectScale, 0.5f,
                      this->effectAlpha, this->effectType);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void func_80BA7B6C(EnRailgibud* this, GlobalContext* globalCtx) {
    s32 pad[2];

    func_80BA7C78(this);
    this->csAction = 99;
    this->actor.flags |= 0x100000;
    this->actor.flags |= 0x10;
    ActorShape_Init(&this->actor.shape, 0.0f, func_800B3FC0, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGibdoSkel, &gGibdoRedeadIdleAnim, this->jointTable,
                       this->morphTable, REDEAD_GIBDO_LIMB_MAX);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if (gSaveContext.entranceIndex != 0x2090) { // NOT Cutscene: Music Box House Opens
        Actor_MarkForDeath(&this->actor);
    }
    func_80BA7CF0(this);
    this->actor.update = func_80BA8050;
}

void func_80BA7C78(EnRailgibud* this) {
    switch (ENRAILGIBUD_GET_7F(&this->actor)) {
        case 1:
            this->actorActionCommand = 0x207;
            break;

        case 2:
            this->actorActionCommand = 0x208;
            break;

        case 3:
            this->actorActionCommand = 0x209;
            break;

        case 4:
            this->actorActionCommand = 0x20A;
            break;

        case 5:
            this->actorActionCommand = 0x20B;
            break;

        default:
            this->actorActionCommand = 0x207;
            break;
    }
}

void func_80BA7CF0(EnRailgibud* this) {
    this->actionFunc = func_80BA7D04;
}

void func_80BA7D04(EnRailgibud* this, GlobalContext* globalCtx) {
}

void func_80BA7D14(EnRailgibud* this) {
    this->unk_3F2 = 30;
    this->actionFunc = func_80BA7D30;
}

void func_80BA7D30(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->unk_3F2 != 0) {
        this->unk_3F2--;
    } else if (Math_SmoothStepToF(&this->actor.shape.yOffset, -9500.0f, 0.5f, 200.0f, 10.0f) < 10.0f) {
        Actor_MarkForDeath(&this->actor);
    } else {
        func_80BA6800(this, globalCtx, 0);
    }
}

s32 func_80BA7DC8(EnRailgibud* this, GlobalContext* globalCtx) {
    u32 sp2C;

    if (func_800EE29C(globalCtx, this->actorActionCommand)) {
        sp2C = func_800EE200(globalCtx, this->actorActionCommand);
        if (this->csAction != globalCtx->csCtx.npcActions[sp2C]->unk0) {
            this->csAction = globalCtx->csCtx.npcActions[sp2C]->unk0;
            switch (globalCtx->csCtx.npcActions[sp2C]->unk0) {
                case 1:
                    this->unk_3F0 = 9;
                    func_800BDC5C(&this->skelAnime, sAnimations, 9);
                    break;

                case 2:
                    this->unk_3F0 = 15;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_WEAKENED2);
                    func_800BDC5C(&this->skelAnime, sAnimations, 15);
                    break;

                case 3:
                    this->unk_3F0 = 17;
                    func_800BDC5C(&this->skelAnime, sAnimations, 17);
                    break;

                case 4:
                    this->unk_3F0 = 18;
                    func_800BDC5C(&this->skelAnime, sAnimations, 18);
                    break;

                case 5:
                    this->unk_3F0 = 10;
                    func_800BDC5C(&this->skelAnime, sAnimations, 10);
                    break;
            }
        } else if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
            if (this->unk_3F0 == 15) {
                this->unk_3F0 = 16;
                func_800BDC5C(&this->skelAnime, sAnimations, 16);
            } else if (this->unk_3F0 == 18) {
                this->unk_3F0 = 19;
                func_800BDC5C(&this->skelAnime, sAnimations, 19);
                func_80BA7D14(this);
            }
        }

        switch (this->csAction) {
            case 3:
            case 4:
                if (this->actionFunc == func_80BA7D30) {
                    func_800B9010(&this->actor, NA_SE_EN_REDEAD_WEAKENED_L2 - SFX_FLAG);
                } else {
                    func_800B9010(&this->actor, NA_SE_EN_REDEAD_WEAKENED_L1 - SFX_FLAG);
                }
                break;

            case 5:
                if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                    if (globalCtx->csCtx.frames < 280) {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_CRY);
                    } else {
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_REDEAD_WEAKENED1);
                    }
                }
                break;
        }

        func_800EDF24(&this->actor, globalCtx, sp2C);
        return true;
    }

    this->csAction = 99;
    return false;
}

void func_80BA8050(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    this->actionFunc(this, globalCtx);
    func_80BA7DC8(this, globalCtx);
    SkelAnime_Update(&this->skelAnime);
}
