#ifndef Z64MSGEVENT_H
#define Z64MSGEVENT_H

#include "PR/ultratypes.h"

struct PlayState;
struct Actor;

typedef enum {
    /* 0x00 */ MSCRIPT_CMD_ID_CHECK_WEEK_EVENT_REG,
    /* 0x01 */ MSCRIPT_CMD_ID_CHECK_GORON,
    /* 0x02 */ MSCRIPT_CMD_ID_CHECK_ZORA,
    /* 0x03 */ MSCRIPT_CMD_ID_CHECK_DEKU,
    /* 0x04 */ MSCRIPT_CMD_ID_CHECK_HUMAN,
    /* 0x05 */ MSCRIPT_CMD_ID_CHECK_TEXT_CHOICE,
    /* 0x06 */ MSCRIPT_CMD_ID_OFFER_ITEM,
    /* 0x07 */ MSCRIPT_CMD_ID_AUTOTALK,
    /* 0x08 */ MSCRIPT_CMD_ID_CHECK_RUPEES,
    /* 0x09 */ MSCRIPT_CMD_ID_CHECK_CALLBACK,
    /* 0x0A */ MSCRIPT_CMD_ID_CHECK_DAY,
    /* 0x0B */ MSCRIPT_CMD_ID_AWAIT_TEXT_JUMP,
    /* 0x0C */ MSCRIPT_CMD_ID_AWAIT_TEXT,
    /* 0x0D */ MSCRIPT_CMD_ID_AWAIT_TEXT_END,
    /* 0x0E */ MSCRIPT_CMD_ID_BEGIN_TEXT,
    /* 0x0F */ MSCRIPT_CMD_ID_CONTINUE_TEXT,
    /* 0x10 */ MSCRIPT_CMD_ID_DONE,
    /* 0x11 */ MSCRIPT_CMD_ID_SET_WEEK_EVENT_REG,
    /* 0x12 */ MSCRIPT_CMD_ID_CLOSE_TEXT,
    /* 0x13 */ MSCRIPT_CMD_ID_SET_COLLECTIBLE,
    /* 0x14 */ MSCRIPT_CMD_ID_CHANGE_RUPEES,
    /* 0x15 */ MSCRIPT_CMD_ID_PAUSE,
    /* 0x16 */ MSCRIPT_CMD_ID_UNSET_AUTOTALK,
    /* 0x17 */ MSCRIPT_CMD_ID_FOCUS_TO_CHILD,
    /* 0x18 */ MSCRIPT_CMD_ID_FOCUS_TO_SELF,
    /* 0x19 */ MSCRIPT_CMD_ID_JUMP,
    /* 0x1A */ MSCRIPT_CMD_ID_CHECK_QUEST_ITEM,
    /* 0x1B */ MSCRIPT_CMD_ID_CHECK_EVENT_INF,
    /* 0x1C */ MSCRIPT_CMD_ID_SET_EVENT_INF,
    /* 0x1D */ MSCRIPT_CMD_ID_UNSET_EVENT_INF,
    /* 0x1E */ MSCRIPT_CMD_ID_CHECK_ITEM_ACTION,
    /* 0x1F */ MSCRIPT_CMD_ID_CHECK_HAS_SONG,
    /* 0x20 */ MSCRIPT_CMD_ID_CHECK_WORN_MASK,
    /* 0x21 */ MSCRIPT_CMD_ID_CHECK_AFTER_TIME,
    /* 0x22 */ MSCRIPT_CMD_ID_CHECK_BEFORE_TIME,
    /* 0x23 */ MSCRIPT_CMD_ID_CHECK_SWITCH_FLAG,
    /* 0x24 */ MSCRIPT_CMD_ID_SET_SWITCH_FLAG,
    /* 0x25 */ MSCRIPT_CMD_ID_CHECK_ITEM,
    /* 0x26 */ MSCRIPT_CMD_ID_CHECK_BETWEEN_TIME,
    /* 0x27 */ MSCRIPT_CMD_ID_CHECK_ON_DAY,
    /* 0x28 */ MSCRIPT_CMD_ID_CHECK_CALLBACK_CONTINUE,
    /* 0x29 */ MSCRIPT_CMD_ID_CHECK_HAS_POWDER_KEG,
    /* 0x2A */ MSCRIPT_CMD_ID_DELETE_ITEM,
    /* 0x2B */ MSCRIPT_CMD_ID_CHECK_CALLBACK_MULTI,
    /* 0x2C */ MSCRIPT_CMD_ID_PLAYER_TALK,
    /* 0x2D */ MSCRIPT_CMD_ID_NOTEBOOK_EVENT,
    /* 0x2E */ MSCRIPT_CMD_ID_AWAIT_TEXT_DONE,
    /* 0x2F */ MSCRIPT_CMD_ID_JUMP_3,
    /* 0x30 */ MSCRIPT_CMD_ID_PLAY_DECIDE,
    /* 0x31 */ MSCRIPT_CMD_ID_PLAY_CANCEL,
    /* 0x32 */ MSCRIPT_CMD_ID_PLAY_ERROR,
    /* 0x33 */ MSCRIPT_CMD_ID_MAX
} MsgScriptCommandId;

typedef struct {
    /* 0x0 */ u8 cmd;
} MsgScriptCmdBase;

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagByte;
    /* 0x2 */ u8 flagMask;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckWeekEventReg; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckGoron; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckZora; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckDeku; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckHuman; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offset0H;
    /* 0x2 */ u8 offset0L;
    /* 0x3 */ u8 offset1H;
    /* 0x4 */ u8 offset1L;
    /* 0x5 */ u8 offset2H;
    /* 0x6 */ u8 offset2L;
} MsgScriptCmdCheckTextChoice; // size = 0x7

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 itemIdH;
    /* 0x2 */ u8 itemIdL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdOfferItem; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdAutotalk; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 rupeesH;
    /* 0x2 */ u8 rupeesL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckRupees; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckCallback; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetDay1H;
    /* 0x2 */ u8 offsetDay1L;
    /* 0x3 */ u8 offsetNight1H;
    /* 0x4 */ u8 offsetNight1L;
    /* 0x5 */ u8 offsetDay2H;
    /* 0x6 */ u8 offsetDay2L;
    /* 0x7 */ u8 offsetNight2H;
    /* 0x8 */ u8 offsetNight2L;
    /* 0x9 */ u8 offsetDay3H;
    /* 0xA */ u8 offsetDay3L;
    /* 0xB */ u8 offsetNight3H;
    /* 0xC */ u8 offsetNight3L;
} MsgScriptCmdCheckDay; // size = 0xD

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdAwaitTextJump; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 textIdH;
    /* 0x2 */ u8 textIdL;
} MsgScriptCmdBeginText; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 textIdH;
    /* 0x2 */ u8 textIdL;
} MsgScriptCmdContinueText; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagByte;
    /* 0x2 */ u8 flagMask;
} MsgScriptCmdSetWeekEventReg; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagH;
    /* 0x2 */ u8 flagL;
} MsgScriptCmdSetCollectible; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 rupeesH;
    /* 0x2 */ u8 rupeesL;
} MsgScriptCmdChangeRupees; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdJump; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 questItemH;
    /* 0x2 */ u8 questItemL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckQuestItem; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagByte;
    /* 0x2 */ u8 flagMask;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckEventInf; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagByte;
    /* 0x2 */ u8 flagMask;
} MsgScriptCmdSetEventInf; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagByte;
    /* 0x2 */ u8 flagMask;
} MsgScriptCmdUnsetEventInf; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 itemActionH;
    /* 0x2 */ u8 itemActionL;
    /* 0x3 */ u8 offsetEqualH;
    /* 0x4 */ u8 offsetEqualL;
    /* 0x5 */ u8 offsetDefaultH;
    /* 0x6 */ u8 offsetDefaultL;
    /* 0x7 */ u8 offsetContinueH;
    /* 0x8 */ u8 offsetContinueL;
} MsgScriptCmdCheckItemAction; // size = 0x9

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 songH;
    /* 0x2 */ u8 songL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckHasSong; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 maskH;
    /* 0x2 */ u8 maskL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckWornMask; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 hr;
    /* 0x2 */ u8 min;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckAfterTime; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 hr;
    /* 0x2 */ u8 min;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckBeforeTime; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagH;
    /* 0x2 */ u8 flagL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckSwitchFlag; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 flagH;
    /* 0x2 */ u8 flagL;
} MsgScriptCmdSetSwitchFlag; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 itemH;
    /* 0x2 */ u8 itemL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckItem; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 startHr;
    /* 0x2 */ u8 startMin;
    /* 0x3 */ u8 endHr;
    /* 0x4 */ u8 endMin;
    /* 0x5 */ u8 offsetH;
    /* 0x6 */ u8 offsetL;
} MsgScriptCmdCheckBetweenTime; // size = 0x7

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 dayH;
    /* 0x2 */ u8 dayL;
    /* 0x3 */ u8 offsetH;
    /* 0x4 */ u8 offsetL;
} MsgScriptCmdCheckOnDay; // size = 0x5

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckCallbackContinue; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdCheckHasPowderKeg; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 itemH;
    /* 0x2 */ u8 itemL;
} MsgScriptCmdDeleteItem; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offset1H;
    /* 0x2 */ u8 offset1L;
    /* 0x3 */ u8 offset2H;
    /* 0x4 */ u8 offset2L;
    /* 0x5 */ u8 offset3H;
    /* 0x6 */ u8 offset3L;
} MsgScriptCmdCheckCallbackMulti; // size = 0x7

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 textIdH;
    /* 0x2 */ u8 textIdL;
} MsgScriptCmdPlayerTalk; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 eventH;
    /* 0x2 */ u8 eventL;
} MsgScriptCmdBombersNotebook; // size = 0x3

typedef struct {
    /* 0x0 */ MsgScriptCmdBase base;
    /* 0x1 */ u8 offsetH;
    /* 0x2 */ u8 offsetL;
} MsgScriptCmdJump3; // size = 0x3

typedef u8 MsgScript;

typedef s32 (*MsgEventCallback)(struct Actor* thisx, struct PlayState* play);

typedef s32 (*MsgEventHandler)(struct Actor* actor, struct PlayState* play, u8** scriptPtr, MsgEventCallback callback, s32*);

s32 MsgEvent_RunScript(Actor* actor, struct PlayState* play, MsgScript* cmd, MsgEventCallback callback, s32* pos);

// Command macros

#define MSCRIPT_PACK_8(v) (u8)(v)
#define MSCRIPT_PACK_16(v) (u8)_SHIFTR(v, 8, 8), (u8)_SHIFTR(v, 0, 8)

#define MSCRIPT_CMD_CHECK_WEEK_EVENT_REG(reg, skip) \
    MSCRIPT_CMD_ID_CHECK_WEEK_EVENT_REG, MSCRIPT_PACK_16(reg), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_GORON(skip) \
    MSCRIPT_CMD_ID_CHECK_GORON, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_ZORA(skip) \
    MSCRIPT_CMD_ID_CHECK_ZORA, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_DEKU(skip) \
    MSCRIPT_CMD_ID_CHECK_DEKU, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_HUMAN(skip) \
    MSCRIPT_CMD_ID_CHECK_HUMAN, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_TEXT_CHOICE(skip0, skip1, skip2) \
    MSCRIPT_CMD_ID_CHECK_TEXT_CHOICE, MSCRIPT_PACK_16(skip0), MSCRIPT_PACK_16(skip1), MSCRIPT_PACK_16(skip2)

#define MSCRIPT_CMD_OFFER_ITEM(item, skip) \
    MSCRIPT_CMD_ID_OFFER_ITEM, MSCRIPT_PACK_16(item), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_AUTOTALK(skip) \
    MSCRIPT_CMD_ID_AUTOTALK, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_RUPEES(rupees, skip) \
    MSCRIPT_CMD_ID_CHECK_RUPEES, MSCRIPT_PACK_16(rupees), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_CALLBACK(skip) \
    MSCRIPT_CMD_ID_CHECK_CALLBACK, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_DAY(skipDay1, skipNight1, skipDay2, skipNight2, skipDay3, skipNight3) \
    MSCRIPT_CMD_ID_CHECK_DAY, \
    MSCRIPT_PACK_16(skipDay1), MSCRIPT_PACK_16(skipNight1), \
    MSCRIPT_PACK_16(skipDay2), MSCRIPT_PACK_16(skipNight2), \
    MSCRIPT_PACK_16(skipDay3), MSCRIPT_PACK_16(skipNight3)

#define MSCRIPT_CMD_AWAIT_TEXT_JUMP(skip) \
    MSCRIPT_CMD_ID_AWAIT_TEXT_JUMP, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_AWAIT_TEXT() \
    MSCRIPT_CMD_ID_AWAIT_TEXT

#define MSCRIPT_CMD_AWAIT_TEXT_END() \
    MSCRIPT_CMD_ID_AWAIT_TEXT_END

#define MSCRIPT_CMD_BEGIN_TEXT(arg) \
    MSCRIPT_CMD_ID_BEGIN_TEXT, MSCRIPT_PACK_16(arg)

#define MSCRIPT_CMD_CONTINUE_TEXT(arg) \
    MSCRIPT_CMD_ID_CONTINUE_TEXT, MSCRIPT_PACK_16(arg)

#define MSCRIPT_CMD_DONE() \
    MSCRIPT_CMD_ID_DONE

#define MSCRIPT_CMD_SET_WEEK_EVENT_REG(reg) \
    MSCRIPT_CMD_ID_SET_WEEK_EVENT_REG, MSCRIPT_PACK_16(reg)

#define MSCRIPT_CMD_CLOSE_TEXT() \
    MSCRIPT_CMD_ID_CLOSE_TEXT

#define MSCRIPT_CMD_SET_COLLECTIBLE(collectFlag) \
    MSCRIPT_CMD_ID_SET_COLLECTIBLE, MSCRIPT_PACK_16(collectFlag)

#define MSCRIPT_CMD_CHANGE_RUPEES(num) \
    MSCRIPT_CMD_ID_CHANGE_RUPEES, MSCRIPT_PACK_16(num)

#define MSCRIPT_CMD_PAUSE() \
    MSCRIPT_CMD_ID_PAUSE

#define MSCRIPT_CMD_UNSET_AUTOTALK() \
    MSCRIPT_CMD_ID_UNSET_AUTOTALK

#define MSCRIPT_CMD_FOCUS_TO_CHILD() \
    MSCRIPT_CMD_ID_FOCUS_TO_CHILD

#define MSCRIPT_CMD_FOCUS_TO_SELF() \
    MSCRIPT_CMD_ID_FOCUS_TO_SELF

#define MSCRIPT_CMD_JUMP(skip) \
    MSCRIPT_CMD_ID_JUMP, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_QUEST_ITEM(questItem, skip) \
    MSCRIPT_CMD_ID_CHECK_QUEST_ITEM, MSCRIPT_PACK_16(questItem), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_EVENT_INF(flag, skip) \
    MSCRIPT_CMD_ID_CHECK_EVENT_INF, MSCRIPT_PACK_8(((flag) >> 4)), MSCRIPT_PACK_8((1 << ((flag) & 0xF))), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_SET_EVENT_INF(flag) \
    MSCRIPT_CMD_ID_SET_EVENT_INF, MSCRIPT_PACK_8(((flag) >> 4)), MSCRIPT_PACK_8((1 << ((flag) & 0xF)))

#define MSCRIPT_CMD_EVENT_INF(flag) \
    MSCRIPT_CMD_ID_UNSET_EVENT_INF, MSCRIPT_PACK_8(((flag) >> 4)), MSCRIPT_PACK_8((1 << ((flag) & 0xF)))

#define MSCRIPT_CMD_CHECK_ITEM_ACTION(itemAction, skipEqual, skipDefault, skipContinue) \
    MSCRIPT_CMD_ID_CHECK_ITEM_ACTION, MSCRIPT_PACK_16(itemAction), MSCRIPT_PACK_16(skipEqual), MSCRIPT_PACK_16(skipDefault), MSCRIPT_PACK_16(skipContinue)

#define MSCRIPT_CMD_CHECK_HAS_SONG(questItem, skip) \
    MSCRIPT_CMD_ID_CHECK_HAS_SONG, MSCRIPT_PACK_16(questItem), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_WORN_MASK(mask, skip) \
    MSCRIPT_CMD_ID_CHECK_WORN_MASK, MSCRIPT_PACK_16(mask), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_AFTER_TIME(hours, minutes, skip) \
    MSCRIPT_CMD_ID_CHECK_AFTER_TIME, MSCRIPT_PACK_8(hours), MSCRIPT_PACK_8(minutes), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_BEFORE_TIME(hours, minutes, skip) \
    MSCRIPT_CMD_ID_CHECK_BEFORE_TIME, MSCRIPT_PACK_8(hours), MSCRIPT_PACK_8(minutes), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_SWITCH_FLAG(switchFlag, skip) \
    MSCRIPT_CMD_ID_CHECK_SWITCH_FLAG, MSCRIPT_PACK_16(switchFlag), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_SET_SWITCH_FLAG(switchFlag) \
    MSCRIPT_CMD_ID_SET_SWITCH_FLAG, MSCRIPT_PACK_16(switchFlag)

#define MSCRIPT_CMD_CHECK_ITEM(item, skip) \
    MSCRIPT_CMD_ID_CHECK_ITEM, MSCRIPT_PACK_16(item), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_BETWEEN_TIME(hours1, minutes1, hours2, minutes2, skip) \
    MSCRIPT_CMD_ID_CHECK_BETWEEN_TIME, MSCRIPT_PACK_8(hours1), MSCRIPT_PACK_8(minutes1), MSCRIPT_PACK_8(hours2), MSCRIPT_PACK_8(minutes2), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_IN_DAY(day, skip) \
    MSCRIPT_CMD_ID_CHECK_ON_DAY, MSCRIPT_PACK_16(day), MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_CALLBACK_CONTINUE(skip) \
    MSCRIPT_CMD_ID_CHECK_CALLBACK_CONTINUE, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_CHECK_HAS_POWDER_KEG(skip) \
    MSCRIPT_CMD_ID_CHECK_HAS_POWDER_KEG, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_DELETE_ITEM(item) \
    MSCRIPT_CMD_ID_DELETE_ITEM, MSCRIPT_PACK_16(item)

#define MSCRIPT_CMD_CHECK_CALLBACK_MULTI(skip1, skip2, skip3) \
    MSCRIPT_CMD_ID_CHECK_CALLBACK_MULTI, MSCRIPT_PACK_16(skip1), MSCRIPT_PACK_16(skip2), MSCRIPT_PACK_16(skip3)

#define MSCRIPT_CMD_PLAYER_TALK(textId) \
    MSCRIPT_CMD_ID_PLAYER_TALK, MSCRIPT_PACK_16(textId)

#define MSCRIPT_CMD_NOTEBOOK_EVENT(event) \
    MSCRIPT_CMD_ID_NOTEBOOK_EVENT, MSCRIPT_PACK_16(event)

#define MSCRIPT_CMD_AWAIT_TEXT_DONE() \
    MSCRIPT_CMD_ID_AWAIT_TEXT_DONE

#define MSCRIPT_CMD_JUMP_3(skip) \
    MSCRIPT_CMD_ID_JUMP_3, MSCRIPT_PACK_16(skip)

#define MSCRIPT_CMD_PLAY_DECIDE() \
    MSCRIPT_CMD_ID_PLAY_DECIDE

#define MSCRIPT_CMD_PLAY_CANCEL() \
    MSCRIPT_CMD_ID_PLAY_CANCEL

#define MSCRIPT_CMD_PLAY_ERROR() \
    MSCRIPT_CMD_ID_PLAY_ERROR

#endif
