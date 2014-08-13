.class public Lcom/android/server/ssrm/fgapps/TurboModeOnOff;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "TurboModeOnOff.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$ListScrollBoostEventCallback;


# static fields
.field private static final FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsForeground:Z

.field private mLastTurboMode:Z

.field private mListScrollBoost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    .line 30
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String;

    return-void

    .line 25
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
        0x2e
        0xf
        0x8
        0x18
        0x15
        0x37
        0x15
        0x1e
        0x1f
        0x35
        0x14
        0x35
        0x1c
        0x1c
    .end array-data

    .line 30
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
        0x15
        0x14
        0x1e
        0x1f
        0x17
        0x1b
        0x14
        0x1e
        0x55
        0x1f
        0x14
        0x1b
        0x18
        0x16
        0x1f
        0x25
        0xe
        0xf
        0x8
        0x18
        0x15
        0x25
        0x17
        0x15
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1c

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    .line 39
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 44
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 48
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 52
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 56
    return-void

    .line 39
    :array_0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    .line 48
    :array_2
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    .line 52
    :array_3
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data
.end method

.method private calculateCurrentMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    if-nez v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateTurboMode()V
    .locals 4

    .prologue
    .line 62
    const-string v1, "jf"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->calculateCurrentMode()Z

    move-result v0

    .line 67
    .local v0, "newTurboMode":Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    if-eq v1, v0, :cond_0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mLastTurboMode:Z

    .line 69
    if-eqz v0, :cond_2

    .line 70
    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 72
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mIsForeground:Z

    .line 92
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V

    .line 93
    return-void
.end method

.method public onListScrollBoostEvent(Z)V
    .locals 0
    .param p1, "scroll"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->mListScrollBoost:Z

    .line 100
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;->updateTurboMode()V

    .line 101
    return-void
.end method
