/*
 * File: z_en_dragon.c
 * Overlay: ovl_En_Dragon
 * Description: Deep Python
 */

#include "z_en_dragon.h"
#include "objects/object_utubo/object_utubo.h"

#define FLAGS (ACTOR_FLAG_1 | ACTOR_FLAG_4 | ACTOR_FLAG_10 | ACTOR_FLAG_20)

#define THIS ((EnDragon*)thisx)

void EnDragon_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDragon_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDragon_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDragon_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B5ED90(EnDragon* this, GlobalContext* globalCtx);
void func_80B5EE3C(EnDragon* this, GlobalContext* globalCtx);
void func_80B5EFD0(EnDragon* this, GlobalContext* globalCtx);
void func_80B5F418(EnDragon* this, GlobalContext* globalCtx);
void func_80B5F508(EnDragon* this, GlobalContext* globalCtx);
void func_80B5F8D8(EnDragon* this, GlobalContext* globalCtx);
void func_80B5FCC0(EnDragon* this, GlobalContext* globalCtx);
void func_80B5FD68(EnDragon* this, GlobalContext* globalCtx);
void func_80B5EAA0(EnDragon* this, s32 arg1);
void func_80B5EDF0(EnDragon* this);
void func_80B5EF88(EnDragon* this);

static s32 D_80B605D0 = 0;

const ActorInit En_Dragon_InitVars = {
    ACTOR_EN_DRAGON,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_UTUBO,
    sizeof(EnDragon),
    (ActorFunc)EnDragon_Init,
    (ActorFunc)EnDragon_Destroy,
    (ActorFunc)EnDragon_Update,
    (ActorFunc)EnDragon_Draw,
};

// static DamageTable sDamageTable = {
static DamageTable D_80B605F4 = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x0),
    /* Deku Stick     */ DMG_ENTRY(0, 0x0),
    /* Horse trample  */ DMG_ENTRY(0, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0xF),
    /* Zora boomerang */ DMG_ENTRY(1, 0xF),
    /* Normal arrow   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0x0),
    /* Goron punch    */ DMG_ENTRY(0, 0x0),
    /* Sword          */ DMG_ENTRY(0, 0x0),
    /* Goron pound    */ DMG_ENTRY(0, 0x0),
    /* Fire arrow     */ DMG_ENTRY(0, 0x0),
    /* Ice arrow      */ DMG_ENTRY(0, 0x0),
    /* Light arrow    */ DMG_ENTRY(0, 0x0),
    /* Goron spikes   */ DMG_ENTRY(0, 0x0),
    /* Deku spin      */ DMG_ENTRY(0, 0x0),
    /* Deku bubble    */ DMG_ENTRY(0, 0x0),
    /* Deku launch    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x0),
    /* Zora barrier   */ DMG_ENTRY(1, 0xF),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(0, 0x0),
    /* Zora punch     */ DMG_ENTRY(1, 0xF),
    /* Spin attack    */ DMG_ENTRY(0, 0x0),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0xF),
};

// static ColliderJntSphElementInit sJntSphElementsInit[8] = {
static ColliderJntSphElementInit D_80B60614[8] = {
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 13, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 12, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 10, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 0 }, 1 },
    },
    {
        {
            ELEMTYPE_UNK1,
            { 0xF7CFFFFF, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_ON,
        },
        { 9, { { 0, 0, 0 }, 0 }, 1 },
    },
};

// static ColliderJntSphInit sJntSphInit = {
static ColliderJntSphInit D_80B60734 = {
    {
        COLTYPE_HIT6,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_PLAYER,
        OC2_TYPE_1,
        COLSHAPE_JNTSPH,
    },
    8,
    D_80B60614, // sJntSphElementsInit,
};

static AnimationHeader* D_80B60744[] = {
    &object_utubo_Anim_0048B8,
    &object_utubo_Anim_004ABC,
    &object_utubo_Anim_004740,
    &object_utubo_Anim_0048B8,
};

static u8 D_80B60754[] = { ANIMMODE_LOOP, ANIMMODE_LOOP, ANIMMODE_ONCE, ANIMMODE_ONCE };

static Color_RGBA8 D_80B60758[] = {
    { 255, 255, 255, 255 },
    { 150, 255, 255, 255 },
    { 100, 255, 255, 255 },
};

static Color_RGBA8 D_80B60764[] = {
    { 150, 150, 150, 0 },
    { 0, 100, 0, 255 },
    { 0, 0, 255, 255 },
};

void EnDragon_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDragon* this = THIS;

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_utubo_Skel_004398, &object_utubo_Anim_0048B8,
                       this->jointTable, this->morphTable, 0x10);
    this->actor.colChkInfo.health = 4;
    this->actor.colChkInfo.damageTable = &D_80B605F4;
    this->actor.targetMode = 0xA;
    Collider_InitAndSetJntSph(globalCtx, &this->unk_2DC, &this->actor, &D_80B60734, this->unk_2FC);

    this->unk_2DC.elements[0].dim.scale = this->unk_2DC.elements[1].dim.scale = this->unk_2DC.elements[2].dim.scale =
        this->unk_2DC.elements[3].dim.scale = this->unk_2DC.elements[4].dim.scale =
            this->unk_2DC.elements[5].dim.scale = this->unk_2DC.elements[6].dim.scale =
                this->unk_2DC.elements[7].dim.scale = 1.0f;
    this->unk_2DC.elements[0].dim.modelSphere.radius = 150;
    this->unk_2DC.elements[0].dim.modelSphere.center.x = 420;
    this->unk_2DC.elements[1].dim.modelSphere.radius = 160;
    this->unk_2DC.elements[1].dim.modelSphere.center.x = 630;
    this->unk_2DC.elements[2].dim.modelSphere.radius = 130;
    this->unk_2DC.elements[2].dim.modelSphere.center.x = 630;
    this->unk_2DC.elements[3].dim.modelSphere.radius = 170;
    this->unk_2DC.elements[3].dim.modelSphere.center.x = 920;
    this->unk_2DC.elements[4].dim.modelSphere.radius = 150;
    this->unk_2DC.elements[4].dim.modelSphere.center.x = 530;
    this->unk_2DC.elements[5].dim.modelSphere.radius = 140;
    this->unk_2DC.elements[5].dim.modelSphere.center.x = 730;
    this->unk_2DC.elements[6].dim.modelSphere.radius = 120;
    this->unk_2DC.elements[6].dim.modelSphere.center.x = 430;
    this->unk_2DC.elements[7].dim.modelSphere.radius = 110;
    this->unk_2DC.elements[7].dim.modelSphere.center.x = 160;
    this->unk_250 = (this->actor.params >> 7) & 0x1F;
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->unk_2BA = 0;
    this->actor.hintId = 0xE;
    this->unk_2D4 = 0.5f;
    this->actor.flags &= ~ACTOR_FLAG_8000000;
    func_80B5EDF0(this);
}

void EnDragon_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDragon* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->unk_2DC);
}

void func_80B5EAA0(EnDragon* this, s32 arg1) {
    f32 phi_f0;

    this->unk_24C = arg1;
    this->unk_2D0 = Animation_GetLastFrame(D_80B60744[arg1]);
    phi_f0 = 0.0f;
    if (this->unk_24C == 3) {
        phi_f0 = this->unk_2D0;
    }

    Animation_Change(&this->skelAnime, D_80B60744[arg1], 1.0f, phi_f0, this->unk_2D0, D_80B60754[this->unk_24C], -4.0f);
}

void func_80B5EB40(EnDragon* this, GlobalContext* globalCtx, Vec3f arg2) {
    static Vec3f D_80B60770 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_80B6077C = { 0.0f, 0.1f, 0.0f };
    s32 phi_v0;
    s16 phi_s1;
    s16 temp;
    Vec3f sp9C;
    s32 i;

    phi_v0 = (s32)randPlusMinusPoint5Scaled(5.0f) + 10;
    phi_s1 = 0;
    if (this->unk_2BA == 6) {
        phi_s1 = 1;
        phi_v0 = (s32)randPlusMinusPoint5Scaled(5.0f) + 10;
    }

    for (i = 0; i < phi_v0; i++) {
        Math_Vec3f_Copy(&sp9C, &arg2);
        D_80B60770.x = Rand_ZeroFloat(1.0f) * 23.0f;
        D_80B60770.y = Rand_ZeroFloat(1.0f) * 10.0f;
        D_80B60770.z = Rand_ZeroFloat(1.0f) * 23.0f;
        sp9C.x += randPlusMinusPoint5Scaled(i * 30.0f);
        sp9C.y += randPlusMinusPoint5Scaled(5.0f);
        sp9C.z += randPlusMinusPoint5Scaled(i * 30.0f);
        D_80B6077C.y = Rand_ZeroFloat(1.0f) * 20.0f * 3.0f;
        temp = Rand_S16Offset(380, 240);
        EffectSsDtBubble_SpawnCustomColor(globalCtx, &sp9C, &D_80B60770, &D_80B6077C, &D_80B60758[phi_s1],
                                          &D_80B60764[phi_s1], temp, 30, 0);
    }
}

static Vec3f D_80B60788[] = {
    { 1600.0f, 0.0f, 1400.0f }, { 1400.0f, 0.0f, 400.0f },  { 1800.0f, 0.0f, 1400.f },  { 1100.0f, -200.0f, 1500.0f },
    { 2000.0f, 0.0f, 1500.0f }, { 1900.0f, 0.0f, 1800.0f }, { 1700.0f, 0.0f, 1100.0f }, { 1700.0f, 0.0f, 1100.0f },
};

static Vec3f D_80B607E8[] = {
    { 300.0f, -100.0f, 1300.0f }, { 1500.0f, 0.0f, 2400.0f }, { 300.0f, -100.0f, 1300.0f }, { 1900.0f, 500.0f, 600.0f },
    { -1000.0f, 0.0f, 1000.0f },  { 1200.0f, 0.0f, 1500.0f }, { 1100.0f, 0.0f, 2000.0f },   { 1100.0f, 0.0f, 2000.0f },
};

static s16 D_80B60848[] = { 0x07D0, 0x07D0, 0x07D0, 0x07D0, 0x07D0, 0x0BB8, 0x0000, 0x0000 };

static s32 D_80B60858[] = { 5, 5, 5, 4, 5, 8, 5, 5 };

static Vec3f D_80B60878 = { 350.0f, -120.0f, -60.0f };

void func_80B5ED90(EnDragon* this, GlobalContext* globalCtx) {
    if (this->unk_2B4 == 0) {
        func_800B8D50(globalCtx, &this->actor, 10.0f, this->actor.world.rot.y, 10.0f, 8);
        func_80B5EDF0(this);
    }
}

void func_80B5EDF0(EnDragon* this) {
    func_80B5EAA0(this, 3);
    this->unk_2BE = 0;
    this->unk_2CC = 0;
    this->unk_2B8 = 0;
    this->unk_2CA = 0;
    this->unk_2B4 = 0x1E;
    this->actionFunc = func_80B5EE3C;
}

void func_80B5EE3C(EnDragon* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if (this->unk_2BA == 1) {
        func_80B5EF88(this);
    } else if ((this->unk_2B4 != 0) && (fabsf(this->actor.world.pos.x - this->actor.home.pos.x) > 101.0f) &&
               (fabsf(this->actor.world.pos.z - this->actor.home.pos.z) > 101.0f)) {
        this->actor.speedXZ = -100.0f;
    } else {
        this->actor.speedXZ = 0.0f;

        if ((fabsf(this->actor.world.pos.x - this->actor.home.pos.x) > 4.0f) &&
            (fabsf(this->actor.world.pos.z - this->actor.home.pos.z) > 4.0f)) {
            Math_ApproachF(&this->actor.world.pos.x, this->actor.home.pos.x, 0.3f, 200.0f);
            Math_ApproachF(&this->actor.world.pos.z, this->actor.home.pos.z, 0.3f, 200.0f);
        } else if (this->unk_2BA != 0) {
            this->unk_2BA = 0;
        }
    }
}

void func_80B5EF88(EnDragon* this) {
    this->unk_2BE = 0;
    this->unk_2B0 = this->unk_2BE;
    Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_APPEAR_TRG);
    this->unk_2AE = 0xFA;
    this->actionFunc = func_80B5EFD0;
}

void func_80B5EFD0(EnDragon* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    f32 currentFrame;
    s16 phi_v1;

    currentFrame = this->skelAnime.curFrame;
    func_80B5EB40(this, globalCtx, this->unk_254);

    if (this->unk_2BA >= 3) {
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_BACK);
        func_80B5EDF0(this);
    } else if (this->unk_2AE == 0) {
        this->unk_2BA = 4;
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_BACK);
        func_80B5EDF0(this);
    } else if (this->unk_2BE == 0) {
        Vec3f sp38;

        Math_Vec3f_Copy(&sp38, &this->unk_260);
        Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_APPEAR - SFX_FLAG);
        sp38.x += Math_SinS(this->actor.world.rot.y) * -530.0f;
        sp38.z += Math_CosS(this->actor.world.rot.y) * -530.0f;
        this->actor.speedXZ = 40.0f;
        Math_SmoothStepToS(&this->unk_2A8, 0xFA0, 5, 0xBB8, 0x14);

        if ((fabsf(this->actor.world.pos.x - sp38.x) < 51.0f) && (fabsf(this->actor.world.pos.z - sp38.z) < 51.0f)) {
            this->actor.speedXZ = 0.0f;
            Math_ApproachF(&this->actor.world.pos.x, sp38.x, 0.3f, 50.0f);
            Math_ApproachF(&this->actor.world.pos.z, sp38.z, 0.3f, 50.0f);
            if ((fabsf(this->actor.world.pos.x - sp38.x) < 4.0f) && (fabsf(this->actor.world.pos.z - sp38.z) < 4.0f)) {
                if (this->unk_24C != 1) {
                    func_80B5EAA0(this, 1);
                }

                this->unk_2BE = 1;
            }
        }
    } else {
        Math_SmoothStepToS(&this->unk_2A8, 0, 5, 0xBB8, 0x14);
        SkelAnime_Update(&this->skelAnime);
        if (this->unk_2BE == 1) {
            if (currentFrame < this->unk_2D0) {
                return;
            }
            this->unk_2BE = 2;
        }

        phi_v1 = ABS_ALT(BINANG_SUB(Math_Vec3f_Yaw(&this->unk_254, &player->actor.world.pos), this->actor.shape.rot.y));
        if (phi_v1 < 0x5000) {
            if ((this->unk_2D0 <= currentFrame) && (this->unk_2B2 == 0)) {
                if (this->unk_24C != 1) {
                    func_80B5EAA0(this, 1);
                }

                this->unk_2BE = 2;
            }

            this->unk_2B0 = 0;
        } else {
            if (this->unk_2BE == 2) {
                func_80B5EAA0(this, 0);
                this->unk_2B2 = Rand_ZeroFloat(20.0f) + this->unk_2D0;
                this->unk_2BE = 3;
            }

            this->unk_2B0++;
            if (this->unk_2B0 >= 0x3D) {
                this->unk_2BA = 4;
                Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_BACK);
                func_80B5EDF0(this);
            }
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5F3A4.s")

void func_80B5F418(EnDragon* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    Vec3f sp28;
    s16 temp_v0;

    if (!ActorCutscene_GetCanPlayNext(this->unk_2C0)) {
        ActorCutscene_SetIntentToPlay(this->unk_2C0);
    } else {
        ActorCutscene_StartAndSetUnkLinkFields(this->unk_2C0, &this->actor);
        Math_Vec3f_Copy(&sp28, &this->unk_260);
        sp28.x += Math_SinS(this->actor.world.rot.y) * -530.0f;
        sp28.z += Math_CosS(this->actor.world.rot.y) * -530.0f;
        Math_Vec3f_Copy(&this->actor.world.pos, &sp28);
        temp_v0 = Math_Vec3f_Yaw(&player->actor.world.pos, &this->unk_254);
        player->actor.shape.rot.y = temp_v0;
        player->actor.world.rot.y = temp_v0;
        this->unk_2BE = 0;
        this->unk_2CA = 0;
        this->unk_2B8 = 0;
        func_80B5EAA0(this, 3);
        this->actionFunc = func_80B5F508;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5F508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5F888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5F8D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5FCC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B5FD68.s")

void func_80B60138(EnDragon* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    u32 sp30;

    if ((this->unk_2BA == 1) && ((this->unk_2DC.elements[2].info.bumperFlags & BUMP_HIT) ||
                                 (this->unk_2DC.elements[3].info.bumperFlags & BUMP_HIT) ||
                                 (this->unk_2DC.elements[4].info.bumperFlags & BUMP_HIT) ||
                                 (this->unk_2DC.elements[5].info.bumperFlags & BUMP_HIT) ||
                                 (this->unk_2DC.elements[6].info.bumperFlags & BUMP_HIT) ||
                                 (this->unk_2DC.elements[7].info.bumperFlags & BUMP_HIT))) {
        Actor_ApplyDamage(&this->actor);
        Actor_SetColorFilter(&this->actor, 0x4000, 255, 0, 25);
        if (this->actor.colChkInfo.health > 0) {
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_DAMAGE);
            this->unk_2BA = 3;
        } else {
            Enemy_StartFinishingBlow(globalCtx, &this->actor);
            Actor_PlaySfxAtPos(&this->actor, NA_SE_EN_UTSUBO_DEAD);
            this->actor.flags |= ACTOR_FLAG_8000000;
            this->actor.flags &= ~ACTOR_FLAG_1;
            this->actor.flags |= ACTOR_FLAG_100000;
            this->unk_2BA = 5;
            this->actionFunc = func_80B5FCC0;
        }
    }

    if ((this->unk_2BA == 1) && (this->unk_2B6 == 0) && (player->invincibilityTimer == 0) &&
        (this->unk_2DC.elements[0].info.ocElemFlags & OCELEM_HIT) &&
        (!(func_800B64FC(globalCtx, 1000.0f, &this->actor.world.pos, &sp30) >= 0.0f) || (sp30 != 1))) {
        this->actor.speedXZ = 0.0f;
        this->unk_2BA = 2;
        this->actor.flags |= ACTOR_FLAG_100000;
        this->actionFunc = func_80B5F418;
    }
}

void EnDragon_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDragon* this = THIS;

    if (this->unk_2AE != 0) {
        this->unk_2AE--;
    }

    if (this->unk_2B4 != 0) {
        this->unk_2B4--;
    }

    if (this->unk_2B2 != 0) {
        this->unk_2B2--;
    }

    if (this->unk_2B6 != 0) {
        this->unk_2B6--;
    }

    func_80B60138(this, globalCtx);
    this->actor.shape.rot.y = this->actor.world.rot.y;
    Math_Vec3f_Copy(&this->actor.focus.pos, &this->unk_29C);
    Math_Vec3s_Copy(&this->actor.focus.rot, &this->actor.world.rot);
    Actor_SetScale(&this->actor, this->unk_2D4);

    this->actionFunc(this, globalCtx);
    Actor_MoveWithGravity(&this->actor);

    if (this->unk_2BA != 2) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk_2DC.base);
    }

    if (this->unk_2BA < 3) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk_2DC.base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->unk_2DC.base);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B6043C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/func_80B60494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Dragon/EnDragon_Draw.s")
