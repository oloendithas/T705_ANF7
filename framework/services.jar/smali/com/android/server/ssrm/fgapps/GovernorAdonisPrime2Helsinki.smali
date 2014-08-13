.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime2Helsinki.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$SipVisibilityCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# instance fields
.field final ID_EAGLE_ABOVE_HISPEED_DELAY:I

.field final ID_EAGLE_BOOST:I

.field final ID_EAGLE_BOOSTPULSE_DURATION:I

.field final ID_EAGLE_GO_HISPEED_LOAD:I

.field final ID_EAGLE_HISPEED_FREQ:I

.field final ID_EAGLE_MIN_SAMPLE_TIME:I

.field final ID_EAGLE_TARGET_LOADS:I

.field final ID_EAGLE_TIMER_RATE:I

.field final ID_EAGLE_TIMER_SLACK:I

.field final ID_ENFORCED_MODE:I

.field final ID_HMP_UP_THRESHOLD:I

.field final ID_KFC_ABOVE_HISPEED_DELAY:I

.field final ID_KFC_BOOST:I

.field final ID_KFC_BOOSTPULSE_DURATION:I

.field final ID_KFC_GO_HISPEED_LOAD:I

.field final ID_KFC_HISPEED_FREQ:I

.field final ID_KFC_MIN_SAMPLE_TIME:I

.field final ID_KFC_TARGET_LOADS:I

.field final ID_KFC_TIMER_RATE:I

.field final ID_KFC_TIMER_SLACK:I

.field final ID_LOAD_AVG_PERIOD_MS:I

.field final ID_MULTI_ENTER_LOAD:I

.field final ID_MULTI_EXIT_LOAD:I

.field final ID_SINGLE_ENTER_LOAD:I

.field final ID_SINGLE_EXIT_LOAD:I

.field final MSG_KNOWN_GAME_FOREGROUND:I

.field final TAG:Ljava/lang/String;

.field mCameraRecordingDualOn:Z

.field mCameraRecordingOn:Z

.field mHandler:Landroid/os/Handler;

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsHangout:Z

.field mIsHangoutVtCall:Z

.field mIsKnownGameInForeground:Z

.field mIsModeChangeDisabled:Z

.field mIsWhiteListApp:Z

.field mListTargetApp:[Ljava/lang/String;

.field mSIPVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x44

    const/16 v5, 0x3d

    const/16 v4, 0x40

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 36
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->TAG:Ljava/lang/String;

    .line 91
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 97
    iput v2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->MSG_KNOWN_GAME_FOREGROUND:I

    .line 305
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    .line 307
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 309
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    .line 311
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    .line 313
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    .line 317
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x13

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x13

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    .line 397
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    .line 411
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    .line 100
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 103
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_RATE:I

    .line 110
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TIMER_SLACK:I

    .line 117
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_MIN_SAMPLE_TIME:I

    .line 124
    new-array v0, v5, [I

    fill-array-data v0, :array_b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_HISPEED_FREQ:I

    .line 131
    new-array v0, v5, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    .line 138
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_GO_HISPEED_LOAD:I

    .line 145
    new-array v0, v6, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_ABOVE_HISPEED_DELAY:I

    .line 153
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOST:I

    .line 160
    new-array v0, v6, [I

    fill-array-data v0, :array_10

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_BOOSTPULSE_DURATION:I

    .line 168
    const/16 v0, 0x3b

    new-array v0, v0, [I

    fill-array-data v0, :array_11

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_RATE:I

    .line 175
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TIMER_SLACK:I

    .line 182
    new-array v0, v4, [I

    fill-array-data v0, :array_13

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_MIN_SAMPLE_TIME:I

    .line 189
    new-array v0, v5, [I

    fill-array-data v0, :array_14

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    .line 196
    new-array v0, v5, [I

    fill-array-data v0, :array_15

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "75 1500000:80 1700000:85 1800000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    .line 203
    new-array v0, v4, [I

    fill-array-data v0, :array_16

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_GO_HISPEED_LOAD:I

    .line 210
    new-array v0, v6, [I

    fill-array-data v0, :array_17

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19000 1000000:99000 1200000:119000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    .line 218
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOST:I

    .line 225
    new-array v0, v6, [I

    fill-array-data v0, :array_19

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_BOOSTPULSE_DURATION:I

    .line 233
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "32"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    .line 239
    const/16 v0, 0x3e

    new-array v0, v0, [I

    fill-array-data v0, :array_1b

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    .line 246
    const/16 v0, 0x41

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    .line 254
    const/16 v0, 0x42

    new-array v0, v0, [I

    fill-array-data v0, :array_1d

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    .line 262
    new-array v0, v4, [I

    fill-array-data v0, :array_1e

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "240"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    .line 269
    const/16 v0, 0x41

    new-array v0, v0, [I

    fill-array-data v0, :array_1f

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    .line 277
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "700"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    .line 282
    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 284
    new-instance v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;

    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;-><init>(Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    .line 303
    return-void

    .line 36
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
        0x3b
        0x1e
        0x15
        0x14
        0x13
        0x9
        0x2a
        0x8
        0x13
        0x17
        0x1f
        0x48
        0x32
        0x1f
        0x16
        0x9
        0x13
        0x14
        0x11
        0x13
    .end array-data

    .line 317
    :array_1
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

    :array_2
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

    :array_3
    .array-data 4
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

    :array_4
    .array-data 4
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

    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1f
        0x1b
        0x54
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
        0x8
        0x49
        0x25
        0x8
        0x15
        0xd
    .end array-data

    :array_6
    .array-data 4
        0x3f
        0xa
        0x13
        0x19
        0x39
        0x13
        0xe
        0x1b
        0x1e
        0x1f
        0x16
    .end array-data

    :array_7
    .array-data 4
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

    .line 103
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
        0x4a
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

    .line 110
    :array_9
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
        0x4a
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
        0x9
        0x16
        0x1b
        0x19
        0x11
    .end array-data

    .line 117
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
        0x4a
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

    .line 124
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
        0x4a
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

    .line 131
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
        0x4a
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

    .line 138
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
        0x4a
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

    .line 145
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
        0x4a
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

    .line 153
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
        0x4a
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
        0x18
        0x15
        0x15
        0x9
        0xe
    .end array-data

    .line 160
    :array_10
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
        0x4a
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
        0x18
        0x15
        0x15
        0x9
        0xe
        0xa
        0xf
        0x16
        0x9
        0x1f
        0x25
        0x1e
        0xf
        0x8
        0x1b
        0xe
        0x13
        0x15
        0x14
    .end array-data

    .line 168
    :array_11
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
        0x4e
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

    .line 175
    :array_12
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
        0x4e
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
        0x9
        0x16
        0x1b
        0x19
        0x11
    .end array-data

    .line 182
    :array_13
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
        0x4e
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

    .line 189
    :array_14
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
        0x4e
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

    .line 196
    :array_15
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
        0x4e
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

    .line 203
    :array_16
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
        0x4e
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

    .line 210
    :array_17
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
        0x4e
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

    .line 218
    :array_18
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
        0x4e
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
        0x18
        0x15
        0x15
        0x9
        0xe
    .end array-data

    .line 225
    :array_19
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
        0x4e
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
        0x18
        0x15
        0x15
        0x9
        0xe
        0xa
        0xf
        0x16
        0x9
        0x1f
        0x25
        0x1e
        0xf
        0x8
        0x1b
        0xe
        0x13
        0x15
        0x14
    .end array-data

    .line 233
    :array_1a
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x11
        0x1f
        0x8
        0x14
        0x1f
        0x16
        0x55
        0x12
        0x17
        0xa
        0x55
        0x16
        0x15
        0x1b
        0x1e
        0x25
        0x1b
        0xc
        0x1d
        0x25
        0xa
        0x1f
        0x8
        0x13
        0x15
        0x1e
        0x25
        0x17
        0x9
    .end array-data

    .line 239
    :array_1b
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
        0x4e
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

    .line 246
    :array_1c
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
        0x4e
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

    .line 254
    :array_1d
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
        0x4e
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

    .line 262
    :array_1e
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
        0x4e
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

    .line 269
    :array_1f
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
        0x4e
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

    .line 277
    :array_20
    .array-data 4
        0x55
        0x9
        0x3
        0x9
        0x55
        0x11
        0x1f
        0x8
        0x14
        0x1f
        0x16
        0x55
        0x12
        0x17
        0xa
        0x55
        0xf
        0xa
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
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 403
    return-void
.end method

.method public onFgAppChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v5

    .line 353
    .local v5, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    .line 355
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 356
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mListTargetApp:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 357
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 358
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    .line 363
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 364
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 365
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 366
    .local v3, "msg":Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 367
    iget-object v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 373
    .end local v3    # "msg":Landroid/os/Message;
    :goto_1
    const/16 v7, 0x17

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v7}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->x([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 378
    return-void

    .line 356
    .restart local v6    # "str":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v6    # "str":Ljava/lang/String;
    :cond_3
    iput-boolean v8, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    goto :goto_1

    .line 373
    :array_0
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
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 383
    return-void
.end method

.method public onHangoutVtCallChanged(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    .line 415
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 416
    return-void
.end method

.method public onSipVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 409
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    .line 389
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 391
    :cond_0
    const-string v0, "Camera_recordingDual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    .line 393
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 395
    :cond_1
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_4

    .line 421
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsHangoutVtCall:Z

    if-nez v0, :cond_1

    .line 444
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_HMP_UP_THRESHOLD:I

    const-string v1, "1024"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 447
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_2

    .line 448
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 449
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 450
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_MULTI_EXIT_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 451
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_SINGLE_EXIT_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 454
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-nez v0, :cond_9

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 456
    const-string v0, "Mode change is stopped."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    .line 461
    :cond_3
    :goto_1
    return-void

    .line 422
    :cond_4
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isKnoxMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_5

    .line 423
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "75 1000000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 424
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsBrowserForeground:Z

    if-eqz v0, :cond_6

    .line 427
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_KFC_TARGET_LOADS:I

    const-string v1, "70 1200000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 428
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 429
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 430
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "99000 1200000:399000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 431
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 432
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mSIPVisible:Z

    if-eqz v0, :cond_7

    .line 433
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1500000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 435
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsWhiteListApp:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mCameraRecordingDualOn:Z

    if-eqz v0, :cond_0

    .line 436
    :cond_8
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_TARGET_LOADS:I

    const-string v1, "95 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 437
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_HISPEED_FREQ:I

    const-string v1, "900000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 438
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_EAGLE_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000 1000000:139000 1200000:499000 1700000:19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 440
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->ID_LOAD_AVG_PERIOD_MS:I

    const-string v1, "64"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    if-eqz v0, :cond_3

    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsModeChangeDisabled:Z

    .line 459
    const-string v0, "Mode change is restarted."

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->speak(Ljava/lang/String;)V

    goto/16 :goto_1
.end method
