.class public abstract Lcom/android/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewBase$UserSwitcherCallback;,
        Lcom/android/keyguard/KeyguardViewBase$TransportControlCallback;,
        Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0xa8

    const/16 v7, 0x18

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 115
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_90

    .line 116
    sparse-switch v0, :sswitch_data_a0

    :cond_14
    :goto_14
    move v4, v2

    .line 203
    :cond_15
    :goto_15
    return v4

    .line 122
    :sswitch_16
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_28

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 126
    :cond_28
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_15

    .line 139
    :cond_34
    :sswitch_34
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_15

    .line 145
    :sswitch_38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    .line 146
    .local v1, "scanCode":I
    const/16 v5, 0x225

    if-eq v1, v5, :cond_44

    const/16 v5, 0x226

    if-ne v1, v5, :cond_46

    :cond_44
    move v4, v2

    goto :goto_15

    .line 154
    .end local v1    # "scanCode":I
    :cond_46
    :sswitch_46
    monitor-enter p0

    .line 155
    :try_start_47
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_59

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 159
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_72

    .line 161
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 163
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    if-eq v0, v7, :cond_6d

    const/16 v2, 0xf3

    if-eq v0, v2, :cond_6d

    if-ne v0, v8, :cond_75

    :cond_6d
    move v2, v4

    :goto_6e
    invoke-virtual {v5, v6, v2}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_15

    .line 159
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2

    :cond_75
    move v2, v3

    .line 163
    goto :goto_6e

    .line 169
    :cond_77
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 170
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/16 v5, 0xa

    if-eq v0, v7, :cond_8b

    const/16 v6, 0xf3

    if-eq v0, v6, :cond_8b

    if-ne v0, v8, :cond_8c

    :cond_8b
    move v3, v4

    :cond_8c
    invoke-virtual {v2, v5, v3}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_15

    .line 184
    :cond_90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_14

    .line 185
    sparse-switch v0, :sswitch_data_ee

    goto/16 :goto_14

    .line 198
    :sswitch_9b
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_15

    .line 116
    :sswitch_data_a0
    .sparse-switch
        0x18 -> :sswitch_46
        0x19 -> :sswitch_46
        0x4f -> :sswitch_34
        0x55 -> :sswitch_16
        0x56 -> :sswitch_34
        0x57 -> :sswitch_34
        0x58 -> :sswitch_34
        0x59 -> :sswitch_34
        0x5a -> :sswitch_34
        0x5b -> :sswitch_34
        0x7e -> :sswitch_16
        0x7f -> :sswitch_16
        0x82 -> :sswitch_34
        0xa4 -> :sswitch_46
        0xa8 -> :sswitch_38
        0xa9 -> :sswitch_38
        0xde -> :sswitch_34
        0xf2 -> :sswitch_46
        0xf3 -> :sswitch_46
    .end sparse-switch

    .line 185
    :sswitch_data_ee
    .sparse-switch
        0x4f -> :sswitch_9b
        0x55 -> :sswitch_9b
        0x56 -> :sswitch_9b
        0x57 -> :sswitch_9b
        0x58 -> :sswitch_9b
        0x59 -> :sswitch_9b
        0x5a -> :sswitch_9b
        0x5b -> :sswitch_9b
        0x7e -> :sswitch_9b
        0x7f -> :sswitch_9b
        0x82 -> :sswitch_9b
        0xde -> :sswitch_9b
    .end sparse-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchSystemUiVisibilityChanged(I)V

    .line 224
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_e

    .line 225
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 227
    :cond_e
    return-void
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 7
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 209
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_2a

    .line 211
    :try_start_c
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    .line 218
    :goto_f
    return-void

    .line 212
    :catch_10
    move-exception v1

    .line 213
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 216
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2a
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .registers 2
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 232
    return-void
.end method
