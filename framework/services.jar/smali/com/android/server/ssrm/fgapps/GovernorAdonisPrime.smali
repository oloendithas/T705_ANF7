.class public Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;
.super Lcom/android/server/ssrm/fgapps/AbsGovernor;
.source "GovernorAdonisPrime.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field static sOptKeywords:[Ljava/lang/String;

.field static sOptNames:[Ljava/lang/String;


# instance fields
.field ID_ABOVE_HISPEED_DELAY:I

.field ID_ENFORCED_MODE:I

.field ID_GO_HISPEED_LOAD:I

.field ID_HISPEED_FREQ:I

.field ID_MIN_SAMPLE_TIME:I

.field ID_MULTI_ENTER_LOAD:I

.field ID_SINGLE_ENTER_LOAD:I

.field ID_TARGET_LOADS:I

.field ID_TIMER_RATE:I

.field final TAG:Ljava/lang/String;

.field mIsAutoMode:Z

.field mIsBrowserDashMode:Z

.field mIsBrowserForeground:Z

.field mIsBrowserPageLoading:Z

.field mIsCameraRecording:Z

.field mIsChatOnV:Z

.field mIsHeavyAppInForeground:Z

.field mIsTargetAppInForeground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const/16 v2, 0x14

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x1b

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->sOptNames:[Ljava/lang/String;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->sOptKeywords:[Ljava/lang/String;

    return-void

    .line 121
    nop

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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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
        0x11
        0x1b
        0x11
        0x1b
        0x15
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
        0x19
        0x15
        0x17
        0x54
        0x1f
        0xa
        0x13
        0x19
        0x1d
        0x1b
        0x17
        0x1f
        0x9
        0x54
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

    .line 156
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
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x3b

    const/16 v2, 0x38

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;-><init>()V

    .line 29
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->TAG:Ljava/lang/String;

    .line 113
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    .line 205
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 53
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setTag(Ljava/lang/String;)V

    .line 56
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "70 600000:70 800000:75 1500000:80 1700000:90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    .line 62
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000 1000000:80000 1200000:100000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    .line 68
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "600000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    .line 80
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "40000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    .line 86
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TIMER_RATE:I

    .line 92
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    .line 98
    const/16 v0, 0x3c

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "360"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    .line 104
    const/16 v0, 0x3d

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->x([I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "95"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->addSysfsParam(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    .line 110
    const-string v0, "dm"

    invoke-static {v0}, Lcom/android/server/ssrm/DevSysProperty;->addMode(Ljava/lang/String;)V

    .line 111
    return-void

    .line 29
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
    .end array-data

    .line 56
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

    .line 62
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

    .line 68
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

    .line 74
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

    .line 80
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

    .line 86
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

    .line 92
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

    .line 98
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

    .line 104
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
.end method


# virtual methods
.method protected onBrowserDashMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    .line 226
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 227
    return-void
.end method

.method public onFgAppChanged()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v6, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v4

    .line 171
    .local v4, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    .line 172
    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    .line 174
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 175
    sget-object v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->sOptNames:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 176
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 181
    .end local v5    # "str":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->sOptKeywords:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 182
    .restart local v5    # "str":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 183
    iput-boolean v7, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    .line 188
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    .line 190
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 175
    .restart local v5    # "str":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 196
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "Camera_recording"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 215
    :cond_0
    const-string v0, "ChatOnV_vtCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 219
    :cond_1
    return-void
.end method

.method public setBrowserPageLoading(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserPageLoading:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    .line 203
    return-void
.end method

.method updateParameterByScenario()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsAutoMode:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MULTI_ENTER_LOAD:I

    const-string v1, "800"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_SINGLE_ENTER_LOAD:I

    const-string v1, "200"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsHeavyAppInForeground:Z

    if-eqz v0, :cond_3

    .line 237
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-nez v0, :cond_2

    .line 238
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 271
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserDashMode:Z

    if-eqz v0, :cond_5

    .line 245
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_TABLET:Z

    if-eqz v0, :cond_4

    .line 246
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ENFORCED_MODE:I

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_4
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "60 800000:65 1400000:70"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "19000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_HISPEED_FREQ:I

    const-string v1, "650000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_GO_HISPEED_LOAD:I

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_MIN_SAMPLE_TIME:I

    const-string v1, "79000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsBrowserForeground:Z

    if-eqz v0, :cond_7

    .line 255
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    if-eqz v0, :cond_6

    .line 256
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 1000000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:100000 1200000:400000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_6
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 600000:99 1700000:80"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 260
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 650000:100000 1200000:400000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsTargetAppInForeground:Z

    if-eqz v0, :cond_8

    .line 263
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 264
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsCameraRecording:Z

    if-eqz v0, :cond_9

    .line 266
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "70 650000:95 800000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_ABOVE_HISPEED_DELAY:I

    const-string v1, "20000 1000000:140000 1200000:500000 1700000:20000"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->mIsChatOnV:Z

    if-eqz v0, :cond_2

    .line 269
    iget v0, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;->ID_TARGET_LOADS:I

    const-string v1, "80 900000:99"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->setSysfs(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
