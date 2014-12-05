.class public Lcom/android/keyguard/KeyguardTransportControlView;
.super Landroid/widget/FrameLayout;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTransportControlView$SavedState;,
        Lcom/android/keyguard/KeyguardTransportControlView$Metadata;,
        Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;,
        Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBadge:Landroid/widget/ImageView;

.field private mBtnNext:Landroid/widget/ImageView;

.field private mBtnPlay:Landroid/widget/ImageView;

.field private mBtnPrev:Landroid/widget/ImageView;

.field private mCurrentPlayState:I

.field private mFormat:Ljava/text/DateFormat;

.field private final mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

.field private mInfoContainer:Landroid/view/ViewGroup;

.field private mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

.field private final mMetadataChangeTransition:Landroid/transition/TransitionSet;

.field private mMetadataContainer:Landroid/view/ViewGroup;

.field private final mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

.field private mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mRemoteController:Landroid/media/RemoteController;

.field private final mResetToMetadata:Ljava/lang/Runnable;

.field private mSeekEnabled:Z

.field private mTempDate:Ljava/util/Date;

.field private mTrackArtistAlbum:Landroid/widget/TextView;

.field private mTrackTitle:Landroid/widget/TextView;

.field private mTransientSeek:Landroid/view/View;

.field private mTransientSeekBar:Landroid/widget/SeekBar;

.field private mTransientSeekTimeElapsed:Landroid/widget/TextView;

.field private mTransientSeekTimeTotal:Landroid/widget/TextView;

.field private final mTransportCommandListener:Landroid/view/View$OnClickListener;

.field mTransportControlCallback:Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

.field private mTransportControlFlags:I

.field private final mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    .line 96
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    .line 101
    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 103
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$1;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 167
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    .line 169
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$2;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    .line 175
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$3;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    .line 192
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$4;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    .line 242
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    .line 244
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$5;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 280
    new-instance v5, Lcom/android/keyguard/KeyguardTransportControlView$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardTransportControlView$6;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 293
    new-instance v5, Landroid/media/AudioManager;

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    .line 294
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    .line 295
    new-instance v5, Landroid/media/RemoteController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRCClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-direct {v5, p1, v6}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 298
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 299
    .local v0, "dim":I
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v5, v7, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 301
    new-instance v3, Landroid/transition/ChangeText;

    invoke-direct {v3}, Landroid/transition/ChangeText;-><init>()V

    .line 302
    .local v3, "tc":Landroid/transition/ChangeText;
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/transition/ChangeText;->setChangeBehavior(I)Landroid/transition/ChangeText;

    .line 303
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 304
    .local v2, "inner":Landroid/transition/TransitionSet;
    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/ChangeBounds;

    invoke-direct {v6}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 305
    new-instance v4, Landroid/transition/TransitionSet;

    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 306
    .local v4, "tg":Landroid/transition/TransitionSet;
    new-instance v5, Landroid/transition/Fade;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v5

    new-instance v6, Landroid/transition/Fade;

    invoke-direct {v6, v7}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 308
    invoke-virtual {v4, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 309
    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 310
    iput-object v4, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataChangeTransition:Landroid/transition/TransitionSet;

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardTransportControlView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->sendMediaButtonClick(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardTransportControlView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardTransportControlView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView;->updateTransportControls(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static final playbackPositionShouldMove(I)Z
    .registers 2
    .param p0, "playstate"    # I

    .prologue
    .line 226
    packed-switch p0, :pswitch_data_8

    .line 238
    :pswitch_3
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 232
    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 226
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private populateMetadata()V
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 510
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v7}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "remoteClientPackage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 513
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    :try_start_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_14} :catch_fa

    move-result-object v0

    .line 517
    :goto_15
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setBadgeIcon(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_104

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    :goto_2c
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 523
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_4b

    .line 524
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    :cond_4b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_54
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 529
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_6b

    .line 530
    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_6b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, "trackArtistAlbum":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_107

    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :goto_80
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11d

    .line 540
    invoke-virtual {p0, v11}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 541
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarDuration(J)V

    .line 545
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    cmp-long v7, v7, v9

    if-ltz v7, :cond_10a

    .line 546
    const-string v5, "DDD kk mm ss"

    .line 552
    .local v5, "skeleton":Ljava/lang/String;
    :goto_aa
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    .line 555
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    const-string v8, "GMT+0"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 560
    .end local v5    # "skeleton":Ljava/lang/String;
    :goto_ce
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 561
    iget v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 562
    .local v2, "flags":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    invoke-static {v7, v2, v11}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 563
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    const/16 v8, 0x80

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 564
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    const/16 v8, 0x3c

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardTransportControlView;->setVisibilityBasedOnFlag(Landroid/view/View;II)V

    .line 570
    iget v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->updatePlayPauseState(I)V

    .line 571
    return-void

    .line 514
    .end local v2    # "flags":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_fa
    move-exception v1

    .line 515
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "TransportControlView"

    const-string v9, "Couldn\'t get remote control client package icon"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_104
    move-object v7, v8

    .line 518
    goto/16 :goto_2c

    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_107
    move-object v6, v8

    .line 536
    goto/16 :goto_80

    .line 547
    .end local v6    # "trackArtistAlbum":Ljava/lang/String;
    :cond_10a
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v7}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v7

    const-wide/32 v9, 0x36ee80

    cmp-long v7, v7, v9

    if-ltz v7, :cond_11a

    .line 548
    const-string v5, "kk mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_aa

    .line 550
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_11a
    const-string v5, "mm ss"

    .restart local v5    # "skeleton":Ljava/lang/String;
    goto :goto_aa

    .line 557
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_11d
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_ce
.end method

.method private sendMediaButtonClick(I)V
    .registers 5
    .param p1, "keyCode"    # I

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 751
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 753
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;->userActivity()V

    .line 754
    return-void
.end method

.method private setEnableMarquee(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 356
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 357
    :cond_12
    return-void
.end method

.method private static setVisibilityBasedOnFlag(Landroid/view/View;II)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "flags"    # I
    .param p2, "flag"    # I

    .prologue
    .line 641
    and-int v0, p1, p2

    if-eqz v0, :cond_9

    .line 642
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :goto_8
    return-void

    .line 644
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8
.end method

.method private updatePlayPauseState(I)V
    .registers 9
    .param p1, "state"    # I

    .prologue
    .line 651
    iget v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    if-ne p1, v3, :cond_5

    .line 687
    :goto_4
    return-void

    .line 656
    :cond_5
    sparse-switch p1, :sswitch_data_4e

    .line 676
    const v2, 0x7f0201ad

    .line 677
    .local v2, "imageResId":I
    const v1, 0x7f0600bc

    .line 681
    .local v1, "imageDescId":I
    :goto_e
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4c

    const/4 v0, 0x1

    .line 682
    .local v0, "clientSupportsSeek":Z
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 684
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 685
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 686
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    goto :goto_4

    .line 658
    .end local v0    # "clientSupportsSeek":Z
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_37
    const v2, 0x7f0201ad

    .line 661
    .restart local v2    # "imageResId":I
    const v1, 0x7f0600bc

    .line 662
    .restart local v1    # "imageDescId":I
    goto :goto_e

    .line 665
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_3e
    const v2, 0x7f0201ac

    .line 666
    .restart local v2    # "imageResId":I
    const v1, 0x7f0600bb

    .line 667
    .restart local v1    # "imageDescId":I
    goto :goto_e

    .line 670
    .end local v1    # "imageDescId":I
    .end local v2    # "imageResId":I
    :sswitch_45
    const v2, 0x7f0201ad

    .line 671
    .restart local v2    # "imageResId":I
    const v1, 0x7f0600bd

    .line 672
    .restart local v1    # "imageDescId":I
    goto :goto_e

    .line 681
    :cond_4c
    const/4 v0, 0x0

    goto :goto_1f

    .line 656
    :sswitch_data_4e
    .sparse-switch
        0x3 -> :sswitch_3e
        0x8 -> :sswitch_45
        0x9 -> :sswitch_37
    .end sparse-switch
.end method

.method private updateTransportControls(I)V
    .registers 3
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlFlags:I

    .line 315
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    .line 316
    return-void

    .line 315
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method cancelResetToMetadata()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 629
    return-void
.end method

.method clearMetadata()V
    .registers 2

    .prologue
    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 486
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 487
    return-void
.end method

.method delayResetToMetadata()V
    .registers 4

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mResetToMetadata:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 625
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    if-eqz v0, :cond_f

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 395
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    .line 398
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 400
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 401
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 405
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 407
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 408
    .local v0, "dim":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v0}, Landroid/media/RemoteController;->setArtworkConfiguration(ZII)Z

    .line 409
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 414
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 417
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->clear()V

    .line 419
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseJellyBeanGUI()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    .line 422
    :cond_2c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 423
    return-void
.end method

.method public onFinishInflate()V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 361
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 362
    const v6, 0x7f0b00dd

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    .line 363
    const v6, 0x7f0b00de

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    .line 364
    const v6, 0x7f0b00dc

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    .line 365
    const v6, 0x7f0b00df

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackTitle:Landroid/widget/TextView;

    .line 366
    const v6, 0x7f0b00e0

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTrackArtistAlbum:Landroid/widget/TextView;

    .line 367
    const v6, 0x7f0b00e1

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    .line 368
    const v6, 0x7f0b00e2

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    .line 369
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 370
    const v6, 0x7f0b00e3

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    .line 371
    const v6, 0x7f0b00e4

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    .line 372
    const v6, 0x7f0b00e5

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    .line 373
    const v6, 0x7f0b00e6

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    .line 374
    const v6, 0x7f0b00e7

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    .line 375
    const/4 v6, 0x3

    new-array v1, v6, [Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPrev:Landroid/widget/ImageView;

    aput-object v6, v1, v7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnPlay:Landroid/widget/ImageView;

    aput-object v6, v1, v8

    const/4 v6, 0x2

    iget-object v9, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBtnNext:Landroid/widget/ImageView;

    aput-object v9, v1, v6

    .line 376
    .local v1, "buttons":[Landroid/view/View;
    move-object v0, v1

    .local v0, "arr$":[Landroid/view/View;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_a1
    if-ge v2, v3, :cond_b2

    aget-object v5, v0, v2

    .line 377
    .local v5, "view":Landroid/view/View;
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportCommandListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 380
    .end local v5    # "view":Landroid/view/View;
    :cond_b2
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v4

    .line 381
    .local v4, "screenOn":Z
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V

    .line 383
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportShowSeekBarListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 386
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v6

    if-eqz v6, :cond_ce

    move v6, v7

    :goto_cb
    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    .line 387
    return-void

    :cond_ce
    move v6, v8

    .line 386
    goto :goto_cb
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 438
    instance-of v1, p1, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    if-nez v1, :cond_8

    .line 439
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 450
    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    .line 442
    check-cast v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    .line 443
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 444
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-wide v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 448
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 449
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 427
    new-instance v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 428
    .local v0, "ss":Lcom/android/keyguard/KeyguardTransportControlView$SavedState;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->artist:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->trackTitle:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->albumTitle:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->duration:J

    .line 432
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardTransportControlView$SavedState;->bitmap:Landroid/graphics/Bitmap;

    .line 433
    return-object v0
.end method

.method resetToMetadata()V
    .registers 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 613
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isToggleSeekBarAndTitle()Z

    move-result v0

    if-nez v0, :cond_25

    .line 614
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_25

    .line 615
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :cond_25
    return-void
.end method

.method scrubTo(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteController;->seekTo(J)Z

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;->userActivity()V

    .line 638
    return-void
.end method

.method setBadgeIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "bmp"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 456
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 457
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 458
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 459
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mBadge:Landroid/widget/ImageView;

    const/16 v2, 0xef

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 460
    return-void
.end method

.method setSeekBarDuration(J)V
    .registers 5
    .param p1, "duration"    # J

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 633
    return-void
.end method

.method setSeekBarsEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 319
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    if-ne p1, v0, :cond_7

    .line 346
    :cond_6
    :goto_6
    return-void

    .line 323
    :cond_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isToggleSeekBarAndTitle()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 324
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    goto :goto_6

    .line 331
    :cond_2d
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_47

    if-nez p1, :cond_47

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 337
    :cond_47
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 339
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->run()V

    goto :goto_6

    .line 342
    :cond_5d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    goto :goto_6
.end method

.method public setTransportControlCallback(Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;)V
    .registers 2
    .param p1, "transportControlCallback"    # Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

    .line 351
    return-void
.end method

.method tryToggleSeekBar()Z
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mInfoContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 589
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 590
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->cancelResetToMetadata()V

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    :goto_21
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransportControlCallback:Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;->userActivity()V

    .line 605
    const/4 v0, 0x1

    return v0

    .line 595
    :cond_28
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeek:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadataContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 597
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    .line 598
    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mCurrentPlayState:I

    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 599
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->run()V

    goto :goto_21

    .line 601
    :cond_43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    goto :goto_21
.end method

.method updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 6
    .param p1, "data"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1700(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->artist:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1702(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1800(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->trackTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1802(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1900(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->albumTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$1902(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x9

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/MediaMetadataEditor;->getLong(IJ)J

    move-result-wide v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2002(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;J)J

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2100(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/MediaMetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2102(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 500
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardTransportControlView;->populateMetadata()V

    .line 504
    :goto_58
    return-void

    .line 502
    :cond_59
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mPopulateMetadataWhenAttached:Landroid/media/RemoteController$MetadataEditor;

    goto :goto_58
.end method

.method updateSeekBars()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    long-to-int v0, v2

    .line 692
    .local v0, "position":I
    if-ltz v0, :cond_11

    .line 693
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 694
    const/4 v1, 0x1

    .line 699
    :goto_10
    return v1

    .line 696
    :cond_11
    const-string v2, "TransportControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating seek bars; received invalid estimated media position ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "). Disabling seek."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->setSeekBarsEnabled(Z)V

    goto :goto_10
.end method

.method updateSeekDisplay()V
    .registers 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_3c

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v1}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mMetadata:Lcom/android/keyguard/KeyguardTransportControlView$Metadata;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->duration:J
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView$Metadata;->access$2000(Lcom/android/keyguard/KeyguardTransportControlView$Metadata;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeTotal:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    :cond_3c
    return-void
.end method
