.class public Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SilentModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-SilentModeQuickSettingButton"

.field private static mDeviceSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f020205

    const v6, 0x7f020203

    const/4 v5, 0x0

    const v1, 0x7f0b00e5

    const v4, 0x7f020207

    .line 67
    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_1

    .line 70
    const v2, 0x7f0b010b

    move-object v0, p0

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    .line 86
    :goto_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSoundProfile:Z

    if-eqz v0, :cond_0

    .line 87
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    .line 88
    const v13, 0x7f0201d4

    move-object v7, p0

    move v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setIcon(IIIIII)V

    .line 102
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 103
    return-void

    .line 78
    :cond_1
    const v0, 0x7f0b010b

    const v2, 0x7f020206

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    .line 82
    const v0, 0x7f020204

    const v2, 0x7f020208

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setAltIcon(II)V

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 38
    sput p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->updateStatus()V

    .line 118
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 119
    return-void

    .line 115
    :cond_0
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 127
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    const-string v2, "onClick(): Processing..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "soundProfile":I
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-ne v1, v3, :cond_2

    .line 144
    const/4 v0, 0x0

    .line 159
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 161
    const-string v1, "STATUSBAR-SilentModeQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilentMode onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), setRingerMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 145
    :cond_2
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-nez v1, :cond_3

    .line 146
    const/4 v0, 0x2

    goto :goto_1

    .line 147
    :cond_3
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 148
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->hasVibrator:Z

    if-eqz v1, :cond_4

    .line 149
    const/4 v0, 0x1

    goto :goto_1

    .line 151
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 155
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public updateStatus()V
    .locals 5

    .prologue
    .line 178
    const/4 v1, -0x1

    .line 179
    .local v1, "status":I
    const v2, 0x7f0b00e5

    .line 180
    .local v2, "textID":I
    const v0, 0x7f0b010b

    .line 182
    .local v0, "contentTextId":I
    sget v3, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 183
    const/4 v1, 0x4

    .line 184
    const v2, 0x7f0b00e6

    .line 185
    const v0, 0x7f0b010d

    .line 201
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setTextId(I)V

    .line 202
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setContextTextId(I)V

    .line 203
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 204
    return-void

    .line 186
    :cond_0
    sget v3, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    if-nez v3, :cond_1

    .line 187
    const/4 v1, 0x5

    .line 188
    const v2, 0x7f0b00e7

    .line 189
    const v0, 0x7f0b010e

    goto :goto_0

    .line 190
    :cond_1
    sget v3, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mDeviceSoundProfile:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 191
    const/4 v1, 0x1

    .line 192
    const v2, 0x7f0b00e5

    .line 193
    const v0, 0x7f0b010c

    goto :goto_0

    .line 195
    :cond_2
    const/4 v1, 0x1

    .line 196
    const v2, 0x7f0b00e5

    .line 197
    const v0, 0x7f0b010c

    goto :goto_0
.end method
