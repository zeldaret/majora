/*
 * File: z_en_bb.c
 * Overlay: ovl_En_Bb
 * Description: Blue Bubble
 */

#include "z_en_bb.h"
#include "objects/object_bb/object_bb.h"
#include "objects/gameplay_keep/gameplay_keep.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_200)

#define THIS ((EnBb*)thisx)

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808C20D4(EnBb* this);
void func_808C2238(EnBb* this, GlobalContext* globalCtx);
void func_808C2344(EnBb* this);
void func_808C23EC(EnBb* this, GlobalContext* globalCtx);
void func_808C25E0(EnBb* this, GlobalContext* globalCtx);
void func_808C28CC(EnBb* this, GlobalContext* globalCtx);
void func_808C2B1C(EnBb* this, GlobalContext* globalCtx);
void func_808C2BD0(EnBb* this, GlobalContext* globalCtx);
void func_808C2C38(EnBb* this);
void func_808C2CB4(EnBb* this, GlobalContext* globalCtx);
void func_808C2CF0(EnBb* this);
void func_808C2D78(EnBb* this, GlobalContext* globalCtx);

const ActorInit En_Bb_InitVars = {
    ACTOR_EN_BB,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_BB,
    sizeof(EnBb),
    (ActorFunc)EnBb_Init,
    (ActorFunc)EnBb_Destroy,
    (ActorFunc)EnBb_Update,
    (ActorFunc)EnBb_Draw,
};

static ColliderSphereInit sSphereInit = {
    {
        COLTYPE_HIT3,
        AT_NONE | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_SPHERE,
    },
    {
        ELEMTYPE_UNK0,
        { 0xF7CFFFFF, 0x00, 0x08 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 0, { { 0, 0, 0 }, 20 }, 100 },
};

static DamageTable sDamageTable = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x1),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(1, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xE),
    /* Goron punch    */ DMG_ENTRY(1, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(1, 0x0),
    /* Fire arrow     */ DMG_ENTRY(1, 0x0),
    /* Ice arrow      */ DMG_ENTRY(2, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(1, 0x0),
    /* Deku bubble    */ DMG_ENTRY(1, 0x0),
    /* Deku launch    */ DMG_ENTRY(2, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x1),
    /* Zora barrier   */ DMG_ENTRY(0, 0x5),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0x0),
    /* Zora punch     */ DMG_ENTRY(1, 0x0),
    /* Spin attack    */ DMG_ENTRY(1, 0x0),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0x0),
};

static CollisionCheckInfoInit sColChkInfoInit = { 2, 20, 40, 50 };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(hintId, 28, ICHAIN_CONTINUE),
    ICHAIN_F32(targetArrowOffset, 10, ICHAIN_STOP),
};

static s8 D_808C37FC[] = {
    -1, -1, -1, -1, 0, -1, -1, -1, 1, -1, -1, -1, -1, 2, -1, 3,
};

static Vec3f D_808C380C = { 1000.0f, -700.0f, 0.0f };

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnBb* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_Init(globalCtx, &this->skelAnime, &object_bb_Skel_001A30, &object_bb_Anim_000444, this->jointTable,
                   this->morphTable, 16);
    Collider_InitAndSetSphere(globalCtx, &this->collider, &this->actor, &sSphereInit);
    ActorShape_Init(&this->actor.shape, 1500.0f, ActorShadow_DrawCircle, 35.0f);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);

    this->unk_268 = 0.8f;
    this->unk_264 = 1.0f;
    this->actor.world.pos.y += 50.0f;

    if (EN_BB_GET_RIGHT_SHIFT_8_PARAM(&this->actor) == 0xFF) {
        this->unk_260 = 200.0f;
    } else {
        this->unk_260 = EN_BB_GET_RIGHT_SHIFT_8_PARAM(&this->actor) * 4.0f;
    }

    func_808C20D4(this);
}

void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnBb* this = THIS;

    Collider_DestroySphere(globalCtx, &this->collider);
}

void func_808C1E94(EnBb* this) {
    s16 temp_v1;

    if (this->actor.bgCheckFlags & 8) {
        temp_v1 = this->actor.shape.rot.y - this->actor.wallYaw;
        if (ABS_ALT(temp_v1) >= 0x4001) {
            this->actor.shape.rot.y = ((this->actor.wallYaw * 2) - this->actor.shape.rot.y) - 0x8000;
        }

        this->unk_254 = this->actor.shape.rot.y;
        this->actor.bgCheckFlags &= ~8;
    }
}

void func_808C1F00(EnBb* this) {
    this->drawDmgEffType = 10;
    this->drawDmgEffScale = 0.4f;
    this->drawDmgEffFrozenSteamScale = 0.6f;
    this->unk_250 = 0x50;
    this->drawDmgEffAlpha = 1.0f;
    this->actor.flags &= ~ACTOR_FLAG_200;
    Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 80);
}

void func_808C1F74(EnBb* this, GlobalContext* globalCtx) {
    if (this->drawDmgEffType == 10) {
        this->drawDmgEffType = 0;
        this->drawDmgEffAlpha = 0.0f;
        Actor_SpawnIceEffects(globalCtx, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos), 2, 0.2f, 0.15f);
        this->actor.flags |= ACTOR_FLAG_200;
    }
}

void func_808C1FF4(EnBb* this) {
    SkelAnime_Update(&this->skelAnime);
    if (this->actor.floorHeight > BGCHECK_Y_MIN) {
        Math_StepToF(&this->actor.world.pos.y, this->actor.floorHeight + this->unk_25C, 0.5f);
    }

    this->actor.world.pos.y += Math_CosS(this->unk_256);
    this->unk_256 += 0x826;
    Math_StepToF(&this->unk_268, 0.8f, 0.1f);
    Math_StepToF(&this->unk_264, 1.0f, 0.1f);
    func_808C1E94(this);
    Math_StepToF(&this->actor.speedXZ, this->unk_258, 0.5f);
    Math_ApproachS(&this->actor.shape.rot.y, this->unk_254, 5, 0x3E8);
    this->actor.world.rot.y = this->actor.shape.rot.y;
}

void func_808C20D4(EnBb* this) {
    if (this->actionFunc != func_808C2238) {
        Animation_PlayLoop(&this->skelAnime, &object_bb_Anim_000444);
    }

    if (this->actionFunc == func_808C23EC) {
        this->unk_252 = 0x28;
    } else {
        this->unk_252 = 0;
    }

    this->unk_250 = (s32)Rand_ZeroFloat(20.0f) + 0x28;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->unk_25C = (Math_CosS(this->unk_256) * 10.0f) + 30.0f;
    this->unk_254 = Actor_YawToPoint(&this->actor, &this->actor.home.pos);

    if ((this->actor.xzDistToPlayer < (this->unk_260 + 120.0f)) ||
        (Actor_XZDistanceToPoint(&this->actor, &this->actor.home.pos) < 300.0f)) {
        this->unk_254 += (s16)(Rand_Next() >> 0x11);
    }

    this->collider.base.atFlags |= AT_ON;
    this->unk_258 = Rand_ZeroFloat(1.5f) + 1.0f;
    this->actionFunc = func_808C2238;
}

void func_808C2238(EnBb* this, GlobalContext* globalCtx) {
    func_808C1FF4(this);

    if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_WING);
    } else if ((Animation_OnFrame(&this->skelAnime, 0.0f)) && (Rand_ZeroOne() < 0.1f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }

    DECR(this->unk_252);
    this->unk_250--;

    if ((this->unk_252 == 0) && (this->actor.xzDistToPlayer < this->unk_260) &&
        (Player_GetMask(globalCtx) != PLAYER_MASK_STONE)) {
        func_808C2344(this);
    } else if (this->unk_250 == 0) {
        func_808C20D4(this);
    }
}

void func_808C2344(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &object_bb_Anim_000184);
    this->unk_250 = (s32)Rand_ZeroFloat(20.0f) + 0x3C;
    this->unk_25C = (Math_CosS(this->unk_256) * 10.0f) + 30.0f;
    this->unk_254 = this->actor.yawTowardsPlayer;
    this->unk_258 = Rand_ZeroFloat(1.5f) + 4.0f;
    this->actionFunc = func_808C23EC;
}

void func_808C23EC(EnBb* this, GlobalContext* globalCtx) {
    this->unk_254 = this->actor.yawTowardsPlayer;
    func_808C1FF4(this);

    if ((Animation_OnFrame(&this->skelAnime, 0.0f)) || (Animation_OnFrame(&this->skelAnime, 5.0f))) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_MOUTH);
    } else if ((Animation_OnFrame(&this->skelAnime, 2.0f)) || (Animation_OnFrame(&this->skelAnime, 7.0f))) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_WING);
    } else if ((Animation_OnFrame(&this->skelAnime, 0.0f)) && (Rand_ZeroOne() < 0.1f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }

    this->unk_250--;

    if (((this->unk_260 + 120.0f) < this->actor.xzDistToPlayer) || (this->unk_250 == 0) ||
        (Player_GetMask(globalCtx) == PLAYER_MASK_STONE) ||
        (Actor_XZDistanceToPoint(&this->actor, &this->actor.home.pos) > 400.0f)) {
        func_808C20D4(this);
    }
}

void func_808C254C(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &object_bb_Anim_000444);
    this->collider.base.atFlags |= AT_ON;
    this->unk_250 = 0x8C;
    this->collider.base.acFlags |= AC_ON;
    this->actor.speedXZ = 2.0f;
    this->unk_268 = 0.0f;
    this->unk_264 = 0.0f;
    this->actor.gravity = -2.0f;
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_DOWN);
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_808C25E0;
}

void func_808C25E0(EnBb* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    func_808C1E94(this);
    if (this->actor.bgCheckFlags & 1) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_EYEGOLE_ATTACK);
        if (this->unk_250 == 0) {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_UP);
            func_808C20D4(this);
            return;
        }

        if (this->actor.velocity.y < -14.0f) {
            this->actor.velocity.y *= -0.7f;
        } else {
            this->actor.velocity.y = 10.0f;
        }

        this->actor.bgCheckFlags &= ~1;
        Actor_SpawnFloorDustRing(globalCtx, &this->actor, &this->actor.world.pos, 7.0f, 2, 2.0f, 0, 0, 0);
        Math_ScaledStepToS(&this->actor.shape.rot.y, (s16)(this->actor.yawTowardsPlayer + 0x8000), 0xBB8);
    }

    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (Animation_OnFrame(&this->skelAnime, 5.0f)) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_WING);
    }

    if (this->unk_250 > 0) {
        this->unk_250--;
    }
}

void func_808C272C(EnBb* this, GlobalContext* globalCtx) {
    Vec3f* temp;
    Vec3f sp70;
    f32 temp_f0;
    s32 i;

    func_800BE568(&this->actor, &this->collider);
    this->unk_250 = 0xF;
    this->actor.shape.rot.x += 0x4E20;
    this->actor.speedXZ = 0.0f;
    SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->actor.world.pos, 40, NA_SE_EN_BUBLE_DEAD);
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.world.pos, 0x70);
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->unk_24C = 1;
    this->actor.gravity = -1.5f;

    temp = &this->unk_2B4[0];
    for (i = 0; i < ARRAY_COUNT(this->limbPos); i++, temp++) {
        Math_Vec3f_Diff(&this->limbPos[i], &this->actor.world.pos, &sp70);
        temp_f0 = Math3D_Vec3fMagnitude(&sp70);
        if (temp_f0 > 1.0f) {
            temp_f0 = 2.5f / temp_f0;
        }

        temp->x = sp70.x * temp_f0;
        temp->z = sp70.z * temp_f0;
        temp->y = Rand_ZeroFloat(3.5f) + 10.0f;
    }

    this->actor.flags |= ACTOR_FLAG_10;
    this->actor.flags &= ~ACTOR_FLAG_1;
    this->actionFunc = func_808C28CC;
}

void func_808C28CC(EnBb* this, GlobalContext* globalCtx) {
    s32 i;

    this->unk_250--;
    Math_SmoothStepToS(&this->actor.world.rot.z, 0x4000, 4, 0x1000, 0x400);

    if (this->unk_250 == 0) {
        for (i = 0; i < ARRAY_COUNT(this->limbPos); i++) {
            func_800B3030(globalCtx, &this->limbPos[i], &gZeroVec3f, &gZeroVec3f, 40, 7, 2);
            SoundSource_PlaySfxAtFixedWorldPos(globalCtx, &this->limbPos[i], 11, NA_SE_EN_EXTINCT);
        }

        func_808C2C38(this);
    } else {
        for (i = 0; i < ARRAY_COUNT(this->limbPos); i++) {
            Math_Vec3f_Sum(&this->limbPos[i], &this->unk_2B4[i], &this->limbPos[i]);
            this->unk_2B4[i].y += this->actor.gravity;
        }
    }
}

void func_808C2A00(EnBb* this) {
    this->collider.base.acFlags &= ~AC_ON;
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_DAMAGE);
    func_800BE568(&this->actor, &this->collider);

    if (this->actor.colChkInfo.damageEffect == 5) {
        Actor_SetColorFilter(&this->actor, 0, 255, 0, 40);
        this->drawDmgEffType = 32;
        this->drawDmgEffAlpha = 2.0f;
        this->drawDmgEffScale = 0.4f;
    } else if (this->actor.colChkInfo.damageEffect == 1) {
        Actor_SetColorFilter(&this->actor, 0, 255, 0, 20);
        this->actor.speedXZ = 0.0f;
    } else if (this->actor.colChkInfo.damageEffect == 0xE) {
        this->actor.speedXZ = 0.0f;
    } else {
        Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 20);
        this->actor.speedXZ = 7.0f;
    }

    this->actor.gravity = -1.0f;
    this->actionFunc = func_808C2B1C;
}

void func_808C2B1C(EnBb* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if ((this->actor.bgCheckFlags & 1) && (this->actor.speedXZ < 0.1f)) {
        func_808C254C(this);
    }
}

void func_808C2B94(EnBb* this) {
    this->actor.speedXZ = 0.0f;
    if (this->actor.velocity.y > 0.0f) {
        this->actor.velocity.y = 0.0f;
    }

    this->actor.gravity = -2.0f;
    this->actionFunc = func_808C2BD0;
}

void func_808C2BD0(EnBb* this, GlobalContext* globalCtx) {
    DECR(this->unk_250);

    if (this->unk_250 == 0) {
        func_808C1F74(this, globalCtx);
        if (this->actor.colChkInfo.health == 0) {
            func_808C272C(this, globalCtx);
        } else {
            func_808C254C(this);
        }
    }
}

void func_808C2C38(EnBb* this) {
    this->actor.draw = NULL;
    this->unk_24C = 0;
    this->drawDmgEffAlpha = 0.0f;
    Math_Vec3f_Copy(&this->actor.world.pos, &this->actor.home.pos);
    this->actor.shape.rot.x = 0;
    this->actor.world.pos.y += 50.0f;
    this->unk_250 = 0xC8;
    this->actor.speedXZ = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->actionFunc = func_808C2CB4;
}

void func_808C2CB4(EnBb* this, GlobalContext* globalCtx) {
    this->unk_250--;
    if (this->unk_250 == 0) {
        func_808C2CF0(this);
    }
}

void func_808C2CF0(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &object_bb_Anim_000184);
    this->actor.draw = EnBb_Draw;
    this->actor.scale.x = 0.0f;
    this->actor.scale.y = 0.015f;
    this->actor.scale.z = 0.0f;
    this->unk_264 = 1.0f;
    this->unk_268 = 0.8f;
    this->actor.colChkInfo.health = sColChkInfoInit.health;
    this->actionFunc = func_808C2D78;
}

void func_808C2D78(EnBb* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    this->actor.shape.rot.y += 0x1F00;

    if (Math_StepToF(&this->actor.scale.x, 0.01f, 0.0005f)) {
        this->actor.flags &= ~ACTOR_FLAG_10;
        this->actor.flags |= ACTOR_FLAG_1;
        this->collider.base.acFlags |= AC_ON;
        this->collider.base.atFlags |= AT_ON;
        this->actor.world.rot.y = this->actor.shape.rot.y;
        func_808C20D4(this);
    }

    this->actor.scale.z = this->actor.scale.x;
    this->actor.scale.y = ((0.01f - this->actor.scale.x) * 0.5f) + 0.01f;
}

void func_808C2E34(EnBb* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        this->collider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
        this->collider.base.atFlags &= ~AT_ON;
        if ((this->drawDmgEffType != 10) || (!(this->collider.info.acHitInfo->toucher.dmgFlags & 0xDB0B3))) {
            Actor_SetDropFlag(&this->actor, &this->collider.info);
            this->unk_268 = 0.0f;
            this->unk_264 = 0.0f;
            func_808C1F74(this, globalCtx);

            if (Actor_ApplyDamage(&this->actor) == 0) {
                Enemy_StartFinishingBlow(globalCtx, &this->actor);
            }

            if (this->actor.colChkInfo.damageEffect == 3) {
                func_808C1F00(this);
                if (this->actor.colChkInfo.health == 0) {
                    this->unk_250 = 3;
                    this->collider.base.acFlags &= ~AC_ON;
                }

                func_808C2B94(this);
            } else if (this->actor.colChkInfo.health == 0) {
                func_808C272C(this, globalCtx);
            } else {
                func_808C2A00(this);
            }

            if (this->actor.colChkInfo.damageEffect == 4) {
                this->drawDmgEffAlpha = 4.0f;
                this->drawDmgEffScale = 0.4f;
                this->drawDmgEffType = 20;
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_CLEAR_TAG, this->collider.info.bumper.hitPos.x,
                            this->collider.info.bumper.hitPos.y, this->collider.info.bumper.hitPos.z, 0, 0, 0,
                            CLEAR_TAG_SMALL_LIGHT_RAYS);
            }
        }
    } else {
        if (this->collider.base.atFlags & AT_BOUNCED) {
            this->collider.base.atFlags &= ~(AT_HIT | AT_BOUNCED);
            if (this->actionFunc != func_808C25E0) {
                this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
                this->actor.shape.rot.y = this->actor.world.rot.y;
                func_808C254C(this);
            }
        } else if (this->collider.base.atFlags & AT_HIT) {
            this->collider.base.atFlags &= ~AT_HIT;
            this->actor.world.rot.y = this->actor.yawTowardsPlayer + 0x8000;
            this->actor.shape.rot.y = this->actor.world.rot.y;
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_BUBLE_BITE);

            if (this->unk_264 > 0.0f) {
                gSaveContext.unk_1016 = 0x4B0;
            }

            if (this->actionFunc == func_808C23EC) {
                func_808C20D4(this);
            }
        }
    }
}

void EnBb_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnBb* this = THIS;

    func_808C2E34(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if ((this->actionFunc != func_808C28CC) && (this->actionFunc != func_808C2CB4)) {
        Actor_MoveWithGravity(&this->actor);
        Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 30.0f, 25.0f, 40.0f, 7U);

        this->collider.dim.worldSphere.center.x = this->actor.world.pos.x;
        this->collider.dim.worldSphere.center.y = this->actor.world.pos.y + 15.0f;
        this->collider.dim.worldSphere.center.z = this->actor.world.pos.z;
        this->collider.dim.worldSphere.radius = this->unk_264 * 30.0f;
        this->collider.dim.worldSphere.radius = CLAMP_MIN(this->collider.dim.worldSphere.radius, 20);

        Math_Vec3s_ToVec3f(&this->actor.focus.pos, &this->collider.dim.worldSphere.center);

        if (this->collider.base.atFlags & AT_ON) {
            this->actor.flags |= ACTOR_FLAG_1000000;
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->collider.base.acFlags & AC_ON) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->collider.base.ocFlags1 & OC1_ON) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }

        if (this->drawDmgEffAlpha > 0.0f) {
            if (this->drawDmgEffType != 10) {
                Math_StepToF(&this->drawDmgEffAlpha, 0.0f, 0.05f);
                this->drawDmgEffScale = (this->drawDmgEffAlpha + 1.0f) * 0.2f;
                this->drawDmgEffScale = CLAMP_MAX(this->drawDmgEffScale, 0.4f);
            } else if (!Math_StepToF(&this->drawDmgEffFrozenSteamScale, 0.4f, 0.01f)) {
                func_800B9010(&this->actor, NA_SE_EV_ICE_FREEZE - SFX_FLAG);
            }
        }
    }
}

s32 func_808C32EC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnBb* this = THIS;

    if (this->unk_24C == -1) {
        this->unk_2F0 = *dList;
        *dList = NULL;
    }

    return false;
}

void func_808C3324(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    s32 pad;
    EnBb* this = THIS;
    MtxF* temp_v0_4;

    if (this->unk_24C == 0) {
        if (D_808C37FC[limbIndex] != -1) {
            if (D_808C37FC[limbIndex] == 0) {
                Matrix_GetStateTranslationAndScaledX(1000.0f, &this->limbPos[0]);
            } else if (D_808C37FC[limbIndex] == 3) {
                Matrix_GetStateTranslationAndScaledX(-1000.0f, &this->limbPos[3]);
                Matrix_MultiplyVector3fByState(&D_808C380C, &this->limbPos[4]);
            } else {
                Matrix_GetStateTranslation(&this->limbPos[D_808C37FC[limbIndex]]);
            }
        }
    } else if (this->unk_24C > 0) {
        if (D_808C37FC[limbIndex] != -1) {
            Matrix_GetStateTranslation(&this->limbPos[D_808C37FC[limbIndex]]);
        }

        if (limbIndex == 15) {
            this->unk_24C = -1;
        }
    } else {
        if (D_808C37FC[limbIndex] != -1) {
            OPEN_DISPS(globalCtx->state.gfxCtx);

            temp_v0_4 = Matrix_GetCurrentState();
            temp_v0_4->mf[3][0] = this->limbPos[D_808C37FC[limbIndex]].x;
            temp_v0_4->mf[3][1] = this->limbPos[D_808C37FC[limbIndex]].y;
            temp_v0_4->mf[3][2] = this->limbPos[D_808C37FC[limbIndex]].z;
            Matrix_InsertZRotation_s(thisx->world.rot.z, MTXMODE_APPLY);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, this->unk_2F0);

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
    }
}

void EnBb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBb* this = THIS;
    MtxF* currentMatrixState;
    Gfx* gfx;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    gfx = POLY_OPA_DISP;
    gSPDisplayList(&gfx[0], &sSetupDL[6 * 25]);
    POLY_OPA_DISP = &gfx[1];
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, func_808C32EC, func_808C3324,
                      &this->actor);

    if (this->unk_264 > 0.0f) {
        currentMatrixState = Matrix_GetCurrentState();
        func_8012C2DC(globalCtx->state.gfxCtx);
        Matrix_RotateY(
            ((Camera_GetCamDirYaw(globalCtx->cameraPtrs[globalCtx->activeCamera]) - this->actor.shape.rot.y) + 0x8000),
            MTXMODE_APPLY);
        Matrix_Scale(this->unk_264, this->unk_268, 1.0f, MTXMODE_APPLY);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 255, 255);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 255, 0);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                    (globalCtx->gameplayFrames * -20) & 0x1FF, 32, 128));
        currentMatrixState->mf[3][1] -= 47.0f * this->unk_268;
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, gGameplayKeepDrawFlameDL);
    }

    func_800BE680(globalCtx, &this->actor, this->limbPos, ARRAY_COUNT(this->limbPos), this->drawDmgEffScale,
                  this->drawDmgEffFrozenSteamScale, this->drawDmgEffAlpha, this->drawDmgEffType);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
