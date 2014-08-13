.class public Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DvfsUpThreshold.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final DVFS_UT_DEFAULT:I

.field private final DVFS_UT_MAX:I

.field final DVFS_UT_SYSFS_PATH:Ljava/lang/String;

.field final GAME_MODE_PATH:Ljava/lang/String;

.field private isFullScreenMode:Z

.field private isJaUpthresholdAppFg:Z

.field private mCurrentUpThreshold:I

.field mUpThresholdExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

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
        0x3e
        0xc
        0x1c
        0x9
        0x2f
        0xa
        0x2e
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

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v1, 0x5a

    const/16 v2, 0x1c

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    .line 38
    iput v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_DEFAULT:I

    .line 40
    const/16 v0, 0x63

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_MAX:I

    .line 42
    iput v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 138
    const/16 v0, 0x37

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_SYSFS_PATH:Ljava/lang/String;

    .line 145
    const/16 v0, 0x32

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->GAME_MODE_PATH:Ljava/lang/String;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    .line 46
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 51
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 60
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    new-array v1, v1, [I

    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->x([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void

    .line 138
    :array_0
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
        0x25
        0x12
    .end array-data

    .line 145
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
        0x1d
        0x1b
        0x17
        0x1f
        0x25
        0x17
        0x15
        0x1e
        0x1f
    .end array-data

    .line 46
    :array_2
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

    .line 51
    :array_3
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

    .line 56
    :array_4
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

    .line 60
    :array_5
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

    .line 65
    :array_6
    .array-data 4
        0x3d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
    .end array-data

    :array_7
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
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    .line 72
    :array_8
    .array-data 4
        0x2c
        0x13
        0x1e
        0x1f
        0x15
        0x2a
        0x16
        0x1b
        0x3
        0x1f
        0x8
    .end array-data

    :array_9
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

    .line 79
    :array_a
    .array-data 4
        0x2c
        0x13
        0x1e
        0x1f
        0x15
        0x52
        0x12
        0x13
        0x1e
        0x1e
        0x1f
        0x14
        0x53
    .end array-data

    :array_b
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
        0xc
        0x13
        0x1e
        0x1f
        0x15
        0xa
        0x16
        0x1b
        0x3
        0x1f
        0x8
    .end array-data

    .line 86
    :array_c
    .array-data 4
        0x39
        0x1b
        0x17
        0x1f
        0x8
        0x1b
    .end array-data

    :array_d
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
        0x19
        0x1b
        0x17
        0x1f
        0x8
        0x1b
    .end array-data
.end method


# virtual methods
.method addExceptionPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method protected calculateCurrentThreshold()I
    .locals 4

    .prologue
    const/16 v1, 0x63

    const/16 v2, 0x5a

    .line 180
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    if-eqz v3, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "fgPackageName":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isExceptionPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 187
    goto :goto_0

    :cond_2
    move v1, v2

    .line 192
    goto :goto_0
.end method

.method isExceptionPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFgAppChanged()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "newPackageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    goto :goto_0

    .line 108
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    goto :goto_1
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 116
    return-void
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->isFullScreenMode:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateParameters()V

    .line 131
    :cond_0
    return-void
.end method

.method protected updateParameters()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->calculateCurrentThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->updateThresholdSysFS(I)V

    .line 135
    return-void
.end method

.method protected updateThresholdSysFS(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 156
    iget v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-eq v1, p1, :cond_0

    .line 157
    sget-object v1, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThresholdSysFS :: new value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->DVFS_UT_SYSFS_PATH:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iput p1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 161
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-eqz v1, :cond_0

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->GAME_MODE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    iget v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->mCurrentUpThreshold:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->GAME_MODE_PATH:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->GAME_MODE_PATH:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
