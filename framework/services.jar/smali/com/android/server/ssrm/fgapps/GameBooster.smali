.class public Lcom/android/server/ssrm/fgapps/GameBooster;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "GameBooster.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$LockScreenCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ScreenOffCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

.field mArmFreqMinHelper:Landroid/os/DVFSHelper;

.field private mIsBoosterTriggered:Z

.field private mIsGameAppFg:Z

.field private mIsLockScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    return-void

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
        0x1b
        0x17
        0x1f
        0x38
        0x15
        0x15
        0x9
        0xe
        0x1f
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0x14

    const/16 v3, 0xc

    const/4 v6, 0x6

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 40
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 45
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 50
    new-array v0, v6, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 58
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 65
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    .line 69
    new-array v0, v6, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 79
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/fgapps/GameBooster;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/GameBooster;->x([I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    .line 82
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 83
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    const v3, 0xb2200

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 40
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1e
        0x1f
        0xc
        0x9
        0x13
        0x9
        0xe
        0x1f
        0x8
        0x9
        0x54
        0x39
        0x15
        0x15
        0x11
        0x13
        0x1f
        0x28
        0xf
        0x14
        0x3c
        0x15
        0x8
        0x31
        0x1b
        0x11
        0x1b
        0x15
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x16
        0x13
        0x14
        0x11
        0xe
        0x15
        0x17
        0x15
        0x8
        0x8
        0x15
        0xd
        0x54
        0xd
        0x13
        0x14
        0x1e
        0x8
        0xf
        0x14
        0x14
        0x1f
        0x8
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x12
        0x1f
        0x1b
        0xe
        0x49
        0x1d
    .end array-data

    .line 54
    :array_3
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

    .line 58
    :array_4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x11
        0x13
        0x16
        0x15
        0x15
        0x54
        0x9
        0xf
        0x18
        0xd
        0x1b
        0x3
        0x9
        0xf
        0x8
        0x1c
    .end array-data

    .line 65
    :array_5
    .array-data 4
        0x3d
        0x3b
        0x37
        0x3f
        0x25
        0x39
        0x2a
        0x2f
        0x25
        0x37
        0x33
        0x34
    .end array-data

    .line 69
    :array_6
    .array-data 4
        0x12
        0x1f
        0x1b
        0xe
        0x49
        0x1d
    .end array-data

    .line 79
    :array_7
    .array-data 4
        0x3d
        0x3b
        0x37
        0x3f
        0x25
        0x39
        0x35
        0x28
        0x3f
        0x25
        0x37
        0x33
        0x34
    .end array-data
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 121
    return-void
.end method

.method public onLockScreenRelease()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 101
    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/GameBooster;->updateBooster()V

    .line 95
    return-void
.end method

.method protected declared-synchronized updateBooster()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsGameAppFg:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsLockScreenOn:Z

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 106
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 108
    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "acquire lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mIsBoosterTriggered:Z

    .line 111
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmFreqMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 112
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GameBooster;->mArmCoreMinNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 113
    sget-object v0, Lcom/android/server/ssrm/fgapps/GameBooster;->TAG:Ljava/lang/String;

    const-string v1, "release lock"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GameBooster;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
