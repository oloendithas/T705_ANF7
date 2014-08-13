.class public Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/GenericFalImpl;
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

.field public CPU_MAX_DEFAULT_CORE:I

.field public CPU_MIN_DEFAULT_CORE:I

.field public GPU_MAX_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_DEFAULT_FREQUENCY:I

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V
    .locals 3
    .param p1, "mChipVendor"    # Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    .param p2, "mPlatformType"    # Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 110
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 112
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 116
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 124
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 126
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 134
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 136
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 139
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl$1;->$SwitchMap$com$android$server$ssrm$GenericFalImpl$PlatformType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 141
    :pswitch_0
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 142
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 143
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 144
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 145
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 146
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 148
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 152
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 153
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 154
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 155
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 156
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 157
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 158
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 161
    :pswitch_1
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 162
    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 163
    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 164
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 165
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 167
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 168
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 171
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 172
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 173
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 174
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 175
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 176
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 177
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 180
    :pswitch_2
    const-string v0, "/sys/devices/11800000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 181
    const-string v0, "/sys/devices/11800000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 182
    const-string v0, "/sys/devices/11800000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 183
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 184
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 186
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 190
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 191
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 192
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 193
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 194
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 195
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 196
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 199
    :pswitch_3
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 200
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 201
    const-string v0, "/sys/devices/14ac0000.mali/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 202
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 203
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 209
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 210
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 211
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 212
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 213
    const-string v0, "/sys/devices/platform/exynos5-devfreq-mif/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 214
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 215
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 218
    :pswitch_4
    const-string v0, "/sys/devices/platform/mali.0/dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 219
    const-string v0, "/sys/devices/platform/mali.0/dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 220
    const-string v0, "/sys/devices/platform/mali.0/dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 221
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 222
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 224
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 226
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 228
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 229
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 230
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 231
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 232
    const-string v0, "/sys/class/devfreq/exynos5-devfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 233
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 234
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 237
    :pswitch_5
    const-string v0, "/sys/power/gpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 239
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 241
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 242
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 243
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 245
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 246
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 247
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 248
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/cpucore_table"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 249
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 250
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 251
    const-string v0, "/sys/devices/system/cpu/busfreq/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 254
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 255
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 258
    :pswitch_6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 259
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 261
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 262
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 264
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 268
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 269
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 270
    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 271
    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 272
    const-string v0, "/sys/class/devfreq/exynos4270-busfreq-mif/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 273
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 274
    const v0, 0x61a80

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 277
    :pswitch_7
    const-string v0, "/sys/module/mali/parameters/gpufreq_min_limit"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 278
    const-string v0, "/sys/module/mali/parameters/gpufreq_max_limit"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 279
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 280
    const v0, 0x14d55

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 282
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 283
    iput v2, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 284
    const-string v0, "/sys/devices/system/cpu/cpufreq/sprdemand/cpu_num_min_limit"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 285
    const-string v0, "/sys/devices/system/cpu/cpufreq/sprdemand/cpu_num_limit"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 286
    const-string v0, "/sys/devices/system/cpu/kernel_max"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 288
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 289
    const-string v0, "/sys/devices/platform/scxx30-dmcfreq.0/devfreq/scxx30-dmcfreq.0/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 290
    const-string v0, "/sys/devices/platform/scxx30-dmcfreq.0/devfreq/scxx30-dmcfreq.0/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 291
    const-string v0, "/sys/devices/platform/scxx30-dmcfreq.0/devfreq/scxx30-dmcfreq.0/available_frequencies"

    iput-object v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 292
    const v0, 0x30d40

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 293
    const v0, 0x81e20

    iput v0, p0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
