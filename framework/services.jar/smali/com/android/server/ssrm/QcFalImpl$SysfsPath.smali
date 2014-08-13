.class public Lcom/android/server/ssrm/QcFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "QcFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/QcFalImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsPath"
.end annotation


# instance fields
.field public BUS_MAX_DEFAULT_FREQUENCY:I

.field public BUS_MAX_PATH:Ljava/lang/String;

.field public BUS_MIN_DEFAULT_FREQUENCY:I

.field public BUS_MIN_PATH:Ljava/lang/String;

.field public BUS_TABLE_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V
    .locals 2
    .param p1, "mPlatformType"    # Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 74
    iput v1, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 82
    const/16 v0, 0x23c

    iput v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 84
    const/16 v0, 0x1bbe

    iput v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 87
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl$1;->$SwitchMap$com$android$server$ssrm$QcFalImpl$PlatformType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "/sys/class/devfreq/qcom,cpubw.43/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 103
    const-string v0, "/sys/class/devfreq/qcom,cpubw.43/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 104
    const-string v0, "/sys/class/devfreq/qcom,cpubw.43/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 110
    :cond_0
    :goto_1
    return-void

    .line 93
    :pswitch_0
    const-string v0, "/sys/class/kgsl/kgsl-3d0/min_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 94
    const-string v0, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 95
    const-string v0, "/sys/class/kgsl/kgsl-3d0/gpu_available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 96
    const-string v0, "/sys/devices/system/cpu/kernel_max"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_TF:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "/sys/class/devfreq/qcom,cpubw.28/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 107
    const-string v0, "/sys/class/devfreq/qcom,cpubw.28/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 108
    const-string v0, "/sys/class/devfreq/qcom,cpubw.28/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    goto :goto_1

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
