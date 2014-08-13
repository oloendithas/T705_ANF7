.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorSD8974Pro.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_ABOVE_HISPEED_DELAY:I

.field final ID_BOOST_MS:I

.field final ID_ENFORCED_MODE:I

.field final ID_GO_HISPEED_LOAD:I

.field final ID_HISPEED_FREQ:I

.field final ID_IO_IS_BUSY:I

.field final ID_MIN_SAMPLE_TIME:I

.field final ID_MULTI_ENTER_LOAD:I

.field final ID_MULTI_EXIT_LOAD:I

.field final ID_SAMPLING_DOWN_FACTOR:I

.field final ID_SINGLE_ENTER_LOAD:I

.field final ID_SINGLE_EXIT_LOAD:I

.field final ID_SYNC_THRESHOLD:I

.field final ID_TARGET_LOADS:I

.field final ID_TIMER_RATE:I

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsKnownGameAppInForeground:Z

.field mIsLowPowerAppInForeground:Z

.field mIsModeChangeDisableAppInForeground:Z

.field mIsModeChangeDisabled:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/16 v4, 0x14

    const/16 v3, 0x13

    const/16 v2, 0x3b

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 37
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->TAG:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsKnownGameAppInForeground:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsLowPowerAppInForeground:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->MSG_KNOWN_GAME_FOREGROUND:I

    .line 331
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    .line 342
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    .line 95
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 98
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "85 1400000:90 1700000:95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_TARGET_LOADS:I

    .line 105
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ABOVE_HISPEED_DELAY:I

    .line 112
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1190400"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_HISPEED_FREQ:I

    .line 119
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_GO_HISPEED_LOAD:I

    .line 126
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MIN_SAMPLE_TIME:I

    .line 133
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_TIMER_RATE:I

    .line 140
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SAMPLING_DOWN_FACTOR:I

    .line 147
    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const-string v0, "1574400"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    .line 154
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_BOOST_MS:I

    .line 160
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ENFORCED_MODE:I

    .line 167
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "340"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_ENTER_LOAD:I

    .line 174
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_ENTER_LOAD:I

    .line 181
    new-array v0, v2, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_EXIT_LOAD:I

    .line 188
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_EXIT_LOAD:I

    .line 195
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_IO_IS_BUSY:I

    .line 202
    new-array v0, v4, [I

    fill-array-data v0, :array_10

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 206
    new-array v0, v5, [I

    fill-array-data v0, :array_11

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 210
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 215
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_13

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 220
    new-array v0, v4, [I

    fill-array-data v0, :array_14

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 224
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_15

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 229
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 234
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 238
    new-array v0, v3, [I

    fill-array-data v0, :array_18

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 242
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_19

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 247
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 251
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 255
    new-array v0, v3, [I

    fill-array-data v0, :array_1c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 259
    new-array v0, v5, [I

    fill-array-data v0, :array_1d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 263
    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 265
    new-instance v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    .line 283
    return-void

    .line 147
    :cond_0
    const-string v0, "1190400"

    goto/16 :goto_0

    .line 37
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x3d
        0x15
        0xc
        0x1f
        0x8
        0x14
        0x15
        0x8
        0x29
        0x3e
        0x42
        0x43
        0x4d
        0x4e
        0x2a
        0x8
        0x15
    .end array-data

    .line 98
    :array_1
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x1b
        0x8
        0x1d
        0x1f
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
        0x9
    .end array-data

    .line 105
    :array_2
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1b
        0x18
        0x15
        0xc
        0x1f
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1e
        0x1f
        0x16
        0x1b
        0x3
    .end array-data

    .line 112
    :array_3
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x1c
        0x8
        0x1f
        0xb
    .end array-data

    .line 119
    :array_4
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1d
        0x15
        0x25
        0x12
        0x13
        0x9
        0xa
        0x1f
        0x1f
        0x1e
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 126
    :array_5
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0x13
        0x14
        0x25
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x1f
        0x25
        0xe
        0x13
        0x17
        0x1f
    .end array-data

    .line 133
    :array_6
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0xe
        0x13
        0x17
        0x1f
        0x8
        0x25
        0x8
        0x1b
        0xe
        0x1f
    .end array-data

    .line 140
    :array_7
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x1b
        0x17
        0xa
        0x16
        0x13
        0x14
        0x1d
        0x25
        0x1e
        0x15
        0xd
        0x14
        0x25
        0x1c
        0x1b
        0x19
        0xe
        0x15
        0x8
    .end array-data

    .line 147
    :array_8
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x17
        0x15
        0x1e
        0xf
        0x16
        0x1f
        0x55
        0x19
        0xa
        0xf
        0x25
        0x18
        0x15
        0x15
        0x9
        0xe
        0x55
        0xa
        0x1b
        0x8
        0x1b
        0x17
        0x1f
        0xe
        0x1f
        0x8
        0x9
        0x55
        0x9
        0x3
        0x14
        0x19
        0x25
        0xe
        0x12
        0x8
        0x1f
        0x9
        0x12
        0x15
        0x16
        0x1e
    .end array-data

    .line 154
    :array_9
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x17
        0x15
        0x1e
        0xf
        0x16
        0x1f
        0x55
        0x19
        0xa
        0xf
        0x25
        0x18
        0x15
        0x15
        0x9
        0xe
        0x55
        0xa
        0x1b
        0x8
        0x1b
        0x17
        0x1f
        0xe
        0x1f
        0x8
        0x9
        0x55
        0x18
        0x15
        0x15
        0x9
        0xe
        0x25
        0x17
        0x9
    .end array-data

    .line 160
    :array_a
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x1f
        0x14
        0x1c
        0x15
        0x8
        0x19
        0x1f
        0x1e
        0x25
        0x17
        0x15
        0x1e
        0x1f
    .end array-data

    .line 167
    :array_b
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0xf
        0x16
        0xe
        0x13
        0x25
        0x1f
        0x14
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 174
    :array_c
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x13
        0x14
        0x1d
        0x16
        0x1f
        0x25
        0x1f
        0x14
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 181
    :array_d
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x17
        0xf
        0x16
        0xe
        0x13
        0x25
        0x1f
        0x2
        0x13
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 188
    :array_e
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x9
        0x13
        0x14
        0x1d
        0x16
        0x1f
        0x25
        0x1f
        0x2
        0x13
        0xe
        0x25
        0x16
        0x15
        0x1b
        0x1e
    .end array-data

    .line 195
    :array_f
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x1e
        0x1f
        0xc
        0x13
        0x19
        0x1f
        0x9
        0x55
        0x9
        0x3
        0x9
        0xe
        0x1f
        0x17
        0x55
        0x19
        0xa
        0xf
        0x55
        0x19
        0xa
        0xf
        0x1c
        0x8
        0x1f
        0xb
        0x55
        0x13
        0x14
        0xe
        0x1f
        0x8
        0x1b
        0x19
        0xe
        0x13
        0xc
        0x1f
        0x55
        0x13
        0x15
        0x25
        0x13
        0x9
        0x25
        0x18
        0xf
        0x9
        0x3
    .end array-data

    .line 202
    :array_10
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
    .end array-data

    .line 206
    :array_11
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x13
        0x17
        0x1b
        0x14
        0x1d
        0x13
        0x54
        0xe
        0x1f
        0x17
        0xa
        0x16
        0x1f
        0x8
        0xf
        0x14
        0x48
    .end array-data

    .line 210
    :array_12
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4c
        0x32
        0x2a
    .end array-data

    .line 215
    :array_13
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x16
        0x15
        0x1c
        0xe
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x3b
        0x34
        0x37
        0x2a
        0x54
        0x3d
        0x16
        0x15
        0x1c
        0xe
        0x3b
        0x4d
        0x32
        0x37
    .end array-data

    .line 220
    :array_14
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x8
        0x15
        0xc
        0x13
        0x15
        0x54
        0x1b
        0x14
        0x1d
        0x8
        0x3
        0x18
        0x13
        0x8
        0x1e
        0x9
    .end array-data

    .line 224
    :array_15
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x16
        0xa
        0x12
        0x1b
        0x19
        0x16
        0x15
        0xf
        0x1e
        0x54
        0x19
        0x1b
        0x9
        0xe
        0x16
        0x1f
        0x17
        0x1b
        0x9
        0xe
        0x1f
        0x8
    .end array-data

    .line 229
    :array_16
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x25
        0x1c
        0x8
        0x1f
        0x1f
    .end array-data

    .line 234
    :array_17
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x16
        0xf
        0x54
        0x1d
        0xf
        0x14
        0x18
        0x8
        0x15
        0x9
        0x48
    .end array-data

    .line 238
    :array_18
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1c
        0x1b
        0x19
        0x1f
        0x18
        0x15
        0x15
        0x11
        0x54
        0x11
        0x1b
        0xe
        0x1b
        0x14
        0x1b
    .end array-data

    .line 242
    :array_19
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 247
    :array_1a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x1b
        0x11
        0x1b
        0x15
        0x54
        0xe
        0x1b
        0x16
        0x11
    .end array-data

    .line 251
    :array_1b
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xd
        0x12
        0x1b
        0xe
        0x9
        0x1b
        0xa
        0xa
    .end array-data

    .line 255
    :array_1c
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data

    .line 259
    :array_1d
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data
.end method


# virtual methods
.method public onBrowserDashMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 329
    return-void
.end method

.method public onFgAppChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 293
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v3, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v2

    .line 299
    .local v2, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    .line 300
    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    .line 301
    invoke-virtual {v2, v1}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    .line 302
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsKnownGameAppInForeground:Z

    .line 303
    invoke-static {v1}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsKnownGameAppInForeground:Z

    .line 305
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 306
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 307
    .local v0, "msg":Landroid/os/Message;
    iput v6, v0, Landroid/os/Message;->what:I

    .line 308
    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 315
    .end local v0    # "msg":Landroid/os/Message;
    :goto_1
    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->isSnsApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsKnownGameAppInForeground:Z

    if-eqz v3, :cond_4

    .line 317
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsLowPowerAppInForeground:Z

    .line 322
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 309
    :cond_2
    const-string v3, "com.android.email"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    goto :goto_1

    .line 312
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    goto :goto_1

    .line 319
    :cond_4
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsLowPowerAppInForeground:Z

    goto :goto_2
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    .line 288
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 289
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 347
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 351
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 359
    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 340
    :cond_0
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_4

    .line 381
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_1

    .line 382
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_BOOST_MS:I

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsLowPowerAppInForeground:Z

    if-eqz v0, :cond_a

    .line 387
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_IO_IS_BUSY:I

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 392
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    if-eqz v0, :cond_2

    .line 393
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 395
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_MULTI_EXIT_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 396
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SINGLE_EXIT_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisableAppInForeground:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    if-nez v0, :cond_b

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    .line 401
    const-string v0, "Mode change is stopped."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    .line 406
    :cond_3
    :goto_2
    return-void

    .line 365
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_5

    .line 366
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsFullScreenMode:Z

    if-eqz v0, :cond_7

    .line 370
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    if-eqz v0, :cond_6

    .line 371
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "652800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "1190400"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_8

    .line 376
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "652800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsPreloadAppInForeground:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsSpecialAppInForeground:Z

    if-eqz v0, :cond_0

    .line 378
    :cond_9
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_SYNC_THRESHOLD:I

    const-string v1, "960000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_a
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->ID_IO_IS_BUSY:I

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_1

    .line 402
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    if-eqz v0, :cond_3

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;->mIsModeChangeDisabled:Z

    .line 404
    const-string v0, "Mode change is restarted."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    goto :goto_2
.end method
