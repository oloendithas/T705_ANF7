.class public Lcom/android/server/ssrm/GenericFalImpl;
.super Ljava/lang/Object;
.source "GenericFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/GenericFalImpl$1;,
        Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/GenericFalImpl$PlatformType;,
        Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;
    }
.end annotation


# static fields
.field private static final ADONIS_GPU_TABLE:[I

.field private static final DEBUG:Z

.field private static final EXYNOS4_GPU_TABLE:[I

.field private static final HW_VENDOR:Ljava/lang/String;

.field private static final PEGA_BUS_TABLE:[I

.field private static final PEGA_PRIME_BUS_TABLE:[I

.field private static final SC8830_GPU_TABLE:[I

.field private static SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath; = null

.field private static final TAG:Ljava/lang/String; = "SSRMv2:GenericFalImpl"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field public static mApeOppPath:Z

.field public static mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

.field public static mDdrOppPath:Z

.field public static mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 32
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    .line 36
    sget-object v0, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    .line 301
    sput-boolean v2, Lcom/android/server/ssrm/GenericFalImpl;->mDdrOppPath:Z

    .line 303
    sput-boolean v2, Lcom/android/server/ssrm/GenericFalImpl;->mApeOppPath:Z

    .line 510
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    .line 514
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    .line 518
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    .line 522
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    .line 526
    new-array v0, v3, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SC8830_GPU_TABLE:[I

    return-void

    .line 510
    nop

    :array_0
    .array-data 4
        0x214
        0x1e0
        0x15e
        0x10a
        0xb1
    .end array-data

    .line 514
    :array_1
    .array-data 4
        0x3
        0x2
        0x1
        0x0
    .end array-data

    .line 518
    :array_2
    .array-data 4
        0x6b79c
        0x47964
        0x47938
        0x2b030
        0x23ecb
        0x1ae1e
    .end array-data

    .line 522
    :array_3
    .array-data 4
        0x61b48
        0x413c0
        0x41398
        0x271a0
        0x2080d
        0x18704
    .end array-data

    .line 526
    :array_4
    .array-data 4
        0x4c2c0
        0x3e800
        0x1f400
        0x14d55
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v1, "Combination"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->QUALCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    .line 73
    :goto_0
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 75
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    .line 100
    :goto_1
    new-instance v1, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sget-object v3, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    invoke-direct {v1, v2, v3}, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;Lcom/android/server/ssrm/GenericFalImpl$PlatformType;)V

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    .line 101
    return-void

    .line 55
    .end local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_0
    const-string v1, "Strawberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SLSI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 57
    :cond_1
    const-string v1, "Tropical"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->TI:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "Raspberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->RENESAS:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "Maple"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->MARVELL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 63
    :cond_4
    const-string v1, "IslandPunch"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->INTEL:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 65
    :cond_5
    const-string v1, "Blueberry"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->BROADCOMM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto :goto_0

    .line 67
    :cond_6
    const-string v1, "Sangria"

    sget-object v2, Lcom/android/server/ssrm/GenericFalImpl;->HW_VENDOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->SPREADTRUM:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto/16 :goto_0

    .line 70
    :cond_7
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;->NONE:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mChipVendor:Lcom/android/server/ssrm/GenericFalImpl$ChipVendor;

    goto/16 :goto_0

    .line 76
    .restart local v0    # "mPlatformInfo":Ljava/lang/String;
    :cond_8
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 77
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 78
    :cond_9
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 79
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 80
    :cond_a
    const-string v1, "ja"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 81
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 82
    :cond_b
    const-string v1, "ha"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 83
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 84
    :cond_c
    const-string v1, "ka"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 85
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 86
    :cond_d
    const-string v1, "kq"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 87
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 88
    :cond_e
    const-string v1, "kam"

    sget-object v2, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 89
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 90
    :cond_f
    const-string v1, "exynos4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 91
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 92
    :cond_10
    const-string v1, "exynos3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 93
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 94
    :cond_11
    const-string v1, "sc8830"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 95
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1

    .line 97
    :cond_12
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sput-object v1, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    goto/16 :goto_1
.end method

.method private static adjustValueToSysfsValue(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "value"    # I

    .prologue
    .line 454
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 455
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    .line 457
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 467
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_2

    .line 468
    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    .line 469
    packed-switch p1, :pswitch_data_0

    .line 474
    const/4 p1, 0x0

    .line 479
    :cond_2
    :goto_1
    return p1

    .line 460
    :sswitch_0
    const/4 p1, 0x0

    .line 461
    goto :goto_0

    .line 471
    :pswitch_0
    const/4 p1, 0x1

    .line 472
    goto :goto_1

    .line 457
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch

    .line 469
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 608
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPegaPrime()Z
    .locals 13

    .prologue
    .line 581
    const-string v0, "/sys/devices/system/cpu/busfreq/curr_freq"

    .line 582
    .local v0, "BUS_FREQ_PATH":Ljava/lang/String;
    const/4 v2, 0x0

    .line 583
    .local v2, "buf":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 585
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v3, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 591
    if-eqz v3, :cond_0

    .line 592
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 599
    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_4

    aget v5, v1, v6

    .line 600
    .local v5, "freq":I
    if-eqz v8, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 601
    const/4 v9, 0x1

    .line 604
    .end local v5    # "freq":I
    :goto_3
    return v9

    .line 587
    .end local v1    # "arr$":[I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 588
    .local v4, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 591
    if-eqz v2, :cond_1

    .line 592
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 594
    :catch_1
    move-exception v4

    .line 595
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 590
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 591
    :goto_5
    if-eqz v2, :cond_2

    .line 592
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 590
    :cond_2
    :goto_6
    throw v9

    .line 599
    .restart local v1    # "arr$":[I
    .restart local v5    # "freq":I
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 604
    .end local v5    # "freq":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 594
    .end local v1    # "arr$":[I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_2
    move-exception v4

    .line 595
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "SSRMv2:GenericFalImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isPegaPrime:: e = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 594
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_3
    move-exception v4

    .line 595
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPegaPrime:: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 590
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto :goto_5

    .line 587
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 613
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 617
    sget-boolean v0, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    return-void
.end method

.method private makeCpuCoreTable()[I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 709
    const-string v4, "SSRMv2:GenericFalImpl"

    sget-object v5, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "cpuKernelMax":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 725
    :cond_0
    return-object v3

    .line 714
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 715
    .local v2, "maxNum":I
    const/16 v4, 0x20

    if-gt v2, v4, :cond_0

    .line 719
    new-array v3, v2, [I

    .line 720
    .local v3, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 721
    sub-int v4, v2, v1

    aput v4, v3, v1

    .line 722
    const-string v4, "SSRMv2:GenericFalImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeCpuCoreTable:: table["

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

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseCpuCoreTable()[I
    .locals 11

    .prologue
    .line 670
    const-string v7, "SSRMv2:GenericFalImpl"

    const-string v8, "parseCpuCoreTable"

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v6, 0x0

    .line 672
    .local v6, "supportedCpuCore":[I
    const/4 v0, 0x0

    .line 674
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 675
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 677
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_3

    .line 698
    if-eqz v0, :cond_1

    .line 699
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_0
    move-object v7, v6

    .line 705
    :cond_2
    :goto_1
    return-object v7

    .line 681
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 682
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 683
    const/4 v7, 0x0

    .line 698
    if-eqz v0, :cond_2

    .line 699
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 701
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 685
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "strSupportedCpuCore":[Ljava/lang/String;
    array-length v7, v5

    new-array v6, v7, [I

    .line 687
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_8

    .line 688
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    .line 689
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: supportedCpuCore = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 687
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 691
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "strSupportedCpuCore":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 692
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 693
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 695
    :cond_5
    const/4 v6, 0x0

    .line 698
    if-eqz v0, :cond_6

    .line 699
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    move-object v7, v6

    .line 705
    goto/16 :goto_1

    .line 697
    :catchall_0
    move-exception v7

    .line 698
    if-eqz v0, :cond_7

    .line 699
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 697
    :cond_7
    :goto_4
    throw v7

    .line 701
    :catch_2
    move-exception v2

    .line 702
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 701
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 702
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 701
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 702
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 698
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "strSupportedCpuCore":[Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_6

    .line 699
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 701
    :catch_5
    move-exception v2

    .line 702
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseCpuCoreTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5
.end method

.method private parseGpuFreqTable()[I
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 729
    const-string v9, "SSRMv2:GenericFalImpl"

    const-string v10, "parseGpuFreqTable"

    invoke-static {v9, v10}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v7, 0x0

    .line 731
    .local v7, "supportedFrequency":[I
    const/4 v5, 0x0

    .line 732
    .local v5, "realArraySize":I
    const/4 v0, 0x0

    .line 734
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 735
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    sget-object v10, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v10, v10, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 737
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 771
    if-eqz v0, :cond_1

    .line 772
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 778
    :cond_1
    :goto_0
    return-object v8

    .line 740
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 741
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 771
    if-eqz v0, :cond_1

    .line 772
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 774
    :catch_0
    move-exception v2

    .line 775
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, "strSupportedFreq":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_5

    .line 746
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 747
    add-int/lit8 v5, v5, 0x1

    .line 745
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 750
    :cond_5
    array-length v8, v6

    if-eq v5, v8, :cond_7

    .line 751
    const/4 v3, 0x0

    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 752
    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v8, v3, 0x1

    array-length v9, v6

    if-ge v8, v9, :cond_6

    .line 753
    add-int/lit8 v8, v3, 0x1

    aget-object v8, v6, v8

    aput-object v8, v6, v3

    .line 754
    add-int/lit8 v8, v3, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    .line 751
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 759
    :cond_7
    new-array v7, v5, [I

    .line 760
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_b

    .line 761
    aget-object v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v3

    .line 762
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: supportedFrequency = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v7, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 760
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 764
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 765
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v8, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v8, :cond_8

    .line 766
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by Exception, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 768
    :cond_8
    const/4 v7, 0x0

    .line 771
    if-eqz v0, :cond_9

    .line 772
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_5
    move-object v8, v7

    .line 778
    goto/16 :goto_0

    .line 770
    :catchall_0
    move-exception v8

    .line 771
    if-eqz v0, :cond_a

    .line 772
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 770
    :cond_a
    :goto_6
    throw v8

    .line 774
    :catch_2
    move-exception v2

    .line 775
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 774
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 775
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_7
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 774
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 775
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "SSRMv2:GenericFalImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 771
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "strSupportedFreq":[Ljava/lang/String;
    :cond_b
    if-eqz v0, :cond_9

    .line 772
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    .line 774
    :catch_5
    move-exception v2

    .line 775
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseGpuFreqTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method private parseSystemBusTable()[I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 623
    const-string v8, "SSRMv2:GenericFalImpl"

    const-string v9, "parseSystemBusTable"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v6, 0x0

    .line 625
    .local v6, "supportedFrequency":[I
    const/4 v0, 0x0

    .line 627
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v8, v8, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 628
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v9, v9, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    move-object v0, v1

    .line 630
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_0
    if-nez v0, :cond_2

    .line 659
    if-eqz v0, :cond_1

    .line 660
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 666
    :cond_1
    :goto_0
    return-object v7

    .line 633
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 634
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 659
    if-eqz v0, :cond_1

    .line 660
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v4    # "line":Ljava/lang/String;
    :goto_1
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "strSupportedFreq":[Ljava/lang/String;
    array-length v7, v5

    new-array v6, v7, [I

    .line 639
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_9

    .line 640
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v7, v8, :cond_5

    .line 645
    :cond_4
    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3

    .line 650
    :goto_3
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: supportedFrequency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 648
    :cond_5
    aget-object v7, v5, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 652
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "strSupportedFreq":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 653
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 654
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by Exception, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 656
    :cond_6
    const/4 v6, 0x0

    .line 659
    if-eqz v0, :cond_7

    .line 660
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    move-object v7, v6

    .line 666
    goto/16 :goto_0

    .line 658
    :catchall_0
    move-exception v7

    .line 659
    if-eqz v0, :cond_8

    .line 660
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 658
    :cond_8
    :goto_5
    throw v7

    .line 662
    :catch_2
    move-exception v2

    .line 663
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 662
    .local v2, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 663
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 662
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 663
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 659
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "strSupportedFreq":[Ljava/lang/String;
    :cond_9
    if-eqz v0, :cond_7

    .line 660
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 662
    :catch_5
    move-exception v2

    .line 663
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseSystemBusTable:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6
.end method


# virtual methods
.method public checkNodeExistence(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 484
    packed-switch p1, :pswitch_data_0

    .line 507
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 487
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 489
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 493
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 495
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 497
    :pswitch_4
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 499
    :pswitch_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 501
    :pswitch_6
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 503
    :pswitch_7
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/GenericFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 532
    packed-switch p1, :pswitch_data_0

    .line 577
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 535
    :pswitch_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 536
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->ADONIS_GPU_TABLE:[I

    goto :goto_0

    .line 537
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_2

    .line 538
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->EXYNOS4_GPU_TABLE:[I

    goto :goto_0

    .line 539
    :cond_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_4

    .line 543
    :cond_3
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    goto :goto_0

    .line 544
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 545
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->SC8830_GPU_TABLE:[I

    goto :goto_0

    .line 550
    :pswitch_2
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_5

    .line 551
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->makeCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    .line 558
    :pswitch_3
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONIS:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISPRIME2:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->HELSINKY:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->ADONISMINI:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS3:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_7

    .line 565
    :cond_6
    invoke-direct {p0}, Lcom/android/server/ssrm/GenericFalImpl;->parseSystemBusTable()[I

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_7
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v0, v1, :cond_0

    .line 567
    invoke-static {}, Lcom/android/server/ssrm/GenericFalImpl;->isPegaPrime()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 568
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_PRIME_BUS_TABLE:[I

    goto/16 :goto_0

    .line 570
    :cond_8
    sget-object v0, Lcom/android/server/ssrm/GenericFalImpl;->PEGA_BUS_TABLE:[I

    goto/16 :goto_0

    .line 532
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
    .locals 10
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v4, 0x0

    .line 385
    .local v4, "successFlag":Z
    const/4 v1, 0x0

    .line 386
    .local v1, "filePtr":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 419
    :pswitch_0
    const/4 v4, 0x0

    move v5, v4

    .line 450
    .end local v4    # "successFlag":Z
    .local v5, "successFlag":I
    :goto_0
    return v5

    .line 388
    .end local v5    # "successFlag":I
    .restart local v4    # "successFlag":Z
    :pswitch_1
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v6, v7, :cond_0

    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v6, v7, :cond_1

    .line 390
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .restart local v1    # "filePtr":Ljava/io/File;
    :cond_1
    :goto_1
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/server/ssrm/GenericFalImpl;->adjustValueToSysfsValue(II)I

    move-result p2

    .line 424
    if-eqz v1, :cond_2

    .line 425
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_2
    if-eqz v1, :cond_3

    .line 431
    const/4 v2, 0x0

    .line 433
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 435
    const/4 v4, 0x1

    .line 442
    if-eqz v3, :cond_3

    .line 443
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v5, v4

    .line 450
    .restart local v5    # "successFlag":I
    goto :goto_0

    .line 396
    .end local v5    # "successFlag":I
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 399
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 402
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 403
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 405
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 408
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .restart local v1    # "filePtr":Ljava/io/File;
    goto :goto_1

    .line 411
    :pswitch_8
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v6, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .restart local v1    # "filePtr":Ljava/io/File;
    const/16 v6, 0x28

    if-eq p2, v6, :cond_4

    const/16 v6, 0x33

    if-eq p2, v6, :cond_4

    const/16 v6, 0x32

    if-ne p2, v6, :cond_5

    .line 413
    :cond_4
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 414
    :cond_5
    const/16 v6, 0x3c

    if-ne p2, v6, :cond_1

    .line 415
    const/4 p2, 0x0

    goto/16 :goto_1

    .line 436
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v6, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 438
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 442
    :cond_6
    if-eqz v2, :cond_3

    .line 443
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 445
    :catch_1
    move-exception v0

    .line 446
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    .line 442
    :goto_5
    if-eqz v2, :cond_7

    .line 443
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 441
    :cond_7
    :goto_6
    throw v6

    .line 445
    :catch_2
    move-exception v0

    .line 446
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 445
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 446
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SSRMv2:GenericFalImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyToValues:: failed by IOException, msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 441
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 436
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v5, 0x0

    .line 308
    .local v5, "successFlag":Z
    const/4 v1, 0x0

    .line 309
    .local v1, "filePtr":Ljava/io/File;
    const/4 v4, -0x1

    .line 311
    .local v4, "revertValue":I
    packed-switch p1, :pswitch_data_0

    .line 348
    :pswitch_0
    const/4 v5, 0x0

    move v6, v5

    .line 376
    .end local v5    # "successFlag":Z
    .local v6, "successFlag":I
    :goto_0
    return v6

    .line 313
    .end local v6    # "successFlag":I
    .restart local v5    # "successFlag":Z
    :pswitch_1
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->EXYNOS4:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-eq v7, v8, :cond_0

    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->mPlatformType:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    sget-object v8, Lcom/android/server/ssrm/GenericFalImpl$PlatformType;->SC8830:Lcom/android/server/ssrm/GenericFalImpl$PlatformType;

    if-ne v7, v8, :cond_1

    .line 315
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 351
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 352
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: path = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", revertValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/ssrm/GenericFalImpl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_2
    if-eqz v1, :cond_3

    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    const/4 v5, 0x1

    .line 368
    if-eqz v3, :cond_3

    .line 369
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    move v6, v5

    .line 376
    .restart local v6    # "successFlag":I
    goto :goto_0

    .line 320
    .end local v6    # "successFlag":I
    :pswitch_2
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MAX_DEFAULT_CORE:I

    .line 322
    goto :goto_1

    .line 324
    :pswitch_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->CPU_MIN_DEFAULT_CORE:I

    .line 326
    goto :goto_1

    .line 328
    :pswitch_4
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 330
    goto :goto_1

    .line 332
    :pswitch_5
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 334
    goto :goto_1

    .line 336
    :pswitch_6
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 338
    goto/16 :goto_1

    .line 340
    :pswitch_7
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 342
    goto/16 :goto_1

    .line 344
    :pswitch_8
    new-instance v1, Ljava/io/File;

    .end local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget-object v7, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .restart local v1    # "filePtr":Ljava/io/File;
    sget-object v7, Lcom/android/server/ssrm/GenericFalImpl;->SYSFS:Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;

    iget v4, v7, Lcom/android/server/ssrm/GenericFalImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 346
    goto/16 :goto_1

    .line 362
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    sget-boolean v7, Lcom/android/server/ssrm/GenericFalImpl;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 364
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    :cond_4
    if-eqz v2, :cond_3

    .line 369
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 371
    :catch_1
    move-exception v0

    .line 372
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 368
    :goto_5
    if-eqz v2, :cond_5

    .line 369
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 367
    :cond_5
    :goto_6
    throw v7

    .line 371
    :catch_2
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "SSRMv2:GenericFalImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 371
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 372
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SSRMv2:GenericFalImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "revertToDefault:: failed by IOException, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 362
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
