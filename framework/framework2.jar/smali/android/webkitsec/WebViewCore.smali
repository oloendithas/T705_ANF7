.class public final Landroid/webkitsec/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewCore$ImageSelectionCopiedData;,
        Landroid/webkitsec/WebViewCore$EditableParams;,
        Landroid/webkitsec/WebViewCore$ShowRectData;,
        Landroid/webkitsec/WebViewCore$DrawData;,
        Landroid/webkitsec/WebViewCore$ViewState;,
        Landroid/webkitsec/WebViewCore$EventHub;,
        Landroid/webkitsec/WebViewCore$SaveViewStateRequest;,
        Landroid/webkitsec/WebViewCore$FindAllRequest;,
        Landroid/webkitsec/WebViewCore$InvokeNotifyID;,
        Landroid/webkitsec/WebViewCore$InvokeEventparams;,
        Landroid/webkitsec/WebViewCore$NotificationPermissionsData;,
        Landroid/webkitsec/WebViewCore$SelectionCopiedData;,
        Landroid/webkitsec/WebViewCore$CopyParams;,
        Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkitsec/WebViewCore$TouchEventData;,
        Landroid/webkitsec/WebViewCore$TextFieldInitData;,
        Landroid/webkitsec/WebViewCore$AutoFillData;,
        Landroid/webkitsec/WebViewCore$WebKitHitTest;,
        Landroid/webkitsec/WebViewCore$TouchHighlightData;,
        Landroid/webkitsec/WebViewCore$TouchUpData;,
        Landroid/webkitsec/WebViewCore$TextSelectionData;,
        Landroid/webkitsec/WebViewCore$TextInputData;,
        Landroid/webkitsec/WebViewCore$ReplaceTextData;,
        Landroid/webkitsec/WebViewCore$PostUrlData;,
        Landroid/webkitsec/WebViewCore$GetUrlData;,
        Landroid/webkitsec/WebViewCore$MotionUpData;,
        Landroid/webkitsec/WebViewCore$JSKeyData;,
        Landroid/webkitsec/WebViewCore$JSInterfaceData;,
        Landroid/webkitsec/WebViewCore$BaseUrlData;,
        Landroid/webkitsec/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final TOUCH_FLAG_HIT_HANDLER:I = 0x1

.field private static final TOUCH_FLAG_PREVENT_DEFAULT:I = 0x2

.field private static mRepaintScheduled:Z

.field private static sShouldMonitorWebCoreThread:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private btextselection:Z

.field mBlockWebkitDraw:Z

.field private mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mChromeCanFocusDirection:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

.field private mLowMemoryUsageThresholdMb:I

.field private mMockGeolocation:Landroid/webkitsec/MockGeolocation;

.field private mNativeClass:I

.field private mPrevAdjust:F

.field private mPrevText:Ljava/lang/String;

.field private mPrevViewportDensityDpi:I

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkitsec/WebSettingsClassic;

.field private mTextSelectionChangeReason:I

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebViewClassic:Landroid/webkitsec/WebViewClassic;

.field private m_drawWasSkipped:Z

.field private m_skipDrawFlag:Z

.field private m_skipDrawFlagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 87
    :try_start_1
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 88
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_c} :catch_2a0

    .line 1439
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_c
    const/16 v1, 0x6e

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "REVEAL_SELECTION"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "STOP_LOADING"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RELOAD"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "KEY_DOWN"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "KEY_UP"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "VIEW_SIZE_CHANGED"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GO_BACK_FORWARD"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SET_SCROLL_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "RESTORE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "PAUSE_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "RESUME_TIMERS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CLEAR_CACHE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CLEAR_HISTORY"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "SET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "REPLACE_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "PASS_TO_JS"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SET_GLOBAL_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "SET_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DOC_HAS_IMAGES"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FAKE_CLICK"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "DELETE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "LISTBOX_CHOICES"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SINGLE_LISTBOX_CHOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MESSAGE_RELAY"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "SET_BACKGROUND_COLOR"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "SET_MOVE_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "SAVE_DOCUMENT_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "129"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "WEBKIT_DRAW"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "131"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "POST_URL"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CLEAR_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "REQUEST_CURSOR_HREF"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "ADD_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "LOAD_DATA"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, ""

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "SET_ACTIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ON_PAUSE"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ON_RESUME"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "FREE_MEMORY"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "VALID_NODE_BOUNDS"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "SAVE_WEBARCHIVE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "WEBKIT_DRAW_LAYERS"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "REMOVE_JS_INTERFACE"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "DELKEY_SIML_FOR_COUNT"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "GET_TEXT_AROUND_CURSOR"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "SET_SELECTION_FOR_EDITING"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "DELETE_SURROUNDING_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "GET_BODY_HTML"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "GET_SLECTION_OFFSET"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "GET_BODY_PLAIN_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "EXEC_COMMAND"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "COPY_SAVE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "DRAW_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "GET_EMAIL_MARKUP"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "SET_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "GET_CARET_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "SET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "GET_SELECTION_NONE"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "CAN_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "CAN_REDO"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "CLEAR_REDO_UNDO"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "GET_BODY_EMPTY"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "CONTENT_SELECTION_TYPE"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "RESTORE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "SAVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "MOVE_SINGLE_CURSOR_HANDLER"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "UPDATE_IM_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "SET_COMPOSING_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "GET_SLECTION_OFFSET_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "GET_STATE_IN_RICHLY_EDITABLE"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "SHOW_ACTION_BAR"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "INSERT_IMAGE_CONTENT"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "RESIZE_IMAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "GET_CURRENT_FONTSIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "CHECK_SELECTED_CLOSEST_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "CHECK_END_OF_WORD_AT_POSITION"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "GET_CURRENT_FONTVALUE"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "GET_IMAGE_SIZE"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "GET_SELECTEDIMAGE_RECT"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "SET_PAGE_ZOOM"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "GET_SELECTED_IMAGE_URI"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "SELECT_BETWEEN_START_AND_END"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "SET_CURSOR_FROM_RANGE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "IS_AT_BOUNDARY"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "DROP_THE_DRAGGED_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "IS_TOUCHED_OUTSIDE"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "RESET_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "GET_SELECTED_HTML_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "UNMARK_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "CHECK_SPELLING_OF_WORD"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "COPY_MOVE_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "CLEAR_TEXT_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "CLOSEST_WORD_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "COPY_BEGIN_EXTEND_SELECTION"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "ADVANCE_TEXT_SELECTION_ALL"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "UPDATE_EDITTEXT_SELECTION_IN_SCROLL"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "GET_SELECTED_TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "SET_COLOR_CHOICE"

    aput-object v3, v1, v2

    sput-object v1, Landroid/webkitsec/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 3886
    sput-boolean v4, Landroid/webkitsec/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 89
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2a0
    move-exception v0

    .line 90
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v2, "Unable to load native support libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;Ljava/util/Map;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "w"    # Landroid/webkitsec/WebViewClassic;
    .param p3, "proxy"    # Landroid/webkitsec/CallbackProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkitsec/WebViewClassic;",
            "Landroid/webkitsec/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "javascriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    .line 122
    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportHeight:I

    .line 127
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 132
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 137
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    .line 139
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    .line 148
    iput v6, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    .line 150
    iput v6, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    .line 151
    iput v7, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    .line 153
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    .line 154
    iput v7, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    .line 155
    iput v7, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    .line 156
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    .line 157
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    .line 159
    new-instance v5, Landroid/webkitsec/MockGeolocation;

    invoke-direct {v5, p0}, Landroid/webkitsec/MockGeolocation;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    .line 160
    new-instance v5, Landroid/webkitsec/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkitsec/DeviceMotionAndOrientationManager;-><init>(Landroid/webkitsec/WebViewCore;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    .line 173
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    .line 936
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    .line 3422
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    .line 3423
    iput v9, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    .line 3424
    const/high16 v5, 0x3f800000

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    .line 3533
    iput-object v8, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 3568
    iput-object v8, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    .line 3570
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    .line 3571
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    .line 3572
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    .line 3575
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    .line 187
    iput-object p3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    .line 188
    iput-object p2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    .line 189
    iput-object p4, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 192
    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    .line 198
    const-class v6, Landroid/webkitsec/WebViewCore;

    monitor-enter v6

    .line 199
    :try_start_5a
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_7f

    .line 201
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkitsec/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkitsec/WebViewCore$WebCoreThread;-><init>(Landroid/webkitsec/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v4, "t":Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_f1

    .line 205
    :try_start_71
    const-class v5, Landroid/webkitsec/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_76} :catch_dd
    .catchall {:try_start_71 .. :try_end_76} :catchall_f1

    .line 212
    :goto_76
    :try_start_76
    sget-boolean v5, Landroid/webkitsec/WebViewCore;->sShouldMonitorWebCoreThread:Z

    if-eqz v5, :cond_7f

    .line 217
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-static {v5}, Landroid/webkitsec/WebCoreThreadWatchdog;->start(Landroid/os/Handler;)Landroid/webkitsec/WebCoreThreadWatchdog;

    .line 221
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_7f
    invoke-static {p2}, Landroid/webkitsec/WebCoreThreadWatchdog;->registerWebView(Landroid/webkitsec/WebViewClassic;)V

    .line 222
    monitor-exit v6
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_f1

    .line 225
    new-instance v5, Landroid/webkitsec/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkitsec/WebViewCore$EventHub;-><init>(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    .line 227
    new-instance v5, Landroid/webkitsec/WebSettingsClassic;

    iget-object v6, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v5, v6, v7}, Landroid/webkitsec/WebSettingsClassic;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewClassic;)V

    iput-object v5, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    .line 230
    invoke-static {}, Landroid/webkitsec/WebIconDatabase;->getInstance()Landroid/webkitsec/WebIconDatabase;

    .line 232
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebStorageClassic;->createUIHandler()V

    .line 234
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/GeolocationPermissionsClassic;->createUIHandler()V

    .line 238
    iget-object v5, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 240
    .local v2, "manager":Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 241
    .local v3, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 245
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 246
    iget v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8000000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 248
    iget v5, p0, Landroid/webkitsec/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkitsec/WebViewCore;->mHighUsageDeltaMb:I

    .line 251
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-eqz v5, :cond_dc

    .line 252
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, "init":Landroid/os/Message;
    sget-object v5, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v1    # "init":Landroid/os/Message;
    :cond_dc
    return-void

    .line 206
    .end local v2    # "manager":Landroid/app/ActivityManager;
    .end local v3    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4    # "t":Ljava/lang/Thread;
    :catch_dd
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_de
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 222
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "t":Ljava/lang/Thread;
    :catchall_f1
    move-exception v5

    monitor-exit v6
    :try_end_f3
    .catchall {:try_start_de .. :try_end_f3} :catchall_f1

    throw v5
.end method

.method static synthetic access$10000(Landroid/webkitsec/WebViewCore;III)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10100(Landroid/webkitsec/WebViewCore;I[ZI)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Z
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoices(I[ZI)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoice(II)V

    return-void
.end method

.method static synthetic access$10300(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetBackgroundColor(II)V

    return-void
.end method

.method static synthetic access$10400(Landroid/webkitsec/WebViewCore;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeDumpDomTree(IZ)V

    return-void
.end method

.method static synthetic access$10500(Landroid/webkitsec/WebViewCore;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeDumpRenderTree(IZ)V

    return-void
.end method

.method static synthetic access$10600(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Landroid/webkitsec/WebViewCore;ILjava/lang/String;ZZ)V
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkitsec/WebViewCore;I[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFullScreenPluginHidden(II)V

    return-void
.end method

.method static synthetic access$11100(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativePluginSurfaceReady(I)V

    return-void
.end method

.method static synthetic access$11200(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->setUseMockGeolocation()V

    return-void
.end method

.method static synthetic access$11400(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->setUseMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$11500(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeAutoFillForm(II)V

    return-void
.end method

.method static synthetic access$11600(Landroid/webkitsec/WebViewCore;IILandroid/graphics/Rect;)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/webkitsec/WebViewCore;IIIII)V
    .registers 6
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeDeleteText(IIIII)V

    return-void
.end method

.method static synthetic access$11800(Landroid/webkitsec/WebViewCore;IIIII)Ljava/lang/String;
    .registers 7
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11900(Landroid/webkitsec/WebViewCore;IIIIZZFI)V
    .registers 9
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # F
    .param p8, "x8"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p8}, Landroid/webkitsec/WebViewCore;->nativeCopyMoveSelection(IIIIZZFI)V

    return-void
.end method

.method static synthetic access$12000(Landroid/webkitsec/WebViewCore;IIIII)V
    .registers 6
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeWebTextSelectionAll(IIIII)V

    return-void
.end method

.method static synthetic access$12102(Landroid/webkitsec/WebViewCore;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    return p1
.end method

.method static synthetic access$12200(Landroid/webkitsec/WebViewCore;IIIFZ)Z
    .registers 7
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # F
    .param p5, "x5"    # Z

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSelectClosestWord(IIIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12300(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeClearTextSelectionEx(III)V

    return-void
.end method

.method static synthetic access$12400(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlBT()V

    return-void
.end method

.method static synthetic access$12500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeInsertText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/webkitsec/WebViewCore;IIII)V
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeSelectText(IIII)V

    return-void
.end method

.method static synthetic access$12700(Landroid/webkitsec/WebViewCore;III)Z
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSelectWordAt(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSelectAll(I)V

    return-void
.end method

.method static synthetic access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V

    return-void
.end method

.method static synthetic access$13000(Landroid/webkitsec/WebViewCore;IZ)I
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$13100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->applyreadability(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->loadinitialJs(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13300(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetInitialFocus(II)V

    return-void
.end method

.method static synthetic access$13400(Landroid/webkitsec/WebViewCore;Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Landroid/webkitsec/ValueCallback;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSendColorPickerChoice(II)V

    return-void
.end method

.method static synthetic access$13600(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$13700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeNotificationIDback(II)V

    return-void
.end method

.method static synthetic access$13900(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMoveFocusToNext(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$14000(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMoveFocusToPrevious(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object p1
.end method

.method static synthetic access$14100(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeMouseClick(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Landroid/webkitsec/WebViewCore;II[I[I[IIII)I
    .registers 10
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # [I
    .param p5, "x5"    # [I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p8}, Landroid/webkitsec/WebViewCore;->nativeHandleTouchEvent(II[I[I[IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$14302(Landroid/webkitsec/WebViewCore;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$14400(Landroid/webkitsec/WebViewCore;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14500(Landroid/webkitsec/WebViewCore;)Z
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/BrowserFrame;)Landroid/webkitsec/BrowserFrame;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Landroid/webkitsec/BrowserFrame;

    .prologue
    .line 78
    iput-object p1, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebSettingsClassic;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRevealSelection(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkitsec/WebViewCore;IFI)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeScrollFocusedTextInput(IFI)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewCore$EventHub;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeupdateTextSelection(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->keyPress(I)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Landroid/webkitsec/WebViewClassic$ViewSizeData;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkitsec/WebViewCore;IZII)V
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/webkitsec/WebViewCore;ILandroid/graphics/Rect;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeGetInputTextBounds(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/webkitsec/WebViewCore;III)Z
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeCheckSpellingOfWordAtPosition(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeUnmarkWord(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkitsec/WebViewCore;IIIII)V
    .registers 6
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSetGlobalBounds(IIIII)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRecalcWidthAndForceLayout(I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativePause(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeResume(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkitsec/WebViewCore;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebViewCore;)I
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$4000(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeFreeMemory(I)V

    return-void
.end method

.method static synthetic access$402(Landroid/webkitsec/WebViewCore;I)I
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$4100(Landroid/webkitsec/WebViewCore;II)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSimulateDelKeyForCount(II)V

    return-void
.end method

.method static synthetic access$4200(Landroid/webkitsec/WebViewCore;IIZ)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeGetTextAroundCursor(IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeDeleteSurroundingText(III)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Point;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffset(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffsetImage(I)V

    return-void
.end method

.method static synthetic access$4600(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyHTML(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetBodyEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/webkitsec/WebViewCore;I)I
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeContentSelectionType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/webkitsec/WebViewCore;IJ)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetNewStorageLimit(IJ)V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkitsec/WebViewCore;IZ)Landroid/graphics/Rect;
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeGetCursorRect(IZ)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCanUndo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCanRedo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkitsec/WebViewCore;III)Z
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeisTouchedOutside(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeUndoRedoStateReset(I)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeCopyAndSaveImage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/WebHTMLMarkupData;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/webkitsec/WebViewCore;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetEditable(IZ)V

    return-void
.end method

.method static synthetic access$602(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    .line 78
    sput-object p0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$6100(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetSelectionEditable(III)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeMoveSingleCursorHandler(III)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetComposingRegion(III)V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkitsec/WebViewCore;IF)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetPageZoom(IF)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetSelectionNone(I)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkitsec/WebViewCore;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionNone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetComposingSelectionNone(I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeRestorePreviousSelectionController(I)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSaveSelectionController(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeUpdateIMSelection(III)V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkitsec/WebViewCore;I)I
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCheckSelectionAtBoundry(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .registers 7
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/util/Vector;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeCheckSelectedClosestWord(I)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkitsec/WebViewCore;I)I
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetStateInRichlyEditableText(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeinsertImageContent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeresizeImage(III)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkitsec/WebViewCore;I)I
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativegetCurrentFontSize(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Landroid/webkitsec/WebViewCore;I)I
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativegetCurrentFontValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/webkitsec/WebViewCore;III)Landroid/graphics/Rect;
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeGetImageSize(III)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()V
    .registers 0

    .prologue
    .line 78
    invoke-static {}, Landroid/webkitsec/WebViewCore;->nativeCertTrustChanged()V

    return-void
.end method

.method static synthetic access$8000(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Rect;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Landroid/webkitsec/WebViewCore;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->webkitActionBarDraw()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkitsec/WebViewCore;III)I
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeCheckEndOfWordAtPosition(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$8300(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkitsec/WebViewCore;IIIII)V
    .registers 6
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Landroid/webkitsec/WebViewCore;->nativeSelectBWStartAndEnd(IIIII)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSetCursorFromRangeSelectionController(I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/webkitsec/WebViewCore;III)I
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeIsAtBoundary(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeDropTheDraggedText(III)V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeResetSelectionController(I)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedHTMLText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/webkitsec/WebViewCore;IIILjava/lang/String;III)V
    .registers 8
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p7}, Landroid/webkitsec/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$9200(Landroid/webkitsec/WebViewCore;IILjava/lang/String;IIZZZZ)V
    .registers 10
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Z
    .param p9, "x9"    # Z

    .prologue
    .line 78
    invoke-direct/range {p0 .. p9}, Landroid/webkitsec/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$9300(Landroid/webkitsec/WebViewCore;I)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$9400(Landroid/webkitsec/WebViewCore;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSetFocusControllerActive(IZ)V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$9600(Landroid/webkitsec/WebViewCore;IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .registers 6
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700(Landroid/webkitsec/WebViewCore;IIII)V
    .registers 5
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/WebViewCore;->nativeDeleteSelection(IIII)V

    return-void
.end method

.method static synthetic access$9800(Landroid/webkitsec/WebViewCore;III)V
    .registers 4
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->nativeSetSelection(III)V

    return-void
.end method

.method static synthetic access$9902(Landroid/webkitsec/WebViewCore;I)I
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebViewCore;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkitsec/ViewManager$ChildView;
    .registers 7
    .param p1, "pluginView"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 4575
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkitsec/ViewManager$ChildView;

    move-result-object v0

    .line 4576
    .local v0, "view":Landroid/webkitsec/ViewManager$ChildView;
    if-eqz v0, :cond_9

    .line 4577
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkitsec/ViewManager$ChildView;->attachView(IIII)V

    .line 4578
    :cond_9
    return-object v0
.end method

.method private native applyreadability(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private calculateWindowWidth(I)I
    .registers 5
    .param p1, "viewWidth"    # I

    .prologue
    .line 3492
    move v0, p1

    .line 3493
    .local v0, "width":I
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3494
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 3496
    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    .line 3506
    :cond_10
    :goto_10
    return v0

    .line 3497
    :cond_11
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_18

    .line 3499
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    goto :goto_10

    .line 3502
    :cond_18
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_10
.end method

.method private centerFitRect(IIII)V
    .registers 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 4626
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4631
    :goto_4
    return-void

    .line 4629
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private chromeCanTakeFocus(I)Z
    .registers 4
    .param p1, "webkitDirection"    # I

    .prologue
    .line 418
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->mapDirection(I)I

    move-result v0

    .line 419
    .local v0, "direction":I
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    if-ne v0, v1, :cond_c

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private chromeTakeFocus(I)V
    .registers 5
    .param p1, "webkitDirection"    # I

    .prologue
    .line 407
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_5

    .line 412
    :goto_4
    return-void

    .line 408
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "m":Landroid/os/Message;
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewCore;->mapDirection(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 411
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private clearCache(Z)V
    .registers 3
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 3341
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->clearCache()V

    .line 3347
    return-void
.end method

.method private clearTextEntry()V
    .registers 3

    .prologue
    .line 4372
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4375
    :goto_4
    return-void

    .line 4373
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private contentScrollTo(IIZZ)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animate"    # Z
    .param p4, "onlyIfImeIsShowing"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3822
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_f

    .line 3828
    iput p1, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    .line 3829
    iput p2, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    .line 3843
    :cond_e
    :goto_e
    return-void

    .line 3832
    :cond_f
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v3, :cond_e

    .line 3833
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v4, v3, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_38

    move v3, v1

    :goto_1c
    if-eqz p4, :cond_3a

    :goto_1e
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3836
    .local v0, "msg":Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_3c

    .line 3837
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_e

    .end local v0    # "msg":Landroid/os/Message;
    :cond_38
    move v3, v2

    .line 3833
    goto :goto_1c

    :cond_3a
    move v1, v2

    goto :goto_1e

    .line 3840
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkitsec/ViewManager$ChildView;
    .registers 5
    .param p1, "pluginView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 4551
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_6

    .line 4568
    :goto_5
    return-object v0

    .line 4555
    :cond_6
    if-nez p1, :cond_11

    .line 4556
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4561
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4563
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_20

    move-object v1, p1

    .line 4564
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 4566
    :cond_20
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v1}, Landroid/webkitsec/ViewManager;->createView()Landroid/webkitsec/ViewManager$ChildView;

    move-result-object v0

    .line 4567
    .local v0, "view":Landroid/webkitsec/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_5
.end method

.method private createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "selPtr"    # I

    .prologue
    .line 4330
    new-instance v0, Landroid/webkitsec/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2, p3}, Landroid/webkitsec/WebViewCore$TextSelectionData;-><init>(III)V

    .line 4331
    .local v0, "data":Landroid/webkitsec/WebViewCore$TextSelectionData;
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I

    iput v1, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 4332
    return-object v0
.end method

.method private destroySurface(Landroid/webkitsec/ViewManager$ChildView;)V
    .registers 2
    .param p1, "childView"    # Landroid/webkitsec/ViewManager$ChildView;

    .prologue
    .line 4587
    invoke-virtual {p1}, Landroid/webkitsec/ViewManager$ChildView;->removeView()V

    .line 4588
    return-void
.end method

.method private didFirstLayout(Z)V
    .registers 6
    .param p1, "standardLoad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3919
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    .line 3921
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v2, :cond_b

    .line 3940
    :goto_a
    return-void

    .line 3923
    :cond_b
    if-nez p1, :cond_11

    iget-boolean v2, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_33

    :cond_11
    const/4 v0, 0x1

    .line 3924
    .local v0, "updateViewState":Z
    :goto_12
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->setupViewport(Z)V

    .line 3928
    if-nez v0, :cond_1e

    .line 3929
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->postReadyToDrawAll()V

    .line 3933
    :cond_1e
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3937
    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    .line 3938
    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    .line 3939
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    goto :goto_a

    .end local v0    # "updateViewState":Z
    :cond_33
    move v0, v1

    .line 3923
    goto :goto_12
.end method

.method private focusNodeChanged(ILandroid/webkitsec/WebViewCore$WebKitHitTest;)V
    .registers 6
    .param p1, "nodePointer"    # I
    .param p2, "hitTest"    # Landroid/webkitsec/WebViewCore$WebKitHitTest;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 401
    :goto_4
    return-void

    .line 399
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method static getFixedDisplayDensity(Landroid/content/Context;)F
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x42c80000

    .line 3951
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3952
    .local v0, "density":F
    mul-float v1, v0, v2

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    return v1
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .registers 10
    .param p1, "libName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4502
    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v4, :cond_6

    .line 4523
    :goto_5
    return-object v3

    .line 4506
    :cond_6
    invoke-static {v3}, Landroid/webkitsec/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkitsec/PluginManager;

    move-result-object v2

    .line 4508
    .local v2, "pluginManager":Landroid/webkitsec/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkitsec/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4509
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_30

    .line 4510
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4515
    :cond_30
    :try_start_30
    invoke-virtual {v2, v1, p2}, Landroid/webkitsec/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_33} :catch_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_33} :catch_56

    move-result-object v3

    goto :goto_5

    .line 4516
    :catch_35
    move-exception v0

    .line 4517
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4518
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_56
    move-exception v0

    .line 4519
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private getUsedQuota()J
    .registers 9

    .prologue
    .line 3512
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v4

    .line 3513
    .local v4, "webStorage":Landroid/webkitsec/WebStorageClassic;
    invoke-virtual {v4}, Landroid/webkitsec/WebStorageClassic;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 3515
    .local v1, "origins":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/webkitsec/WebStorage$Origin;>;"
    if-nez v1, :cond_d

    .line 3516
    const-wide/16 v2, 0x0

    .line 3522
    :cond_c
    return-wide v2

    .line 3518
    :cond_d
    const-wide/16 v2, 0x0

    .line 3519
    .local v2, "usedQuota":J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkitsec/WebStorage$Origin;

    .line 3520
    .local v5, "website":Landroid/webkitsec/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkitsec/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_13
.end method

.method private hideFullScreenPlugin()V
    .registers 3

    .prologue
    .line 4543
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4548
    :goto_4
    return-void

    .line 4546
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private initEditField(IIILandroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "selectionPtr"    # I
    .param p4, "initData"    # Landroid/webkitsec/WebViewCore$TextFieldInitData;

    .prologue
    .line 4380
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4390
    :goto_4
    return-void

    .line 4383
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8a

    invoke-static {v0, v1, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4385
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    iget v2, p4, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mFieldPointer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/WebViewCore;->createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private initSelectField(Landroid/webkitsec/WebViewCore$TextFieldInitData;)V
    .registers 4
    .param p1, "initData"    # Landroid/webkitsec/WebViewCore$TextFieldInitData;

    .prologue
    .line 4395
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4400
    :goto_4
    return-void

    .line 4398
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private initialize()V
    .registers 7

    .prologue
    .line 265
    new-instance v0, Landroid/webkitsec/BrowserFrame;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    iget-object v5, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkitsec/WebViewCore;Landroid/webkitsec/CallbackProxy;Landroid/webkitsec/WebSettingsClassic;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 269
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebSettingsClassic;->syncSettingsAndCreateHandler(Landroid/webkitsec/BrowserFrame;)V

    .line 271
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->getInstance()Landroid/webkitsec/WebIconDatabaseClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebIconDatabaseClassic;->createHandler()V

    .line 273
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebStorageClassic;->createHandler()V

    .line 275
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/GeolocationPermissionsClassic;->createHandler()V

    .line 278
    invoke-static {}, Landroid/webkitsec/FileSystemQuota;->getInstance()Landroid/webkitsec/FileSystemQuota;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/FileSystemQuota;->createHandler()V

    .line 282
    invoke-static {}, Landroid/webkitsec/NotificationPermissions;->getInstance()Landroid/webkitsec/NotificationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/NotificationPermissions;->createHandler()V

    .line 286
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$200(Landroid/webkitsec/WebViewCore$EventHub;)V

    .line 290
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_56

    .line 291
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    :cond_56
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .registers 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 356
    .local v0, "fileType":I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz p0, :cond_23

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method static isUpdatePicturePaused(Landroid/webkitsec/WebViewCore;)Z
    .registers 2
    .param p0, "core"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 3760
    if-eqz p0, :cond_5

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private keepScreenOn(Z)V
    .registers 5
    .param p1, "screenOn"    # Z

    .prologue
    .line 4491
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_16

    .line 4492
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4494
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    :goto_11
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4495
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4497
    .end local v0    # "message":Landroid/os/Message;
    :cond_16
    return-void

    .line 4494
    .restart local v0    # "message":Landroid/os/Message;
    :cond_17
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private key(Landroid/view/KeyEvent;IZ)V
    .registers 15
    .param p1, "evt"    # Landroid/view/KeyEvent;
    .param p2, "canTakeFocusDirection"    # I
    .param p3, "isDown"    # Z

    .prologue
    .line 3367
    iput p2, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    .line 3368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3369
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 3371
    .local v3, "unicodeChar":I
    if-nez v2, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_25

    .line 3374
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 3377
    :cond_25
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v7

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    move-result v9

    .line 3381
    .local v9, "handled":Z
    if-nez p3, :cond_47

    const/16 v0, 0x13

    if-lt v2, v0, :cond_47

    const/16 v0, 0x16

    if-le v2, v0, :cond_4b

    :cond_47
    const/16 v0, 0x42

    if-ne v2, v0, :cond_50

    .line 3383
    :cond_4b
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V

    .line 3386
    :cond_50
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewCore;->mChromeCanFocusDirection:I

    .line 3387
    if-nez v9, :cond_74

    const/16 v0, 0x42

    if-eq v2, v0, :cond_74

    .line 3388
    const/16 v0, 0x13

    if-lt v2, v0, :cond_75

    const/16 v0, 0x16

    if-gt v2, v0, :cond_75

    .line 3390
    if-eqz p2, :cond_74

    if-eqz p3, :cond_74

    .line 3391
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 3393
    .local v10, "m":Landroid/os/Message;
    iput p2, v10, Landroid/os/Message;->arg1:I

    .line 3394
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 3403
    .end local v10    # "m":Landroid/os/Message;
    :cond_74
    :goto_74
    return-void

    .line 3401
    :cond_75
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_74
.end method

.method private keyPress(I)V
    .registers 11
    .param p1, "unicodeChar"    # I

    .prologue
    const/4 v2, 0x0

    .line 3406
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    const/4 v8, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 3407
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/webkitsec/WebViewCore;->nativeKey(IIIIZZZZ)Z

    .line 3408
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3350
    .local p2, "extraHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "webcore"

    const-string v1, " CORE loadUrl: called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 3353
    return-void
.end method

.method private native loadinitialJs(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private mapDirection(I)I
    .registers 3
    .param p1, "webkitDirection"    # I

    .prologue
    .line 438
    packed-switch p1, :pswitch_data_16

    .line 452
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 440
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 442
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    .line 444
    :pswitch_9
    const/16 v0, 0x21

    goto :goto_4

    .line 446
    :pswitch_c
    const/16 v0, 0x82

    goto :goto_4

    .line 448
    :pswitch_f
    const/16 v0, 0x11

    goto :goto_4

    .line 450
    :pswitch_12
    const/16 v0, 0x42

    goto :goto_4

    .line 438
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private native nativeAutoFillForm(II)V
.end method

.method private native nativeCanRedo(I)Z
.end method

.method private native nativeCanUndo(I)Z
.end method

.method private static native nativeCertTrustChanged()V
.end method

.method private native nativeCheckEndOfWordAtPosition(III)I
.end method

.method private native nativeCheckSelectedClosestWord(I)V
.end method

.method private native nativeCheckSelectionAtBoundry(I)I
.end method

.method private native nativeCheckSpellingOfWordAtPosition(III)Z
.end method

.method private native nativeClearContent(I)V
.end method

.method private native nativeClearTextSelection(I)V
.end method

.method private native nativeClearTextSelectionEx(III)V
.end method

.method private native nativeCloseIdleConnections(I)V
.end method

.method private native nativeContentInvalidateAll(I)V
.end method

.method private native nativeContentSelectionType(I)I
.end method

.method private native nativeCopyAndSaveImage(ILjava/lang/String;)Z
.end method

.method private native nativeCopyMoveSelection(IIIIZZFI)V
.end method

.method private native nativeDeleteSelection(IIII)V
.end method

.method private native nativeDeleteSurroundingText(III)V
.end method

.method private native nativeDeleteText(IIIII)V
.end method

.method private native nativeDropTheDraggedText(III)V
.end method

.method private native nativeDumpDomTree(IZ)V
.end method

.method private native nativeDumpRenderTree(IZ)V
.end method

.method private native nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeExtractSmartClipData(IIIII)Ljava/lang/String;
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFindAll(ILjava/lang/String;)I
.end method

.method private native nativeFindNext(IZ)I
.end method

.method private native nativeFocusBoundsChanged(I)Z
.end method

.method private native nativeFreeMemory(I)V
.end method

.method private native nativeFullScreenPluginHidden(II)V
.end method

.method private native nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
.end method

.method private native nativeGetBodyEmpty(I)Z
.end method

.method private native nativeGetBodyHTML(I)Ljava/lang/String;
.end method

.method private native nativeGetBodyText(I)Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth(I)I
.end method

.method private native nativeGetCursorRect(IZ)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;
.end method

.method private native nativeGetImageSize(III)Landroid/graphics/Rect;
.end method

.method private native nativeGetInputTextBounds(ILandroid/graphics/Rect;)V
.end method

.method private native nativeGetSelectedHTMLText(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectedImageRect(I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelectedImageUri(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectedText(I)Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity(I)I
.end method

.method private native nativeGetSelectionMultiColInfo(I)Z
.end method

.method private native nativeGetSelectionNone(I)Z
.end method

.method private native nativeGetSelectionOffset(I)Landroid/graphics/Point;
.end method

.method private native nativeGetSelectionOffsetImage(I)V
.end method

.method private native nativeGetStateInRichlyEditableText(I)I
.end method

.method private native nativeGetText(IIIII)Ljava/lang/String;
.end method

.method private native nativeGetTextAroundCursor(IIZ)Ljava/lang/String;
.end method

.method private native nativeGetWebFeedLinks(I)[Landroid/webkitsec/WebFeedLink;
.end method

.method private native nativeHandleTouchEvent(II[I[I[IIII)I
.end method

.method private native nativeHitTest(IIIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
.end method

.method private native nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation
.end method

.method private native nativeInsertText(ILjava/lang/String;)V
.end method

.method private native nativeIsAtBoundary(III)I
.end method

.method private native nativeKey(IIIIZZZZ)Z
.end method

.method private native nativeModifySelection(III)Ljava/lang/String;
.end method

.method private native nativeMouseClick(I)Z
.end method

.method private native nativeMoveFocusToNext(I)Z
.end method

.method private native nativeMoveFocusToPrevious(I)Z
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveSingleCursorHandler(III)V
.end method

.method private native nativeNotificationIDback(II)V
.end method

.method private native nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
.end method

.method private native nativeNotificationResponseback(Ljava/lang/String;I)V
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause(I)V
.end method

.method private native nativePluginSurfaceReady(I)V
.end method

.method private native nativeProvideVisitedHistory(I[Ljava/lang/String;)V
.end method

.method private native nativeRecalcWidthAndForceLayout(I)V
.end method

.method private native nativeRecordContent(ILandroid/graphics/Point;)I
.end method

.method private native nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IIILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(III)Ljava/lang/String;
.end method

.method private native nativeResetSelectionController(I)V
.end method

.method private native nativeRestorePreviousSelectionController(I)V
.end method

.method private native nativeResume(I)V
.end method

.method private native nativeRetrieveAnchorText(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(III)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(III)Ljava/lang/String;
.end method

.method private native nativeRevealSelection(I)V
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController(I)V
.end method

.method private native nativeScrollFocusedTextInput(IFI)V
.end method

.method private native nativeScrollLayer(IILandroid/graphics/Rect;)V
.end method

.method private native nativeSelectAll(I)V
.end method

.method private native nativeSelectBWStartAndEnd(IIIII)V
.end method

.method private native nativeSelectClosestWord(IIIFZ)Z
.end method

.method private native nativeSelectText(IIII)V
.end method

.method private native nativeSelectWordAt(III)Z
.end method

.method private native nativeSendColorPickerChoice(II)V
.end method

.method private native nativeSendListBoxChoice(II)V
.end method

.method private native nativeSendListBoxChoices(I[ZI)V
.end method

.method private native nativeSetBackgroundColor(II)V
.end method

.method private native nativeSetComposingRegion(III)V
.end method

.method private native nativeSetComposingSelectionNone(I)V
.end method

.method private native nativeSetCursorFromRangeSelectionController(I)V
.end method

.method private native nativeSetEditable(IZ)V
.end method

.method private native nativeSetFocusControllerActive(IZ)V
.end method

.method private native nativeSetGlobalBounds(IIIII)V
.end method

.method private native nativeSetInitialFocus(II)V
.end method

.method private native nativeSetIsPaused(IZ)V
.end method

.method private native nativeSetJsFlags(ILjava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(IJ)V
.end method

.method private native nativeSetPageZoom(IF)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(III)V
.end method

.method private native nativeSetSelectionEditable(III)V
.end method

.method private native nativeSetSelectionEditableImage(III)V
.end method

.method private native nativeSetSelectionNone(I)V
.end method

.method private native nativeSetSize(IIIIFIIIIZ)V
.end method

.method private native nativeSimulateDelKeyForCount(II)V
.end method

.method private native nativeUndoRedoStateReset(I)V
.end method

.method private native nativeUnmarkWord(ILjava/lang/String;)V
.end method

.method private native nativeUpdateIMSelection(III)V
.end method

.method private native nativeUpdateTextSelectionStartAndEnd(I)V
.end method

.method private native nativeWebTextSelectionAll(IIIII)V
.end method

.method private native nativegetCurrentFontSize(I)I
.end method

.method private native nativegetCurrentFontValue(I)I
.end method

.method private native nativeinsertImageContent(ILjava/lang/String;)V
.end method

.method private native nativeisTouchedOutside(III)Z
.end method

.method private native nativeresizeImage(III)V
.end method

.method private native nativeupdateTextSelection(I)V
.end method

.method private needTouchEvents(Z)V
    .registers 6
    .param p1, "need"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4296
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_15

    .line 4297
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_e
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4301
    :cond_15
    return-void

    :cond_16
    move v0, v1

    .line 4297
    goto :goto_e
.end method

.method private openColorChooser()V
    .registers 4

    .prologue
    .line 4454
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_1a

    .line 4455
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "openColorChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4456
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4458
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4460
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method private openFileChooser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "acceptType"    # Ljava/lang/String;
    .param p2, "capture"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 464
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->openFileChooser(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 466
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_5d

    .line 467
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "stringUri":Ljava/lang/String;
    const-string v0, "com.google.android.apps.docs.storage"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 469
    const-string v7, ""

    .line 472
    .local v7, "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 476
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    .line 478
    :try_start_2d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 479
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_45

    move-result-object v7

    .line 482
    :cond_38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 487
    :goto_3b
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, "uriString":Ljava/lang/String;
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v9}, Landroid/webkitsec/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "stringUri":Ljava/lang/String;
    .end local v9    # "uriString":Ljava/lang/String;
    :goto_44
    return-object v9

    .line 482
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "filePath":Ljava/lang/String;
    .restart local v8    # "stringUri":Ljava/lang/String;
    :catchall_45
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 485
    :cond_4a
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_3b

    .line 493
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "filePath":Ljava/lang/String;
    :cond_4f
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    const-string v2, "Cannot attach file from Drive"

    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    const-string v9, ""

    goto :goto_44

    .line 498
    .end local v8    # "stringUri":Ljava/lang/String;
    :cond_5d
    const-string v9, ""

    goto :goto_44
.end method

.method private native passToJs(IILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .registers 2

    .prologue
    .line 328
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_c
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkitsec/JWebCoreJavaBridge;->pause()V

    .line 333
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkitsec/WebViewCore;)V
    .registers 3
    .param p0, "core"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 3723
    if-eqz p0, :cond_c

    .line 3724
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_d

    .line 3737
    :cond_c
    :goto_c
    return-void

    .line 3726
    :cond_d
    monitor-enter p0

    .line 3727
    :try_start_e
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_1f

    .line 3728
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    monitor-exit p0

    goto :goto_c

    .line 3734
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0

    .line 3733
    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    .line 3734
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1c

    goto :goto_c
.end method

.method private performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .registers 12
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "slop"    # I
    .param p4, "moveMouse"    # Z

    .prologue
    .line 3332
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkitsec/WebViewCore;->nativeHitTest(IIIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v6

    .line 3333
    .local v6, "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    iput p1, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestX:I

    .line 3334
    iput p2, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestY:I

    .line 3335
    iput p3, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestSlop:I

    .line 3336
    iput-boolean p4, v6, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mHitTestMovedMouse:Z

    .line 3337
    return-object v6
.end method

.method static reducePriority()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 3698
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3699
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3700
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3702
    return-void
.end method

.method private requestDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4465
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v2, :cond_1c

    .line 4466
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x9e

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4468
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 4469
    .local v1, "typeval":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 4470
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 4471
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4472
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4474
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "typeval":[Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private requestKeyboard(Z)V
    .registers 6
    .param p1, "showKeyboard"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4445
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_15

    .line 4446
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_e
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4450
    :cond_15
    return-void

    :cond_16
    move v0, v1

    .line 4446
    goto :goto_e
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "enabledArray"    # [I
    .param p3, "selection"    # I

    .prologue
    .line 4437
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_9

    .line 4438
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->requestListBox([Ljava/lang/String;[II)V

    .line 4441
    :cond_9
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "enabledArray"    # [I
    .param p3, "selectedArray"    # [I

    .prologue
    .line 4429
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_9

    .line 4430
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->requestListBox([Ljava/lang/String;[I[I)V

    .line 4432
    :cond_9
    return-void
.end method

.method private restoreScale(FF)V
    .registers 4
    .param p1, "scale"    # F
    .param p2, "textWrapScale"    # F

    .prologue
    .line 4285
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    .line 4287
    iput p1, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    .line 4288
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4289
    iput p2, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    .line 4292
    :cond_17
    return-void
.end method

.method private restoreState(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 3772
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v1

    .line 3774
    .local v1, "list":Landroid/webkitsec/WebBackForwardListClassic;
    if-nez v1, :cond_9

    .line 3784
    :goto_8
    return-void

    .line 3777
    :cond_9
    invoke-virtual {v1}, Landroid/webkitsec/WebBackForwardListClassic;->getSize()I

    move-result v2

    .line 3778
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_1e

    .line 3779
    invoke-virtual {v1, v0}, Landroid/webkitsec/WebBackForwardListClassic;->getItemAtIndex(I)Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v3

    iget-object v4, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iget v4, v4, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkitsec/WebHistoryItemClassic;->inflate(I)V

    .line 3778
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3781
    :cond_1e
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    .line 3782
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    iget v3, v3, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkitsec/WebBackForwardListClassic;->restoreIndex(II)V

    .line 3783
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkitsec/BrowserFrame;->mLoadInitFromJava:Z

    goto :goto_8
.end method

.method static resumePriority()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 3706
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3707
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3708
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3710
    return-void
.end method

.method public static resumeTimers()V
    .registers 2

    .prologue
    .line 339
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v0, :cond_c

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_c
    sget-object v0, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkitsec/JWebCoreJavaBridge;->resume()V

    .line 344
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkitsec/WebViewCore;)V
    .registers 3
    .param p0, "core"    # Landroid/webkitsec/WebViewCore;

    .prologue
    .line 3740
    if-eqz p0, :cond_6

    .line 3742
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_7

    .line 3757
    :cond_6
    :goto_6
    return-void

    .line 3745
    :cond_7
    monitor-enter p0

    .line 3746
    :try_start_8
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_19

    .line 3747
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    monitor-exit p0

    goto :goto_6

    .line 3755
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v0

    .line 3752
    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsPaused:Z

    .line 3754
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    .line 3755
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_16

    goto :goto_6
.end method

.method private saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Landroid/webkitsec/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3676
    .local p2, "callback":Landroid/webkitsec/ValueCallback;, "Landroid/webkitsec/ValueCallback<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$DrawData;-><init>()V

    .line 3678
    .local v0, "draw":Landroid/webkitsec/WebViewCore$DrawData;
    iget v3, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v3, v4}, Landroid/webkitsec/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v3

    iput v3, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    .line 3679
    const/4 v1, 0x0

    .line 3681
    .local v1, "result":Z
    :try_start_10
    invoke-static {p1, v0}, Landroid/webkitsec/ViewStateSerializer;->serializeViewState(Ljava/io/OutputStream;Landroid/webkitsec/WebViewCore$DrawData;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_33

    move-result v1

    .line 3685
    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v3}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 3686
    iget v3, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    if-eqz v3, :cond_32

    .line 3687
    iget-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v3, :cond_2d

    .line 3688
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    .line 3689
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v4, 0x82

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v3, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    .line 3691
    :cond_2d
    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    .line 3692
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V

    .line 3694
    :cond_32
    return-void

    .line 3682
    :catch_33
    move-exception v2

    .line 3683
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "webcore"

    const-string v4, "Failed to save view state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z

    .prologue
    .line 3359
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4645
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .registers 1

    .prologue
    .line 3871
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    .line 3872
    return-void
.end method

.method private sendPluginDrawMsg()V
    .registers 2

    .prologue
    .line 3908
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 3909
    return-void
.end method

.method private sendScrollRectOnScreen(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_16

    .line 3849
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xb4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3853
    :cond_16
    return-void
.end method

.method private sendStartActionMode(Z)V
    .registers 7
    .param p1, "textSelected"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3859
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_23

    .line 3860
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0xa2

    if-eqz p1, :cond_24

    move v0, v1

    :goto_f
    invoke-static {v3, v4, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3862
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v1, v0, :cond_23

    .line 3863
    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3866
    :cond_23
    return-void

    :cond_24
    move v0, v2

    .line 3860
    goto :goto_f
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .registers 4
    .param p0, "messageType"    # I
    .param p1, "argument"    # Ljava/lang/Object;

    .prologue
    .line 3713
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 3717
    :goto_4
    return-void

    .line 3716
    :cond_5
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method private sendViewInvalidate(IIII)V
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3879
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_16

    .line 3880
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3884
    :cond_16
    return-void
.end method

.method private setScrollbarModes(II)V
    .registers 5
    .param p1, "hMode"    # I
    .param p2, "vMode"    # I

    .prologue
    .line 4635
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v0, :cond_5

    .line 4640
    :goto_4
    return-void

    .line 4638
    :cond_5
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method static setShouldMonitorWebCoreThread()V
    .registers 1

    .prologue
    .line 4689
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkitsec/WebViewCore;->sShouldMonitorWebCoreThread:Z

    .line 4690
    return-void
.end method

.method private setUseMockDeviceOrientation()V
    .registers 2

    .prologue
    .line 4648
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->setUseMock()V

    .line 4649
    return-void
.end method

.method private setUseMockGeolocation()V
    .registers 2

    .prologue
    .line 4652
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0}, Landroid/webkitsec/MockGeolocation;->setUseMock()V

    .line 4653
    return-void
.end method

.method private native setViewportSettingsFromNative(I)V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .registers 6
    .param p1, "queryId"    # I
    .param p2, "preview"    # Ljava/lang/String;

    .prologue
    .line 4478
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_16

    .line 4479
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x84

    new-instance v2, Landroid/webkitsec/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkitsec/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4483
    :cond_16
    return-void
.end method

.method private setupViewport(Z)V
    .registers 17
    .param p1, "updateViewState"    # Z

    .prologue
    .line 3955
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    if-nez v11, :cond_9

    .line 4281
    :cond_8
    :goto_8
    return-void

    .line 3960
    :cond_9
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isSetupViewportDisabled()Z

    move-result v11

    if-nez v11, :cond_16

    .line 3961
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v11}, Landroid/webkitsec/WebViewCore;->setViewportSettingsFromNative(I)V

    .line 3964
    :cond_16
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_36

    .line 3965
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_28

    .line 3966
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 3969
    :cond_28
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_36

    .line 3970
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 3975
    :cond_36
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->forceUserScalable()Z

    move-result v11

    if-eqz v11, :cond_65

    .line 3976
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    .line 3977
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_160

    .line 3978
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_55

    .line 3979
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 3982
    :cond_55
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_65

    .line 3983
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    .line 3997
    :cond_65
    :goto_65
    const/high16 v0, 0x3f800000

    .line 3998
    .local v0, "adjust":F
    const-string v11, "JP"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CountryISO"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_19f

    .line 4000
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_17e

    .line 4001
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/webkitsec/WebViewCore;->getFixedDisplayDensity(Landroid/content/Context;)F

    move-result v0

    .line 4009
    :cond_84
    :goto_84
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4010
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isDefaultZoomChanged()Z

    move-result v11

    if-nez v11, :cond_9e

    if-eqz v4, :cond_a4

    const-string v11, "com.android.email"

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a4

    .line 4011
    :cond_9e
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v0

    .line 4070
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_a4
    :goto_a4
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 4072
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_c8

    .line 4073
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 4076
    :cond_c8
    const/high16 v11, 0x42c80000

    mul-float/2addr v11, v0

    float-to-int v2, v11

    .line 4078
    .local v2, "defaultScale":I
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_d7

    .line 4079
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 4081
    :cond_d7
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_e2

    .line 4082
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 4084
    :cond_e2
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_ed

    .line 4085
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    .line 4089
    :cond_ed
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_f7

    .line 4090
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-nez v11, :cond_f7

    .line 4091
    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 4094
    :cond_f7
    iget-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mViewportUserScalable:Z

    if-nez v11, :cond_101

    .line 4095
    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    .line 4096
    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 4097
    iput v2, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    .line 4099
    :cond_101
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-le v11, v12, :cond_10f

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-eqz v11, :cond_10f

    .line 4101
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 4103
    :cond_10f
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_11d

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-ge v11, v12, :cond_11d

    .line 4105
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    .line 4107
    :cond_11d
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-gez v11, :cond_128

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-ne v11, v2, :cond_128

    .line 4108
    const/4 v11, 0x0

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    .line 4112
    :cond_128
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-eqz v11, :cond_2ca

    if-nez p1, :cond_2ca

    .line 4114
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 4115
    new-instance v7, Landroid/webkitsec/WebViewCore$ViewState;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$ViewState;-><init>()V

    .line 4116
    .local v7, "viewState":Landroid/webkitsec/WebViewCore$ViewState;
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    .line 4117
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float/2addr v11, v12

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    .line 4118
    iput v0, v7, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    .line 4120
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    .line 4122
    const/4 v11, 0x0

    iput v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    .line 4123
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/webkitsec/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 4124
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x6d

    invoke-static {v11, v12, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_8

    .line 3987
    .end local v0    # "adjust":F
    .end local v2    # "defaultScale":I
    .end local v7    # "viewState":Landroid/webkitsec/WebViewCore$ViewState;
    :cond_160
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    if-lez v11, :cond_16e

    .line 3988
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    const/16 v12, 0x32

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    .line 3990
    :cond_16e
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    if-lez v11, :cond_65

    .line 3991
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    const/16 v12, 0xc8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_65

    .line 4002
    .restart local v0    # "adjust":F
    :cond_17e
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_84

    .line 4003
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 4005
    const/high16 v11, 0x42c80000

    mul-float/2addr v11, v0

    float-to-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    div-float v0, v11, v12

    goto/16 :goto_84

    .line 4016
    :cond_19f
    const-string v11, "jp.co.nttdocomo.carriermail"

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1da

    .line 4018
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c2

    .line 4019
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    goto/16 :goto_a4

    .line 4020
    :cond_1c2
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_a4

    .line 4021
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_a4

    .line 4030
    :cond_1da
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_287

    .line 4031
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_237

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0x64

    if-eq v11, v12, :cond_237

    const/4 v11, -0x1

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    if-ne v11, v12, :cond_237

    .line 4033
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 4058
    :cond_212
    :goto_212
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    cmpl-float v11, v0, v11

    if-nez v11, :cond_222

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v11

    cmpl-float v11, v0, v11

    if-eqz v11, :cond_233

    .line 4060
    :cond_222
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v11, v11, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x87

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v11, v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 4063
    :cond_233
    iput v0, p0, Landroid/webkitsec/WebViewCore;->mPrevAdjust:F

    goto/16 :goto_a4

    .line 4034
    :cond_237
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v11, :cond_212

    .line 4035
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4037
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/String;

    const-string v12, "com.android.browser"

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4039
    .restart local v4    # "pkgName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_280

    .line 4041
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-gtz v11, :cond_25f

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_27b

    .line 4042
    :cond_25f
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    .line 4046
    :cond_27b
    :goto_27b
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    goto :goto_212

    .line 4045
    :cond_280
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v0

    goto :goto_27b

    .line 4049
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_287
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-lez v11, :cond_2b1

    .line 4050
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    .line 4051
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x42c80000

    mul-float/2addr v11, v12

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v13

    iget v13, v13, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    mul-int/2addr v12, v13

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_212

    .line 4054
    :cond_2b1
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    if-nez v11, :cond_212

    .line 4055
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportDensityDpi:I

    iput v11, p0, Landroid/webkitsec/WebViewCore;->mPrevViewportDensityDpi:I

    .line 4056
    const/high16 v11, 0x42c80000

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v12

    invoke-virtual {v12}, Landroid/webkitsec/WebSettingsClassic;->getDefaultZoom()Landroid/webkitsec/WebSettings$ZoomDensity;

    move-result-object v12

    iget v12, v12, Landroid/webkitsec/WebSettings$ZoomDensity;->value:I

    int-to-float v12, v12

    div-float v0, v11, v12

    goto/16 :goto_212

    .line 4133
    .restart local v2    # "defaultScale":I
    :cond_2ca
    iget v8, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    .line 4134
    .local v8, "viewportWidth":I
    if-nez v8, :cond_380

    .line 4138
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v9

    .line 4139
    .local v9, "webViewWidth":I
    int-to-float v11, v9

    div-float/2addr v11, v0

    float-to-int v8, v11

    .line 4140
    if-nez v8, :cond_2d9

    .line 4148
    :cond_2d9
    :goto_2d9
    new-instance v11, Landroid/webkitsec/WebViewCore$ViewState;

    invoke-direct {v11}, Landroid/webkitsec/WebViewCore$ViewState;-><init>()V

    iput-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 4149
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMinimumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    .line 4150
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mViewportMaximumScale:I

    int-to-float v12, v12

    const/high16 v13, 0x42c80000

    div-float/2addr v12, v13

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    .line 4151
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    .line 4152
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    .line 4153
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mScrollY:I

    .line 4154
    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredX:I

    if-nez v11, :cond_38a

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredY:I

    if-nez v11, :cond_38a

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-eqz v11, :cond_38a

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v11}, Landroid/webkitsec/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v11

    if-eqz v11, :cond_38a

    const/4 v11, 0x1

    :goto_31b
    iput-boolean v11, v12, Landroid/webkitsec/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 4159
    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v11, :cond_38c

    const/4 v11, 0x1

    :goto_324
    iput-boolean v11, v12, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    .line 4160
    iget-boolean v11, p0, Landroid/webkitsec/WebViewCore;->mIsRestored:Z

    if-eqz v11, :cond_397

    .line 4161
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    .line 4162
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    .line 4163
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_38e

    .line 4164
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mRestoredTextWrapScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    .line 4187
    :goto_342
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-boolean v11, v11, Landroid/webkitsec/WebViewClassic;->mHeightCanMeasure:Z

    if-eqz v11, :cond_3e4

    .line 4193
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewClassic;->mLastHeightSent:I

    .line 4196
    new-instance v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$ViewSizeData;-><init>()V

    .line 4197
    .local v1, "data":Landroid/webkitsec/WebViewClassic$ViewSizeData;
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v11, v11, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    .line 4198
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    .line 4201
    iget v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 4202
    const/high16 v11, -0x40800000

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    .line 4203
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 4204
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 4211
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v12, 0x69

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    .line 4212
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v12, 0x0

    const/16 v13, 0x69

    invoke-static {v12, v13, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_8

    .line 4146
    .end local v1    # "data":Landroid/webkitsec/WebViewClassic$ViewSizeData;
    .end local v9    # "webViewWidth":I
    :cond_380
    int-to-float v11, v8

    iget v12, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .restart local v9    # "webViewWidth":I
    goto/16 :goto_2d9

    .line 4154
    :cond_38a
    const/4 v11, 0x0

    goto :goto_31b

    .line 4159
    :cond_38c
    const/4 v11, 0x0

    goto :goto_324

    .line 4166
    :cond_38e
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_342

    .line 4169
    :cond_397
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    if-lez v11, :cond_3aa

    .line 4170
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v13, p0, Landroid/webkitsec/WebViewCore;->mViewportInitialScale:I

    int-to-float v13, v13

    const/high16 v14, 0x42c80000

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto :goto_342

    .line 4172
    :cond_3aa
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-lez v11, :cond_3cb

    iget v11, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-ge v11, v9, :cond_3cb

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v11

    if-nez v11, :cond_3cb

    .line 4174
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    int-to-float v13, v9

    iget v14, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    iput v13, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    iput v13, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_342

    .line 4177
    :cond_3cb
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    .line 4178
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v11

    if-eqz v11, :cond_3de

    .line 4180
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_342

    .line 4182
    :cond_3de
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput v0, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_342

    .line 4215
    :cond_3e4
    if-nez v8, :cond_3ed

    .line 4218
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    const/4 v12, 0x0

    iput v12, v11, Landroid/webkitsec/WebViewClassic;->mLastWidthSent:I

    goto/16 :goto_8

    .line 4220
    :cond_3ed
    new-instance v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    invoke-direct {v1}, Landroid/webkitsec/WebViewClassic$ViewSizeData;-><init>()V

    .line 4224
    .restart local v1    # "data":Landroid/webkitsec/WebViewClassic$ViewSizeData;
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    .line 4225
    .local v5, "tentativeScale":F
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_470

    .line 4232
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v5, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    .line 4233
    int-to-float v11, v9

    div-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 4234
    .local v6, "tentativeViewWidth":I
    invoke-direct {p0, v6}, Landroid/webkitsec/WebViewCore;->calculateWindowWidth(I)I

    move-result v10

    .line 4238
    .local v10, "windowWidth":I
    int-to-float v11, v9

    int-to-float v12, v10

    div-float/2addr v11, v12

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    .line 4239
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v11

    if-nez v11, :cond_41e

    .line 4241
    iget v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    invoke-static {v11, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    .line 4243
    :cond_41e
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v11

    if-eqz v11, :cond_432

    .line 4245
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget v13, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    invoke-virtual {v12, v13}, Landroid/webkitsec/WebViewClassic;->computeReadingLevelScale(F)F

    move-result v12

    iput v12, v11, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    .line 4260
    .end local v6    # "tentativeViewWidth":I
    .end local v10    # "windowWidth":I
    :cond_432
    :goto_432
    int-to-float v11, v9

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    .line 4266
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    if-nez v11, :cond_473

    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    :goto_44e
    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    .line 4269
    int-to-float v11, v9

    iget-object v12, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget v12, v12, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 4271
    const/4 v11, 0x0

    iput-boolean v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    .line 4272
    const/4 v11, 0x0

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    iput v11, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    .line 4275
    iget-object v11, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/16 v12, 0x69

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v11, v12}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    .line 4278
    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_8

    .line 4250
    :cond_470
    iput v5, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    goto :goto_432

    .line 4266
    :cond_473
    iget v11, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    int-to-float v11, v11

    iget v12, v1, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    int-to-float v12, v8

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    goto :goto_44e
.end method

.method private showFullScreenPlugin(Landroid/webkitsec/ViewManager$ChildView;II)V
    .registers 7
    .param p1, "childView"    # Landroid/webkitsec/ViewManager$ChildView;
    .param p2, "orientation"    # I
    .param p3, "npp"    # I

    .prologue
    .line 4529
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_5

    .line 4539
    :goto_4
    return-void

    .line 4533
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4535
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p1, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4536
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4537
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4538
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method private showRect(IIIIIIFFFF)V
    .registers 14
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "contentWidth"    # I
    .param p6, "contentHeight"    # I
    .param p7, "xPercentInDoc"    # F
    .param p8, "xPercentInView"    # F
    .param p9, "yPercentInDoc"    # F
    .param p10, "yPercentInView"    # F

    .prologue
    .line 4607
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_2a

    .line 4608
    new-instance v0, Landroid/webkitsec/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$ShowRectData;-><init>()V

    .line 4609
    .local v0, "data":Landroid/webkitsec/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mLeft:I

    .line 4610
    iput p2, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mTop:I

    .line 4611
    iput p3, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mWidth:I

    .line 4612
    iput p4, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mHeight:I

    .line 4613
    iput p5, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentWidth:I

    .line 4614
    iput p6, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentHeight:I

    .line 4615
    iput p7, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 4616
    iput p8, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 4617
    iput p9, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 4618
    iput p10, v0, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 4619
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4622
    .end local v0    # "data":Landroid/webkitsec/WebViewCore$ShowRectData;
    :cond_2a
    return-void
.end method

.method private updateSurface(Landroid/webkitsec/ViewManager$ChildView;IIII)V
    .registers 6
    .param p1, "childView"    # Landroid/webkitsec/ViewManager$ChildView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 4583
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkitsec/ViewManager$ChildView;->attachView(IIII)V

    .line 4584
    return-void
.end method

.method private updateTextSelection(IIIII)V
    .registers 9
    .param p1, "pointer"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textGeneration"    # I
    .param p5, "selectionPtr"    # I

    .prologue
    .line 4338
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_15

    .line 4339
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-direct {p0, p2, p3, p5}, Landroid/webkitsec/WebViewCore;->createTextSelection(III)Landroid/webkitsec/WebViewCore$TextSelectionData;

    move-result-object v2

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4343
    :cond_15
    return-void
.end method

.method private updateTextSelectionStartAndEnd(IIIIILjava/lang/String;)V
    .registers 10
    .param p1, "pointer"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textGeneration"    # I
    .param p5, "selectionPtr"    # I
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 4348
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_16

    .line 4349
    new-instance v0, Landroid/webkitsec/WebViewCore$TextInputData;

    invoke-direct {v0, p2, p3, p5, p6}, Landroid/webkitsec/WebViewCore$TextInputData;-><init>(IIILjava/lang/String;)V

    .line 4350
    .local v0, "data":Landroid/webkitsec/WebViewCore$TextInputData;
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0xb5

    invoke-static {v1, v2, p1, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4355
    .end local v0    # "data":Landroid/webkitsec/WebViewCore$TextInputData;
    :cond_16
    return-void
.end method

.method private updateTextSizeAndScroll(IIIII)V
    .registers 11
    .param p1, "pointer"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "scrollX"    # I
    .param p5, "scrollY"    # I

    .prologue
    .line 4361
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_1d

    .line 4362
    new-instance v0, Landroid/graphics/Rect;

    neg-int v1, p4

    neg-int v2, p5

    sub-int v3, p2, p4

    sub-int v4, p3, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4364
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x92

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4368
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1d
    return-void
.end method

.method private updateTextfield(ILjava/lang/String;I)V
    .registers 6
    .param p1, "ptr"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textGeneration"    # I

    .prologue
    .line 4322
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_11

    .line 4323
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-static {v0, v1, p1, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4327
    :cond_11
    return-void
.end method

.method private updateViewport()V
    .registers 2

    .prologue
    .line 3945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->setupViewport(Z)V

    .line 3946
    return-void
.end method

.method private viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    .registers 20
    .param p1, "data"    # Landroid/webkitsec/WebViewClassic$ViewSizeData;

    .prologue
    .line 3428
    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mWidth:I

    .line 3429
    .local v7, "w":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeight:I

    .line 3430
    .local v12, "h":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mTextWrapWidth:I

    .line 3431
    .local v5, "textwrapWidth":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mScale:F

    .line 3436
    .local v6, "scale":F
    if-nez v7, :cond_1c

    .line 3437
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "skip viewSizeChanged as w is 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :cond_1b
    :goto_1b
    return-void

    .line 3440
    :cond_1c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/webkitsec/WebViewCore;->calculateWindowWidth(I)I

    move-result v3

    .line 3441
    .local v3, "width":I
    move v4, v12

    .line 3442
    .local v4, "height":I
    if-eq v3, v7, :cond_37

    .line 3443
    move-object/from16 v0, p1

    iget v14, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mHeightWidthRatio:F

    .line 3444
    .local v14, "heightWidthRatio":F
    const/4 v1, 0x0

    cmpl-float v1, v14, v1

    if-lez v1, :cond_e3

    move/from16 v17, v14

    .line 3445
    .local v17, "ratio":F
    :goto_30
    int-to-float v1, v3

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3447
    .end local v14    # "heightWidthRatio":F
    .end local v17    # "ratio":F
    :cond_37
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_e9

    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mActualViewHeight:I

    .line 3448
    .local v8, "screenHeight":I
    :goto_41
    move-object/from16 v0, p0

    iget v2, v0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/webkitsec/WebViewClassic$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Landroid/webkitsec/WebViewCore;->nativeSetSize(IIIIFIIIIZ)V

    .line 3451
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-nez v1, :cond_ec

    const/4 v15, 0x1

    .line 3457
    .local v15, "needInvalidate":Z
    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 3458
    .local v16, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-eq v1, v7, :cond_88

    if-eqz v16, :cond_88

    const-string v1, "com.android.email"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_88

    .line 3461
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V

    .line 3464
    :cond_88
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    .line 3465
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    .line 3466
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkitsec/WebViewCore;->mCurrentViewScale:F

    .line 3467
    if-eqz v15, :cond_99

    .line 3471
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->contentDraw()V

    .line 3474
    :cond_99
    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-ne v1, v2, :cond_b9

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v1, :cond_b9

    .line 3475
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    iget v1, v1, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3481
    :cond_b9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    instance-of v1, v1, Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_1b

    .line 3482
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v13

    check-cast v13, Landroid/webkitsec/HtmlComposerView;

    .line 3483
    .local v13, "hcv":Landroid/webkitsec/HtmlComposerView;
    const/4 v1, 0x1

    iget-boolean v2, v13, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-ne v1, v2, :cond_1b

    .line 3484
    invoke-direct/range {p0 .. p0}, Landroid/webkitsec/WebViewCore;->webkitRotationActionOnImage()V

    goto/16 :goto_1b

    .line 3444
    .end local v8    # "screenHeight":I
    .end local v13    # "hcv":Landroid/webkitsec/HtmlComposerView;
    .end local v15    # "needInvalidate":Z
    .end local v16    # "pkgName":Ljava/lang/String;
    .restart local v14    # "heightWidthRatio":F
    :cond_e3
    int-to-float v1, v12

    int-to-float v2, v7

    div-float v17, v1, v2

    goto/16 :goto_30

    .end local v14    # "heightWidthRatio":F
    :cond_e9
    move v8, v12

    .line 3447
    goto/16 :goto_41

    .line 3451
    .restart local v8    # "screenHeight":I
    :cond_ec
    const/4 v15, 0x0

    goto/16 :goto_5d
.end method

.method private webkitActionBarDraw()V
    .registers 4

    .prologue
    .line 1407
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_12

    .line 1408
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xa1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1411
    :cond_12
    return-void
.end method

.method private webkitDraw()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 3602
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3603
    :try_start_4
    iget-boolean v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v1, :cond_d

    .line 3604
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    .line 3605
    monitor-exit v2

    .line 3628
    :cond_c
    :goto_c
    return-void

    .line 3607
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_47

    .line 3609
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    .line 3610
    new-instance v0, Landroid/webkitsec/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkitsec/WebViewCore$DrawData;-><init>()V

    .line 3612
    .local v0, "draw":Landroid/webkitsec/WebViewCore$DrawData;
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/WebViewCore;->nativeRecordContent(ILandroid/graphics/Point;)I

    move-result v1

    iput v1, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    .line 3613
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v1

    if-eq v1, v3, :cond_c

    .line 3617
    iget v1, v0, Landroid/webkitsec/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v1, :cond_4a

    .line 3618
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->isPaused()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3620
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xa

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v1, v2, v3, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14700(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_c

    .line 3607
    .end local v0    # "draw":Landroid/webkitsec/WebViewCore$DrawData;
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1

    .line 3626
    .restart local v0    # "draw":Landroid/webkitsec/WebViewCore$DrawData;
    :cond_4a
    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mLastDrawData:Landroid/webkitsec/WebViewCore$DrawData;

    .line 3627
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V

    goto :goto_c
.end method

.method private webkitDraw(Landroid/webkitsec/WebViewCore$DrawData;)V
    .registers 7
    .param p1, "draw"    # Landroid/webkitsec/WebViewCore$DrawData;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3631
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_62

    .line 3634
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    iget v2, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 3635
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3636
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_63

    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    :goto_20
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->nativeGetContentMinPrefWidth(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 3642
    :cond_2c
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    if-eqz v0, :cond_37

    .line 3643
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iput-object v0, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 3644
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mInitialViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 3646
    :cond_37
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v0, :cond_3f

    .line 3647
    iput-boolean v4, p1, Landroid/webkitsec/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 3648
    iput-boolean v3, p0, Landroid/webkitsec/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3651
    :cond_3f
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v4, v0, :cond_52

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_52

    .line 3652
    invoke-direct {p0, v3}, Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V

    .line 3656
    :cond_52
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->pauseWebKitDraw()V

    .line 3657
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3660
    :cond_62
    return-void

    .line 3636
    :cond_63
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_6a

    iget v0, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    goto :goto_20

    :cond_6a
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    goto :goto_20
.end method

.method private webkitRotationActionOnImage()V
    .registers 4

    .prologue
    .line 1413
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_12

    .line 1414
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1417
    :cond_12
    return-void
.end method

.method private webkitSelectionControlBT()V
    .registers 10

    .prologue
    const/16 v8, 0x9d

    .line 1391
    new-instance v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$SelectionCopiedData;-><init>()V

    .line 1392
    .local v7, "Data":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v4, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v5, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewCore;->nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1394
    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlBT Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1403
    :goto_2f
    return-void

    .line 1400
    :cond_30
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f
.end method

.method private webkitSelectionControlDraw(I)V
    .registers 14
    .param p1, "selectionController"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v2, 0x2c7

    const/16 v10, 0x9b

    const/4 v9, 0x0

    .line 1325
    new-instance v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    invoke-direct {v7}, Landroid/webkitsec/WebViewCore$SelectionCopiedData;-><init>()V

    .line 1340
    .local v7, "Data":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$900(Landroid/webkitsec/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$1000(Landroid/webkitsec/WebViewCore$EventHub;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mMessages:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$1000(Landroid/webkitsec/WebViewCore$EventHub;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-static {v11, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1388
    :cond_30
    :goto_30
    return-void

    .line 1346
    :cond_31
    iput-boolean v9, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    .line 1348
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget-object v2, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v3, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mCharacterSelectRegion:Landroid/graphics/Region;

    iget-object v4, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v5, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v6, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewCore;->nativeRecordSelectionCopiedData(ILandroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1350
    const-string/jumbo v0, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 1355
    :cond_5b
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionGranularity(I)I

    move-result v0

    iput v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    .line 1356
    iput p1, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectionController:I

    .line 1358
    iget v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-nez v0, :cond_8c

    .line 1359
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetSelectionMultiColInfo(I)Z

    move-result v0

    iput-boolean v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->isMulticol:Z

    .line 1365
    :goto_71
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_30

    .line 1374
    iget-object v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 1379
    .local v8, "regionRect":Landroid/graphics/Rect;
    iget-object v0, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v8}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1385
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v0, v10, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_30

    .line 1361
    .end local v8    # "regionRect":Landroid/graphics/Rect;
    :cond_8c
    iput-boolean v9, v7, Landroid/webkitsec/WebViewCore$SelectionCopiedData;->isMulticol:Z

    goto :goto_71
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;
    .param p4, "msgLevel"    # I

    .prologue
    .line 373
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkitsec/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 374
    return-void
.end method

.method clearContent()V
    .registers 2

    .prologue
    .line 754
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeClearContent(I)V

    .line 755
    return-void
.end method

.method contentDraw()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3792
    monitor-enter p0

    .line 3793
    :try_start_2
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-nez v0, :cond_c

    .line 3795
    :cond_a
    monitor-exit p0

    .line 3817
    :goto_b
    return-void

    .line 3799
    :cond_c
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3802
    :cond_18
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v1, v0, :cond_38

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_38

    .line 3804
    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->btextselection:Z

    .line 3813
    :cond_2f
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_3a

    monitor-exit p0

    goto :goto_b

    .line 3816
    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_35

    throw v0

    .line 3808
    :cond_38
    :try_start_38
    monitor-exit p0

    goto :goto_b

    .line 3814
    :cond_3a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mDrawIsScheduled:Z

    .line 3815
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3816
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_35

    goto :goto_b
.end method

.method destroy()V
    .registers 5

    .prologue
    .line 3316
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    monitor-enter v1

    .line 3319
    :try_start_3
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x1

    # setter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$302(Landroid/webkitsec/WebViewCore$EventHub;Z)Z

    .line 3320
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3322
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$15000(Landroid/webkitsec/WebViewCore$EventHub;)V

    .line 3324
    monitor-exit v1

    .line 3325
    return-void

    .line 3324
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .registers 7
    .param p1, "layerId"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 731
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_5

    .line 736
    :goto_4
    return-void

    .line 732
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x96

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 734
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "databaseIdentifier"    # Ljava/lang/String;
    .param p3, "quota"    # J
    .param p5, "estimatedDatabaseSize"    # J

    .prologue
    .line 517
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkitsec/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkitsec/WebViewCore$1;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    .line 525
    return-void
.end method

.method protected exitFullscreenVideo()V
    .registers 4

    .prologue
    .line 744
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    if-nez v1, :cond_5

    .line 748
    :goto_4
    return-void

    .line 745
    :cond_5
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 747
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public extractSmartClipData(Landroid/graphics/Rect;)Ljava/lang/String;
    .registers 7
    .param p1, "croppedArea"    # Landroid/graphics/Rect;

    .prologue
    .line 3418
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkitsec/WebViewCore;->nativeExtractSmartClipData(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected geolocationPermissionsHidePrompt()V
    .registers 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 664
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v1, Landroid/webkitsec/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewCore$4;-><init>(Landroid/webkitsec/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkitsec/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/GeolocationPermissions$Callback;)V

    .line 574
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkitsec/BrowserFrame;
    .registers 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 4486
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkitsec/DeviceMotionService;
    .registers 4

    .prologue
    .line 4673
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    if-nez v0, :cond_f

    .line 4674
    new-instance v0, Landroid/webkitsec/DeviceMotionService;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/DeviceMotionService;-><init>(Landroid/webkitsec/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    .line 4677
    :cond_f
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionService:Landroid/webkitsec/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkitsec/DeviceOrientationService;
    .registers 4

    .prologue
    .line 4681
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    if-nez v0, :cond_f

    .line 4682
    new-instance v0, Landroid/webkitsec/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/DeviceOrientationService;-><init>(Landroid/webkitsec/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    .line 4685
    :cond_f
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceOrientationService:Landroid/webkitsec/DeviceOrientationService;

    return-object v0
.end method

.method public getInputDispatcherCallbacks()Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    return-object v0
.end method

.method public declared-synchronized getSelectedText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3665
    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    .line 3666
    .local v0, "str":Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 3665
    .end local v0    # "str":Ljava/lang/String;
    :catchall_9
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkitsec/WebSettingsClassic;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkitsec/WebFeedLink;
    .registers 2

    .prologue
    .line 3765
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mNativeClass:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewCore;->nativeGetWebFeedLinks(I)[Landroid/webkitsec/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkitsec/WebView;
    .registers 2

    .prologue
    .line 3903
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    return-object v0
.end method

.method getWebViewClassic()Landroid/webkitsec/WebViewClassic;
    .registers 2

    .prologue
    .line 3898
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method initializeSubwindow()V
    .registers 3

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/webkitsec/WebViewCore;->initialize()V

    .line 306
    sget-object v0, Landroid/webkitsec/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public isDestroyPending()Z
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v0

    return v0
.end method

.method public isEditableSupport()Z
    .registers 2

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method isMobileSite()Z
    .registers 2

    .prologue
    .line 3566
    iget v0, p0, Landroid/webkitsec/WebViewCore;->mViewportWidth:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 683
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkitsec/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected notificationManagerCancel(I)V
    .registers 3
    .param p1, "notificationID"    # I

    .prologue
    .line 642
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkitsec/CallbackProxy;->onNotificationManagerCancelPrompt(I)V

    .line 644
    return-void
.end method

.method protected notificationManagershow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "iconUrl"    # Ljava/lang/String;
    .param p2, "titleStr"    # Ljava/lang/String;
    .param p3, "bodyStr"    # Ljava/lang/String;
    .param p4, "counter"    # I

    .prologue
    .line 611
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v5, Landroid/webkitsec/WebViewCore$6;

    invoke-direct {v5, p0}, Landroid/webkitsec/WebViewCore$6;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/CallbackProxy;->onNotificationManagershowPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/webkitsec/NotificationPermissions$Callback;)V

    .line 631
    return-void
.end method

.method protected notificationPermissionsHidePrompt()V
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onNotificationPermissionsHidePrompt()V

    .line 656
    return-void
.end method

.method protected notificationPermissionsShowPrompt(Ljava/lang/String;)V
    .registers 4
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v1, Landroid/webkitsec/WebViewCore$5;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewCore$5;-><init>(Landroid/webkitsec/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkitsec/CallbackProxy;->onNotificationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkitsec/NotificationPermissions$Callback;)V

    .line 598
    return-void
.end method

.method pauseWebKitDraw()V
    .registers 3

    .prologue
    .line 3578
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3580
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-nez v0, :cond_a

    .line 3581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    .line 3583
    :cond_a
    monitor-exit v1

    .line 3584
    return-void

    .line 3583
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected populateVisitedLinks()V
    .registers 3

    .prologue
    .line 546
    new-instance v0, Landroid/webkitsec/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebViewCore$3;-><init>(Landroid/webkitsec/WebViewCore;)V

    .line 552
    .local v0, "callback":Landroid/webkitsec/ValueCallback;
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkitsec/CallbackProxy;->getVisitedHistory(Landroid/webkitsec/ValueCallback;)V

    .line 553
    return-void
.end method

.method protected printPage()V
    .registers 2

    .prologue
    .line 693
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkitsec/CallbackProxy;->onPrintPage()V

    .line 694
    return-void
.end method

.method protected reachedMaxAppCacheSize(JJ)V
    .registers 11
    .param p1, "requiredStorage"    # J
    .param p3, "maxSize"    # J

    .prologue
    .line 536
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    new-instance v5, Landroid/webkitsec/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkitsec/WebViewCore$2;-><init>(Landroid/webkitsec/WebViewCore;)V

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/webkitsec/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkitsec/WebStorage$QuotaUpdater;)V

    .line 543
    return-void
.end method

.method removeMessages()V
    .registers 2

    .prologue
    .line 3308
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkitsec/WebViewCore$EventHub;->access$14900(Landroid/webkitsec/WebViewCore$EventHub;)V

    .line 3309
    return-void
.end method

.method removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 3304
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14800(Landroid/webkitsec/WebViewCore$EventHub;I)V

    .line 3305
    return-void
.end method

.method resumeWebKitDraw()V
    .registers 5

    .prologue
    .line 3587
    iget-object v1, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlagLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3589
    :try_start_3
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->mBlockWebkitDraw:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 3590
    monitor-exit v1

    .line 3599
    :goto_9
    return-void

    .line 3592
    :cond_a
    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    if-eqz v0, :cond_21

    .line 3594
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_drawWasSkipped:Z

    .line 3595
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x82

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3597
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewCore;->m_skipDrawFlag:Z

    .line 3598
    monitor-exit v1

    goto :goto_9

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strPath"    # Ljava/lang/String;

    .prologue
    .line 3412
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .registers 4
    .param p1, "what"    # I

    .prologue
    .line 3264
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3265
    return-void
.end method

.method public sendMessage(II)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 3278
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3279
    return-void
.end method

.method public sendMessage(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 3282
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3283
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3291
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3292
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3287
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3288
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3273
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3274
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3252
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3253
    return-void
.end method

.method sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3268
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3270
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3295
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$14600(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3297
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delay"    # J

    .prologue
    .line 3300
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkitsec/WebViewCore$EventHub;->access$14700(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 3301
    return-void
.end method

.method sendMessages(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3256
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Message;>;"
    iget-object v2, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    monitor-enter v2

    .line 3257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3258
    iget-object v3, p0, Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3257
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3260
    :cond_18
    monitor-exit v2

    .line 3261
    return-void

    .line 3260
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .registers 20
    .param p1, "canProvideAlpha"    # Z
    .param p2, "alpha"    # D
    .param p4, "canProvideBeta"    # Z
    .param p5, "beta"    # D
    .param p7, "canProvideGamma"    # Z
    .param p8, "gamma"    # D

    .prologue
    .line 4668
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 4670
    return-void
.end method

.method public setMockGeolocationError(ILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 4660
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0, p1, p2}, Landroid/webkitsec/MockGeolocation;->setError(ILjava/lang/String;)V

    .line 4661
    return-void
.end method

.method public setMockGeolocationPermission(Z)V
    .registers 3
    .param p1, "allow"    # Z

    .prologue
    .line 4664
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    invoke-virtual {v0, p1}, Landroid/webkitsec/MockGeolocation;->setPermission(Z)V

    .line 4665
    return-void
.end method

.method public setMockGeolocationPosition(DDD)V
    .registers 14
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "accuracy"    # D

    .prologue
    .line 4656
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mMockGeolocation:Landroid/webkitsec/MockGeolocation;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/webkitsec/MockGeolocation;->setPosition(DDD)V

    .line 4657
    return-void
.end method

.method signalRepaintDone()V
    .registers 2

    .prologue
    .line 3892
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkitsec/WebViewCore;->mRepaintScheduled:Z

    .line 3893
    return-void
.end method

.method stopLoading()V
    .registers 2

    .prologue
    .line 3237
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    if-eqz v0, :cond_9

    .line 3238
    iget-object v0, p0, Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkitsec/BrowserFrame;->stopLoading()V

    .line 3240
    :cond_9
    return-void
.end method
