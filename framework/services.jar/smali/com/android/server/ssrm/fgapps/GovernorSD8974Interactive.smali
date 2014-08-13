.class public final Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GovernorSD8974Interactive.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOnCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ASPHALT_PKG:Ljava/lang/String;

.field DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field DEFAULT_BOOST_MS:Ljava/lang/String;

.field DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

.field DEFAULT_HISPEED_FREQ:Ljava/lang/String;

.field DEFAULT_IO_IS_BUSY:Ljava/lang/String;

.field DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

.field DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

.field DEFAULT_TARGET_LOADS:Ljava/lang/String;

.field DEFAULT_TIMER_RATE:Ljava/lang/String;

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

.field final PATH_BOOST_MS:Ljava/lang/String;

.field final PATH_ENFORCED_MODE:Ljava/lang/String;

.field final PATH_GO_HISPEED_LOAD:Ljava/lang/String;

.field final PATH_HISPEED_FREQ:Ljava/lang/String;

.field final PATH_IO_IS_BUSY:Ljava/lang/String;

.field final PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

.field final PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

.field final PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

.field final PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

.field final PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

.field final PATH_SYNC_THRESHOLD:Ljava/lang/String;

.field final PATH_TARGET_LOADS:Ljava/lang/String;

.field final PATH_TIMER_RATE:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field final TEMPLERUN2_PKG:Ljava/lang/String;

.field mDisableModeChange:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsFullScreenMode:Z

.field mIsHeavyAppInForeground:Z

.field mIsHighCpuLoadGame:Z

.field mIsKNOXBrowserForeground:Z

.field mIsLowPowerAppInForeground:Z

.field mIsPreloadAppInForeground:Z

.field mIsScreenOffInCall:Z

.field mIsSpecialAppInForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x3b

    const/16 v3, 0x23

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 42
    const/16 v1, 0x20

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    .line 48
    const/16 v1, 0x38

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    .line 55
    const/16 v1, 0x3f

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 62
    const/16 v1, 0x38

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    .line 69
    new-array v1, v4, [I

    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 76
    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 83
    const/16 v1, 0x36

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    .line 90
    const/16 v1, 0x40

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 97
    const/16 v1, 0x39

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    .line 104
    const/16 v1, 0x2f

    new-array v1, v1, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    .line 110
    const/16 v1, 0x29

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    .line 116
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 123
    const/16 v1, 0x3d

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 130
    new-array v1, v4, [I

    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 137
    const/16 v1, 0x3c

    new-array v1, v1, [I

    fill-array-data v1, :array_e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 144
    const/16 v1, 0x36

    new-array v1, v1, [I

    fill-array-data v1, :array_f

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    .line 178
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 180
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 188
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    .line 196
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->MSG_KNOWN_GAME_FOREGROUND:I

    .line 198
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    .line 335
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_10

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TEMPLERUN2_PKG:Ljava/lang/String;

    .line 340
    new-array v1, v3, [I

    fill-array-data v1, :array_11

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->ASPHALT_PKG:Ljava/lang/String;

    .line 411
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 422
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 202
    new-array v1, v6, [I

    fill-array-data v1, :array_12

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 206
    new-array v1, v3, [I

    fill-array-data v1, :array_13

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 211
    new-array v1, v3, [I

    fill-array-data v1, :array_14

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 216
    new-array v1, v6, [I

    fill-array-data v1, :array_15

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 220
    const/16 v1, 0x1b

    new-array v1, v1, [I

    fill-array-data v1, :array_16

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 225
    const/16 v1, 0x1c

    new-array v1, v1, [I

    fill-array-data v1, :array_17

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 230
    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_18

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 234
    new-array v1, v5, [I

    fill-array-data v1, :array_19

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 238
    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_1a

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 243
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_1b

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 247
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 251
    new-array v1, v5, [I

    fill-array-data v1, :array_1d

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 255
    const/16 v1, 0x15

    new-array v1, v1, [I

    fill-array-data v1, :array_1e

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->readFromSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v1, "dm"

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 309
    new-instance v1, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;)V

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    .line 326
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    .line 278
    const-string v1, "99"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    .line 279
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    .line 280
    const-string v1, "40000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    .line 281
    const-string v1, "85 1400000:90 1700000:95"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    .line 282
    const-string v1, "20000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    .line 283
    const-string v1, "100000"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    .line 285
    const-string v1, "1190400"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 286
    const-string v1, "20"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    .line 288
    const-string v1, "340"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    .line 289
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    .line 290
    const-string v1, "90"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    .line 291
    const-string v1, "60"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    .line 292
    const-string v1, "1"

    iput-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_BOOST_MS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_ABOVE_HISPEED_DELAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_GO_HISPEED_LOAD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_HISPEED_FREQ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_MIN_SAMPLE_TIME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TARGET_LOADS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_TIMER_RATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SAMPLING_DOWN_FACTOR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_SYNC_THRESHOLD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_BOOST_MS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEFAULT_IO_IS_BUSY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_IO_IS_BUSY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    throw v1

    .line 42
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
        0x33
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
    .end array-data

    .line 48
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

    .line 55
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

    .line 62
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

    .line 69
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

    .line 76
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

    .line 83
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

    .line 90
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

    .line 97
    :array_8
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

    .line 104
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

    .line 110
    :array_a
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

    .line 116
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

    .line 123
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

    .line 130
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

    .line 137
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

    .line 144
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

    .line 335
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
        0x48
    .end array-data

    .line 340
    :array_11
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
        0x3e
        0x37
        0x32
        0x37
    .end array-data

    .line 202
    :array_12
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
        0x4c
        0x32
        0x2a
    .end array-data

    .line 211
    :array_14
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

    .line 216
    :array_15
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

    .line 220
    :array_16
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

    .line 225
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

    .line 230
    :array_18
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

    .line 234
    :array_19
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

    .line 238
    :array_1a
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

    .line 243
    :array_1b
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

    .line 247
    :array_1c
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

    .line 251
    :array_1d
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

    .line 255
    :array_1e
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
    .line 407
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 409
    return-void
.end method

.method public onFgAppChanged()V
    .locals 15

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v8

    .line 348
    .local v8, "packageName":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-object v12, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v9

    .line 353
    .local v9, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    .line 354
    .local v1, "isHeavyAppInForeground":Z
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 355
    .local v0, "isBrowserForeground":Z
    invoke-virtual {v9, v8}, Lcom/android/server/ssrm/SortingMachine;->isPreloadApp(Ljava/lang/String;)Z

    move-result v6

    .line 356
    .local v6, "isPreloadAppForeground":Z
    const/4 v2, 0x0

    .line 357
    .local v2, "isHighCpuLoadGame":Z
    invoke-static {v8}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v3

    .line 358
    .local v3, "isHotGame":Z
    const/4 v4, 0x0

    .line 359
    .local v4, "isKNOXBrowserForeground":Z
    invoke-static {v8}, Lcom/android/server/ssrm/SortingMachine;->isSnsApp(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    if-nez v6, :cond_2

    if-eqz v3, :cond_8

    :cond_2
    const/4 v5, 0x1

    .line 364
    .local v5, "isLowPowerAppInForeground":Z
    :goto_1
    iget-object v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TEMPLERUN2_PKG:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->ASPHALT_PKG:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 365
    :cond_3
    sget-boolean v12, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v12, :cond_4

    .line 366
    const/4 v2, 0x1

    .line 370
    :cond_4
    sget-boolean v12, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v12, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isKnoxMode()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 371
    sget-object v12, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 372
    .local v11, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 373
    .local v10, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v12

    const/16 v13, 0xea

    if-lt v12, v13, :cond_5

    .line 374
    const/4 v4, 0x1

    .line 378
    .end local v10    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v11    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v12, :cond_9

    .line 379
    if-nez v3, :cond_6

    .line 380
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    .line 381
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateModeChangeParameters()V

    .line 390
    :cond_6
    :goto_2
    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-ne v12, v0, :cond_7

    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-ne v12, v2, :cond_7

    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-ne v12, v1, :cond_7

    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-ne v12, v6, :cond_7

    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-ne v12, v4, :cond_7

    iget-boolean v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    if-eq v12, v5, :cond_0

    .line 395
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    .line 396
    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    .line 397
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    .line 398
    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    .line 399
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    .line 400
    iput-boolean v5, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    goto/16 :goto_0

    .line 359
    .end local v5    # "isLowPowerAppInForeground":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 383
    .restart local v5    # "isLowPowerAppInForeground":Z
    :cond_9
    if-eqz v3, :cond_6

    .line 384
    iget-object v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 385
    iget-object v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 386
    .local v7, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->what:I

    .line 387
    iget-object v12, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mHandler:Landroid/os/Handler;

    const-wide/16 v13, 0x2710

    invoke-virtual {v12, v7, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 332
    return-void
.end method

.method public onScreenOff()V
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMonitorInstance()Lcom/android/server/ssrm/Monitor;

    move-result-object v0

    .line 427
    .local v0, "monitor":Lcom/android/server/ssrm/Monitor;
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v1, :cond_0

    .line 428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 429
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 431
    :cond_0
    return-void
.end method

.method public onScreenOn()V
    .locals 1

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v0, :cond_0

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 439
    :cond_0
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 415
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    .line 418
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParameters()V

    .line 420
    :cond_0
    return-void
.end method

.method public updateModeChangeParameters()V
    .locals 2

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mDisableModeChange:Z

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    const-string v1, "Mode change is disabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "800"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    const-string v1, "200"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->TAG:Ljava/lang/String;

    const-string v1, "Mode change is enabled."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_ENTER_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_ENTER_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_ENTER_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MULTI_EXIT_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MULTI_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SINGLE_EXIT_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SINGLE_EXIT_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateParameters()V
    .locals 2

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateSyncThresholdParametersForAll()V

    .line 444
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForTablet()V

    .line 450
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsLowPowerAppInForeground:Z

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_1
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->updateParametersForDefault()V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_IO_IS_BUSY:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateParametersForDefault()V
    .locals 2

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "19000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "90"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1497600"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "79000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "60 800000:65 1400000:70"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "300000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v0, "sys.pwrcntl.decision.change"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateParametersForTablet()V
    .locals 2

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_1
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ENFORCED_MODE:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "80000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "65 1400000:70 1700000:75"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "40"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 498
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "100"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 500
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    const-string v1, "20000 1400000:80000 1500000:40000 1700000:20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    const-string v1, "99"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    const-string v1, "1190400"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    const-string v1, "40000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    const-string v1, "85 1400000:90 1700000:95"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    const-string v1, "20000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    const-string v1, "100000"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    const-string v1, "20"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_ABOVE_HISPEED_DELAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_GO_HISPEED_LOAD:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_GO_HISPEED_LOAD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_HISPEED_FREQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_HISPEED_FREQ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_MIN_SAMPLE_TIME:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_MIN_SAMPLE_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TARGET_LOADS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TARGET_LOADS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_TIMER_RATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_TIMER_RATE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SAMPLING_DOWN_FACTOR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_BOOST_MS:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_BOOST_MS:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateSyncThresholdParametersForAll()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 459
    .local v0, "value":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-eqz v1, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    .line 474
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->PATH_SYNC_THRESHOLD:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    return-void

    .line 461
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsKNOXBrowserForeground:Z

    if-eqz v1, :cond_2

    .line 462
    const-string v0, "1728000"

    goto :goto_0

    .line 463
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHeavyAppInForeground:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserDashMode:Z

    if-eqz v1, :cond_4

    .line 464
    :cond_3
    const-string v0, "0"

    goto :goto_0

    .line 465
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsBrowserForeground:Z

    if-eqz v1, :cond_5

    .line 466
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->DEFAULT_SYNC_THRESHOLD:Ljava/lang/String;

    goto :goto_0

    .line 467
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsHighCpuLoadGame:Z

    if-eqz v1, :cond_6

    .line 468
    const-string v0, "1190400"

    goto :goto_0

    .line 469
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsFullScreenMode:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsScreenOffInCall:Z

    if-eqz v1, :cond_8

    .line 470
    :cond_7
    const-string v0, "652800"

    goto :goto_0

    .line 471
    :cond_8
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsPreloadAppInForeground:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;->mIsSpecialAppInForeground:Z

    if-eqz v1, :cond_0

    .line 472
    :cond_9
    const-string v0, "960000"

    goto :goto_0
.end method
