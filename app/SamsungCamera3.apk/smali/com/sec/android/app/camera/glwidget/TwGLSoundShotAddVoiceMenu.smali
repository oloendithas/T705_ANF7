.class public Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSoundShotAddVoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;
    }
.end annotation


# static fields
.field private static final INDICATOR_EQBAR_POS_X:[I

.field private static final INDICATOR_EQBAR_POS_Y:I

.field private static final NUM_OF_EQBAR:I = 0x14

.field private static final PREVIEW_NORMAL_HEIGHT:I

.field private static final PREVIEW_NORMAL_WIDTH:I

.field private static final PREVIEW_WIDE_WIDTH:I

.field private static final PROGRESS_BAR_HEIGHT:I

.field private static final PROGRESS_BAR_POS_X:I

.field private static final PROGRESS_BAR_POS_Y:I

.field private static final PROGRESS_BAR_SEQ_POS_X:[I

.field private static final PROGRESS_BAR_WIDTH:I

.field private static final PROGRESS_BG_IMG_POS_X:I

.field private static final PROGRESS_BG_IMG_POS_Y:I

.field private static final PROGRESS_GROUP_HEIGHT:I

.field private static final PROGRESS_GROUP_POS_X:[I

.field private static final PROGRESS_GROUP_POS_Y:[I

.field private static final PROGRESS_GROUP_WIDTH:I

.field private static final PROGRESS_MIC_POS_X:I

.field private static final PROGRESS_MIC_POS_Y:I

.field private static final PROGRESS_TEXT_FONT_SIZE:I

.field private static final PROGRESS_TEXT_HEIGHT:I

.field private static final PROGRESS_TEXT_POS_X:I

.field private static final PROGRESS_TEXT_POS_Y:I

.field private static final PROGRESS_TEXT_STROKE_COLOR:I

.field private static final PROGRESS_TEXT_STROKE_WIDTH:I

.field private static final PROGRESS_TEXT_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field private static final SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

.field private static final STOP_BUTTON_POS_X:I

.field private static final STOP_BUTTON_POS_Y:I

.field private static STORYRECORD_MAX_PROGRESSBAR_COUNT:I = 0x0

.field protected static final STORY_RECORD_INDICATOR_UPDATE_DURATION:I = 0x32

.field protected static final STORY_RECORD_INDICATOR_UPDATE_TIMER:I = 0x2

.field protected static final STORY_RECORD_PROGRESS_INCREASE_DURATION:I = 0x3e8

.field protected static final STORY_RECORD_PROGRESS_INCREASE_TIMER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLSoundShotAddVoiceMenu"


# instance fields
.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mEqBGImage:Lcom/sec/android/glview/TwGLImage;

.field private mEqValueArray:[I

.field protected mMainHandler:Landroid/os/Handler;

.field private mMicImage:Lcom/sec/android/glview/TwGLImage;

.field private mMicImageArray:[I

.field private mProgessBarSeqFullImage:[I

.field private mProgessBarSeqImage:[I

.field private mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;

.field private mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

.field private mRecProgressBarSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordProgressCounter:I

.field private mRecording:Z

.field private mReviewImage:Lcom/sec/android/glview/TwGLImage;

.field private mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTimer:Ljava/util/Timer;

.field public qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

.field rec_audio:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 58
    const/16 v2, 0x9

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    .line 76
    const v2, 0x7f090006

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_WIDTH:I

    .line 77
    const v2, 0x7f090007

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_HEIGHT:I

    .line 79
    const v2, 0x7f090222

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_WIDTH:I

    .line 80
    const v2, 0x7f090223

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_HEIGHT:I

    .line 82
    const v2, 0x7f09001c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_X:I

    .line 83
    const v2, 0x7f09001d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_Y:I

    .line 85
    const/16 v2, 0x14

    new-array v2, v2, [I

    const v3, 0x7f09022d

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f09022e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f09022f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f090230

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    const v3, 0x7f090231

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v7

    const/4 v3, 0x5

    const v4, 0x7f090232

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f090233

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x7f090234

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x7f090235

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x9

    const v4, 0x7f090236

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xa

    const v4, 0x7f090237

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xb

    const v4, 0x7f090238

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xc

    const v4, 0x7f090239

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xd

    const v4, 0x7f09023a

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xe

    const v4, 0x7f09023b

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0xf

    const v4, 0x7f09023c

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x10

    const v4, 0x7f09023d

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x11

    const v4, 0x7f09023e

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x12

    const v4, 0x7f09023f

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x13

    const v4, 0x7f090240

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_X:[I

    .line 96
    const/16 v2, 0x9

    new-array v2, v2, [I

    const v3, 0x7f09024e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f09024f

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f090250

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f090251

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    const v3, 0x7f090252

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v7

    const/4 v3, 0x5

    const v4, 0x7f090253

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x6

    const v4, 0x7f090254

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/4 v3, 0x7

    const v4, 0x7f090255

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    const/16 v3, 0x8

    const v4, 0x7f090256

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    aput v4, v2, v3

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    .line 102
    const v2, 0x7f09022c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_Y:I

    .line 122
    new-array v2, v7, [I

    const v3, 0x7f090224

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f090226

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f090228

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f09022a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    .line 125
    new-array v2, v7, [I

    const v3, 0x7f090225

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    const v3, 0x7f090227

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    const v3, 0x7f090229

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    const v3, 0x7f09022b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    sput-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    .line 128
    const v2, 0x7f090241

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_X:I

    .line 129
    const v2, 0x7f090242

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_Y:I

    .line 130
    const v2, 0x7f090243

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_X:I

    .line 131
    const v2, 0x7f090244

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_Y:I

    .line 132
    const v2, 0x7f090245

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_X:I

    .line 133
    const v2, 0x7f090246

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_Y:I

    .line 134
    const v2, 0x7f090247

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_WIDTH:I

    .line 135
    const v2, 0x7f090248

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_HEIGHT:I

    .line 145
    const v2, 0x7f090249

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_X:I

    .line 146
    const v2, 0x7f09024a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:I

    .line 147
    const v2, 0x7f09024d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_FONT_SIZE:I

    .line 148
    const v2, 0x7f09024b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_WIDTH:I

    .line 149
    const v2, 0x7f09024c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_HEIGHT:I

    .line 150
    const v2, 0x7f0a001e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_WIDTH:I

    .line 151
    const v2, 0x7f080001

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_COLOR:I

    .line 153
    const v2, 0x7f090002

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    .line 154
    const v2, 0x7f090004

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    .line 155
    const v2, 0x7f090005

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    .line 156
    const v2, 0x7f0a0022

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    .line 159
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    .line 104
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqValueArray:[I

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImageArray:[I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 137
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqImage:[I

    .line 141
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqFullImage:[I

    .line 232
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 163
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020214

    const v5, 0x7f020215

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setFocusable(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 172
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 176
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_MIC_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02039a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 179
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BG_IMG_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02038c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 182
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x14

    if-ge v8, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->INDICATOR_EQBAR_POS_Y:I

    int-to-float v4, v4

    const v5, 0x7f02038e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    .line 188
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0203a9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 191
    const/4 v8, 0x0

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v8, v0, :cond_3

    .line 192
    if-nez v8, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0203ab

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 194
    :cond_1
    const/16 v0, 0x8

    if-ne v8, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0203ac

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_SEQ_POS_X:[I

    aget v3, v3, v8

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f0203aa

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 203
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_BAR_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_HEIGHT:I

    int-to-float v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0b024e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_FONT_SIZE:I

    int-to-float v7, v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_TEXT_STROKE_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setStroke(ZFI)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    sget-boolean v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SOUNDSHOT_PROGRESS_BAR_TEXT_SHADOW_ENABLE:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 215
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->init()V

    .line 216
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x7f02038e
        0x7f02038f
        0x7f020390
        0x7f020391
        0x7f020392
        0x7f020393
        0x7f020394
        0x7f020395
        0x7f020396
        0x7f020397
        0x7f020398
        0x7f020399
    .end array-data

    .line 109
    :array_1
    .array-data 4
        0x7f02039a
        0x7f02039b
    .end array-data

    .line 137
    :array_2
    .array-data 4
        0x7f0203ab
        0x7f0203aa
        0x7f0203aa
        0x7f0203aa
        0x7f0203aa
        0x7f0203aa
        0x7f0203aa
        0x7f0203aa
        0x7f0203ac
    .end array-data

    .line 141
    :array_3
    .array-data 4
        0x7f0203a7
        0x7f0203a6
        0x7f0203a6
        0x7f0203a6
        0x7f0203a6
        0x7f0203a6
        0x7f0203a6
        0x7f0203a6
        0x7f0203a8
    .end array-data
.end method

.method private StartMicAnimation()V
    .locals 6

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StopMicAnimation()V

    .line 252
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 254
    return-void
.end method

.method private StopMicAnimation()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mTimer:Ljava/util/Timer;

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecordProgressIncreased()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
    .param p1, "x1"    # [I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->updateRecordingAmplevel()V

    return-void
.end method

.method private hideStoryRecordProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 400
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "hideStoryRecordProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showThumbnailListButton()V

    .line 412
    :cond_0
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 219
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PROGRESS_GROUP_POS_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 224
    new-instance v0, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-direct {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    .line 225
    return-void
.end method

.method public static isSoundScene(Ljava/lang/String;)Z
    .locals 5
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 672
    const-string v3, "TwGLSoundShotAddVoiceMenu"

    const-string v4, "isSoundScene"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-nez p0, :cond_1

    .line 674
    const-string v3, "TwGLSoundShotAddVoiceMenu"

    const-string v4, "filepath is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    :goto_0
    return v2

    .line 677
    :cond_1
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->isSEFFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 678
    const/16 v2, 0x800

    invoke-static {p0, v2}, Lcom/sec/android/secvision/sef/SEF;->hasDataType(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_0

    .line 680
    :cond_2
    const/4 v1, 0x0

    .line 682
    .local v1, "qdioData":Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/secvision/sef/SEF;->checkAudioInJPEG(Ljava/lang/String;)Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 686
    :goto_1
    if-eqz v1, :cond_0

    .line 687
    const/4 v2, 0x1

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private setProgressBar(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 265
    if-lez p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqImage:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 269
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge p1, v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgessBarSeqFullImage:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 273
    :cond_1
    return-void
.end method

.method private setRecordProgressIncreased()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 313
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v1, v2, :cond_1

    .line 314
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v0, v1, 0x1

    .line 315
    .local v0, "progressCountForDisplay":I
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-gt v0, v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 317
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setProgressBar(I)V

    .line 320
    .end local v0    # "progressCountForDisplay":I
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-le v1, v2, :cond_4

    .line 322
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setProgressBar(I)V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSoundshotAddVoiceRecordingFinished()V

    .line 337
    :cond_3
    :goto_0
    return-void

    .line 332
    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setRecoringAmplitude([I)V
    .locals 6
    .param p1, "MicAmplitude"    # [I

    .prologue
    const/16 v4, 0xa

    const/16 v5, 0x14

    .line 284
    new-array v0, v5, [I

    .line 285
    .local v0, "EqBandLevel":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    .line 290
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-le v2, v4, :cond_1

    .line 291
    div-int/lit8 v2, v1, 0x2

    aput v4, p1, v2

    .line 293
    :cond_1
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_2

    .line 294
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    .line 289
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_2
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-eqz v2, :cond_3

    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    if-ne v2, v4, :cond_4

    .line 297
    :cond_3
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    aput v2, v0, v1

    goto :goto_2

    .line 299
    :cond_4
    div-int/lit8 v2, v1, 0x2

    aget v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_2

    .line 304
    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_6

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 306
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 309
    :cond_6
    return-void
.end method

.method private showStoryRecordProgress()V
    .locals 2

    .prologue
    .line 394
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "showStoryRecordProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 397
    return-void
.end method

.method private startSoundRecording()V
    .locals 3

    .prologue
    .line 375
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "startSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 377
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error occurred"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->disableAlertSound()V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->startRecorder()V

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->updateRecordingAmplevel()V

    .line 390
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecordProgressIncreased()V

    goto :goto_0
.end method

.method private stopSoundRecording()V
    .locals 3

    .prologue
    .line 340
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 342
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "mActivityContext is null, so return"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->stopRecorder()V

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecording:Z

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->hideStoryRecordProgressBar()V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->resetManualMode()V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->enableAlertSound()V

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateRecordingAmplevel()V
    .locals 4

    .prologue
    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public addAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 482
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error while addAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->stopSoundRecording()V

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onSoundShotManualOptionDone()V

    .line 488
    :cond_1
    return-void
.end method

.method public addRawAudioEffect(Ljava/lang/String;I)V
    .locals 4
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "RawID"    # I

    .prologue
    .line 459
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "addRawAudioEffect"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_1

    .line 461
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "addRawAudioEffect - null return"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 465
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream(Landroid/content/res/AssetFileDescriptor;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v1}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v1

    if-gez v1, :cond_2

    .line 467
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while addAudio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showThumbnailListButton()V

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSoundShotManualOptionDone()V

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 494
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StopMicAnimation()V

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 498
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 506
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 510
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 511
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 515
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 518
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 520
    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 521
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 593
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onActivityTouchEvent : ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    return v2
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 3
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v0, 0x1

    .line 524
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "mCaptureStopButton onClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createAudioFinishedbyButton()V

    .line 534
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 584
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 587
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 641
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 643
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 646
    :cond_0
    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 650
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "onKeyUp"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 652
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    .line 664
    const/16 v1, 0x52

    if-ne p1, v1, :cond_4

    .line 668
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 661
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->createAudioFinishedbyButton()V

    goto :goto_0

    .line 668
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->stopSoundRecording()V

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showThumbnailListButton()V

    .line 612
    :cond_0
    return-void
.end method

.method protected onShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 539
    const-string v2, "TwGLSoundShotAddVoiceMenu"

    const-string v3, "onShow"

    invoke-static {v2, v3}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 542
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->hideThumbnailListButton()V

    .line 545
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 546
    const/16 v2, 0xb

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 547
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    .line 549
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 551
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 552
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mEqBGImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 553
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 554
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 566
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBar:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 568
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    if-ge v1, v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecProgressBarSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->bringToFront()V

    .line 574
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 575
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->startRecordingByCreateButton()V

    .line 576
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 577
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    .line 579
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 580
    return-void

    .line 546
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public resetManualMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    .line 615
    const-string v1, "TwGLSoundShotAddVoiceMenu"

    const-string v2, "resetManualMode"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 617
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 620
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    .line 623
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_1

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mRecordProgressCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->STORYRECORD_MAX_PROGRESSBAR_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b024e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 626
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    :cond_2
    const/16 v1, 0xb

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 632
    .local v0, "MicAmplitude":[I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->setRecoringAmplitude([I)V

    .line 634
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 635
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mProgressGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 637
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 638
    return-void

    .line 631
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public showReviewImage(Lcom/sec/android/glview/TwGLViewGroup;Landroid/graphics/Bitmap;IZ)V
    .locals 10
    .param p1, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p2, "data"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I
    .param p4, "is_front_camera"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 422
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "showReviewImage"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 426
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 430
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 434
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 437
    :cond_2
    if-eqz p4, :cond_4

    const/16 v0, 0x5a

    if-eq p3, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_4

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v0

    if-nez v0, :cond_4

    .line 439
    const/16 v0, 0xb4

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 442
    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 445
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    .line 450
    :goto_0
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v5, v3

    const v6, 0x7f020376

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 451
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageBackground:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImageGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 456
    return-void

    .line 447
    :cond_5
    new-instance v3, Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_WIDE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_WIDTH:I

    int-to-float v7, v0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->PREVIEW_NORMAL_HEIGHT:I

    int-to-float v8, v0

    move v6, v2

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mReviewImage:Lcom/sec/android/glview/TwGLImage;

    goto :goto_0
.end method

.method public startRecordingByCreateButton()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "startRecordingByCreateButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->startSoundRecording()V

    .line 417
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->showStoryRecordProgress()V

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->StartMicAnimation()V

    .line 419
    return-void
.end method

.method public stopSoundRecrodingByExternalEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 363
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecrodingByExternalEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez p1, :cond_1

    .line 365
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "stopSoundRecrodingByExternalEvent filepath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->qar:Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/quramrecorder/QuramAudioRecorder;->getRecordedAudioStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->rec_audio:[B

    invoke-static {p1, v0}, Lcom/sec/android/secvision/sef/SEF;->saveAudioJPEG(Ljava/lang/String;[B)I

    move-result v0

    if-gez v0, :cond_0

    .line 370
    const-string v0, "TwGLSoundShotAddVoiceMenu"

    const-string v1, "Error stopSoundRecrodingByExternalEvent while saveAudioJPEG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
