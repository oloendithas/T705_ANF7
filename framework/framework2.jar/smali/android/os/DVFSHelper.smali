.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelDegasLTE;,
        Landroid/os/DVFSHelper$ModelKMINI;,
        Landroid/os/DVFSHelper$ModelPXA1088;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelTF;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$Model8930AB;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_APP_LAUNCH:Ljava/lang/String; = "Application_launch"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = "ha"

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final CHIP_NAME:Ljava/lang/String;

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_klimt_xx"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mToken:I


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_H:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_K:I

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mBUSFrequencyTable:[I

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field mCameraBUSBooster:Landroid/os/DVFSHelper;

.field mCameraCPUBooster:Landroid/os/DVFSHelper;

.field mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mCameraGPUBooster:Landroid/os/DVFSHelper;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field mGPUFrequencyTable:[I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mOption:J

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field mRotationBUSBooster:Landroid/os/DVFSHelper;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 51
    sput v1, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 52
    sput v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 56
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "ro.chipname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    .line 86
    sput v1, Landroid/os/DVFSHelper;->mToken:I

    .line 676
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 97
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    .line 102
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J
    .param p6, "customValue"    # I

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 61
    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 62
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 63
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 64
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 65
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 69
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 70
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 72
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 73
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 74
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 75
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 76
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 78
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 79
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 80
    iput-object v2, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 81
    iput-object v2, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 82
    iput-object v2, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 83
    iput-object v2, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 88
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 692
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 693
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    .line 694
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    .line 695
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 696
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 697
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 698
    iput-object v2, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 699
    iput-object v2, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 700
    iput v5, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT:I

    .line 701
    iput v4, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_H:I

    .line 702
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_K:I

    .line 791
    iput v4, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 792
    iput v5, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 793
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 794
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 795
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 106
    if-nez p1, :cond_6d

    .line 107
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_6c
    return-void

    .line 110
    :cond_6d
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 113
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 114
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_8d

    .line 115
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 119
    :cond_8d
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 122
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 123
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 124
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 125
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 126
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 127
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 129
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 130
    if-eqz p2, :cond_104

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 136
    :goto_f6
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 137
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 138
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 139
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto/16 :goto_6c

    .line 133
    :cond_104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_f6
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)[I
    .registers 2
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/DVFSHelper;)[I
    .registers 2
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 18
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method private adjustCPUFreqTable()V
    .registers 6

    .prologue
    .line 144
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_5

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 148
    :cond_5
    const/4 v0, 0x0

    .line 149
    .local v0, "SHIFT_STEPS":I
    const-string v3, "hf"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v0, 0x1

    .line 150
    :cond_11
    const-string v3, "kf"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "ka"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_25
    const/4 v0, 0x2

    .line 151
    :cond_26
    const-string/jumbo v3, "ssrm_klimt_xx"

    const-string v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v0, 0x3

    .line 153
    :cond_32
    if-lez v0, :cond_4

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_4

    .line 154
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 155
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_51

    .line 156
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 158
    :cond_51
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto :goto_4
.end method

.method private adjustGPUFreqTable()V
    .registers 5

    .prologue
    .line 164
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_5

    .line 174
    :cond_4
    :goto_4
    return-void

    .line 167
    :cond_5
    const-string v2, "ha"

    const-string v3, "ha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [I

    .line 169
    .local v1, "newGPUFreqTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_29

    .line 170
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 172
    :cond_29
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_4
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .registers 3

    .prologue
    .line 1151
    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "ssrm_klimt_xx"

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1152
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    .line 1215
    :goto_1b
    return-object v0

    .line 1154
    :cond_1c
    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "ssrm_klimt_xx"

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1155
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1157
    :cond_38
    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo v0, "ssrm_klimt_xx"

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1158
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1160
    :cond_54
    const-string v0, "jf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1161
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1163
    :cond_64
    const-string v0, "ja"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1164
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1166
    :cond_74
    const-string v0, "hf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1167
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1169
    :cond_84
    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1170
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_1b

    .line 1172
    :cond_94
    const-string v0, "kf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1173
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1175
    :cond_a5
    const-string v0, "ka"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1176
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1178
    :cond_b6
    const-string v0, "kq"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1179
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1181
    :cond_c7
    const-string/jumbo v0, "tf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 1182
    new-instance v0, Landroid/os/DVFSHelper$ModelTF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelTF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1184
    :cond_d9
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1185
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1187
    :cond_ea
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1188
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1190
    :cond_fb
    const-string v0, "kam"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1191
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1193
    :cond_10c
    const-string/jumbo v0, "ssrm_klimt_xx"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1194
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1196
    :cond_11e
    const-string v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 1197
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1199
    :cond_12f
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1200
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1202
    :cond_141
    const-string/jumbo v0, "pxa1088"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1203
    new-instance v0, Landroid/os/DVFSHelper$ModelPXA1088;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPXA1088;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1205
    :cond_153
    const-string v0, "kmini"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16f

    const-string/jumbo v0, "ssrm_klimt_xx"

    const-string v1, "degaslte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 1206
    new-instance v0, Landroid/os/DVFSHelper$ModelDegasLTE;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelDegasLTE;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1208
    :cond_16f
    const-string v0, "kmini"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_180

    .line 1209
    new-instance v0, Landroid/os/DVFSHelper$ModelKMINI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKMINI;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1211
    :cond_180
    const-string v0, "MSM8930AB"

    sget-object v1, Landroid/os/DVFSHelper;->CHIP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 1212
    new-instance v0, Landroid/os/DVFSHelper$Model8930AB;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$Model8930AB;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b

    .line 1215
    :cond_191
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_1b
.end method

.method private getRandomNum()I
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 679
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_7

    .line 680
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_7
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 2

    .prologue
    .line 290
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 291
    return-void
.end method

.method public acquire(I)V
    .registers 29
    .param p1, "timeout"    # I

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_7

    .line 512
    :goto_6
    return-void

    .line 302
    :cond_7
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: timeout = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mIsAcquired = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v2, :cond_3f

    .line 305
    const-string v2, "DVFSHelper"

    const-string v3, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 310
    :cond_3f
    const/16 v21, 0x0

    .line 311
    .local v21, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v2, :cond_4f

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 315
    :cond_4f
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v2, :pswitch_data_334

    .line 492
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_7f

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 499
    :cond_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_8c

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 502
    :cond_8c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_99

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 505
    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_a6

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 508
    :cond_a6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_b3

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 511
    :cond_b3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_6

    .line 317
    :pswitch_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_72

    .line 318
    const/4 v4, 0x0

    .line 319
    .local v4, "coreNum":I
    const/16 v26, 0x0

    .line 320
    .local v26, "stringCoreNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x4

    cmp-long v2, v2, v5

    if-nez v2, :cond_ef

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 334
    :cond_d4
    :goto_d4
    if-lez v4, :cond_72

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x4

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_72

    .line 324
    :cond_ef
    if-eqz v21, :cond_fa

    .line 325
    :try_start_f1
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f9
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_f9} :catch_331

    move-result-object v26

    .line 329
    :cond_fa
    :goto_fa
    if-eqz v26, :cond_d4

    .line 330
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_d4

    .line 341
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_101
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_72

    .line 342
    const/4 v4, 0x0

    .line 343
    .restart local v4    # "coreNum":I
    const/16 v26, 0x0

    .line 345
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    if-eqz v21, :cond_115

    .line 346
    :try_start_10c
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/NullPointerException; {:try_start_10c .. :try_end_114} :catch_32e

    move-result-object v26

    .line 350
    :cond_115
    :goto_115
    if-eqz v26, :cond_11b

    .line 351
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 354
    :cond_11b
    if-lez v4, :cond_72

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x5

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 361
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_137
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_72

    .line 362
    const/4 v7, -0x1

    .line 363
    .local v7, "freq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x2

    cmp-long v2, v2, v5

    if-nez v2, :cond_184

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v7, v2, v3

    .line 372
    :cond_14f
    :goto_14f
    const-string v2, "ja"

    const-string v3, "ha"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    const v2, 0x186a00

    if-le v7, v2, :cond_167

    .line 373
    const v2, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v7

    .line 376
    :cond_167
    const/4 v2, -0x1

    if-eq v7, v2, :cond_72

    .line 377
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x6

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 365
    :cond_184
    if-eqz v21, :cond_14f

    .line 366
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 367
    .local v23, "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_14f

    .line 368
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_14f

    .line 383
    .end local v7    # "freq":I
    .end local v23    # "cpuOption":Ljava/lang/String;
    :pswitch_196
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_72

    .line 384
    const/4 v7, -0x1

    .line 385
    .restart local v7    # "freq":I
    if-eqz v21, :cond_1ae

    .line 386
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 387
    .restart local v23    # "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_1ae

    .line 388
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 392
    .end local v23    # "cpuOption":Ljava/lang/String;
    :cond_1ae
    const/4 v2, -0x1

    if-eq v7, v2, :cond_72

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x7

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 399
    .end local v7    # "freq":I
    :pswitch_1cb
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_72

    .line 400
    const/4 v7, -0x1

    .line 401
    .restart local v7    # "freq":I
    if-eqz v21, :cond_1e3

    .line 402
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 403
    .local v25, "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_1e3

    .line 404
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 408
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_1e3
    const/4 v2, -0x1

    if-eq v7, v2, :cond_72

    .line 409
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 415
    .end local v7    # "freq":I
    :pswitch_200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_72

    .line 416
    const/4 v7, -0x1

    .line 417
    .restart local v7    # "freq":I
    if-eqz v21, :cond_218

    .line 418
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 419
    .restart local v25    # "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_218

    .line 420
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 424
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_218
    const/4 v2, -0x1

    if-eq v7, v2, :cond_72

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x9

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 431
    .end local v7    # "freq":I
    :pswitch_236
    const/4 v7, -0x1

    .line 433
    .restart local v7    # "freq":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_249

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 435
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 438
    :cond_249
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x8

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_72

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_72

    .line 447
    .end local v7    # "freq":I
    :pswitch_271
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_72

    .line 448
    const/4 v10, -0x1

    .line 449
    .local v10, "busMinfreq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x8

    cmp-long v2, v2, v5

    if-nez v2, :cond_2a7

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 457
    :cond_289
    :goto_289
    const/4 v2, -0x1

    if-eq v10, v2, :cond_72

    .line 458
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v9, 0xa

    move/from16 v0, p1

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v8 .. v14}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 451
    :cond_2a7
    if-eqz v21, :cond_289

    .line 452
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 453
    .local v22, "busOption":Ljava/lang/String;
    if-eqz v22, :cond_289

    .line 454
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_289

    .line 464
    .end local v10    # "busMinfreq":I
    .end local v22    # "busOption":Ljava/lang/String;
    :pswitch_2b9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_72

    .line 465
    const/4 v13, -0x1

    .line 466
    .local v13, "busMaxfreq":I
    if-eqz v21, :cond_2d1

    .line 467
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 468
    .restart local v22    # "busOption":Ljava/lang/String;
    if-eqz v22, :cond_2d1

    .line 469
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 472
    .end local v22    # "busOption":Ljava/lang/String;
    :cond_2d1
    const/4 v2, -0x1

    if-eq v13, v2, :cond_72

    .line 473
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v12, 0xb

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 479
    .end local v13    # "busMaxfreq":I
    :pswitch_2f3
    const/16 v16, 0x63

    .line 480
    .local v16, "fpsMax":I
    if-eqz v21, :cond_306

    .line 481
    const-string v2, "FPS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 482
    .local v24, "fpsOption":Ljava/lang/String;
    if-eqz v24, :cond_306

    .line 483
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 486
    .end local v24    # "fpsOption":Ljava/lang/String;
    :cond_306
    if-ltz v16, :cond_72

    const/16 v2, 0x63

    move/from16 v0, v16

    if-ge v0, v2, :cond_72

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v15, 0x3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_72

    .line 348
    .end local v16    # "fpsMax":I
    .restart local v4    # "coreNum":I
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    :catch_32e
    move-exception v2

    goto/16 :goto_115

    .line 327
    :catch_331
    move-exception v2

    goto/16 :goto_fa

    .line 315
    :pswitch_data_334
    .packed-switch 0xc
        :pswitch_137
        :pswitch_196
        :pswitch_ba
        :pswitch_101
        :pswitch_1cb
        :pswitch_200
        :pswitch_236
        :pswitch_271
        :pswitch_2b9
        :pswitch_2f3
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .registers 4
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "timeout":I
    if-lez v0, :cond_b

    .line 281
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 283
    :cond_b
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 574
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 577
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 567
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_b

    .line 568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 570
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .registers 8
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x13

    const/16 v3, 0x10

    .line 585
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_b

    .line 674
    :cond_a
    :goto_a
    return-void

    .line 590
    :cond_b
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 591
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_2a

    .line 592
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 593
    .local v1, "freq":I
    if-lez v1, :cond_a

    .line 594
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a

    .line 596
    .end local v1    # "freq":I
    :cond_2a
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_3d

    .line 597
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 598
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 599
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a

    .line 601
    .end local v1    # "freq":I
    :cond_3d
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_50

    .line 602
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeBUSFreq()I

    move-result v1

    .line 603
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 604
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a

    .line 606
    .end local v1    # "freq":I
    :cond_50
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_a

    .line 607
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 608
    .local v0, "coreNum":I
    if-lez v0, :cond_a

    .line 609
    const-string v2, "CORE_NUM"

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a

    .line 612
    .end local v0    # "coreNum":I
    :cond_65
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 613
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 614
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 615
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_a

    .line 617
    .end local v1    # "freq":I
    :cond_80
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 618
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 619
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 620
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 622
    .end local v1    # "freq":I
    :cond_9c
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 623
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v5, :cond_bc

    .line 624
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 625
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 626
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 628
    .end local v1    # "freq":I
    :cond_bc
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_d0

    .line 629
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollGPUFreq()I

    move-result v1

    .line 630
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 631
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 633
    .end local v1    # "freq":I
    :cond_d0
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_a

    .line 634
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollBUSFreq()I

    move-result v1

    .line 635
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 636
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 639
    .end local v1    # "freq":I
    :cond_e4
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 640
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 641
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 642
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 644
    .end local v1    # "freq":I
    :cond_100
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 645
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_a

    .line 646
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 647
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 648
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 651
    .end local v1    # "freq":I
    :cond_11c
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    .line 652
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 653
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 654
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 656
    .end local v1    # "freq":I
    :cond_138
    const-string v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 657
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 658
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 659
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 661
    .end local v1    # "freq":I
    :cond_154
    const-string v2, "Application_launch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 662
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v3, :cond_170

    .line 663
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchGPUFreq()I

    move-result v1

    .line 664
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 665
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a

    .line 667
    .end local v1    # "freq":I
    :cond_170
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_a

    .line 668
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAppLaunchBUSFreq()I

    move-result v1

    .line 669
    .restart local v1    # "freq":I
    if-lez v1, :cond_a

    .line 670
    const-string v2, "BUS"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_a
.end method

.method public cancelExtraOptions()V
    .registers 2

    .prologue
    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 582
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .registers 6
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 188
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_6

    .line 205
    :cond_5
    :goto_5
    return v1

    .line 191
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 192
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 196
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 197
    .local v1, "realFreq":I
    :goto_10
    if-lez v0, :cond_5

    .line 198
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_21

    .line 199
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 200
    goto :goto_5

    .line 202
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .registers 6
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 212
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_6

    .line 220
    :cond_5
    :goto_5
    return v1

    .line 215
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 216
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 220
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_5
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .registers 6
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 251
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_6

    .line 259
    :cond_5
    :goto_5
    return v1

    .line 254
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 255
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 259
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    goto :goto_5
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .registers 6
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 227
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_6

    .line 244
    :cond_5
    :goto_5
    return v1

    .line 230
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 231
    .local v0, "length":I
    if-lez v0, :cond_5

    .line 235
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 236
    .local v1, "realFreq":I
    :goto_10
    if-lez v0, :cond_5

    .line 237
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_21

    .line 238
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 239
    goto :goto_5

    .line 241
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_10
.end method

.method public getSupportedBUSFrequency()[I
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .registers 2

    .prologue
    .line 515
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x3e8

    const/16 v8, 0x1f4

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x7d0

    .line 705
    if-nez p2, :cond_c

    .line 789
    :cond_b
    :goto_b
    return-void

    .line 710
    :cond_c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_38

    .line 711
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 712
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 713
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_128

    .line 714
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v2

    aget v2, v2, v7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 721
    :cond_38
    :goto_38
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_60

    .line 722
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 723
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 724
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_132

    .line 725
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    aget v2, v2, v7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 732
    :cond_60
    :goto_60
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_83

    .line 733
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_GPU"

    const/16 v3, 0x10

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    .line 734
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    .line 735
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_13c

    .line 736
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 743
    :cond_83
    :goto_83
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_a6

    .line 744
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_BUS"

    const/16 v3, 0x13

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    .line 745
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    .line 746
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_146

    .line 747
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    const-string v1, "Application_launch"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 753
    :cond_a6
    :goto_a6
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_cd

    .line 754
    const-string v0, "hf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    const-string v0, "kam"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 755
    :cond_c8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 766
    :cond_cd
    :goto_cd
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_f4

    .line 767
    const-string v0, "hf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "ha"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "kam"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_193

    .line 768
    :cond_ef
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 779
    :cond_f4
    :goto_f4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mGPUFrequencyTable:[I

    if-eqz v0, :cond_108

    .line 780
    const-string/jumbo v0, "pxa1088"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 781
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 784
    :cond_108
    iget-object v0, p0, Landroid/os/DVFSHelper;->mBUSFrequencyTable:[I

    if-eqz v0, :cond_b

    .line 785
    const-string/jumbo v0, "pxa1088"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_121

    const-string v0, "kmini"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 786
    :cond_121
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_b

    .line 716
    :cond_128
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 727
    :cond_132
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_60

    .line 738
    :cond_13c
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mGPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 749
    :cond_146
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mBUSFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 756
    :cond_150
    const-string v0, "kf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16e

    const-string v0, "ka"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16e

    const-string v0, "kq"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 757
    :cond_16e
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17e

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 758
    :cond_17e
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_cd

    .line 760
    :cond_185
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_cd

    .line 763
    :cond_18c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_cd

    .line 769
    :cond_193
    const-string v0, "kf"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1

    const-string v0, "ka"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1

    const-string v0, "kq"

    const-string v1, "ha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 770
    :cond_1b1
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c1

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 771
    :cond_1c1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_f4

    .line 773
    :cond_1c8
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_f4

    .line 776
    :cond_1cf
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_f4
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d0

    const/4 v7, 0x0

    .line 798
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_22

    .line 799
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0xe

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 800
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 801
    .local v1, "coreTable":[I
    if-eqz v1, :cond_d5

    .line 802
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v4, "CORE_NUM"

    aget v5, v1, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 807
    .end local v1    # "coreTable":[I
    :cond_22
    :goto_22
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_2d

    .line 808
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 811
    :cond_2d
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "exynos5"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    const-string v3, "hf"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string/jumbo v3, "tablet"

    sget-object v4, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    :cond_56
    const-string/jumbo v3, "pxa1088"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 815
    :cond_61
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_8d

    .line 816
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 817
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    .line 818
    .local v2, "gpuTable":[I
    if-eqz v2, :cond_101

    .line 819
    const-string v3, "exynos4"

    sget-object v4, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 820
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 830
    .end local v2    # "gpuTable":[I
    :cond_8d
    :goto_8d
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_96

    .line 831
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 835
    :cond_96
    const-string/jumbo v3, "pxa1088"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 836
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-nez v3, :cond_cb

    .line 837
    new-instance v3, Landroid/os/DVFSHelper;

    const/16 v4, 0x13

    invoke-direct {v3, p1, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    .line 838
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    .line 839
    .local v0, "busTable":[I
    if-eqz v0, :cond_10a

    .line 840
    const-string/jumbo v3, "pxa1088"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 841
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    const-string v4, "BUS"

    aget v5, v0, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 847
    .end local v0    # "busTable":[I
    :cond_cb
    :goto_cb
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    if-eqz v3, :cond_d4

    .line 848
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationBUSBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 851
    :cond_d4
    return-void

    .line 804
    .restart local v1    # "coreTable":[I
    :cond_d5
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 821
    .end local v1    # "coreTable":[I
    .restart local v2    # "gpuTable":[I
    :cond_df
    const-string/jumbo v3, "pxa1088"

    const-string v4, "ha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 822
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    aget v5, v2, v7

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_8d

    .line 824
    :cond_f5
    iget-object v3, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v4, "GPU"

    const/4 v5, 0x1

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_8d

    .line 827
    :cond_101
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 844
    .end local v2    # "gpuTable":[I
    .restart local v0    # "busTable":[I
    :cond_10a
    const-string v3, "DVFSHelper"

    const-string/jumbo v4, "onWindowRotationEvent:: busTable is null"

    invoke-static {v3, v4}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 523
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_6

    .line 564
    :cond_5
    :goto_5
    return-void

    .line 527
    :cond_6
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_5

    .line 533
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_38

    .line 534
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 535
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 538
    :cond_38
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4b

    .line 539
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 540
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 543
    :cond_4b
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5e

    .line 544
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 545
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 548
    :cond_5e
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_71

    .line 549
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 550
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 553
    :cond_71
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_84

    .line 554
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 555
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 558
    :cond_84
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_97

    .line 559
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 560
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: fpsRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iput-object v3, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 563
    :cond_97
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_5
.end method
