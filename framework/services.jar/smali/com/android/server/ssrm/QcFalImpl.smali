.class public Lcom/android/server/ssrm/QcFalImpl;
.super Ljava/lang/Object;
.source "QcFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/QcFalImpl$1;,
        Lcom/android/server/ssrm/QcFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final DUALCORE_TABLE:[I

.field private static final MSM8084PRO_BUS_TABLE:[I

.field private static final MSM8974PRO_BUS_TABLE:[I

.field static final TAG:Ljava/lang/String; = "SSRMv2:QcFalImpl"


# instance fields
.field final DEBUG:Z

.field final UTF8:Ljava/lang/String;

.field mGpuFreqTable:[I

.field mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    .line 399
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8084PRO_BUS_TABLE:[I

    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    return-void

    .line 395
    nop

    :array_0
    .array-data 4
        0x3a3
        0x320
        0x266
        0x1cc
        0x133
        0xc8
        0x96
        0x4b
    .end array-data

    .line 399
    :array_1
    .array-data 4
        0x429
        0x31c
        0x296
        0x210
        0x1cc
        0x189
        0x133
        0x103
        0xc8
        0x96
        0x64
        0x4b
        0x32
    .end array-data

    .line 403
    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/QcFalImpl;->DEBUG:Z

    .line 32
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->UTF8:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 290
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 329
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 45
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    .line 60
    :goto_0
    new-instance v1, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 61
    return-void

    .line 48
    :cond_0
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "msm8610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "apq8084"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8084:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 57
    :cond_4
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 435
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseCpuCoreTable()[I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 440
    const-string v4, "SSRMv2:QcFalImpl"

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "cpuKernelMax":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 456
    :cond_0
    return-object v3

    .line 445
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 446
    .local v2, "maxNum":I
    const/16 v4, 0x20

    if-gt v2, v4, :cond_0

    .line 450
    new-array v3, v2, [I

    .line 451
    .local v3, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 452
    sub-int v4, v2, v1

    aput v4, v3, v1

    .line 453
    const-string v4, "SSRMv2:QcFalImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseCpuCoreTable:: table["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseGpuFreqTable()[I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 460
    const-string v5, "SSRMv2:QcFalImpl"

    iget-object v6, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "rawFreqTable":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-object v3

    .line 465
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 466
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "gpuLevels":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 470
    array-length v4, v0

    .line 471
    .local v4, "totalLevelNum":I
    new-array v3, v4, [I

    .line 473
    .local v3, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 474
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    .line 475
    const-string v5, "SSRMv2:QcFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseGpuFreqTable:: table["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 477
    :cond_2
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iput v4, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 478
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0
.end method


# virtual methods
.method acquirePerfCoreMaxLock(I)V
    .locals 9
    .param p1, "coreNum"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 333
    const/16 v0, 0x7fe

    .line 334
    .local v0, "CPUS_ONLINE_MAX_LIMIT_1":I
    const/16 v1, 0x7fd

    .line 335
    .local v1, "CPUS_ONLINE_MAX_LIMIT_2":I
    const/16 v2, 0x7fc

    .line 336
    .local v2, "CPUS_ONLINE_MAX_LIMIT_3":I
    const/16 v3, 0x7fb

    .line 337
    .local v3, "CPUS_ONLINE_MAX_LIMIT_4":I
    const/16 v4, 0x7fb

    .line 339
    .local v4, "CPUS_ONLINE_MAX_LIMIT_MAX":I
    if-lt p1, v7, :cond_0

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v5, :cond_2

    .line 345
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v5}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 347
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 351
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 365
    :pswitch_0
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 368
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fe

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 353
    :pswitch_1
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 356
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fc

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 359
    :pswitch_2
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 362
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fd

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method acquirePerfCoreMinLock(I)V
    .locals 4
    .param p1, "coreNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 293
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 305
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 321
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 309
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 313
    :pswitch_2
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 315
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 321
    :array_0
    .array-data 4
        0x702
        0x100
    .end array-data

    .line 309
    :array_1
    .array-data 4
        0x7ff
        0x100
    .end array-data

    .line 315
    :array_2
    .array-data 4
        0x703
        0x100
    .end array-data
.end method

.method adjustFreqToIndexValue(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 195
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    if-nez v1, :cond_3

    .line 198
    const/4 p2, 0x0

    :cond_1
    :goto_0
    move v0, p2

    .line 287
    :cond_2
    return v0

    .line 200
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 201
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    aget v1, v1, v0

    if-eq p2, v1, :cond_2

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_5
    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 209
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v1, :cond_7

    .line 210
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 233
    :sswitch_0
    const/16 p2, 0x23c

    .line 234
    goto :goto_0

    .line 212
    :sswitch_1
    const/16 p2, 0x1bbe

    .line 213
    goto :goto_0

    .line 215
    :sswitch_2
    const/16 p2, 0x17d7

    .line 216
    goto :goto_0

    .line 218
    :sswitch_3
    const/16 p2, 0x124c

    .line 219
    goto :goto_0

    .line 221
    :sswitch_4
    const/16 p2, 0xdb5

    .line 222
    goto :goto_0

    .line 224
    :sswitch_5
    const/16 p2, 0x926

    .line 225
    goto :goto_0

    .line 227
    :sswitch_6
    const/16 p2, 0x5f5

    .line 228
    goto :goto_0

    .line 230
    :sswitch_7
    const/16 p2, 0x478

    .line 231
    goto :goto_0

    .line 240
    :cond_7
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v1, :cond_1

    .line 241
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 279
    :sswitch_8
    const/16 p2, 0x2fa

    .line 280
    goto :goto_0

    .line 243
    :sswitch_9
    const/16 p2, 0x3f7a

    .line 244
    goto :goto_0

    .line 246
    :sswitch_a
    const/16 p2, 0x2f71

    .line 247
    goto :goto_0

    .line 249
    :sswitch_b
    const/16 p2, 0x2775

    .line 250
    goto :goto_0

    .line 252
    :sswitch_c
    const/16 p2, 0x1f78

    .line 253
    goto :goto_0

    .line 255
    :sswitch_d
    const/16 p2, 0x1b6b

    .line 256
    goto :goto_0

    .line 258
    :sswitch_e
    const/16 p2, 0x176c

    .line 259
    goto :goto_0

    .line 261
    :sswitch_f
    const/16 p2, 0x124c

    .line 262
    goto :goto_0

    .line 264
    :sswitch_10
    const/16 p2, 0xf70

    .line 265
    goto :goto_0

    .line 267
    :sswitch_11
    const/16 p2, 0xbeb

    .line 268
    goto :goto_0

    .line 270
    :sswitch_12
    const/16 p2, 0x8f0

    .line 271
    goto :goto_0

    .line 273
    :sswitch_13
    const/16 p2, 0x5f5

    .line 274
    goto :goto_0

    .line 276
    :sswitch_14
    const/16 p2, 0x478

    .line 277
    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_0
        0x96 -> :sswitch_7
        0xc8 -> :sswitch_6
        0x133 -> :sswitch_5
        0x1cc -> :sswitch_4
        0x266 -> :sswitch_3
        0x320 -> :sswitch_2
        0x3a3 -> :sswitch_1
    .end sparse-switch

    .line 241
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_8
        0x4b -> :sswitch_14
        0x64 -> :sswitch_13
        0x96 -> :sswitch_12
        0xc8 -> :sswitch_11
        0x103 -> :sswitch_10
        0x133 -> :sswitch_f
        0x189 -> :sswitch_e
        0x1cc -> :sswitch_d
        0x210 -> :sswitch_c
        0x296 -> :sswitch_b
        0x31c -> :sswitch_a
        0x429 -> :sswitch_9
    .end sparse-switch
.end method

.method public checkNodeExistence(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 377
    packed-switch p1, :pswitch_data_0

    .line 392
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 380
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 382
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 384
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 386
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 388
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 409
    packed-switch p1, :pswitch_data_0

    .line 431
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 412
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    .line 413
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 417
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    .line 423
    :pswitch_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    goto :goto_0

    .line 425
    :cond_2
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8084PRO_BUS_TABLE:[I

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 161
    const-string v0, ""

    .line 163
    .local v0, "path":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 183
    :pswitch_0
    const/4 v1, 0x0

    .line 191
    :goto_0
    return v1

    .line 165
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 186
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/QcFalImpl;->adjustFreqToIndexValue(II)I

    move-result p2

    .line 188
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyToValues:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 175
    goto :goto_1

    .line 177
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 178
    goto :goto_1

    .line 180
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 181
    goto :goto_1

    .line 163
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 118
    .local v1, "value":I
    packed-switch p1, :pswitch_data_0

    .line 150
    :pswitch_0
    const/4 v2, 0x0

    .line 156
    :goto_0
    return v2

    .line 120
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 122
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 129
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 153
    :cond_0
    :goto_1
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertToDefault:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 140
    goto :goto_1

    .line 142
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 143
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 144
    goto :goto_1

    .line 146
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 147
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 148
    goto :goto_1

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
