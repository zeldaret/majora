#ifndef Z_EN_TOTO_H
#define Z_EN_TOTO_H

#include <global.h>

struct EnToto;

typedef void (*EnTotoActionFunc)(struct EnToto*, GlobalContext*);
typedef s32 (*EnTotoUnkFunc)(struct EnToto*, GlobalContext*);

typedef struct EnTotoText {
    /* 0x0 */ u8 unk0;
    /* 0x1 */ u8 unk1;
    /* 0x2 */ u16 textId;
} EnTotoText; // size = 0x4

typedef struct EnTotoUnkStruct2 {
    /* 0x0 */ u16 unk0;
    /* 0x2 */ u16 unk2;
    /* 0x4 */ u16 unk4;
    /* 0x6 */ Vec3s unk6;
} EnTotoUnkStruct2; // size = 0xC

typedef struct EnToto {
    /* 0x000 */ Actor actor;
    /* 0x144 */ SkelAnime skelAnime;
    /* 0x188 */ Vec3s limbDrawTbl[18];
    /* 0x1F4 */ Vec3s transitionDrawTbl[18];
    /* 0x260 */ s16 unk260;
    /* 0x262 */ char unk262[0x2];
    /* 0x264 */ ColliderCylinder collider;
    /* 0x2B0 */ u8 unk2B0;
    /* 0x2B1 */ u8 unk2B1;
    /* 0x2B2 */ s8 cutscene;
    /* 0x2B3 */ u8 unk2B3;
    /* 0x2B4 */ u8 unk2B4;
    /* 0x2B5 */ u8 unk2B5;
    /* 0x2B6 */ u8 unk2B6;
    /* 0x2B7 */ u8 unk2B7;
    /* 0x2B8 */ EnTotoText* text;
    /* 0x2BC */ char unk2BC[0x8]; // Some z_player_lib struct size 0x8
    /* 0x2C4 */ Actor* unk2C4;
    /* 0x2C8 */ u8 pad2C8[0x4];
} EnToto; // size = 0x2CC

extern const ActorInit En_Toto_InitVars;

#endif // Z_EN_TOTO_H
