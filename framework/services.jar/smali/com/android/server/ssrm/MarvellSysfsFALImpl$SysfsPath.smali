.class public Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;
.super Ljava/lang/Object;
.source "MarvellSysfsFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/MarvellSysfsFALImpl;
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

.field public CPU_CORE_MAX_PATH:Ljava/lang/String;

.field public CPU_CORE_MIN_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public CPU_DEFAULT_CORE:I

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;)V
    .locals 4
    .param p1, "mChipVendor"    # Lcom/android/server/ssrm/MarvellSysfsFALImpl$ChipVendor;
    .param p2, "mPlatformType"    # Lcom/android/server/ssrm/MarvellSysfsFALImpl$PlatformType;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 78
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 82
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 90
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 98
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 100
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 103
    sget-object v0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$1;->$SwitchMap$com$android$server$ssrm$MarvellSysfsFALImpl$PlatformType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 106
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 107
    const-string v0, "/sys/devices/platform/galcore/gpu/gpu0/gpufreq/scaling_available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 108
    const v0, 0x26160

    iput v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 109
    const v0, 0x98580

    iput v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 111
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 115
    iput v2, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 116
    const-string v0, "/sys/devices/platform/soc.2/devfreq-ddr/ddr_min"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 117
    const-string v0, "/sys/devices/platform/soc.2/devfreq-ddr/ddr_max"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 118
    const-string v0, "/sys/class/devfreq/devfreq-ddr/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 119
    iput v3, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 120
    iput v3, p0, Lcom/android/server/ssrm/MarvellSysfsFALImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
