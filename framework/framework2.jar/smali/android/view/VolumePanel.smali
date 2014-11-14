.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/VolumeController;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$LoadListener;,
        Landroid/view/VolumePanel$WarningDialogReceiver;,
        Landroid/view/VolumePanel$StreamControl;,
        Landroid/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final BEEP_DURATION:I = 0x96

.field private static final EXTRA_BUTTON_OFF:I = 0x0

.field private static final EXTRA_BUTTON_ON:I = 0x1

.field private static final FREE_DELAY:I = 0x2710

.field private static final KK_TABLET:Z

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_DISSMISS_SAFE_VOLUME_WARNING:I = 0xc

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String;

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final STREAMS:[Landroid/view/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_FOR_VZW:I = 0xfa0

.field private static final UNKNOWN_STREAM:I = -0x1

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static mIsLoadSoundPool:Z

.field private static sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

.field private static sConfirmSafeVolumeLock:Ljava/lang/Object;


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field private mHasProximitySensor:Z

.field private mIsShowingSCoverWarning:Z

.field private final mMoreButton:Landroid/view/View;

.field private final mPMS:Landroid/os/PowerManager;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mPrevRingVolumeIndex:I

.field private mRingIsSilent:Z

.field private mRingVolumeIndex:I

.field private mShowCombinedVolumes:Z

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private mWarningVolumeIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    sput-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    .line 99
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 182
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 193
    const-string v0, "latte"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/VolumePanel;->KK_TABLET:Z

    .line 286
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->VideoCallStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    .line 393
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeService"    # Landroid/media/AudioService;

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 168
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 189
    const/4 v13, 0x1

    new-array v13, v13, [[I

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [I

    fill-array-data v15, :array_29a

    aput-object v15, v13, v14

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 198
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 201
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 202
    const/16 v13, 0xa

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/VolumePanel;->mWarningVolumeIndex:I

    .line 203
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/VolumePanel;->mRingVolumeIndex:I

    .line 204
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/VolumePanel;->mPrevRingVolumeIndex:I

    .line 432
    new-instance v13, Landroid/view/VolumePanel$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/view/VolumePanel$1;-><init>(Landroid/view/VolumePanel;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 501
    const-string v13, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 502
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 503
    const-string/jumbo v13, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mPMS:Landroid/os/PowerManager;

    .line 505
    invoke-virtual/range {p0 .. p0}, Landroid/view/VolumePanel;->hasProximitySensor()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/VolumePanel;->mHasProximitySensor:Z

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110011

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 509
    .local v10, "useMasterVolume":Z
    if-eqz v10, :cond_93

    .line 510
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7c
    sget-object v13, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v13, v13

    if-ge v4, v13, :cond_93

    .line 511
    sget-object v13, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v9, v13, v4

    .line 512
    .local v9, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v13, v9, Landroid/view/VolumePanel$StreamResources;->streamType:I

    const/16 v14, -0x64

    if-ne v13, v14, :cond_91

    const/4 v13, 0x1

    :goto_8c
    iput-boolean v13, v9, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 510
    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    .line 512
    :cond_91
    const/4 v13, 0x0

    goto :goto_8c

    .line 516
    .end local v4    # "i":I
    .end local v9    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_93
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 518
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x1090136

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 519
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v14, Landroid/view/VolumePanel$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/view/VolumePanel$2;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v14, 0x1020428

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 526
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v14, 0x1020429

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 527
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v14, 0x102042b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 528
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    const v14, 0x102042a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 530
    new-instance v13, Landroid/view/VolumePanel$3;

    const v14, 0x1030336

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v14}, Landroid/view/VolumePanel$3;-><init>(Landroid/view/VolumePanel;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 542
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v14, "Volume control"

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v14, Landroid/view/VolumePanel$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/view/VolumePanel$4;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 556
    .local v12, "window":Landroid/view/Window;
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Landroid/view/Window;->setGravity(I)V

    .line 557
    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 558
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v13, 0x0

    iput-object v13, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 560
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x105004f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 562
    const/16 v13, 0x7e4

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 563
    const/4 v13, -0x2

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 564
    const/4 v13, -0x2

    iput v13, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 565
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 566
    invoke-virtual {v12, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 571
    const v13, 0x40028

    invoke-virtual {v12, v13}, Landroid/view/Window;->addFlags(I)V

    .line 573
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    new-array v13, v13, [Landroid/media/ToneGenerator;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 574
    const-string/jumbo v13, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 577
    new-instance v13, Landroid/media/SoundPool;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v13 .. v16}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v14, Landroid/view/VolumePanel$LoadListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v13, v14}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 579
    const/4 v2, 0x0

    .local v2, "effect":I
    :goto_1b5
    const/4 v13, 0x1

    if-ge v2, v13, :cond_1f9

    .line 580
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/media/audio/ui/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v15, v15, v2

    const/16 v16, 0x0

    aget v15, v15, v16

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v13, v13, v2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v3, v0}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v15

    aput v15, v13, v14

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b5

    .line 585
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_1f9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x111003d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    .line 586
    sget-boolean v13, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_228

    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VolumePanel mVoiceCapable : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_228
    sget-boolean v13, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v13, :cond_244

    const-string v13, "VolumePanel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VolumePanel useMasterVolume : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_244
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 593
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v13, :cond_28e

    .line 594
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :goto_261
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110011

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 602
    .local v8, "masterVolumeOnly":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1110012

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 605
    .local v7, "masterVolumeKeySounds":Z
    if-eqz v8, :cond_298

    if-eqz v7, :cond_298

    const/4 v13, 0x1

    :goto_280
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/view/VolumePanel;->mPlayMasterStreamTones:Z

    .line 607
    invoke-direct/range {p0 .. p0}, Landroid/view/VolumePanel;->listenToRingerMode()V

    .line 609
    invoke-virtual/range {p0 .. p0}, Landroid/view/VolumePanel;->registerCoverReceiver()V

    .line 662
    invoke-direct/range {p0 .. p1}, Landroid/view/VolumePanel;->initCoverManager(Landroid/content/Context;)V

    .line 663
    return-void

    .line 597
    .end local v7    # "masterVolumeKeySounds":Z
    .end local v8    # "masterVolumeOnly":Z
    :cond_28e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_261

    .line 605
    .restart local v7    # "masterVolumeKeySounds":Z
    .restart local v8    # "masterVolumeOnly":Z
    :cond_298
    const/4 v13, 0x0

    goto :goto_280

    .line 189
    :array_29a
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 1
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 93
    sput-object p0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/view/VolumePanel;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 93
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$400(Landroid/view/VolumePanel;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/VolumePanel;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    return v0
.end method

.method static synthetic access$502(Landroid/view/VolumePanel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    return p1
.end method

.method static synthetic access$600(Landroid/view/VolumePanel;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/VolumePanel;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$702(Landroid/view/VolumePanel;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 93
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$800(Landroid/view/VolumePanel;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Landroid/view/VolumePanel;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .registers 10

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x8

    .line 832
    iget-boolean v4, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v4, :cond_9

    .line 896
    :cond_8
    :goto_8
    return-void

    .line 833
    :cond_9
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 835
    .local v1, "res":Landroid/content/res/Resources;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v5, :cond_72

    iget-boolean v4, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v4, :cond_72

    .line 836
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 837
    .local v2, "sc":Landroid/view/VolumePanel$StreamControl;
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_72

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eqz v4, :cond_72

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_72

    .line 840
    const v4, 0x1080420

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 841
    const v4, 0x1080422

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 842
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x1040a39

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 844
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 845
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 846
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_62

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_RING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_62
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_72

    .line 848
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 854
    .end local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_73
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v4, v4

    if-ge v0, v4, :cond_102

    .line 856
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v3, v4, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 857
    .local v3, "streamType":I
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget-boolean v4, v4, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v4, :cond_8a

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, v4, :cond_8d

    .line 854
    :cond_8a
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 861
    :cond_8d
    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_96

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8a

    .line 866
    :cond_96
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 867
    .restart local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 868
    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 869
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 871
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 872
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 873
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_ec

    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addOtherVolumes stream : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_ec
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 875
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 876
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 877
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8a

    .line 881
    .end local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    .end local v3    # "streamType":I
    :cond_102
    iget-object v4, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v5, 0x168

    invoke-static {v4, v5}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v4, v8, :cond_8

    .line 882
    iget-object v4, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 883
    .restart local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    const v4, 0x1080426

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 884
    const v4, 0x1080427

    iput v4, v2, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 885
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    const v5, 0x1040a3c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 887
    iget-object v4, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v5, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 888
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 889
    sget-boolean v4, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_14c

    const-string v4, "VolumePanel"

    const-string v5, "addOtherVolumes stream : STREAM_SYSTEM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_14c
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 891
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 893
    iget-object v4, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private collapse()V
    .registers 15

    .prologue
    const/16 v13, 0x21

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1033
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v5, v5

    if-ge v1, v5, :cond_f8

    .line 1034
    sget-object v5, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v5, v1

    iget v4, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 1035
    .local v4, "streamType":I
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 1036
    .local v3, "sc":Landroid/view/VolumePanel$StreamControl;
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1037
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 1038
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x12f

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1049
    :goto_33
    sget-boolean v5, Landroid/view/VolumePanel;->KK_TABLET:Z

    if-eqz v5, :cond_b0

    .line 1050
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x17c

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1051
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1052
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0x14

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1053
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v7, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v9, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1059
    :goto_82
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1033
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 1041
    :cond_90
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x1e0

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 1042
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0x10b

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_33

    .line 1045
    :cond_a5
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v6, 0xcb

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_33

    .line 1055
    :cond_b0
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0xd

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1057
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v6, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v8, 0x13

    invoke-static {v7, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v7

    iget-object v8, v3, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0x12

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_82

    .line 1062
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "sc":Landroid/view/VolumePanel$StreamControl;
    .end local v4    # "streamType":I
    :cond_f8
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1065
    .local v0, "count":I
    const/4 v1, 0x1

    :goto_109
    if-ge v1, v0, :cond_117

    .line 1066
    iget-object v5, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    .line 1068
    :cond_117
    return-void
.end method

.method private createSliders()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x6

    const/4 v8, 0x1

    .line 755
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 757
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v9, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v9, v9

    invoke-direct {v7, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 758
    iget-object v7, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 759
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_de

    .line 760
    sget-object v7, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 761
    .local v5, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v6, v5, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 765
    .local v6, "streamType":I
    new-instance v4, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v11}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    .line 766
    .local v4, "sc":Landroid/view/VolumePanel$StreamControl;
    iput v6, v4, Landroid/view/VolumePanel$StreamControl;->streamType:I

    .line 767
    const v7, 0x1090137

    invoke-virtual {v1, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 768
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 769
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0x102042d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 770
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 771
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 772
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 773
    iget v7, v5, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 774
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v9, v4, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 775
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0x102042c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    .line 776
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    iget v9, v5, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 778
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0x102042e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    .line 779
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 784
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v9, 0x102038d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ExtSeekBar;

    iput-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    .line 787
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/AbsSeekBar;->setMuteAnimation(Z)V

    .line 789
    if-eq v6, v10, :cond_b1

    if-nez v6, :cond_dc

    :cond_b1
    move v2, v8

    .line 791
    .local v2, "plusOne":I
    :goto_b2
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-direct {p0, v6}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v7, v9}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 792
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 793
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 794
    iget-object v7, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    if-eq v6, v10, :cond_d3

    if-nez v6, :cond_d8

    .line 797
    :cond_d3
    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 759
    :cond_d8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1e

    .line 789
    .end local v2    # "plusOne":I
    :cond_dc
    const/4 v2, 0x0

    goto :goto_b2

    .line 800
    .end local v4    # "sc":Landroid/view/VolumePanel$StreamControl;
    .end local v5    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    .end local v6    # "streamType":I
    :cond_de
    return-void
.end method

.method private expand()V
    .registers 16

    .prologue
    const/4 v14, 0x3

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 991
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 992
    .local v0, "count":I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v7, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 993
    .local v2, "last_sc":Landroid/view/VolumePanel$StreamControl;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_27

    .line 994
    iget-object v6, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 996
    :cond_27
    const/4 v1, 0x0

    :goto_28
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v6, v6

    if-ge v1, v6, :cond_118

    .line 997
    sget-object v6, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v6, v6, v1

    iget v5, v6, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 998
    .local v5, "streamType":I
    iget-object v6, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/VolumePanel$StreamControl;

    .line 999
    .local v4, "sc":Landroid/view/VolumePanel$StreamControl;
    move-object v2, v4

    .line 1000
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1002
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 1003
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x16f

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1014
    :goto_56
    sget-boolean v6, Landroid/view/VolumePanel;->KK_TABLET:Z

    if-eqz v6, :cond_d7

    .line 1015
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x1ea

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1016
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v10, 0x2c

    invoke-static {v9, v10}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v14}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1018
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v9, 0xc

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v11, 0x10

    invoke-static {v10, v11}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1024
    :goto_a9
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_28

    .line 1006
    :cond_b7
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x1e0

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->isBiggerThanSW(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 1007
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x14b

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_56

    .line 1010
    :cond_cc
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/16 v7, 0x10b

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_56

    .line 1020
    :cond_d7
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v14}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1022
    iget-object v6, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v7, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v8

    iget-object v9, v4, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v10, v13}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a9

    .line 1027
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "sc":Landroid/view/VolumePanel$StreamControl;
    .end local v5    # "streamType":I
    :cond_118
    iget-object v6, v2, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v6, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    iget-object v6, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    return-void
.end method

.method private forceTimeout()V
    .registers 3

    .prologue
    const/4 v0, 0x5

    .line 1959
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1960
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1961
    const-string v0, "VolumePanel"

    const-string v1, "call forceTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .registers 6
    .param p1, "streamType"    # I

    .prologue
    .line 1764
    const/16 v1, -0x64

    if-ne p1, v1, :cond_6

    const/4 v1, 0x0

    .line 1776
    :goto_5
    return-object v1

    .line 1765
    :cond_6
    monitor-enter p0

    .line 1766
    :try_start_7
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1e

    if-nez v1, :cond_18

    .line 1768
    :try_start_d
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_18} :catch_21
    .catchall {:try_start_d .. :try_end_18} :catchall_1e

    .line 1776
    :cond_18
    :goto_18
    :try_start_18
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_5

    .line 1777
    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw v1

    .line 1769
    :catch_21
    move-exception v0

    .line 1770
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_22
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_18

    .line 1771
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_1e

    goto :goto_18
.end method

.method private getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 725
    const/16 v0, -0x64

    if-ne p1, v0, :cond_b

    .line 726
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 730
    :goto_a
    return v0

    .line 727
    :cond_b
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_16

    .line 728
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamMaxVolume()I

    move-result v0

    goto :goto_a

    .line 730
    :cond_16
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_a
.end method

.method private getStreamVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 735
    const/16 v0, -0x64

    if-ne p1, v0, :cond_b

    .line 736
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 740
    :goto_a
    return v0

    .line 737
    :cond_b
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_16

    .line 738
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    goto :goto_a

    .line 740
    :cond_16
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_a
.end method

.method private initCoverManager(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 674
    iget-object v0, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    .line 675
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 676
    const-string v0, "VolumePanel"

    const-string v1, "initCoverManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_12
    return-void
.end method

.method private isExpanded()Z
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isMuted(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .prologue
    .line 715
    const/16 v0, -0x64

    if-ne p1, v0, :cond_b

    .line 716
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 720
    :goto_a
    return v0

    .line 717
    :cond_b
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1b

    .line 718
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRemoteStreamVolume()I

    move-result v0

    if-gtz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a

    .line 720
    :cond_1b
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_a
.end method

.method private listenToRingerMode()V
    .registers 4

    .prologue
    .line 699
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 700
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/VolumePanel$5;

    invoke-direct {v2, p0}, Landroid/view/VolumePanel$5;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 712
    return-void
.end method

.method private phoneIsOffhook()Z
    .registers 7

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "phoneOffhook":Z
    :try_start_1
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 331
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_12

    .line 332
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_30

    move-result v2

    .line 345
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_12
    :goto_12
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2f

    .line 346
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "phoneIsOffhook : phoneOffhook = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2f
    return v2

    .line 341
    :catch_30
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "VolumePanel"

    const-string/jumbo v4, "phone.isOffhook() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method private reorderSliders(I)V
    .registers 8
    .param p1, "activeStreamType"    # I

    .prologue
    const/16 v5, 0x8

    .line 803
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 804
    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 806
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 807
    .local v0, "active":Landroid/view/VolumePanel$StreamControl;
    if-nez v0, :cond_3a

    .line 808
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing stream type! - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 828
    :goto_36
    invoke-direct {p0}, Landroid/view/VolumePanel;->addOtherVolumes()V

    .line 829
    return-void

    .line 811
    :cond_3a
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 812
    iput p1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 813
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 814
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v1, v3, :cond_7b

    .line 815
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne p1, v3, :cond_7f

    .line 816
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    sget-object v4, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 818
    invoke-direct {p0}, Landroid/view/VolumePanel;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 819
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->volTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v3, v0, Landroid/view/VolumePanel$StreamControl;->underDivider:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 825
    :cond_7b
    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_36

    .line 814
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a
.end method

.method private resetTimeout()V
    .registers 6

    .prologue
    const/4 v1, 0x5

    .line 1942
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1943
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1945
    invoke-virtual {p0}, Landroid/view/VolumePanel;->isSviewCoverOpened()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1946
    const-string v1, "VolumePanel"

    const-string v2, "call mPMS.userActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v1, p0, Landroid/view/VolumePanel;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1950
    :cond_24
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mHasProximitySensor:Z

    if-nez v1, :cond_37

    .line 1951
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1952
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "RESET_TOUCHLOCK_INCALLSCREEN_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1953
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1955
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    const-string v1, "VolumePanel"

    const-string v2, "call resetTimeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void
.end method

.method private setMusicIcon(II)V
    .registers 6
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 1786
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1787
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_30

    .line 1788
    iput p1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    .line 1789
    iput p2, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1791
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1807
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_31

    const v1, 0x1080424

    :goto_2d
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1822
    :cond_30
    :goto_30
    return-void

    .line 1807
    :cond_31
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_2d

    .line 1818
    :cond_34
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_44

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_40
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_30

    :cond_44
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_40
.end method

.method private setStreamVolume(III)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 745
    const/16 v0, -0x64

    if-ne p1, v0, :cond_a

    .line 746
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 752
    :goto_9
    return-void

    .line 747
    :cond_a
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_14

    .line 748
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0, p2}, Landroid/media/AudioService;->setRemoteStreamVolume(I)V

    goto :goto_9

    .line 750
    :cond_14
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_9
.end method

.method private updateSlider(Landroid/view/VolumePanel$StreamControl;)V
    .registers 9
    .param p1, "sc"    # Landroid/view/VolumePanel$StreamControl;

    .prologue
    const v6, 0x1080422

    const v5, 0x1080424

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 900
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v1, :cond_11

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_ba

    .line 902
    :cond_11
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 908
    :goto_1e
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 910
    .local v0, "muted":Z
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 912
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_c7

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_c7

    if-eqz v0, :cond_c7

    .line 916
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    :cond_43
    :goto_43
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_59

    :cond_4c
    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_59

    .line 931
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 935
    :cond_59
    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_7b

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7b

    if-eqz v0, :cond_7b

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_7b

    .line 946
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_ed

    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_ed

    .line 947
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    :cond_7b
    :goto_7b
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_9a

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_9a

    .line 957
    const-string v1, "VZW"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f3

    iget-boolean v1, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v1, :cond_f3

    .line 958
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 964
    :cond_9a
    :goto_9a
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_ae

    iget-object v1, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v3, :cond_ae

    .line 966
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x1080428

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 969
    :cond_ae
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/16 v2, -0xc8

    if-ne v1, v2, :cond_fc

    .line 972
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 984
    :goto_b9
    return-void

    .line 904
    .end local v0    # "muted":Z
    :cond_ba
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    iget v2, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    goto/16 :goto_1e

    .line 918
    .restart local v0    # "muted":Z
    :cond_c7
    iget-object v2, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_e0

    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_cd
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_43

    .line 920
    if-eqz v0, :cond_e3

    .line 921
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x108041b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 918
    :cond_e0
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_cd

    .line 923
    :cond_e3
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x1080419

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_43

    .line 949
    :cond_ed
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7b

    .line 960
    :cond_f3
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x108041d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a

    .line 973
    :cond_fc
    iget v1, p1, Landroid/view/VolumePanel$StreamControl;->streamType:I

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v2

    if-eq v1, v2, :cond_108

    if-nez v0, :cond_10c

    :cond_108
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_120

    .line 976
    :cond_10c
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_119

    .line 977
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/AbsSeekBar;->onStopDraggingState()V

    .line 980
    :cond_119
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_b9

    .line 982
    :cond_120
    iget-object v1, p1, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_b9
.end method


# virtual methods
.method public forceDismiss()V
    .registers 3

    .prologue
    .line 1966
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1967
    const-string v0, "VolumePanel"

    const-string v1, "dismiss by App forceDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1969
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 1971
    :cond_17
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1837
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_bc

    .line 1922
    :cond_5
    :goto_5
    :pswitch_5
    return-void

    .line 1840
    :pswitch_6
    const-string v0, "VolumePanel"

    const-string v1, "change volume by MSG_VOLUME_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_5

    .line 1846
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onMuteChanged(II)V

    goto :goto_5

    .line 1851
    :pswitch_1d
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_5

    .line 1856
    :pswitch_21
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "stop play sound by MSG_STOP_SOUNDS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_5

    .line 1862
    :pswitch_2d
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "play sound by MSG_PLAY_SOUND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_5

    .line 1874
    :pswitch_3d
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1875
    const-string v0, "VolumePanel"

    const-string v1, "dismiss by MSG_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1877
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    .line 1879
    :cond_54
    sget-object v1, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1880
    :try_start_57
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6f

    .line 1881
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_74

    .line 1882
    const-string v0, "VolumePanel"

    const-string v2, "handleMessage: MSG_TIMEOUT: Call sConfirmSafeVolumeDialog.dismiss()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1890
    :cond_6f
    :goto_6f
    monitor-exit v1

    goto :goto_5

    :catchall_71
    move-exception v0

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_57 .. :try_end_73} :catchall_71

    throw v0

    .line 1885
    :cond_74
    :try_start_74
    const-string v0, "VZW"

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1886
    sget-object v0, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_83
    .catchall {:try_start_74 .. :try_end_83} :catchall_71

    goto :goto_6f

    .line 1894
    :pswitch_84
    const-string v0, "VolumePanel"

    const-string v1, "change mode by MSG_RINGER_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1896
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    goto/16 :goto_5

    .line 1902
    :pswitch_98
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onRemoteVolumeChanged(II)V

    goto/16 :goto_5

    .line 1907
    :pswitch_a1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto/16 :goto_5

    .line 1911
    :pswitch_a6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onSliderVisibilityChanged(II)V

    goto/16 :goto_5

    .line 1915
    :pswitch_af
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_5

    .line 1919
    :pswitch_b6
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onDismissSafeVolumeWarning()V

    goto/16 :goto_5

    .line 1837
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1d
        :pswitch_2d
        :pswitch_21
        :pswitch_5
        :pswitch_3d
        :pswitch_84
        :pswitch_15
        :pswitch_98
        :pswitch_a1
        :pswitch_a6
        :pswitch_af
        :pswitch_b6
    .end packed-switch
.end method

.method public hasProximitySensor()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1925
    iget-object v3, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1926
    .local v2, "mSensorManager":Landroid/hardware/SensorManager;
    if-nez v2, :cond_10

    move v3, v4

    .line 1938
    :goto_f
    return v3

    .line 1929
    :cond_10
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1930
    .local v1, "mSensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v1, :cond_19

    move v3, v4

    .line 1931
    goto :goto_f

    .line 1933
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 1934
    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_30

    .line 1935
    const/4 v3, 0x1

    goto :goto_f

    .line 1933
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_33
    move v3, v4

    .line 1938
    goto :goto_f
.end method

.method public isExtraButtonOn()Z
    .registers 7

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 355
    .local v2, "rtvalue":Z
    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "extraButtonOn":Ljava/lang/String;
    iget-object v3, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v4, "audioParam;extraVolume"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "extraButtonOnDevice":Ljava/lang/String;
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_45

    .line 359
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : extraButtonOnDevice = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_45
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 364
    const/4 v2, 0x1

    .line 369
    :goto_58
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_74

    .line 370
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExtraButtonOn : rtvalue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_74
    return v2

    .line 366
    :cond_75
    const/4 v2, 0x0

    goto :goto_58
.end method

.method public isSviewCoverOpened()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 377
    iget-object v2, p0, Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_37

    .line 378
    iget-object v2, p0, Landroid/view/VolumePanel;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 379
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_2e

    .line 380
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCoverManager.getCoverState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 388
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_2d
    return v1

    .line 383
    .restart local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_2e
    const-string v2, "VolumePanel"

    const-string/jumbo v3, "state is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 387
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_37
    const-string v2, "VolumePanel"

    const-string v3, "mCoverManager is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public isVolumePanelShowing()Z
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2030
    iget-object v0, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 2031
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 2033
    :cond_7
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 2034
    return-void
.end method

.method protected onDismissSafeVolumeWarning()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1738
    iget-boolean v2, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    if-eqz v2, :cond_41

    .line 1739
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_10

    const-string v2, "VolumePanel"

    const-string v3, "dismiss warning popup on the s view cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_10
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x109012f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1741
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v2, "visibility"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "volume"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string/jumbo v2, "remote"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1745
    iget-object v2, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1746
    iput-boolean v4, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 1748
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_41
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .registers 13
    .param p1, "flags"    # I

    .prologue
    const/4 v10, 0x5

    .line 1628
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v3

    .line 1629
    .local v3, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1630
    invoke-virtual {v3}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedNotificationMessagesState()Z

    move-result v6

    if-nez v6, :cond_18

    .line 1735
    :cond_17
    :goto_17
    return-void

    .line 1636
    :cond_18
    const/4 v2, 0x1

    .line 1637
    .local v2, "isCoverOpen":Z
    invoke-virtual {p0}, Landroid/view/VolumePanel;->isSviewCoverOpened()Z

    move-result v2

    .line 1638
    sget-object v7, Landroid/view/VolumePanel;->sConfirmSafeVolumeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1639
    :try_start_20
    sget-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_6e

    .line 1640
    if-nez v2, :cond_69

    iget-boolean v6, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    if-nez v6, :cond_69

    .line 1641
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_36

    .line 1642
    const-string v6, "VolumePanel"

    const-string/jumbo v8, "show warning popup on the s view cover and than return"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_36
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x109012f

    invoke-direct {v4, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1645
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v0, "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1647
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "volume"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    const-string/jumbo v6, "remote"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1649
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1650
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 1652
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_69
    monitor-exit v7

    goto :goto_17

    .line 1726
    :catchall_6b
    move-exception v6

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_20 .. :try_end_6d} :catchall_6b

    throw v6

    .line 1666
    :cond_6e
    :try_start_6e
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_7a

    .line 1667
    const-string v6, "VolumePanel"

    const-string/jumbo v8, "show warning popup on the screen"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_7a
    const/4 v1, 0x0

    .line 1671
    .local v1, "earSafeDialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1    # "earSafeDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-direct {v1, v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1678
    .restart local v1    # "earSafeDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v6, 0x1040b37

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1680
    const v6, 0x1040013

    new-instance v8, Landroid/view/VolumePanel$6;

    invoke-direct {v8, p0}, Landroid/view/VolumePanel$6;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1686
    const v6, 0x1040009

    new-instance v8, Landroid/view/VolumePanel$7;

    invoke-direct {v8, p0}, Landroid/view/VolumePanel$7;-><init>(Landroid/view/VolumePanel;)V

    invoke-virtual {v1, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1693
    const v6, 0x1010355

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1694
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    .line 1696
    new-instance v5, Landroid/view/VolumePanel$WarningDialogReceiver;

    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-direct {v5, v6, v8, p0}, Landroid/view/VolumePanel$WarningDialogReceiver;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/VolumePanel;)V

    .line 1699
    .local v5, "warning":Landroid/view/VolumePanel$WarningDialogReceiver;
    sget-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1701
    const-string v6, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCoverOpen = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    if-eqz v2, :cond_147

    .line 1703
    const-string v6, "VolumePanel"

    const-string v8, "cover open, warning popup window type is set to TYPE_VOLUME_OVERLAY"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    sget-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7e4

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 1712
    :goto_e5
    sget-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1714
    if-nez v2, :cond_12b

    .line 1715
    sget-boolean v6, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v6, :cond_f8

    .line 1716
    const-string v6, "VolumePanel"

    const-string/jumbo v8, "show warning popup on the s view cover"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_f8
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v8, 0x109012f

    invoke-direct {v4, v6, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1719
    .restart local v4    # "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    .restart local v0    # "coverIntent":Landroid/content/Intent;
    const-string/jumbo v6, "visibility"

    const/4 v8, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1721
    const-string/jumbo v6, "type"

    const-string/jumbo v8, "volume"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    const-string/jumbo v6, "remote"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1723
    iget-object v6, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1724
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/view/VolumePanel;->mIsShowingSCoverWarning:Z

    .line 1726
    .end local v0    # "coverIntent":Landroid/content/Intent;
    .end local v4    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_12b
    monitor-exit v7
    :try_end_12c
    .catchall {:try_start_6e .. :try_end_12c} :catchall_6b

    .line 1727
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 1731
    const-string v6, "VZW"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1732
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1733
    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xfa0

    invoke-virtual {p0, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_17

    .line 1707
    :cond_147
    :try_start_147
    const-string v6, "VolumePanel"

    const-string v8, "cover closed, warning popup window type is set to TYPE_KEYGUARD_DIALOG"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    sget-object v6, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d9

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V
    :try_end_159
    .catchall {:try_start_147 .. :try_end_159} :catchall_6b

    goto :goto_e5
.end method

.method protected onFreeResources()V
    .registers 4

    .prologue
    .line 1825
    monitor-enter p0

    .line 1826
    :try_start_1
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1d

    .line 1827
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 1828
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1830
    :cond_15
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1826
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1832
    :cond_1d
    monitor-exit p0

    .line 1833
    return-void

    .line 1832
    .end local v0    # "i":I
    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method protected onMuteChanged(II)V
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1320
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_2d

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_2d
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1323
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_4a

    .line 1324
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_47
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1327
    :cond_4a
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    .line 1328
    return-void

    .line 1324
    :cond_4e
    iget v1, v0, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_47
.end method

.method protected onPlaySound(II)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 1476
    invoke-virtual {p0, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1477
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1479
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1482
    :cond_e
    monitor-enter p0

    .line 1484
    :try_start_f
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_15

    .line 1485
    monitor-exit p0

    .line 1512
    :goto_14
    return-void

    .line 1487
    :cond_15
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_60

    .line 1489
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    const/4 v8, 0x0

    .local v8, "effect":I
    :goto_22
    if-ge v8, v4, :cond_5b

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1492
    .local v9, "filePath":Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_8a

    .line 1490
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 1495
    .end local v9    # "filePath":Ljava/lang/String;
    :cond_5b
    const-wide/16 v0, 0x28

    :try_start_5d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_85
    .catchall {:try_start_5d .. :try_end_60} :catchall_8a

    .line 1501
    .end local v8    # "effect":I
    :cond_60
    :goto_60
    :try_start_60
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 1502
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f800000

    const/high16 v3, 0x3f800000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1508
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_8a

    .line 1509
    invoke-virtual {p0, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 1496
    .restart local v8    # "effect":I
    :catch_85
    move-exception v7

    .line 1498
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_86
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_60

    .line 1508
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    .end local v8    # "effect":I
    :catchall_8a
    move-exception v0

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1975
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1976
    .local v1, "tag":Ljava/lang/Object;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_21

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged progress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_21
    if-eqz p3, :cond_97

    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_97

    move-object v0, v1

    .line 1978
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1980
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_49

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onProgressChanged stream type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_49
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_52

    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6d

    .line 1983
    :cond_52
    if-lez p2, :cond_56

    .line 1984
    add-int/lit8 p2, p2, -0x1

    .line 1986
    :cond_56
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_6d

    .line 1987
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_67

    const-string v2, "VolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_67
    iget-object v2, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1991
    :cond_6d
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_97

    .line 1992
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_91

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    :cond_91
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Landroid/view/VolumePanel;->setStreamVolume(III)V

    .line 1996
    .end local v0    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_97
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1997
    return-void
.end method

.method protected onRemoteVolumeChanged(II)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1542
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_31

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRemoteVolumeChanged(stream:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_31
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3d

    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1545
    :cond_3d
    monitor-enter p0

    .line 1546
    :try_start_3e
    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_47

    .line 1547
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 1549
    :cond_47
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1550
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_3e .. :try_end_4d} :catchall_7f

    .line 1555
    :cond_4d
    :goto_4d
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_61

    .line 1562
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1563
    invoke-virtual {p0, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1568
    :cond_61
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_6f

    .line 1569
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1570
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1571
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1574
    :cond_6f
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1575
    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1576
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    .line 1577
    return-void

    .line 1550
    :catchall_7f
    move-exception v0

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v0

    .line 1552
    :cond_82
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_4d

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .registers 4

    .prologue
    const/16 v2, -0xc8

    .line 1580
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_e

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_e
    iget-object v0, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-eqz v0, :cond_22

    .line 1584
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1586
    :cond_22
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .registers 15
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v11, 0x8

    const/16 v10, -0xc8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1331
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1333
    .local v0, "index":I
    iput-boolean v8, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 1335
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_3d

    .line 1336
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_3d
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 1344
    .local v1, "max":I
    sparse-switch p1, :sswitch_data_1a2

    .line 1413
    :cond_44
    :goto_44
    :sswitch_44
    iget-object v5, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/VolumePanel$StreamControl;

    .line 1414
    .local v3, "sc":Landroid/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_81

    .line 1415
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getMax()I

    move-result v5

    if-eq v5, v1, :cond_5f

    .line 1416
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 1419
    :cond_5f
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v0}, Landroid/widget/ExtSeekBar;->setProgress(I)V

    .line 1420
    and-int/lit8 v5, p2, 0x20

    if-nez v5, :cond_7c

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq p1, v5, :cond_78

    if-eq p1, v10, :cond_78

    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->isMuted(I)Z

    move-result v5

    if-nez v5, :cond_7c

    :cond_78
    sget-object v5, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_170

    .line 1425
    :cond_7c
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1431
    :cond_81
    :goto_81
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_d0

    .line 1432
    if-ne p1, v10, :cond_177

    const/4 v4, -0x1

    .line 1434
    .local v4, "stream":I
    :goto_8c
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1435
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v6, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1437
    and-int/lit16 v5, p2, 0x400

    if-eqz v5, :cond_17a

    .line 1438
    invoke-direct {p0}, Landroid/view/VolumePanel;->expand()V

    .line 1442
    :cond_9f
    :goto_9f
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged: setSeekbarSlidingAnimation(false)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    invoke-virtual {p0, v8}, Landroid/view/VolumePanel;->setSeekbarSlidingAnimation(Z)V

    .line 1445
    invoke-virtual {p0}, Landroid/view/VolumePanel;->isSviewCoverOpened()Z

    move-result v5

    if-nez v5, :cond_183

    .line 1446
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged: Cover is closed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1448
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1457
    :cond_c2
    :goto_c2
    sget-object v5, Landroid/view/VolumePanel;->sConfirmSafeVolumeDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_19b

    .line 1458
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1462
    :goto_cb
    iget-object v5, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1466
    .end local v4    # "stream":I
    :cond_d0
    if-eq p1, v10, :cond_f0

    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_f0

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_f0

    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-ne v5, v9, :cond_f0

    .line 1470
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1472
    :cond_f0
    return-void

    .line 1348
    .end local v3    # "sc":Landroid/view/VolumePanel$StreamControl;
    :sswitch_f1
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1350
    .local v2, "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_44

    .line 1351
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged ringuri is null on STREAM_RING.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_44

    .line 1359
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_105
    iget-object v5, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x3a0

    if-eqz v5, :cond_11b

    .line 1364
    const v5, 0x1080417

    const v6, 0x1080418

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_44

    .line 1366
    :cond_11b
    const v5, 0x1080429

    const v6, 0x108042b

    invoke-direct {p0, v5, v6}, Landroid/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_44

    .line 1377
    :sswitch_126
    add-int/lit8 v0, v0, 0x1

    .line 1378
    add-int/lit8 v1, v1, 0x1

    .line 1379
    goto/16 :goto_44

    .line 1387
    :sswitch_12c
    iget-object v5, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1389
    .restart local v2    # "ringuri":Landroid/net/Uri;
    if-nez v2, :cond_44

    .line 1390
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged ringuri is null on STREAM_NOTIFICATION.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_44

    .line 1402
    .end local v2    # "ringuri":Landroid/net/Uri;
    :sswitch_141
    add-int/lit8 v0, v0, 0x1

    .line 1403
    add-int/lit8 v1, v1, 0x1

    .line 1404
    goto/16 :goto_44

    .line 1408
    :sswitch_147
    sget-boolean v5, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_44

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showing remote volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44

    .line 1427
    .restart local v3    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_170
    iget-object v5, v3, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v5, v9}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_81

    :cond_177
    move v4, p1

    .line 1432
    goto/16 :goto_8c

    .line 1439
    .restart local v4    # "stream":I
    :cond_17a
    iget-boolean v5, p0, Landroid/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v5, :cond_9f

    .line 1440
    invoke-direct {p0}, Landroid/view/VolumePanel;->collapse()V

    goto/16 :goto_9f

    .line 1450
    :cond_183
    const-string v5, "VolumePanel"

    const-string/jumbo v6, "onShowVolumeChanged: Cover is opened"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    and-int/lit16 v5, p2, 0x400

    if-nez v5, :cond_c2

    .line 1452
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1453
    iget-object v5, p0, Landroid/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c2

    .line 1460
    :cond_19b
    iget-object v5, p0, Landroid/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_cb

    .line 1344
    :sswitch_data_1a2
    .sparse-switch
        -0xc8 -> :sswitch_147
        0x0 -> :sswitch_126
        0x2 -> :sswitch_f1
        0x3 -> :sswitch_105
        0x4 -> :sswitch_44
        0x5 -> :sswitch_12c
        0x6 -> :sswitch_141
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 1597
    monitor-enter p0

    :try_start_2
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_2f

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_2f
    if-ne p2, v1, :cond_4d

    .line 1599
    .local v1, "isVisible":Z
    :goto_31
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_4b

    .line 1600
    sget-object v3, Landroid/view/VolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1601
    .local v2, "streamRes":Landroid/view/VolumePanel$StreamResources;
    iget v3, v2, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_4f

    .line 1602
    iput-boolean v1, v2, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 1603
    if-nez v1, :cond_4b

    iget v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_4b

    .line 1604
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/VolumePanel;->mActiveStreamType:I
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_52

    .line 1609
    .end local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_4b
    monitor-exit p0

    return-void

    .line 1598
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_4d
    const/4 v1, 0x0

    goto :goto_31

    .line 1599
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 1597
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Landroid/view/VolumePanel$StreamResources;
    :catchall_52
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2000
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_c

    const-string v0, "VolumePanel"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    :cond_c
    iget-boolean v0, p0, Landroid/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_19

    .line 2003
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 2012
    :cond_19
    :goto_19
    return-void

    .line 2006
    :pswitch_1a
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3c

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_3c
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_19

    .line 2003
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method protected onStopSounds()V
    .registers 6

    .prologue
    .line 1516
    monitor-enter p0

    .line 1517
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1518
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_20

    .line 1519
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1520
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_1d

    .line 1521
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_1a

    const-string v3, "VolumePanel"

    const-string v4, "VolumePanel onStopSounds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_1a
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1518
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1525
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_20
    monitor-exit p0

    .line 1526
    return-void

    .line 1525
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_22
    move-exception v3

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v4, -0xc8

    .line 2015
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_e

    const-string v2, "VolumePanel"

    const-string/jumbo v3, "onStopTrackingTouch"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2017
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_24

    move-object v0, v1

    .line 2018
    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 2023
    .local v0, "sc":Landroid/view/VolumePanel$StreamControl;
    iget v2, v0, Landroid/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v4, :cond_24

    .line 2024
    invoke-direct {p0, v4}, Landroid/view/VolumePanel;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2027
    .end local v0    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_24
    return-void
.end method

.method protected onVibrate()V
    .registers 4

    .prologue
    .line 1531
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 1536
    :goto_9
    return-void

    .line 1535
    :cond_a
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_9
.end method

.method protected onVolumeChanged(II)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1195
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_1e

    .line 1196
    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1197
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 1198
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_1d

    const-string v1, "VolumePanel"

    const-string/jumbo v2, "onVolumeChanged updateStates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_1d
    :goto_1d
    return-void

    .line 1204
    :cond_1e
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_4b

    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVolumeChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_4b
    iget-object v1, p0, Landroid/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1207
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_5f

    const-string v1, "VolumePanel"

    const-string/jumbo v2, "onVolumeChanged: Call setSeekbarSlidingAnimation(true)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_5f
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->setSeekbarSlidingAnimation(Z)V

    .line 1214
    :cond_62
    if-nez p1, :cond_fd

    .line 1217
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1219
    .local v0, "sc_voice":Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 1220
    if-eqz v0, :cond_96

    .line 1221
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-nez v1, :cond_96

    .line 1222
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_91

    .line 1223
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(true)_#1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_91
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    .line 1263
    .end local v0    # "sc_voice":Landroid/view/VolumePanel$StreamControl;
    :cond_96
    :goto_96
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_a7

    .line 1264
    monitor-enter p0

    .line 1265
    :try_start_9b
    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_151

    .line 1266
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    .line 1271
    :cond_a3
    :goto_a3
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1272
    monitor-exit p0
    :try_end_a7
    .catchall {:try_start_9b .. :try_end_a7} :catchall_15a

    .line 1275
    :cond_a7
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_c0

    iget-boolean v1, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v1, :cond_c0

    .line 1297
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_ba

    .line 1298
    const-string v1, "VolumePanel"

    const-string v2, "VolumePanel onVolumeChanged call onPlaySound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_ba
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1300
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onPlaySound(II)V

    .line 1305
    :cond_c0
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_cf

    .line 1306
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1307
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1308
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 1311
    :cond_cf
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1312
    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1313
    if-eqz p2, :cond_1d

    .line 1314
    invoke-direct {p0}, Landroid/view/VolumePanel;->resetTimeout()V

    goto/16 :goto_1d

    .line 1228
    .restart local v0    # "sc_voice":Landroid/view/VolumePanel$StreamControl;
    :cond_e2
    if-eqz v0, :cond_96

    .line 1229
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1230
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_f7

    .line 1231
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(false)_#2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_f7
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto :goto_96

    .line 1237
    .end local v0    # "sc_voice":Landroid/view/VolumePanel$StreamControl;
    :cond_fd
    if-nez p1, :cond_10b

    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_10b

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-nez v1, :cond_96

    .line 1240
    :cond_10b
    iget-object v1, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamControl;

    .line 1242
    .restart local v0    # "sc_voice":Landroid/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_96

    .line 1243
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1}, Landroid/widget/ExtSeekBar;->isEnableChangeColor()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 1244
    invoke-direct {p0}, Landroid/view/VolumePanel;->phoneIsOffhook()Z

    move-result v1

    if-eqz v1, :cond_13f

    invoke-virtual {p0}, Landroid/view/VolumePanel;->isExtraButtonOn()Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 1246
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_138

    .line 1247
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(true)_#3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_138
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_96

    .line 1252
    :cond_13f
    sget-boolean v1, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_14a

    .line 1253
    const-string v1, "VolumePanel"

    const-string v2, "Call setChangeSeekbarColor(false)_#4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_14a
    iget-object v1, v0, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/ExtSeekBar;->setChangeSeekbarColor(Z)V

    goto/16 :goto_96

    .line 1268
    .end local v0    # "sc_voice":Landroid/view/VolumePanel$StreamControl;
    :cond_151
    :try_start_151
    iget v1, p0, Landroid/view/VolumePanel;->mActiveStreamType:I

    if-eq v1, p1, :cond_a3

    .line 1269
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->reorderSliders(I)V

    goto/16 :goto_a3

    .line 1272
    :catchall_15a
    move-exception v1

    monitor-exit p0
    :try_end_15c
    .catchall {:try_start_151 .. :try_end_15c} :catchall_15a

    throw v1
.end method

.method public postDismissSafeVolumeWarning()V
    .registers 3

    .prologue
    const/16 v1, 0xc

    .line 1160
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1162
    :goto_8
    return-void

    .line 1161
    :cond_9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .registers 4
    .param p1, "flags"    # I

    .prologue
    const/16 v1, 0xb

    .line 1155
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1157
    :goto_8
    return-void

    .line 1156
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public postHasNewRemotePlaybackInfo()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 1129
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1133
    :goto_8
    return-void

    .line 1132
    :cond_9
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public postMasterMuteChanged(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1151
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postMuteChanged(II)V

    .line 1152
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1136
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 1137
    return-void
.end method

.method public postMuteChanged(II)V
    .registers 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1148
    :goto_7
    return-void

    .line 1141
    :cond_8
    monitor-enter p0

    .line 1142
    :try_start_9
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_10

    .line 1143
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 1145
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1e

    .line 1146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1147
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 1145
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 1113
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v1, v2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1115
    return-void

    .line 1113
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public postRemoteVolumeChanged(II)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1102
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1110
    :goto_8
    return-void

    .line 1103
    :cond_9
    monitor-enter p0

    .line 1104
    :try_start_a
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_11

    .line 1105
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 1107
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1e

    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1109
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 1107
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public postVolumeChanged(II)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1088
    monitor-enter p0

    .line 1089
    :try_start_2
    iget-object v0, p0, Landroid/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_9

    .line 1090
    invoke-direct {p0}, Landroid/view/VolumePanel;->createSliders()V

    .line 1092
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1f

    .line 1093
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1095
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1096
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1099
    :goto_1e
    return-void

    .line 1092
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 1098
    :cond_22
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1e
.end method

.method public registerCoverReceiver()V
    .registers 4

    .prologue
    .line 666
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 667
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/VolumePanel;->mCoverBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 671
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 694
    iget-object v0, p0, Landroid/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 695
    invoke-virtual {p0}, Landroid/view/VolumePanel;->updateStates()V

    .line 696
    return-void
.end method

.method public setSeekbarSlidingAnimation(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    .line 1079
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1080
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 1081
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 1082
    .local v2, "sc":Landroid/view/VolumePanel$StreamControl;
    sget-boolean v3, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_32

    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSeekbarSlidingAnimation(): Call sc.seekbarView.setSlidingAnimation: enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_32
    iget-object v3, v2, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/ExtSeekBar;

    invoke-virtual {v3, p1}, Landroid/widget/AbsSeekBar;->setSlidingAnimation(Z)V

    .line 1080
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1085
    .end local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_3a
    return-void
.end method

.method public updateStates()V
    .registers 5

    .prologue
    .line 1071
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1072
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1073
    iget-object v3, p0, Landroid/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/VolumePanel$StreamControl;

    .line 1074
    .local v2, "sc":Landroid/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Landroid/view/VolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1076
    .end local v2    # "sc":Landroid/view/VolumePanel$StreamControl;
    :cond_1b
    return-void
.end method
