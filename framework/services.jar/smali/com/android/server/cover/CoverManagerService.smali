.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$DisableRecord;,
        Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field private static final DEBUG:Z = true

.field private static final MSG_DISABLE_COVER_MANAGER:I = 0x6

.field private static final MSG_DISABLE_PARTIAL_DISP:I = 0xa

.field private static final MSG_ENABLE_PARTIAL_DISP:I = 0x9

.field private static final MSG_HIDE_SVIEW_COVER:I = 0x3

.field private static final MSG_SEND_COVER_ATTACH_STATE:I = 0x2

.field private static final MSG_SEND_COVER_STATE:I = 0x0

.field private static final MSG_SEND_COVER_SWITCH_STATE:I = 0x1

.field private static final MSG_SHOW_SVIEW_COVER:I = 0x4

.field private static final MSG_START_FREEZE_SCREEN:I = 0x7

.field private static final MSG_STOP_FREEZE_SCREEN:I = 0x8

.field private static final MSG_UPDATE_SVIEW_COVER_STATE:I = 0x5

.field private static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field private static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field private static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field private static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final SAFE_DEBUG:Z

.field private static final SERVICE_VERSION:I = 0x1010000

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field public static final TYPE_COVER_STATE_LISTENER:I = 0x2

.field public static final TYPE_STATE_LISTENER:I = 0x1

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsDeviceSupportVerityCoverQueried:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportMiniSViewCoverTestMode:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSViewCoverTestMode:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mCoverManagerDisabled:Z

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mDefaultCoverColor:I

.field private mDefaultCoverType:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mIsCoverVerified:Z

.field private mIsCoverVerifiedAndAttached:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

.field private mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

.field private mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mThread:Landroid/os/HandlerThread;

.field private mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    .line 118
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 119
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 121
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 122
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 123
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 124
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 125
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    .line 849
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 850
    sput-object v3, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 851
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 108
    iput v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 109
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    .line 110
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 111
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 112
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 113
    iput v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 115
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 131
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    .line 134
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 135
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 136
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 141
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateSystemFeature(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "show sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "hide sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 158
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "update sviewcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "disable covermanager"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverswitchstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send coverattachstate"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->initializeDefaultCoverState()V

    .line 178
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    .line 181
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "x2"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSendCoverAttachState(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/cover/CoverManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/cover/CoverManagerService;ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleHideSViewCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleShowSViewCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/CoverManagerService;Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleDisableCoverManagerLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStartFreezeScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->handleStopFreezeScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/CoverManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->handleSetPartialScreen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/CoverManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 919
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableCoverManagerLocked : disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 922
    .local v0, "identity":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->gatherDisableLocked()Z

    move-result v3

    .line 925
    .local v3, "net":Z
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    if-eq v3, v4, :cond_2

    .line 926
    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    .line 927
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 928
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 930
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 931
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->what:I

    .line 932
    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :goto_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 933
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 938
    return-void

    .line 932
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 936
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "net":Z
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private gatherDisableLocked()Z
    .locals 6

    .prologue
    .line 993
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 994
    .local v0, "N":I
    const/4 v2, 0x0

    .line 995
    .local v2, "net":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 996
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 997
    .local v4, "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    iget-boolean v2, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    .line 998
    if-eqz v2, :cond_0

    move v3, v2

    .line 1000
    .end local v2    # "net":Z
    .end local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    .local v3, "net":Z
    :goto_1
    return v3

    .line 995
    .end local v3    # "net":Z
    .restart local v2    # "net":Z
    .restart local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "rec":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_1
    move v3, v2

    .line 1000
    .end local v2    # "net":Z
    .restart local v3    # "net":Z
    goto :goto_1
.end method

.method private getDefaultTypeOfCover()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 458
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    const/16 v1, 0x63

    goto :goto_0

    :cond_2
    move v1, v2

    .line 463
    goto :goto_0

    .line 466
    :cond_3
    const-string v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string/jumbo v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    .line 469
    goto :goto_0

    .line 472
    :cond_4
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v4, :cond_0

    .line 474
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v1, :cond_5

    move v1, v3

    .line 475
    goto :goto_0

    :cond_5
    move v1, v2

    .line 479
    goto :goto_0
.end method

.method private getSupportSViewCoverHeight(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 520
    sparse-switch p1, :sswitch_data_0

    .line 529
    const/4 v0, 0x0

    .line 531
    .local v0, "supportSViewCoverHeight":I
    :goto_0
    return v0

    .line 523
    .end local v0    # "supportSViewCoverHeight":I
    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 524
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 526
    .end local v0    # "supportSViewCoverHeight":I
    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 527
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_0

    .line 520
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .locals 1
    .param p1, "coverType"    # I

    .prologue
    .line 504
    sparse-switch p1, :sswitch_data_0

    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, "supportSViewCoverWidth":I
    :goto_0
    return v0

    .line 507
    .end local v0    # "supportSViewCoverWidth":I
    :sswitch_0
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 508
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 510
    .end local v0    # "supportSViewCoverWidth":I
    :sswitch_1
    iget v0, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 511
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_0

    .line 504
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private getValueFromSysFS(Ljava/lang/String;I)I
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 798
    move v5, p2

    .line 799
    .local v5, "value":I
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 800
    const/4 v3, 0x0

    .line 802
    .local v3, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    .end local v3    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    const/16 v6, 0xf

    :try_start_1
    new-array v0, v6, [C

    .line 804
    .local v0, "buf":[C
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .line 805
    .local v2, "n":I
    if-lez v2, :cond_0

    .line 806
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, -0x1

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 813
    :cond_0
    if-eqz v4, :cond_1

    .line 815
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 821
    .end local v0    # "buf":[C
    .end local v2    # "n":I
    .end local v4    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    return v5

    .line 808
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 809
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    move v5, p2

    .line 813
    if-eqz v3, :cond_1

    .line 815
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_0

    .line 816
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 810
    .restart local v3    # "reader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 811
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_2
    move v5, p2

    .line 813
    if-eqz v3, :cond_1

    .line 815
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 813
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 815
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 813
    :cond_2
    :goto_4
    throw v6

    .line 816
    :catch_3
    move-exception v7

    goto :goto_4

    .line 813
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 810
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 808
    .end local v3    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private handleDisableCoverManagerLocked(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    .line 941
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 942
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDisableCoverManagerLocked : disable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->updateCoverManagerDisableState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mDisableCoverManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 953
    :cond_1
    return-void

    .line 946
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleHideSViewCover()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverHide()V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 687
    :cond_1
    return-void
.end method

.method private handleSendCoverAttachState(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 647
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 649
    .local v1, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V

    goto :goto_0

    .line 651
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 655
    :cond_1
    return-void
.end method

.method private handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    .line 624
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 625
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 626
    .local v1, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 627
    invoke-virtual {v1, p2}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V

    goto :goto_0

    .line 629
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 633
    :cond_1
    return-void
.end method

.method private declared-synchronized handleSetPartialScreen(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 832
    monitor-enter p0

    :try_start_0
    const-string v2, "0 0"

    .line 833
    .local v2, "parameters":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 837
    :cond_0
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameters="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 841
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :goto_0
    monitor-exit p0

    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "CoverManager"

    const-string v4, "Failed to write partial_disp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 832
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parameters":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private handleShowSViewCover()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->onSViewCoverShow()V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 710
    :cond_1
    return-void
.end method

.method private handleStartFreezeScreen()V
    .locals 4

    .prologue
    .line 744
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const v2, 0x10a0001

    const/high16 v3, 0x10a0000

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->startFreezingScreen(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleStopFreezeScreen()V
    .locals 2

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->stopFreezingScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private handleUpdateSViewCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSViewCoverBaseServiceDelegate:Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/SViewCoverBaseServiceDelegate;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 732
    :cond_1
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    .line 739
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mRunnableForSviewCoverWakeLock:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 740
    return-void
.end method

.method private hideSViewCoverLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 671
    const-string v1, "CoverManager"

    const-string v2, "hideLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHideSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 676
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 677
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    return-void
.end method

.method private initializeDefaultCoverState()V
    .locals 5

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 186
    const v1, 0x105010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    .line 188
    const v1, 0x105010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    .line 190
    const v1, 0x1050110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    .line 192
    const v1, 0x1050111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->getDefaultTypeOfCover()I

    move-result v1

    iput v1, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    .line 196
    new-instance v1, Lcom/samsung/android/cover/CoverState;

    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v3

    iget v4, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/cover/CoverState;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 199
    return-void
.end method

.method private isCoverVerfied()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    return v0
.end method

.method private isDeviceSupportCoverVerify()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 491
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    if-nez v0, :cond_0

    .line 492
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    .line 497
    :goto_0
    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCoverQueried:Z

    .line 499
    :cond_0
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    return v0

    .line 495
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsDeviceSupportVerityCover:Z

    goto :goto_0
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 825
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMiniSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 487
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 483
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageDisableListLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 956
    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v5, :cond_0

    .line 957
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "manageDisableList : disable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 961
    .local v0, "N":I
    const/4 v4, 0x0

    .line 963
    .local v4, "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 964
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 965
    .local v3, "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p2, :cond_4

    .line 966
    move-object v4, v3

    .line 970
    .end local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-nez v5, :cond_5

    .line 971
    :cond_2
    if-eqz v4, :cond_3

    .line 972
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 973
    iget-object v5, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 990
    :cond_3
    :goto_1
    return-void

    .line 963
    .restart local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 976
    .end local v3    # "t":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :cond_5
    if-nez v4, :cond_6

    .line 977
    new-instance v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .end local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/cover/CoverManagerService$DisableRecord;-><init>(Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cover/CoverManagerService$1;)V

    .line 979
    .restart local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p2, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    :cond_6
    iput-boolean p1, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    .line 987
    iput-object p2, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 988
    iput-object p3, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_1

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private performCPUBoostCover()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 854
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "COVER_BOOSTER"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 856
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 857
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    .line 858
    .local v8, "supportedCPUFreqTable":[I
    if-eqz v8, :cond_0

    .line 859
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v8, v9

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 862
    .end local v8    # "supportedCPUFreqTable":[I
    :cond_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 864
    :try_start_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 872
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v2, "COVER_CORE_BOOSTER"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 874
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 875
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 876
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    .line 877
    aget v0, v6, v9

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 878
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 882
    .end local v6    # "coreNumTable":[I
    :cond_2
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 884
    :try_start_1
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    sget-object v0, Lcom/android/server/cover/CoverManagerService;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/cover/CoverManagerService;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 891
    :cond_3
    :goto_1
    return-void

    .line 865
    :catch_0
    move-exception v7

    .line 866
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 886
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 887
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "CoverManager"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private sendCoverAttachStateLocked(Z)V
    .locals 3
    .param p1, "attached"    # Z

    .prologue
    .line 636
    const-string v1, "CoverManager"

    const-string/jumbo v2, "sendCoverAttachStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverVerifyAndAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 640
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 642
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 643
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    return-void

    .line 642
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    const/4 v1, 0x1

    .line 612
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendCoverSwitchStateLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 616
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 617
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 618
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 620
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 621
    return-void

    .line 619
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showRuggedizedPopup()V
    .locals 0

    .prologue
    .line 795
    return-void
.end method

.method private showSViewCoverLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 694
    const-string v1, "CoverManager"

    const-string/jumbo v2, "showLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mShowSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 698
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 699
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 700
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    return-void
.end method

.method private updateCoverPropertiesLocked()V
    .locals 6

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 544
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    .line 556
    :goto_0
    return-void

    .line 547
    :cond_1
    const-string v4, "/sys/devices/w1_bus_master1/w1_master_check_id"

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 548
    .local v2, "type":I
    const-string v4, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    .line 549
    .local v0, "color":I
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 550
    .local v3, "widthPixel":I
    invoke-direct {p0, v2}, Lcom/android/server/cover/CoverManagerService;->getSupportSViewCoverHeight(I)I

    move-result v1

    .line 551
    .local v1, "heightPixel":I
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(IIII)V

    goto :goto_0

    .line 554
    .end local v0    # "color":I
    .end local v1    # "heightPixel":I
    .end local v2    # "type":I
    .end local v3    # "widthPixel":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v4}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    goto :goto_0
.end method

.method private updateCoverStateLocked(IIII)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIII)V

    .line 604
    return-void
.end method

.method private updateCoverStateLocked(ZIIII)V
    .locals 6
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cover/CoverState;->updateCoverState(ZIIII)V

    .line 609
    return-void
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 536
    return-void
.end method

.method private updateCoverVerificationLocked(Z)V
    .locals 7
    .param p1, "isBoot"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 563
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 564
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 566
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 569
    :cond_2
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eqz v0, :cond_3

    move v6, v1

    .line 571
    .local v6, "verified":Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-eq v0, v6, :cond_1

    .line 572
    iput-boolean v6, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 573
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    if-nez v0, :cond_5

    .line 575
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eqz v0, :cond_4

    .line 576
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Fail cover verification!! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :goto_2
    iget v2, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    iget v3, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/CoverManagerService;->updateCoverStateLocked(ZIIII)V

    .line 584
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 585
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 586
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .end local v6    # "verified":Z
    :cond_3
    move v6, v4

    .line 569
    goto :goto_1

    .line 579
    .restart local v6    # "verified":Z
    :cond_4
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : Cover detached !! send default cover state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 588
    :cond_5
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->updateCoverPropertiesLocked()V

    goto :goto_0

    .line 593
    .end local v6    # "verified":Z
    :cond_6
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerificationLocked : This device is not support cover verification"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    .line 597
    iput-boolean v1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    goto :goto_0
.end method

.method private updateCoverVerifyAndAttachStateLocked(Z)V
    .locals 1
    .param p1, "attached"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setAttachState(Z)V

    .line 540
    return-void
.end method

.method private updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 762
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    .line 763
    .local v0, "isOpen":Z
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    .line 764
    .local v1, "type":I
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 765
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-eqz v2, :cond_4

    if-eq v1, v3, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x63

    if-ne v1, v2, :cond_4

    .line 769
    :cond_0
    if-eqz v0, :cond_3

    .line 770
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 786
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 764
    goto :goto_0

    .line 774
    :cond_3
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1

    .line 778
    :cond_4
    sget-boolean v2, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_1

    .line 780
    if-eqz v0, :cond_5

    .line 781
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_1

    .line 783
    :cond_5
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_1
.end method

.method private updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "isBoot"    # Z

    .prologue
    .line 658
    const-string v0, "CoverManager"

    const-string/jumbo v1, "updateSViewCoverLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    if-nez v0, :cond_0

    .line 660
    const-string v0, "CoverManager"

    const-string v1, "Not support S View cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 663
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0
.end method

.method private updateSViewCoverStateLocked(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 713
    const-string v1, "CoverManager"

    const-string/jumbo v2, "updateSViewCoverStateLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mUpdateSViewCoverWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 719
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 721
    return-void
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 448
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    .line 449
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    .line 450
    const-string v1, "com.sec.feature.cover.sview.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCoverTestMode:Z

    .line 451
    const-string v1, "com.sec.feature.cover.sview.mini.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSupportMiniSViewCoverTestMode:Z

    .line 452
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/CoverManagerService;->sIsSystemFeatureQueried:Z

    .line 454
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 912
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableLocked : disable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 914
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->disableCoverManagerLocked(ZLandroid/os/IBinder;Ljava/lang/String;)V

    .line 915
    monitor-exit v1

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1005
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1007
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    :goto_0
    return-void

    .line 1013
    :cond_0
    const-string v5, "Current Cover Manager state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    const-string v5, " sIsSupportFlipCover="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1015
    const-string v5, " sIsSupportSViewCover="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/cover/CoverManagerService;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1016
    const-string v5, " isSViewCoverTestMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isSViewCoverTestMode()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1017
    const-string v5, " isMiniSViewCoverTestMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isMiniSViewCoverTestMode()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1018
    const-string v5, " mIsCoverVerified="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerified:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1019
    const-string v5, " mIsCoverVerifiedAndAttached="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 1020
    const-string v5, " isDeviceSupportCoverVerify()="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isDeviceSupportCoverVerify()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 1021
    const-string v5, " mDefaultCoverType="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverType:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1022
    const-string v5, " mDefaultCoverColor="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultCoverColor:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1023
    const-string v5, " mDefaultSViewCoverWidth="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1024
    const-string v5, " mDefaultSViewCoverHeight="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1025
    const-string v5, " mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1026
    const-string v5, " mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/cover/CoverManagerService;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1028
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1029
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Live listeners ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 1031
    .local v3, "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v3, :cond_1

    .line 1032
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1037
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1036
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1039
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v6

    .line 1040
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1043
    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1044
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mCoverManagerDisabled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1046
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mDisableRecords.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1048
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;

    .line 1049
    .local v4, "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] disable="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->disable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/cover/CoverManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1041
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "tok":Lcom/android/server/cover/CoverManagerService$DisableRecord;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 1053
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_3
    :try_start_5
    monitor-exit v6

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 2

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    return-object v0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 442
    const/high16 v0, 0x1010000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerDisabled:Z

    return v0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    .line 329
    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 334
    sget-boolean v1, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListenerCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v8, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 342
    .local v0, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v0, :cond_1

    .line 343
    iget-object v1, v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string v1, "CoverManager"

    const-string v2, "registerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    monitor-exit v8

    .line 356
    :goto_0
    return-void

    .line 350
    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_2
    const/4 v0, 0x0

    .line 351
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 353
    .restart local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 354
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 360
    sget-boolean v4, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 361
    const-string v4, "CoverManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterCallback : binder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 366
    const/4 v2, 0x0

    .line 367
    .local v2, "listener":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;

    .line 368
    .local v1, "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    if-eqz v1, :cond_1

    .line 369
    iget-object v5, v1, Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 370
    move-object v2, v1

    .line 376
    .end local v1    # "l":Lcom/android/server/cover/CoverManagerService$CoverStateListenerInfo;
    :cond_2
    if-nez v2, :cond_3

    .line 377
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterCallback : matching listener is NOT EXIST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    monitor-exit v4

    .line 389
    :goto_0
    return v3

    .line 381
    :cond_3
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 384
    :cond_4
    if-eqz v2, :cond_5

    .line 385
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 387
    :cond_5
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 388
    monitor-exit v4

    .line 389
    const/4 v3, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateCoverSwitchState(ZZ)V
    .locals 4
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 395
    if-nez p2, :cond_0

    .line 396
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    .line 398
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerificationLocked(Z)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->isCoverVerfied()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 400
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 401
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 402
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0, p2}, Lcom/android/server/cover/CoverManagerService;->updateSViewCoverLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 403
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 404
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 405
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverSwitchState : switchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v3, v3, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", widthPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", heightPixel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    monitor-exit v1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateCoverVerfiedState(ZZ)V
    .locals 4
    .param p1, "verified"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 417
    if-nez p2, :cond_0

    .line 418
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->performCPUBoostCover()V

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    if-eq v0, p1, :cond_1

    .line 421
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    .line 422
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverVerifyAndAttachStateLocked(Z)V

    .line 423
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(Z)V

    .line 424
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->showRuggedizedPopup()V

    .line 425
    sget-boolean v0, Lcom/android/server/cover/CoverManagerService;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverVerfiedState : mIsCoverVerifiedAndAttached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mIsCoverVerifiedAndAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
