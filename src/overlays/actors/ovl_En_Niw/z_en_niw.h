#ifndef Z_EN_NIW_H
#define Z_EN_NIW_H

#include <global.h>

struct EnNiw;

typedef void (*EnNiwActionFunc)(struct EnNiw*, GlobalContext*);

typedef struct {
    // in OOT this is "type" and there is one instance of an
    //  if statement specifying `if (true) if (enabled == 1)`
    //  so in beta there might have been a third value
    /* 0x0000 */ u8 enabled;
    /* 0x0004 */ Vec3f pos;
    /* 0x0010 */ Vec3f vel;
    /* 0x001C */ Vec3f accel;
    /* 0x0028 */ s16 life;
    /* 0x002A */ s16 zRotStart;
    /* 0x002C */ f32 scale;
    /* 0x0030 */ f32 zRot;
    /* 0x0034 */ u8 timer;
} EnNiwFeather; // size = 0x0038

#define ENNIW_LIMBCOUNT 0x10

typedef struct EnNiw {
    /* 0x000 */ Actor actor;
    /* 0x144 */ SkelAnime skelanime;
    /* 0x188 */ Vec3s limbDrawTbl[ENNIW_LIMBCOUNT];
    /* 0x1E8 */ Vec3s transitionDrawtable[ENNIW_LIMBCOUNT];
    /* 0x248 */ EnNiwActionFunc actionFunc;
    /* 0x24C */ s16 unkTimer24C;
    /* 0x24E */ s16 unkTimer24E;
    /* 0x250 */ s16 unkTimer250;
    // 252 is re-used, after thrown is used as a hop timer
    /* 0x252 */ s16 unkTimer252;
    /* 0x254 */ s16 unkTimer254; // might be a running timer
    /* 0x256 */ s16 sfxTimer1; 
    /* 0x258 */ s16 flutterSfxTimer;
    /* 0x25A */ s16 unusedTimer25A;
    /* 0x25C */ s16 yawTimer; // every 70 frames rechecks yawToPlayer
    /* 0x25E */ s16 unusedTimer25E;
    /* 0x260 */ s16 unkTimer260; // iframe hit timer?
    /* 0x264 */ f32 unk264[10]; 
    /* 0x28C */ s16 unusedCounter28C; // todo: view in-game and see if it gets read out of actor? 
    /* 0x28E */ s16 unknownState28E;
    /* 0x290 */ s16 unk290; // attack niw count? never decrements though?
    /* 0x292 */ s16 unk292; // toggle timer
    /* 0x294 */ s16 pad294;
    /* 0x296 */ s16 unk296; // toggle every other frame timer
    /* 0x298 */ s16 unk298; // EnNiw_CheckRage 
    /* 0x29C */ s16 unk29A; // toggle timer for func_808917F8
    /* 0x29C */ u16 unk29C; // changed by EnNiw_Trigger
    /* 0x29E */ s16 unk29E; // EnNiw_Held 
    /* 0x2A0 */ s16 niwStormActive; // bool
    /* 0x2A2 */ s16 niwType; // params copied at init time
    /* 0x2A4 */ Vec3f unk2A4; // this actors starting position
    /* 0x2B0 */ Vec3f unk2B0; // this actors starting position
    /* 0x2BC */ Vec3f unk2BC;
    /* 0x2C8 */ f32 limb7Rotz;
    /* 0x2CC */ f32 limb7Roty;
    /* 0x2D0 */ f32 limb7Rotx;
    /* 0x2D4 */ f32 limbBRotz;
    /* 0x2D8 */ f32 limbBRoty;
    /* 0x2DC */ f32 limbBRotx;
    /* 0x2E0 */ f32 limbDRot;
    /* 0x2E4 */ f32 limbFRot;
    /* 0x2E8 */ s16 yawTowardsPlayer;
    /* 0x2EA */ s16 unk2EA; // toggle timer used in update
    /* 0x2EC */ s16 unk2EC; // some state, wings up?
    /* 0x2EE */ UNK_TYPE1  pad2EE[0x6];
    /* 0x2F4 */ f32 unusedFloat2F4;
    /* 0x2F8 */ f32 unusedFloat2F8;
    /* 0x2FC */ f32 unusedFloat2FC;
    /* 0x300 */ f32 unk300; // some world position modifier? 
    /* 0x304 */ f32 unk304; // similar nature to 300
    /* 0x308 */ f32 unk308; // actor height?
    /* 0x30C */ s32 pad30C;
    /* 0x310 */ ColliderCylinder collider;
    /* 0x35C */ EnNiwFeather feathers[0x14];

} EnNiw; // size = 0x7BC

// in init, any value below 0 becomes zero
//  however, in vanilla, only 0xFFFF (-1) exists
#define ENNIW_TYPE_VANILLA 0xFFFF
#define ENNIW_TYPE_REGULAR 0
// one of these will likely be the attack cuccos just not sure which one yet
#define ENNIW_TYPE_UNK1 1
#define ENNIW_TYPE_UNK2 2

//extern const ActorInit En_Niw_InitVars;

extern FlexSkeletonHeader D_06002530;
extern AnimationHeader D_060000E8;

// feather display list?
extern void* D_060023B0;
extern void* D_06002428;


#endif // Z_EN_NIW_H
