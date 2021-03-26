#include "z_en_niw.h"

#define FLAGS 0x00800010

#define THIS ((EnNiw*)thisx)

void EnNiw_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiw_Draw(Actor* thisx, GlobalContext* globalCtx);


void func_808916B0(EnNiw* this, GlobalContext* globalCtx);
void func_80891974(EnNiw* this);
s16 func_808919E8(EnNiw* this, GlobalContext* globalCtx);
void func_80891F60(EnNiw* this, GlobalContext* globalCtx);
void func_80892414(EnNiw* this);


void func_808920A0(EnNiw* this, GlobalContext* globalCtx);
s16 func_80892390(EnNiw* this, GlobalContext* globalCtx);

void func_80891D78(EnNiw* this, GlobalContext* globalCtx);
void func_80892248(EnNiw* this, GlobalContext* globalCtx);
void func_80892274(EnNiw* this, GlobalContext* globalCtx);
void func_808922D0(EnNiw* this, GlobalContext* globalCtx);
void func_808930FC(EnNiw* this, GlobalContext* globalCtx);

void func_808924B0(EnNiw* this, GlobalContext* globalCtx);
void func_808932B0(EnNiw* this, GlobalContext* globalCtx);


void func_8089262C(EnNiw* this, GlobalContext* globalCtx);
s16 func_80891320(EnNiw* this, GlobalContext* globalCtx, s16 arg2);

s32 func_80892E70(GlobalContext *gCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, struct Actor *actor );
// the limb function
void func_80893008(EnNiw* this, Vec3f* pos, Vec3f* vel, Vec3f* accel, f32 scale);

s16 D_80893460 = 0x0; 
u16 D_80893462 = 0x0; // padding?

const ActorInit En_Niw_InitVars = {
    ACTOR_EN_NIW,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnNiw),
    (ActorFunc)EnNiw_Init,
    (ActorFunc)EnNiw_Destroy,
    (ActorFunc)EnNiw_Update,
    (ActorFunc)EnNiw_Draw
};

//D_8089348C
f32 D_80893484[] = { 5000.0f, 0xC59C4000, 5000.0f, 0x453B8000, 0x457A0000,};

//u32 D_80893498[] = { // collider
static ColliderCylinderInit sCylinderInit = {
    { 0x45, AT_NONE | AT_BOUNCED | AT_TYPE_PLAYER | AT_TYPE_ENEMY, AC_NONE | AC_NO_DAMAGE, OC1_NONE, OC2_FIRST_ONLY | OC2_UNK2 | OC2_HIT_PLAYER, 0x9C, },
    { 0x45, { 0x453B8000, 0x45, 0x7A }, { 0x0500093D, 0x20, 0x01 }, TOUCH_NONE | TOUCH_SFX_NORMAL, BUMP_NONE, OCELEM_NONE, },
    { 0, 0, 0, { 0, -2097, -1 } },
};

Vec3f D_808934C4 = { 90000.0f, 90000.0f, 90000.0f, };

u32 D_808934D0[] = { 0x801F0006, 0xB874F830, 0x30540000, }; // huh? 0 looks like a pointer

Vec3f D_808934DC = { 90000.0f, 90000.0f, 90000.0f, };

Vec3f D_808934E8 = { 90000.0f, 90000.0f, 90000.0f, };

// might be another vec3f with all zeros
s32 padding3[] = {0x00000000, 0x00000000, 0x00000000, };

void EnNiw_Init(Actor *thisx, GlobalContext *globalCtx) {

    EnNiw* this = THIS;
    Vec3f D_Temp = D_808934C4;

    if ( this->actor.params < 0) { //no bit 16 I guess
        this->actor.params = 0;
    }

    Math_Vec3f_Copy( &this->unk2BC, &D_Temp);

    this->paramsCopy = this->actor.params;
    Actor_ProcessInitChain(&this->actor, &D_808934D0);
    this->actor.flags |= 1; // why set targetable here and not start with it?
    Actor_SetDrawParams(&this->actor.shape, 0.0f, func_800B3FC0, 25.0f);

    SkelAnime_InitSV(globalCtx, &this->skelanime,  
        &D_06002530, &D_060000E8,
         &this->limbDrawTbl, &this->transitionDrawtable, 0x10);
    Math_Vec3f_Copy(&this->unk2A4, &this->actor.world.pos);
    Math_Vec3f_Copy(&this->unk2B0, &this->actor.world.pos);

    this->unk308 = 10.0f;
    Actor_SetScale(&this->actor, 0.01f);

    if (this->paramsCopy == 1) {
        Actor_SetScale(&this->actor, ((f32) gStaticContext->data[2486] / 10000.0f) + 0.00400000018999f);
    }

    // random health between 18-20?
    this->actor.colChkInfo.health = (u8) (u32) (randZeroOneScaled(9.98999977112f) + 10.0f);
    this->actor.colChkInfo.mass = 0xFF;
    if (this->paramsCopy == 0) {
        Collider_InitAndSetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    }

    if (this->paramsCopy == 2) {
        Audio_PlayActorSound2(&this->actor, 0x2813U);
        this->unk256 = (u16)0x1E;
        this->unk250 = (u16)0x1E;
        this->actor.flags &= ~1;
        this->unk28E = 4;
        this->actionFunc = func_80891D78;
        this->actor.speedXZ = 0.0f;
        this->unk2BC.z = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
        return;
    }
    func_80891974(&this->actor);
}

void EnNiw_Destroy(Actor *thisx, GlobalContext *globalCtx) {
    EnNiw* this = THIS;

    if (this->paramsCopy == 0) {
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

s16 func_80891320(EnNiw *this, GlobalContext *globalCtx, s16 arg2) {
    f32 temp7expr;
    f32 tempOne;
    int temp10k;

    tempOne = 1.0f;
    if (this->unk24C == 0) {
        if (arg2 == 0) {
            this->unk264 = 0.0f;
        } else {
            this->unk264 = (-10000.0f) * tempOne;
        }
        this->unk292 += 1;
        this->unk24C = 3;
        if ((this->unk292 & 1) == 0) {
            this->unk264 = 0.0f;
            if (arg2 == 0) {
                this->unk24C = randZeroOneScaled(30.0f);
            }
        }
    }
    if (this->unk24E == 0) {
        this->unk296 += 1;
        this->unk296 &= 1;
        switch( arg2 ){
            case 0:
                this->unk26C = 0.0f;
                this->unk268 = 0.0f;
                break;
            case 1:
                this->unk24E = 3;
                temp7expr = 7000.0f * tempOne;
                this->unk26C = temp7expr;
                this->unk268 = temp7expr;
                if (this->unk296 == 0) {
                    this->unk26C = 0.0f;
                    this->unk268 = 0.0f;
                }
                break;
            case 2:
                this->unk24E = 2;
                this->unk268 = -10000.0f;
                this->unk26C = -10000.0f;
                this->unk280 = 25000.0f;
                this->unk278 = 25000.0f;
                this->unk284 = 6000.0f;
                this->unk27C = 6000.0f;
                if (this->unk296 == 0) {
                    this->unk280 = 8000.0f;
                    this->unk278 = 8000.0f;
                }
                break;
            case 3:
                this->unk24E = 2;
                this->unk278 = 10000.0f;
                this->unk280 = 10000.0f;
                if (this->unk296 == 0) {
                    this->unk278 = 3000.0f;
                    this->unk280 = 3000.0f;
                }
                break;
            case 4:
                this->unk24C = 5;
                break;
            case 5:
                this->unk24E = 5;
                this->unk278 = 14000.0f;
                this->unk280 = 14000.0f;
                if (this->unk296 == 0) {
                    this->unk278 = 10000.0f;
                    this->unk280 = 10000.0f;
                }
                break;
            }
            
    }
    if (this->unk288 != this->unk2E4) {
        Math_SmoothScaleMaxF(&this->unk2E4, this->unk288, 0.5f, 4000.0f);
    }
    if (this->unk264 != this->unk2E0) {
        Math_SmoothScaleMaxF(&this->unk2E0, this->unk264, 0.5f, 4000.0f);
    }
    if (this->unk26C !=  this->unk2C8) {
        Math_SmoothScaleMaxF(&this->unk2C8, this->unk26C, 0.8f, 7000.0f);
    }
    if (this->unk280 != this->unk2CC) {
        Math_SmoothScaleMaxF(&this->unk2CC, this->unk280, 0.8f, 7000.0f);
    }
    if (this->unk284 != this->unk2D0 ) {
        Math_SmoothScaleMaxF(&this->unk2D0, this->unk284, 0.8f, 7000.0f);
    }
    if (this->unk268 != this->unk2D4 ) {
        Math_SmoothScaleMaxF(&this->unk2D4, this->unk268, 0.8f, 7000.0f);
    }
    if (this->unk278 != this->unk2D8 ) {
        Math_SmoothScaleMaxF(&this->unk2D8, this->unk278, 0.8f, 7000.0f);
    }
    if (this->unk27C != this->unk2DC ) {
        Math_SmoothScaleMaxF(&this->unk2DC, this->unk27C, 0.8f, 7000.0f);
    }
}

// spawn attack cucco
void func_808916B0(EnNiw *this, GlobalContext *globalCtx) {
    f32 xView;
    f32 yView;
    f32 zView;
    Vec3f newNiwPos;
    Actor* attackNiw;

    if (this->unk252 == 0) {
        if ((s32) this->unk290 < 7) {
            xView = globalCtx->view.focalPoint.x - globalCtx->view.eye.x;
            yView = globalCtx->view.focalPoint.y - globalCtx->view.eye.y;
            zView = globalCtx->view.focalPoint.z - globalCtx->view.eye.z;
            newNiwPos.x = ((randZeroOne() - 0.5f) * xView) + globalCtx->view.eye.x;
            newNiwPos.y = randPlusMinusPoint5Scaled(0.300000011921f) 
                 + (globalCtx->view.eye.y + 50.0f + (yView * 0.5f));
            newNiwPos.z = ((randZeroOne() - 0.5f) * zView) + globalCtx->view.eye.z;
            attackNiw = Actor_SpawnWithParent(&globalCtx->actorCtx, &this->actor, globalCtx,
                  0xAA, newNiwPos.x, newNiwPos.y, newNiwPos.z, 0, 0, 0, 0);

            if (attackNiw != NULL) {
                this->unk290 += 1;
                this->unk252 = 10;
            }
        }
    }
}

void func_808917F8(EnNiw *this, GlobalContext *globalCtx, s32 arg2) {
    f32 phi_f2;
    f32 targetRotY;
    f32* D_8089348CPtr = &D_80893484[2];


    if ( this->unk250 == 0) {
        this->unk250 = 3;
        if ((this->actor.bgCheckFlags & 1) ) {
            this->actor.velocity.y = 3.5f;
        }
    }
    if (this->unk252 == 0) {
        this->unk29A++;
        this->unk29A &= 1;
        this->unk252 = 5;
    }
    if (this->unk29A == 0) {
        phi_f2 = D_8089348CPtr[arg2];
    } else {
        phi_f2 = -D_8089348CPtr[arg2];
    }
    if (arg2 == 1) {
        if (( this->unk254 == 0) || ((this->actor.bgCheckFlags & 8))) {
            this->unk254 = 150;
            if (this->unk25C == 0) {
                this->unk25C = 70;
                this->unk2E8 = this->actor.yawTowardsPlayer;
            }
        }
    }
    targetRotY = this->unk2E8 + phi_f2;
    Math_SmoothScaleMaxMinS(&this->actor.world.rot.y, targetRotY, 3, (s16) this->unk300, 0);
    Math_SmoothScaleMaxF(&this->unk300, 3000.0f, 1.0f, 500.0f);
    func_80891320(this, globalCtx, 5);
}


void func_80891974(EnNiw *this) {
    SkelAnime_ChangeAnim(&this->skelanime, &D_060000E8, 1.0f, 0.0f,
         SkelAnime_GetFrameCount(&D_060000E8), 0, -10.0f);
    this->unk28E = 0;
    this->actionFunc = func_808919E8;
}

// action func
#if NON-MATCHING
// regalloc: float register after posZ, also stack offset
s16 func_808919E8(EnNiw *this, GlobalContext *globalCtx) {
    s32 pad;
    //s32 pad2;
    f32 posY;
    f32 posX;
    f32 posZ;
    s16 s16tmp;
    
    // regalloc: f0 result from this call
    posY  = randPlusMinusPoint5Scaled(100.0f);
    posZ  = randPlusMinusPoint5Scaled(100.0f);
    if (this->paramsCopy == 0) {
        if (Actor_HasParent( &this->actor, globalCtx) != 0) {
            Audio_PlayActorSound2(&this->actor, 0x2813U); // chicken cry m sfx
            this->unk256 = 30;
            this->unk250 = 30;
            this->actor.flags &= ~1;
            this->unk28E = 4;
            this->actor.speedXZ = 0.0f;
            this->actionFunc = func_80891D78;
            return 0x1E;
        }
        func_800B8BB0( &this->actor, globalCtx);
    } else {
        this->unk252 = 0xA;
    }

    s16tmp = 0;
    if (this->unk252 != 0) {
        if (randZeroOneScaled(3.99000000954f) < 1.0f) {
            this->unk2EA = this->unk2EA + 1;
            this->unk2EA = this->unk2EA & 1;
        }
        Math_SmoothScaleMaxF(&this->unk288, D_80893484[this->unk2EA], 0.5f, 4000.0f);
    }

    if ((this->unk252 == 0) && (this->unk250 == 0)) {
        this->unk298 += 1;

        if (this->unk298 >= 8) {
            this->unk252 = (s32) randZeroOneScaled(30.0f);
            this->unk298 = (s32) randZeroOneScaled(3.99000000954f);
            if (posY < 0.0f) {
                posY -= 100.0f;
            } else {
                posY += 100.0f;
            }
            if (posZ < 0.0f) {
                posZ -= 100.0f;
            } else {
                posZ += 100.0f;
            }
            this->unk2B0.x = this->unk2A4.x + posY;
            this->unk2B0.z = this->unk2A4.z + posZ;
        } else {
            this->unk250 = 4;
            if ((this->actor.bgCheckFlags & 1) != 0) {
                this->actor.speedXZ = 0.0f;
                this->actor.velocity.y = 3.5f;
            }
        }
    }

    if (this->unk250 != 0) {
        Math_SmoothDownscaleMaxF(&this->unk288, 0.5f, 4000.0f);
        s16tmp = 1;
        //pad = 0.0f;
        //pad2 = 0.0f;
        Math_SmoothScaleMaxF(&this->actor.world.pos.x, this->unk2B0.x, 1.0f, this->unk300);
        Math_SmoothScaleMaxF(&this->actor.world.pos.z, this->unk2B0.z, 1.0f, this->unk300);
        Math_SmoothScaleMaxF(&this->unk300, 3.0f, 1.0f, 0.3f);

        posX = this->unk2B0.x - this->actor.world.pos.x;
        posZ = this->unk2B0.z - this->actor.world.pos.z;

        if (fabsf(posX) < 10.0f) {
            //posX = pad2; 
            //posX = 0.0f; 
            posX = 0.0; 
            //posX = (double) 0.0f; // double: reduces regalloc alot, but fake match?
        }
        if (fabsf(posZ) < 10.0f) {
            //posZ = pad2;
            //posZ = 0.0f;
            posZ = 0.0;
        }

        if ((posX == 0.0f) && (posZ == 0.0f)) {
        //if ((posX == pad) && (posZ == pad)) {
            this->unk250 = 0;
            this->unk298 = 7;
        }
        Math_SmoothScaleMaxMinS(&this->actor.world.rot.y, atans(posX, posZ),
           (u16)3, (s16) (s32) this->unk304, 0);
        Math_SmoothScaleMaxF(&this->unk304, 10000.0f, 1.0f, 1000.0f);
    }
    return func_80891320(this, globalCtx, s16tmp);
}
#else
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Niw_0x80891060/func_808919E8.asm")
#endif

// action func
void func_80891D78(EnNiw *this, GlobalContext *globalCtx) {
    Vec3f vec3fcopy;
    s16 rotZ;

    vec3fcopy = D_808934DC;
    if (this->unk250 == 0) {
        this->unk29E = 2;
        this->unk250 = (s32) (randZeroOneScaled(1.0f) * 10.0f) + 0xA;
    }

    this->actor.shape.rot.x = ((s16) randPlusMinusPoint5Scaled(5000.0f)) + this->actor.world.rot.x;
    this->actor.shape.rot.y = ((s16) randPlusMinusPoint5Scaled(5000.0f)) + this->actor.world.rot.y;
    this->actor.shape.rot.z = ((s16) randPlusMinusPoint5Scaled(5000.0f)) + this->actor.world.rot.z;
    if (this->paramsCopy == 0) {
        if (func_800B8BFC( &this->actor, globalCtx) != 0) {
            this->actor.shape.rot.z = 0;
            rotZ = this->actor.shape.rot.z;
            this->unk28E = 5;
            this->actor.flags |= 1;
            this->actionFunc = func_80891F60;
            this->actor.shape.rot.y = rotZ;
            this->actor.shape.rot.x = rotZ;
        }
    } else if (this->unk2BC.z != 0.0f) {
        this->actor.shape.rot.z = 0;
        rotZ = this->actor.shape.rot.z;
        this->actor.velocity.y = 8.0f;
        this->actor.speedXZ = 4.0f;
        this->actor.gravity = -2.0f;
        this->unk28E = 5;
        this->unk2EC = 0;
        this->paramsCopy = 0;
        this->actor.shape.rot.y = rotZ;
        this->actor.shape.rot.x = rotZ;
        Collider_InitAndSetCylinder(globalCtx, &this->collider, &this->actor,  &sCylinderInit );
        Math_Vec3f_Copy(&this->unk2BC, &vec3fcopy);
        this->actor.flags |= 1;
        this->actionFunc = func_80891F60;
    }
    func_80891320(this, globalCtx, (u16)2);
}

void func_80891F60(EnNiw *this, GlobalContext *globalCtx) {
    if ((s16) this->unk2EC == 0) {
        if ((this->actor.bgCheckFlags & 1)) {
            this->unk2EC = 1;
            this->unk252 = 0x50;
            this->actor.speedXZ = 0.0f;
            this->actor.velocity.y = 4.0f;
        } else{
            return;
        }
      } else {
          if ((this->actor.bgCheckFlags & 1)) {
            this->unk256 = 0;
            this->actor.velocity.y = 4.0f;
            this->unk29E = 1;
        }
        if (this->unk252 == 0) {
            this->unk254 = 100;
            this->unk250 = 0;
            this->unk2EC = 0;
            func_80892414(this);
            return;
        }
    }
    if (Actor_HasParent( &this->actor, globalCtx) != 0) {
        Audio_PlayActorSound2( &this->actor, 0x2813U);
        this->unk256 = 30;
        this->unk2EC = 0;
        this->unk250 = 30;
        this->actor.flags &= ~1;
        this->unk28E = 4;
        this->actionFunc = func_80891D78;
        this->actor.speedXZ = 0.0f;
        return;
    }
    if ((s32) this->unk252 >= 6) {
        func_800B8BB0(&this->actor, globalCtx);
    }
    func_80891320(this, globalCtx, 2);
}

void func_808920A0(EnNiw *this, GlobalContext *globalCtx) {
    Vec3f ripplePos;

    if ((s16) this->unk2A0 != 0) {
        func_808916B0(this, globalCtx); // spawn attack niw 
    }

    this->actor.speedXZ = 2.0f;
    if ((this->actor.bgCheckFlags & 0x20) != 0) {
        this->actor.gravity = 0.0f;
        if (this->actor.yDistToWater > 15.0f) {
            this->actor.world.pos.y = this->actor.world.pos.y + 2.0f;
        }
        if (this->unk250 == 0) {
            this->unk250 = 30;
            Math_Vec3f_Copy(&ripplePos, &this->actor.world);
            ripplePos.y += this->actor.yDistToWater;
            
            EffectSS_SpawnGRipple( globalCtx, &ripplePos, 100, 500, 30);
        }
        if ((this->actor.bgCheckFlags & 8) != 0) {
            this->actor.velocity.y = 10.0f;
            this->actor.speedXZ = 1.0f;
        }
    } else {
        this->actor.gravity = -2.0f;
        if ((this->actor.bgCheckFlags & 8) != 0) {
            this->actor.velocity.y = 10.0f;
            this->actor.speedXZ = 1.0f;
            this->actor.gravity = 0.0f;
        } else {
            this->actor.speedXZ = 4.0f;
        }
        if ((this->actor.bgCheckFlags & 1) != 0) {
            this->actor.gravity = -2.0f;
            this->unk254 = 100;
            this->unk250 = 0;
            this->actor.velocity.y = 0.0f;
            if ( this->unk2A0 == 0) {
                func_80892414(this);
            } else {
                this->unk28E = 3;
                this->actionFunc = func_80892390;
            }
        }
    }
    func_80891320(this, globalCtx, 2);
}

void func_80892248(EnNiw *this, GlobalContext *globalCtx) {
    int one = 1;
    this->unk252 = 10;
    
    if (one){}
    this->unk29C = one;
    this->unk28E = one;
    this->actionFunc = func_80892274;
}

// action func
void func_80892274(EnNiw *this, GlobalContext *globalCtx) {

    this->unk256 = 100;
    if ( this->unk252 == 0) {
        this->unk252 = 60; // reset timers, change action
        this->unk24C = 10;
        this->unk29C = 4;
        this->unk28E = 2;
        this->actionFunc = func_808922D0;
    }
  
    func_80891320( this, globalCtx, this->unk29C);
}

//action func
void func_808922D0(EnNiw *this, GlobalContext *globalCtx) {
    f32 temp_f2;

    this->unk256 = 100;
    if (this->unk252 == 0x28) {
        temp_f2 = 14000.0f;
        this->unk264 = 10000.0f;
        this->unk280 = temp_f2;
        if (0) {}
        this->unk278 = temp_f2;
        this->unk27C = 0.0f;
        this->unk284 = 0.0f;
        this->unk268 = 0.0f;
        this->unk26C = 0.0f;
        this->unk24C = 0xA;
        Audio_PlayActorSound2(&this->actor, 0x2813U); //play actor sound 2 chicken cry m
    }
    if (this->unk252 == 0) {
        this->unk252 = 0xA;
        this->unk2E8 = this->actor.yawTowardsPlayer;
        this->actor.flags &= ~1;
        this->unk28E = 3;
        this->actionFunc = func_80892390;
    }
    func_80891320(this, globalCtx, this->unk29C);
}

s16 func_80892390(EnNiw *this, GlobalContext *globalCtx) {
    s16 returnValue;
    s32 temp_f6;

    func_808916B0(this, globalCtx);
    if (this->unk252 == 1) {
        this->actor.speedXZ = 3.0f;
        this = this;
        temp_f6 = randZeroOneScaled(1.99000000954f);
        this->unk250 = 0;
        returnValue = this->unk250;
        this->unk24E = (u16) returnValue;
        this->unk24C = (u16) returnValue;
        this->unk29A = (s16) temp_f6;
        return returnValue;
    }
    func_808917F8(this, globalCtx, 1);
}

void func_80892414(EnNiw *this) {
    s32 temp_t7;

    SkelAnime_ChangeAnim(&this->skelanime, &D_060000E8, 1.0f, 0.0f, 
          (f32) SkelAnime_GetFrameCount(&D_060000E8), 0, -10.0f);
    temp_t7 = (s32) randZeroOneScaled(1.99000000954f);
    this->unk29A = (s16) temp_t7;
    this->unk28E = 7;
    this->actionFunc = func_808924B0;
    this->actor.speedXZ = 4.0f;
}

#if NON-MATCHING
// bad regalloc, center of first if block
void func_808924B0(EnNiw *this, GlobalContext *globalCtx) {
    Actor* player= PLAYER;
    Vec3f tempVec3f;
    //f32 zeroTempf;
    //s16 zeroTemp;
    s16 temp298;
    f32 dX;
    f32 dZ;
    //wants a lot of temps

    tempVec3f = D_808934E8;
    if (this->unk254 == 0) {
        this->unk298 = 0;
        temp298 = this->unk298;
        //zeroTempf = 0;
        //if (temp298){}

        //this->unk2A4 = this->actor.world.pos;
        //this->unk2B0 = this->actor.world.pos;
        this->unk2B0.x = this->actor.world.pos.x;
        this->unk2B0.y = this->actor.world.pos.y;
        this->unk2B0.z = this->actor.world.pos.z;
        this->unk2A4.x = this->actor.world.pos.x;
        this->unk2A4.y = this->actor.world.pos.y;
        this->unk2A4.z = this->actor.world.pos.z;

        //this->unk250 = zeroTemp;
        //this->unk252 = zeroTemp;
        this->unk250 = this->unk298;
        this->unk252 = this->unk298;
        //this->unk250 = temp298;
        //this->unk252 = temp298;
        this->unk304 = 0;
        this->unk300 = 0;
        this->actor.speedXZ = 0;
        this->unk284 = 0;
        this->unk27C = 0;
        this->unk278 = 0;
        this->unk280 = 0;
        Math_Vec3f_Copy(&this->unk2BC, &tempVec3f);
        //Math_Vec3f_Copy(&this->unk2BC, &D_808934E8);
        func_80891974(&this->actor);
        return;
    }
    //if (D_80893574 != temp7expr) {
    //if ( 90000.0!= this->unk2BC.x) {
    if ( this->unk2BC.x != 90000.0f) {
        dX = this->actor.world.pos.x - this->unk2BC.x;
        dZ = this->actor.world.pos.z - this->unk2BC.z;
    } else {
        dX = this->actor.world.pos.x - player->world.pos.x;
        dZ = this->actor.world.pos.z - player->world.pos.z;
    }
    this->unk2E8 = atans(dX, dZ);
    func_808917F8(this, globalCtx, 0);
    func_80891320(this, globalCtx, 2);
}
#else 
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Niw_0x80891060/func_808924B0.asm")
#endif

void func_808925F8(EnNiw *this, GlobalContext* gCtx) {
    if ((this->actor.bgCheckFlags & 1) != 0) {
        func_80891974(this);
    }
}

void func_8089262C(EnNiw *this, GlobalContext *globalCtx) {

    if ((this->unk2A0 == 0) && (this->unk260 == 0) && (this->paramsCopy == 0)) {
        if (( this->unk28E != 7) && (90000.0f != this->unk2BC.x)) {
            this->unk260 = 0xA;
            this->unk256 = 0x1E;
            this->unk29E = 1;
            Audio_PlayActorSound2(&this->actor, 0x2813);
            this->unk254 = 0x64;
            this->unk2EC = 0;
            func_80892414(this);
        }
        
        if ((this->collider.base.acFlags & AC_HIT) != 0) {
            this->collider.base.acFlags &= ~AC_HIT;
            if (this->actor.colChkInfo.health > 0) {
                this->actor.colChkInfo.health--;
            }
            if ((D_80893460 == 0) && (this->actor.colChkInfo.health == 0)) {
                this->unk254 = 100;
                D_80893460 = 1;
                this->unk298 = 0;
                this->unk2A4.x = this->unk2B0.x = this->actor.world.pos.x;
                this->unk2A4.y = this->unk2B0.y = this->actor.world.pos.y;
                this->unk256 = 0x2710;
                this->unk2A4.z = this->unk2B0.z = this->actor.world.pos.z;
                this->unk252 = this->unk250 = this->unk298;
                  
                this->unk284 = 0.0f;
                this->unk2A0 = 1;
                this->unk27C = 0.0f;
                this->actionFunc = func_80892248;
                this->unk278 = 0.0f;
                this->unk280 = 0.0f;
                this->unk304 = 0.0f;
                this->unk300 = 0.0f;
                this->actor.speedXZ = 0.0f;
                return;
            }
            this->unk260 = 0xA;
            this->unk256 = 0x1E;
            this->unk29E = 1;
            Audio_PlayActorSound2(&this->actor, 0x2813);
            this->unk254 = 0x64;
            this->unk2EC = 0;
            func_80892414(this);
        }
    }
}

//working
void EnNiw_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnNiw* this = (EnNiw*) thisx;
    Actor *player;
    //s16 spD0;
    //f32 spCC;
    //f32 spC8;
    //f32 spC4;
    Vec3f spC4;
    //f32 spC0;
    //f32 spBC;
    //f32 spB8;
    Vec3f spB8;
    //f32 spB4;
    //f32 spB0;
    //f32 spAC;
    Vec3f spAC;
    //CollisionCheckContext *sp54;
    //ColliderCylinder *&this->collider;
    //CollisionCheckContext *&globalCtx->colCheckCtx;
    //PosRot *temp_a1_2;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f16;
    f32 temp_f2;
    s16 temp_s0;
    s16 temp_s0_3;
    s16 temp_v0;
    s16 temp_v0_10;
    s16 temp_v0_11;
    s16 temp_v0_12;
    s16 temp_v0_13;
    //s16 this->unk28E;
    s16 temp_v0_15;
    s16 temp_v0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v0_5;
    s16 temp_v0_6;
    s16 temp_v0_7;
    s16 temp_v0_8;
    s16 temp_v0_9;
    s32 phi_v1;
    f32 phi_f20;
    s16 phi_s0;
    s16 phi_s0_2;

    //player = globalCtx->actorCtx.actorList[2].first;
    player = PLAYER; 
    this->unk28C = this->unk28C + 1;
    if (this->paramsCopy == 1) {
        temp_v0 = this->actor.parent->shape.rot.y;
        this->actor.world.rot.y = temp_v0;
        this->actor.shape.rot.y = temp_v0;
    }
    if (this->unk28E != 0) {
        this->unk288 = 0.0f;
    }
    temp_v0_2 = this->unk29E;
    if (temp_v0_2 != 0) {
        phi_v1 = 0x14;
        if (temp_v0_2 == 2) {
            phi_v1 = 4;
        }
        if (phi_v1 > 0) {
            //spD0 = (s16) phi_v1;
            phi_s0 = 0;
//loop_9:
            while ((s32) temp_s0 < (s32) phi_v1){
                spC4.x = randPlusMinusPoint5Scaled(10.0f) + this->actor.world.pos.x;
                spC4.y = randPlusMinusPoint5Scaled(10.0f) + (this->actor.world.pos.y + this->unk308);
                spC4.z = randPlusMinusPoint5Scaled(10.0f) + this->actor.world.pos.z;
                if ((this->unk29E == 2) && (this->unk308 != 0.0f)) {
                    spC4.y += 10.0f;
                }
                phi_f20 = randZeroOneScaled(6.0f) + 6.0f;
                if (this->unk308 == 0.0f) {
                    phi_f20 = randZeroOneScaled(2.0f) + 2.0f;
                }
                spB8.x = randPlusMinusPoint5Scaled(3.0f);
                spB8.y = (randZeroOneScaled(2.0f) * 0.5f) + 2.0f;
                spB8.z = randPlusMinusPoint5Scaled(3.0f);
                spAC.x = 0.0f;
                spAC.z = 0.0f;
                spAC.y = -0.15000000596f;
                func_80893008(this, &spC4, &spB8, &spAC, phi_f20);
                phi_s0 += 1;
            //if ((s32) temp_s0 < (s32) phi_v1) {
                //goto loop_9;
            }
        }
        this->unk29E = 0;
    }
    func_808930FC(this, globalCtx);
    temp_v0_3 = this->unk24C;
    if (temp_v0_3 != 0) {
        this->unk24C = temp_v0_3--;
    }
    temp_v0_4 = this->unk24E;
    if (temp_v0_4 != 0) {
        this->unk24E = temp_v0_4--;
    }
    temp_v0_5 = this->unk250;
    if (temp_v0_5 != 0) {
        this->unk250 = temp_v0_5--;
    }
    temp_v0_6 = this->unk252;
    if (temp_v0_6 != 0) {
        this->unk252 = temp_v0_6--;
    }
    temp_v0_7 = this->unk254;
    if (temp_v0_7 != 0) {
        this->unk254 = temp_v0_7--;
    }
    temp_v0_8 = this->unk256;
    if (temp_v0_8 != 0) {
        this->unk256 = temp_v0_8--;
    }
    temp_v0_9 = this->unk258;
    if (temp_v0_9 != 0) {
        this->unk258 = temp_v0_9--;
    }
    temp_v0_10 = this->unk25A;
    if (temp_v0_10 != 0) {
        this->unk25A = temp_v0_10--;
    }
    temp_v0_11 = this->unk25C;
    if (temp_v0_11 != 0) {
        this->unk25C = temp_v0_11--;
    }
    temp_v0_12 = this->unk25E;
    if (temp_v0_12 != 0) {
        this->unk25E = temp_v0_12--;
    }
    temp_v0_13 = this->unk260;
    if (temp_v0_13 != 0) {
        this->unk260 = temp_v0_13--;
    }
    //this->actor.shape.rot.x = (unaligned s32) this->actor.world.rot.x;
    this->actor.shape.rot.x = this->actor.world.rot.x;
    this->actor.shape.shadowScale = 15.0f;
    this->actor.shape.rot.z = (s16) (u16) this->actor.world.rot.z;
    this->actionFunc(this, globalCtx);
    Actor_SetHeight(&this->actor, (f32) (s32) this->unk308);
    Actor_SetVelocityAndMoveYRotationAndGravity((Actor *) this);
    func_800B78B8(globalCtx, &this->actor, 20.0f, 20.0f, 60.0f, 0x1F);
    temp_f0 = this->actor.floorHeight;
    if (temp_f0 <= -32000.0f) {
block_40:
        temp_f12 = globalCtx->view.focalPoint.x - globalCtx->view.eye.x;
        temp_f2 = globalCtx->view.focalPoint.y - globalCtx->view.eye.y;
        temp_f14 = globalCtx->view.focalPoint.z - globalCtx->view.eye.z;
        temp_f16 = this->actor.home.pos.y;
        this->actor.world.pos.x = this->actor.home.pos.x;
        this->actor.world.pos.z = this->actor.home.pos.z;
        this->actor.world.pos.y = temp_f16 + globalCtx->view.eye.y + ((temp_f2 / sqrtf((temp_f12 * temp_f12) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14))) * 160.0f);
        if (this->actor.world.pos.y < temp_f16) {
            this->actor.world.pos.y = temp_f16 + 300.0f;
        }
        this->actor.speedXZ = 0.0f;
        //temp_a1_2 = &this->actor.home;
        this->actor.gravity = -2.0f;
        Math_Vec3f_Copy(&this->unk2A4, &this->actor.home.pos);
        Math_Vec3f_Copy(&this->unk2B0, &this->actor.home.pos);
        this->unk29C = 0;
        temp_v0_15 = (s16) this->unk29C;
        this->unk304 = 0.0f;
        this->unk300 = 0.0f;
        this->unk2FC = 0.0f;
        this->unk2F8 = 0.0f;
        this->unk2F4 = 0.0f;
        this->unk2DC = 0.0f;
        this->unk2D8 = 0.0f;
        this->unk2D4 = 0.0f;
        this->unk2D0 = 0.0f;
        this->unk2CC = 0.0f;
        this->unk2C8 = 0.0f;
        this->unk2E0 = 0.0f;
        this->unk2E4 = 0.0f;
        this->unk29A = temp_v0_15;
        this->unk298 = temp_v0_15;
        this->unk29E = temp_v0_15;
        this->unk292 = temp_v0_15;
        this->unk28C = temp_v0_15;
        this->unk2A0 = temp_v0_15;
        phi_s0_2 = (u16)0;
loop_43:
        while ((s32) temp_s0_3 < 0xA) {
            temp_s0_3 = phi_s0_2 + 1;
            (this + (phi_s0_2 * 4))->unk264 = 0.0f;
            phi_s0_2 = temp_s0_3;
        //if ((s32) temp_s0_3 < 0xA) {
            //goto loop_43;
        }
        this->unk28E = 8;
        this->unk2A0 = 0;
        this->actionFunc = func_808925F8;
        return;
    }
    if (temp_f0 >= 32000.0f) {
        goto block_40;
    }
    if (((this->actor.bgCheckFlags & 0x20) != 0) && (this->actor.yDistToWater > 15.0f) && (this->unk28E != (u16)6)) {
        this->actor.velocity.y = 0.0f;
        this->actor.gravity = 0.0f;
        Math_Vec3f_Copy(&spC4, &this->actor.world.pos);
        spC4.y += this->actor.yDistToWater;
        this->unk250 = 0x1E;
        EffectSS_SpawnGSplash(globalCtx, &spC4.x, 0, 0, 0, 0x190);
        this->unk252 = 0;
        this->unk28E = 6;
        this->actionFunc = func_808920A0;
        return;
    }
    if ((this->unk2A0 != 0) && (this->actor.xyzDistToPlayerSq < (20.0f * 20.0f)) && (player->unkD5C == 0)) {
        func_800B8D50(globalCtx, this, 0x40000000, this->actor.world.rot.y, 0.0f, 0x10);
    }
    func_8089262C(this, globalCtx);
    if ((this->unk258 == 0) && (this->unk28E == 4)) {
        this->unk258 = 7;
        Audio_PlayActorSound2(&this->actor, 0x38FF);
    }
    if (this->unk256 == 0) {
        if (this->unk28E != 0) {
            this->unk256 = 0x1E;
            Audio_PlayActorSound2(&this->actor, 0x2812);
        } else {
            this->unk256 = 0x12C;
            Audio_PlayActorSound2(&this->actor, 0x2811);
        }
    }
    if (this->unk2A0 == 0) {
        //&this->collider = &this->collider;
        if (this->paramsCopy == 0) {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            //&globalCtx->colCheckCtx = &globalCtx->colCheckCtx;
            CollisionCheck_SetAC(globalCtx, &globalCtx->colCheckCtx, &this->collider);
            this->unk28E = this->unk28E;
            if ((this->unk28E != 4) && (this->unk28E != 5)) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colCheckCtx,  &this->collider);
            }
        }
    }
}
//#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Niw_0x80891060/EnNiw_Update.asm")

// override limb draw function
s32 func_80892E70(GlobalContext *gCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, struct Actor *actor) {
    EnNiw* this = (EnNiw*) actor;

    if (limbIndex == 0xD) {
        rot->y = rot->y + (s16) this->unk2E0;
    }
    if (limbIndex == 0xF) {
        rot->y = rot->y + (s16) this->unk2E4;
    }
    if (limbIndex == 0xB) {
        rot->x = rot->x + (s16) this->unk2DC;
        rot->y = rot->y + (s16) this->unk2D8;
        rot->z = rot->z + (s16) this->unk2D4;
    }
    if (limbIndex == 7) {
        rot->x = rot->x + (s16) this->unk2D0;
        rot->y = rot->y + (s16) this->unk2CC;
        rot->z = rot->z + (s16) this->unk2C8;
    }
    return 0; 
}

void EnNiw_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EnNiw* this = THIS;

    func_8012C28C(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelanime.skeleton, this->skelanime.limbDrawTbl,
         this->skelanime.dListCount, func_80892E70, NULL, &this->actor);
    func_808932B0(&this->actor, globalCtx);
}

// "FeatherSpawn" in OOT
void func_80893008(EnNiw *this, Vec3f *pos, Vec3f *vel, Vec3f *accel, f32 scale) {
    s16 i;
    EnNiwFeather* feather = this->feathers;

    for (i = 0; i < ARRAY_COUNT(this->feathers); i++, feather++) {
        if (feather->type == 0) {
            feather->type = 1;
            feather->pos = *pos;
            feather->vel = *vel;
            feather->accel = *accel;
            feather->timer = 0;
            feather->scale = scale / 1000.0f;
            feather->life = (s16) (randZeroOneScaled(20.0f) + 40.0f);
            feather->unk_2A = (s16) randZeroOneScaled(1000.0f);
            break;
        }
    }
}

//featherupdate in oot
void func_808930FC(EnNiw *this, GlobalContext *globalCtx) {
    EnNiwFeather *feather = this->feathers;
    f32 dtemp88 = 0.20000000298;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(this->feathers); i++, feather++) {
        if (feather->type != 0) {
            feather->timer++;
            feather->pos.x += feather->vel.x;
            feather->pos.y += feather->vel.y;
            feather->pos.z += feather->vel.z;
            feather->vel.x += feather->accel.x;
            feather->vel.y += feather->accel.y;
            feather->vel.z += feather->accel.z;
            if (feather->type == 1) {
                feather->unk_2A++;
                Math_SmoothScaleMaxF(&feather->vel.x, 0.0f, 1.0f, dtemp88);
                Math_SmoothScaleMaxF(&feather->vel.z, 0.0f, 1.0f, dtemp88);
                if (feather->vel.y < -0.5f) {
                    feather->vel.y = -0.5f;
                }

                feather->unk_30 = Math_Sins( (s16) (feather->unk_2A * 0xBB8)) * 3.14159274101f * 0.20000000298f;

                if (feather->life < feather->timer) {
                    feather->type = 0;
                }
            }
        }
    }
}

//opa
#pragma GLOBAL_ASM("./asm/non_matchings/overlays/ovl_En_Niw_0x80891060/func_808932B0.asm")
