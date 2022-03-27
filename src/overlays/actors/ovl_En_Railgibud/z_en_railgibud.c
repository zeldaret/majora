/*
 * File: z_en_railgibud.c
 * Overlay: ovl_En_Railgibud
 * Description: Music Box House - Patrolling Gibdos
 */

#include "z_en_railgibud.h"
#include "objects/object_rd/object_rd.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_10 | ACTOR_FLAG_400)

#define THIS ((EnRailgibud*)thisx)

void EnRailgibud_Init(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Update(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnRailgibud_SetupWalkInCircles(EnRailgibud* this);
void EnRailgibud_WalkInCircles(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SetupAttemptPlayerFreeze(EnRailgibud* this);
void EnRailgibud_AttemptPlayerFreeze(EnRailgibud* this, GlobalContext* globalCtx);
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
void EnRailgibud_SpawnDust(GlobalContext* globalCtx, Vec3f* vec, f32 arg2, s32 arg3, s16 arg4, s16 arg5);
void EnRailgibud_TurnTowardsPlayer(EnRailgibud* this, GlobalContext* globalCtx);
s32 EnRailgibud_PlayerInRangeWithCorrectState(EnRailgibud* this, GlobalContext* globalCtx);
s32 EnRailgibud_PlayerOutOfRange(EnRailgibud* this, GlobalContext* globalCtx);
s32 EnRailgibud_MoveToIdealGrabPositionAndRotation(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_CheckIfTalkingToPlayer(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_MainGibdo_DeadUpdate(Actor* thisx, GlobalContext* globalCtx);
void EnRailgibud_InitCutsceneGibdo(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_InitActorActionCommand(EnRailgibud* this);
void EnRailgibud_SetupDoNothing(EnRailgibud* this);
void EnRailgibud_DoNothing(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_SinkIntoGround(EnRailgibud* this, GlobalContext* globalCtx);
void EnRailgibud_Cutscene_Update(Actor* thisx, GlobalContext* globalCtx);

typedef enum {
    /*  0 */ EN_RAILGIBUD_ANIMATION_GRAB_ATTACK,
    /*  1 */ EN_RAILGIBUD_ANIMATION_GRAB_END,
    /*  2 */ EN_RAILGIBUD_ANIMATION_GRAB_START,
    /*  3 */ EN_RAILGIBUD_ANIMATION_LOOK_BACK,
    /*  4 */ EN_RAILGIBUD_ANIMATION_CROUCH_WIPING_TEARS,
    /*  5 */ EN_RAILGIBUD_ANIMATION_CROUCH_CRYING,
    /*  6 */ EN_RAILGIBUD_ANIMATION_DEATH,
    /*  7 */ EN_RAILGIBUD_ANIMATION_DAMAGE,
    /*  8 */ EN_RAILGIBUD_ANIMATION_CROUCH_END,
    /*  9 */ EN_RAILGIBUD_ANIMATION_IDLE,
    /* 10 */ EN_RAILGIBUD_ANIMATION_WALK,
    /* 11 */ EN_RAILGIBUD_ANIMATION_DANCE_SQUAT,
    /* 12 */ EN_RAILGIBUD_ANIMATION_DANCE_PIROUETTE,
    /* 13 */ EN_RAILGIBUD_ANIMATION_DANCE_CLAP,
    /* 14 */ EN_RAILGIBUD_ANIMATION_CROUCH_END_2,
    /* 15 */ EN_RAILGIBUD_ANIMATION_SLUMP_START,
    /* 16 */ EN_RAILGIBUD_ANIMATION_SLUMP_LOOP,
    /* 17 */ EN_RAILGIBUD_ANIMATION_CONVULSION,
    /* 18 */ EN_RAILGIBUD_ANIMATION_ARMS_UP_START,
    /* 19 */ EN_RAILGIBUD_ANIMATION_ARMS_UP_LOOP,
} EnRailgibudAnimations;

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

static AnimationInfo sAnimations[] = {
    { &gGibdoRedeadGrabAttackAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadGrabEndAnim, 0.5f, 0.0f, 0.0f, ANIMMODE_ONCE_INTERP, 0.0f },
    { &gGibdoRedeadGrabStartAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadLookBackAnim, 0.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadWipingTearsAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadSobbingAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadDeathAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadDamageAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadStandUpAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadIdleAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadWalkAnim, 0.4f, 0.0f, 0.0f, ANIMMODE_LOOP_INTERP, -8.0f },
    { &gGibdoRedeadSquattingDanceAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadPirouetteAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadClappingDanceAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadStandUpAnim, 3.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -6.0f },
    { &gGibdoRedeadSlumpStartAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadSlumpLoopAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadConvulsionAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
    { &gGibdoRedeadArmsUpStartAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_ONCE, -8.0f },
    { &gGibdoRedeadArmsUpLoopAnim, 1.0f, 0.0f, 0.0f, ANIMMODE_LOOP, -8.0f },
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

/**
 * The design behind this actor is that scene files should only spawn a single "main" Gibdo
 * who then spawns all the other Gibdos. It spawns enough Gibdos for one to exist on every
 * point along the path up to a maximum of nine additional Gibdos (not counting itself).
 */
void EnRailgibud_SpawnOtherGibdosAndSetPositionAndRotation(EnRailgibud* this, GlobalContext* globalCtx) {
    static s32 currentGibdoIndex = 0;
    s32 nextPoint;
    Vec3f targetPos;
    Path* path = &globalCtx->setupPathList[ENRAILGIBUD_GET_PATH(&this->actor)];

    this->points = Lib_SegmentedToVirtual(path->points);
    this->currentPoint = currentGibdoIndex;
    this->pathCount = path->count;

    // This branch will only be taken for the first, "main" Gibdo. The subsequent
    // Gibdos created by Actor_SpawnAsChild will go through this function to set
    // their position and rotation, but they will not be able to spawn any more
    // Gibdos themselves because currentGibdoIndex will be non-zero.
    if (currentGibdoIndex == 0) {
        s32 i;

        for (i = 1; i < this->pathCount && i < 10; i++) {
            currentGibdoIndex++;
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_RAILGIBUD, 0.0f, 0.0f, 0.0f, 0,
                               0, 0, this->actor.params);
        }

        currentGibdoIndex = 0;
    }

    this->actor.world.pos.x = this->points[this->currentPoint].x;
    this->actor.world.pos.y = this->points[this->currentPoint].y;
    this->actor.world.pos.z = this->points[this->currentPoint].z;
    if (this->currentPoint < (this->pathCount - 1)) {
        nextPoint = this->currentPoint + 1;
    } else {
        nextPoint = 0;
    }

    targetPos.x = this->points[nextPoint].x;
    targetPos.y = this->points[nextPoint].y;
    targetPos.z = this->points[nextPoint].z;
    this->actor.world.rot.y = this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.world.pos, &targetPos);

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
    if (ENRAILGIBUD_IS_CUTSCENE_TYPE(&this->actor)) {
        EnRailgibud_InitCutsceneGibdo(this, globalCtx);
        return;
    }

    EnRailgibud_SpawnOtherGibdosAndSetPositionAndRotation(this, globalCtx);
    this->playerStunWaitTimer = 0;
    this->timeInitialized = gSaveContext.time;
    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
    this->type = EN_RAILGIBUD_TYPE_GIBDO;
    this->textId = 0;
    this->isInvincible = false;
    if (this->actor.parent == NULL) {
        this->shouldWalkForward = true;
        this->shouldWalkForwardNextFrame = true;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGibdoSkel, &gGibdoRedeadIdleAnim, this->jointTable,
                       this->morphTable, GIBDO_LIMB_MAX);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if (gSaveContext.weekEventReg[14] & 4) {
        Actor_MarkForDeath(&this->actor);
    }

    EnRailgibud_SetupWalkInCircles(this);
}

void EnRailgibud_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnRailgibud_SetupWalkInCircles(EnRailgibud* this) {
    this->actor.speedXZ = 0.6f;
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_WALK);
    this->actionFunc = EnRailgibud_WalkInCircles;
}

void EnRailgibud_WalkInCircles(EnRailgibud* this, GlobalContext* globalCtx) {
    Vec3f targetPos;
    s32 pad;
    s16 yRotation;

    targetPos.x = this->points[this->currentPoint].x;
    targetPos.y = this->points[this->currentPoint].y;
    targetPos.z = this->points[this->currentPoint].z;

    if ((this->actor.xzDistToPlayer <= 100.0f) && func_800B715C(globalCtx) &&
        (Player_GetMask(globalCtx) != PLAYER_MASK_GIBDO)) {
        this->actor.home = this->actor.world;
        EnRailgibud_SetupAttemptPlayerFreeze(this);
    }

    Math_SmoothStepToS(&this->headRotation.y, 0, 1, 0x64, 0);
    Math_SmoothStepToS(&this->upperBodyRotation.y, 0, 1, 0x64, 0);

    // If we're not supposed to walk forward, then stop here;
    // don't rotate the Gibdo or move it around.
    if (this->actor.parent == NULL) {
        if (this->shouldWalkForward) {
        } else {
            return;
        }
    } else {
        EnRailgibud* parent = (EnRailgibud*)this->actor.parent;

        if (!parent->shouldWalkForward) {
            return;
        }
    }

    yRotation = Math_Vec3f_Yaw(&this->actor.world.pos, &targetPos);
    if (Math_Vec3f_DistXZ(&this->actor.world.pos, &targetPos) > 60.0f) {
        Math_SmoothStepToS(&this->actor.world.rot.y, yRotation, 1, 0x190, 0xA);
        this->actor.shape.rot.y = this->actor.world.rot.y;
    } else if (this->currentPoint < (this->pathCount - 1)) {
        this->currentPoint++;
    } else {
        this->currentPoint = 0;
    }

    Actor_MoveWithGravity(&this->actor);
}

void EnRailgibud_SetupAttemptPlayerFreeze(EnRailgibud* this) {
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_IDLE);
    this->actionFunc = EnRailgibud_AttemptPlayerFreeze;
}

void EnRailgibud_AttemptPlayerFreeze(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s16 rot = this->actor.shape.rot.y + this->headRotation.y + this->upperBodyRotation.y;
    s16 yaw = BINANG_SUB(this->actor.yawTowardsPlayer, rot);

    if (ABS_ALT(yaw) < 0x2008) {
        player->actor.freezeTimer = 60;
        func_8013ECE0(this->actor.xzDistToPlayer, 255, 20, 150);
        func_80123E90(globalCtx, &this->actor);
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_AIM);
        EnRailgibud_SetupWalkToPlayer(this);
    }

    EnRailgibud_TurnTowardsPlayer(this, globalCtx);
}

void EnRailgibud_SetupWalkToPlayer(EnRailgibud* this) {
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_WALK);
    this->actor.speedXZ = 0.4f;

    if (this->actionFunc == EnRailgibud_AttemptPlayerFreeze) {
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

    if (EnRailgibud_PlayerInRangeWithCorrectState(this, globalCtx) && Actor_IsFacingPlayer(&this->actor, 0x38E3)) {
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
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_AIM);
            } else {
                this->playerStunWaitTimer--;
            }
        }
    } else if ((this->grabWaitTimer == 0) && (this->actor.xzDistToPlayer <= 45.0f)) {
        EnRailgibud_SetupWalkToHome(this);
    } else if (EnRailgibud_PlayerOutOfRange(this, globalCtx)) {
        EnRailgibud_SetupWalkToHome(this);
    }

    if (this->grabWaitTimer > 0) {
        this->grabWaitTimer--;
    }

    if (Animation_OnFrame(&this->skelAnime, 10.0f) || Animation_OnFrame(&this->skelAnime, 22.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_RIZA_WALK);
    } else if (!(globalCtx->gameplayFrames & 95)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_CRY);
    }
}

void EnRailgibud_SetupGrab(EnRailgibud* this) {
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_GRAB_START);
    this->grabDamageTimer = 0;
    this->actor.flags &= ~ACTOR_FLAG_1;
    this->grabState = EN_RAILGIBUD_GRAB_START;
    this->actionFunc = EnRailgibud_Grab;
}

void EnRailgibud_Grab(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player2 = GET_PLAYER(globalCtx);
    Player* player = player2;
    s32 inPositionToAttack;
    u16 damageSfxId;

    switch (this->grabState) {
        case EN_RAILGIBUD_GRAB_START:
            inPositionToAttack = EnRailgibud_MoveToIdealGrabPositionAndRotation(this, globalCtx);
            if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame) && (inPositionToAttack == true)) {
                this->grabState = EN_RAILGIBUD_GRAB_ATTACK;
                Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_GRAB_ATTACK);
            } else if (!(player->stateFlags2 & 0x80)) {
                Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_GRAB_END);
                this->actor.flags |= ACTOR_FLAG_1;
                this->grabState = EN_RAILGIBUD_GRAB_RELEASE;
                this->grabDamageTimer = 0;
            }
            break;

        case EN_RAILGIBUD_GRAB_ATTACK:
            if (this->grabDamageTimer == 20) {
                s16 requiredScopeTemp;

                damageSfxId = player->ageProperties->unk_92 + NA_SE_VO_LI_DAMAGE_S;
                globalCtx->damagePlayer(globalCtx, -8);
                func_800B8E58(player, damageSfxId);
                func_8013ECE0(this->actor.xzDistToPlayer, 240, 1, 12);
                this->grabDamageTimer = 0;
            } else {
                this->grabDamageTimer++;
            }

            if (Animation_OnFrame(&this->skelAnime, 0.0f)) {
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_ATTACK);
            }

            if (!(player->stateFlags2 & 0x80) || (player->unk_B62 != 0)) {
                if ((player->unk_B62 != 0) && (player->stateFlags2 & 0x80)) {
                    player->stateFlags2 &= ~0x80;
                    player->unk_AE8 = 100;
                }

                Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_GRAB_END);
                this->actor.flags |= ACTOR_FLAG_1;
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
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_DAMAGE);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
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
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_WALK);
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
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_WALK);
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
            EnRailgibud_SetupWalkInCircles(this);
        }
    } else {
        Math_ScaledStepToS(&this->actor.shape.rot.y, Actor_YawToPoint(&this->actor, &this->actor.home.pos), 450);
        this->actor.world.rot = this->actor.shape.rot;
    }
    if (EnRailgibud_PlayerInRangeWithCorrectState(this, globalCtx)) {
        if ((gSaveContext.playerForm != PLAYER_FORM_GORON) && (gSaveContext.playerForm != PLAYER_FORM_DEKU) &&
            Actor_IsFacingPlayer(&this->actor, 0x38E3)) {
            EnRailgibud_SetupWalkToPlayer(this);
        }
    }
}

void EnRailgibud_SetupDamage(EnRailgibud* this) {
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_DAMAGE);
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_DAMAGE);
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
        if ((this->drawDmgEffTimer > 0) && (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FIRE) &&
            (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
            this->actor.hintId = 0x2A;
            SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gRedeadSkel, NULL, this->jointTable, this->morphTable,
                               GIBDO_LIMB_MAX);
            this->type = EN_RAILGIBUD_TYPE_REDEAD;
        }

        EnRailgibud_SetupWalkToHome(this);
    }
}

void EnRailgibud_SetupStunned(EnRailgibud* this) {
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->stunTimer = 10;

    if (this->drawDmgEffTimer != 0) {
        Actor_SetColorFilter(&this->actor, 0, 0xC8, 0, 0x28);
    } else {
        Actor_SetColorFilter(&this->actor, 0, 0xC8, 0, 0x28);
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
    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_DEATH);
    this->actor.flags &= ~ACTOR_FLAG_1;
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_DEAD);
    this->deathTimer = 0;
    this->actionFunc = EnRailgibud_Dead;
}

void EnRailgibud_Dead(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->deathTimer > 300) {
        if (this->actor.shape.shadowAlpha == 0) {
            if (this->actor.parent != NULL) {
                Actor_MarkForDeath(&this->actor);
            } else {
                // Don't delete the "main" Gibdo, since that will break the surviving
                // Gibdos' ability to start and stop walking forward. Instead, just
                // stop drawing it, and make its Update function only check to see if
                // the Gibdos should move forward.
                this->actor.draw = NULL;
                this->actor.flags &= ~ACTOR_FLAG_1;
                this->actor.update = EnRailgibud_MainGibdo_DeadUpdate;
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

    if ((this->deathTimer == 20) && (this->drawDmgEffTimer > 0) && (this->drawDmgEffType == ACTOR_DRAW_DMGEFF_FIRE) &&
        (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
        SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gRedeadSkel, NULL, this->jointTable, this->morphTable,
                           GIBDO_LIMB_MAX);
        this->type = EN_RAILGIBUD_TYPE_REDEAD;
    }
}

void EnRailgibud_SpawnEffectsForSinkingIntoTheGround(EnRailgibud* this, GlobalContext* globalCtx, s32 arg2) {
    Vec3f rockFragmentPos = this->actor.world.pos;
    Vec3f rockFragmentVelocity = { 0.0f, 8.0f, 0.0f };
    Vec3f rockFragmentAccel = { 0.0f, -1.5f, 0.0f };
    s16 rand;
    s32 pad;

    if ((globalCtx->gameplayFrames & arg2) == 0) {
        rand = Rand_Next();
        rockFragmentPos.x += 15.0f * Math_SinS(rand);
        rockFragmentPos.z += 15.0f * Math_CosS(rand);
        rockFragmentAccel.x = Rand_Centered();
        rockFragmentAccel.z = Rand_Centered();
        rockFragmentVelocity.y += Rand_Centered() * 4.0f;
        EffectSsHahen_Spawn(globalCtx, &rockFragmentPos, &rockFragmentVelocity, &rockFragmentAccel, 0,
                            (Rand_Next() & 7) + 10, -1, 10, NULL);
        EnRailgibud_SpawnDust(globalCtx, &rockFragmentPos, 10.0f, 10, 150, 0);
    }
}

void EnRailgibud_SpawnDust(GlobalContext* globalCtx, Vec3f* basePos, f32 randomnessScale, s32 dustCount, s16 dustScale,
                           s16 scaleStep) {
    Vec3f dustPos;
    Vec3f dustAccel = { 0.0f, 0.3f, 0.0f };
    Vec3f dustVelocity = gZeroVec3f;
    s32 i;
    s32 pad;

    dustVelocity.y = 2.5f;

    for (i = dustCount; i >= 0; i--) {
        dustVelocity.x = (Rand_ZeroOne() - 0.5f) * randomnessScale;
        dustVelocity.z = (Rand_ZeroOne() - 0.5f) * randomnessScale;

        dustPos.x = basePos->x + dustVelocity.x;
        dustPos.y = ((Rand_ZeroOne() - 0.5f) * randomnessScale) + basePos->y;
        dustPos.z = basePos->z + dustVelocity.z;

        dustVelocity.x *= 0.5f;
        dustVelocity.z *= 0.5f;
        func_800B1210(globalCtx, &dustPos, &dustVelocity, &dustAccel,
                      (s16)(Rand_ZeroOne() * dustScale * 0.2f) + dustScale, scaleStep);
    }
}

/**
 * If any Gibdo in the ring of Gibdos is doing any other action besides walking in
 * circles or being dead, then this function will update the "main" Gibdo's
 * walking forward variables such that all Gibdos in the ring will stop moving.
 * Similarly, this will make all Gibdos in the ring start walking forward again
 * if the Gibdos are all performing the appropriate action.
 */
void EnRailgibud_UpdateWalkForwardState(EnRailgibud* this) {
    if (this->actor.parent == NULL) {
        this->shouldWalkForward = this->shouldWalkForwardNextFrame;
        this->shouldWalkForwardNextFrame = true;
        if ((this->actionFunc != EnRailgibud_WalkInCircles) && (this->actionFunc != EnRailgibud_Dead)) {
            this->shouldWalkForwardNextFrame = false;
        }
    } else if ((this->actionFunc != EnRailgibud_WalkInCircles) && (this->actionFunc != EnRailgibud_Dead)) {
        ((EnRailgibud*)this->actor.parent)->shouldWalkForwardNextFrame = false;
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

s32 EnRailgibud_PlayerInRangeWithCorrectState(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Player_GetMask(globalCtx) == PLAYER_MASK_GIBDO) {
        return false;
    }

    if ((Actor_DistanceToPoint(&player->actor, &this->actor.home.pos) < 100.0f) &&
        !(player->stateFlags1 & (0x200000 | 0x80000 | 0x40000 | 0x4000 | 0x2000 | 0x80)) &&
        !(player->stateFlags2 & (0x4000 | 0x80))) {
        return true;
    }

    return false;
}

/**
 * Gibdos/Redeads have a very short range around their home where they will
 * engage with the player. If the player is out of this range, they will simply
 * walk back to their home.
 */
s32 EnRailgibud_PlayerOutOfRange(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (Actor_DistanceToPoint(&player->actor, &this->actor.home.pos) >= 100.0f) {
        return true;
    }

    return false;
}

void EnRailgibud_UpdateDamage(EnRailgibud* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if ((this->isInvincible != true) && (this->collider.base.acFlags & AC_HIT)) {
        if (this->actionFunc == EnRailgibud_WalkInCircles) {
            this->actor.home = this->actor.world;
        }
        this->collider.base.acFlags &= ~AC_HIT;
        Actor_ApplyDamage(&this->actor);

        switch (this->actor.colChkInfo.damageEffect) {
            case EN_RAILGIBUD_DMGEFF_DAMAGE:
                Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 8);
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
                Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 8);
                if (this->actor.colChkInfo.health == 0) {
                    EnRailgibud_SetupDead(this);
                } else {
                    EnRailgibud_SetupDamage(this);
                }
                this->drawDmgEffType = ACTOR_DRAW_DMGEFF_FIRE;
                this->drawDmgEffTimer = 180;
                this->drawDmgEffAlpha = 1.0f;
                break;

            case EN_RAILGIBUD_DMGEFF_LIGHT_ARROW:
                Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 8);
                if (this->actor.colChkInfo.health == 0) {
                    EnRailgibud_SetupDead(this);
                } else {
                    EnRailgibud_SetupDamage(this);
                }
                this->drawDmgEffType = ACTOR_DRAW_DMGEFF_LIGHT_ORBS;
                this->drawDmgEffTimer = 60;
                this->drawDmgEffAlpha = 1.0f;
                break;

            case EN_RAILGIBUD_DMGEFF_ZORA_MAGIC:
                if ((this->actionFunc != EnRailgibud_Grab) &&
                    ((this->actionFunc != EnRailgibud_Stunned) || (this->stunTimer == 0))) {
                    this->drawDmgEffType = ACTOR_DRAW_DMGEFF_ELECTRIC_SPARKS_SMALL;
                    this->drawDmgEffTimer = 40;
                    this->drawDmgEffAlpha = 1.0f;
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
        Actor_MoveWithGravity(&this->actor);
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
    if (this->drawDmgEffTimer > 0) {
        this->drawDmgEffTimer--;
    }

    if (this->drawDmgEffTimer < 20) {
        Math_SmoothStepToF(&this->drawDmgEffScale, 0.0f, 0.5f, 0.03f, 0.0f);
        this->drawDmgEffAlpha = this->drawDmgEffTimer * 0.05f;
    } else {
        Math_SmoothStepToF(&this->drawDmgEffScale, 0.5f, 0.1f, 0.02f, 0.0f);
    }
}

void EnRailgibud_CheckForGibdoMask(EnRailgibud* this, GlobalContext* globalCtx) {
    if ((this->actionFunc != EnRailgibud_Grab) && (this->actionFunc != EnRailgibud_Damage) &&
        (this->actionFunc != EnRailgibud_GrabFail) && (this->actionFunc != EnRailgibud_TurnAwayAndShakeHead) &&
        (this->actionFunc != EnRailgibud_Dead)) {
        if (CHECK_FLAG_ALL(this->actor.flags, (ACTOR_FLAG_1 | ACTOR_FLAG_4))) {
            if (Player_GetMask(globalCtx) == PLAYER_MASK_GIBDO) {
                this->actor.flags &= ~(ACTOR_FLAG_4 | ACTOR_FLAG_1);
                this->actor.flags |= (ACTOR_FLAG_8 | ACTOR_FLAG_1);
                this->actor.hintId = 0xFF;
                this->actor.textId = 0;
                if ((this->actionFunc != EnRailgibud_WalkInCircles) && (this->actionFunc != EnRailgibud_WalkToHome)) {
                    EnRailgibud_SetupWalkToHome(this);
                }
            }
        } else if (Player_GetMask(globalCtx) != PLAYER_MASK_GIBDO) {
            this->actor.flags &= ~(ACTOR_FLAG_8 | ACTOR_FLAG_1);
            this->actor.flags |= (ACTOR_FLAG_4 | ACTOR_FLAG_1);
            if (this->type == EN_RAILGIBUD_TYPE_REDEAD) {
                this->actor.hintId = 0x2A;
            } else {
                this->actor.hintId = 0x2D;
            }
            this->actor.textId = 0;
        }

        EnRailgibud_CheckIfTalkingToPlayer(this, globalCtx);
    }
}

void EnRailgibud_CheckIfTalkingToPlayer(EnRailgibud* this, GlobalContext* globalCtx) {
    if ((this->textId == 0) && (this->type == EN_RAILGIBUD_TYPE_GIBDO)) {
        if (Actor_ProcessTalkRequest(&this->actor, &globalCtx->state)) {
            this->isInvincible = true;
            Message_StartTextbox(globalCtx, 0x13B2, &this->actor);
            this->textId = 0x13B2;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_AIM);
            this->actor.speedXZ = 0.0f;
        } else if (CHECK_FLAG_ALL(this->actor.flags, (ACTOR_FLAG_1 | ACTOR_FLAG_8)) &&
                   !(this->collider.base.acFlags & AC_HIT)) {
            func_800B8614(&this->actor, globalCtx, 100.0f);
        }
    } else {
        switch (Message_GetState(&globalCtx->msgCtx)) {
            case 5:
                if (func_80147624(globalCtx)) {
                    Message_StartTextbox(globalCtx, 0x13B3, &this->actor);
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

void EnRailgibud_UpdateCollision(EnRailgibud* this, GlobalContext* globalCtx) {
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

    EnRailgibud_UpdateWalkForwardState(this);
    EnRailgibud_CheckForGibdoMask(this, globalCtx);
    EnRailgibud_UpdateDamage(this, globalCtx);

    this->actionFunc(this, globalCtx);
    if (this->actionFunc != EnRailgibud_Stunned) {
        SkelAnime_Update(&this->skelAnime);
    }

    EnRailgibud_MoveWithGravity(this, globalCtx);
    EnRailgibud_UpdateCollision(this, globalCtx);
    EnRailgibud_MoveGrabbedPlayerAwayFromWall(this, globalCtx);
    EnRailgibud_UpdateEffect(this, globalCtx);

    this->actor.focus.pos = this->actor.world.pos;
    this->actor.focus.pos.y += 50.0f;
}

void EnRailgibud_MainGibdo_DeadUpdate(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    EnRailgibud_UpdateWalkForwardState(this);
}

s32 EnRailgibud_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 Actor* thisx, Gfx** gfx) {
    EnRailgibud* this = THIS;

    if (limbIndex == GIBDO_LIMB_UPPER_BODY_ROOT) {
        rot->y += this->upperBodyRotation.y;
    } else if (limbIndex == GIBDO_LIMB_HEAD_ROOT) {
        rot->y += this->headRotation.y;
    }

    return false;
}

void EnRailgibud_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx,
                              Gfx** gfx) {
    EnRailgibud* this = THIS;

    if ((this->drawDmgEffTimer != 0) &&
        ((limbIndex == GIBDO_LIMB_LEFT_THIGH) || (limbIndex == GIBDO_LIMB_LEFT_SHIN) ||
         (limbIndex == GIBDO_LIMB_LEFT_FOOT) || (limbIndex == GIBDO_LIMB_RIGHT_THIGH) ||
         (limbIndex == GIBDO_LIMB_RIGHT_SHIN) || (limbIndex == GIBDO_LIMB_RIGHT_FOOT) ||
         (limbIndex == GIBDO_LIMB_TORSO) || (limbIndex == GIBDO_LIMB_LEFT_SHOULDER_AND_UPPER_ARM) ||
         (limbIndex == GIBDO_LIMB_LEFT_FOREARM) || (limbIndex == GIBDO_LIMB_LEFT_HAND) ||
         (limbIndex == GIBDO_LIMB_RIGHT_SHOULDER_AND_UPPER_ARM) || (limbIndex == GIBDO_LIMB_RIGHT_FOREARM) ||
         (limbIndex == GIBDO_LIMB_RIGHT_HAND) || (limbIndex == GIBDO_LIMB_HEAD) || (limbIndex == GIBDO_LIMB_PELVIS))) {
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

    if (this->drawDmgEffTimer > 0) {
        Actor_DrawDamageEffects(globalCtx, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos),
                                this->drawDmgEffScale, 0.5f, this->drawDmgEffAlpha, this->drawDmgEffType);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void EnRailgibud_InitCutsceneGibdo(EnRailgibud* this, GlobalContext* globalCtx) {
    s32 pad[2];

    EnRailgibud_InitActorActionCommand(this);
    this->csAction = 99;
    this->actor.flags |= ACTOR_FLAG_100000;
    this->actor.flags |= ACTOR_FLAG_10;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gGibdoSkel, &gGibdoRedeadIdleAnim, this->jointTable,
                       this->morphTable, GIBDO_LIMB_MAX);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);

    if (gSaveContext.entranceIndex != 0x2090) { // NOT Cutscene: Music Box House Opens
        Actor_MarkForDeath(&this->actor);
    }

    EnRailgibud_SetupDoNothing(this);
    this->actor.update = EnRailgibud_Cutscene_Update;
}

void EnRailgibud_InitActorActionCommand(EnRailgibud* this) {
    switch (ENRAILGIBUD_GET_CUTSCENE_TYPE(&this->actor)) {
        case 1:
            this->actorActionCommand = 519;
            break;

        case 2:
            this->actorActionCommand = 520;
            break;

        case 3:
            this->actorActionCommand = 521;
            break;

        case 4:
            this->actorActionCommand = 522;
            break;

        case 5:
            this->actorActionCommand = 523;
            break;

        default:
            this->actorActionCommand = 519;
            break;
    }
}

void EnRailgibud_SetupDoNothing(EnRailgibud* this) {
    this->actionFunc = EnRailgibud_DoNothing;
}

void EnRailgibud_DoNothing(EnRailgibud* this, GlobalContext* globalCtx) {
}

void EnRailgibud_SetupSinkIntoGround(EnRailgibud* this) {
    this->sinkTimer = 30;
    this->actionFunc = EnRailgibud_SinkIntoGround;
}

void EnRailgibud_SinkIntoGround(EnRailgibud* this, GlobalContext* globalCtx) {
    if (this->sinkTimer != 0) {
        this->sinkTimer--;
    } else if (Math_SmoothStepToF(&this->actor.shape.yOffset, -9500.0f, 0.5f, 200.0f, 10.0f) < 10.0f) {
        Actor_MarkForDeath(&this->actor);
    } else {
        EnRailgibud_SpawnEffectsForSinkingIntoTheGround(this, globalCtx, 0);
    }
}

s32 EnRailgibud_PerformCutsceneActions(EnRailgibud* this, GlobalContext* globalCtx) {
    s32 actionIndex;

    if (Cutscene_CheckActorAction(globalCtx, this->actorActionCommand)) {
        actionIndex = Cutscene_GetActorActionIndex(globalCtx, this->actorActionCommand);
        if (this->csAction != globalCtx->csCtx.actorActions[actionIndex]->action) {
            this->csAction = globalCtx->csCtx.actorActions[actionIndex]->action;
            switch (globalCtx->csCtx.actorActions[actionIndex]->action) {
                case 1:
                    this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_IDLE;
                    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_IDLE);
                    break;

                case 2:
                    this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_SLUMP_START;
                    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_WEAKENED2);
                    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_SLUMP_START);
                    break;

                case 3:
                    this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_CONVULSION;
                    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_CONVULSION);
                    break;

                case 4:
                    this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_ARMS_UP_START;
                    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_ARMS_UP_START);
                    break;

                case 5:
                    this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_WALK;
                    Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_WALK);
                    break;
            }
        } else if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
            if (this->cutsceneAnimationIndex == EN_RAILGIBUD_ANIMATION_SLUMP_START) {
                this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_SLUMP_LOOP;
                Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_SLUMP_LOOP);
            } else if (this->cutsceneAnimationIndex == EN_RAILGIBUD_ANIMATION_ARMS_UP_START) {
                this->cutsceneAnimationIndex = EN_RAILGIBUD_ANIMATION_ARMS_UP_LOOP;
                Actor_ChangeAnimationByInfo(&this->skelAnime, sAnimations, EN_RAILGIBUD_ANIMATION_ARMS_UP_LOOP);
                EnRailgibud_SetupSinkIntoGround(this);
            }
        }

        switch (this->csAction) {
            case 3:
            case 4:
                if (this->actionFunc == EnRailgibud_SinkIntoGround) {
                    func_800B9010(&this->actor, NA_SE_EN_REDEAD_WEAKENED_L2 - SFX_FLAG);
                } else {
                    func_800B9010(&this->actor, NA_SE_EN_REDEAD_WEAKENED_L1 - SFX_FLAG);
                }
                break;

            case 5:
                if (Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
                    if (globalCtx->csCtx.frames < 280) {
                        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_CRY);
                    } else {
                        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_REDEAD_WEAKENED1);
                    }
                }
                break;
        }

        Cutscene_ActorTranslateAndYaw(&this->actor, globalCtx, actionIndex);
        return true;
    }

    this->csAction = 99;
    return false;
}

void EnRailgibud_Cutscene_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnRailgibud* this = THIS;

    this->actionFunc(this, globalCtx);
    EnRailgibud_PerformCutsceneActions(this, globalCtx);
    SkelAnime_Update(&this->skelAnime);
}
