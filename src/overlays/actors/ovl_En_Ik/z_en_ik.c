#include "z_en_ik.h"

#define FLAGS 0x00000405

#define THIS ((EnIk*)thisx)

void EnIk_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIk_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80929B6C(EnIk* this, GlobalContext* globalCtx);
s32 func_80929C80(EnIk* this, GlobalContext* globalCtx);
s32 func_80929D04(EnIk* this);
void func_80929E2C(EnIk* this);

void func_80929F20(EnIk* this, GlobalContext* globalCtx);
void func_80929FC8(EnIk* this);
void func_8092A020(EnIk* this, GlobalContext* globalCtx);
void func_8092A124(EnIk* this);
void func_8092A188(EnIk* this, GlobalContext* globalCtx);
void func_8092A28C(EnIk* this);
void func_8092A33C(EnIk* this, GlobalContext* globalCtx);
void func_8092A570(EnIk* this);
void func_8092A5BC(EnIk* this, GlobalContext* globalCtx);
void func_8092A680(EnIk* this);
void func_8092A754(EnIk* this, GlobalContext* globalCtx);
void func_8092A8D8(EnIk* this);
void func_8092A994(EnIk* this, GlobalContext* globalCtx);
void func_8092AA6C(EnIk* this);
void func_8092AB14(EnIk* this, GlobalContext* globalCtx);

void func_8092ABD8(EnIk* this, GlobalContext* globalCtx);

void func_8092B03C(EnIk* this);
void func_8092B098(EnIk* this, GlobalContext* globalCtx);

s32 D_8092BFA0[] = { 0x0600CF08 };

s32 D_8092BFA4[] = { 0x00000000, 0x0600A5D8, 0x00000000, 0x0600A6D0, 0x7FFF0000, 0x0600A820, 0x40000000,
                     0x0600A780, 0xC0000000, 0x00000000, 0x40000000, 0x00000000, 0xC0000000 };

s32 D_8092BFD8[] = { 0x0600D038, 0x0600D050, 0x0600D068, 0x0600D080, 0x0600D098,
                     0x0600D098, 0x0600D0B0, 0x0600D0C8, 0x0600D0C8 };

const ActorInit En_Ik_InitVars = {
    ACTOR_EN_IK,
    ACTORCAT_ENEMY,
    FLAGS,
    OBJECT_IK,
    sizeof(EnIk),
    (ActorFunc)EnIk_Init,
    (ActorFunc)EnIk_Destroy,
    (ActorFunc)EnIk_Update,
    (ActorFunc)EnIk_Draw,
};

// static ColliderCylinderInit sCylinderInit = {
static ColliderCylinderInit D_8092C01C = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0xF7CFFFFF, 0x00, 0x00 },
        TOUCH_NONE | TOUCH_SFX_NORMAL,
        BUMP_ON | BUMP_HOOKABLE,
        OCELEM_ON,
    },
    { 25, 80, 0, { 0, 0, 0 } },
};

// static ColliderTrisElementInit sTrisElementsInit[2] = {
static ColliderTrisElementInit D_8092C048[2] = {
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { -10.0f, 14.0f, 2.0f }, { -10.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
    {
        {
            ELEMTYPE_UNK2,
            { 0x00000000, 0x00, 0x00 },
            { 0xF7CFFFFF, 0x00, 0x00 },
            TOUCH_NONE | TOUCH_SFX_NORMAL,
            BUMP_ON,
            OCELEM_NONE,
        },
        { { { -10.0f, -6.0f, 2.0f }, { 9.0f, -6.0f, 2.0f }, { 9.0f, 14.0f, 2.0f } } },
    },
};

// static ColliderTrisInit sTrisInit = {
static ColliderTrisInit D_8092C0C0 = {
    {
        COLTYPE_METAL,
        AT_NONE,
        AC_ON | AC_HARD | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_TRIS,
    },
    2,
    D_8092C048, // sTrisElementsInit,
};

// static ColliderQuadInit sQuadInit = {
static ColliderQuadInit D_8092C0D0 = {
    {
        COLTYPE_NONE,
        AT_NONE | AT_TYPE_ENEMY,
        AC_NONE,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_QUAD,
    },
    {
        ELEMTYPE_UNK0,
        { 0x20000000, 0x04, 0x40 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL | TOUCH_UNK7,
        BUMP_NONE,
        OCELEM_NONE,
    },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

// static DamageTable sDamageTable = {
static DamageTable D_8092C120 = {
    /* Deku Nut       */ DMG_ENTRY(0, 0xF),
    /* Deku Stick     */ DMG_ENTRY(0, 0xF),
    /* Horse trample  */ DMG_ENTRY(0, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(0, 0xF),
    /* Normal arrow   */ DMG_ENTRY(0, 0xF),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xF),
    /* Goron punch    */ DMG_ENTRY(2, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(3, 0x0),
    /* Fire arrow     */ DMG_ENTRY(0, 0xF),
    /* Ice arrow      */ DMG_ENTRY(0, 0xF),
    /* Light arrow    */ DMG_ENTRY(1, 0x4),
    /* Goron spikes   */ DMG_ENTRY(0, 0xF),
    /* Deku spin      */ DMG_ENTRY(0, 0xF),
    /* Deku bubble    */ DMG_ENTRY(0, 0xF),
    /* Deku launch    */ DMG_ENTRY(0, 0xF),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0xF),
    /* Zora barrier   */ DMG_ENTRY(0, 0x0),
    /* Normal shield  */ DMG_ENTRY(0, 0x0),
    /* Light ray      */ DMG_ENTRY(0, 0x0),
    /* Thrown object  */ DMG_ENTRY(1, 0x0),
    /* Zora punch     */ DMG_ENTRY(0, 0xF),
    /* Spin attack    */ DMG_ENTRY(1, 0x0),
    /* Sword beam     */ DMG_ENTRY(0, 0x0),
    /* Normal Roll    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1B   */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1C   */ DMG_ENTRY(0, 0x0),
    /* Unblockable    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x1E   */ DMG_ENTRY(0, 0x0),
    /* Powder Keg     */ DMG_ENTRY(1, 0x0),
};

// static DamageTable sDamageTable = {
static DamageTable D_8092C140 = {
    /* Deku Nut       */ DMG_ENTRY(0, 0x0),
    /* Deku Stick     */ DMG_ENTRY(1, 0x0),
    /* Horse trample  */ DMG_ENTRY(0, 0x0),
    /* Explosives     */ DMG_ENTRY(1, 0x0),
    /* Zora boomerang */ DMG_ENTRY(1, 0x0),
    /* Normal arrow   */ DMG_ENTRY(1, 0x0),
    /* UNK_DMG_0x06   */ DMG_ENTRY(0, 0x0),
    /* Hookshot       */ DMG_ENTRY(0, 0xF),
    /* Goron punch    */ DMG_ENTRY(2, 0x0),
    /* Sword          */ DMG_ENTRY(1, 0x0),
    /* Goron pound    */ DMG_ENTRY(3, 0x0),
    /* Fire arrow     */ DMG_ENTRY(2, 0x2),
    /* Ice arrow      */ DMG_ENTRY(2, 0x3),
    /* Light arrow    */ DMG_ENTRY(2, 0x4),
    /* Goron spikes   */ DMG_ENTRY(1, 0x0),
    /* Deku spin      */ DMG_ENTRY(0, 0x0),
    /* Deku bubble    */ DMG_ENTRY(1, 0x0),
    /* Deku launch    */ DMG_ENTRY(0, 0x0),
    /* UNK_DMG_0x12   */ DMG_ENTRY(0, 0x0),
    /* Zora barrier   */ DMG_ENTRY(0, 0x0),
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

// sColChkInfoInit
static CollisionCheckInfoInit D_8092C160 = { 18, 25, 80, MASS_HEAVY };

// static InitChainEntry sInitChain[] = {
static InitChainEntry D_8092C168[] = {
    ICHAIN_F32(targetArrowOffset, 2916, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 12, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -1000, ICHAIN_STOP),
};

s32 D_8092C174[] = { 0x00000000, 0x00080000, 0xFFFF96C8, 0xFFFFFF40, 0xFFFF9600,
                     0xFFFFFF00, 0x08000200, 0x00000000, 0x00000000 };

s32 D_8092C198[] = { 0x00000000 };

s32 D_8092C19C[] = { 0x00000000, 0x3F000000, 0x00000000 };

s32 D_8092C1A8[] = { 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x00FFFFFF, 0xFFFFFFFF, 0xFFFF0305, 0x04060102, 0xFFFF0000 };

s32 D_8092C1C8[] = { 0x44FA0000, 0xC3480000, 0xC5A28000 };

s32 D_8092C1D4[] = { 0x43960000, 0xC3480000, 0x00000000 };

s32 D_8092C1E0[] = { 0xFFFFFF00, 0x01020304, 0x05FFFFFF, 0x06FFFF07, 0xFFFF08FF, 0x090AFF0B, 0xFF0CFFFF, 0xFFFF0000 };

s32 D_8092C200[] = { 0x3F07AE14, 0x3F07AE14, 0x3F07AE14, 0x00000000 };

extern ColliderCylinderInit D_8092C01C;
extern ColliderTrisElementInit D_8092C048[2];
extern ColliderTrisInit D_8092C0C0;
extern ColliderQuadInit D_8092C0D0;
extern DamageTable D_8092C120;
extern DamageTable D_8092C140;
extern CollisionCheckInfoInit D_8092C160;
extern InitChainEntry D_8092C168[];

extern AnimationHeader D_06000CE8;
extern AnimationHeader D_060015F8;
extern AnimationHeader D_06001ABC;
extern AnimationHeader D_06002484;
extern UNK_TYPE D_0600391C;
extern UNK_TYPE D_06004A04;
extern UNK_TYPE D_06005254;
extern AnimationHeader D_060057F4;
extern AnimationHeader D_06006294;
extern AnimationHeader D_06002E7C;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/EnIk_Init.s")
// void EnIk_Init(EnIk* this, GlobalContext* globalCtx) {
//     ? *temp_s0;
//     ? *phi_s0;

//     Actor_ProcessInitChain(&this->actor, D_8092C168);
//     SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060136A0, &D_06006294, this->jointTable, this->morphTable, 30);
//     Collider_InitAndSetCylinder(globalCtx, &this->colliderCylinder, &this->actor, &D_8092C01C);
//     Collider_UpdateCylinder(&this->actor, &this->colliderCylinder);
//     Collider_InitAndSetTris(globalCtx, &this->colliderTris, &this->actor, &D_8092C0C0, this->unk_498);
//     Collider_InitAndSetQuad(globalCtx, &this->colliderQuad, &this->actor, &D_8092C0D0);
//     CollisionCheck_SetInfo(&this->actor.colChkInfo, &D_8092C120, &D_8092C160);
//     this->actor.params &= 0xFF;
//     this->actor.params += -1;
//     Effect_Add(globalCtx, &this->unk_300, 2, 0U, (u8)0, &D_8092C174);
//     phi_s0 = &D_8092BFD8;
//     if (D_8092C198 == 0) {
//         do {
//             phi_s0->unk0 = Lib_SegmentedToVirtual(phi_s0->unk0);
//             phi_s0->unk4 = Lib_SegmentedToVirtual(phi_s0->unk4);
//             temp_s0 = phi_s0 + 0xC;
//             temp_s0->unk - 4 = Lib_SegmentedToVirtual(phi_s0->unk8);
//             phi_s0 = temp_s0;
//         } while (temp_s0 != &En_Ik_InitVars);
//         D_8092C198 = 1;
//     }
//     func_80929E88(this);
// }

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/EnIk_Destroy.s")
void EnIk_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIk* this = THIS;

    Collider_DestroyTris(globalCtx, &this->colliderTris);
    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    Collider_DestroyQuad(globalCtx, &this->colliderQuad);
    Effect_Destroy(globalCtx, this->unk_300);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929AF8.s")
void func_80929AF8(EnIk* this) {
    this->unk_2F5 = 0xA;
    this->unk_308 = 0.65f;
    this->unk_30C = 0.97499996f;
    this->unk_304 = 1.0f;
    this->unk_2F6 = 0x50;
    this->actor.flags &= -0x401;
    func_800BCB70(&this->actor, 0x4000, 0xFF, 0, 0x50);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929B6C.s")
void func_80929B6C(EnIk* this, GlobalContext* globalCtx) {
    if (this->unk_2F5 == 0xA) {
        this->unk_2F5 = 0;
        this->unk_304 = 0.0f;
        func_800BF7CC(globalCtx, &this->actor, &this->unk_310, 0xD, 2, 0.3f, 0.2f);
        this->actor.flags |= 0x400;
    }
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929BEC.s")
void func_80929BEC(EnIk* this, GlobalContext* globalCtx) {
    this->unk_304 = 4.0f;
    this->unk_308 = 0.65f;
    this->unk_2F5 = 0x14;
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0xA2, this->colliderCylinder.info.bumper.hitPos.x,
                this->colliderCylinder.info.bumper.hitPos.y, this->colliderCylinder.info.bumper.hitPos.z, 0, 0, 0, 4);
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929C80.s")
s32 func_80929C80(EnIk* this, GlobalContext* globalCtx) {
    if ((this->unk_2F4 != 0) && (this->actionFunc != func_8092ABD8) &&
        (func_800BE184(globalCtx, this, 0x42C80000, 0x2710, 0x4000, this->actor.shape.rot.y) != 0)) {
        func_8092AB50(this);
        return true;
    }
    return false;
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929D04.s")
s32 func_80929D04(EnIk* this) {
    s16 yawDiff;
    s32 phi_a2;
    s32 phi_v1;

    if ((this->actor.xzDistToPlayer < 100.0f) && (fabsf(this->actor.yDistToPlayer) < 150.0f)) {
        phi_a2 = (this->unk_2F4 == 0) ? 0xAAA : 0x3FFC;
        yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
        phi_v1 = ABS_ALT(yawDiff);
        if (phi_a2 >= phi_v1) {
            if (Rand_ZeroOne() < 0.5f) {
                func_8092A28C(this);
                return 1;
            }
            func_8092A680(this);
            return 1;
        }
        else if ((this->unk_2F4 != 0) || (phi_v1 >= 0x4001) && (Rand_ZeroOne() < 0.1f)) {
            func_8092A8D8(this);
            return 1;
        }
    }
    return 0;
}

// this is a weird one...
#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929E2C.s")
// void func_80929E2C(EnIk* this)
// {

//     if ((func_80929C80 == 0) && ((func_80929D04(this) == 0)))
//     {
//         if (this->unk_2F4 != 0)
//         {
//             func_8092A124(this);
//             return;
//         }
//         func_80929FC8(this);
//     }
// }


#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929E88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929F20.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_80929FC8.s")
void func_80929FC8(EnIk* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06006294, -4.0f);
    this->actor.speedXZ = 0.9f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_8092A020;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A020.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A124.s")
void func_8092A124(EnIk* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060057F4, -4.0f);
    Audio_PlayActorSound2(this, NA_SE_EN_TWINROBA_SHOOT_VOICE);
    this->actor.speedXZ = 2.5f;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    this->actionFunc = func_8092A188;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A188.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A28C.s")
void func_8092A28C(EnIk* this) {
    f32 sp30; // Necessary for stack
    f32 playbackSpeed;

    this->actor.speedXZ = 0.0f;
    if (this->unk_2F4 != 0) {
        playbackSpeed = 1.5f;
    } else {
        playbackSpeed = 1.2f;
    }
    // sp30 = phi_f0;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000CE8, playbackSpeed, 0.0f,
                         SkelAnime_GetFrameCount(&D_06000CE8.common), 3, -4.0f);
    this->unk_2F6 = 0;
    this->unk_2F8 = -1;
    this->actionFunc = func_8092A33C;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A33C.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A570.s")
void func_8092A570(EnIk* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001ABC);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_IRONNACK_PULLOUT);
    this->actionFunc = func_8092A5BC;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A5BC.s")
// void func_8092A5BC(EnIk* this, GlobalContext* globalCtx) {

//     if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
//         if (this->skelAnime.animCurrentSeg == &D_060015F8) {
//             func_80929E2C(this);
//         } else {
//             SkelAnime_ChangeAnim(&this->skelAnime, &D_060015F8, (this->unk_2F4 != 0) ? 1.5f : 1.0f, 0.0f,
//                                  SkelAnime_GetFrameCount(&D_060015F8.common), 3, 0.0f);
//         }
//     }
// }

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A680.s")
void func_8092A680(EnIk* this) {
    this->actor.speedXZ = 0.0f;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002484, (this->unk_2F4 != 0) ? 1.3f : 1.0f, 0.0f,
                         SkelAnime_GetFrameCount(&D_06002484), 3, (this->unk_2F4 != 0) ? 4.0f : 10.0f);
    this->unk_2F6 = 0;
    this->unk_2F8 = -1;
    this->actionFunc = func_8092A754;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A754.s")

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A8D8.s")
void func_8092A8D8(EnIk* this) {
    f32 phi_f0;

    this->actor.speedXZ = 0.0f;
    if (this->unk_2F4 != 0) {
        this->actor.world.rot.z = 0x1000;
        phi_f0 = 1.3f;
    } else {
        this->actor.world.rot.z = 0xB00;
        phi_f0 = 1.0f;
    }
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06002484, phi_f0, 12.0f, SkelAnime_GetFrameCount(&D_06002484.common), 3,
                         5.0f);
    this->unk_2F6 = 0;
    this->unk_2F8 = -1;
    this->actionFunc = func_8092A994;
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092A994.s")
void func_8092A994(EnIk* this, GlobalContext* globalCtx) {
    this->unk_2F6++;
    if (func_801378B8(&this->skelAnime, 13.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, 0x3929U);
    }
    if ((this->skelAnime.animCurrentFrame > 12.0f) && (this->skelAnime.animCurrentFrame < 20.0f)) {
        this->colliderQuad.base.atFlags |= 1;
    } else {
        this->colliderQuad.base.atFlags &= 0xFFFE;
    }
    this->actor.shape.rot.y += this->actor.world.rot.z;
    this->actor.world.rot.y = this->actor.shape.rot.y;
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_8092AA6C(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AA6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AB14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AB50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092ABD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AC4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092ACFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092ADB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AE14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AFB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092AFD4.s")
// void func_8092AFD4(EnIk* this, GlobalContext* globalCtx) {
//     if (this->unk_2F6) {
//         this->unk_2F6--;
//     }
//     if (this->unk_2F6 == 0) {
//         func_80929B6C(this, globalCtx);
//         if (this->actor.colChkInfo.health == 0) {
//             func_8092B03C(this);
//         } else {
//             func_80929E2C(this);
//         }
//     }
// }

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B03C.s")
void func_8092B03C(EnIk* this) {
    ActorCutscene_SetIntentToPlay(this->actor.cutscene);
    this->actor.speedXZ = 0.0f;
    if (this->actor.colChkInfo.health != 0) {
        func_800BE504(&this->actor, &this->colliderCylinder);
    }
    this->actionFunc = func_8092B098;
}

// matches
// #pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B098.s")
void func_8092B098(EnIk* this, GlobalContext* globalCtx) {
    Vec3f unkVec;

    this->unk_2FC = 0xC;
    if (ActorCutscene_GetCanPlayNext(this->actor.cutscene) != 0) {
        if (this->actor.cutscene != -1) {
            ActorCutscene_StartAndSetFlag(this->actor.cutscene, &this->actor);
            this->unk_2FA = ActorCutscene_GetCurrentCamera(this->actor.cutscene);
            unkVec.x = (Math_SinS((this->actor.shape.rot.y - 0x2000)) * 120.0f) + this->actor.focus.pos.x;
            unkVec.y = this->actor.focus.pos.y + 20.0f;
            unkVec.z = (Math_CosS((this->actor.shape.rot.y - 0x2000)) * 120.0f) + this->actor.focus.pos.z;
            func_8016970C(globalCtx, this->unk_2FA, &this->actor.focus, &unkVec);
        }
        if (this->actor.colChkInfo.health != 0) {
            func_8092AC4C(this, 0);
        } else {
            func_8092ADB4(this);
        }
    } else {
        ActorCutscene_SetIntentToPlay(this->actor.cutscene);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B1B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B46C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/EnIk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092B93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/func_8092BC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/ovl_En_Ik/EnIk_Draw.s")
