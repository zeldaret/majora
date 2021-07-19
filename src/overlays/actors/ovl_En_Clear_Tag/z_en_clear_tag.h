#ifndef Z_EN_CLEAR_TAG_H
#define Z_EN_CLEAR_TAG_H

#include <global.h>

struct EnClearTag;

typedef enum {
    /* 0x00 */ CLEARTAG_NO_EFFECT,
    /* 0x01 */ CLEARTAG_EXPLOSION_DEBRIS,
    /* 0x02 */ CLEARTAG_UNUSED_BLACK_SMOKE, // effect->type never set to 2
    /* 0x03 */ CLEARTAG_EXPLOSION_BLACK_SMOKE,
    /* 0x04 */ CLEARTAG_EXPLOSION_OUTER_CLOUD,
    /* 0x05 */ CLEARTAG_LIGHT_RAY,
    /* 0x06 */ CLEARTAG_EXPLOSION_FLOOR_SHOCKWAVE,
    /* 0x07 */ CLEARTAG_EXPLOSION_SPLASH,
    /* 0x08 */ CLEARTAG_NO_EXPLOSION_BLACK_SMOKE,
} EnClearEffectType;

typedef struct EnClearTagEffects {
    /* 0x00 */ u8 type;
    /* 0x01 */ u8 actionTimer;
    /* 0x04 */ Vec3f pos;
    /* 0x10 */ Vec3f vel;
    /* 0x1C */ Vec3f accel;
    /* 0x28 */ f32 primColorR;
    /* 0x2C */ f32 primColorG;
    /* 0x30 */ f32 primColorB;
    /* 0x34 */ f32 primColorAlpha;
    /* 0x38 */ f32 envColorR;
    /* 0x3C */ f32 envColorG;
    /* 0x40 */ f32 envColorB;
    /* 0x44 */ f32 envColorAlpha;
    /* 0x48 */ s16 isDebreeActive; // Not programmed like a bool, but logically used close to a bool
    /* 0x4A */ s16 effectsTimer;
    /* 0x4C */ s16 lightRayAlpha;
    /* 0x4E */ s16 lightRayAlphaDecrementSpeed;
    /* 0x50 */ f32 scale;
    /* 0x54 */ f32 scaleZ;
    /* 0x58 */ f32 rotY;
    /* 0x5C */ f32 rotX;
    /* 0x60 */ f32 rotZ;
    /* 0x64 */ f32 scaleZTarget;
    /* 0x68 */ f32 scaleY;
    /* 0x6C */ f32 scaleX;
} EnClearTagEffects; // size = 0x70

typedef struct EnClearTag {
    /* 0x0000 */ Actor actor;
    /* 0x0144 */ EnClearTagEffects effects[103];
    /* 0x2E54 */ u8 cameraState;
    /* 0x2E56 */ s16 activeTimer; // Actor Marked for Death when timer runs out
    /* 0x2E58 */ UNK_TYPE1 unk2E58[0xC];
    /* 0x2E64 */ s16 camID;
    /* 0x2E66 */ Color_RGBA8 explosionOuterCloudEnvColor;
    /* 0x2E6C */ Vec3f eye; // Camera eye
    /* 0x2E78 */ Vec3f at; // Camera lookAt
} EnClearTag; // size = 0x2E84

extern const ActorInit En_Clear_Tag_InitVars;

#endif // Z_EN_CLEAR_TAG_H
