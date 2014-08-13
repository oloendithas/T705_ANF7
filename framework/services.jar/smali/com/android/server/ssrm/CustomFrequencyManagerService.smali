.class public Lcom/android/server/ssrm/CustomFrequencyManagerService;
.super Landroid/os/ICustomFrequencyManager$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;,
        Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    }
.end annotation


# static fields
.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field static final DEBUG:Z

.field private static final IS_TYPE_MRVL:Z

.field private static final LCD_FRAMERATE_LOCK:Ljava/lang/Object;

.field private static final SYSBUS_LOCK:Ljava/lang/Object;

.field static final TAG:Ljava/lang/String; = "CustomFrequencyManagerService"

.field private static actualpkgname:Ljava/lang/String;

.field private static array:[Ljava/lang/String;

.field private static countOfSysBusLock:I

.field private static dexname:Ljava/lang/String;

.field private static dexname2:Ljava/lang/String;

.field private static dexpath:Ljava/lang/String;

.field private static dis:Ljava/io/DataInputStream;

.field private static file:Ljava/io/File;

.field public static mContext:Landroid/content/Context;

.field static mContextStatic:Landroid/content/Context;

.field private static final mDebugDVFSLock:Z

.field private static final mSpew:Z

.field private static newpkgname:Ljava/lang/String;

.field private static prefix:Ljava/lang/String;

.field private static prefix2:Ljava/lang/String;


# instance fields
.field private final MMC_BURST_PATH:Ljava/lang/String;

.field private final MMC_CBURST_MODE_VALUE:I

.field private final MMC_NORMAL_MODE_VALUE:I

.field final PATH_CPU_HOTPLUG:Ljava/lang/String;

.field final PATH_CPU_MAX_LIMIT:Ljava/lang/String;

.field final PATH_CPU_MIN_LIMIT:Ljava/lang/String;

.field final UTF8:Ljava/lang/String;

.field private filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

.field mActivityManager:Landroid/app/IActivityManager;

.field mBootComplete:Z

.field mCpuCorePath:Z

.field private mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

.field private mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

.field private final mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

.field mDisableBusBoost:Z

.field mDisableCpuBoost:Z

.field mDisableGpuBoost:Z

.field private final mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

.field mGpuPath:Z

.field private final mMapPersistentDVFSLock:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

.field mMonitor:Lcom/android/server/ssrm/Monitor;

.field private volatile mPersistentDVFSLocksInfo:I

.field mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

.field mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

.field mScreenOn:Z

.field private mSupportedCPUCore:[I

.field private mSupportedFrequency:[I

.field private mSupportedGPUFrequency:[I

.field private mSupportedLCDFrequency:[I

.field private mSupportedSysBusFrequency:[I

.field mSysBusPath:Z

.field mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

.field mUserPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 63
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    .line 73
    sput-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 75
    sput-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->SYSBUS_LOCK:Ljava/lang/Object;

    .line 85
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->LCD_FRAMERATE_LOCK:Ljava/lang/Object;

    .line 87
    sput v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->countOfSysBusLock:I

    .line 127
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    .line 129
    const-string v1, "mrvl"

    const-string v2, "ro.board.platform"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    .line 150
    const-string v0, "/data/dalvik-cache/data@app@"

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->prefix:Ljava/lang/String;

    .line 152
    const-string v0, "/data/dalvik-cache/mnt@asec@"

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->prefix2:Ljava/lang/String;

    .line 154
    const-string v0, "@classes.dex"

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexname:Ljava/lang/String;

    .line 156
    const-string v0, "@pkg.apk@classes.dex"

    sput-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexname2:Ljava/lang/String;

    .line 1592
    const-string v0, "android_ssrm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1593
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 169
    invoke-direct {p0}, Landroid/os/ICustomFrequencyManager$Stub;-><init>()V

    .line 65
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->UTF8:Ljava/lang/String;

    .line 67
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    .line 69
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    .line 71
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    .line 77
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 79
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 81
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 89
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    .line 91
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 93
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 95
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 97
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 99
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 101
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 105
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-direct {v4, p0, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    .line 107
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 109
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 111
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 113
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 115
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    .line 132
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 134
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 136
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    .line 138
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 140
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 164
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 1191
    const-string v4, "/sys/block/mmcblk0/bkops_en"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_BURST_PATH:Ljava/lang/String;

    .line 1193
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_CBURST_MODE_VALUE:I

    .line 1195
    iput v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->MMC_NORMAL_MODE_VALUE:I

    .line 2250
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 2252
    iput-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 2254
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mScreenOn:Z

    .line 2256
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mUserPresent:Z

    .line 2258
    iput-boolean v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    .line 2260
    new-instance v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2318
    const-string v4, "/sys/devices/system/cpu/cpufreq/sprdemand/cpu_hotplug_disable"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_HOTPLUG:Ljava/lang/String;

    .line 2328
    const-string v4, "/sys/power/cpufreq_max_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MAX_LIMIT:Ljava/lang/String;

    .line 2330
    const-string v4, "/sys/power/cpufreq_min_limit"

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->PATH_CPU_MIN_LIMIT:Ljava/lang/String;

    .line 170
    sput-object p1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    .line 171
    sget-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    sput-object v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContextStatic:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 174
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initFal()V

    .line 175
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysfsNode()V

    .line 176
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->verifyDefaultCondition()V

    .line 177
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedGPUFrequency()V

    .line 178
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedCPUCore()V

    .line 179
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedSysBusFrequency()V

    .line 180
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedFrequency()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->initSupportedLCDFreq()V

    .line 183
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->registerIntentReceiver()V

    .line 185
    const-string v2, "/data/system/ssrm_v2.disable_cpu_boost"

    .line 186
    .local v2, "PATH_TO_DISABLE_CPU_BOOST":Ljava/lang/String;
    const-string v3, "/data/system/ssrm_v2.disable_gpu_boost"

    .line 187
    .local v3, "PATH_TO_DISABLE_GPU_BOOST":Ljava/lang/String;
    const-string v1, "/data/system/ssrm_v2.disable_bus_boost"

    .line 188
    .local v1, "PATH_TO_DISABLE_BUS_BOOST":Ljava/lang/String;
    const-string v0, "/data/system/ssrm_v2.disable_all_boost"

    .line 190
    .local v0, "PATH_TO_DISABLE_ALL_BOOST":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_cpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 193
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_gpu_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 196
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_bus_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 199
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/ssrm_v2.disable_all_boost"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    .line 201
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    .line 202
    iput-boolean v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    .line 205
    :cond_3
    new-instance v4, Lcom/android/server/ssrm/PreMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/PreMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    .line 206
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/PreMonitor;->initialize(Landroid/content/Context;)V

    .line 207
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPreMonitor:Lcom/android/server/ssrm/PreMonitor;

    invoke-virtual {v4}, Lcom/android/server/ssrm/PreMonitor;->run()V

    .line 209
    new-instance v4, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-direct {v4}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    .line 210
    return-void
.end method

.method private static DVFSLockType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 2130
    packed-switch p0, :pswitch_data_0

    .line 2136
    const-string v0, "???"

    :goto_0
    return-object v0

    .line 2132
    :pswitch_0
    const-string v0, "DVFS_MIN_LIMIT"

    goto :goto_0

    .line 2134
    :pswitch_1
    const-string v0, "DVFS_MAX_LIMIT"

    goto :goto_0

    .line 2130
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    return-object v0
.end method

.method private checkSysfsNode()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    .line 243
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    .line 245
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->checkNodeExistence(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    .line 246
    return-void
.end method

.method private initFal()V
    .locals 2

    .prologue
    .line 228
    const-string v0, "Combination"

    sget-object v1, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lcom/android/server/ssrm/QcFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/QcFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0

    .line 232
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MRVL_SYSFS:Z

    if-eqz v0, :cond_2

    .line 233
    new-instance v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/MarvellSysfsFALImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0

    .line 235
    :cond_2
    new-instance v0, Lcom/android/server/ssrm/GenericFalImpl;

    invoke-direct {v0}, Lcom/android/server/ssrm/GenericFalImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    goto :goto_0
.end method

.method private initSupportedCPUCore()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    goto :goto_0
.end method

.method private initSupportedFrequency()V
    .locals 20

    .prologue
    .line 1596
    const-string v17, "CustomFrequencyManagerService"

    const-string v18, "initSupportedFrequency::"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const/4 v7, 0x0

    .line 1599
    .local v7, "buf":Ljava/io/BufferedReader;
    const-string v2, "/sys/power/cpufreq_table"

    .line 1600
    .local v2, "CPU_FREQ_TABLE_PATH":Ljava/lang/String;
    const-string v3, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    .line 1601
    .local v3, "CPU_FREQ_TABLE_PATH_ADONIS":Ljava/lang/String;
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    .line 1602
    .local v4, "CPU_FREQ_TABLE_PATH_MARVELL":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v17, "/sys/power/cpufreq_table"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v5, "a":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v6, "b":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string v17, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1605
    .local v9, "c":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v12, 0x1

    .line 1606
    .local v12, "isCpuFreqTablePathExist":Z
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v13, 0x1

    .line 1607
    .local v13, "isCpuFreqTablePathForAdonisExist":Z
    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v14, 0x1

    .line 1609
    .local v14, "isCpuFreqTablePathForMarvellExist":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1611
    if-eqz v12, :cond_5

    :try_start_0
    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-nez v17, :cond_5

    .line 1612
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/power/cpufreq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .local v8, "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 1619
    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_3
    if-nez v7, :cond_7

    .line 1645
    if-eqz v7, :cond_1

    .line 1646
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1653
    :cond_1
    :goto_4
    return-void

    .line 1605
    .end local v12    # "isCpuFreqTablePathExist":Z
    .end local v13    # "isCpuFreqTablePathForAdonisExist":Z
    .end local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1606
    .restart local v12    # "isCpuFreqTablePathExist":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1607
    .restart local v13    # "isCpuFreqTablePathForAdonisExist":Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 1613
    .restart local v14    # "isCpuFreqTablePathForMarvellExist":Z
    :cond_5
    if-eqz v13, :cond_6

    .line 1614
    :try_start_2
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpufreq/iks-cpufreq/freq_table"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1615
    :cond_6
    if-eqz v14, :cond_0

    .line 1616
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    const-string v18, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7    # "buf":Ljava/io/BufferedReader;
    .restart local v8    # "buf":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "buf":Ljava/io/BufferedReader;
    .restart local v7    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1623
    :cond_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v15

    .line 1624
    .local v15, "line":Ljava/lang/String;
    if-nez v15, :cond_8

    .line 1645
    if-eqz v7, :cond_1

    .line 1646
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 1648
    :catch_0
    move-exception v10

    .line 1649
    .end local v15    # "line":Ljava/lang/String;
    .local v10, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1627
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1628
    .local v16, "strSupportedFreq":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    .line 1630
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_b

    .line 1631
    sget-boolean v17, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v17, :cond_9

    .line 1632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11

    .line 1637
    :goto_7
    const-string v17, "CustomFrequencyManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initSupportedFrequency:: mSupportedFrequency = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v19, v0

    aget v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1635
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    move-object/from16 v17, v0

    aget-object v18, v16, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v17, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 1640
    .end local v11    # "i":I
    .end local v15    # "line":Ljava/lang/String;
    .end local v16    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1641
    .local v10, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1642
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1645
    if-eqz v7, :cond_1

    .line 1646
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 1648
    :catch_2
    move-exception v10

    goto/16 :goto_5

    .line 1644
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 1645
    if-eqz v7, :cond_a

    .line 1646
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1644
    :cond_a
    :goto_8
    throw v17

    .line 1648
    :catch_3
    move-exception v10

    .line 1649
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 1648
    .end local v10    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto/16 :goto_5

    .line 1645
    .restart local v11    # "i":I
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "strSupportedFreq":[Ljava/lang/String;
    :cond_b
    if-eqz v7, :cond_1

    .line 1646
    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_4

    .line 1648
    :catch_5
    move-exception v10

    goto/16 :goto_5
.end method

.method private initSupportedGPUFrequency()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private initSupportedLCDFreq()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    if-eqz v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    .line 292
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x0

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 293
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x1

    const/16 v2, 0x32

    aput v2, v0, v1

    .line 294
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x2

    const/16 v2, 0x33

    aput v2, v0, v1

    .line 295
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    const/4 v1, 0x3

    const/16 v2, 0x3c

    aput v2, v0, v1

    goto :goto_0
.end method

.method private initSupportedSysBusFrequency()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->initSupportedFrequency(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    goto :goto_0
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2141
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2145
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2146
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_0
    return-void
.end method

.method private modifyGPUToValue(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    goto :goto_0
.end method

.method private static native nativeAcquireDVFSLock(II)I
.end method

.method private static native nativeReleaseDVFSLock(I)I
.end method

.method private static native nativecheckForString(Ljava/lang/String;I[B)I
.end method

.method private static onListScrollBoostEvent(Z)V
    .locals 4
    .param p0, "enable"    # Z

    .prologue
    .line 2151
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onListScrollBoostEvent:: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    :try_start_0
    invoke-static {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onListScrollBoostEventForAll(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    :goto_0
    return-void

    .line 2154
    :catch_0
    move-exception v0

    .line 2155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2176
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v4

    .line 2177
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v3, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2178
    .local v2, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherCPUCoreLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 2182
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 2183
    .local v1, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 2181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2185
    .end local v1    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_0
    monitor-exit v4

    .line 2186
    return-void

    .line 2185
    .end local v0    # "i":I
    .end local v2    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private releaseAllLauncherDVFSLocks(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2161
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v4, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getAllDVFSLocks(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2162
    .local v3, "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks : tempLockList.size() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 2166
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 2167
    .local v2, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    iget-object v4, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    iget-object v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2169
    .end local v2    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_0
    monitor-exit v5

    .line 2173
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :goto_1
    return-void

    .line 2169
    .restart local v1    # "i":I
    .restart local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2170
    .end local v1    # "i":I
    .end local v3    # "tempLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;>;"
    :catch_0
    move-exception v0

    .line 2171
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseAllLauncherDVFSLocks:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private revertGPUToDefault()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpuPath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    goto :goto_0
.end method

.method static stringCheckFromPms(Ljava/lang/String;I)I
    .locals 8
    .param p0, "app_path"    # Ljava/lang/String;
    .param p1, "app_hash"    # I

    .prologue
    const/4 v7, 0x1

    .line 2367
    const/4 v4, 0x0

    .line 2368
    .local v4, "rawData":[B
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 2369
    .local v2, "mSavedpriority":I
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2370
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->array:[Ljava/lang/String;

    .line 2371
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->array:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->actualpkgname:Ljava/lang/String;

    .line 2372
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->array:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, "mnt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2373
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->actualpkgname:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexname2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->newpkgname:Ljava/lang/String;

    .line 2374
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->prefix2:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->newpkgname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexpath:Ljava/lang/String;

    .line 2379
    :cond_0
    :goto_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexpath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->file:Ljava/io/File;

    .line 2380
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->file:Ljava/io/File;

    if-eqz v5, :cond_2

    .line 2381
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "dalvik-cache file exists data/app"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 2384
    :try_start_0
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "dalvik-cache file reading started"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    sget-object v7, Lcom/android/server/ssrm/CustomFrequencyManagerService;->file:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dis:Ljava/io/DataInputStream;

    .line 2386
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 2387
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 2388
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "dalvik-cache file reading over"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2396
    :goto_1
    invoke-static {p0, p1, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativecheckForString(Ljava/lang/String;I[B)I

    move-result v3

    .line 2397
    .local v3, "native_result":I
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2398
    return v3

    .line 2375
    .end local v3    # "native_result":I
    :cond_1
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->array:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2376
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->actualpkgname:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->newpkgname:Ljava/lang/String;

    .line 2377
    sget-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->prefix:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->newpkgname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/ssrm/CustomFrequencyManagerService;->dexpath:Ljava/lang/String;

    goto :goto_0

    .line 2389
    :catch_0
    move-exception v1

    .line 2390
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "CustomFrequencyManagerService"

    const-string v6, "Reading exception"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2393
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/ssrm/Unzipper;->unzip(Ljava/io/File;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2394
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_1
.end method

.method private verifyDefaultCondition()V
    .locals 4

    .prologue
    .line 249
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSysBusPath:Z

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCpuCorePath:Z

    if-eqz v1, :cond_1

    .line 263
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_1
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 265
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyDefaultCondition : Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method acquireCpuDvfsLock(II)I
    .locals 5
    .param p1, "lockType"    # I
    .param p2, "freq"    # I

    .prologue
    const/4 v4, 0x1

    .line 2333
    sget-boolean v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeAcquireDVFSLock(II)I

    move-result v0

    .line 2345
    :goto_0
    return v0

    .line 2337
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2338
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_max_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2339
    :cond_2
    if-ne p1, v4, :cond_1

    .line 2340
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/power/cpufreq_min_limit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_SPREAD_KANAS:Z

    if-eqz v0, :cond_1

    .line 2342
    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setCpuHotplugDisable(Z)V

    goto :goto_1
.end method

.method public acquireDVFSLock(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x7

    .line 1867
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 1868
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "Boost will be skipped until boot complete."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1872
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1873
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1875
    .local v5, "pid":I
    if-eqz p4, :cond_2

    const-string v0, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1876
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1883
    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1884
    :cond_3
    if-ne p1, v1, :cond_0

    .line 1888
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableCpuBoost:Z

    if-nez v0, :cond_0

    .line 1892
    const-string v0, "POWER_SAVING_MODE@1"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eq p1, v1, :cond_0

    .line 1897
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1899
    .local v7, "ident":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 1900
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 1901
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1903
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1901
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1903
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "lock"    # Landroid/os/IBinder;
    .param p4, "uid"    # I
    .param p5, "pid"    # I
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1909
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, p3, p6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getIndex(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v8

    .line 1915
    .local v8, "index":I
    if-gez v8, :cond_4

    .line 1916
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1917
    .local v0, "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1918
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Before Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1921
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->addLock(Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;)V

    .line 1922
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1923
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "After Adding ---------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1925
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Creating new Lock type & adding to List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_1
    :goto_0
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 1941
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-ge v1, v2, :cond_3

    .line 1943
    :cond_2
    const/4 v1, 0x2

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1944
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1953
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    .line 1954
    return-void

    .line 1930
    .end local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 1932
    .restart local v0    # "newDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1933
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  tag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1946
    :cond_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1947
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    if-le v1, v2, :cond_3

    .line 1949
    :cond_6
    const/4 v1, 0x1

    iget v2, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 1950
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public acquirePersistentDVFSLock(IIILjava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "callingId"    # I
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 2061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2062
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2067
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2069
    .local v7, "ident":J
    :try_start_0
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2070
    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v0, p3

    if-nez v0, :cond_0

    .line 2073
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 2074
    .local v3, "token":Landroid/os/IBinder;
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  frequency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  callingId : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p4

    .line 2081
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireDVFSLockLocked(IILandroid/os/IBinder;IILjava/lang/String;)V

    .line 2082
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    or-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2088
    .end local v3    # "token":Landroid/os/IBinder;
    :goto_0
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2090
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2092
    return-void

    .line 2084
    :cond_0
    :try_start_2
    const-string v0, "CustomFrequencyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquirePersistentDVFSLock : this callingId already acquired PersistentDVFSLock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2088
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2090
    :catchall_1
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public checkCPUBoostRange(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 343
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 348
    const/4 v1, 0x1

    .line 354
    :goto_1
    return v1

    .line 346
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 352
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCPUBoostRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkCPUCoreRange(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 365
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 366
    const/4 v1, 0x1

    .line 369
    :goto_1
    return v1

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public checkFrameRateRange(I)Z
    .locals 1
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public checkGPUFrequencyRange(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 314
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 316
    const/4 v1, 0x1

    goto :goto_0

    .line 314
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public checkSysBusFrequencyRange(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 325
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    if-eqz v1, :cond_2

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 330
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 331
    const/4 v1, 0x1

    .line 338
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 329
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 336
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkSysBusFrequencyRange : NOT in RANGE!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2237
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump CustomFrequencyManagerService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2244
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v0, :cond_0

    .line 2245
    const-string v0, "SSRM Service (dumpsys CustomFrequencyManagerService)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMonitor:Lcom/android/server/ssrm/Monitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ssrm/Monitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getDVFSLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    .locals 1

    .prologue
    .line 1857
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemainUsageTime(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getStandbyTimeInPowerSavingMode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getStandbyTimeInUltraPowerSavingMode()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mRemainingStandbyTimeMonitor:Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;

    invoke-virtual {v0}, Lcom/android/server/ssrm/RemainingStandbyTimeMonitor;->getStandbyTimeInUltraPowerSavingMode()I

    move-result v0

    return v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedCPUCore:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedFrequency:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public getSupportedLCDFrequency()[I
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedLCDFrequency:[I

    return-object v0
.end method

.method public getSupportedSysBusFrequency()[I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSupportedSysBusFrequency:[I

    return-object v0
.end method

.method public mpdUpdate(I)V
    .locals 11
    .param p1, "mpEnable"    # I

    .prologue
    .line 928
    const/4 v9, 0x1

    if-ne p1, v9, :cond_3

    .line 929
    const-string v8, "enable_mpd"

    .line 934
    .local v8, "str":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    .line 935
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 937
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 940
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 941
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 942
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 943
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 952
    if-eqz v7, :cond_0

    .line 953
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 955
    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 956
    if-eqz v6, :cond_1

    .line 957
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v5, v6

    .line 963
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_2
    :goto_2
    return-void

    .line 931
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "str":Ljava/lang/String;
    :cond_3
    const-string v8, "disable_mpd"

    .restart local v8    # "str":Ljava/lang/String;
    goto :goto_0

    .line 945
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 946
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 952
    if-eqz v7, :cond_4

    .line 953
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 955
    :cond_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 956
    if-eqz v5, :cond_2

    .line 957
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 959
    :catch_1
    move-exception v4

    .line 960
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 947
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 949
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 952
    if-eqz v7, :cond_5

    .line 953
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 955
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 956
    if-eqz v5, :cond_2

    .line 957
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 959
    :catch_3
    move-exception v4

    goto :goto_4

    .line 951
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 952
    :goto_6
    if-eqz v7, :cond_6

    .line 953
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 955
    :cond_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 956
    if-eqz v5, :cond_7

    .line 957
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 951
    :cond_7
    :goto_7
    throw v9

    .line 959
    :catch_4
    move-exception v4

    .line 960
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 959
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_5
    move-exception v4

    .line 960
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 959
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v4

    goto :goto_4

    :catch_7
    move-exception v4

    goto :goto_4

    .line 951
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_6

    .line 947
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_5

    .line 945
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_3
.end method

.method public notifyWmAniationState(JZ)V
    .locals 7
    .param p1, "currentTime"    # J
    .param p3, "isStart"    # Z

    .prologue
    .line 2190
    iget-boolean v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v4, :cond_0

    .line 2208
    :goto_0
    return-void

    .line 2198
    :cond_0
    :try_start_0
    const-class v4, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstance(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v2

    .line 2199
    .local v2, "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    move-object v0, v2

    check-cast v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    move-object v3, v0

    .line 2200
    .local v3, "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    if-eqz p3, :cond_1

    .line 2201
    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onAnimationStarted(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2205
    .end local v2    # "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    .end local v3    # "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    :catch_0
    move-exception v1

    .line 2206
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyWmAniationState:: e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2203
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "instance1":Lcom/android/server/ssrm/fgapps/FgAppListener;
    .restart local v3    # "instance2":Lcom/android/server/ssrm/fgapps/mDNLeOnOff;
    :cond_1
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;->onAnimationFinished(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method registerIntentReceiver()V
    .locals 3

    .prologue
    .line 2305
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2316
    :goto_0
    return-void

    .line 2309
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2310
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2311
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2312
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2313
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2314
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2315
    sget-object v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mSystemIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v1

    .line 1096
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1097
    monitor-exit v1

    .line 1098
    return-void

    .line 1097
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method releaseCPUCoreLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1101
    const/4 v1, 0x0

    .line 1103
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1104
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core before removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1107
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 1108
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1109
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "CPU Core after removing----------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1112
    :cond_1
    if-nez v1, :cond_5

    .line 1113
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1114
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, request not found, returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :cond_2
    if-eqz v1, :cond_4

    .line 1181
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1182
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1183
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1185
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 1189
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    return-void

    .line 1119
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_b

    .line 1120
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 1121
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 1122
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1127
    .local v2, "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_9

    .line 1128
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 1129
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1135
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_4

    .line 1181
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1182
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1183
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 1137
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    :try_start_2
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 1138
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_a
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1142
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1172
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 1173
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: FileNotFoundException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1180
    if-eqz v1, :cond_4

    .line 1181
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1182
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1183
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1146
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_b
    :try_start_4
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 1147
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 1148
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, Current CPU Core request has asked for release"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 1153
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_e

    .line 1154
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 1155
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore, there is a pending request in list, modifying with value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_d
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    iget v6, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v5, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1161
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1175
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseCPUCore: IOException :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1180
    if-eqz v1, :cond_4

    .line 1181
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1182
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 1183
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 1163
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_e
    :try_start_6
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 1164
    const-string v4, "CustomFrequencyManagerService"

    const-string v5, "releaseCPUCore, No Pending requests, reverting CPU Core to default"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 1168
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1180
    .end local v2    # "nextCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_11

    .line 1181
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1182
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_10

    .line 1183
    invoke-interface {v3, v1, v7}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1185
    :cond_10
    const/4 v1, 0x0

    .line 1180
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_11
    throw v4
.end method

.method releaseCpuDvfsLock(I)I
    .locals 4
    .param p1, "lockType"    # I

    .prologue
    const/4 v0, 0x0

    .line 2349
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->IS_TYPE_MRVL:Z

    if-eqz v1, :cond_1

    .line 2350
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMarvallFALImpl:Lcom/android/server/ssrm/MarvellFALImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/MarvellFALImpl;->nativeReleaseDVFSLock(I)I

    move-result v0

    .line 2361
    :cond_0
    :goto_0
    return v0

    .line 2353
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2354
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "/sys/power/cpufreq_max_limit"

    const-string v3, "-1"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2355
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2356
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "/sys/power/cpufreq_min_limit"

    const-string v3, "-1"

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2357
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_SPREAD_KANAS:Z

    if-eqz v1, :cond_0

    .line 2358
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->setCpuHotplugDisable(Z)V

    goto :goto_0
.end method

.method public releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1958
    const-string v2, "jf"

    sget-object v3, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "exynos4"

    sget-object v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 1960
    const-string v2, "ACTIVITY_RESUME_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1961
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherDVFSLocks(Ljava/lang/String;)V

    .line 1962
    const-string v2, "LAUNCHER_APP_BOOSTER"

    invoke-direct {p0, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseAllLauncherCPUCoreLocks(Ljava/lang/String;)V

    .line 1968
    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "LIST_SCROLL_BOOSTER"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1969
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onListScrollBoostEvent(Z)V

    .line 1975
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1977
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1978
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1979
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1981
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    return-void

    .line 1979
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1981
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1986
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1987
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "Before Removing ---------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1990
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->removeLock(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v2

    .line 1991
    .local v2, "removedDVFSwl":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1992
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "After Removing ----------"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->dumpDVFSLockList()V

    .line 1995
    :cond_1
    if-nez v2, :cond_2

    .line 2057
    :goto_0
    return-void

    .line 1998
    :cond_2
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : Getting Lock type frm List : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    invoke-static {v5}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DVFSLockType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  frequency : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 2005
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    .line 2006
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMinOfMaxLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v1

    .line 2008
    .local v1, "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v1, :cond_5

    .line 2011
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2012
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_3
    iget v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v7, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 2018
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    .line 2056
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_4
    :goto_1
    iget-object v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->binder:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_0

    .line 2021
    .restart local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_5
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 2022
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MAX_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 2026
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMaxLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    .line 2029
    .end local v1    # "nextMinOfMaxLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    :cond_7
    iget v3, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    .line 2030
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    if-ne v2, v3, :cond_4

    .line 2031
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;->getMaxOfMinLock()Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    move-result-object v0

    .line 2033
    .local v0, "nextMaxOfMinLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
    if-eqz v0, :cond_9

    .line 2035
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 2036
    const-string v3, "CustomFrequencyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseDVFSLockLocked : remain FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT : next : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_8
    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->frequency:I

    invoke-virtual {p0, v6, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->acquireCpuDvfsLock(II)I

    .line 2042
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1

    .line 2045
    :cond_9
    sget-boolean v3, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 2046
    const-string v3, "CustomFrequencyManagerService"

    const-string v4, "releaseDVFSLockLocked : all FREQUENCY_CPU_TYPE_BOOST_MIN_LIMIT are released "

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCpuDvfsLock(I)I

    .line 2050
    iput-object v8, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentDVFSMinLock:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;

    goto :goto_1
.end method

.method public releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 498
    const/4 v1, 0x0

    .line 500
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 501
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 504
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 505
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 506
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "GPU after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 509
    :cond_1
    if-nez v1, :cond_5

    .line 510
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 511
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 577
    :cond_2
    if-eqz v1, :cond_4

    .line 578
    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 579
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 580
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 582
    :cond_3
    const/4 v1, 0x0

    .line 513
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :goto_0
    return-void

    .line 515
    :cond_5
    const/16 v4, 0x9

    if-ne p1, v4, :cond_d

    .line 516
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 517
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 518
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU Max request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 522
    .local v2, "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_b

    .line 523
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 524
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU_MAX, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 529
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 531
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 578
    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 579
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 580
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 582
    :cond_9
    :goto_2
    const/4 v1, 0x0

    .line 586
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 533
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 534
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 538
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 569
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: FileNotFoundException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 577
    if-eqz v1, :cond_a

    .line 578
    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 579
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 580
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 542
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d
    const/4 v4, 0x1

    if-ne p1, v4, :cond_8

    .line 543
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 544
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 545
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, Current GPU request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 549
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_10

    .line 550
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 551
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPU, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 556
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 558
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 572
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseGPULock:: IOException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 577
    if-eqz v1, :cond_a

    .line 578
    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 579
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 580
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 560
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    .line 561
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseGPU, No Pending requests, reverting GPU to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 565
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 577
    .end local v2    # "nextGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    .line 578
    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 579
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_12

    .line 580
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 582
    :cond_12
    const/4 v1, 0x0

    .line 577
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public releasePersistentDVFSLock(ILjava/lang/String;)V
    .locals 7
    .param p1, "callingId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2103
    .local v0, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDVFSLocks:Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLockList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2104
    :try_start_1
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2105
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mMapPersistentDVFSLock:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 2106
    .local v2, "lock":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 2107
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : prev mPersistentDVFSLocksInfo : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  callingId : 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-virtual {p0, v2, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLockLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2112
    iget v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    xor-int/lit8 v5, p1, -0x1

    and-int/2addr v3, v5

    iput v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPersistentDVFSLocksInfo:I

    .line 2123
    .end local v2    # "lock":Landroid/os/IBinder;
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2127
    return-void

    .line 2114
    .restart local v2    # "lock":Landroid/os/IBinder;
    :cond_0
    :try_start_2
    const-string v3, "CustomFrequencyManagerService"

    const-string v5, "releasePersistentDVFSLock : there is no persistentDVFSLock to release"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WakeLock under-locked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2123
    .end local v2    # "lock":Landroid/os/IBinder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2125
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2119
    :cond_1
    :try_start_4
    const-string v3, "CustomFrequencyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releasePersistentDVFSLock : this callingId already released PersistentDVFSLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 678
    iget-object v5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v5

    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 682
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus before removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 685
    :cond_0
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4, p2, p1, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 686
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 687
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "System Bus after removing----------"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 690
    :cond_1
    if-nez v1, :cond_5

    .line 691
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 692
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, request not found, returning null"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 757
    :cond_2
    if-eqz v1, :cond_4

    .line 758
    :try_start_1
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 759
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_3

    .line 760
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 762
    :cond_3
    const/4 v1, 0x0

    .line 694
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    :goto_0
    return-void

    .line 697
    :cond_5
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d

    .line 698
    :try_start_2
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 699
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 700
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_6
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 704
    .local v2, "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_b

    .line 705
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 706
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 712
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 758
    :try_start_3
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 759
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 760
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 762
    :cond_9
    :goto_2
    const/4 v1, 0x0

    .line 766
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_a
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 714
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_b
    :try_start_4
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 715
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Min to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_c
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 719
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 749
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: FileNotFoundException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 757
    if-eqz v1, :cond_a

    .line 758
    :try_start_6
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 759
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 760
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 723
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_d
    :try_start_7
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v1, v4, :cond_8

    .line 724
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_e

    .line 725
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, Current Sys Bus request has asked for release"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_e
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v2

    .line 730
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v2, :cond_10

    .line 731
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_f

    .line 732
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus, there is a pending request in list, modifying with value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_f
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    iget v7, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v4, v6, v7}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 738
    iput-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 752
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    const-string v4, "CustomFrequencyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseSysBus: IOException :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 757
    if-eqz v1, :cond_a

    .line 758
    :try_start_9
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 759
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_9

    .line 760
    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 740
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    .restart local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_10
    :try_start_a
    sget-boolean v4, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v4, :cond_11

    .line 741
    const-string v4, "CustomFrequencyManagerService"

    const-string v6, "releaseSysBus, No Pending requests, reverting System Bus Max to default"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_11
    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 745
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 757
    .end local v2    # "nextSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_13

    .line 758
    :try_start_b
    iget-object v3, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 759
    .restart local v3    # "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_12

    .line 760
    const/4 v6, 0x0

    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 762
    :cond_12
    const/4 v1, 0x0

    .line 757
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_13
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public requestCPUCore(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1008
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-nez v1, :cond_1

    .line 1009
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "Boost will be skipped until boot complete."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/SSRMUtil;->isStabilityTestCondition()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1018
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1020
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1021
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Core # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_2
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 1026
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkCPUCoreRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_e

    .line 1028
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 1030
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 1031
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_3
    if-gez v9, :cond_a

    .line 1034
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1036
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 1037
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1040
    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 1041
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1042
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "CPU Core after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 1045
    :cond_5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1046
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_6
    :goto_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 1056
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_9

    .line 1058
    :cond_7
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 1059
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_8
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x8

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1063
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_9
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1049
    .restart local v9    # "index":I
    :cond_a
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1050
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1051
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1076
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 1077
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1066
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_b
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_9

    .line 1068
    :cond_c
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 1069
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestCPUCore, Going tochange the CPU Core value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_d
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/16 v2, 0x9

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 1073
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentCPUCoreMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1079
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 1080
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1084
    .end local v8    # "e":Ljava/io/IOException;
    :cond_e
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCPUCore:: CPUCore value is not in the permitted range. CoreNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public requestCPUUpdate(II)V
    .locals 12
    .param p1, "cpu"    # I
    .param p2, "enable"    # I

    .prologue
    .line 891
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "core "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 892
    .local v8, "send":Ljava/lang/String;
    const-string v9, "CustomFrequencyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestCPUUpdate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v5, 0x0

    .line 895
    .local v5, "hotplugSocket":Landroid/net/LocalSocket;
    const/4 v7, 0x0

    .line 897
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v6, Landroid/net/LocalSocket;

    invoke-direct {v6}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 898
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .local v6, "hotplugSocket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "mpdecision"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 900
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v6, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 901
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 902
    const-string v9, "UTF8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 903
    .local v1, "byteString":[B
    invoke-virtual {v7, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 911
    if-eqz v7, :cond_0

    .line 912
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 914
    :cond_0
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 915
    if-eqz v6, :cond_1

    .line 916
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v5, v6

    .line 923
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :cond_2
    :goto_1
    return-void

    .line 904
    :catch_0
    move-exception v3

    .line 905
    .local v3, "e1":Ljava/net/UnknownHostException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 911
    if-eqz v7, :cond_3

    .line 912
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 914
    :cond_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 915
    if-eqz v5, :cond_2

    .line 916
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 918
    :catch_1
    move-exception v4

    .line 919
    .end local v3    # "e1":Ljava/net/UnknownHostException;
    .local v4, "ex":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 906
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 908
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 911
    if-eqz v7, :cond_4

    .line 912
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 914
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 915
    if-eqz v5, :cond_2

    .line 916
    :try_start_8
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 918
    :catch_3
    move-exception v4

    goto :goto_3

    .line 910
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 911
    :goto_5
    if-eqz v7, :cond_5

    .line 912
    :try_start_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 914
    :cond_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 915
    if-eqz v5, :cond_6

    .line 916
    invoke-virtual {v5}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 910
    :cond_6
    :goto_6
    throw v9

    .line 918
    :catch_4
    move-exception v4

    .line 919
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 918
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "byteString":[B
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_5
    move-exception v4

    .line 919
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 918
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "byteString":[B
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_6
    move-exception v4

    goto :goto_3

    :catch_7
    move-exception v4

    goto :goto_3

    .line 910
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_5

    .line 906
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_8
    move-exception v2

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_4

    .line 904
    .end local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "hotplugSocket":Landroid/net/LocalSocket;
    .restart local v5    # "hotplugSocket":Landroid/net/LocalSocket;
    goto :goto_2
.end method

.method public requestGPU(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 405
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 406
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 408
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 415
    :cond_1
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    .line 493
    :cond_2
    :goto_0
    return-void

    .line 419
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableGpuBoost:Z

    if-nez v1, :cond_2

    .line 423
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 424
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkGPUFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_d

    .line 426
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 429
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 430
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_4
    if-gez v9, :cond_9

    .line 433
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 435
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 436
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 439
    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 440
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 441
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "GPU after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 444
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 445
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_7
    :goto_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    .line 455
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_a

    .line 456
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 458
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 448
    .restart local v9    # "index":I
    :cond_9
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 449
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 450
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestGPU, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 478
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 479
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: FileNotFoundException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 459
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_a
    :try_start_5
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_8

    .line 460
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 461
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x4

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 463
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 481
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 482
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: IOException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 465
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 466
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-nez v1, :cond_c

    .line 467
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 469
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    goto :goto_2

    .line 470
    :cond_c
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_8

    .line 471
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/server/ssrm/SysFileAbstraction;->revertToDefault(I)Z

    .line 472
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x3

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 474
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentGPUMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 486
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_d
    :try_start_8
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestGPU:: GPU Frequency value is not in the permitted range. frequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2
.end method

.method public requestLCDFrameRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "fpsLevel"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 771
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 772
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 774
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 775
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate:: fpsLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_0
    const/4 v2, 0x3

    .line 781
    .local v2, "type":I
    iget-object v9, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v9

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p2, v2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v8

    .line 783
    .local v8, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 784
    const-string v1, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLCDFrameRate, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_1
    const/4 v0, 0x0

    .line 788
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-gez v8, :cond_8

    .line 789
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 790
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 791
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS before adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 794
    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 795
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 796
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "Dynamic FPS after adding----------"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 799
    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 800
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, index not found, new req added in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v3, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v3, :cond_7

    .line 811
    :cond_5
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 812
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, Going to change max FPS."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_6
    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v1}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 815
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 817
    :cond_7
    monitor-exit v9

    .line 818
    return-void

    .line 803
    :cond_8
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v8}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 804
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 805
    const-string v1, "CustomFrequencyManagerService"

    const-string v3, "requestLCDFrameRate, request already in list"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 817
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestMMCBurstRate(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "burstRate"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1199
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "128"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method public requestMpParameterUpdate(Ljava/lang/String;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 967
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 968
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update the Nw paramter in the MPDecision command : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_0
    if-nez p1, :cond_2

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 975
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    .line 976
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 979
    :cond_3
    move-object v5, p1

    .line 981
    .local v5, "send":Ljava/lang/String;
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    .line 982
    .local v2, "localSocket":Landroid/net/LocalSocket;
    const/4 v4, 0x0

    .line 984
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v6, "/dev/socket/mpdecision"

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 986
    .local v3, "localSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 987
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 988
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    if-eqz v4, :cond_4

    .line 995
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 997
    :cond_4
    if-eqz v2, :cond_1

    .line 998
    :try_start_2
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v1

    .line 1001
    .end local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 989
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in requestMpParameterUpdate :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 994
    if-eqz v4, :cond_5

    .line 995
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 997
    :cond_5
    if-eqz v2, :cond_1

    .line 998
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1000
    :catch_2
    move-exception v1

    goto :goto_1

    .line 993
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 994
    if-eqz v4, :cond_6

    .line 995
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 997
    :cond_6
    if-eqz v2, :cond_7

    .line 998
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 993
    :cond_7
    :goto_2
    throw v6

    .line 1000
    :catch_3
    move-exception v1

    .line 1001
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1000
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "localSocketAddress":Landroid/net/LocalSocketAddress;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public requestSysBus(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "frequency"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 592
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 594
    .local v7, "pid":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 595
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Frequency # = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 601
    :cond_1
    const/16 v1, 0xb

    if-eq p1, v1, :cond_3

    .line 674
    :cond_2
    :goto_0
    return-void

    .line 605
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mDisableBusBoost:Z

    if-nez v1, :cond_2

    .line 609
    iget-object v10, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v10

    .line 610
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->checkSysBusFrequencyRange(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_f

    .line 612
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, p3, p1, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v9

    .line 614
    .local v9, "index":I
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 615
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    if-gez v9, :cond_b

    .line 618
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 620
    .local v0, "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 621
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus before adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 624
    :cond_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V

    .line 625
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 626
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "System Bus after adding----------"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 629
    :cond_6
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 630
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, index not found, new req added in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_7
    :goto_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_c

    .line 640
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-le v1, v2, :cond_a

    .line 642
    :cond_8
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 643
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Min value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_9
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x5

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 649
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMinRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :cond_a
    :goto_2
    :try_start_2
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 633
    .restart local v9    # "index":I
    :cond_b
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 634
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 635
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, request already in list"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 662
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_0
    move-exception v8

    .line 663
    .local v8, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: FileNotFoundException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 652
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .restart local v9    # "index":I
    :cond_c
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    if-ge v1, v2, :cond_a

    .line 654
    :cond_d
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 655
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "requestSysBus, Going to change the Bus Max value"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_e
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->filePtr:Lcom/android/server/ssrm/SysFileAbstraction;

    const/4 v2, 0x6

    iget v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ssrm/SysFileAbstraction;->modifyToValues(II)Z

    .line 659
    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentSysBusMaxRequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 665
    .end local v0    # "newFreqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .end local v9    # "index":I
    :catch_1
    move-exception v8

    .line 666
    .local v8, "e":Ljava/io/IOException;
    :try_start_6
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSysBus:: IOException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 670
    .end local v8    # "e":Ljava/io/IOException;
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "requestSysBus value is not in the permitted range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public restoreLCDFrameRate(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 823
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 825
    .local v2, "pid":I
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 826
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreLCDFrameRate:: package = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_0
    const/4 v4, 0x3

    .line 832
    .local v4, "type":I
    iget-object v7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    monitor-enter v7

    .line 833
    const/4 v0, 0x0

    .line 835
    .local v0, "freqRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_start_0
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 836
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS before removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 839
    :cond_1
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6, p1, v4, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v0

    .line 840
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 841
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "Dynamic FPS after removing----------"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->dumpFrequencyList()V

    .line 844
    :cond_2
    if-nez v0, :cond_4

    .line 845
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 846
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, request not found, returning null"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_3
    monitor-exit v7

    .line 886
    :goto_0
    return-void

    .line 851
    :cond_4
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    if-ne v0, v6, :cond_7

    .line 852
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 853
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, Current Sys Bus request has asked for release"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_5
    iget-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    invoke-virtual {v6}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    move-result-object v1

    .line 858
    .local v1, "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v1, :cond_9

    .line 859
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 860
    const-string v6, "CustomFrequencyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreLCDFrameRate, there is a pending request in list, modifying with value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_6
    iget v6, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 865
    iput-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 877
    .end local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 878
    iget-object v3, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 879
    .local v3, "tempBinder":Landroid/os/IBinder;
    if-eqz v3, :cond_8

    .line 880
    const/4 v6, 0x0

    invoke-interface {v3, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 885
    .end local v3    # "tempBinder":Landroid/os/IBinder;
    :cond_8
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 867
    .restart local v1    # "nextMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_9
    const/16 v6, 0x63

    :try_start_1
    invoke-static {v6}, Lcom/android/server/ssrm/Limiter;->setDynamicFpsLevel(I)V

    .line 868
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 869
    const-string v6, "CustomFrequencyManagerService"

    const-string v8, "restoreLCDFrameRate, No Pending requests, reverting System Bus Max to default"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_a
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCurrentFpsMaxFrequest:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public restoreMMCBurstRate(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1204
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/block/mmcblk0/bkops_en"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public reviewPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2403
    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mBootComplete:Z

    if-eqz v1, :cond_0

    .line 2404
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2405
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2407
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    .line 2409
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2223
    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 2224
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 2233
    :goto_0
    return-void

    .line 2228
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2229
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2230
    new-instance v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;

    invoke-direct {v1, p1, p2}, Lcom/android/server/ssrm/CustomFrequencyManagerService$CommandParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2232
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method setCpuHotplugDisable(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 2321
    if-eqz p1, :cond_0

    .line 2322
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/devices/system/cpu/cpufreq/sprdemand/cpu_hotplug_disable"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    :goto_0
    return-void

    .line 2324
    :cond_0
    const-string v0, "CustomFrequencyManagerService"

    const-string v1, "/sys/devices/system/cpu/cpufreq/sprdemand/cpu_hotplug_disable"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
