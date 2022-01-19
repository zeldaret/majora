#include "global.h"
#include "objects/gameplay_keep/gameplay_keep.h"
#include "objects/object_link_nuts/object_link_nuts.h"
#include "objects/object_link_goron/object_link_goron.h"
#include "objects/object_link_zora/object_link_zora.h"
#include "objects/object_mask_meoto/object_mask_meoto.h"
#include "objects/object_mask_bakuretu/object_mask_bakuretu.h"

s16 D_801BFDA0[] = {
    0x01DE, 0x01FF,
    0x025D, 0x01DB,
    0x01DA, 0x01FE,
    0x0219, 0x024C,
    0x0221, 0x025E,
    0x0200, 0x01FD,
    0x025C, 0x025F,
    0x01DC, 0x024E,
    0x0252, 0x01DD,
    0x01D9, 0x0214,
    0x01E4, 0x01E1,
    0x01E2, 0x01E3,
};

struct _struct_D_801BFDD0_0x8 {
    /* 0x0 */ u8 unk_0;                             /* inferred */
    /* 0x1 */ u8 unk_1;                             /* inferred */
    /* 0x2 */ u8 unk_2;                             /* inferred */
    ///* 0x3 */ char pad_3[1];
    /* 0x4 */ Gfx* unk_4;                            /* inferred */
};

struct _struct_D_801BFDD0_0x8 D_801BFDD0[3] = {
    { 0xB4, 0xC8, 0xFF, 0x600BDD8 },
    { 0x9B, 0, 0, 0x6014690 },
    { 0xFF, 0, 0, 0x6011AB8 },
};

u8 D_801BFDE8[] = {
    0x36,
    0x37,
    0x38,
    0x39,
    0x3A,
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x40,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45,
    0x46,
    0x47,
    0x48,
    0x49,
    0x35,
    0x33,
    0x34,
    0x32,
};

FlexSkeletonHeader* D_801BFE00[] = {
    (FlexSkeletonHeader* )0x0600D878,
    (FlexSkeletonHeader* )0x06017A84,
    (FlexSkeletonHeader* )0x06012C34,
    (FlexSkeletonHeader* )0x0600BA24,
    (FlexSkeletonHeader* )0x0601E244,
};

s16 D_801BFE14[][18] = {
    {
        0xC8,
        0x29A,
        0xC8,
        0x2BC,
        0x16E,
        0xC8,
        0x258,
        0xAF,
        0x3C,
        0x320,
        0x3E8,
        -0x64,
        0x258,
        0x24E,
        0x320,
        0x7D,
        0x12C,
        0x41,
    },
    {
        0xC8,
        0x3E8,
        0x12C,
        0x320,
        0x1F4,
        0x190,
        0x320,
        0x190,
        0x78,
        0x320,
        0x226,
        -0x64,
        0x258,
        0x21C,
        0x2EE,
        0x7D,
        0x190,
        0xC8,
    },
    {
        0x64,
        0x3E8,
        0x12C,
        0x320,
        0xFA,
        0xC8,
        0x320,
        0xC8,
        0x5A,
        0x320,
        0x15E,
        -0x50,
        0x258,
        0x21C,
        0x2EE,
        0x3C,
        0xC8,
        0xC8,
    },
    {
        0xC8,
        0x3E8,
        0x12C,
        0x2BC,
        0x226,
        0x10E,
        0x258,
        0x3E8,
        0x78,
        0x320,
        0x258,
        -0x64,
        0x258,
        0x24E,
        0x2EE,
        0x7D,
        0xC8,
        0x82,
    },
    {
        0xC8,
        0x3E8,
        0x12C,
        0x2BC,
        0x226,
        0x10E,
        0x2BC,
        0x12C,
        0x78,
        0x320,
        0x258,
        -0x64,
        0x258,
        0x24E,
        0x2EE,
        0x7D,
        0xC8,
        0x82,
    },
    {
        0xC8,
        0x3E8,
        0x12C,
        0x2BC,
        0x226,
        0x10E,
        0x2BC,
        0x12C,
        0x78,
        0x320,
        0x258,
        -0x64,
        0x258,
        0x24E,
        0x2EE,
        0x7D,
        0xC8,
        0x82,
    },
    {
        0xC8,
        0x3E8,
        0x12C,
        0x2BC,
        0x226,
        0x10E,
        0x2BC,
        0xC8,
        0x78,
        0x320,
        0x258,
        -0x8C,
        0x258,
        0x24E,
        0x2EE,
        0x7D,
        0xC8,
        0x82,
    },
    {
        0x50,
        0x320,
        0x96,
        0x2BC,
        0x1E0,
        0x10E,
        0x258,
        0x32,
        0x78,
        0x320,
        0x12C,
        -0x28,
        0x190,
        0x21C,
        0x10E,
        0x19,
        0,
        0x50,
    },
};

u16 D_801BFF34[4] = { 2, 4, 1, 0 };

// sActionModelGroups
u8 D_801BFF3C[] = {
    3,
    0xD,
    0xA,
    2,
    2,
    2,
    5,
    0xA,
    0xE,
    6,
    6,
    6,
    6,
    9,
    7,
    7,
    7,
    8,
    3,
    3,
    0xB,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    0xC,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    3,
    0,
};

u8 D_801BFF90[] = { 0, 6, 4, 3, 1, 0, 0, 0 };

u8 D_801BFF98[] = { 1, 3, 2, 0, 1, 0, 0, 0 };

typedef struct {
    /* 0x00 */ u8 flag;
    /* 0x02 */ u16 textId;
} TextTriggerEntry; // size = 0x04

TextTriggerEntry D_801BFFA0[] = { { 1, 0x26FC }, { 2, 0x26FD }, { 0, 0 }, { 2, 0x26FD } };

// gPlayerModelTypes
u8 D_801BFFB0[0xF][5] = {
    { 2, 0, 8, 0xC, 0x10 },
    { 1, 2, 7, 0xF, 0x10 },
    { 1, 2, 8, 0xD, 0x10 },
    { 0, 0, 6, 0xE, 0x10 },
    { 0, 0, 6, 0xE, 0x10 },
    { 3, 3, 7, 0xE, 0x10 },
    { 4, 1, 9, 0xE, 0x10 },
    { 5, 0, 6, 0xE, 0x10 },
    { 0, 4, 6, 0xE, 0x10 },
    { 4, 0, 0xB, 0xE, 0x10 },
    { 3, 1, 7, 0xE, 0x10 },
    { 0, 0, 0xA, 0xE, 0x10 },
    { 0, 5, 6, 0xE, 0x10 },
    { 0, 2, 6, 0xF, 0x10 },
    { 0, 1, 7, 0xE, 0x10 },
};

Gfx* D_801BFFFC[] = {
    (Gfx* )0x060049E0,
    (Gfx* )0x060049E0,
    (Gfx* )0x06008C00,
    (Gfx* )0x06008C00,
    (Gfx* )0x0600AB40,
    (Gfx* )0x0600AB40,
    (Gfx* )0x06002C20,
    (Gfx* )0x06002C20,
    (Gfx* )0x0600BDB0,
    (Gfx* )0x0600BDB0,
};

typedef struct {
    Gfx* unk_00;
    Gfx* unk_04;
} Gfx1;
Gfx1 D_801C0024[] = {
    { (Gfx* )0x0601DC28, (Gfx* )0x0601DC28 },
    { (Gfx* )0x0601DC48, (Gfx* )0x0601DC48 },
};

Gfx* D_801C0034[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    (Gfx* )0x060035F0,
    (Gfx* )0x060035F0,
    (Gfx* )0x0601DA90,
    (Gfx* )0x0601DA90,
};

Gfx* D_801C005C[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    (Gfx* )0x060035F0,
    (Gfx* )0x060035F0,
    (Gfx* )0x0601DA90,
    (Gfx* )0x0601DA90,
};

Gfx* D_801C0084[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    (Gfx* )0x060035F0,
    (Gfx* )0x060035F0,
    (Gfx* )0x0601DA90,
    (Gfx* )0x0601DA90,
};

Gfx* D_801C00AC[][2] = {
    { (Gfx* )0x0601DBC8, (Gfx* )0x0601DBC8 },
    { (Gfx* )0x0601DC18, (Gfx* )0x0601DC18 },
};
Gfx* D_801C00BC[][2] = {
    { (Gfx* )0x0601DAD8, (Gfx* )0x0601DAD8 },
    { (Gfx* )0x0601DB40, (Gfx* )0x0601DB40 },
    { (Gfx* )0x0601DB60, (Gfx* )0x0601DB60 },
};

Gfx* D_801C00D4[][2] = {
    { (Gfx* )0x06017700, (Gfx* )0x06017700 },
    { (Gfx* )0x06017338, (Gfx* )0x06017338 },
    { (Gfx* )0x06016B80, (Gfx* )0x06016B80 },
};


Gfx* D_801C00EC[] = {
    (Gfx* )0x060080F0,
    (Gfx* )0x060080F0,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600FDF0,
    (Gfx* )0x0600FDF0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x0601DCD8,
    (Gfx* )0x0601DCD8,
};
Gfx* D_801C0114[] = {
    (Gfx* )0x06006EB8,
    (Gfx* )0x06006EB8,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600FDF0,
    (Gfx* )0x0600FDF0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x0600D528,
    (Gfx* )0x0600D528,
};
Gfx* D_801C013C[] = {
    (Gfx* )0x06006EB8,
    (Gfx* )0x06006EB8,
    (Gfx* )0x0600DE68,
    (Gfx* )0x0600DE68,
    (Gfx* )0x0600C270,
    (Gfx* )0x0600C270,
    (Gfx* )0x06003BC0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x0600E1C8,
    (Gfx* )0x0600E1C8,
};
Gfx* D_801C0164[] = {
    (Gfx* )0x06006EB8,
    (Gfx* )0x06006EB8,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600A500,
    (Gfx* )0x0600C270,
    (Gfx* )0x0600C270,
    (Gfx* )0x06003BC0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x0601DC68,
    (Gfx* )0x0601DC68,
};
Gfx* D_801C018C[][2] = {
    { (Gfx* )0x0601DC68, (Gfx* )0x0601DC68 },
    { (Gfx* )0x0601DC88, (Gfx* )0x0601DC88 },
    { (Gfx* )0x0601DCA8, (Gfx* )0x0601DCA8 },
};
Gfx* D_801C01A4[] = {
    (Gfx* )0x060067D8,
    (Gfx* )0x060067D8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x060038C0,
    (Gfx* )0x060038C0,
    (Gfx* )0x0600D058,
    (Gfx* )0x0600D058,
};
Gfx* D_801C01CC[] = {
    (Gfx* )0x060067D8,
    (Gfx* )0x060067D8,
    (Gfx* )0x0600E7E8,
    (Gfx* )0x0600E7E8,
    (Gfx* )0x0600BBE0,
    (Gfx* )0x0600BBE0,
    (Gfx* )0x060038C0,
    (Gfx* )0x060038C0,
    (Gfx* )0x0600E738,
    (Gfx* )0x0600E738,
};
Gfx* D_801C01F4[] = {
    (Gfx* )0x060067D8,
    (Gfx* )0x060067D8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x060038C0,
    (Gfx* )0x060038C0,
    (Gfx* )0x0601DD18,
    (Gfx* )0x0601DD18,
};
Gfx* D_801C021C[] = {
    (Gfx* )0x060067D8,
    (Gfx* )0x060067D8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x060038C0,
    (Gfx* )0x060038C0,
    (Gfx* )0x0600ED18,
    (Gfx* )0x0600ED18,
};
Gfx* D_801C0244[] = {
    (Gfx* )0x060067D8,
    (Gfx* )0x060067D8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x06009EF8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x0600FBB8,
    (Gfx* )0x060038C0,
    (Gfx* )0x060038C0,
    (Gfx* )0x0601DCF8,
    (Gfx* )0x0601DCF8,
};
Gfx* D_801C026C[] = {
    (Gfx* )0x06006EB8,
    (Gfx* )0x06006EB8,
    (Gfx* )0x06011468,
    (Gfx* )0x06011468,
    (Gfx* )0x06010D08,
    (Gfx* )0x06010D08,
    (Gfx* )0x06003BC0,
    (Gfx* )0x06003BC0,
    (Gfx* )0x0601DFA8,
    (Gfx* )0x0601DFA8,
};

s32 D_801C0294[PLAYER_FORM_MAX] = { 0x6006C38, 0x600A220, 0x600C020, 0x6003AB8, 0x600D3D8 };
s32 D_801C02A8[PLAYER_FORM_MAX] = { 0x6006EB8, 0x600A500, 0x600C270, 0x6003BC0, 0x600E1C8 };
s32 D_801C02BC[PLAYER_FORM_MAX] = { 0x6006410, 0x6009A98, 0x600B820, 0x60036B0, 0x600CCE0 };
s32 D_801C02D0[PLAYER_FORM_MAX] = { 0x60067D8, 0x60038C0, 0x600FBB8, 0x60038C0, 0x6018490 };
s32 D_801C02E4[PLAYER_FORM_MAX] = { 0x60067D8, 0x60038C0, 0x600FBB8, 0x60038C0, 0x6017B40 };

// sPlayerDListGroups
Gfx** D_801C02F8[] = {
    D_801C0114,
    D_801C013C,
    D_801C0164,
    D_801C00EC,
    D_801C0114,
    D_801C026C,
    D_801C01A4,
    D_801C01CC,
    D_801C01CC,
    D_801C01F4,
    D_801C021C,
    D_801C0244,
    D_801C0034,
    D_801C005C,
    D_801C0084,
    D_801C0084,
    D_801BFFFC,
    NULL,
};

struct_80124618 D_801C0340[] = {
    { 0, { 0, 0, 0 } },
    { 5, { 0, 0, 0 } },
    { 7, { 0x64, 0x64, 0x64 } },
    { 9, { 0x6E, 0x6E, 0x6E } },
    { 0xB, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0368[] = {
    { 0, { 0, 0, 0 } },
    { 4, { 0, 0, 0 } },
    { 6, { 0x78, 0x96, 0x3C } },
    { 8, { 0x82, 0x50, 0xA0 } },
    { 9, { 0x64, 0x64, 0x64 } },
    { 0xA, { 0x5A, 0x64, 0x5A } },
    { 0xB, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C03A0[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 2, { 0x78, 0x78, 0x78 } },
    { 6, { 0x5A, 0x5A, 0x5A } },
    { 7, { 0x5D, 0x5D, 0x5D } },
};
struct_80124618 D_801C03C0[] = {
    { 0, { 0xC8, 0x64, 0x6E } },
    { 2, { 0x5A, 0x64, 0x64 } },
    { 3, { 0x64, 0x64, 0x64 } },
    { 7, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C03E0[] = {
    { 0, { 0x64, 0x64, 0x6E } },
    { 2, { 0x3C, 0x64, 0x50 } },
    { 3, { 0x82, 0x69, 0x6E } },
    { 7, { 0x82, 0x69, 0x6E } },
    { 0xA, { 0x64, 0x64, 0x64 } },
    { 0x13, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0410[] = {
    { 0, { 0, 0, 0 } },
    { 2, { 0x50, 0x6E, 0x50 } },
    { 3, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0428[] = {
    { 0, { 0, 0, 0 } },
    { 6, { 0, 0, 0 } },
    { 7, { 0x3C, 0x3C, 0x32 } },
    { 8, { 0x78, 0x82, 0x64 } },
    { 9, { 0x64, 0x78, 0x50 } },
    { 0xB, { 0x64, 0x64, 0x64 } },
    { 0xD, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0460[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 7, { 0x64, 0x4A, 0x50 } },
    { 8, { 0x64, 0xB4, 0x82 } },
    { 0xA, { 0x64, 0x50, 0x50 } },
    { 0xD, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0490[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 1, { 0x64, 0x64, 0x64 } },
    { 2, { 0x5A, 0x64, 0x69 } },
    { 4, { 0x6E, 0x64, 0x64 } },
    { 5, { 0x5A, 0x64, 0x69 } },
    { 6, { 0x64, 0x64, 0x64 } },
    { 7, { 0x5A, 0x64, 0x69 } },
    { 8, { 0x64, 0x64, 0x64 } },
    { 9, { 0x5A, 0x64, 0x69 } },
    { 0xA, { 0x64, 0x64, 0x64 } },
    { 0xB, { 0x5A, 0x64, 0x69 } },
    { 0xC, { 0x6E, 0x64, 0x64 } },
    { 0xD, { 0x64, 0x64, 0x64 } },
    { 0xE, { 0x5A, 0x64, 0x69 } },
    { 0xF, { 0x5A, 0x64, 0x69 } },
    { 0x11, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0510[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 4, { 0x64, 0x64, 0x64 } },
    { 5, { 0x5A, 0x6E, 0x64 } },
    { 6, { 0x6E, 0x69, 0x64 } },
    { 8, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0538[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 6, { 0, 0, 0 } },
    { 8, { 0x64, 0x64, 0x64 } },
    { 0xE, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0560[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 2, { 0x5F, 0x5F, 0x64 } },
    { 3, { 0x69, 0x69, 0x64 } },
    { 5, { 0x66, 0x66, 0x66 } },
};
struct_80124618 D_801C0580[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 9, { 0x64, 0x64, 0x64 } },
    { 0xA, { 0x96, 0x96, 0x96 } },
    { 0xC, { 0, 0, 0 } },
    { 0xE, { 0, 0, 0 } },
};
struct_80124618 D_801C05A8[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 6, { 0x64, 0x64, 0x64 } },
    { 7, { 0, 0, 0 } },
    { 0x11, { 0, 0, 0 } },
};
struct_80124618 D_801C05C8[] = { { 0, { 0, 0, 0 } }, { 0x11, { 0x32, 0x32, 0x32 } } };
struct_80124618 D_801C05D8[] = { { 0, { 0, 0, 0 } }, { 5, { 0, 0, 0 } }, { 9, { 0x64, 0x64, 0x64 } } };
struct_80124618 D_801C05F0[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 9, { 0, 0, 0 } },
};
struct_80124618 D_801C0608[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 0xA, { 0x64, 0x64, 0x64 } },
    { 0x20, { 0x64, 0x73, 0x69 } },
    { 0x3A, { 0x64, 0x65, 0x64 } },
};
struct_80124618 D_801C0628[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 0xF, { 0x64, 0x64, 0x69 } },
    { 0x19, { 0x64, 0x64, 0x69 } },
    { 0x22, { 0x64, 0x64, 0x64 } },
    { 0x2E, { 0x64, 0x64, 0x64 } },
    { 0x39, { 0x64, 0x64, 0x69 } },
    { 0x43, { 0x64, 0x64, 0x69 } },
    { 0x4C, { 0x64, 0x64, 0x64 } },
    { 0x4E, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0678[] = {
    { 0, { 0, 0, 0 } },
    { 6, { 0, 0, 0 } },
    { 8, { 0x64, 0x64, 0x64 } },
    { 0xB, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0698[] = {
    { 0, { 0, 0, 0 } },
    { 7, { 0x460, 0x70, 0x70 } },
    { 8, { 0x8C, 0xA8, 0xA8 } },
    { 0xB, { 0x8C, 0x8C, 0x8C } },
};
struct_80124618 D_801C06B8[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 7, { 0x64, 0x64, 0x64 } },
    { 8, { 0x46, 0x1E, 0x46 } },
    { 0xA, { 0, 0, 0 } },
    { 0xE, { 0, 0, 0 } },
};
struct_80124618 D_801C06E0[] = { { 0, { 0x8C, 0x8C, 0x8C } }, { 1, { 0, 0, 0 } }, { 0xE, { 0, 0, 0 } } };
struct_80124618 D_801C06F8[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 6, { 0, 0, 0 } },
    { 0xA, { 0, 0, 0 } },
};
struct_80124618 D_801C0718[] = { { 0, { 0x8C, 0x8C, 0x8C } }, { 1, { 0, 0, 0 } }, { 0xA, { 0, 0, 0 } } };
struct_80124618 D_801C0730[] = { { 0, { 0x64, 0x64, 0x64 } }, { 0xD, { 0x64, 0x64, 0x64 } } };
struct_80124618 D_801C0740[] = { { 0, { 0x8C, 0x8C, 0x8C } }, { 0xD, { 0x8C, 0x8C, 0x8C } } };
struct_80124618 D_801C0750[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 5, { 0x64, 0x64, 0x64 } },
    { 6, { 0xC8, 0xC8, 0xC8 } },
    { 0xA, { 0xC8, 0xC8, 0xC8 } },
    { 0xB, { 0x64, 0x64, 0x64 } },
};


u8 D_801C0778[] = { 0, 0, 0, 0, 0, 0x64, 0xC8, 0xFF, 0xFF, 0xFF, 0xC8, 0x64 };

struct_80124618 D_801C0784[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 0xE, { 0x64, 0x64, 0x64 } },
    { 0xF, { 0xC8, 0xC8, 0xC8 } },
    { 0x10, { 0xC8, 0xC8, 0xC8 } },
    { 0x12, { 0x64, 0x64, 0x64 } },
};

u8 D_801C07AC[] = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0x64,
    0xC8,
    0xFF,
    0xFF,
    0xFF,
    0xC8,
    0x64,
    0,
};

struct_80124618 D_801C07C0[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 0xA, { 0x64, 0x64, 0x64 } },
    { 0xB, { 0x64, 0x78, 0x78 } },
    { 0xC, { 0x64, 0x78, 0x78 } },
    { 0xE, { 0x64, 0x64, 0x64 } },
    { 0x13, { 0x64, 0x64, 0x64 } },
};

struct_80124618 D_801C07F0[] = {
    { 0, { 0x28, 0x3C, 0x46 } },
    { 3, { 0x28, 0x3C, 0x46 } },
    { 4, { 0x4B, 0x5A, 0x55 } },
    { 5, { 0x6E, 0x78, 0x64 } },
    { 7, { 0x64, 0x64, 0x64 } },
    { 8, { 0x64, 0x64, 0x64 } },
};
struct_80124618 D_801C0820[] = {
    { 0, { 0x64, 0x64, 0x64 } },
    { 7, { 0x64, 0x64, 0x64 } },
    { 0xC, { 0x28, 0x3C, 0x46 } },
};
struct_80124618 D_801C0838[] = {
    { 0, { 0x28, 0x3C, 0x46 } },
    { 7, { 0x28, 0x3C, 0x46 } },
    { 0xC, { 0x64, 0x64, 0x64 } },
};

Gfx D_801C0850[] = { { { 0xD9FFFFFF, 0x400 } }, { { 0xDF000000, 0 } } };
Gfx D_801C0860[] = { { { 0xD9FFFFFF, 0x200 } }, { { 0xDF000000, 0 } } };

UNK_PTR D_801C0870[] = {
    (void* )0x06000000,
    (void* )0x06000800,
    (void* )0x06001000,
    (void* )0x06001800,
    (void* )0x06002000,
    (void* )0x06002800,
    (void* )0x06003000,
    (void* )0x06003800,
};
void* D_801C0890[] = {
    (void* )0x06004000,
    (void* )0x06004400,
    (void* )0x06004800,
    (void* )0x06004C00,
};
u8 D_801C08A0[][2] = {
    { 0, 0 },
    { 1, 0 },
    { 2, 0 },
    { 0, 0 },
    { 1, 0 },
    { 2, 0 },
    { 4, 0 },
    { 5, 1 },
    { 7, 2 },
    { 0, 2 },
    { 3, 0 },
    { 4, 0 },
    { 2, 2 },
    { 1, 1 },
    { 0, 2 },
    { 0, 3 },
};

Vec3f D_801C08C0[] = {
    { 1304.0f, 0.0f, 0.0f },
    { 1156.0f, 0.0f, 0.0f },
    { 1406.0f, 0.0f, 0.0f },
    { 408.0f, 0.0f, 0.0f },
    { 695.0f, 0.0f, 0.0f },
};

f32 D_801C08FC[5] = { 1265.0f, 1056.0f, 1506.0f, 359.0f, 826.0f };
f32 D_801C0910[5] = { 170.0416f, 133.63359f, 197.68358f, 16.646399f, 48.302498f };
f32 D_801C0924[5] = { 10.019104f, 22.120003f, -29.12001f, 3.7582989f, -19.925102f };
f32 D_801C0938[5] = { 5.0f, 4.0f, 1.0f, 1.0f, 3.0f };



// bss

typedef struct {
    /* 0x00 */ Vec3f unk_00;
    /* 0x0C */ Vec3f unk_0C;
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 unk_1A;
} struct_801F58B0; // size = 0x1C

extern struct_801F58B0 D_801F58B0[3][3];

extern struct_801F58B0 D_801F59AC[][3];

extern Vec3f D_801F59B0[2];

extern s32 D_801F59C8[2];

typedef struct {
    /* 0x00 */ s16 unk_0;
    /* 0x02 */ s16 unk_2;
    /* 0x04 */ s16 unk_4;
    /* 0x06 */ s16 unk_6;
    /* 0x08 */ s16 unk_8;
} struct_801F59D0;

extern struct_801F59D0 D_801F59D0;

extern s32 D_801F59E0;

extern s32 D_801F59E4;

extern Vec3f D_801F59E8;

extern s32 D_801F59F4;
extern s32 D_801F59F8;

















void func_80127B64(struct_801F58B0 arg0[], UNK_TYPE arg1, Vec3f* arg2);





s32 Player_HoldsTwoHandedWeapon(Player* player);


s32 func_801226E0(GlobalContext* globalCtx, s32 arg1) {
    if (arg1 == 0){
        func_80169E6C(globalCtx, 0, 0xBFF);
        if (globalCtx->sceneNum == SCENE_KAKUSIANA){
            return 1;
        }
    }

    gSaveContext.respawn[0].data = 0;
    return arg1;
}

s32 func_80122744(GlobalContext* globalCtx, PlayerLib_80122744_arg1* arg1, u32 arg2, Vec3s* arg3) {
    arg1->unk_00 = arg2;
    arg1->unk_01 = 0;
    arg1->unk_04 = arg3;
    return 1;
}

s32 func_80122760(GlobalContext* globalCtx, PlayerLib_80122744_arg1* arg1, f32 arg2) {
    if (arg1->unk_01 < arg1->unk_00) {
        Player* player = GET_PLAYER(globalCtx);
        Vec3f sp30;
        s32 pad;
        s16 yaw;
        f32 distXZ;

        Math_Vec3s_ToVec3f(&sp30, &arg1->unk_04[arg1->unk_01]);
        yaw = Math_Vec3f_Yaw(&player->actor.world.pos, &sp30);
        func_800B6F20(globalCtx, &globalCtx->actorCtx.unk_26C, arg2, yaw);
        globalCtx->actorCtx.unk268 = 1;
        distXZ = Math_Vec3f_DistXZ(&player->actor.world.pos, &sp30);

        if ((fabsf(player->actor.world.pos.y - sp30.y) < 50.0f) && (distXZ < arg2)) {
            arg1->unk_01++;
        }

        return 0;
    }

    return 1;
}

void func_80122868(GlobalContext* globalCtx, Player* player) {
    OPEN_DISPS(globalCtx->state.gfxCtx);

    if (player->invincibilityTimer > 0) {
        s32 phi_v0 = 50 - player->invincibilityTimer;

        phi_v0 = CLAMP(phi_v0, 8, 40);

        player->unk_B5F += phi_v0;
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 0xFF, 0, 0, 0, 0, 0xFA0 - (s32) (Math_CosS((player->unk_B5F << 8)) * 2000.0f));
    } else if (gSaveContext.unk_1016 != 0) {
        player->unk_B5F += 10;
        POLY_OPA_DISP = Gfx_SetFog(POLY_OPA_DISP, 0, 0, 0xFF, 0, 0, 0xFA0 - (s32) (Math_CosS((player->unk_B5F << 8)) * 2000.0f));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void func_801229A0(GlobalContext* globalCtx, Player* player) {
    OPEN_DISPS(globalCtx->state.gfxCtx);

    if ((gSaveContext.unk_1016 != 0) || (player->invincibilityTimer > 0)) {
        POLY_OPA_DISP = func_801660B8(globalCtx, POLY_OPA_DISP);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void func_801229EC(UNK_TYPE arg0, UNK_TYPE arg1) {
}

// Load mask?
void func_801229FC(Player* player) {
    if (player->maskObjectLoading == 1) {
        // TODO: check if player->maskId is unsigned
        s16 temp_s1 = D_801BFDA0[(u8)player->maskId-1];

        osCreateMesgQueue(&player->maskObjectLoadQueue, &player->maskObjectLoadMsg, 1);
        DmaMgr_SendRequestImpl(&player->maskDmaRequest, player->maskObjectSegment, objectFileTable[temp_s1].vromStart, objectFileTable[temp_s1].vromEnd - objectFileTable[temp_s1].vromStart, 0, &player->maskObjectLoadQueue, NULL);
        player->maskObjectLoading += 1;
    } else if (player->maskObjectLoading == 2) {
        if (osRecvMesg(&player->maskObjectLoadQueue, NULL, 0) == 0) {
            player->maskObjectLoading = 0;

            if (player->currentMask == PLAYER_MASK_GREAT_FAIRY) {
                s32 i;

                for (i = 0; i < ARRAY_COUNT(D_801F58B0); i++) {
                    func_80127B64(D_801F58B0[i], ARRAY_COUNT(D_801F58B0[i]), &player->bodyPartsPos[7]);
                }
            }
        }
    } else if ((player->currentMask != 0) && (player->currentMask != (u8)player->maskId)) {
        player->maskObjectLoading = 1;
        player->maskId = player->currentMask;
    } else if (player->currentMask == 8) {
        s32 i;

        for (i = 0; i < ARRAY_COUNT(D_801F59C8); i++) {
            D_801F59C8[i] += Rand_S16Offset(4, 0x17) + (s32) (fabsf(player->linearVelocity) * 50.0f);
        }
    }
}

void func_80122BA4(GraphicsContext** gfxCtx, struct_80122D44_arg1* arg1, s32 arg2, s32 arg3) {
    if (arg2 == arg1->unk_00) {
        s32 index;

        arg1->unk_01--;
        if (arg1->unk_01 < 0) {
            arg1->unk_01 = 3;
        }

        index = arg1->unk_01;
        arg1->unk_04[index].unk_00 = arg1->unk_00;
        arg1->unk_04[index].unk_01 = arg3;
        Matrix_CopyCurrentState(&arg1->unk_04[index].unk_04);

        arg1->unk_00 = 0;
    }
}

void func_80122C20(GlobalContext* globalCtx, struct_80122D44_arg1* arg1) {
    struct_80122D44_arg1_unk_04* temp_v1 = &arg1->unk_04[0];
    s32 phi_a1;
    s32 i;

    for (i = 0; i < ARRAY_COUNT(arg1->unk_04); i++, temp_v1++) {
        if (temp_v1->unk_01) {
            phi_a1 = temp_v1->unk_00 == 3 ? 0x55 : 0x33;
            if (phi_a1 >= temp_v1->unk_01) {
                temp_v1->unk_01 = 0;
            } else {
                temp_v1->unk_01 -= phi_a1;
            }
        }
    }
}

void func_80122D44(GlobalContext* globalCtx, struct_80122D44_arg1* arg1) {
    struct _struct_D_801BFDD0_0x8* temp_s3;
    struct_80122D44_arg1_unk_04* phi_s2 = arg1->unk_04;
    s32 phi_s6 = false;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    for (i = 0; i != ARRAY_COUNT(arg1->unk_04); i++) {
        if ((phi_s2->unk_01 != 0) && (phi_s2->unk_01 != 0xFF)) {
            temp_s3 = &D_801BFDD0[phi_s2->unk_00 - 1];
            Matrix_SetCurrentState(&phi_s2->unk_04);

            gDPPipeSync(POLY_XLU_DISP++);

            if (!phi_s6 && phi_s2->unk_00 == 2) {
                AnimatedMat_DrawXlu(globalCtx, Lib_SegmentedToVirtual(&object_link_goron_Matanimheader_013138));
                phi_s6 = true;
            }

            Scene_SetRenderModeXlu(globalCtx, 1, 2);
            gDPSetEnvColor(POLY_XLU_DISP++, temp_s3->unk_0, temp_s3->unk_1, temp_s3->unk_2, phi_s2->unk_01);

            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPDisplayList(POLY_XLU_DISP++, temp_s3->unk_4);
        }

        phi_s2++;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

u8 func_80122ED8(s32 index) {
    return D_801BFDE8[index];
}

u8 func_80122EEC(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (player->currentMask != PLAYER_MASK_NONE) {
        return func_80122ED8(player->currentMask - 1);
    } else {
        return 0xFF;
    }
}

void func_80122F28(Player* player) {
    if ((player->actor.category == ACTORCAT_PLAYER) && (!(player->stateFlags1 & (0x20000000 | 0xA00000 | 0xC00))) && (!(player->stateFlags2 & 1))) {
        if (player->doorType < 0) {
            ActorCutscene_SetIntentToPlay(0x7C);
        } else {
            ActorCutscene_SetIntentToPlay(0x7D);
        }
    }
}

s32 func_80122F9C(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return (player->stateFlags2 & 0x80000) && player->unk_AE7 == 2;
}

s32 func_80122FCC(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return (player->stateFlags2 & 0x80000) && (player->unk_AE7 == 1 || player->unk_AE7 == 3);
}

void func_8012300C(GlobalContext* globalCtx, s32 arg1) {
    Player* player = GET_PLAYER(globalCtx);

    player->unk_B2B = arg1;
}

void func_8012301C(Player* player, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    s32 pad;

    player->unk_AE7++;

    if (player->unk_AE7 == 2) {
        s16 objectId = gLinkFormObjectIndexes[((void)0, gSaveContext.playerForm)];

        gActorOverlayTable->initInfo->objectId = objectId;
        func_8012F73C(&globalCtx->objectCtx, player->actor.objBankIndex, objectId);
        player->actor.objBankIndex = Object_GetIndex(&globalCtx->objectCtx, 1);
    } else if (player->unk_AE7 >= 3) {
        s32 objBankIndex = Object_GetIndex(&globalCtx->objectCtx, gActorOverlayTable->initInfo->objectId);

        if (Object_IsLoaded(&globalCtx->objectCtx, objBankIndex)) {
            player->actor.objBankIndex = objBankIndex;
            player->actor.shape.rot.z = gSaveContext.playerForm + 1;
            player->actor.init = func_80160AF8;
            player->actor.update = func_80160B80;
            player->actor.draw = func_80160BC0;
            gSaveContext.equippedMask = 0;
        }
    }
}

// OoT's Player_SetBootData?
void func_80123140(GlobalContext* globalCtx, Player* player) {
    s16* bootRegs;
    s32 currentBoots;
    f32 scale;

    if ((player->actor.id == ACTOR_PLAYER) && (player->transformation == PLAYER_FORM_FIERCE_DEITY)) {
        gGameInfo->data[0x1B] = 0x4B0;
    } else {
        gGameInfo->data[0x1B] = 0x7D0;
    }

    gGameInfo->data[0x30] = 0x172;

    currentBoots = player->currentBoots;
    if (currentBoots >= PLAYER_BOOTS_ZORA_UNDERWATER) {
        if (player->stateFlags1 & 0x8000000) {
            currentBoots++;
        }
        if (player->transformation == PLAYER_FORM_GORON) {
            gGameInfo->data[0x30] = 0xC8;
        }
    } else if (currentBoots == PLAYER_BOOTS_GIANT) {
        gGameInfo->data[0x30] = 0xAA;
    }

    bootRegs = D_801BFE14[currentBoots];
    gGameInfo->data[0x13] = bootRegs[0];
    gGameInfo->data[0x1E] = bootRegs[1];
    gGameInfo->data[0x20] = bootRegs[2];
    gGameInfo->data[0x22] = bootRegs[3];
    gGameInfo->data[0x23] = bootRegs[4];
    gGameInfo->data[0x24] = bootRegs[5];
    gGameInfo->data[0x25] = bootRegs[6];
    gGameInfo->data[0x26] = bootRegs[7];
    gGameInfo->data[0x27] = bootRegs[8];
    gGameInfo->data[0x2B] = bootRegs[9];
    gGameInfo->data[0x2D] = bootRegs[10];
    gGameInfo->data[0x44] = bootRegs[11];
    gGameInfo->data[0x45] = bootRegs[12];
    gGameInfo->data[0x3A2] = bootRegs[13];
    gGameInfo->data[0x3A3] = bootRegs[14];
    gGameInfo->data[0x3A4] = bootRegs[15];
    gGameInfo->data[0x3A5] = bootRegs[16];
    gGameInfo->data[0x23F] = bootRegs[17];

    if (globalCtx->roomCtx.currRoom.unk3 == 2) {
        gGameInfo->data[0x2D] = 0x1F4;
    }

    if ((player->actor.id == ACTOR_PLAYER) && (player->transformation == PLAYER_FORM_FIERCE_DEITY)) {
        scale = 0.015f;
    } else {
        scale = 0.01f;
    }

    Actor_SetScale(&player->actor, scale);
}


s32 Player_InBlockingCsMode(GlobalContext* globalCtx, Player* player) {
    return (player->stateFlags1 & 0x20000280) || player->csMode != 0 || globalCtx->sceneLoadFlag == 0x14 ||
           globalCtx->unk_18B4A != 0 || (player->stateFlags1 & 1) || (player->stateFlags3 & 0x80) ||
           globalCtx->actorCtx.unk268 != 0;
}

s32 Player_InCsMode(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return Player_InBlockingCsMode(globalCtx, player) || player->unk_AA5 == 5;
}

s32 func_80123420(Player* player) {
    return player->stateFlags3 & 0x80000000;
}

s32 func_80123434(Player* player) {
    return player->stateFlags1 & (0x40000000 | 0x30000);
}

s32 func_80123448(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return (player->stateFlags1 & 0x400000) && (player->transformation != PLAYER_FORM_HUMAN || (!func_80123434(player) && player->unk_730 == 0));
}

s32 func_801234B0(Player* player) {
    return player->transformation == PLAYER_FORM_GORON || player->transformation == PLAYER_FORM_DEKU;
}

s32 func_801234D4(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return 
        (player->stateFlags2 & 8) 
        ||
        player->actor.speedXZ != 0.0f 
        || 
        (
            (player->transformation != PLAYER_FORM_ZORA) 
            && 
            (player->stateFlags1 & 0x8000000)
        )
        || 
        (
            (player->transformation == PLAYER_FORM_ZORA) 
            && 
            (player->stateFlags1 & 0x8000000) 
            && 
            (
                !(player->actor.bgCheckFlags & 1)
                || 
                (player->currentBoots < PLAYER_BOOTS_ZORA_UNDERWATER)
            )
        );
}

s32 func_80123590(GlobalContext* globalCtx, Actor* actor) {
    Player* player = GET_PLAYER(globalCtx);

    if ((player->stateFlags1 & 0x800) && (player->heldActor == actor)) {
        player->interactRangeActor = NULL;
        player->heldActor = NULL;
        player->actor.child = NULL;
        player->stateFlags1 &= ~0x800;
        return 1;
    }
    return 0;
}

s32 func_801235DC(GlobalContext* globalCtx, f32 arg1, s16 arg2) {
    Player* player = GET_PLAYER(globalCtx);

    if (player->stateFlags3 & 0x1000) {
        player->unk_B08[0] = arg1;
        player->unk_B08[1] += arg1 * 0.05f;
        player->currentYaw = arg2;
        player->actor.home.rot.y = arg2;
        player->actor.shape.rot.y = arg2;
        player->unk_B8C = 4;
        player->invincibilityTimer = 20;

        return true;
    }

    return false;
}

s32 func_8012364C(GlobalContext* globalCtx, Player* player, s32 arg2) {
    s32 ret;

    if (arg2 >= 4) {
        return 0xFF;
    }

    if (arg2 == 0) {
        s32 phi_v1 = func_8012EC80(globalCtx);

        if (phi_v1 >= 0xFD) {
            return phi_v1;
        }

        if ((player->currentMask == PLAYER_MASK_BLAST) && (globalCtx->interfaceCtx.unk_21E == 0x18)) {
            return 0xF0;
        }

        if ((player->currentMask == PLAYER_MASK_BREMEN) && (globalCtx->interfaceCtx.unk_21E == 0x1A)) {
            return 0xF1;
        }

        if ((player->currentMask == PLAYER_MASK_KAMARO) && (globalCtx->interfaceCtx.unk_21E == 0x19)) {
            return 0xF2;
        }

        return phi_v1;
    } else if (arg2 == 1) {
        return (gSaveContext.buttonStatus[1] != 0xFF) ? gSaveContext.equips.buttonItems[0][1] :
                (gSaveContext.unk_3F22 == 0x10) ? gSaveContext.equips.buttonItems[0][1] : 0xFF;
    } else if (arg2 == 2) {
        return (gSaveContext.buttonStatus[2] != 0xFF) ? gSaveContext.equips.buttonItems[0][2] :
                (gSaveContext.unk_3F22 == 0x10) ? gSaveContext.equips.buttonItems[0][2] : 0xFF;
    } else {
        return (gSaveContext.buttonStatus[3] != 0xFF) ? gSaveContext.equips.buttonItems[0][3] :
                (gSaveContext.unk_3F22 == 0x10) ? gSaveContext.equips.buttonItems[0][3] : 0xFF;
    }
}

s32 func_80123810(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    s32 temp_v0;
    s32 sp24;
    s32 i;

    if (gSaveContext.unk_06 == 0) {
        if (CHECK_BTN_ANY(CONTROLLER1(globalCtx)->press.button, BTN_A | BTN_B)) {
            globalCtx->interfaceCtx.unk_222 = 0;
            globalCtx->interfaceCtx.unk_224 = 0;
            Interface_ChangeAlpha(globalCtx->msgCtx.unk_120BC);
            return -1;
        }
    } else {
        gSaveContext.unk_06--;
    }

    for (i = 0; i < ARRAY_COUNT(D_801BFF34) - 1; i++) {
        if (CHECK_BTN_ALL(CONTROLLER1(globalCtx)->press.button, D_801BFF34[i])) {
            i++;
            sp24 = func_8012364C(globalCtx, player, i);

            globalCtx->interfaceCtx.unk_222 = 0;
            globalCtx->interfaceCtx.unk_224 = 0;
            Interface_ChangeAlpha(globalCtx->msgCtx.unk_120BC);
            if ((sp24 >= 0xFD) || (temp_v0 = globalCtx->unk_18794(globalCtx, player, sp24, i), (temp_v0 < 0))) {
                play_sound(0x4806);
                return -1;
            } else {
                s32 pad;

                player->heldItemButton = i;
                return temp_v0;
            }
        }
    }

    return 0;
}

s32 Player_ActionToModelGroup(Player* player, s32 actionParam) {
    s32 modelGroup = D_801BFF3C[actionParam];

    if ((modelGroup == 2) && func_801234B0(player)) {
        return 1;
    }
    return modelGroup;
}

// Player_SetModelsForHoldingShield?
void func_801239AC(Player* player) {
    if (player->stateFlags1 & 0x400000) {
        if ((player->heldItemActionParam < 0) || (player->heldItemActionParam == player->itemActionParam)) {
            if (!Player_HoldsTwoHandedWeapon(player)) {
                if (!func_801234B0(player)) {
                    D_801F59E0 = player->transformation * 2;
                    player->rightHandType = 8;
                    player->rightHandDLists = &D_801C02F8[8][D_801F59E0];

                    if (player->sheathType == 14) {
                        player->sheathType = 12;
                    } else if (player->sheathType == 15) {
                        player->sheathType = 13;
                    }

                    player->sheathDLists = &D_801C02F8[player->sheathType][D_801F59E0];
                    player->modelAnimType = 2;
                    player->heldItemActionParam = -1;
                }
            }
        }
    }
}

void Player_SetModels(Player* player, s32 modelGroup) {
    u8* aux;

    D_801F59E0 = player->transformation * 2;
    player->leftHandType = D_801BFFB0[modelGroup][1];
    player->rightHandType = D_801BFFB0[modelGroup][2];
    player->sheathType = D_801BFFB0[modelGroup][3];

    if (player->sheathType == 14) {
        if (gSaveContext.equips.buttonItems[CUR_FORM][0] == 0xFF) {
            player->sheathType = 15;
        }
    }

    aux = D_801BFFB0[modelGroup];

    player->leftHandDLists = &D_801C02F8[aux[1]][D_801F59E0];
    player->rightHandDLists = &D_801C02F8[aux[2]][D_801F59E0];
    player->sheathDLists = &D_801C02F8[aux[3]][D_801F59E0];
    player->waistDLists = &D_801C02F8[aux[4]][D_801F59E0];

    func_801239AC(player);
}

void Player_SetModelGroup(Player* player, s32 modelGroup) {
    player->modelGroup = modelGroup;

    if (modelGroup == 1) {
        player->modelAnimType = 0;
    } else {
        player->modelAnimType = D_801BFFB0[modelGroup][0];
    }

    if ((player->modelAnimType < 3) && ((((player->transformation != PLAYER_FORM_FIERCE_DEITY)) && (player->transformation != PLAYER_FORM_HUMAN)) || (player->currentShield == PLAYER_SHIELD_NONE))) {
        player->modelAnimType = 0;
    }

    Player_SetModels(player, modelGroup);
}

void func_80123C58(Player* player) {
    player->heldItemActionParam = player->itemActionParam;
    Player_SetModelGroup(player, Player_ActionToModelGroup(player, player->itemActionParam));
    player->unk_AA5 = 0;
}

void Player_SetEquipmentData(GlobalContext* globalCtx, Player* player) {
    if (player->csMode != 0x86) {
        player->currentShield = CUR_EQUIP_VALUE_VOID(EQUIP_SHIELD);
        if ((player->transformation != PLAYER_FORM_ZORA) || (((player->currentBoots != PLAYER_BOOTS_ZORA_LAND)) && (player->currentBoots != PLAYER_BOOTS_ZORA_UNDERWATER))) {
            player->currentBoots = D_801BFF90[player->transformation];
        }
        Player_SetModelGroup(player, Player_ActionToModelGroup(player, player->itemActionParam));
        func_80123140(globalCtx, player);
        if (player->unk_B62 != 0) {
            player->unk_B62 = 1;
        }
    }
}

void func_80123D50(GlobalContext* globalCtx, Player* player, s32 item, s32 actionParam) {
    func_80114FD0(globalCtx, item, player->heldItemButton);

    if (item != ITEM_BOTTLE) {
        player->heldItemId = item;
        player->itemActionParam = actionParam;
    }

    player->heldItemActionParam = actionParam;
}

void func_80123DA4(Player* player) {
    player->unk_730 = NULL;
    player->stateFlags2 &= ~0x2000;
}

void func_80123DC0(Player* player) {
    if ((player->actor.bgCheckFlags & 1) || (player->stateFlags1 & (0x8000000 | 0x800000 | 0x200000)) || (!(player->stateFlags1 & 0xC0000) && ((player->actor.world.pos.y - player->actor.floorHeight) < 100.0f))) {
        player->stateFlags1 &= ~(0x40000000 | 0x80000 | 0x40000| 0x30000 | 0x10000 | 0x8000);
    } else if (!(player->stateFlags1 & (0x200000 | 0x80000 | 0x40000))) {
        player->stateFlags1 |= 0x80000;
    } else if ((player->stateFlags1 & 0x40000) && (player->transformation == PLAYER_FORM_DEKU)) {
        player->stateFlags1 &= ~(0x40000000 | 0x20000 | 0x10000 | 0x8000);
    }
    func_80123DA4(player);
}

void func_80123E90(GlobalContext* globalCtx, Actor* actor) {
    Player* player = GET_PLAYER(globalCtx);

    func_80123DC0(player);
    player->unk_730 = actor;
    player->unk_A78 = actor;
    player->stateFlags1 |= 0x10000;
    func_800DFD78(Play_GetCamera(globalCtx, MAIN_CAM), 8, actor);
    Camera_ChangeMode(Play_GetCamera(globalCtx, MAIN_CAM), 9);
}

s32 func_80123F14(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return player->stateFlags1 & 0x800000;
}

s32 func_80123F2C(GlobalContext* globalCtx, s32 ammo) {
    globalCtx->unk_1887C = ammo + 1;

    return 1;
}

s32 Player_IsBurningStickInRange(GlobalContext* globalCtx, Vec3f* pos, f32 xzRange, f32 yRange) {
    Player* this = GET_PLAYER(globalCtx);
    Vec3f diff;
    s32 pad;

    if ((this->itemActionParam == PLAYER_AP_STICK) && (this->unk_B28 != 0)) {
        Math_Vec3f_Diff(&this->swordInfo[0].tip, pos, &diff);
        return ((SQ(diff.x) + SQ(diff.z)) <= SQ(xzRange)) && (0.0f <= diff.y) && (diff.y <= yRange);
    } else {
        return false;
    }
}

u8 Player_GetStrength(void) {
    return D_801BFF98[(void)0, gSaveContext.playerForm];
}

u8 Player_GetMask(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return player->currentMask;
}

void Player_RemoveMask(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    player->currentMask = PLAYER_MASK_NONE;
}

s32 Player_HasMirrorShieldEquipped(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return player->transformation == PLAYER_FORM_HUMAN && player->currentShield == PLAYER_SHIELD_MIRROR_SHIELD;
}

s32 Player_HasMirrorShieldSetToDraw(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    return player->transformation == PLAYER_FORM_HUMAN && player->rightHandType == 8 && player->currentShield == PLAYER_SHIELD_MIRROR_SHIELD;
}

s32 Player_HoldsHookshot(Player* player) {
    return player->itemActionParam == PLAYER_AP_HOOKSHOT;
}

s32 func_801240DC(Player* player) {
    return Player_HoldsHookshot(player) && player->heldActor == NULL;
}

s32 func_80124110(Player* player, s32 actionParam) {
    s32 temp_v0 = actionParam - PLAYER_AP_UNK_2;

    if (((player->transformation != PLAYER_FORM_GORON) && ((actionParam - PLAYER_AP_UNK_2) > (PLAYER_AP_UNK_2 - PLAYER_AP_UNK_2))) && ((actionParam - PLAYER_AP_UNK_2) < (PLAYER_AP_SWORD_GREAT_FAIRY - PLAYER_AP_UNK_2))) {
        return temp_v0;
    }

    return 0;
}

s32 func_80124148(Player* player) {
    return func_80124110(player, player->itemActionParam);
}

s32 Player_ActionToSword(s32 actionParam) {
    s32 sword = actionParam - PLAYER_AP_UNK_2;

    if ((sword > (PLAYER_AP_UNK_2 - PLAYER_AP_UNK_2)) && (sword <= (PLAYER_AP_UNK_8 - PLAYER_AP_UNK_2))) {
        return sword;
    }
    return 0;
}

s32 Player_GetSwordHeld(Player* player) {
    return Player_ActionToSword(player->itemActionParam);
}

s32 Player_HoldsTwoHandedWeapon(Player* player) {
    // Relies on two-handed weapons to be contiguous
    if ((player->itemActionParam >= PLAYER_AP_SWORD_GREAT_FAIRY) && (player->itemActionParam <= PLAYER_AP_STICK)) {
        return true;
    }

    return false;
}

s32 Player_ActionToBottle(Player* player, s32 actionParam) {
    s32 bottle = actionParam - PLAYER_AP_BOTTLE;

    // Relies on bottle-related action params to be contiguous
    if ((bottle >= (PLAYER_AP_BOTTLE - PLAYER_AP_BOTTLE)) && (bottle <= (PLAYER_AP_BOTTLE_FAIRY - PLAYER_AP_BOTTLE))) {
        return bottle;
    }

    return -1;
}

s32 Player_GetBottleHeld(Player* Player) {
    return Player_ActionToBottle(Player, Player->itemActionParam);
}

s32 Player_ActionToExplosive(Player* player, s32 actionParam) {
    s32 explosive = actionParam - PLAYER_AP_BOMB;

    // Relies on explosive-related action params to be contiguous
    if ((explosive >= (PLAYER_AP_BOMB-PLAYER_AP_BOMB)) && (explosive <= (PLAYER_AP_BOMBCHU-PLAYER_AP_BOMB))) {
        return explosive;
    }

    return -1;
}

s32 Player_GetExplosiveHeld(Player* player) {
    return Player_ActionToExplosive(player, player->itemActionParam);
}

s32 func_80124278(Actor* actor, s32 arg1) {
    s32 phi_v1 = 0;

    // Fake match?
    if ((arg1 == 1) || ((phi_v1 = arg1 - 3, (phi_v1 >= 0)) && (phi_v1 < 4))) {
        return phi_v1;
    }
    return -1;
}

s32 func_801242B4(Player* player) {
    return (player->stateFlags1 & 0x8000000) && player->currentBoots < PLAYER_BOOTS_ZORA_UNDERWATER;
}

s32 func_801242DC(GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    TextTriggerEntry* triggerEntry;
    s32 sp1C;

    if (globalCtx->roomCtx.currRoom.unk2 == 3) {
        sp1C = 0;
    } else if ((player->transformation != PLAYER_FORM_ZORA) && (player->unk_AD8 > 80)) {
        sp1C = 3;
    } else if (player->stateFlags1 & 0x8000000) {
        if ((player->transformation == PLAYER_FORM_ZORA) && (player->currentBoots >= PLAYER_BOOTS_ZORA_UNDERWATER) && (player->actor.bgCheckFlags & 1)) {
            sp1C = 1;
        } else {
            sp1C = 2;
        }
    } else {
        return 0;
    }

    triggerEntry = &D_801BFFA0[sp1C];
    if (!Player_InCsMode(globalCtx)) {
        if ((triggerEntry->flag) && !(gSaveContext.textTriggerFlags & triggerEntry->flag) && (sp1C == 0)) {
            func_801518B0(globalCtx, triggerEntry->textId, NULL);
            gSaveContext.textTriggerFlags |= triggerEntry->flag;
        }
    }

    return sp1C + 1;
}
#ifdef NON_MATCHING
void func_80124420(Player* player) {
    s16 sp2C;
    s16 sp28;
    s16 sp26;
    f32 sp20;

    D_801F59D0.unk_6 = D_801F59D0.unk_6 - (D_801F59D0.unk_6 >> 3);
    D_801F59D0.unk_8 = D_801F59D0.unk_8 - (D_801F59D0.unk_8 >> 3);
    D_801F59D0.unk_6 = D_801F59D0.unk_6 + (-D_801F59D0.unk_0 >> 2);
    D_801F59D0.unk_8 = D_801F59D0.unk_8 + (-D_801F59D0.unk_2 >> 2);

    sp26 = BINANG_SUB(player->actor.world.rot.y, player->actor.shape.rot.y);
    sp28 = ((player->actor.speedXZ * -200.0f * Math_CosS(sp26)) * (randPlusMinusPoint5Scaled(2.0f) + 10.0f));
    sp2C = ((player->actor.speedXZ * 100.0f * Math_SinS(sp26)) * (randPlusMinusPoint5Scaled(2.0f) + 10.0f));

    D_801F59D0.unk_6 += sp28 >> 2;
    D_801F59D0.unk_8 += sp2C >> 2;

    if (D_801F59D0.unk_6 > 0x1770) {
        D_801F59D0.unk_6 = 0x1770;
    } else if (D_801F59D0.unk_6 < -0x1770) {
        D_801F59D0.unk_6 = -0x1770;
    }

    if (D_801F59D0.unk_8 > 0x1770) {
        D_801F59D0.unk_8 = 0x1770;
    } else if (D_801F59D0.unk_8 < -0x1770) {
        D_801F59D0.unk_8 = -0x1770;
    }

    D_801F59D0.unk_0 += D_801F59D0.unk_6;
    D_801F59D0.unk_2 += D_801F59D0.unk_8;

    if (D_801F59D0.unk_0 < 0) {
        D_801F59D0.unk_4 = D_801F59D0.unk_0 >> 1;
    } else {
        D_801F59D0.unk_4 = 0;
    }
}
#else
void func_80124420(Player* player);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80124420.s")
#endif

void func_80124618(struct_80124618* arg0, f32 curFrame, Vec3f* arg2) {
    s32 currentFrame = curFrame;
    f32 temp_f0;
    f32 temp_f14;
    f32 progress;
    s16 temp_v1;

    do {
        temp_v1 = arg0[1].unk_0;
        arg0++;
    } while (temp_v1 < currentFrame);

    temp_f0 = arg0[-1].unk_0;

    progress = (curFrame - temp_f0) / (((f32) temp_v1) - temp_f0);

    temp_f14 = arg0[-1].unk_2.x;
    arg2->x = LERPIMP(temp_f14, arg0->unk_2.x, progress) * 0.01f;

    temp_f14 = arg0[-1].unk_2.y;
    arg2->y = LERPIMP(temp_f14, arg0->unk_2.y, progress) * 0.01f;

    temp_f14 = arg0[-1].unk_2.z;
    arg2->z = LERPIMP(temp_f14, arg0->unk_2.z, progress) * 0.01f;
}

// OoT's func_8008F470
void func_801246F4(GlobalContext* globalCtx, void** skeleton, Vec3s* jointTable, s32 dListCount, s32 lod, s32 tunic, s32 boots, s32 face, OverrideLimbDrawFlex overrideLimbDraw, PostLimbDrawFlex postLimbDraw, Actor* actor) {
    s32 eyeIndex = (jointTable[0x16].x & 0xF) - 1; // eyeIndex
    s32 mouthIndex = ((jointTable[0x16].x >> 4) & 0xF) - 1; // mouthIndex
    Gfx* dl;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    dl = POLY_OPA_DISP;

    if (eyeIndex < 0) {
        eyeIndex = D_801C08A0[face][0];
    }

    if (tunic == 1) {
        if ((eyeIndex >= 3) && (eyeIndex < 7)) {
            eyeIndex = 0;
        } else if (eyeIndex == 7) {
            eyeIndex = 3;
        }
    }

    gSPSegment(&dl[0], 0x08, Lib_SegmentedToVirtual(D_801C0870[eyeIndex]));

    if (mouthIndex < 0) {
        mouthIndex = D_801C08A0[face][1];
    }

    gSPSegment(&dl[1], 0x09, Lib_SegmentedToVirtual(D_801C0890[mouthIndex]));

    POLY_OPA_DISP = &dl[2];

    D_801F59E0 = tunic * 2;
    D_801F59E4 = lod;
    SkelAnime_DrawFlexLod(globalCtx, skeleton, jointTable, dListCount, overrideLimbDraw, postLimbDraw, actor, lod);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void func_80124870(GlobalContext* globalCtx, Player* player, SkelAnime* skelAnime, Vec3f* pos, Vec3s* rot, s32 arg5, s32 arg6, s32 arg7) {
    CollisionPoly* spA4;
    s32 spA0;
    f32 sp9C;
    Vec3f sp90;
    Vec3f sp84;
    Vec3f sp78;
    f32 sp74;
    f32 sp70;
    f32 temp_f18;
    f32 sp68;
    f32 temp_f16;
    f32 sp60;
    f32 temp_f0;
    f32 sp58;
    f32 sp54;
    f32 temp_f20;
    f32 sp4C;
    f32 sp48;
    s32 temp_f8;
    s32 temp_v0_4;
    s16 phi_t1;

    if ((player->stateFlags3 & 1) || !(player->actor.scale.y >= 0.0f) || 
        (player->stateFlags1 & 0x80) || (globalCtx->unk_18844 != 0)) {
        return;
    }

    sp74 = D_801C0910[player->transformation];
    sp70 = D_801C0924[player->transformation];
    temp_f20 = D_801C0938[player->transformation] - player->unk_AB8;
    Matrix_StatePush();
    Matrix_JointPosition(pos, rot);
    Matrix_GetStateTranslation(&sp90);
    Matrix_JointPosition(&D_801C08C0[player->transformation], &skelAnime->jointTable[arg6]);
    Matrix_InsertTranslation(D_801C08FC[player->transformation], 0.0f, 0.0f, 1);
    Matrix_GetStateTranslation(&sp84);
    Matrix_GetStateTranslationAndScaledY(-300.0f, &sp78);
    Matrix_StatePop();

    sp78.y += 15.0f;
    sp9C = BgCheck_EntityRaycastFloor3(&globalCtx->colCtx, &spA4, &spA0, &sp78) + temp_f20 + (player->unk_ABC * player->actor.scale.y);
    if (sp84.y < sp9C) {
        sp68 = sp84.x - sp90.x;
        temp_f16 = sp84.y - sp90.y;
        sp60 = sp84.z - sp90.z;
        temp_f0 = sqrtf(SQ(sp68) + SQ(temp_f16) + SQ(sp60));

        sp58 = (SQ(temp_f0) + sp70) / (2.0f * temp_f0);
        
        temp_f20 = sp74 - SQ(sp58);
        if (sp74 < SQ(sp58)) {
            temp_f20 = 0.0f;
        } else {
            temp_f20 = sqrtf(temp_f20);
        }
        sp4C = func_80086B30(temp_f20, sp58);
        temp_f0 = sqrtf(SQ(sp68) + SQ(sp9C - sp90.y) + SQ(sp60));
        sp58 = (SQ(temp_f0) + sp70) / (2.0f * temp_f0);
        sp54 = temp_f0 - sp58;

        temp_f20 = sp74 - SQ(sp58);
        if (sp74 < SQ(sp58)) {
            temp_f20 = 0.0f;
        } else {
            temp_f20 = sqrtf(temp_f20);
        }

        sp48 = func_80086B30(temp_f20, sp58);
        phi_t1 = (3.1415927f - (func_80086B30(sp54, temp_f20) + (1.5707964f - sp48))) * 10430.378f;
        phi_t1 = -skelAnime->jointTable[arg6].z + phi_t1;
        temp_f8 = (s32) ((sp48 - sp4C) * 10430.378f);

        if ((s16) (ABS_ALT(skelAnime->jointTable[arg6].x) + ABS_ALT(skelAnime->jointTable[arg6].y)) < 0) {
            phi_t1 = BINANG_ROT180(phi_t1);
        }

        rot->z -= (s16) temp_f8;

        skelAnime->jointTable[arg5].z -= (s16) temp_f8;
        skelAnime->jointTable[arg6].z += (s16) phi_t1;
        skelAnime->jointTable[arg7].z = (skelAnime->jointTable[arg7].z + (s16) temp_f8) - phi_t1;

        temp_v0_4 = func_800C99D4(&globalCtx->colCtx, spA4, spA0);
        if ((temp_v0_4 >= 2) && (temp_v0_4 < 4) && (SurfaceType_IsWallDamage(&globalCtx->colCtx, spA4, spA0) == 0)) {
            sp78.y = sp9C;
            EffectSsGFire_Spawn(globalCtx, &sp78);
        }
    }
}

void func_80124CC4(GlobalContext* globalCtx, Actor* actor, f32 arg2) {
    static Vec3f D_801C094C = { -500.0f, -100.0f, 0.0f };
    CollisionPoly* poly;
    s32 bgId;
    Vec3f sp7C;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f sp58;
    f32 sp54;
    f32 sp50;

    D_801C094C.z = 0.0f;
    Matrix_MultiplyVector3fByState(&D_801C094C, &sp7C);
    D_801C094C.z = arg2;
    Matrix_MultiplyVector3fByState(&D_801C094C, &sp70);

    if (BgCheck_AnyLineTest3(&globalCtx->colCtx, &sp7C, &sp70, &sp64, &poly, 1, 1, 1, 1, &bgId)) {
        if (func_800B90AC(globalCtx, actor, poly, bgId, &sp64) == 0 || BgCheck_ProjectileLineTest(&globalCtx->colCtx, &sp7C, &sp70, &sp64, &poly, 1, 1, 1, 1, &bgId)) {
            OPEN_DISPS(globalCtx->state.gfxCtx);

            OVERLAY_DISP = Gfx_CallSetupDL(OVERLAY_DISP, 7);

            SkinMatrix_Vec3fMtxFMultXYZW(&globalCtx->viewProjectionMtxF, &sp64, &sp58, &sp54);
            if (sp54 < 200.0f) {
                sp50 = 0.08f;
            } else {
                sp50 = (sp54 / 200.0f) * 0.08f;
            }
            Matrix_InsertTranslation(sp64.x, sp64.y, sp64.z, MTXMODE_NEW);
            Matrix_Scale(sp50, sp50, sp50, 1);

            gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            gSPSegment(OVERLAY_DISP++, 0x06, globalCtx->objectCtx.status[actor->objBankIndex].segment);

            gSPDisplayList(OVERLAY_DISP++, gameplay_keep_DL_04F250);

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
    }
}


s32 D_801C0958 = false;

Gfx** D_801C095C[] = { D_801C013C, D_801C0114 };
Gfx** D_801C0964[] = { D_801C01CC, D_801C01A4 };

u8 D_801C096C[] = { 9, 9, 9, 0 };

Vec3f D_801C0970[] = {
    { 0.0f, 400.0f, 0.0f },
    { 0.0f, 1400.0f, -1000.0f },
    { 0.0f, -400.0f, 1000.0f },
};

static Vec3f D_801C0994[] = {
    { 5000.0f, 400.0f, 0.0f },
    { 5000.0f, -400.0f, 1000.0f },
    { 5000.0f, 1400.0f, -1000.0f },
};

Vec3f D_801C09B8[] = {
    { 0.0f, 750.0f, 750.0f },
    { 1500.0f, 1500.0f, 1500.0f },
    { -2500.0f, -2000.0f, -3000.0f },
};


Vec3f D_801C09DC[] = {
    { 900.0f, 300.0f, 100.0f },
    { 1300.0f, 700.0f, -300.0f },
    { 500.0f, -100.0f, 500.0f },
};
Vec3f D_801C0A00[] = {
    { -2500.0f, 1400.0f, 1100.0f },
    { -2900.0f, 1000.0f, 1500.0f },
    { -2100.0f, 1800.0f, 700.0f },
};
Vec3f D_801C0A24[] = {
    { 0.0f, 0.0f, 0.0f },
    { -800.0f, 800.0f, 800.0f },
    { -800.0f, -800.0f, -800.0f },
};
Vec3f D_801C0A48[] = {
    { 2000.0f, 0.0f, 0.0f },
    { 2800.0f, -800.0f, -800.0f },
    { 2800.0f, 800.0f, 800.0f },
};
Vec3f D_801C0A6C[] = {
    { -400.0f, 800.0f, 0.0f },
    { -5000.0f, -500.0f, -4000.0f },
    { -5000.0f, 8000.0f, 4000.0f },
};
Vec3f D_801C0A90[] = {
    { -400.0f, 1800.0f, 0.0f },
    { 5000.0f, 8000.0f, 4000.0f },
    { 5000.0f, -500.0f, -4000.0f },
};



Gfx* D_801C0AB4[] = { (Gfx* )0x0600CC38, (Gfx* )0x0600CDA0 };
Gfx* D_801C0ABC[] = { (Gfx* )0x06010868, (Gfx* )0x06010978 };
Vec3f D_801C0AC4[] = { { 5400.0f, 1700.0f, 1800.0f }, { 5400.0f, 1700.0f, -1800.0f } };
Vec3f D_801C0ADC[] = { { 5250.0f, 570.0f, 2400.0f }, { 5250.0f, 570.0f, -2400.0f } };
struct_80124618* D_801C0AF4[] = { D_801C0678, D_801C0698 };
struct_80124618* D_801C0AFC[] = { D_801C06B8, D_801C06E0 };
struct_80124618* D_801C0B04[] = { D_801C06F8, D_801C0718 };
struct_80124618* D_801C0B0C[] = { D_801C0730, D_801C0740 };
Gfx* D_801C0B14[] = { (Gfx* )0x06008760, (Gfx* )0x06008660 };


u8 D_801C0B1C[] = {
    0x0C, 0x0F,
};

Gfx* D_801C0B20[] = {
    (Gfx* )0x0A0001A0,
    (Gfx* )0x0A000D40,
    (Gfx* )0x0A000490,
    (Gfx* )0x0A000610,
    (Gfx* )0x0A0004A0,
    (Gfx* )0x0A0004C0,
    (Gfx* )0x0A0007A0,
    (Gfx* )0x0A000700,
    (Gfx* )0x0A000290,
    (Gfx* )0x0A0005A0,
    (Gfx* )0x0A0016F0,
    (Gfx* )0x0A000250,
    (Gfx* )0x0A000DC0,
    (Gfx* )0x0A000EF0,
    (Gfx* )0x0A0009F0,
    (Gfx* )0x0A000820,
    (Gfx* )0x0A0003C0,
    (Gfx* )0x0A0005C0,
    (Gfx* )0x0A000710,
    (Gfx* )0x0A000380,
    (Gfx* )0x0400B260,
    (Gfx* )0x04005A10,
    (Gfx* )0x04005360,
    (Gfx* )0x040056C0,
    (Gfx* )0x0A000900,
    (Gfx* )0x0A0014A0,
    (Gfx* )0x0A000DB0,
    (Gfx* )0x0A001D90,
};

Vec3f D_801C0B90[] = { { 950.0f, -800.0f, 300.0f }, { 950.0f, -800.0f, -300.0f } };




void func_80124F18(s16* arg0, f32* arg1, s16 arg2, f32 arg3, f32 arg4) {
    f32 phi_f12;

    if (*arg0 < arg2) {
        *arg1 += arg3;
    } else {
        *arg1 -= arg3;
    }

    *arg1 = CLAMP(*arg1, -arg4, arg4);
    *arg0 += (s16)*arg1;
    if (((arg2 - *arg0) * (s16) *arg1) < 0) {
        *arg0 = arg2;
    }
}

#ifdef NON_EQUIVALENT
// This is weird...
void func_80124FF0(f32 arg0, s16 arg1, Vec3f* arg2, s16 arg3, Vec3f* arg4, Vec3f* arg5, s16* arg6, f32* arg7, f32 arg8, s16 arg9, s16* arg10, f32* arg11, UNK_TYPE arg12) {
    Vec3f sp44;
    f32 sp40;
    volatile s16 sp3C;
    f32 sp34;
    f32 sp30;
    //s32 sp28;
    //s32 sp24;
    f32 temp_f14;
    s32 temp_v0_2;
    s16 phi_a1;
    //s32 phi_v1;
    s32 phi_v0;
    s16 phi_a2;

    sp34 = Math_CosS(arg1) * arg0;
    sp30 = Math_SinS(arg1) * -arg0;

    arg5->x = (Math_SinS(arg3) * sp30) + arg2->x;
    arg5->y = arg2->y + sp34;
    arg5->z = (Math_CosS(arg3) * sp30) + arg2->z;

    Math_Vec3f_Diff(arg5, arg4, &sp44);
    sp40 = sqrtf(SQ(sp44.x) + SQ(sp44.z));
    if (sp40 <= 1.0f) {
        phi_a1 = arg3;
    } else {
        phi_a1 = Math_FAtan2F(sp44.z, sp44.x);
    }

    phi_v0 = phi_a1 - arg3;
    //sp24 = (s32) phi_v0;
    //sp28 = (s32) phi_v0;
    temp_f14 = (Math_CosS(phi_v0) * sp40) + arg8;

    if (ABS_ALT(phi_v0) > 0x4000) {
        phi_v0 = (s16) BINANG_ROT180(phi_a1) - arg3;
    }
    sp3C = phi_v0;

    temp_v0_2 = Math_FAtan2F(sp44.y, temp_f14);
    phi_a2 = (s32) arg9 * -1;
    phi_a2 = phi_a2;
    if ((temp_v0_2 >= (s32) phi_a2)) {

        phi_a2 = CLAMP_MAX(temp_v0_2, arg9);
    }

    func_80124F18(arg6, arg7, phi_a2, 20.0f, 2000.0f);
}
#else
void func_80124FF0(f32 arg0, s16 arg1, Vec3f* arg2, s16 arg3, Vec3f* arg4, Vec3f* arg5, s16* arg6, f32* arg7, f32 arg8, s16 arg9, s16* arg10, f32* arg11, UNK_TYPE arg12);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80124FF0.s")
#endif

void func_801251C4(Player* player, Vec3f* arg1) {
    Vec3f sp4C;
    Vec3f sp40;

    sp4C.x = player->actor.world.pos.x;
    sp4C.y = player->actor.world.pos.y + 60.0f;
    sp4C.z = player->actor.world.pos.z;
    func_80124FF0(-20.0f, player->unk_B8C, &sp4C, player->actor.shape.rot.y, player->bodyPartsPos, arg1, &player->unk_B90, &player->unk_B08[2], 0.0f, 0x1F40, &player->unk_B92, &player->unk_B08[3], 0);

    sp40.x = (player->bodyPartsPos[6].x + player->bodyPartsPos[3].x) * 0.5f;
    sp40.y = (player->bodyPartsPos[6].y + player->bodyPartsPos[3].y) * 0.5f;
    sp40.z = (player->bodyPartsPos[6].z + player->bodyPartsPos[3].z) * 0.5f;
    func_80124FF0(-20.0f, player->unk_B90, arg1, (player->actor.shape.rot.y + player->unk_B92), &sp40, arg1, &player->unk_B94, &player->unk_B08[4], -1.9f, 0x1F40, &player->unk_B96, &player->unk_B08[5], 0);
}

void func_80125318(Vec3f* arg0, Vec3s* arg1) {
    arg0->x = 0.0f;
    arg0->y = 0.0f;
    arg0->z = 0.0f;
    arg1->x = 0;
    arg1->y = 0;
    arg1->z = 0;
}

void func_80125340(void) {
    Matrix_StatePush();
    D_801C0958 = true;
}

void func_8012536C(void) {
    if (D_801C0958) {
        Matrix_StatePop();
        D_801C0958 = false;
    }
}
#ifdef NON_MATCHING
// draws zora shield (?)
void func_801253A4(GlobalContext* globalCtx, Player* player) {
    u8* phi_a0;
    Vtx* sp30;
    Gfx* dl;
    s32 i;
    f32 sp28; // scale

    sp28 = player->unk_B62 * 0.19607843f;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    AnimatedMat_DrawXlu(globalCtx, Lib_SegmentedToVirtual(&object_link_zora_Matanimheader_012A80));
    Matrix_Scale(sp28, sp28, sp28, 1);

    // clang-format off
    sp30 = Lib_SegmentedToVirtual(&object_link_zora_Vtx_011210); phi_a0 = Lib_SegmentedToVirtual(&object_link_zora_U8_011710);
    // clang-format on
    
    for (i = 0; i < 80; i++) {
        sp30[i].v.cn[3] = (phi_a0[i] * player->unk_B62) >> 8;
    }

    dl = POLY_XLU_DISP;

    gSPMatrix(&dl[0], Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(&dl[1], object_link_zora_DL_011760);

    POLY_XLU_DISP = &dl[2];

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_801253A4.s")
#endif

void func_80125500(GlobalContext* globalCtx, Player* player, s32 limbIndex, Vec3f* pos, Vec3s* rot) {
    if (limbIndex == 7) {
        func_80124870(globalCtx, player, &player->skelAnime, pos, rot, 7, 8, 9);
    } else if (limbIndex == 4) {
        func_80124870(globalCtx, player, &player->skelAnime, pos, rot, 4, 5, 6);
    }
}

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x144 */ f32 unk_144;
} ActorUnknown;

extern Vec3f* D_801F59DC;

s32 func_80125580(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    s32 pad;
    Player* player = (Player*)thisx;
    Vec3f sp54;
    Actor* sp50;
    f32 temp_f6;
    Actor* phi_v0;
    struct_80124618* phi_a0;
    struct_80124618* phi_v0_2;
    struct_80124618* phi_v1_2;

    if (limbIndex == 1) {
        D_801F59F4 = (s32) player->leftHandType;
        D_801F59F8 = (s32) player->rightHandType;
        D_801F59DC = &player->swordInfo[2].base;
        if (player->transformation != PLAYER_FORM_FIERCE_DEITY) {
            if (!(player->skelAnime.moveFlags & 4) || (player->skelAnime.moveFlags & 1)) {
                pos->x *= player->ageProperties->unk_08;
                pos->z *= player->ageProperties->unk_08;
            }
            if (!(player->skelAnime.moveFlags & 4) || (player->skelAnime.moveFlags & 2)) {
                pos->y *= player->ageProperties->unk_08;
            }
        }

        pos->y -= player->unk_AB8;
        if ((player->transformation == PLAYER_FORM_ZORA) && ((player->stateFlags3 & 0x8000) != 0)) {
            Matrix_InsertTranslation(pos->x, ((Math_CosS(player->unk_AAA) - 1.0f) * 200.0f) + pos->y, pos->z, 1);
            Matrix_InsertXRotation_s(player->unk_AAA, 1);
            if (player->unk_B62 != 0) {
                Matrix_StatePush();
                Matrix_InsertZRotation_s(player->unk_B8E, 1);
                Matrix_InsertRotation(rot->x, rot->y, rot->z, 1);
                Matrix_InsertXRotation_s(-0x8000, 1);
                Matrix_InsertTranslation(0.0f, 0.0f, -4000.0f, 1);
                func_801253A4(globalCtx, player);
                Matrix_StatePop();
            }
            Matrix_InsertZRotation_s(player->unk_B88, 1);
            Matrix_InsertRotation(rot->x, rot->y, rot->z, 1);
            func_80125318(pos, rot);
        } else if ((player->stateFlags3 & 0x2000) != 0) {
            func_801251C4(player, &sp54);
            sp54.x -= player->actor.world.pos.x;
            sp54.y -= player->actor.world.pos.y;
            sp54.z -= player->actor.world.pos.z;
            Matrix_InsertTranslation(pos->x + sp54.x, pos->y + sp54.y, pos->z + sp54.z, 1);
            Matrix_InsertXRotation_s(player->unk_B94, 1);
            Matrix_InsertZRotation_s(player->unk_B8E, 1);
            player->unk_AB2.x = player->unk_B90 - player->unk_B94;
            Matrix_InsertRotation(rot->x, rot->y, rot->z, 1);
            func_80125318(pos, rot);
        } else {
            if (player->unk_AAA != 0) {
                Matrix_InsertTranslation(pos->x, ((Math_CosS(player->unk_AAA) - 1.0f) * 200.0f) + pos->y, pos->z, 1);
                Matrix_InsertXRotation_s(player->unk_AAA, 1);
                Matrix_InsertRotation(rot->x, rot->y, rot->z, 1);
                func_80125318(pos, rot);
            }
        }
    } else {
        if (*dList != NULL) {
            D_801F59DC++;
        }
        if (limbIndex == 0xB) {
            rot->x += player->unk_AAC.z;
            rot->y -= player->unk_AAC.y;
            rot->z += player->unk_AAC.x;
            if (player->transformation == PLAYER_FORM_DEKU) {
                sp50 = NULL;

                if (((player->skelAnime.animation == &gameplay_keep_Linkanim_00E298)) || (player->unk_284.animation == &gameplay_keep_Linkanim_00E2F0) || ((player->stateFlags3 & 0x40) && (sp50 = player->heldActor, (sp50 != NULL)))) {
                    Matrix_JointPosition(pos, rot);
                    func_80125340();
                    func_80125318(pos, rot);
                    if (sp50 != 0) {
                        f32 temp;

                        player->unk_AF0[0].x = 1.0f - (((ActorUnknown*)sp50)->unk_144 * 0.03f);
                        player->unk_AF0[0].y = 1.0f - (((ActorUnknown*)sp50)->unk_144 * 0.01f);
                        player->unk_AF0[0].z = 1.0f - (((ActorUnknown*)sp50)->unk_144 * 0.04f);
                        rot->z = (((ActorUnknown*)sp50)->unk_144 * 320.0f);
                    } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E298) {
                        func_80124618(D_801C03E0, player->skelAnime.curFrame, player->unk_AF0);
                    } else {
                        func_80124618(D_801C03C0, player->unk_284.curFrame, player->unk_AF0);
                    }
                    Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, 1);
                }
            }
        } else if (limbIndex == 0x15) {
            if ((player->skelAnime.animation == &gameplay_keep_Linkanim_00E1F8) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E260 ) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E248 ) || (player->transformation == PLAYER_FORM_ZORA)) {
                Matrix_JointPosition(pos, rot);
                if (player->transformation == PLAYER_FORM_GORON) {
                    func_80125340();
                }
                func_80125318(pos, rot);
                if ((player->transformation != PLAYER_FORM_ZORA) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E410)) {
                    if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E410) {
                        phi_a0 = D_801C0608;
                    } else {
                        if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E260) {
                            phi_v0_2 = D_801C0628;
                        } else {
                            if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E248) {
                                phi_v1_2 = D_801C07C0;
                            } else {
                                phi_v1_2 = D_801C0460;
                            }
                            phi_v0_2 = phi_v1_2;
                        }
                        phi_a0 = phi_v0_2;
                    }
                    func_80124618(phi_a0, player->skelAnime.curFrame, player->unk_AF0);
                } else {
                    player->unk_AF0[0].y = 1.0f;
                }
                if (player->transformation == PLAYER_FORM_ZORA) {
                    player->unk_AF0[0].y *= 1.0f + (0.29999995f * player->unk_B08[2]);
                    player->unk_AF0[0].x = 1.0f;
                    player->unk_AF0[0].z = 1.0f;
                }
                Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, 1);
            }
        } else if (limbIndex == 0xA) {
            s16 phi_a0_2;
            s16 rot_temp = 0x44C;

            if (player->unk_AA8 != 0) {
                Matrix_InsertZRotation_s(rot_temp, 1);
                Matrix_RotateY(player->unk_AA8, 1);
            }
            if (player->unk_AB2.y != 0) {
                Matrix_RotateY(player->unk_AB2.y, 1);
            }
            phi_a0_2 = player->unk_AB2.x;
            if ((player->transformation == PLAYER_FORM_DEKU) && (player->stateFlags3 & 0x40)) {
                if (player->heldActor != NULL) {
                    phi_a0_2 += (s16)(((ActorUnknown*)player->heldActor)->unk_144 * -470.0f);
                }
            }
            Matrix_InsertXRotation_s(phi_a0_2, 1);
            if (player->unk_AB2.z != 0) {
                Matrix_InsertZRotation_s(player->unk_AB2.z, 1);
            }
        } else {
            func_80125500(globalCtx, player, limbIndex, pos, rot);
        }
    }

    return 0;
}

void func_80125CE0(Player* player, struct_80124618* arg1, Vec3f* arg2, Vec3s* arg3) {
    Matrix_JointPosition(arg2, arg3);
    func_80125318(arg2, arg3);
    func_80124618(arg1, player->skelAnime.curFrame, player->unk_AF0);
    Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, 1);
}

extern Gfx** D_801C095C[];
extern Gfx** D_801C0964[];

#ifdef NON_EQUIVALENT
s32 func_80125D4C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;
    s32 temp_v0_2;
    s32 temp_v0_9;
    Gfx** phi_a0;
    s32 phi_a1;
    Gfx** phi_v1;
    s32 new_var;
    struct_80124618* phi_a1_2;
    Gfx** phi_v1_2;
    s32 phi_v0;

    if (!func_80125580(globalCtx, limbIndex, dList, pos, rot, player)) {
        if (limbIndex == 0x10) {
            phi_a0 = player->leftHandDLists;
            if (player->stateFlags3 & 0x2000) {
                rot->z -= player->unk_B8C;
            } else if ((D_801F59F4 == 4) && (player->stateFlags1 & 0x02000000)) {
                phi_a0 = &D_801C0114[D_801F59E0];
                D_801F59F4 = 0;
            } else {
                if ((player->leftHandType == 0) && (player->actor.speedXZ > 2.0f) && (!(player->stateFlags1 & 0x8000000))) {
                    phi_a0 = &D_801C013C[D_801F59E0];
                    D_801F59F4 = 1;
                } else {
                    // CUR_EQUIP_VALUE
                    //if ((player->leftHandType == 2) && (player->transformation == PLAYER_FORM_HUMAN) && (temp_v1 = (s32) (gSaveContext.equips.equipment & *gEquipMasks) >> *gEquipShifts, (temp_v1 != 0))) 
                    if ((player->leftHandType == 2) && 
                        (player->transformation == PLAYER_FORM_HUMAN) && 
                        ((phi_v0 = CUR_EQUIP_VALUE(0), phi_v0 != 0))) {
                        phi_a0 = &D_801C018C[phi_v0 - 1];
                    } else {
                        //temp_v0_2 = player->skelAnime.jointTable->unk_84 & 0xF000;
                        phi_v0 = player->skelAnime.jointTable[0x16].x & 0xF000;
                        if (phi_v0 != 0) {
                            phi_v0 = (phi_v0 >> 0xC) - 1;
                            if (phi_v0 >= 2) {
                                phi_v0 = 0;
                            }
                            phi_a0 = &D_801C095C[phi_v0][D_801F59E0];
                        }
                    }
                }
            }
            *dList = phi_a0[D_801F59E4];
            if (player->transformation == PLAYER_FORM_GORON) {
                if (& gameplay_keep_Linkanim_00E218 == player->skelAnime.animation) {
                    func_80125CE0(player, D_801C0750, pos, rot);
                }
            } else if (player->transformation == PLAYER_FORM_ZORA) {
                if (((player->stateFlags1 & 2) != 0) || ((player->stateFlags1 & 0x400) != 0) || ((func_801242B4(player) != 0))) {
                    *dList = object_link_zora_DL_00FDF0;
                } else {
                    phi_a1 = player->skelAnime.animation == &gameplay_keep_Linkanim_00E3E8 && player->skelAnime.curFrame >= 6.0f;
                    if ((phi_a1 != 0) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E3E0)) 
                    {
                        *dList = object_link_zora_DL_00E2A0;
                        if (phi_a1 != 0) {
                            phi_a1 = D_801C0538;
                        } else {
                            phi_a1 = D_801C0560;
                        }
                        func_80125CE0(player, phi_a1, pos, rot);
                    }
                }
            }
        } else if (limbIndex == 0x13) {
            if ((player->transformation == PLAYER_FORM_ZORA) && ((((player->stateFlags1 & 2) != 0)) || ((player->stateFlags1 & 0x400) != 0) ||  (func_801242B4(player) != 0))) {
                *dList = object_link_zora_DL_00FBB8;
            } else {
                phi_v1 = player->rightHandDLists;
                if ((player->stateFlags3 & 0x2000) != 0) {
                    rot->z -= player->unk_B8C;
                }
                if (D_801F59F8 == 8) {
                    if (player->transformation == PLAYER_FORM_HUMAN) {
                        if (player->currentShield != 0) {
                            phi_v1 = &D_801C0024[player->currentShield - 1];
                        }
                    }
                } else if ((player->rightHandType == 6) && (player->actor.speedXZ > 2.0f) && (!(player->stateFlags1 & 0x8000000))) {
                    phi_v1 = &D_801C01CC[D_801F59E0];
                    D_801F59F8 = 7;
                } else {
                    //temp_v0_9 = player->skelAnime.jointTable->unk_84 & 0xF00;
                    temp_v0_9 = player->skelAnime.jointTable[0x16].x & 0xF00;

                    if (temp_v0_9 != 0) {
                        temp_v0_9 = (temp_v0_9 >> 8) - 1;
                        phi_v1 = &D_801C0964[temp_v0_9][D_801F59E0];
                    }
                }
                *dList = phi_v1[D_801F59E4];
                if (& gameplay_keep_Linkanim_00E230 == player->skelAnime.animation) {
                    func_80125CE0(player, D_801C0784, pos, rot);
                }
            }
        } else if (limbIndex == 0x14) {
            Gfx** phi_v1_2 = player->sheathDLists;
            if (player->transformation == PLAYER_FORM_HUMAN) {
                s32 val = CUR_EQUIP_VALUE_VOID(0);
                if (val != 0) {
                    if ((player->sheathType == 0xE) || (player->sheathType == 0xC)) {
                        phi_v1_2 = &D_801C00BC[val - 1][0];
                    } else {
                        phi_v1_2 = &D_801C00D4[val - 1][0];
                    }
                }
            }
            *dList = phi_v1_2[D_801F59E4];
        } else if (limbIndex == 2) {
            *dList = player->waistDLists[D_801F59E4];
        } else if ((limbIndex == 0xC) && (player->transformation == PLAYER_FORM_ZORA)) {
            //Matrix_Scale((player->unk_B08[2] * 1.0f) + 1.0f, 1.0f, 1.0f, 1);
            // super important (* 1)
            Matrix_Scale((player->unk_B08[2] * 1) + 1.0f, 1.0f, 1.0f, 1);
        }
    }
    return 0;
}
#else
// OverrideLimbDrawFlex
s32 func_80125D4C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80125D4C.s")
#endif

// OverrideLimbDrawFlex
s32 func_801262C8(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;

    if (func_80125580(globalCtx, limbIndex, dList, pos, rot, actor) == 0) {
        if (player->unk_AA5 != 3) {
            *dList = NULL;
        } else if (limbIndex == 0xF) {
            *dList = D_801C0294[player->transformation];
        } else if (limbIndex == 0x10) {
            *dList = D_801C02A8[player->transformation];
        } else if (limbIndex == 0x11) {
            *dList = D_801C02BC[player->transformation];
        } else if (limbIndex == 0x13) {
            if (Player_HoldsHookshot(player)) {
                *dList = D_801C02E4[player->transformation];
            } else {
                *dList = D_801C02D0[player->transformation];
            }
        } else {
            *dList = NULL;
        }
    }

    return false;
}

// unused
s32 func_801263FC(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;

    if (!func_80125580(globalCtx, limbIndex, dList, pos, rot, actor)) {
        *dList = NULL;
    }

    return false;
}

s32 func_80126440(GlobalContext* globalCtx, ColliderQuad* collider, WeaponInfo* weaponInfo, Vec3f* arg3, Vec3f* arg4) {
    if (weaponInfo->active == 0) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->tip, arg3);
        Math_Vec3f_Copy(&weaponInfo->base, arg4);
        weaponInfo->active = 1;

        return 1;
    } else if ((weaponInfo->tip.x == arg3->x) && (weaponInfo->tip.y == arg3->y) && (weaponInfo->tip.z == arg3->z) && (weaponInfo->base.x == arg4->x) && (weaponInfo->base.y == arg4->y) && (weaponInfo->base.z == arg4->z)) {
        if (collider != NULL) {
            Collider_ResetQuadAT(globalCtx, &collider->base);
        }

        return 0;
    } else {
        if (collider != NULL) {
            Collider_SetQuadVertices(collider, arg4, arg3, &weaponInfo->base, &weaponInfo->tip);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        Math_Vec3f_Copy(&weaponInfo->base, arg4);
        Math_Vec3f_Copy(&weaponInfo->tip, arg3);
        weaponInfo->active = 1;

        return 1;
    }
}


void func_801265C8(GlobalContext* globalCtx, Player* player, ColliderQuad* arg2, Vec3f arg3[4]) {
    if (player->stateFlags1 & 0x400000) {
        Vec3f sp4C;
        Vec3f sp40;
        Vec3f sp34;
        Vec3f sp28;

        player->shieldQuad.base.colType = D_801C096C[player->currentShield];
        Matrix_MultiplyVector3fByState(&arg3[0], &sp28);
        Matrix_MultiplyVector3fByState(&arg3[1], &sp34);
        Matrix_MultiplyVector3fByState(&arg3[2], &sp40);
        Matrix_MultiplyVector3fByState(&arg3[3], &sp4C);
        Collider_SetQuadVertices(arg2, &sp28, &sp34, &sp40, &sp4C);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &arg2->base);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &arg2->base);
    }
}

void func_8012669C(GlobalContext* globalCtx, Player* player, Vec3f* arg2, Vec3f* arg3) {
    Vec3f sp3C;
    Vec3f sp30;

    Matrix_MultiplyVector3fByState(arg2, &sp3C);
    Matrix_MultiplyVector3fByState(arg3, &sp30);

    if (player->swordState != 0) {
        if ((func_80126440(globalCtx, NULL, &player->swordInfo[0], &sp3C, &sp30) != 0) && (player->transformation != PLAYER_FORM_GORON) && (!(player->stateFlags1 & 0x400000))) {
            EffectBlure_AddVertex(Effect_GetByIndex(player->blureEffectIndex[0]), &player->swordInfo[0].tip, &player->swordInfo[0].base);
        }
        if ((player->swordState > 0) && ((player->swordAnimation < 0x1E) || (player->stateFlags2 & 0x20000))) {
            Matrix_MultiplyVector3fByState(&arg2[1], &sp3C);
            Matrix_MultiplyVector3fByState(&arg3[1], &sp30);
            func_80126440(globalCtx, &player->swordQuads[0], &player->swordInfo[1], &sp3C, &sp30);
            Matrix_MultiplyVector3fByState(&arg2[2], &sp3C);
            Matrix_MultiplyVector3fByState(&arg3[2], &sp30);
            func_80126440(globalCtx, &player->swordQuads[1], &player->swordInfo[2], &sp3C, &sp30);
        }
    } else {
        Math_Vec3f_Copy(&player->swordInfo[0].tip, &sp3C);
        Math_Vec3f_Copy(&player->swordInfo[0].base, &sp30);
    }
}

void Player_DrawGetItemImpl(GlobalContext* globalCtx, Player* player, Vec3f* refPos, s32 drawIdPlusOne) {
    f32 sp34;

    if (player->stateFlags3 & 0x4000000) {
        sp34 = 6.0f;
    } else {
        sp34 = 14.0f;
    }

    OPEN_DISPS(globalCtx->state.gfxCtx);

    gSegments[6] = PHYSICAL_TO_VIRTUAL(player->giObjectSegment);

    gSPSegment(POLY_OPA_DISP++, 0x06, player->giObjectSegment);
    gSPSegment(POLY_XLU_DISP++, 0x06, player->giObjectSegment);

    Matrix_InsertTranslation((Math_SinS(player->actor.shape.rot.y) * 3.3f) + refPos->x, refPos->y + sp34, (Math_CosS(player->actor.shape.rot.y) * 3.3f) + refPos->z, MTXMODE_NEW);
    Matrix_InsertRotation(0, (globalCtx->gameplayFrames * 1000), 0, MTXMODE_APPLY);
    Matrix_Scale(0.2f, 0.2f, 0.2f, MTXMODE_APPLY);
    GetItem_Draw(globalCtx, drawIdPlusOne - 1);

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}

void Player_DrawGetItem(GlobalContext* globalCtx, Player* player) {
    if (!player->giObjectLoading || (osRecvMesg(&player->giObjectLoadQueue, NULL, 0) == 0)) {
        Vec3f refPos;
        s32 drawIdPlusOne;

        player->giObjectLoading = false;
        if ((player->actor.id == ACTOR_EN_TEST3) || ((player->transformation == PLAYER_FORM_DEKU) && (player->stateFlags1 & 0x400))) {
            refPos.x = player->actor.world.pos.x;
            refPos.z = player->actor.world.pos.z;
            if (player->actor.id == ACTOR_EN_TEST3) {
                if (player->stateFlags1 & 0x400) {
                    refPos.y = player->actor.world.pos.y + 30.0f;
                } else {
                    refPos.x = player->bodyPartsPos[0xC].x;
                    refPos.y = player->bodyPartsPos[0xC].y - 6.0f;
                    refPos.z = player->bodyPartsPos[0xC].z;
                }
            } else {
                refPos.y = player->actor.world.pos.y + 28.0f;
            }
        } else {
            Math_Vec3f_Copy(&refPos, &D_801F59E8);
        }

        drawIdPlusOne = ABS_ALT(player->unk_B2A);
        Player_DrawGetItemImpl(globalCtx, player, &refPos, drawIdPlusOne);
    }
}

void func_80126AB4(Player* player, Vec3f** arg1) {
    if ((player->transformation == PLAYER_FORM_GORON) || (player->actor.id == ACTOR_EN_TEST3)) {
        Math_Vec3f_Copy(&player->unk_AF0[1], &player->swordInfo[0].base);
        *arg1 = D_801C09B8;
        return;
    }

    D_801C0994[1].x = D_801C0994[0].x;

    if (player->unk_ADD >= 3) {
        player->unk_ADD++;
        D_801C0994[1].x *= 1.0f + ((9 - player->unk_ADD) * 0.1f);
    }

    D_801C0994[1].x += 1200.0f;
    D_801C0994[2].x = D_801C0994[1].x;
    *arg1 = D_801C0994;
}

void func_80126B8C(GlobalContext* globalCtx, Player* player) {
    Vec3f* sp1C;

    func_80126AB4(player, &sp1C);
    func_8012669C(globalCtx, player, sp1C, D_801C0970);
}

void func_80126BD0(GlobalContext* globalCtx, Player* player, s32 arg2) {
    if ((player->transformation != PLAYER_FORM_ZORA) || (player->rightHandType == 0xB)) {
        return;
    }

    if ((arg2 != 0) && (player->stateFlags1 & 0x400000)) {
        OPEN_DISPS(globalCtx->state.gfxCtx);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, object_link_zora_DL_0110A8);

        CLOSE_DISPS(globalCtx->state.gfxCtx);
    } else {
        Actor* temp_v0_3;
        Vec3f sp58;
        Vec3f sp4C;

        temp_v0_3 = player->boomerangActor;
        if (!(player->stateFlags1 & 0x02000000) || ((player->boomerangActor != 0) && (player->boomerangActor->params != arg2)  && (( (temp_v0_3->child == NULL)) || (temp_v0_3->child->params != arg2)))) {
            OPEN_DISPS(globalCtx->state.gfxCtx);

            if ((player->skelAnime.animation != &gameplay_keep_Linkanim_00E3E0) && (player->skelAnime.animation != &gameplay_keep_Linkanim_00E3D8)) {
                if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E3E8) {
                    func_80124618(D_801C0580, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E418) {
                        func_80124618(D_801C05A8, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E408) {
                        func_80124618(D_801C05D8, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E350) {
                        func_80124618(D_801C07F0, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E3F0) {
                        func_80124618(D_801C0820, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E3F8) {
                        func_80124618(D_801C0838, player->skelAnime.curFrame, player->unk_AF0);
                } else if (player->itemActionParam == 8) {
                    player->unk_AF0[0].x = 1.0f;
                    player->unk_AF0[0].y = 1.0f;
                    player->unk_AF0[0].z = 1.0f;
                } else {
                    player->unk_AF0[0].x = 0.4f;
                    player->unk_AF0[0].y = 0.6f;
                    player->unk_AF0[0].z = 0.7f;
                }
                Matrix_StatePush();

                Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, 1);
                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                gSPDisplayList(POLY_OPA_DISP++, D_801C0AB4[arg2]);

                if ((player->swordState != 0) && ((((player->swordAnimation == 0x1B)) && (arg2 == 0)) || ((player->swordAnimation == 0x1C) && (arg2 != 0)))) {
                    func_8012669C(globalCtx, player, D_801C0A00, D_801C09DC);
                }
                Matrix_StatePop();
            }

            if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E418) {
                func_80124618(D_801C05C8, player->skelAnime.curFrame, player->unk_AF0);
                D_801C05F0[0].unk_2.x = 0x32;
                D_801C05F0[0].unk_2.y = 0x32;
                D_801C05F0[0].unk_2.z = 0x32;
                D_801C05F0[1].unk_2 = D_801C05F0[0].unk_2;
            } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E408) {
                func_80124618(D_801C05F0, player->skelAnime.curFrame, player->unk_AF0);
            } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E3D8) {
                player->unk_AF0[0].x = ((f32) ABS_ALT(player->unk_B8A) * 0.00003f) + 0.5f;
                player->unk_AF0[0].y = player->unk_AF0[0].x;
                player->unk_AF0[0].z = player->unk_AF0[0].x;

                D_801C05F0[0].unk_2.x = (player->unk_AF0[0].x * 100.0f);

                D_801C05F0[0].unk_2.y = D_801C05F0[0].unk_2.x;
                D_801C05F0[0].unk_2.z = D_801C05F0[0].unk_2.x;

                D_801C05F0[1].unk_2 = D_801C05F0[0].unk_2;
            } else {
                //! @bug Skips CLOSE_DISPS
                return;
            }

            Matrix_StatePush();
            Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_OPA_DISP++, D_801C0ABC[arg2]);

            Matrix_MultiplyVector3fByState(&D_801C0AC4[arg2], &sp58);
            Matrix_MultiplyVector3fByState(&D_801C0ADC[arg2], &sp4C);

            if ((func_80126440(globalCtx, NULL, &player->swordInfo[arg2], &sp58, &sp4C) != 0) && ((player->stateFlags1 &  0x8000000) )) {
                EffectBlure_AddVertex(Effect_GetByIndex(player->blureEffectIndex[arg2]), &player->swordInfo[arg2].tip, &player->swordInfo[arg2].base);
            }
            Matrix_StatePop();

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
    }
}

s32 func_801271B0(GlobalContext* globalCtx, Player* player, s32 arg2) {
    if ((player->transformation == PLAYER_FORM_DEKU) && (((player->skelAnime.animation == &gameplay_keep_Linkanim_00E2D0)) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E2D8) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E2E8) || (player->skelAnime.animation == &gameplay_keep_Linkanim_00E278))) {
        struct_80124618** sp3C = D_801C0AF4;

        OPEN_DISPS(globalCtx->state.gfxCtx);

        if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E2D8) {
            sp3C = D_801C0AFC;
        } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E278) {
            sp3C = D_801C0B0C;
        } else if (player->skelAnime.animation == &gameplay_keep_Linkanim_00E2E8) {
            sp3C = D_801C0B04;
        }

        Matrix_StatePush();
        Matrix_InsertTranslation(0.0f, 150.0f, 0.0f, 1);
        func_80124618(sp3C[0], player->skelAnime.curFrame, &player->unk_AF0[1]);
        Matrix_Scale(player->unk_AF0[1].x, player->unk_AF0[1].y, player->unk_AF0[1].z, 1);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPDisplayList(POLY_OPA_DISP++, D_801C0B14[arg2]);

        Matrix_InsertTranslation(2150.0f, 0.0f, 0.0f, 1);
        Matrix_InsertXRotation_s(player->unk_B8A, 1);
        func_80124618(sp3C[1], player->skelAnime.curFrame, &player->unk_AF0[1]);
        Matrix_Scale(player->unk_AF0[1].x, player->unk_AF0[1].y, player->unk_AF0[1].z, 1);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        // Close flower / Open flower
        gSPDisplayList(POLY_OPA_DISP++, player->actor.velocity.y < -6.0f ? object_link_nuts_DL_008AA0 : object_link_nuts_DL_008C50);

        Matrix_GetStateTranslation(&player->bodyPartsPos[D_801C0B1C[arg2]]);
        Matrix_StatePop();

        CLOSE_DISPS(globalCtx->state.gfxCtx);

        return 1;
    }
    return 0;
}


s32 func_80127438(GlobalContext* globalCtx, Player* player, s32 maskId) {
    if (!player->maskObjectLoading && (maskId == (u8)player->maskId)) {
        OPEN_DISPS(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x0A, player->maskObjectSegment);
        CLOSE_DISPS(globalCtx->state.gfxCtx);

        return true;
    }

    return false;
}

void func_80127488(GraphicsContext** gfxCtx, Player* player, u8 arg2) {
    OPEN_DISPS(*gfxCtx);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(*gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, arg2);
    gSPDisplayList(POLY_XLU_DISP++, object_link_goron_DL_011AB8);

    func_80122BA4(gfxCtx, &player->unk_3D0, 3, arg2);

    CLOSE_DISPS(*gfxCtx);
}

void func_8012754C(GlobalContext* globalCtx, Player* player) {
    gSegments[0xA] = PHYSICAL_TO_VIRTUAL(player->maskObjectSegment);
    AnimatedMat_DrawOpa(globalCtx, Lib_SegmentedToVirtual(&object_mask_meoto_Matanimheader_001CD8));
}

#ifdef NON_EQUIVALENT
void func_80127594(GlobalContext* globalCtx, Actor* actor) {
    static Vec3f D_801C0BA8 = { 0.0f, 0.0f, 0.0f };
    static Vec3f D_801C0BB4 = { 0.0f, 0.0f, 0.0f };
    Player* player = (Player*)actor;
    Gfx* gfx;
    f32 temp_f0;
    f32 temp_f20;
    f32 temp_f22;
    s32 phi_v0;
    s16 phi_s0;
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx);
    
    gfx = POLY_XLU_DISP;

    for (i = 0; i < 2; i++) {
        temp_f22 = (D_801F59C8[i] / 400.0f) * 0.1f;
        Matrix_MultiplyVector3fByState(&D_801C0B90[i], &D_801F59B0[i]);

        if (1) {}

        D_801F59B0[i].y += -10.0f * temp_f22;

        if (D_801F59C8[i] < 0x190) {
            f32 phi_f20;

            if (temp_f22 > 0.05f) {
                phi_f20 = 0.05f;
            } else {
                phi_f20 = temp_f22;
            }
            Matrix_StatePush();
            Matrix_InsertTranslation(D_801F59B0[i].x, D_801F59B0[i].y, D_801F59B0[i].z, 0);
            Matrix_Scale(phi_f20, temp_f22, phi_f20, 1);

            gSPMatrix(&gfx[0], Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_PUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPSegment(&gfx[1], 0x08, gSegments[SEGMENT_NUMBER(D_04091BE0)] + SEGMENT_OFFSET(D_04091BE0));
            gDPSetPrimColor(&gfx[2], 0, 0, 255, 255, 255, 255);
            gDPSetEnvColor(&gfx[3], 150, 150, 150, 0);
            gSPDisplayList(&gfx[4], D_040301B0);
            gSPPopMatrix(&gfx[5], G_MTX_MODELVIEW);

            Matrix_StatePop();

            gfx = &gfx[6];
        } else {
            temp_f0 = sqrtf(SQ(player->actor.velocity.x) + SQ(player->actor.velocity.z));
            phi_s0 = temp_f0 * 2000.0f;
            D_801C0BA8.y = temp_f0 * 0.4f;
            D_801C0BB4.y = -0.3f;

            if (phi_s0 > 0x3E80) {
                phi_s0 = 0x3E80;
            }

            if (i != 0) {
                phi_v0 = phi_s0;
            } else {
                phi_v0 = -phi_s0;
            }
            temp_f20 = temp_f0 * 0.2f;

            phi_s0 = player->actor.focus.rot.y + phi_v0;

            if (temp_f20 > 4.0f) {
                temp_f20 = 4.0f;
            }

            D_801C0BA8.x = -Math_SinS(phi_s0) * temp_f20;
            D_801C0BA8.z = -Math_CosS(phi_s0) * temp_f20;

            EffectSsDtBubble_SpawnColorProfile(globalCtx, &D_801F59B0[i], &D_801C0BA8, &D_801C0BB4, 0x14, 0x14, 3, 0);
            D_801F59C8[i] += -0x190;
        }
    }

    POLY_XLU_DISP = gfx;
    
    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
#else
Vec3f D_801C0BA8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_801C0BB4 = { 0.0f, 0.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80127594.s")
void func_80127594(GlobalContext* globalCtx, Player* player);
#endif

#ifdef NON_MATCHING
// regalloc
void func_801278F8(GlobalContext* globalCtx, Player* player) {
    static Gfx D_801C0BC0[] = {
        0xFB000000,
        0x000000FF,
        0xDF000000,
        0
    };
    static Gfx D_801C0BD0[] = {
        0xE200001C,
        0xC81049F8,
        0xDF000000,
        0
    };
    s32 phi_a0;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    if (player->unk_B60 != 0) {
        gSegments[0xA] = PHYSICAL_TO_VIRTUAL2(player->maskObjectSegment);

        AnimatedMat_DrawOpa(globalCtx, Lib_SegmentedToVirtual(&object_mask_bakuretu_Matanimheader_0011F8));

        if ((player->unk_B60 < 11) != 0) {
            phi_a0 = (player->unk_B60 / 10.0f) * 255.0f;
        } else {
            phi_a0 = 0xFF;
        }

        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, phi_a0);

        gSPDisplayList(POLY_OPA_DISP++, object_mask_bakuretu_DL_000440);

        gSPSegment(POLY_OPA_DISP++, 0x09, D_801C0BD0);

        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0xFF - phi_a0);
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x09, D_801C0BC0);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
#else
Gfx D_801C0BC0[] = {
    0xFB000000,
    0x000000FF,
    0xDF000000,
    0
};
Gfx D_801C0BD0[] = {
    0xE200001C,
    0xC81049F8,
    0xDF000000,
    0
};
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_801278F8.s")
#endif

Vec3f D_801C0BE0 = { 0.0f, 0.3f, 0.0f };
Vec3f D_801C0BEC = { 0.0f, -0.025f, 0.0f };
Color_RGBA8 D_801C0BF8 = { 0xFA, 0x64, 0x64, 0 };
Color_RGBA8 D_801C0BFC = { 0, 0, 0x64, 0 };

Vec3f D_801C0C00 = { 0.0f, 20.0f, 0.0f };

Vec3f D_801C0C0C[3] = {
    { 174.0f, -1269.0f, -1.0f },
    { 401.0f, -729.0f, -701.0f },
    { 401.0f, -729.0f, 699.0f },
};

Vec3f D_801C0C30[3] = {
    { 74.0f, -1269.0f, -1.0f },
    { 301.0f, -729.0f, -701.0f },
    { 301.0f, -729.0f, 699.0f },
};

typedef struct {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ s16 unk_06;
    /* 0x08 */ Vec3f unk_08;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 unk_1A;
} struct_80128388_arg1; // size = 0x1C

//extern struct_80128388_arg1 D_801C0C54[3];
struct_80128388_arg1 D_801C0C54[] = {
    {
        0.0f,
        0x0000, 0x8000,
        {0.0f, 0.0f, 0.0f},
        0x00000000,
        0x0000, 0x0000,
    },{
        16.7999992371f,
        0x0000, 0x0000,
        {0.0f, 0.0f, 0.0f},
        0x41A00000,
        0x1388, 0x1388,
    },{
        30.0f,
        0x0000, 0x0000,
        {0.0f, 0.0f, 0.0f},
        0x41A00000,
        0x1F40, 0x2EE0,
    }
};

Color_RGB8 D_801C0CA8[] = {
    { 0xFF, 0xFF, 0xFF },
    { 0x50, 0x50, 0xFF },
    { 0x88, 0xC0, 0xFF },
    { 0x88, 0xC0, 0xFF },
    { 0xB8, 0xE8, 0xE8 },
    { 0xF8, 0xC8, 0 },
    { 0xFF, 0xB4, 0 },
    { 0, 0x80, 0 },
    { 0xFC, 0xEE, 0 },
    { 0x83, 0, 0xAE },
    { 0x40, 0x40, 0x20 },
    { 0, 0, 0xFF },
    { 0xFF, 0, 0xFF },
    { 0xFF, 0, 0xFF },
    { 0xFF, 0, 0 },
    { 0, 0, 0xFF },
    { 0, 0xC8, 0 },
    { 0xFF, 0xFF, 0xFF },
    { 0xFF, 0xFF, 0xFF },
    { 0xFF, 0xFF, 0xFF },
    { 0x50, 0x50, 0xFF },
};

Vec3f D_801C0CE8[5] = {
    { 0.0f, 0.0f, 0.0f },
    { 300.0f, 300.0f, -230.0f },
    { 0.0f, 90.0f, -50.0f },
    { 0.0f, 20.0f, -60.0f },
    { 0.0f, 0.0f, 0.0f },
};
Vec3f D_801C0D24[5] = {
    { 200.0f, 300.0f, 0.0f },
    { 200.0f, 200.0f, 0.0f },
    { 200.0f, 300.0f, 0.0f },
    { 200.0f, 150.0f, 0.0f },
    { 200.0f, 200.0f, 0.0f },
};
Vec3f D_801C0D60 = { 398.0f, 1419.0f, 244.0f };
Vec3f D_801C0D6C = { 420.0f, 1210.0f, 380.0f };

f32 D_801C0D78[] = { 0.0f, 3000.0f, 3000.0f, 4000.0f, 5500.0f, -1.0f, 2500.0f };

Gfx** D_801C0D94 = (Gfx** )0x06017818;

f32 D_801C0D98 = -35.0f;

f32 D_801C0D9C = -395.0f;
f32 D_801C0DA0 = 0.0f;

f32 D_801C0DA4 = 0.0f;

Vec3f D_801C0DA8[4] = {
    { -4500.0f, -3000.0f, -600.0f },
    { 1500.0f, -3000.0f, -600.0f },
    { -4500.0f, 3000.0f, -600.0f },
    { 1500.0f, 3000.0f, -600.0f },
};

Vec3f D_801C0DD8 = { 50.0f, 800.0f, 0.0f };
Vec3f D_801C0DE4 = { 50.0f, 850.0f, 0.0f };
Gfx* D_801C0DF0[] = {
    (Gfx* )0x06010590,
    (Gfx* )0x06010368,
    (Gfx* )0x06010140,
    (Gfx* )0x0600FF18,
    (Gfx* )0x0600FCF0,
};

Vec2f D_801C0E04[] = {
    { 140.0f, -130.0f },
    { 0.0f, -200.0f },
    { -160.0f, 0.0f },
    { 220.0f, -200.0f },
    { 0.0f, 0.0f },
};

Gfx* D_801C0E2C[] = {
    (Gfx* )0x06007A28,
    (Gfx* )0x060077D0,
    (Gfx* )0x06007548,
    (Gfx* )0x06007900,
    (Gfx* )0x060076A0,
};
Vec3f D_801C0E40[] = {
    { 0.0f, 0.0f, 0.0f },
    { -578.3f, -1100.9f, 0.0f },
    { -189.5f, -594.87f, 0.0f },
    { -570.0f, -812.0f, 0.0f },
    { -230.0f, -520.0f, 0.0f },
};
Vec3f D_801C0E7C = { 1100.0f, -700.0f, 0.0f };

// unused
Vec3f D_801C0E88 = { 1600.0f, -1700.0f, -70.0f };

Vec3f D_801C0E94 = { 1800.0f, -300.0f, 0.0f };
Vec3f D_801C0EA0 = { 1300.0f, -400.0f, 0.0f };
Vec3f D_801C0EAC = { 630.0f, 100.0f, -30.0f };
Vec3s D_801C0EB8 = { 0, 0, 0x7FFF };


void func_80127A60(GlobalContext* globalCtx) {
    Mtx* temp_a1 = GRAPH_ALLOC(globalCtx->state.gfxCtx, 2*sizeof(Mtx));
    Vec3s sp2C;

    OPEN_DISPS( globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x0B, temp_a1);

    Matrix_StatePush();

    sp2C.x = D_801F59D0.unk_2 + 0x3E2;
    sp2C.y = D_801F59D0.unk_4 + 0xDBE;
    sp2C.z = D_801F59D0.unk_0 - 0x348A;
    Matrix_SetStateRotationAndTranslation(97.0f, -1203.0f, -240.0f, &sp2C);

    Matrix_ToMtx(temp_a1++);

    sp2C.x = D_801F59D0.unk_2 - 0x3E2;
    sp2C.y = -D_801F59D0.unk_4 -0xDBE;
    sp2C.z = D_801F59D0.unk_0 - 0x348A;
    Matrix_SetStateRotationAndTranslation(97.0f, -1203.0f, 240.0f,&sp2C);

    Matrix_ToMtx(temp_a1);

    Matrix_StatePop();

    CLOSE_DISPS( globalCtx->state.gfxCtx);
}

void func_80127B64(struct_801F58B0 arg0[], s32 count, Vec3f* arg2) {
    s32 i;

    for (i = 0; i < count; i++) {
        Math_Vec3f_Copy(&arg0->unk_00, arg2);
        Math_Vec3f_Copy(&arg0->unk_0C, &gZeroVec3f);
        // maybe fake match?
        arg0++;
        arg0[-1].unk_18 = 0;
        arg0[-1].unk_1A = 0;
    }
}

void func_80127BE8(GlobalContext* arg0, Vec3f* arg1) {
    Vec3f sp2C;
    f32 sp28;

    D_801C0BE0.y = Rand_ZeroFloat(0.07f) + -0.1f;
    D_801C0BEC.y = Rand_ZeroFloat(0.1f) + 0.04f;
    if (Rand_ZeroOne() < 0.5f) {
        sp28 = -1.0f;
    } else {
        sp28 = 1.0f;
    }

    D_801C0BE0.x = (Rand_ZeroFloat(0.2f) + 0.1f) * sp28;
    D_801C0BEC.x = 0.1f * sp28;
    if (Rand_ZeroOne() < 0.5f) {
        sp28 = -1.0f;
    } else {
        sp28 = 1.0f;
    }

    D_801C0BE0.z = (Rand_ZeroFloat(0.2f) + 0.1f) * sp28;
    D_801C0BEC.z = 0.1f * sp28;
    sp2C.x = arg1->x;
    sp2C.y = Rand_ZeroFloat(15.0f) + arg1->y;
    sp2C.z = arg1->z;
    EffectSsKiraKira_SpawnDispersed(arg0, &sp2C, &D_801C0BE0, &D_801C0BEC, &D_801C0BF8, &D_801C0BFC, -0x32, 0xB);
}

#ifdef NON_EQUIVALENT
// Maybe equivalent?
void func_80127DA4(GlobalContext* globalCtx, struct_801F58B0 arg1[], struct_80128388_arg1 arg2[], s32 arg3, Vec3f* arg4, Vec3f* arg5, u32* arg6) {
    struct_801F58B0* sp78;
    f32 temp_f0;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f20_4;
    f32 temp_f20_5;
    f32 temp_f20_6;
    f32 temp_f22;
    f32 temp_f22_2;
    Vec3f spB0;
    Vec3f spA4;
    f32 sp8C;
    f32 temp_f24;
    f32 temp_f24_2;
    f32 temp_f28;
    s16 temp_s0;
    s16 temp_s2_2;
    s16 temp_s0_2;
    s16 temp_s2_3;
    struct_801F58B0* phi_s3;
    struct_801F58B0* phi_s1;
    struct_80128388_arg1* phi_s4;
    f32 phi_f20;
    s32 phi_s5;

    sp8C = -1.0f;
    Math_Vec3f_Copy(&arg1->unk_00, arg4);
    Math_Vec3f_Diff(arg5, arg4, &spB0);
    arg1->unk_18 = Math_FAtan2F(spB0.z, spB0.x);
    arg1->unk_1A = Math_FAtan2F(sqrtf(SQ(spB0.x) + SQ(spB0.z)), spB0.y);
    phi_s3 = arg1;
    phi_s1 = &arg1[1];
    phi_s4 = &arg2[1];
    phi_s5 = 1;
    if (arg3 >= 2) {
        do {
            sp78 = phi_s3 + 1;
            if ((globalCtx->actorCtx.unk5 & 8) != 0) {
                if ((*arg6 & 0x20) != 0) {
                    sp8C = -0.2f;
                } else {
                    sp8C = 0.2f;
                }

                *arg6 += 0x16;
                if ((*arg6 & 1) == 0) {
                    func_80127BE8(globalCtx, &phi_s1->unk_00);
                }
            }
            Math_Vec3f_Sum(&phi_s1->unk_00, &phi_s1->unk_0C, &phi_s1->unk_00);

            temp_f0 = Math_Vec3f_DistXYZAndStoreDiff(&phi_s3->unk_00, &phi_s1->unk_00, &spB0);
            temp_f28 = temp_f0 - phi_s4->unk_00;
            if (temp_f0 == 0.0f) {
                spB0.x = 0.0f;
                spB0.y = 0.0f;
                spB0.z = phi_s4->unk_00;
            }
            phi_f20 = sqrtf(SQ(spB0.x) + SQ(spB0.z));

            if (phi_f20 > 4.0f) {
                phi_s1->unk_18 = Math_FAtan2F(spB0.z, spB0.x);

                if (ABS_ALT((s16)(phi_s1->unk_18 - phi_s3->unk_18)) > 0x4000) {
                    phi_s1->unk_18 = (s16) (phi_s1->unk_18 + 0x8000);
                    phi_f20 = -phi_f20;
                }
            }

            phi_s1->unk_1A = Math_FAtan2F(phi_f20, spB0.y);

            temp_s2_2 = phi_s1->unk_18 - phi_s3->unk_18;
            if (temp_s2_2 < - phi_s4->unk_18) {
                //phi_s2 = (s32) phi_s4->unk_18 * -0x10000;
                temp_s2_3 = -phi_s4->unk_18 ;
            } else {
                //phi_v0_2 = temp_s2_2;
                //if ((s32) phi_s4->unk_18 < (s32) temp_s2_2) {
                //    phi_v0_2 = phi_s4->unk_18;
                //}
                //phi_v0_2 = CLAMP_MAX(temp_s2_2, phi_s4->unk_18);
//
                //phi_s2 = phi_v0_2 << 0x10;
                temp_s2_3 = CLAMP_MAX(temp_s2_2, phi_s4->unk_18) ^ 0;
            }
            //temp_s2_3 = phi_s2 >> 0x10;

            phi_s1->unk_18 = (s16) (phi_s3->unk_18 + temp_s2_3);
            //temp_a2 = phi_s3->unk_1A;
            //temp_v1_3 = phi_s4->unk_1A;
            temp_s0 = phi_s1->unk_1A -  phi_s3->unk_1A;
            if (temp_s0 < -phi_s4->unk_1A) {
                //phi_s0 = (s32) phi_s4->unk_1A * -0x10000;
                temp_s0_2 = -phi_s4->unk_1A;
            } else {
                //phi_v0_3 = temp_s0;
                //if ((s32) phi_s4->unk_1A < (s32) temp_s0) {
                //    phi_v0_3 = phi_s4->unk_1A;
                //}

                //phi_v0_3 = CLAMP_MAX(temp_s0, phi_s4->unk_1A);
                //phi_s0 = phi_v0_3 << 0x10;
                temp_s0_2 = CLAMP_MAX(temp_s0, phi_s4->unk_1A) ^ 0;
            }
            //temp_s0_2 = phi_s0 >> 0x10;

            phi_s1->unk_1A = (s16) ( phi_s3->unk_1A + temp_s0_2);
            temp_f20_2 = Math_CosS(phi_s1->unk_1A) * phi_s4->unk_00;
            spA4.x = Math_SinS(phi_s1->unk_18) * temp_f20_2;
            spA4.y = Math_CosS(phi_s1->unk_18) * temp_f20_2;
            spA4.z = Math_SinS(phi_s1->unk_1A) * phi_s4->unk_00;
            Math_Vec3f_Sum(&phi_s3->unk_00, &spA4, &phi_s1->unk_00);
            phi_s1->unk_0C.x = (f32) (phi_s1->unk_0C.x * 0.9f);
            phi_s1->unk_0C.z = (f32) (phi_s1->unk_0C.z * 0.9f);
            temp_f22 = Math_CosS((s16) temp_s0_2) * temp_f28;
            temp_f24 = Math_SinS((s16) temp_s0_2) * temp_f28;
            phi_s1->unk_0C.y = phi_s1->unk_0C.y + sp8C;

            if ((globalCtx->actorCtx.unk5 & 8) != 0) {
                phi_s1->unk_0C.y = CLAMP(phi_s1->unk_0C.y, -0.8f, 0.8f);
            } else {
                phi_s1->unk_0C.y = phi_s1->unk_0C.y;
                temp_f20_3 = Math_SinS(phi_s3->unk_1A);
                phi_s1->unk_0C.y += (((temp_f22 * Math_CosS(phi_s3->unk_1A)) + (temp_f24 * temp_f20_3)) * 0.2f);

                phi_s1->unk_0C.y = CLAMP(phi_s1->unk_0C.y, -2.0f, 4.0f);
            }

            temp_f20_4 = (temp_f24 * Math_CosS(phi_s3->unk_1A)) - (Math_SinS(phi_s3->unk_1A) * temp_f22);
            temp_f22_2 = Math_CosS((s16) temp_s2_3) * temp_f20_4;
            temp_f24_2 = Math_SinS((s16) temp_s2_3) * temp_f20_4;
            temp_f20_5 = Math_SinS(phi_s3->unk_18);
            phi_s1->unk_0C.x = (f32) (phi_s1->unk_0C.x + (((temp_f24_2 * Math_CosS(phi_s3->unk_18)) - (temp_f22_2 * temp_f20_5)) * 0.1f));

            phi_s1->unk_0C.x = CLAMP(phi_s1->unk_0C.x, -4.0f, 4.0f);

            temp_f20_6 = Math_SinS(phi_s3->unk_18);
            phi_s1->unk_0C.z = (f32) (phi_s1->unk_0C.z + (((temp_f22_2 * Math_CosS(phi_s3->unk_18)) + (temp_f24_2 * temp_f20_6)) * -0.1f));

            phi_s1->unk_0C.z = CLAMP(phi_s1->unk_0C.z, -4.0f, 4.0f);

            phi_s3 = sp78;
            phi_s5++;
            phi_s1++;
            phi_s4++;
        } while (phi_s5 < arg3);
    }
}
#else
void func_80127DA4(GlobalContext* globalCtx, struct_801F58B0 arg1[], struct_80128388_arg1 arg2[], s32, Vec3f*, Vec3f*, u32*);
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80127DA4.s")
#endif

void func_80128388(struct_801F58B0 arg0[], struct_80128388_arg1 arg1[], s32 arg2, Mtx** arg3) {
    struct_801F58B0* phi_s1;
    Vec3f sp58;
    Vec3s sp50;
    s32 i;

    phi_s1 = &arg0[1];
    sp58.y = 0.0f;
    sp58.z = 0.0f;
    sp50.x = 0;
    i = 1;

    if (arg2 >= 2) {
        do {
            sp58.x = arg1->unk_00 * 100.0f;
            sp50.z = arg1->unk_06 + (s16)(phi_s1->unk_1A - arg0->unk_1A);
            sp50.y = arg1->unk_04 + (s16)(phi_s1->unk_18 - arg0->unk_18);
            Matrix_JointPosition(&sp58, &sp50);
            Matrix_ToMtx(*arg3);
            (*arg3)++;
            arg0++;
            phi_s1++;
            arg1++;
            i++;
        } while (i < arg2);
    }
}

#ifdef NON_EQUIVALENT
// Not sure about equivalency
void func_801284A0(GlobalContext* globalCtx, Player* player) {
    Mtx* sp90;
    Vec3f sp84;
    Vec3f sp78;
    u32 sp6C;
    Mtx* temp_v0;
    struct_801F58B0 (*phi_s0)[3];
    s32 i;

    OPEN_DISPS(globalCtx->state.gfxCtx);

    sp90 = GRAPH_ALLOC(globalCtx->state.gfxCtx, 6*sizeof(Mtx));

    sp6C = globalCtx->gameplayFrames;

    gSPSegment(POLY_OPA_DISP++, 0x0B, sp90);

    Matrix_MultiplyVector3fByState(&D_801C0C00, &D_801C0C54[1].unk_08);
    Math_Vec3f_Lerp(&player->bodyPartsPos[7], &player->bodyPartsPos[0], 0.2f, &D_801C0C54[1].unk_08);

    for (i = 0; i < 3; i++) {
        Matrix_MultiplyVector3fByState(&D_801C0C0C[i], &sp84);
        Matrix_MultiplyVector3fByState(&D_801C0C30[i], &sp78);

        func_80127DA4(globalCtx, D_801F58B0[i], D_801C0C54, 3, &sp84, &sp78, &sp6C);
        sp6C += 11;

        Matrix_StatePush();
        Matrix_InsertTranslation(D_801C0C0C[i].x, D_801C0C0C[i].y, D_801C0C0C[i].z, 1);
        func_80128388(D_801F58B0[i], D_801C0C54, 3, &sp90);
        Matrix_StatePop();
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_801284A0.s")
#endif

#ifdef NON_EQUIVALENT
// Looks equivalent
s32 func_80128640(GlobalContext* globalCtx, Player* player, Gfx* dlist) {
    s32 sp6C;
    //Gfx* sp50;
    s32 sp48;
    //Gfx* sp38;
    s16 sp26;
    s16 sp24;
    f32 temp_f0;
    //s16 temp_a0_2;
    //s16 temp_v0_10;
    //s16 temp_v0_11;
    s32 temp_v1;
    Color_RGB8* temp_v1_3;
    Vec3f* temp_v1_2;

    temp_v1 = &gameplay_keep_Linkanim_00D0A8 == player->skelAnime.animation;
    if ((temp_v1 != 0) || ((player->currentMask != 0) && (&gameplay_keep_Linkanim_00D0C8 == player->skelAnime.animation) && (temp_f0 = player->skelAnime.curFrame - 8.0f, (temp_f0 >= 0.0f)) && (temp_f0 < 4.0f)) || (player->stateFlags2 & 0x01000000)) {
        if (temp_v1 != 0) {
            sp6C = player->prevMask;
        } else {
            sp6C = player->currentMask;
        }
        if (func_80127438(globalCtx, player, sp6C) != 0) {
            OPEN_DISPS(globalCtx->state.gfxCtx);
            //sp68 = globalCtx->state.gfxCtx;

            Matrix_StatePush();
            Matrix_InsertTranslation(-323.67f, 412.15f, -969.96f, 1);
            Matrix_InsertRotation(-0x32BE, -0x50DE, -0x7717, 1);
            //temp_v0_2 = sp68->polyOpa.p;
            //sp68->polyOpa.p = temp_v0_2 + 8;
            //temp_v0_2->words.w0 = 0xDA380003;
            //sp60 = temp_v0_2;
            //sp60->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            // temp_v0_3 = sp68->polyOpa.p;
            // sp68->polyOpa.p = temp_v0_3 + 8;
            // temp_v0_3->words.w0 = 0xDE000000;
            // temp_v0_3->words.w1 = D_801C0B1C[sp6C];
            gSPDisplayList(POLY_OPA_DISP++, D_801C0B20[sp6C-1]);

            Matrix_StatePop();

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
        return 1;
    }
    if (player->heldItemActionParam == 7) {

        OPEN_DISPS(globalCtx->state.gfxCtx);
        //sp58 = globalCtx->state.gfxCtx;

        Matrix_StatePush();
        Matrix_InsertTranslation(-428.26f, 267.2f, -33.82f, 1);
        Matrix_InsertRotation(-0x8000, 0, 0x4000, 1);
        Matrix_Scale(1.0f, player->unk_B08[1], 1.0f, 1);

        //temp_v0_4 = sp58->polyOpa.p;
        //sp58->polyOpa.p = temp_v0_4 + 8;
        //temp_v0_4->words.w0 = 0xDA380003;
        //sp50 = temp_v0_4;
        //sp50->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        //temp_v0_5 = sp58->polyOpa.p;
        //sp58->polyOpa.p = temp_v0_5 + 8;
        //temp_v0_5->words.w1 = (u32)gameplay_keep_DL_0032B0;
        //temp_v0_5->words.w0 = 0xDE000000;
        gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_0032B0); 

        Matrix_StatePop();

        CLOSE_DISPS(globalCtx->state.gfxCtx);

        return 1;
    }
    if (player->leftHandType == 5) {
        sp48 = Player_ActionToBottle(player, player->heldItemActionParam);
        temp_v1_2 = &D_801C0CE8[player->transformation];

        OPEN_DISPS(globalCtx->state.gfxCtx);
        //temp_a1_2 = globalCtx->state.gfxCtx;

        Matrix_StatePush();
        Matrix_InsertTranslation(temp_v1_2->x, temp_v1_2->y, temp_v1_2->z, 1);

        //temp_v0_6 = temp_a1_2->polyXlu.p;
        //temp_a1_2->polyXlu.p = temp_v0_6 + 8;
        //temp_v0_6->words.w0 = 0xDA380003;
        //sp40 = temp_a1_2;
        //sp38 = temp_v0_6;
        //sp38->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        if (sp48 != 0) {
            //temp_v0_7 = temp_a1_2->polyXlu.p;
            //temp_a1_2->polyXlu.p = temp_v0_7 + 8;
            temp_v1_3 = &D_801C0CA8[sp48];
            //temp_v0_7->words.w0 = 0xFB000000;
            //temp_v0_7->words.w1 = (temp_v1_3->r << 0x18) | (temp_v1_3->g << 0x10) | (temp_v1_3->b << 8);
            gDPSetEnvColor(POLY_OPA_DISP++, temp_v1_3->r, temp_v1_3->g, temp_v1_3->b, 0);

            //temp_v0_8 = temp_a1_2->polyXlu.p;
            //temp_a1_2->polyXlu.p = temp_v0_8 + 8;
            //temp_v0_8->words.w0 = 0xDE000000;
            //temp_v0_8->words.w1 = gameplay_keep_DL_000320;
            gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_000320);

        }
        //temp_v0_9 = temp_a1_2->polyXlu.p;
        //temp_a1_2->polyXlu.p = temp_v0_9 + 8;
        //temp_v0_9->words.w0 = 0xDE000000;
        //temp_v0_9->words.w1 = gameplay_keep_DL_0003E0;
        gSPDisplayList(POLY_OPA_DISP++, gameplay_keep_DL_0003E0);

        Matrix_StatePop();

        CLOSE_DISPS(globalCtx->state.gfxCtx);

        return 1;
    }

    // zora guitar
    if (dlist == object_link_zora_DL_00E2A0) {
        f32 sins_1 = Math_SinS(player->unk_B86);
        f32 sins_2;

        //temp_v0_10 = player->unk_AB2.x;
        //if ((s32) temp_v0_10 < 0) {
        //    phi_v1 = -(s32) temp_v0_10;
        //} else {
        //    phi_v1 = (s32) temp_v0_10;
        //}
        //sp26 = (s16) (s32) ((((f32) (gGameInfo->data[0x394] + 0x14) * (f32) phi_v1) / 100.0f) * Math_SinS(temp_a0_2));
        sp26 = (s16) (s32) ((((f32) (gGameInfo->data[0x394] + 0x14) * ABS_ALT(player->unk_AB2.x)) / 100.0f) * sins_1);


        sins_2 = Math_SinS(player->unk_B88);
        //temp_v0_11 = player->unk_AB2.y;
        //phi_v1_2 = temp_v0_11;
        //if ((s32) temp_v0_11 < 0) {
        //    phi_v1_2 = (s16) -(s32) temp_v0_11;
        //}
        //sp24 = (s16) (s32) ((((f32) (gGameInfo->data[0x395] + 0xF) * (f32) phi_v1_2) / 100.0f) * Math_SinS(player->unk_B88));
        sp24 = (s16) (s32) ((((f32) (gGameInfo->data[0x395] + 0xF) * ABS_ALT(player->unk_AB2.y)) / 100.0f) * sins_2);

        OPEN_DISPS(globalCtx->state.gfxCtx);
        //sp20 = globalCtx->state.gfxCtx;

        Matrix_StatePush();
        Matrix_InsertXRotation_s(sp26, 1);
        Matrix_RotateY(sp24, 1);
        //temp_v0_12 = sp20->polyOpa.p;
        //sp20->polyOpa.p = temp_v0_12 + 8;
        //temp_v0_12->words.w0 = 0xDA380003;
        //sp18 = temp_v0_12;
        //sp18->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        //temp_v0_13 = sp20->polyOpa.p;
        //sp20->polyOpa.p = temp_v0_13 + 8;
        //temp_v0_13->words.w1 = object_link_zora_DL_00E088;
        //temp_v0_13->words.w0 = 0xDE000000;
        // hand
        gSPDisplayList(POLY_OPA_DISP++, object_link_zora_DL_00E088);

        Matrix_StatePop();

        CLOSE_DISPS(globalCtx->state.gfxCtx);

        return 1;
        //if (((!__gfxCtx) && (!__gfxCtx)) && (!__gfxCtx)) {}
    }

    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80128640.s")
#endif

void func_80128B74(GlobalContext* globalCtx, Player* player, s32 limbIndex) {
    Vec3f* footPos = &D_801C0D24[player->transformation];

    Actor_SetFeetPos(&player->actor, limbIndex, 9, footPos, 6, footPos);
}


#if 0
void func_80128BD0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList1, Gfx** dList2, Vec3s* rot, Actor* actor) {
    Player* player = (Player*)actor;
    MtxF sp230;
    Actor* sp224;
    GraphicsContext* sp21C;
    Vec3f sp20C;
    MtxF sp1BC;
    Vec3f sp1B4; // ?
    Vec3f sp178[5];
    GraphicsContext* sp170;
    f32* sp168;
    Gfx* sp15C;
    s32 sp154;
    GraphicsContext* sp150;
    Gfx* sp134;
    Vec3f sp12C; // ?
    Vec3f spFC;
    Vec3f spF0;
    GraphicsContext* spE4;
    Vec3f spD4;
    Gfx* spC8;
    GraphicsContext* spBC;
    MtxF sp68;
    Vec3f sp5C;
    Vec3f sp50;
    Vec3f* sp30;
    Actor* temp_s0;
    Gfx* temp_v0_10;
    Gfx* temp_v0_12;
    Gfx* temp_v0_14;
    Gfx* temp_v0_16;
    Gfx* temp_v0_17;
    Gfx* temp_v0_19;
    Gfx* temp_v0_20;
    Gfx* temp_v0_21;
    Gfx* temp_v0_22;
    Gfx* temp_v0_23;
    Gfx* temp_v0_24;
    Gfx* temp_v0_25;
    Gfx* temp_v0_3;
    Gfx* temp_v0_4;
    Gfx* temp_v0_7;
    Gfx* temp_v0_8;
    Gfx* temp_v0_9;
    Gfx* temp_v1_6;
    Vec3f* temp_s0_4;
    Vec3f* temp_s0_5;
    Vec3f* temp_s0_8;
    Vec3s* temp_s0_11;
    Vec3s* temp_s1;
    f32 temp_f0;
    f32 temp_f12;
    f32* temp_a1;
    f32* temp_a1_2;
    f32* temp_at;
    f32* temp_v0_18;
    s16 temp_v0;
    s32 temp_a0;
    s32 temp_v1_3;
    s32 temp_v1_5;
    s8 temp_v0_26;
    u8 temp_v0_11;
    u8 temp_v0_27;
    u8 temp_v0_28;
    Vec3f* temp_s0_10;
    Vec2f* temp_s0_6;
    Vec3f* temp_s0_9;
    void* temp_v0_13;
    void* temp_v0_15;
    Vec3f* phi_a0;
    f32* phi_v0;
    Vec3f* phi_s0;
    Vec3f* phi_s0_2;
    f32* phi_a1;
    Vec3f* phi_s0_3;
    Vec3f* phi_s0_4;
    Gfx** phi_a1_2;
    Vec3f* phi_s0_5;

    if (*dList2 != 0) {
        Matrix_GetStateTranslation(D_801F59DC);
    }

    if (limbIndex == 0x10) {
        Math_Vec3f_Copy(&player->leftHandWorld.pos, D_801F59DC);
        if ((*dList1 != 0) && (func_801271B0(globalCtx, player, 0) == 0) && (func_80128640(globalCtx, player, *dList1) == 0) && (&gameplay_keep_Linkanim_00E218 == player->skelAnime.animation)) {
            func_80127488(globalCtx, player, D_801C0778[(s32) player->skelAnime.curFrame]);
        }
        if (player->actor.scale.y >= 0.0f) {
            if ((Player_HoldsHookshot(player) == 0) && ((player->heldActor != 0))) {
                if (((player->stateFlags3 & 0x40) != 0) && ((player->transformation != 3))) {
                    phi_a0 = &D_801C0D60;
                    if (player->transformation == 4) {
                        phi_a0 = &D_801C0D6C;
                    }
                    Matrix_MultiplyVector3fByState(phi_a0, &player->heldActor->world.pos);
                    Matrix_InsertRotation(0x69E8, -0x5708, 0x458E, 1);
                    Matrix_CopyCurrentState(&sp230);
                    temp_s1 = &player->heldActor->world.rot;
                    func_8018219C(&sp230, temp_s1, 0);
                    player->heldActor->shape.rot = *temp_s1;
                } else if ((player->stateFlags1 & 0x800) != 0) {
                    temp_v0 = player->actor.shape.rot.y + player->leftHandWorld.rot.y;
                    player->heldActor->shape.rot.y = temp_v0;
                    player->heldActor->world.rot.y = temp_v0;
                }
            } else {
                if ((player->transformation == 0) || ((player->transformation != 2) && ((player->heldItemActionParam == 7) || ((player->swordState != 0) && ((player->swordAnimation != 0x19)) && (player->swordAnimation != 0x1A))))) {
                    if (player->heldItemActionParam == 7) {
                        D_801C0994->x = player->unk_B08[1] * 5000.0f;
                    } else {
                        D_801C0994->x = D_801C0D78[Player_GetSwordHeld(player)];
                    }
                    func_80126B8C(globalCtx, player);
                }
                Matrix_CopyCurrentState(&player->mf_CC4);
                func_8018219C(&player->mf_CC4, &player->leftHandWorld.rot, 0);
            }
        }
    } else if (limbIndex == 0x13) {
        sp224 = player->heldActor;
        if (*dList1 != 0) {
            if (player->rightHandType == 9) {
                OPEN_DISPS(globalCtx->state.gfxCtx);
                //sp21C = globalCtx->state.gfxCtx;

                Matrix_StatePush();
                Matrix_InsertTranslation(D_801C0D9C, D_801C0D9C, D_801C0DA0, 1);
                if (((player->stateFlags3 & 0x40) != 0) && ((s32) player->unk_B28 >= 0) && (player->unk_ACC < 0xB)) {
                    Matrix_GetStateTranslation(&sp20C);
                    temp_f0 = Math_Vec3f_DistXYZ(D_801F59DC, &sp20C);
                    player->unk_B08[0] = temp_f0 - 3.0f;
                    if (temp_f0 < 3.0f) {
                        player->unk_B08[0] = 0.0f;
                    } else {
                        player->unk_B08[0] *= 1.6f;
                        if (player->unk_B08[0] > 1.0f) {
                            player->unk_B08[0] = 1.0f;
                        }
                    }
                    player->unk_B08[1] = -0.5f;
                }
                Matrix_Scale(1.0f, player->unk_B08[0], 1.0f, 1);
                //temp_v0_3 = sp21C->polyXlu.p;
                //sp21C->polyXlu.p = temp_v0_3 + 8;
                //temp_v0_3->words.w0 = 0xDA380003;
                //temp_v0_3->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);


                //temp_v0_4 = sp21C->polyXlu.p;
                //sp21C->polyXlu.p = temp_v0_4 + 8;
                //temp_v0_4->words.w0 = 0xDE000000;
                //temp_v0_4->words.w1 = D_801C0D94;
                gSPDisplayList(POLY_XLU_DISP++, *D_801C0D94);

                Matrix_StatePop();

                CLOSE_DISPS(globalCtx->state.gfxCtx);
            } else if (&gameplay_keep_Linkanim_00E230 == player->skelAnime.animation) {
                func_80127488(globalCtx, player, D_801C07AC[(s32)player->skelAnime.curFrame]);
            } else {
                func_801271B0(globalCtx, player, 1);
            }
        }

        if (player->actor.scale.y >= 0.0f) {
            if (player->rightHandType == 0xFF) {
                Matrix_CopyCurrentState(&player->shieldMf);
            } else if (player->rightHandType == 8) {
                Matrix_CopyCurrentState(&player->shieldMf);
                func_801265C8(globalCtx, player, &player->shieldQuad, &D_801C0DA8);
            } else if (player->rightHandType == 0xB) {
                Matrix_MultiplyVector3fByState(&D_801C0DD8, &player->rightHandWorld.pos);
                if (sp224 != 0) {
                    Matrix_MultiplyVector3fByState(&D_801C0DE4, &sp224->world.pos);
                    Matrix_InsertRotation(0, -0x4000, -0x4000, 1);
                    Matrix_CopyCurrentState(&sp1BC);
                    func_8018219C(&sp1BC, &sp224->world.rot, 0);
                    sp224->shape.rot = sp224->world.rot;
                    if (func_800B7128(player) != 0) {
                        Matrix_InsertTranslation(500.0f, 300.0f, 0.0f, 1);
                        func_80124CC4(globalCtx, player, 77600.0f);
                    }
                }
            } else if ((player->swordState != 0) && (player->swordAnimation == 0x19)) {
                func_80126B8C(globalCtx, player);
            }
            if ((player->unk_B2A != 0) || ((func_800B7118(player) == 0) && (sp224 != 0))) {
                if (((player->stateFlags1 & 0x400) == 0) && (player->unk_B2A != 0) && (player->exchangeItemId != 0)) {
                    Math_Vec3f_Copy(&D_801F59E8, &player->leftHandWorld.pos);
                } else {
                    temp_at = &D_801F59E8.y;
                    *temp_at = (player->bodyPartsPos[0xF].x + player->leftHandWorld.pos.x) * 0.5f;
                    *temp_at = (player->bodyPartsPos[0xF].y + player->leftHandWorld.pos.y) * 0.5f;
                    D_801F59E8.z = (player->bodyPartsPos[0xF].z + player->leftHandWorld.pos.z) * 0.5f;
                }
                if (player->unk_B2A == 0) {
                    Math_Vec3f_Copy(&sp224->world.pos, &D_801F59E8);
                }
            }
        }
    } else if (limbIndex == 0xF) {
        func_80126BD0(globalCtx, player, 0);
    } else if (limbIndex == 0x12) {
        func_80126BD0(globalCtx, player, 1);
    } else if (limbIndex == 0x15) {
        if ((player->transformation == 1) && (( ( &gameplay_keep_Linkanim_00E1F8 == player->skelAnime.animation)) || (&gameplay_keep_Linkanim_00E200 == player->skelAnime.animation != 0) || (&gameplay_keep_Linkanim_00E1F0 == player->skelAnime.animation))) {
            Gfx** aux_a1;

            OPEN_DISPS(globalCtx->state.gfxCtx);
            //sp170 = globalCtx->state.gfxCtx;

            if (&gameplay_keep_Linkanim_00E200 == player->skelAnime.animation) {

                phi_v0 = &player->unk_B08[2];
                phi_s0 = (Vec3f* ) &sp178;
                do {
                    sp168 = phi_v0;
                    func_80124618(&D_801C0510, *phi_v0, phi_s0);
                    phi_s0++;
                    phi_v0 += 4;
                } while (phi_s0 != &sp1B4);

            } else {
                if ( &gameplay_keep_Linkanim_00E1F8 == player->skelAnime.animation) {
                    func_8012536C();
                    func_80124618(&D_801C0428, player->skelAnime.curFrame, &player->unk_AF0[1]);
                }
                sp30 = &player->unk_AF0[1];
                phi_s0_2 = (Vec3f* ) &sp178;
                do {
                    Math_Vec3f_Copy(phi_s0_2, sp30);
                    phi_s0_2++;
                } while (phi_s0_2 != &sp1B4);
            }
            Matrix_StatePush();
            Matrix_Scale(player->unk_AF0[1].x, player->unk_AF0[1].y, player->unk_AF0[1].z, 1);

            //temp_v0_7 = sp170->polyOpa.p;
            //sp170->polyOpa.p = temp_v0_7 + 8;
            //temp_v0_7->words.w0 = 0xDA380003;
            //temp_v0_7->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            //temp_v0_8 = sp170->polyOpa.p;
            //sp170->polyOpa.p = temp_v0_8 + 8;
            //temp_v0_8->words.w0 = 0xDE000000;
            //temp_v0_8->words.w1 = (u32) object_link_goron_DL_00FC18;
            gSPDisplayList(POLY_XLU_DISP++, object_link_goron_DL_00FC18);

            Matrix_StatePop();
            aux_a1 = &D_801C0DF0;
            phi_s0_3 = &sp178;
            do {
                sp30 = aux_a1;
                Matrix_StatePush();
                Matrix_Scale(phi_s0_3->x, phi_s0_3->y, phi_s0_3->z, 1);
                //temp_v0_9 = sp170->polyOpa.p;
                //sp170->polyOpa.p = temp_v0_9 + 8;
                //temp_v0_9->words.w0 = 0xDA380003;
                //sp15C->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                //sp30 = phi_a1;
                //sp15C = temp_v0_9;
                //temp_v0_10 = sp170->polyOpa.p;
                //sp170->polyOpa.p = temp_v0_10 + 8;
                //temp_v0_10->words.w0 = 0xDE000000;
                ////temp_v0_10->words.w1 = (bitwise u32) phi_a1->x;
                //temp_v0_10->words.w1 = *phi_a1;
                gSPDisplayList(POLY_XLU_DISP++, *aux_a1);

                sp30 = aux_a1;
                Matrix_StatePop();
                aux_a1 = aux_a1+1;
                phi_s0_3 += 0xC;
            } while (aux_a1 != (Gfx**)&D_801C0E04);

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
    } else if (limbIndex == 0xB) {
        if ((*dList1 != 0) && ((player->currentMask != 0)) && ((((player->transformation == 4)) && ((&gameplay_keep_Linkanim_00D0C8 != player->skelAnime.animation) || (player->skelAnime.curFrame >= 12.0f))) || ((player->transformation != 4) && ((s32) player->currentMask >= 0x15) && (player->currentMask != (player->transformation + 0x15)) && (player->skelAnime.curFrame >= 10.0f)))) {
            if (func_80127438(globalCtx, player, player->currentMask) != 0) {
                OPEN_DISPS(globalCtx->state.gfxCtx);

                temp_v0_11 = player->currentMask;
                sp154 = temp_v0_11 - 1;
                //sp150 = globalCtx->state.gfxCtx;
                if (temp_v0_11 == 0xA) {
                    func_8012754C(globalCtx, player);
                } else if (temp_v0_11 == 8) {
                    func_80127594(globalCtx, player);
                } else if (temp_v0_11 == 0x12) {
                    func_801278F8(globalCtx, player);
                } else if (temp_v0_11 == 4) {
                    func_80127A60(globalCtx);
                } else if (temp_v0_11 == 0xB) {
                    func_801284A0(globalCtx, player);
                } else if ((temp_v0_11 >= 0x15)) {
                    //temp_s0_6 = (player->transformation * 8) + D_801C0E04;
                    temp_s0_6 = &D_801C0E04[player->transformation];
                    Matrix_StatePush();
                    Matrix_InsertTranslation(temp_s0_6->x, temp_s0_6->y, 0.0f, 1);
                    Matrix_Scale(1.0f, 1.0f - player->unk_B08[5], 1.0f - player->unk_B08[4], 1);
                    //temp_v0_12 = sp150->polyOpa.p;
                    //sp150->polyOpa.p = temp_v0_12 + 8;
                    //temp_v0_12->words.w0 = 0xDA380003;
                    //temp_v0_12->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                    Matrix_StatePop();
                    temp_v0_13 = player->skelAnime.animation;
                    if ((&gameplay_keep_Linkanim_00D0C8 == temp_v0_13 && (player->skelAnime.curFrame >= 51.0f)) || (&gameplay_keep_Linkanim_00D0D0 == temp_v0_13)) {
                        sp154 += 4;
                    }
                }
                //temp_v0_14 = sp150->polyOpa.p;
                //sp150->polyOpa.p = temp_v0_14 + 8;
                //temp_v0_14->words.w0 = 0xDE000000;
                //temp_v0_14->words.w1 = *(D_801C0B20 + (sp154 * 4));
                gSPDisplayList(POLY_XLU_DISP++, D_801C0B20[sp154]);

                CLOSE_DISPS(globalCtx->state.gfxCtx);
            }
        } else if (player->transformation == 3) {
            temp_v0_15 = player->skelAnime.animation;
            if (&gameplay_keep_Linkanim_00E2C8 == player->skelAnime.animation) {
                OPEN_DISPS(globalCtx->state.gfxCtx);
                //temp_s0_7 = globalCtx->state.gfxCtx;

                func_80124618(&D_801C0410, player->skelAnime.curFrame, player->unk_AF0);
                Matrix_StatePush();
                Matrix_Scale(player->unk_AF0[0].x, player->unk_AF0[0].y, player->unk_AF0[0].z, 1);
                //temp_v0_16 = temp_s0_7->polyOpa.p;
                //temp_s0_7->polyOpa.p = temp_v0_16 + 8;
                //temp_v0_16->words.w0 = 0xDA380003;
                //sp134->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                //sp134 = temp_v0_16;
                //temp_v0_17 = temp_s0_7->polyOpa.p;
                //temp_s0_7->polyOpa.p = temp_v0_17 + 8;
                //temp_v0_17->words.w1 = (u32) &object_link_nuts_DL_00A348;
                //temp_v0_17->words.w0 = 0xDE000000;
                gSPDisplayList(POLY_XLU_DISP++, object_link_nuts_DL_00A348);
                Matrix_StatePop();

                CLOSE_DISPS(globalCtx->state.gfxCtx);
            } else {
                if (&gameplay_keep_Linkanim_00E2B0 ==  player->skelAnime.animation || (&gameplay_keep_Linkanim_00E2A8 == player->skelAnime.animation) || (&gameplay_keep_Linkanim_00D300 == player->skelAnime.animation)) {
                    s32 i;

                    OPEN_DISPS(globalCtx->state.gfxCtx);
                    //spE4 = globalCtx->state.gfxCtx;

                    if (&gameplay_keep_Linkanim_00E2B0 ==  player->skelAnime.animation) {
                        func_80124618(&D_801C0340, player->skelAnime.curFrame, &spD4);
                        player->unk_AF0[0].x = spD4.x;
                        func_80124618(&D_801C0368, player->skelAnime.curFrame, &spF0);
                        phi_s0_4 = &spFC;
                        do {
                            Math_Vec3f_Copy(phi_s0_4, &spF0);
                            phi_s0_4++;
                        } while ((u32) phi_s0_4 < (u32) &sp12C);
                        player->unk_AF0[0].y = spF0.x;
                        player->unk_AF0[0].z = spF0.x;
                        player->unk_AF0[1].x = spF0.x;
                        player->unk_AF0[1].y = spF0.x;
                        player->unk_AF0[1].z = spF0.x;
                    } else {
                        spF0.x = player->unk_AF0[0].y;
                        spF0.y = player->unk_AF0[0].y;
                        temp_s0_9 = (1 * 0xC) + &spF0;
                        spF0.z = player->unk_AF0[0].y;
                        temp_v0_18 = &player->unk_AF0[1].z;
                        temp_s0_9[0].x = (f32) player->unk_AF0[0].z;
                        temp_s0_9[0].y = (f32) player->unk_AF0[0].z;
                        temp_s0_9[0].z = (f32) player->unk_AF0[0].z;
                        temp_s0_9[1].x = (f32) player->unk_AF0[1].x;
                        temp_s0_9[1].y = (f32) player->unk_AF0[1].x;
                        temp_s0_9[1].z = (f32) player->unk_AF0[1].x;
                        temp_s0_9[2].x = (f32) player->unk_AF0[1].y;
                        temp_s0_9[2].y = (f32) player->unk_AF0[1].y;
                        temp_s0_9[2].z = (f32) player->unk_AF0[1].y;
                        temp_s0_9[3].x = (f32) *temp_v0_18;
                        temp_s0_9[3].y = (f32) *temp_v0_18;
                        temp_s0_9[3].z = (f32) *temp_v0_18;
                    }
                    Matrix_StatePush();
                    temp_f12 = player->unk_AF0[0].x;
                    Matrix_Scale(temp_f12, temp_f12, temp_f12, 1);
                    //temp_v0_19 = spE4->polyOpa.p;
                    //spE4->polyOpa.p = temp_v0_19 + 8;
                    //temp_v0_19->words.w0 = 0xDA380003;
                    //temp_v0_19->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                    //temp_v0_20 = spE4->polyOpa.p;
                    //spE4->polyOpa.p = temp_v0_20 + 8;
                    //temp_v0_20->words.w0 = 0xDE000000;
                    //temp_v0_20->words.w1 = (u32) object_link_nuts_DL_007390;
                    gSPDisplayList(POLY_XLU_DISP++, object_link_nuts_DL_007390);
                    Matrix_StatePop();
                    phi_a1_2 = D_801C0E2C;
                    phi_s0_5 = &spF0;
                    
                    for (i = 0; i < 5; i++) {
                        //sp30 = phi_a1_2;
                        Matrix_StatePush();
                        Matrix_Scale(phi_s0_5->x, phi_s0_5->y, phi_s0_5->z, 1);
                        //temp_v0_21 = spE4->polyOpa.p;
                        //spE4->polyOpa.p = temp_v0_21 + 8;
                        //temp_v0_21->words.w0 = 0xDA380003;
                        //spC8->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
                        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
                        //sp30 = phi_a1_2;
                        //spC8 = temp_v0_21;
                        //temp_v0_22 = spE4->polyOpa.p;
                        //spE4->polyOpa.p = temp_v0_22 + 8;
                        //temp_v0_22->words.w0 = 0xDE000000;
                        ////temp_v0_22->words.w1 = (bitwise u32) phi_a1_2->x;
                        //temp_v0_22->words.w1 = phi_a1_2->x;
                        gSPDisplayList(POLY_XLU_DISP++, *phi_a1_2);
                        //sp30 = phi_a1_2;
                        Matrix_StatePop();
                        phi_a1_2++;
                        phi_s0_5++;
                    }

                    CLOSE_DISPS(globalCtx->state.gfxCtx);
                }
            }
        }
        if (((player->stateFlags1 & 0x102) != 0) && (player->unk_AE8 != 0)) {
            OPEN_DISPS(globalCtx->state.gfxCtx);
            temp_s0_10 = &D_801C0E40[player->transformation];
            //spBC = globalCtx->state.gfxCtx;
            Matrix_StatePush();
            AnimatedMat_DrawXlu(globalCtx, Lib_SegmentedToVirtual(gameplay_keep_Matanimheader_054F18));
            Matrix_InsertTranslation(temp_s0_10->x, temp_s0_10->y, 0.0f, 1);
            if (player->transformation == 2) {
                Matrix_Scale(0.7f, 0.7f, 0.7f, 1);
            }
            //temp_v0_23 = spBC->polyXlu.p;
            //spBC->polyXlu.p = temp_v0_23 + 8;
            //temp_v0_23->words.w0 = 0xDA380003;
            //temp_v0_23->words.w1 = Matrix_NewMtx(globalCtx->state.gfxCtx);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            //temp_v0_24 = spBC->polyXlu.p;
            //spBC->polyXlu.p = temp_v0_24 + 8;
            //temp_v0_24->words.w0 = 0xFB000000;
            ////temp_v0_24->words.w1 = player->unk_AE9 | 0xFF00;
            //temp_v0_24->words.w1 = (u8)player->unk_AE8 | 0xFF00;
            gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 255, (u8)player->unk_AE8);
            
            //temp_v0_25 = spBC->polyXlu.p;
            //spBC->polyXlu.p = temp_v0_25 + 8;
            //temp_v0_25->words.w1 = gameplay_keep_DL_054C90;
            //temp_v0_25->words.w0 = 0xDE000000;
            gSPDisplayList(POLY_XLU_DISP++, gameplay_keep_DL_054C90);
            Matrix_StatePop();

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
        if (player->actor.scale.y >= 0.0f) {
            if (player->transformation != 3) {
                Matrix_MultiplyVector3fByState(&D_801C0E7C, &player->actor.focus.pos);
            } else {
                Matrix_MultiplyVector3fByState(&D_801C0E7C, &player->actor.focus.pos);
                Matrix_MultiplyVector3fByState(&D_801C0E94, D_801F59DC);
                if (((&gameplay_keep_Linkanim_00E298 == player->skelAnime.animation) || (&gameplay_keep_Linkanim_00E2F0 == player->unk_284.animation) || (((player->stateFlags3 & 0x40) != 0) && ((player->heldActor != 0)))) && (player->heldActor != 0)) {
                    Matrix_StatePush();
                    Matrix_MultiplyVector3fByState(&D_801C0EA0, &player->heldActor->world.pos);
                    Matrix_InsertRotation(0, 0x4000, 0, 1);
                    Matrix_CopyCurrentState(&sp68);
                    temp_s0_11 = &player->heldActor->world.rot;
                    func_8018219C( &sp68, temp_s0_11, 0);
                    //player->heldActor->unk_BC = (unaligned s32) temp_s0_11->unk_0;
                    //player->heldActor->unk_BC = temp_s0_11->unk_0;
                    player->heldActor->shape.rot = *temp_s0_11;
                    Matrix_StatePop();
                }
            }
        }
    } else if ((limbIndex == 0xC) && (player->stateFlags3 & 0x100000)) {
        Matrix_GetStateTranslationAndScaledX(3000.0f, &sp5C);
        Matrix_GetStateTranslationAndScaledX(2300.0f, &sp50);
        if (func_80126440(globalCtx, NULL, player->swordInfo, &sp5C, &sp50) != 0) {
            EffectBlure_AddVertex(Effect_GetByIndex(player->blureEffectIndex[0]), &player->swordInfo[0].tip, &player->swordInfo[0].base);
        }
    } else if (limbIndex == 5) {
        if ((player->swordState != 0) && ((temp_v0_26 = player->swordAnimation, (temp_v0_26 == 0x1D)) || (temp_v0_26 == 0x12) || (temp_v0_26 == 0x15))) {
            func_8012669C(globalCtx, player, &D_801C0A48, &D_801C0A24);
        }
    } else if (limbIndex == 2) {
        if ((player->swordState != 0) && (player->swordAnimation == 0x1A)) {
            Math_Vec3f_Copy(&player->unk_AF0[1], &player->swordInfo[0].base);
            func_8012669C(globalCtx, player, &D_801C0A90, &D_801C0A6C);
        }
    } else if (limbIndex == 0x14) {
        if ((*dList1 != 0) && (player->transformation == 4) && (player->currentShield != 0) && (((player->sheathType == 0xE)) || (player->sheathType == 0xF))) {
            OPEN_DISPS(globalCtx->state.gfxCtx);

            //temp_a0_2 = globalCtx->state.gfxCtx;
            //temp_v1_6 = temp_a0_2->polyOpa.p;
            //temp_a0_2->polyOpa.p = temp_v1_6 + 8;
            //temp_v1_6->words.w0 = 0xDE000000;
            //temp_v1_6->words.w1 = *(D_801C00AC + ((player->currentShield - 1) * 8));
            gSPDisplayList(POLY_XLU_DISP++, D_801C00AC[player->currentShield - 1][0]);

            CLOSE_DISPS(globalCtx->state.gfxCtx);
        }
        if (player->actor.scale.y >= 0.0f) {
            if (( player->rightHandType != 8) && ( player->rightHandType != 0xFF)) {
                Matrix_JointPosition(&D_801C0EAC, &D_801C0EB8);
                Matrix_CopyCurrentState(&player->shieldMf);
            }
        }
    } else if (player->actor.scale.y >= 0.0f) {
        func_80128B74(globalCtx, player, limbIndex);
    }
    func_8012536C();
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_player_lib/func_80128BD0.s")
#endif
