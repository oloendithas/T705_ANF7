.class public Lcom/android/systemui/statusbar/policy/VolumePanel;
.super Landroid/widget/LinearLayout;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final LOGD:Z = true

.field private static final STREAM_MASTER:I = -0x64

.field private static final TAG:Ljava/lang/String; = "VolumePanel-SystemUI"


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBarExpanded:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIcon:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTracking:Z

.field private final mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    .line 78
    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$1;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v1, Lcom/android/systemui/statusbar/policy/VolumePanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/VolumePanel$2;-><init>(Lcom/android/systemui/statusbar/policy/VolumePanel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 107
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/VolumePanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/VolumePanel;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/VolumePanel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/VolumePanel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 238
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v0

    .line 246
    :goto_0
    return v0

    .line 240
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getRemoteStreamMaxVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 226
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 228
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0}, Landroid/media/IAudioService;->getRemoteStreamVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 250
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    .line 260
    :goto_0
    return-void

    .line 252
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v0, p2}, Landroid/media/IAudioService;->setRemoteStreamVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private updateContentDescription()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method private updateIcon()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 167
    const/4 v4, -0x1

    .line 168
    .local v4, "newIcon":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    .line 169
    .local v5, "ringerMode":I
    packed-switch v5, :pswitch_data_0

    .line 180
    :goto_0
    const/4 v3, 0x0

    .line 181
    .local v3, "music_through_bt":Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->values()[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 182
    .local v6, "s":Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    iget v7, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->streamType:I

    iget v8, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-ne v7, v8, :cond_0

    .line 183
    packed-switch v5, :pswitch_data_1

    .line 181
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "arr$":[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "music_through_bt":Z
    .end local v6    # "s":Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :pswitch_0
    const v4, 0x7f020270

    .line 172
    goto :goto_0

    .line 174
    :pswitch_1
    const v4, 0x7f020266

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    const v4, 0x7f02026c

    goto :goto_0

    .line 185
    .restart local v0    # "arr$":[Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "music_through_bt":Z
    .restart local v6    # "s":Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :pswitch_3
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconVibrateRes:I

    .line 186
    goto :goto_2

    .line 188
    :pswitch_4
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconMuteRes:I

    .line 189
    goto :goto_2

    .line 191
    :pswitch_5
    iget v4, v6, Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;->iconRes:I

    goto :goto_2

    .line 197
    .end local v6    # "s":Lcom/android/systemui/statusbar/policy/VolumePanel$StreamResources;
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-ne v7, v9, :cond_2

    .line 199
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x3a0

    if-eqz v7, :cond_2

    .line 204
    packed-switch v5, :pswitch_data_2

    .line 218
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    return-void

    .line 206
    :pswitch_6
    const v4, 0x7f020263

    .line 207
    goto :goto_3

    .line 209
    :pswitch_7
    const v4, 0x7f020264

    .line 210
    goto :goto_3

    .line 212
    :pswitch_8
    const v4, 0x7f020263

    goto :goto_3

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 183
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 204
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    if-nez v0, :cond_0

    .line 149
    invoke-static {}, Landroid/media/AudioManager;->getActiveStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 154
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    if-nez v0, :cond_2

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 161
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 164
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMin(I)V

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    return-void
.end method

.method public onBarCollapse()V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    .line 300
    return-void
.end method

.method public onBarExpand()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mBarExpanded:Z

    .line 296
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateContentDescription()V

    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 125
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMuteAnimation(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 129
    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mIcon:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateVolume()V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateContentDescription()V

    .line 136
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 264
    if-eqz p3, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    const/16 v1, 0x1000

    invoke-direct {p0, v0, p2, v1}, Lcom/android/systemui/statusbar/policy/VolumePanel;->setStreamVolume(III)V

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->updateIcon()V

    .line 280
    :cond_1
    return-void

    .line 270
    :pswitch_0
    const-string v0, "VolumePanel-SystemUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RingerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    .line 285
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mTracking:Z

    .line 290
    iget v0, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mActiveStreamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/VolumePanel;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 291
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/VolumePanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 223
    return-void
.end method
