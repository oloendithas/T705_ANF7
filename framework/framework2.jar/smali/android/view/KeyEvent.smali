.class public Landroid/view/KeyEvent;
.super Landroid/view/InputEvent;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyEvent$DispatcherState;,
        Landroid/view/KeyEvent$Callback;
    }
.end annotation


# static fields
.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MULTIPLE:I = 0x2

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final FLAG_CANCELED:I = 0x20

.field public static final FLAG_CANCELED_LONG_PRESS:I = 0x100

.field public static final FLAG_EDITOR_ACTION:I = 0x10

.field public static final FLAG_FALLBACK:I = 0x400

.field public static final FLAG_FROM_SYSTEM:I = 0x8

.field public static final FLAG_KEEP_TOUCH_MODE:I = 0x4

.field public static final FLAG_LONG_PRESS:I = 0x80

.field public static final FLAG_PREDISPATCH:I = 0x20000000

.field public static final FLAG_SOFT_KEYBOARD:I = 0x2

.field public static final FLAG_START_TRACKING:I = 0x40000000

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TRACKING:I = 0x200

.field public static final FLAG_VIRTUAL_HARD_KEY:I = 0x40

.field public static final FLAG_WOKE_HERE:I = 0x1

.field public static final KEYCODE_0:I = 0x7

.field public static final KEYCODE_1:I = 0x8

.field public static final KEYCODE_2:I = 0x9

.field public static final KEYCODE_3:I = 0xa

.field public static final KEYCODE_3D_MODE:I = 0xce

.field public static final KEYCODE_3G:I = 0x103

.field public static final KEYCODE_4:I = 0xb

.field public static final KEYCODE_5:I = 0xc

.field public static final KEYCODE_6:I = 0xd

.field public static final KEYCODE_7:I = 0xe

.field public static final KEYCODE_8:I = 0xf

.field public static final KEYCODE_9:I = 0x10

.field public static final KEYCODE_A:I = 0x1d

.field public static final KEYCODE_ACTIVE:I = 0x120

.field public static final KEYCODE_ALT_GR:I = 0xe9

.field public static final KEYCODE_ALT_LEFT:I = 0x39

.field public static final KEYCODE_ALT_RIGHT:I = 0x3a

.field public static final KEYCODE_APOSTROPHE:I = 0x4b

.field public static final KEYCODE_APPLICATION:I = 0xe1

.field public static final KEYCODE_APP_SWITCH:I = 0xbb

.field public static final KEYCODE_ASSIST:I = 0xdb

.field public static final KEYCODE_AT:I = 0x4d

.field public static final KEYCODE_AVR_INPUT:I = 0xb6

.field public static final KEYCODE_AVR_POWER:I = 0xb5

.field public static final KEYCODE_B:I = 0x1e

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BACKSLASH:I = 0x49

.field public static final KEYCODE_BLUETOOTH:I = 0x104

.field public static final KEYCODE_BOOKMARK:I = 0xae

.field public static final KEYCODE_BREAK:I = 0x79

.field public static final KEYCODE_BRIGHTNESS_DOWN:I = 0xdc

.field public static final KEYCODE_BRIGHTNESS_UP:I = 0xdd

.field public static final KEYCODE_BUTTON_1:I = 0xbc

.field public static final KEYCODE_BUTTON_10:I = 0xc5

.field public static final KEYCODE_BUTTON_11:I = 0xc6

.field public static final KEYCODE_BUTTON_12:I = 0xc7

.field public static final KEYCODE_BUTTON_13:I = 0xc8

.field public static final KEYCODE_BUTTON_14:I = 0xc9

.field public static final KEYCODE_BUTTON_15:I = 0xca

.field public static final KEYCODE_BUTTON_16:I = 0xcb

.field public static final KEYCODE_BUTTON_2:I = 0xbd

.field public static final KEYCODE_BUTTON_3:I = 0xbe

.field public static final KEYCODE_BUTTON_4:I = 0xbf

.field public static final KEYCODE_BUTTON_5:I = 0xc0

.field public static final KEYCODE_BUTTON_6:I = 0xc1

.field public static final KEYCODE_BUTTON_7:I = 0xc2

.field public static final KEYCODE_BUTTON_8:I = 0xc3

.field public static final KEYCODE_BUTTON_9:I = 0xc4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_GAME:I = 0x111

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_C:I = 0x1f

.field public static final KEYCODE_CALCULATOR:I = 0xd2

.field public static final KEYCODE_CALENDAR:I = 0xd0

.field public static final KEYCODE_CALL:I = 0x5

.field public static final KEYCODE_CAMERA:I = 0x1b

.field public static final KEYCODE_CAMERA_FLASH:I = 0xfb

.field public static final KEYCODE_CAMERA_FOCUS_RING_LEFT:I = 0xfd

.field public static final KEYCODE_CAMERA_FOCUS_RING_RIGHT:I = 0xfe

.field public static final KEYCODE_CAMERA_FUNCTION:I = 0xfc

.field public static final KEYCODE_CAMERA_RECORD:I = 0xf5

.field public static final KEYCODE_CAMERA_ZOOM_RING_IN:I = 0xff

.field public static final KEYCODE_CAMERA_ZOOM_RING_MOVE:I = 0x101

.field public static final KEYCODE_CAMERA_ZOOM_RING_OUT:I = 0x100

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED1:I = 0x105

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED2:I = 0x106

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED3:I = 0x107

.field public static final KEYCODE_CAMERA_ZOOM_RING_SPEED4:I = 0x108

.field public static final KEYCODE_CAM_QUICK:I = 0x121

.field public static final KEYCODE_CAPS_LOCK:I = 0x73

.field public static final KEYCODE_CAPTIONS:I = 0xaf

.field public static final KEYCODE_CHANNEL_DOWN:I = 0xa7

.field public static final KEYCODE_CHANNEL_UP:I = 0xa6

.field public static final KEYCODE_CLEAR:I = 0x1c

.field public static final KEYCODE_CLIPBOARD:I = 0xe8

.field public static final KEYCODE_COMMA:I = 0x37

.field public static final KEYCODE_CONTACTS:I = 0xcf

.field public static final KEYCODE_CTRL_LEFT:I = 0x71

.field public static final KEYCODE_CTRL_RIGHT:I = 0x72

.field public static final KEYCODE_D:I = 0x20

.field public static final KEYCODE_DEL:I = 0x43

.field public static final KEYCODE_DMB_ANT_CLOSE:I = 0xf1

.field public static final KEYCODE_DMB_ANT_OPEN:I = 0xf0

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_DUMMY_BACK:I = 0xf8

.field public static final KEYCODE_DUMMY_HOME:I = 0xf7

.field public static final KEYCODE_DUMMY_HOME1:I = 0xf9

.field public static final KEYCODE_DUMMY_HOME2:I = 0xfa

.field public static final KEYCODE_DUMMY_MENU:I = 0xf6

.field public static final KEYCODE_DVR:I = 0xad

.field public static final KEYCODE_E:I = 0x21

.field public static final KEYCODE_EISU:I = 0xd4

.field public static final KEYCODE_EMAIL:I = 0xe7

.field public static final KEYCODE_END:I = 0x102

.field public static final KEYCODE_ENDCALL:I = 0x6

.field public static final KEYCODE_ENTER:I = 0x42

.field public static final KEYCODE_ENVELOPE:I = 0x41

.field public static final KEYCODE_EQUALS:I = 0x46

.field public static final KEYCODE_ESCAPE:I = 0x6f

.field public static final KEYCODE_EXPLORER:I = 0x40

.field public static final KEYCODE_F:I = 0x22

.field public static final KEYCODE_F1:I = 0x83

.field public static final KEYCODE_F10:I = 0x8c

.field public static final KEYCODE_F11:I = 0x8d

.field public static final KEYCODE_F12:I = 0x8e

.field public static final KEYCODE_F2:I = 0x84

.field public static final KEYCODE_F3:I = 0x85

.field public static final KEYCODE_F4:I = 0x86

.field public static final KEYCODE_F5:I = 0x87

.field public static final KEYCODE_F6:I = 0x88

.field public static final KEYCODE_F7:I = 0x89

.field public static final KEYCODE_F8:I = 0x8a

.field public static final KEYCODE_F9:I = 0x8b

.field public static final KEYCODE_FINGER_DETECTED:I = 0x10c

.field public static final KEYCODE_FINGER_REMOVED:I = 0x10d

.field public static final KEYCODE_FOCUS:I = 0x50

.field public static final KEYCODE_FORWARD:I = 0x7d

.field public static final KEYCODE_FORWARD_DEL:I = 0x70

.field public static final KEYCODE_FUNCTION:I = 0x77

.field public static final KEYCODE_G:I = 0x23

.field public static final KEYCODE_GRAVE:I = 0x44

.field public static final KEYCODE_GUIDE:I = 0xac

.field public static final KEYCODE_H:I = 0x24

.field public static final KEYCODE_HEADSETHOOK:I = 0x4f

.field public static final KEYCODE_HENKAN:I = 0xd6

.field public static final KEYCODE_HOME:I = 0x3

.field public static final KEYCODE_I:I = 0x25

.field public static final KEYCODE_INFO:I = 0xa5

.field public static final KEYCODE_INSERT:I = 0x7c

.field public static final KEYCODE_J:I = 0x26

.field public static final KEYCODE_JOG_LEFT:I = 0xf2

.field public static final KEYCODE_JOG_RIGHT:I = 0xf3

.field public static final KEYCODE_JOG_SELECT:I = 0xf4

.field public static final KEYCODE_K:I = 0x27

.field public static final KEYCODE_KANA:I = 0xda

.field public static final KEYCODE_KATAKANA_HIRAGANA:I = 0xd7

.field public static final KEYCODE_L:I = 0x28

.field public static final KEYCODE_LANG:I = 0xe4

.field public static final KEYCODE_LANGUAGE_SWITCH:I = 0xcc

.field public static final KEYCODE_LEFT_BRACKET:I = 0x47

.field public static final KEYCODE_LOCK:I = 0xea

.field public static final KEYCODE_M:I = 0x29

.field public static final KEYCODE_MANNER_MODE:I = 0xcd

.field public static final KEYCODE_MEDIA_AUDIO_TRACK:I = 0xde

.field public static final KEYCODE_MEDIA_CLOSE:I = 0x80

.field public static final KEYCODE_MEDIA_EJECT:I = 0x81

.field public static final KEYCODE_MEDIA_FAST_FORWARD:I = 0x5a

.field public static final KEYCODE_MEDIA_NEXT:I = 0x57

.field public static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field public static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field public static final KEYCODE_MEDIA_PLAY_PAUSE:I = 0x55

.field public static final KEYCODE_MEDIA_PREVIOUS:I = 0x58

.field public static final KEYCODE_MEDIA_RECORD:I = 0x82

.field public static final KEYCODE_MEDIA_REWIND:I = 0x59

.field public static final KEYCODE_MEDIA_STOP:I = 0x56

.field public static final KEYCODE_MENU:I = 0x52

.field public static final KEYCODE_META_LEFT:I = 0x75

.field public static final KEYCODE_META_RIGHT:I = 0x76

.field public static final KEYCODE_MINIMODE_ON_OFF:I = 0xdf

.field public static final KEYCODE_MINUS:I = 0x45

.field public static final KEYCODE_MOUSE_ACTION:I = 0x11b

.field public static final KEYCODE_MOVE_END:I = 0x7b

.field public static final KEYCODE_MOVE_HOME:I = 0x7a

.field public static final KEYCODE_MUHENKAN:I = 0xd5

.field public static final KEYCODE_MULTI_WINDOW:I = 0x11c

.field public static final KEYCODE_MUSIC:I = 0xd1

.field public static final KEYCODE_MUTE:I = 0x5b

.field public static final KEYCODE_N:I = 0x2a

.field public static final KEYCODE_NETWORK_SEL:I = 0x10e

.field public static final KEYCODE_NOTIFICATION:I = 0x53

.field public static final KEYCODE_NUM:I = 0x4e

.field public static final KEYCODE_NUMPAD_0:I = 0x90

.field public static final KEYCODE_NUMPAD_1:I = 0x91

.field public static final KEYCODE_NUMPAD_2:I = 0x92

.field public static final KEYCODE_NUMPAD_3:I = 0x93

.field public static final KEYCODE_NUMPAD_4:I = 0x94

.field public static final KEYCODE_NUMPAD_5:I = 0x95

.field public static final KEYCODE_NUMPAD_6:I = 0x96

.field public static final KEYCODE_NUMPAD_7:I = 0x97

.field public static final KEYCODE_NUMPAD_8:I = 0x98

.field public static final KEYCODE_NUMPAD_9:I = 0x99

.field public static final KEYCODE_NUMPAD_ADD:I = 0x9d

.field public static final KEYCODE_NUMPAD_COMMA:I = 0x9f

.field public static final KEYCODE_NUMPAD_DIVIDE:I = 0x9a

.field public static final KEYCODE_NUMPAD_DOT:I = 0x9e

.field public static final KEYCODE_NUMPAD_ENTER:I = 0xa0

.field public static final KEYCODE_NUMPAD_EQUALS:I = 0xa1

.field public static final KEYCODE_NUMPAD_LEFT_PAREN:I = 0xa2

.field public static final KEYCODE_NUMPAD_MULTIPLY:I = 0x9b

.field public static final KEYCODE_NUMPAD_RIGHT_PAREN:I = 0xa3

.field public static final KEYCODE_NUMPAD_SUBTRACT:I = 0x9c

.field public static final KEYCODE_NUM_LOCK:I = 0x8f

.field public static final KEYCODE_O:I = 0x2b

.field public static final KEYCODE_P:I = 0x2c

.field public static final KEYCODE_PAGE_DOWN:I = 0x5d

.field public static final KEYCODE_PAGE_UP:I = 0x5c

.field public static final KEYCODE_PDCT:I = 0xef

.field public static final KEYCODE_PERIOD:I = 0x38

.field public static final KEYCODE_PICTSYMBOLS:I = 0x5e

.field public static final KEYCODE_PLUS:I = 0x51

.field public static final KEYCODE_POUND:I = 0x12

.field public static final KEYCODE_POWER:I = 0x1a

.field public static final KEYCODE_PROG_BLUE:I = 0xba

.field public static final KEYCODE_PROG_GREEN:I = 0xb8

.field public static final KEYCODE_PROG_RED:I = 0xb7

.field public static final KEYCODE_PROG_YELLOW:I = 0xb9

.field public static final KEYCODE_Q:I = 0x2d

.field public static final KEYCODE_QPANEL_ON_OFF:I = 0xe2

.field public static final KEYCODE_QUESTION:I = 0xed

.field public static final KEYCODE_R:I = 0x2e

.field public static final KEYCODE_RECENTAPPS:I = 0xe0

.field public static final KEYCODE_RIGHT_BRACKET:I = 0x48

.field public static final KEYCODE_RO:I = 0xd9

.field public static final KEYCODE_S:I = 0x2f

.field public static final KEYCODE_SCREEN_CAPTURE:I = 0xe3

.field public static final KEYCODE_SCROLL_LOCK:I = 0x74

.field public static final KEYCODE_SEARCH:I = 0x54

.field public static final KEYCODE_SEMICOLON:I = 0x4a

.field public static final KEYCODE_SETTINGS:I = 0xb0

.field public static final KEYCODE_SFINDER:I = 0x11f

.field public static final KEYCODE_SHIFT_LEFT:I = 0x3b

.field public static final KEYCODE_SHIFT_RIGHT:I = 0x3c

.field public static final KEYCODE_SIDE_CAMERA_DETECTED:I = 0x11a

.field public static final KEYCODE_SIDE_TOUCH_0:I = 0x112

.field public static final KEYCODE_SIDE_TOUCH_1:I = 0x113

.field public static final KEYCODE_SIDE_TOUCH_2:I = 0x114

.field public static final KEYCODE_SIDE_TOUCH_3:I = 0x115

.field public static final KEYCODE_SIDE_TOUCH_4:I = 0x116

.field public static final KEYCODE_SIDE_TOUCH_5:I = 0x117

.field public static final KEYCODE_SIDE_TOUCH_6:I = 0x118

.field public static final KEYCODE_SIDE_TOUCH_7:I = 0x119

.field public static final KEYCODE_SIM:I = 0x10f

.field public static final KEYCODE_SIP_ON_OFF:I = 0xe5

.field public static final KEYCODE_SLASH:I = 0x4c

.field public static final KEYCODE_SOFT_LEFT:I = 0x1

.field public static final KEYCODE_SOFT_RIGHT:I = 0x2

.field public static final KEYCODE_SPACE:I = 0x3e

.field public static final KEYCODE_SPEAKER:I = 0xeb

.field public static final KEYCODE_STAR:I = 0x11

.field public static final KEYCODE_STB_INPUT:I = 0xb4

.field public static final KEYCODE_STB_POWER:I = 0xb3

.field public static final KEYCODE_SWITCH_CHARSET:I = 0x5f

.field public static final KEYCODE_SYM:I = 0x3f

.field private static final KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEYCODE_SYSRQ:I = 0x78

.field public static final KEYCODE_T:I = 0x30

.field public static final KEYCODE_TAB:I = 0x3d

.field public static final KEYCODE_TEXT:I = 0xec

.field public static final KEYCODE_TV:I = 0xaa

.field public static final KEYCODE_TV_INPUT:I = 0xb2

.field public static final KEYCODE_TV_POWER:I = 0xb1

.field public static final KEYCODE_U:I = 0x31

.field public static final KEYCODE_UNKNOWN:I = 0x0

.field public static final KEYCODE_USER:I = 0xee

.field public static final KEYCODE_V:I = 0x32

.field public static final KEYCODE_VIRTUALEYE_BUTTON:I = 0x10a

.field public static final KEYCODE_VOICEMEMO_BUTTON:I = 0x10b

.field public static final KEYCODE_VOICESEARCH:I = 0xe6

.field public static final KEYCODE_VOICE_WAKEUP:I = 0x11d

.field public static final KEYCODE_VOICE_WAKEUP_LPSD:I = 0x11e

.field public static final KEYCODE_VOLUME_DOWN:I = 0x19

.field public static final KEYCODE_VOLUME_MUTE:I = 0xa4

.field public static final KEYCODE_VOLUME_UP:I = 0x18

.field public static final KEYCODE_W:I = 0x33

.field public static final KEYCODE_WATCH:I = 0x110

.field public static final KEYCODE_WINDOW:I = 0xab

.field public static final KEYCODE_WPS_BUTTON:I = 0x109

.field public static final KEYCODE_X:I = 0x34

.field public static final KEYCODE_Y:I = 0x35

.field public static final KEYCODE_YEN:I = 0xd8

.field public static final KEYCODE_Z:I = 0x36

.field public static final KEYCODE_ZENKAKU_HANKAKU:I = 0xd3

.field public static final KEYCODE_ZOOM_IN:I = 0xa8

.field public static final KEYCODE_ZOOM_OUT:I = 0xa9

.field private static final LAST_KEYCODE:I = 0x121

.field public static final MAX_KEYCODE:I = 0x54
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final META_ALL_MASK:I = 0x7770ff

.field public static final META_ALT_GR_ON:I = 0x8000

.field public static final META_ALT_LEFT_ON:I = 0x10

.field public static final META_ALT_LOCKED:I = 0x200

.field public static final META_ALT_MASK:I = 0x32

.field public static final META_ALT_ON:I = 0x2

.field public static final META_ALT_RIGHT_ON:I = 0x20

.field public static final META_CAPS_LOCK_ON:I = 0x100000

.field public static final META_CAP_LOCKED:I = 0x100

.field public static final META_CTRL_LEFT_ON:I = 0x2000

.field public static final META_CTRL_MASK:I = 0x7000

.field public static final META_CTRL_ON:I = 0x1000

.field public static final META_CTRL_RIGHT_ON:I = 0x4000

.field public static final META_FUNCTION_ON:I = 0x8

.field private static final META_INVALID_MODIFIER_MASK:I = 0x700f00

.field private static final META_LOCK_MASK:I = 0x700000

.field public static final META_META_LEFT_ON:I = 0x20000

.field public static final META_META_MASK:I = 0x70000

.field public static final META_META_ON:I = 0x10000

.field public static final META_META_RIGHT_ON:I = 0x40000

.field private static final META_MODIFIER_MASK:I = 0x770ff

.field public static final META_NUM_LOCK_ON:I = 0x200000

.field public static final META_SCROLL_LOCK_ON:I = 0x400000

.field public static final META_SELECTING:I = 0x800

.field public static final META_SHIFT_LEFT_ON:I = 0x40

.field public static final META_SHIFT_MASK:I = 0xc1

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SHIFT_RIGHT_ON:I = 0x80

.field private static final META_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final META_SYM_LOCKED:I = 0x400

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYNTHETIC_MASK:I = 0xf00

.field static final TAG:Ljava/lang/String; = "KeyEvent"

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/KeyEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mCharacters:Ljava/lang/String;

.field private mDeviceId:I

.field private mDisplayId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mFlags:I

.field private mKeyCode:I

.field private mMetaState:I

.field private mNext:Landroid/view/KeyEvent;

.field private mRepeatCount:I

.field private mScanCode:I

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1001
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1330
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META_SHIFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "META_ALT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "META_SYM_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "META_FUNCTION_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "META_ALT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "META_ALT_RIGHT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "META_SHIFT_LEFT_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "META_SHIFT_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "META_CAP_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "META_ALT_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "META_SYM_LOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0x00000800"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "META_CTRL_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "META_CTRL_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "META_CTRL_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0x00008000"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "META_META_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "META_META_LEFT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "META_META_RIGHT_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "0x00080000"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "META_CAPS_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "META_NUM_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "META_SCROLL_LOCK_ON"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "0x00800000"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "0x01000000"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "0x02000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0x04000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "0x08000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "0x10000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "0x20000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "0x40000000"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "0x80000000"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1739
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1816
    invoke-static {}, Landroid/view/KeyEvent;->populateKeycodeSymbolicNames()V

    .line 3479
    new-instance v0, Landroid/view/KeyEvent$1;

    invoke-direct {v0}, Landroid/view/KeyEvent$1;-><init>()V

    sput-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1819
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1820
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v1, 0x0

    .line 1829
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1830
    iput p1, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1831
    iput p2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1832
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1833
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1834
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1835
    return-void
.end method

.method public constructor <init>(JJIII)V
    .registers 9
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I

    .prologue
    .line 1851
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1852
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1853
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1854
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1855
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1856
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1857
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1858
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1859
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .registers 10
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I

    .prologue
    .line 1876
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1877
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1878
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1879
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1880
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1881
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1882
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1883
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1884
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1885
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .registers 12
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I

    .prologue
    .line 1905
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1906
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1907
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1908
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1909
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1910
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1911
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1912
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1913
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1914
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1915
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .registers 13
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I

    .prologue
    .line 1936
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1937
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1938
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1939
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1940
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1941
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1942
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1943
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1944
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1945
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1946
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1947
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .registers 14
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I

    .prologue
    .line 1969
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1970
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 1971
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 1972
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 1973
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 1974
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 1975
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 1976
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 1977
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 1978
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 1979
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 1980
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 1981
    return-void
.end method

.method public constructor <init>(JJIIIIIIIII)V
    .registers 14
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "code"    # I
    .param p7, "repeat"    # I
    .param p8, "metaState"    # I
    .param p9, "deviceId"    # I
    .param p10, "scancode"    # I
    .param p11, "flags"    # I
    .param p12, "source"    # I
    .param p13, "displayId"    # I

    .prologue
    .line 2005
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2006
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2007
    iput-wide p3, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2008
    iput p5, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2009
    iput p6, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2010
    iput p7, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2011
    iput p8, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2012
    iput p9, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2013
    iput p10, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2014
    iput p11, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2015
    iput p12, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2016
    iput p13, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2017
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "characters"    # Ljava/lang/String;
    .param p4, "deviceId"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 2031
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2032
    iput-wide p1, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2033
    iput-wide p1, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2034
    iput-object p3, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2035
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2036
    iput v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2037
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2038
    iput p4, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2039
    iput p5, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2040
    iput v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2041
    const/16 v0, 0x101

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2042
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3496
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 3497
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 3498
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 3499
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 3503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 3504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 3506
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 3507
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 3508
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "origEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 2047
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2048
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2049
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2050
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2051
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2052
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2053
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2054
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2055
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2056
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2057
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2058
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2059
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2060
    return-void
.end method

.method private constructor <init>(Landroid/view/KeyEvent;I)V
    .registers 5
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "action"    # I

    .prologue
    .line 2247
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2248
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2249
    iget-wide v0, p1, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2250
    iput p2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2251
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2252
    iget v0, p1, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2253
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2254
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2255
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2256
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2257
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2258
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2261
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;JI)V
    .registers 7
    .param p1, "origEvent"    # Landroid/view/KeyEvent;
    .param p2, "eventTime"    # J
    .param p4, "newRepeat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2074
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 2075
    iget-wide v0, p1, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2076
    iput-wide p2, p0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2077
    iget v0, p1, Landroid/view/KeyEvent;->mAction:I

    iput v0, p0, Landroid/view/KeyEvent;->mAction:I

    .line 2078
    iget v0, p1, Landroid/view/KeyEvent;->mKeyCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2079
    iput p4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2080
    iget v0, p1, Landroid/view/KeyEvent;->mMetaState:I

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2081
    iget v0, p1, Landroid/view/KeyEvent;->mDeviceId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2082
    iget v0, p1, Landroid/view/KeyEvent;->mSource:I

    iput v0, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2083
    iget v0, p1, Landroid/view/KeyEvent;->mScanCode:I

    iput v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2084
    iget v0, p1, Landroid/view/KeyEvent;->mFlags:I

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2085
    iget v0, p1, Landroid/view/KeyEvent;->mDisplayId:I

    iput v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2086
    iget-object v0, p1, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2087
    return-void
.end method

.method static synthetic access$076(Landroid/view/KeyEvent;I)I
    .registers 3
    .param p0, "x0"    # Landroid/view/KeyEvent;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .prologue
    .line 3389
    packed-switch p0, :pswitch_data_12

    .line 3397
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 3391
    :pswitch_8
    const-string v0, "ACTION_DOWN"

    goto :goto_7

    .line 3393
    :pswitch_b
    const-string v0, "ACTION_UP"

    goto :goto_7

    .line 3395
    :pswitch_e
    const-string v0, "ACTION_MULTIPLE"

    goto :goto_7

    .line 3389
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "action"    # I

    .prologue
    .line 2271
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;I)V

    return-object v0
.end method

.method public static changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .registers 3
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "flags"    # I

    .prologue
    .line 2282
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2283
    .end local p0    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    iput p1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2284
    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;
    .registers 5
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I

    .prologue
    .line 2218
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;JI)V

    return-object v0
.end method

.method public static changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;
    .registers 6
    .param p0, "event"    # Landroid/view/KeyEvent;
    .param p1, "eventTime"    # J
    .param p3, "newRepeat"    # I
    .param p4, "newFlags"    # I

    .prologue
    .line 2234
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 2235
    .local v0, "ret":Landroid/view/KeyEvent;
    iput-wide p1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2236
    iput p3, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2237
    iput p4, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2238
    return-object v0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3493
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, p0}, Landroid/view/KeyEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static getDeadChar(II)I
    .registers 3
    .param p0, "accent"    # I
    .param p1, "c"    # I

    .prologue
    .line 1732
    invoke-static {p0, p1}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    return v0
.end method

.method public static getMaxKeyCode()I
    .registers 1

    .prologue
    .line 1723
    const/16 v0, 0x121

    return v0
.end method

.method public static getModifierMetaStateMask()I
    .registers 1

    .prologue
    .line 2518
    const v0, 0x770ff

    return v0
.end method

.method public static final isConfirmKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2374
    sparse-switch p0, :sswitch_data_8

    .line 2379
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2377
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2374
    nop

    :sswitch_data_8
    .sparse-switch
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method public static final isGamepadButton(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2332
    sparse-switch p0, :sswitch_data_8

    .line 2366
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2364
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2332
    nop

    :sswitch_data_8
    .sparse-switch
        0x60 -> :sswitch_5
        0x61 -> :sswitch_5
        0x62 -> :sswitch_5
        0x63 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
        0x6a -> :sswitch_5
        0x6b -> :sswitch_5
        0x6c -> :sswitch_5
        0x6d -> :sswitch_5
        0x6e -> :sswitch_5
        0xbc -> :sswitch_5
        0xbd -> :sswitch_5
        0xbe -> :sswitch_5
        0xbf -> :sswitch_5
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_5
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_5
        0xca -> :sswitch_5
        0xcb -> :sswitch_5
    .end sparse-switch
.end method

.method public static isModifierKey(I)Z
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 2538
    sparse-switch p0, :sswitch_data_8

    .line 2553
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2551
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 2538
    nop

    :sswitch_data_8
    .sparse-switch
        0x39 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3f -> :sswitch_5
        0x4e -> :sswitch_5
        0x71 -> :sswitch_5
        0x72 -> :sswitch_5
        0x75 -> :sswitch_5
        0x76 -> :sswitch_5
        0x77 -> :sswitch_5
        0xe9 -> :sswitch_5
    .end sparse-switch
.end method

.method public static keyCodeFromString(Ljava/lang/String;)I
    .registers 6
    .param p0, "symbolicName"    # Ljava/lang/String;

    .prologue
    .line 3425
    if-nez p0, :cond_b

    .line 3426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "symbolicName must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3429
    :cond_b
    sget-object v3, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3430
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 3431
    sget-object v3, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 3439
    .end local v2    # "i":I
    :goto_20
    return v2

    .line 3430
    .restart local v2    # "i":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3437
    :cond_24
    const/16 v3, 0xa

    :try_start_26
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b

    move-result v2

    goto :goto_20

    .line 3438
    :catch_2b
    move-exception v1

    .line 3439
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static keyCodeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "keyCode"    # I

    .prologue
    .line 3412
    sget-object v1, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3413
    .local v0, "symbolicName":Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0    # "symbolicName":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "symbolicName":Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .registers 11
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I
    .param p2, "basic"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2679
    and-int v4, p1, p2

    if-eqz v4, :cond_4b

    move v1, v2

    .line 2680
    .local v1, "wantBasic":Z
    :goto_7
    or-int v0, p3, p4

    .line 2681
    .local v0, "directional":I
    and-int v4, p1, v0

    if-eqz v4, :cond_4d

    .line 2683
    .local v2, "wantLeftOrRight":Z
    :goto_d
    if-eqz v1, :cond_53

    .line 2684
    if-eqz v2, :cond_4f

    .line 2685
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "modifiers must not contain "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " combined with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "directional":I
    .end local v1    # "wantBasic":Z
    .end local v2    # "wantLeftOrRight":Z
    :cond_4b
    move v1, v3

    .line 2679
    goto :goto_7

    .restart local v0    # "directional":I
    .restart local v1    # "wantBasic":Z
    :cond_4d
    move v2, v3

    .line 2681
    goto :goto_d

    .line 2689
    .restart local v2    # "wantLeftOrRight":Z
    :cond_4f
    xor-int/lit8 v3, v0, -0x1

    and-int/2addr p0, v3

    .line 2693
    .end local p0    # "metaState":I
    :cond_52
    :goto_52
    return p0

    .line 2690
    .restart local p0    # "metaState":I
    :cond_53
    if-eqz v2, :cond_52

    .line 2691
    xor-int/lit8 v3, p2, -0x1

    and-int/2addr p0, v3

    goto :goto_52
.end method

.method public static metaStateHasModifiers(II)Z
    .registers 6
    .param p0, "metaState"    # I
    .param p1, "modifiers"    # I

    .prologue
    const/4 v0, 0x1

    .line 2658
    const v1, 0x700f00

    and-int/2addr v1, p1

    if-eqz v1, :cond_10

    .line 2659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "modifiers must not contain META_CAPS_LOCK_ON, META_NUM_LOCK_ON, META_SCROLL_LOCK_ON, META_CAP_LOCKED, META_ALT_LOCKED, META_SYM_LOCKED, or META_SELECTING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2665
    :cond_10
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v1

    const v2, 0x770ff

    and-int p0, v1, v2

    .line 2666
    const/16 v1, 0x40

    const/16 v2, 0x80

    invoke-static {p0, p1, v0, v1, v2}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2668
    const/4 v1, 0x2

    const/16 v2, 0x10

    const/16 v3, 0x20

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2670
    const/16 v1, 0x1000

    const/16 v2, 0x2000

    const/16 v3, 0x4000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2672
    const/high16 v1, 0x10000

    const/high16 v2, 0x20000

    const/high16 v3, 0x40000

    invoke-static {p0, p1, v1, v2, v3}, Landroid/view/KeyEvent;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p0

    .line 2674
    if-ne p0, p1, :cond_41

    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public static metaStateHasNoModifiers(I)Z
    .registers 3
    .param p0, "metaState"    # I

    .prologue
    .line 2622
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static metaStateToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "metaState"    # I

    .prologue
    .line 3454
    if-nez p0, :cond_5

    .line 3455
    const-string v2, "0"

    .line 3476
    :cond_4
    :goto_4
    return-object v2

    .line 3457
    :cond_5
    const/4 v3, 0x0

    .line 3458
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3459
    .local v0, "i":I
    :goto_7
    if-eqz p0, :cond_2d

    .line 3460
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_22

    const/4 v1, 0x1

    .line 3461
    .local v1, "isSet":Z
    :goto_e
    ushr-int/lit8 p0, p0, 0x1

    .line 3462
    if-eqz v1, :cond_1f

    .line 3463
    sget-object v4, Landroid/view/KeyEvent;->META_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3464
    .local v2, "name":Ljava/lang/String;
    if-nez v3, :cond_24

    .line 3465
    if-eqz p0, :cond_4

    .line 3468
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "result":Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3474
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1f
    :goto_1f
    add-int/lit8 v0, v0, 0x1

    .line 3475
    goto :goto_7

    .line 3460
    .end local v1    # "isSet":Z
    :cond_22
    const/4 v1, 0x0

    goto :goto_e

    .line 3470
    .restart local v1    # "isSet":Z
    .restart local v2    # "name":Ljava/lang/String;
    :cond_24
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3471
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 3476
    .end local v1    # "isSet":Z
    .end local v2    # "name":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private native native_hasDefaultAction(I)Z
.end method

.method private native native_isSystemKey(I)Z
.end method

.method public static normalizeMetaState(I)I
    .registers 2
    .param p0, "metaState"    # I

    .prologue
    .line 2582
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_6

    .line 2583
    or-int/lit8 p0, p0, 0x1

    .line 2585
    :cond_6
    and-int/lit8 v0, p0, 0x30

    if-eqz v0, :cond_c

    .line 2586
    or-int/lit8 p0, p0, 0x2

    .line 2588
    :cond_c
    and-int/lit16 v0, p0, 0x6000

    if-eqz v0, :cond_12

    .line 2589
    or-int/lit16 p0, p0, 0x1000

    .line 2591
    :cond_12
    const/high16 v0, 0x60000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1a

    .line 2592
    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    .line 2594
    :cond_1a
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_21

    .line 2595
    const/high16 v0, 0x100000

    or-int/2addr p0, v0

    .line 2597
    :cond_21
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_27

    .line 2598
    or-int/lit8 p0, p0, 0x2

    .line 2600
    :cond_27
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2d

    .line 2601
    or-int/lit8 p0, p0, 0x4

    .line 2603
    :cond_2d
    const v0, 0x7770ff

    and-int/2addr v0, p0

    return v0
.end method

.method private static obtain()Landroid/view/KeyEvent;
    .registers 3

    .prologue
    .line 2091
    sget-object v2, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2092
    :try_start_3
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2093
    .local v0, "ev":Landroid/view/KeyEvent;
    if-nez v0, :cond_e

    .line 2094
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0    # "ev":Landroid/view/KeyEvent;
    invoke-direct {v0}, Landroid/view/KeyEvent;-><init>()V

    monitor-exit v2

    .line 2101
    .restart local v0    # "ev":Landroid/view/KeyEvent;
    :goto_d
    return-object v0

    .line 2096
    :cond_e
    iget-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    sput-object v1, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2097
    sget v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2098
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_20

    .line 2099
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2100
    invoke-virtual {v0}, Landroid/view/InputEvent;->prepareForReuse()V

    goto :goto_d

    .line 2098
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public static obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 15
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "displayId"    # I
    .param p12, "source"    # I
    .param p13, "characters"    # Ljava/lang/String;

    .prologue
    .line 2136
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2137
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2138
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2139
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2140
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2141
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2142
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2143
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2144
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2145
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2146
    iput p12, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2147
    iput-object p13, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2148
    iput p11, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2149
    return-object v0
.end method

.method public static obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;
    .registers 15
    .param p0, "downTime"    # J
    .param p2, "eventTime"    # J
    .param p4, "action"    # I
    .param p5, "code"    # I
    .param p6, "repeat"    # I
    .param p7, "metaState"    # I
    .param p8, "deviceId"    # I
    .param p9, "scancode"    # I
    .param p10, "flags"    # I
    .param p11, "source"    # I
    .param p12, "characters"    # Ljava/lang/String;

    .prologue
    .line 2112
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2113
    .local v0, "ev":Landroid/view/KeyEvent;
    iput-wide p0, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2114
    iput-wide p2, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2115
    iput p4, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2116
    iput p5, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2117
    iput p6, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2118
    iput p7, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2119
    iput p8, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2120
    iput p9, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2121
    iput p10, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2122
    iput p11, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2123
    iput-object p12, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2124
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2125
    return-object v0
.end method

.method public static obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .registers 4
    .param p0, "other"    # Landroid/view/KeyEvent;

    .prologue
    .line 2158
    invoke-static {}, Landroid/view/KeyEvent;->obtain()Landroid/view/KeyEvent;

    move-result-object v0

    .line 2159
    .local v0, "ev":Landroid/view/KeyEvent;
    iget-wide v1, p0, Landroid/view/KeyEvent;->mDownTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mDownTime:J

    .line 2160
    iget-wide v1, p0, Landroid/view/KeyEvent;->mEventTime:J

    iput-wide v1, v0, Landroid/view/KeyEvent;->mEventTime:J

    .line 2161
    iget v1, p0, Landroid/view/KeyEvent;->mAction:I

    iput v1, v0, Landroid/view/KeyEvent;->mAction:I

    .line 2162
    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 2163
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    iput v1, v0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 2164
    iget v1, p0, Landroid/view/KeyEvent;->mMetaState:I

    iput v1, v0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2165
    iget v1, p0, Landroid/view/KeyEvent;->mDeviceId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDeviceId:I

    .line 2166
    iget v1, p0, Landroid/view/KeyEvent;->mScanCode:I

    iput v1, v0, Landroid/view/KeyEvent;->mScanCode:I

    .line 2167
    iget v1, p0, Landroid/view/KeyEvent;->mFlags:I

    iput v1, v0, Landroid/view/KeyEvent;->mFlags:I

    .line 2168
    iget v1, p0, Landroid/view/KeyEvent;->mDisplayId:I

    iput v1, v0, Landroid/view/KeyEvent;->mDisplayId:I

    .line 2169
    iget v1, p0, Landroid/view/KeyEvent;->mSource:I

    iput v1, v0, Landroid/view/KeyEvent;->mSource:I

    .line 2170
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2171
    return-object v0
.end method

.method private static populateKeycodeSymbolicNames()V
    .registers 3

    .prologue
    .line 1003
    sget-object v0, Landroid/view/KeyEvent;->KEYCODE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1004
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const-string v2, "KEYCODE_UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1005
    const/4 v1, 0x1

    const-string v2, "KEYCODE_SOFT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1006
    const/4 v1, 0x2

    const-string v2, "KEYCODE_SOFT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1007
    const/4 v1, 0x3

    const-string v2, "KEYCODE_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1008
    const/4 v1, 0x4

    const-string v2, "KEYCODE_BACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1009
    const/4 v1, 0x5

    const-string v2, "KEYCODE_CALL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1010
    const/4 v1, 0x6

    const-string v2, "KEYCODE_ENDCALL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1011
    const/4 v1, 0x7

    const-string v2, "KEYCODE_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1012
    const/16 v1, 0x8

    const-string v2, "KEYCODE_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1013
    const/16 v1, 0x9

    const-string v2, "KEYCODE_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1014
    const/16 v1, 0xa

    const-string v2, "KEYCODE_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1015
    const/16 v1, 0xb

    const-string v2, "KEYCODE_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1016
    const/16 v1, 0xc

    const-string v2, "KEYCODE_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1017
    const/16 v1, 0xd

    const-string v2, "KEYCODE_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1018
    const/16 v1, 0xe

    const-string v2, "KEYCODE_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1019
    const/16 v1, 0xf

    const-string v2, "KEYCODE_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1020
    const/16 v1, 0x10

    const-string v2, "KEYCODE_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1021
    const/16 v1, 0x11

    const-string v2, "KEYCODE_STAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1022
    const/16 v1, 0x12

    const-string v2, "KEYCODE_POUND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1023
    const/16 v1, 0x13

    const-string v2, "KEYCODE_DPAD_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1024
    const/16 v1, 0x14

    const-string v2, "KEYCODE_DPAD_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1025
    const/16 v1, 0x15

    const-string v2, "KEYCODE_DPAD_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1026
    const/16 v1, 0x16

    const-string v2, "KEYCODE_DPAD_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1027
    const/16 v1, 0x17

    const-string v2, "KEYCODE_DPAD_CENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1028
    const/16 v1, 0x18

    const-string v2, "KEYCODE_VOLUME_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1029
    const/16 v1, 0x19

    const-string v2, "KEYCODE_VOLUME_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1030
    const/16 v1, 0x1a

    const-string v2, "KEYCODE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1031
    const/16 v1, 0x1b

    const-string v2, "KEYCODE_CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1032
    const/16 v1, 0x1c

    const-string v2, "KEYCODE_CLEAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1033
    const/16 v1, 0x1d

    const-string v2, "KEYCODE_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1034
    const/16 v1, 0x1e

    const-string v2, "KEYCODE_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1035
    const/16 v1, 0x1f

    const-string v2, "KEYCODE_C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1036
    const/16 v1, 0x20

    const-string v2, "KEYCODE_D"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1037
    const/16 v1, 0x21

    const-string v2, "KEYCODE_E"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1038
    const/16 v1, 0x22

    const-string v2, "KEYCODE_F"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1039
    const/16 v1, 0x23

    const-string v2, "KEYCODE_G"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1040
    const/16 v1, 0x24

    const-string v2, "KEYCODE_H"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1041
    const/16 v1, 0x25

    const-string v2, "KEYCODE_I"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1042
    const/16 v1, 0x26

    const-string v2, "KEYCODE_J"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1043
    const/16 v1, 0x27

    const-string v2, "KEYCODE_K"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1044
    const/16 v1, 0x28

    const-string v2, "KEYCODE_L"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1045
    const/16 v1, 0x29

    const-string v2, "KEYCODE_M"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1046
    const/16 v1, 0x2a

    const-string v2, "KEYCODE_N"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1047
    const/16 v1, 0x2b

    const-string v2, "KEYCODE_O"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1048
    const/16 v1, 0x2c

    const-string v2, "KEYCODE_P"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1049
    const/16 v1, 0x2d

    const-string v2, "KEYCODE_Q"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1050
    const/16 v1, 0x2e

    const-string v2, "KEYCODE_R"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1051
    const/16 v1, 0x2f

    const-string v2, "KEYCODE_S"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1052
    const/16 v1, 0x30

    const-string v2, "KEYCODE_T"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1053
    const/16 v1, 0x31

    const-string v2, "KEYCODE_U"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1054
    const/16 v1, 0x32

    const-string v2, "KEYCODE_V"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1055
    const/16 v1, 0x33

    const-string v2, "KEYCODE_W"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1056
    const/16 v1, 0x34

    const-string v2, "KEYCODE_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1057
    const/16 v1, 0x35

    const-string v2, "KEYCODE_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1058
    const/16 v1, 0x36

    const-string v2, "KEYCODE_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1059
    const/16 v1, 0x37

    const-string v2, "KEYCODE_COMMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1060
    const/16 v1, 0x38

    const-string v2, "KEYCODE_PERIOD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1061
    const/16 v1, 0x39

    const-string v2, "KEYCODE_ALT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1062
    const/16 v1, 0x3a

    const-string v2, "KEYCODE_ALT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1063
    const/16 v1, 0x3b

    const-string v2, "KEYCODE_SHIFT_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1064
    const/16 v1, 0x3c

    const-string v2, "KEYCODE_SHIFT_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1065
    const/16 v1, 0x3d

    const-string v2, "KEYCODE_TAB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1066
    const/16 v1, 0x3e

    const-string v2, "KEYCODE_SPACE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1067
    const/16 v1, 0x3f

    const-string v2, "KEYCODE_SYM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1068
    const/16 v1, 0x40

    const-string v2, "KEYCODE_EXPLORER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1069
    const/16 v1, 0x41

    const-string v2, "KEYCODE_ENVELOPE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1070
    const/16 v1, 0x42

    const-string v2, "KEYCODE_ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1071
    const/16 v1, 0x43

    const-string v2, "KEYCODE_DEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1072
    const/16 v1, 0x44

    const-string v2, "KEYCODE_GRAVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1073
    const/16 v1, 0x45

    const-string v2, "KEYCODE_MINUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1074
    const/16 v1, 0x46

    const-string v2, "KEYCODE_EQUALS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1075
    const/16 v1, 0x47

    const-string v2, "KEYCODE_LEFT_BRACKET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1076
    const/16 v1, 0x48

    const-string v2, "KEYCODE_RIGHT_BRACKET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1077
    const/16 v1, 0x49

    const-string v2, "KEYCODE_BACKSLASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1078
    const/16 v1, 0x4a

    const-string v2, "KEYCODE_SEMICOLON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1079
    const/16 v1, 0x4b

    const-string v2, "KEYCODE_APOSTROPHE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1080
    const/16 v1, 0x4c

    const-string v2, "KEYCODE_SLASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1081
    const/16 v1, 0x4d

    const-string v2, "KEYCODE_AT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1082
    const/16 v1, 0x4e

    const-string v2, "KEYCODE_NUM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1083
    const/16 v1, 0x4f

    const-string v2, "KEYCODE_HEADSETHOOK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1084
    const/16 v1, 0x50

    const-string v2, "KEYCODE_FOCUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1085
    const/16 v1, 0x51

    const-string v2, "KEYCODE_PLUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1086
    const/16 v1, 0x52

    const-string v2, "KEYCODE_MENU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1087
    const/16 v1, 0x53

    const-string v2, "KEYCODE_NOTIFICATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1088
    const/16 v1, 0x54

    const-string v2, "KEYCODE_SEARCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1089
    const/16 v1, 0x55

    const-string v2, "KEYCODE_MEDIA_PLAY_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1090
    const/16 v1, 0x56

    const-string v2, "KEYCODE_MEDIA_STOP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1091
    const/16 v1, 0x57

    const-string v2, "KEYCODE_MEDIA_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1092
    const/16 v1, 0x58

    const-string v2, "KEYCODE_MEDIA_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1093
    const/16 v1, 0x59

    const-string v2, "KEYCODE_MEDIA_REWIND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1094
    const/16 v1, 0x5a

    const-string v2, "KEYCODE_MEDIA_FAST_FORWARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1095
    const/16 v1, 0x5b

    const-string v2, "KEYCODE_MUTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1096
    const/16 v1, 0x5c

    const-string v2, "KEYCODE_PAGE_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1097
    const/16 v1, 0x5d

    const-string v2, "KEYCODE_PAGE_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1098
    const/16 v1, 0x5e

    const-string v2, "KEYCODE_PICTSYMBOLS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1099
    const/16 v1, 0x5f

    const-string v2, "KEYCODE_SWITCH_CHARSET"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1100
    const/16 v1, 0x60

    const-string v2, "KEYCODE_BUTTON_A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1101
    const/16 v1, 0x61

    const-string v2, "KEYCODE_BUTTON_B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1102
    const/16 v1, 0x62

    const-string v2, "KEYCODE_BUTTON_C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1103
    const/16 v1, 0x63

    const-string v2, "KEYCODE_BUTTON_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1104
    const/16 v1, 0x64

    const-string v2, "KEYCODE_BUTTON_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1105
    const/16 v1, 0x65

    const-string v2, "KEYCODE_BUTTON_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1106
    const/16 v1, 0x66

    const-string v2, "KEYCODE_BUTTON_L1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1107
    const/16 v1, 0x67

    const-string v2, "KEYCODE_BUTTON_R1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1108
    const/16 v1, 0x68

    const-string v2, "KEYCODE_BUTTON_L2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1109
    const/16 v1, 0x69

    const-string v2, "KEYCODE_BUTTON_R2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1110
    const/16 v1, 0x6a

    const-string v2, "KEYCODE_BUTTON_THUMBL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1111
    const/16 v1, 0x6b

    const-string v2, "KEYCODE_BUTTON_THUMBR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1112
    const/16 v1, 0x6c

    const-string v2, "KEYCODE_BUTTON_START"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1113
    const/16 v1, 0x6d

    const-string v2, "KEYCODE_BUTTON_SELECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1114
    const/16 v1, 0x6e

    const-string v2, "KEYCODE_BUTTON_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1115
    const/16 v1, 0x6f

    const-string v2, "KEYCODE_ESCAPE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1116
    const/16 v1, 0x70

    const-string v2, "KEYCODE_FORWARD_DEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1117
    const/16 v1, 0x71

    const-string v2, "KEYCODE_CTRL_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1118
    const/16 v1, 0x72

    const-string v2, "KEYCODE_CTRL_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1119
    const/16 v1, 0x73

    const-string v2, "KEYCODE_CAPS_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1120
    const/16 v1, 0x74

    const-string v2, "KEYCODE_SCROLL_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1121
    const/16 v1, 0x75

    const-string v2, "KEYCODE_META_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1122
    const/16 v1, 0x76

    const-string v2, "KEYCODE_META_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1123
    const/16 v1, 0x77

    const-string v2, "KEYCODE_FUNCTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1124
    const/16 v1, 0x78

    const-string v2, "KEYCODE_SYSRQ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1125
    const/16 v1, 0x79

    const-string v2, "KEYCODE_BREAK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1126
    const/16 v1, 0x7a

    const-string v2, "KEYCODE_MOVE_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1127
    const/16 v1, 0x7b

    const-string v2, "KEYCODE_MOVE_END"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1128
    const/16 v1, 0x7c

    const-string v2, "KEYCODE_INSERT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1129
    const/16 v1, 0x7d

    const-string v2, "KEYCODE_FORWARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1130
    const/16 v1, 0x7e

    const-string v2, "KEYCODE_MEDIA_PLAY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1131
    const/16 v1, 0x7f

    const-string v2, "KEYCODE_MEDIA_PAUSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1132
    const/16 v1, 0x80

    const-string v2, "KEYCODE_MEDIA_CLOSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1133
    const/16 v1, 0x81

    const-string v2, "KEYCODE_MEDIA_EJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1134
    const/16 v1, 0x82

    const-string v2, "KEYCODE_MEDIA_RECORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1135
    const/16 v1, 0x83

    const-string v2, "KEYCODE_F1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1136
    const/16 v1, 0x84

    const-string v2, "KEYCODE_F2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1137
    const/16 v1, 0x85

    const-string v2, "KEYCODE_F3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1138
    const/16 v1, 0x86

    const-string v2, "KEYCODE_F4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1139
    const/16 v1, 0x87

    const-string v2, "KEYCODE_F5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1140
    const/16 v1, 0x88

    const-string v2, "KEYCODE_F6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1141
    const/16 v1, 0x89

    const-string v2, "KEYCODE_F7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1142
    const/16 v1, 0x8a

    const-string v2, "KEYCODE_F8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1143
    const/16 v1, 0x8b

    const-string v2, "KEYCODE_F9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1144
    const/16 v1, 0x8c

    const-string v2, "KEYCODE_F10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1145
    const/16 v1, 0x8d

    const-string v2, "KEYCODE_F11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1146
    const/16 v1, 0x8e

    const-string v2, "KEYCODE_F12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1147
    const/16 v1, 0x8f

    const-string v2, "KEYCODE_NUM_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1148
    const/16 v1, 0x90

    const-string v2, "KEYCODE_NUMPAD_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1149
    const/16 v1, 0x91

    const-string v2, "KEYCODE_NUMPAD_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1150
    const/16 v1, 0x92

    const-string v2, "KEYCODE_NUMPAD_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1151
    const/16 v1, 0x93

    const-string v2, "KEYCODE_NUMPAD_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1152
    const/16 v1, 0x94

    const-string v2, "KEYCODE_NUMPAD_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1153
    const/16 v1, 0x95

    const-string v2, "KEYCODE_NUMPAD_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1154
    const/16 v1, 0x96

    const-string v2, "KEYCODE_NUMPAD_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1155
    const/16 v1, 0x97

    const-string v2, "KEYCODE_NUMPAD_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1156
    const/16 v1, 0x98

    const-string v2, "KEYCODE_NUMPAD_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1157
    const/16 v1, 0x99

    const-string v2, "KEYCODE_NUMPAD_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1158
    const/16 v1, 0x9a

    const-string v2, "KEYCODE_NUMPAD_DIVIDE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1159
    const/16 v1, 0x9b

    const-string v2, "KEYCODE_NUMPAD_MULTIPLY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1160
    const/16 v1, 0x9c

    const-string v2, "KEYCODE_NUMPAD_SUBTRACT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1161
    const/16 v1, 0x9d

    const-string v2, "KEYCODE_NUMPAD_ADD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1162
    const/16 v1, 0x9e

    const-string v2, "KEYCODE_NUMPAD_DOT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1163
    const/16 v1, 0x9f

    const-string v2, "KEYCODE_NUMPAD_COMMA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1164
    const/16 v1, 0xa0

    const-string v2, "KEYCODE_NUMPAD_ENTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1165
    const/16 v1, 0xa1

    const-string v2, "KEYCODE_NUMPAD_EQUALS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1166
    const/16 v1, 0xa2

    const-string v2, "KEYCODE_NUMPAD_LEFT_PAREN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1167
    const/16 v1, 0xa3

    const-string v2, "KEYCODE_NUMPAD_RIGHT_PAREN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1168
    const/16 v1, 0xa4

    const-string v2, "KEYCODE_VOLUME_MUTE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1169
    const/16 v1, 0xa5

    const-string v2, "KEYCODE_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1170
    const/16 v1, 0xa6

    const-string v2, "KEYCODE_CHANNEL_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1171
    const/16 v1, 0xa7

    const-string v2, "KEYCODE_CHANNEL_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1172
    const/16 v1, 0xa8

    const-string v2, "KEYCODE_ZOOM_IN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1173
    const/16 v1, 0xa9

    const-string v2, "KEYCODE_ZOOM_OUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1174
    const/16 v1, 0xaa

    const-string v2, "KEYCODE_TV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1175
    const/16 v1, 0xab

    const-string v2, "KEYCODE_WINDOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1176
    const/16 v1, 0xac

    const-string v2, "KEYCODE_GUIDE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1177
    const/16 v1, 0xad

    const-string v2, "KEYCODE_DVR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1178
    const/16 v1, 0xae

    const-string v2, "KEYCODE_BOOKMARK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1179
    const/16 v1, 0xaf

    const-string v2, "KEYCODE_CAPTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1180
    const/16 v1, 0xb0

    const-string v2, "KEYCODE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1181
    const/16 v1, 0xb1

    const-string v2, "KEYCODE_TV_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1182
    const/16 v1, 0xb2

    const-string v2, "KEYCODE_TV_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1183
    const/16 v1, 0xb4

    const-string v2, "KEYCODE_STB_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1184
    const/16 v1, 0xb3

    const-string v2, "KEYCODE_STB_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1185
    const/16 v1, 0xb5

    const-string v2, "KEYCODE_AVR_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1186
    const/16 v1, 0xb6

    const-string v2, "KEYCODE_AVR_INPUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1187
    const/16 v1, 0xb7

    const-string v2, "KEYCODE_PROG_RED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1188
    const/16 v1, 0xb8

    const-string v2, "KEYCODE_PROG_GREEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1189
    const/16 v1, 0xb9

    const-string v2, "KEYCODE_PROG_YELLOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1190
    const/16 v1, 0xba

    const-string v2, "KEYCODE_PROG_BLUE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1191
    const/16 v1, 0xbb

    const-string v2, "KEYCODE_APP_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1192
    const/16 v1, 0xbc

    const-string v2, "KEYCODE_BUTTON_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1193
    const/16 v1, 0xbd

    const-string v2, "KEYCODE_BUTTON_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1194
    const/16 v1, 0xbe

    const-string v2, "KEYCODE_BUTTON_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1195
    const/16 v1, 0xbf

    const-string v2, "KEYCODE_BUTTON_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1196
    const/16 v1, 0xc0

    const-string v2, "KEYCODE_BUTTON_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1197
    const/16 v1, 0xc1

    const-string v2, "KEYCODE_BUTTON_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1198
    const/16 v1, 0xc2

    const-string v2, "KEYCODE_BUTTON_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1199
    const/16 v1, 0xc3

    const-string v2, "KEYCODE_BUTTON_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1200
    const/16 v1, 0xc4

    const-string v2, "KEYCODE_BUTTON_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1201
    const/16 v1, 0xc5

    const-string v2, "KEYCODE_BUTTON_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1202
    const/16 v1, 0xc6

    const-string v2, "KEYCODE_BUTTON_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1203
    const/16 v1, 0xc7

    const-string v2, "KEYCODE_BUTTON_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1204
    const/16 v1, 0xc8

    const-string v2, "KEYCODE_BUTTON_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1205
    const/16 v1, 0xc9

    const-string v2, "KEYCODE_BUTTON_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1206
    const/16 v1, 0xca

    const-string v2, "KEYCODE_BUTTON_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1207
    const/16 v1, 0xcb

    const-string v2, "KEYCODE_BUTTON_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1208
    const/16 v1, 0xcc

    const-string v2, "KEYCODE_LANGUAGE_SWITCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1209
    const/16 v1, 0xcd

    const-string v2, "KEYCODE_MANNER_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1210
    const/16 v1, 0xce

    const-string v2, "KEYCODE_3D_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1211
    const/16 v1, 0xcf

    const-string v2, "KEYCODE_CONTACTS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1212
    const/16 v1, 0xd0

    const-string v2, "KEYCODE_CALENDAR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1213
    const/16 v1, 0xd1

    const-string v2, "KEYCODE_MUSIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1214
    const/16 v1, 0xd2

    const-string v2, "KEYCODE_CALCULATOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1215
    const/16 v1, 0xd3

    const-string v2, "KEYCODE_ZENKAKU_HANKAKU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1216
    const/16 v1, 0xd4

    const-string v2, "KEYCODE_EISU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1217
    const/16 v1, 0xd5

    const-string v2, "KEYCODE_MUHENKAN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1218
    const/16 v1, 0xd6

    const-string v2, "KEYCODE_HENKAN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1219
    const/16 v1, 0xd7

    const-string v2, "KEYCODE_KATAKANA_HIRAGANA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1220
    const/16 v1, 0xd8

    const-string v2, "KEYCODE_YEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1221
    const/16 v1, 0xd9

    const-string v2, "KEYCODE_RO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1222
    const/16 v1, 0xda

    const-string v2, "KEYCODE_KANA"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1223
    const/16 v1, 0xdb

    const-string v2, "KEYCODE_ASSIST"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1224
    const/16 v1, 0xdc

    const-string v2, "KEYCODE_BRIGHTNESS_DOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1225
    const/16 v1, 0xdd

    const-string v2, "KEYCODE_BRIGHTNESS_UP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1226
    const/16 v1, 0xde

    const-string v2, "KEYCODE_MEDIA_AUDIO_TRACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1228
    const/16 v1, 0xdf

    const-string v2, "KEYCODE_MINIMODE_ON_OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1229
    const/16 v1, 0xe0

    const-string v2, "KEYCODE_RECENTAPPS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1230
    const/16 v1, 0xe1

    const-string v2, "KEYCODE_APPLICATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1231
    const/16 v1, 0xe2

    const-string v2, "KEYCODE_QPANEL_ON_OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1232
    const/16 v1, 0xe3

    const-string v2, "KEYCODE_SCREEN_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1233
    const/16 v1, 0xe4

    const-string v2, "KEYCODE_LANG"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1234
    const/16 v1, 0xe5

    const-string v2, "KEYCODE_SIP_ON_OFF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1235
    const/16 v1, 0xe6

    const-string v2, "KEYCODE_VOICESEARCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1236
    const/16 v1, 0xe7

    const-string v2, "KEYCODE_EMAIL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1237
    const/16 v1, 0xe8

    const-string v2, "KEYCODE_CLIPBOARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1238
    const/16 v1, 0xe9

    const-string v2, "KEYCODE_ALT_GR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1239
    const/16 v1, 0xea

    const-string v2, "KEYCODE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1241
    const/16 v1, 0xeb

    const-string v2, "KEYCODE_SPEAKER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1242
    const/16 v1, 0xec

    const-string v2, "KEYCODE_TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1243
    const/16 v1, 0xed

    const-string v2, "KEYCODE_QUESTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1244
    const/16 v1, 0xee

    const-string v2, "KEYCODE_USER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1245
    const/16 v1, 0xef

    const-string v2, "KEYCODE_PDCT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1248
    const/16 v1, 0xf0

    const-string v2, "KEYCODE_DMB_ANT_OPEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1249
    const/16 v1, 0xf1

    const-string v2, "KEYCODE_DMB_ANT_CLOSE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1252
    const/16 v1, 0xf2

    const-string v2, "KEYCODE_JOG_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1253
    const/16 v1, 0xf3

    const-string v2, "KEYCODE_JOG_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1254
    const/16 v1, 0xf4

    const-string v2, "KEYCODE_JOG_SELECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1255
    const/16 v1, 0xf5

    const-string v2, "KEYCODE_CAMERA_RECORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1258
    const/16 v1, 0xf6

    const-string v2, "KEYCODE_DUMMY_MENU"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1259
    const/16 v1, 0xf7

    const-string v2, "KEYCODE_DUMMY_HOME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1260
    const/16 v1, 0xf8

    const-string v2, "KEYCODE_DUMMY_BACK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1261
    const/16 v1, 0xf9

    const-string v2, "KEYCODE_DUMMY_HOME1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1262
    const/16 v1, 0xfa

    const-string v2, "KEYCODE_DUMMY_HOME2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1264
    const/16 v1, 0xfb

    const-string v2, "KEYCODE_CAMERA_FLASH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1265
    const/16 v1, 0xfc

    const-string v2, "KEYCODE_CAMERA_FUNCTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1266
    const/16 v1, 0xfd

    const-string v2, "KEYCODE_CAMERA_FOCUS_RING_LEFT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1267
    const/16 v1, 0xfe

    const-string v2, "KEYCODE_CAMERA_FOCUS_RING_RIGHT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1268
    const/16 v1, 0xff

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_IN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1269
    const/16 v1, 0x100

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_OUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1270
    const/16 v1, 0x101

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_MOVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1273
    const/16 v1, 0x102

    const-string v2, "KEYCODE_END"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1274
    const/16 v1, 0x103

    const-string v2, "KEYCODE_3G"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1277
    const/16 v1, 0x104

    const-string v2, "KEYCODE_BLUETOOTH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1278
    const/16 v1, 0x105

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_SPEED1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1279
    const/16 v1, 0x106

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_SPEED2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1280
    const/16 v1, 0x107

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_SPEED3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1281
    const/16 v1, 0x108

    const-string v2, "KEYCODE_CAMERA_ZOOM_RING_SPEED4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1282
    const/16 v1, 0x109

    const-string v2, "KEYCODE_WPS_BUTTON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1283
    const/16 v1, 0x10a

    const-string v2, "KEYCODE_VIRTUALEYE_BUTTON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1284
    const/16 v1, 0x10b

    const-string v2, "KEYCODE_VOICEMEMO_BUTTON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1287
    const/16 v1, 0x10c

    const-string v2, "KEYCODE_FINGER_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1288
    const/16 v1, 0x10d

    const-string v2, "KEYCODE_FINGER_REMOVED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1290
    const/16 v1, 0x10e

    const-string v2, "KEYCODE_NETWORK_SEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1291
    const/16 v1, 0x10f

    const-string v2, "KEYCODE_SIM"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1292
    const/16 v1, 0x110

    const-string v2, "KEYCODE_WATCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1294
    const/16 v1, 0x111

    const-string v2, "KEYCODE_BUTTON_GAME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1297
    const/16 v1, 0x112

    const-string v2, "KEYCODE_SIDE_TOUCH_0"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1298
    const/16 v1, 0x113

    const-string v2, "KEYCODE_SIDE_TOUCH_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1299
    const/16 v1, 0x114

    const-string v2, "KEYCODE_SIDE_TOUCH_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1300
    const/16 v1, 0x115

    const-string v2, "KEYCODE_SIDE_TOUCH_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1301
    const/16 v1, 0x116

    const-string v2, "KEYCODE_SIDE_TOUCH_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1302
    const/16 v1, 0x117

    const-string v2, "KEYCODE_SIDE_TOUCH_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1303
    const/16 v1, 0x118

    const-string v2, "KEYCODE_SIDE_TOUCH_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1304
    const/16 v1, 0x119

    const-string v2, "KEYCODE_SIDE_TOUCH_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1305
    const/16 v1, 0x11a

    const-string v2, "KEYCODE_SIDE_CAMERA_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1308
    const/16 v1, 0x11b

    const-string v2, "KEYCODE_MOUSE_ACTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1311
    const/16 v1, 0x11c

    const-string v2, "KEYCODE_MULTI_WINDOW"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1314
    const/16 v1, 0x11d

    const-string v2, "KEYCODE_VOICE_WAKEUP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1315
    const/16 v1, 0x11e

    const-string v2, "KEYCODE_VOICE_WAKEUP_LPSD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1318
    const/16 v1, 0x11f

    const-string v2, "KEYCODE_SFINDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1321
    const/16 v1, 0x120

    const-string v2, "KEYCODE_ACTIVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1324
    const/16 v1, 0x121

    const-string v2, "KEYCODE_CAM_QUICK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1326
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/view/KeyEvent;->copy()Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/KeyEvent;
    .registers 2

    .prologue
    .line 2177
    invoke-static {p0}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;)Z
    .registers 3
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3198
    invoke-virtual {p0, p1, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z
    .registers 10
    .param p1, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p2, "state"    # Landroid/view/KeyEvent$DispatcherState;
    .param p3, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3214
    iget v4, p0, Landroid/view/KeyEvent;->mAction:I

    packed-switch v4, :pswitch_data_76

    move v3, v2

    .line 3264
    :cond_8
    :goto_8
    return v3

    .line 3216
    :pswitch_9
    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const v5, -0x40000001

    and-int/2addr v4, v5

    iput v4, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 3219
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 3220
    .local v3, "res":Z
    if-eqz p2, :cond_8

    .line 3221
    if-eqz v3, :cond_2a

    iget v4, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    if-nez v4, :cond_2a

    iget v4, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v5, 0x40000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 3223
    invoke-virtual {p2, p0, p3}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_8

    .line 3224
    :cond_2a
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3226
    :try_start_36
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3228
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_41
    .catch Ljava/lang/AbstractMethodError; {:try_start_36 .. :try_end_41} :catch_73

    .line 3229
    const/4 v3, 0x1

    goto :goto_8

    .line 3240
    .end local v3    # "res":Z
    :pswitch_43
    if-eqz p2, :cond_48

    .line 3241
    invoke-virtual {p2, p0}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 3243
    :cond_48
    iget v4, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-interface {p1, v4, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_8

    .line 3245
    :pswitch_4f
    iget v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3246
    .local v1, "count":I
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    .line 3247
    .local v0, "code":I
    invoke-interface {p1, v0, v1, p0}, Landroid/view/KeyEvent$Callback;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3250
    if-eqz v0, :cond_71

    .line 3251
    iput v2, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3252
    iput v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    .line 3253
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 3254
    .local v2, "handled":Z
    if-eqz v2, :cond_6a

    .line 3255
    iput v3, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3256
    invoke-interface {p1, v0, p0}, Landroid/view/KeyEvent$Callback;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 3258
    :cond_6a
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/KeyEvent;->mAction:I

    .line 3259
    iput v1, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    move v3, v2

    .line 3260
    goto :goto_8

    .end local v2    # "handled":Z
    :cond_71
    move v3, v2

    .line 3262
    goto :goto_8

    .line 3231
    .end local v0    # "code":I
    .end local v1    # "count":I
    .restart local v3    # "res":Z
    :catch_73
    move-exception v4

    goto :goto_8

    .line 3214
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_9
        :pswitch_43
        :pswitch_4f
    .end packed-switch
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 2905
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    return v0
.end method

.method public final getCharacters()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2963
    iget-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()I
    .registers 2

    .prologue
    .line 2386
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public final getDisplayId()I
    .registers 2

    .prologue
    .line 2473
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    return v0
.end method

.method public getDisplayLabel()C
    .registers 3

    .prologue
    .line 3067
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 3

    .prologue
    .line 3001
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public final getEventTime()J
    .registers 3

    .prologue
    .line 3013
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 5

    .prologue
    .line 3032
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .prologue
    .line 2465
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    return v0
.end method

.method public final getKeyCharacterMap()Landroid/view/KeyCharacterMap;
    .registers 2

    .prologue
    .line 3057
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyCode()I
    .registers 2

    .prologue
    .line 2951
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
    .registers 4
    .param p1, "results"    # Landroid/view/KeyCharacterMap$KeyData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3129
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z

    move-result v0

    return v0
.end method

.method public final getKeyboardDevice()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3043
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    return v0
.end method

.method public getMatch([C)C
    .registers 3
    .param p1, "chars"    # [C

    .prologue
    .line 3144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    return v0
.end method

.method public getMatch([CI)C
    .registers 5
    .param p1, "chars"    # [C
    .param p2, "metaState"    # I

    .prologue
    .line 3157
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 2436
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    return v0
.end method

.method public final getModifiers()I
    .registers 3

    .prologue
    .line 2456
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    const v1, 0x770ff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumber()C
    .registers 3

    .prologue
    .line 3181
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getNumber(I)C

    move-result v0

    return v0
.end method

.method public final getRepeatCount()I
    .registers 2

    .prologue
    .line 2986
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    return v0
.end method

.method public final getScanCode()I
    .registers 2

    .prologue
    .line 2974
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    return v0
.end method

.method public final getSource()I
    .registers 2

    .prologue
    .line 2392
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    return v0
.end method

.method public getUnicodeChar()I
    .registers 2

    .prologue
    .line 3090
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p0, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public getUnicodeChar(I)I
    .registers 4
    .param p1, "metaState"    # I

    .prologue
    .line 3114
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    return v0
.end method

.method public final hasDefaultAction()Z
    .registers 2

    .prologue
    .line 2324
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_hasDefaultAction(I)Z

    move-result v0

    return v0
.end method

.method public final hasModifiers(I)Z
    .registers 3
    .param p1, "modifiers"    # I

    .prologue
    .line 2743
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public final hasNoModifiers()Z
    .registers 2

    .prologue
    .line 2712
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public final isAltGrPressed()Z
    .registers 3

    .prologue
    .line 2858
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isAltPressed()Z
    .registers 2

    .prologue
    .line 2756
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isAltRightPressed()Z
    .registers 2

    .prologue
    .line 2763
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCanceled()Z
    .registers 2

    .prologue
    .line 2913
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isCapsLockOn()Z
    .registers 3

    .prologue
    .line 2871
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isCtrlPressed()Z
    .registers 2

    .prologue
    .line 2818
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isDown()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2309
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isFunctionPressed()Z
    .registers 2

    .prologue
    .line 2843
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isLongPress()Z
    .registers 2

    .prologue
    .line 2941
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isMetaPressed()Z
    .registers 3

    .prologue
    .line 2831
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isNumLockOn()Z
    .registers 3

    .prologue
    .line 2883
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPrintingKey()Z
    .registers 3

    .prologue
    .line 3190
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iget v1, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    return v0
.end method

.method public final isScrollLockOn()Z
    .registers 3

    .prologue
    .line 2895
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isShiftPressed()Z
    .registers 2

    .prologue
    .line 2793
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSymPressed()Z
    .registers 2

    .prologue
    .line 2805
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isSystem()Z
    .registers 2

    .prologue
    .line 2319
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-direct {p0, v0}, Landroid/view/KeyEvent;->native_isSystemKey(I)Z

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .registers 3

    .prologue
    .line 2290
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isTracking()Z
    .registers 2

    .prologue
    .line 2933
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 2189
    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    .line 2190
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    .line 2192
    sget-object v1, Landroid/view/KeyEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2193
    :try_start_9
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1b

    .line 2194
    sget v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/KeyEvent;->gRecyclerUsed:I

    .line 2195
    sget-object v0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    iput-object v0, p0, Landroid/view/KeyEvent;->mNext:Landroid/view/KeyEvent;

    .line 2196
    sput-object p0, Landroid/view/KeyEvent;->gRecyclerTop:Landroid/view/KeyEvent;

    .line 2198
    :cond_1b
    monitor-exit v1

    .line 2199
    return-void

    .line 2198
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final recycleIfNeededAfterDispatch()V
    .registers 1

    .prologue
    .line 2205
    return-void
.end method

.method public final setClearRightShiftPressed()V
    .registers 2

    .prologue
    .line 2778
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2779
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_12

    .line 2780
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    .line 2781
    :cond_12
    return-void
.end method

.method public final setSource(I)V
    .registers 2
    .param p1, "source"    # I

    .prologue
    .line 2398
    iput p1, p0, Landroid/view/KeyEvent;->mSource:I

    .line 2399
    return-void
.end method

.method public final setTainted(Z)V
    .registers 4
    .param p1, "tainted"    # Z

    .prologue
    .line 2296
    if-eqz p1, :cond_a

    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2297
    return-void

    .line 2296
    :cond_a
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    goto :goto_7
.end method

.method public final startTracking()V
    .registers 3

    .prologue
    .line 2924
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    const/high16 v1, 0x40000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/KeyEvent;->mFlags:I

    .line 2925
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3362
    .local v0, "msg":Ljava/lang/StringBuilder;
    const-string v1, "KeyEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-static {v2}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3363
    const-string v1, ", keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-static {v2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3364
    const-string v1, ", scanCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3365
    iget-object v1, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 3366
    const-string v1, ", characters=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/KeyEvent;->mCharacters:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    :cond_43
    const-string v1, ", metaState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-static {v2}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3369
    const-string v1, ", flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    const-string v1, ", repeatCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3371
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3372
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3373
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3374
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3375
    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 3511
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3513
    iget v0, p0, Landroid/view/KeyEvent;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    iget v0, p0, Landroid/view/KeyEvent;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3515
    iget v0, p0, Landroid/view/KeyEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3516
    iget v0, p0, Landroid/view/KeyEvent;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3517
    iget v0, p0, Landroid/view/KeyEvent;->mRepeatCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3518
    iget v0, p0, Landroid/view/KeyEvent;->mMetaState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3519
    iget v0, p0, Landroid/view/KeyEvent;->mScanCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3520
    iget v0, p0, Landroid/view/KeyEvent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3521
    iget v0, p0, Landroid/view/KeyEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    iget-wide v0, p0, Landroid/view/KeyEvent;->mDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3523
    iget-wide v0, p0, Landroid/view/KeyEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3524
    return-void
.end method
