.class public Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLiveWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# static fields
.field private static sIsBootCompleted:Z


# instance fields
.field private final FINISH_INIT_DELAY:I

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mBootCompleteFilter:Landroid/content/IntentFilter;

.field private mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

.field private final mContext:Landroid/content/Context;

.field private mFinishInitHandler:Landroid/os/Handler;

.field private mIsNotInitialized:Z

.field private mIsScreenTurnedOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->sIsBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    .line 21
    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteFilter:Landroid/content/IntentFilter;

    .line 29
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->FINISH_INIT_DELAY:I

    .line 39
    new-instance v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;-><init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteFilter:Landroid/content/IntentFilter;

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 19
    sput-boolean p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->sIsBootCompleted:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_a

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 109
    :cond_a
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    .line 55
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez v3, :cond_52

    .line 58
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "just_lock_livewallpaper_package_name"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "just_lock_livewallpaper_class_name"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "className":Ljava/lang/String;
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 64
    :cond_36
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 76
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_39
    return-void

    .line 68
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_3a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v3, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    iget-object v4, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    .line 72
    iget-object v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->connect()Z

    .line 75
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_52
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto :goto_39
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_16

    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->cleanUp()V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->disconnect()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    .line 89
    :cond_16
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 90
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iput-boolean v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->sIsBootCompleted:Z

    if-eqz v0, :cond_1d

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 135
    :cond_1d
    return-void
.end method

.method public screenTurnedOn()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    iput-boolean v2, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsScreenTurnedOn:Z

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->isVisible()Z

    move-result v0

    if-nez v0, :cond_26

    sget-boolean v0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->sIsBootCompleted:Z

    if-eqz v0, :cond_26

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 124
    :cond_26
    return-void
.end method

.method public setHidden(Z)V
    .registers 4
    .param p1, "isHidden"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_c

    .line 176
    iget-object v1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-nez p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v0}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 177
    :cond_c
    return-void

    .line 176
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public show()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    if-eqz v0, :cond_18

    .line 95
    iput-boolean v3, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    :cond_18
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 4
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 141
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method
