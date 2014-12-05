.class public Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectWallpaperWidget.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mCameraImage:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mLockScreenWallpaperImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->TAG:Ljava/lang/String;

    .line 17
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->DBG:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 31
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 47
    :goto_16
    return-void

    .line 36
    :cond_17
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 40
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mCameraImage:Landroid/widget/ImageView;

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mCameraImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mCameraImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 46
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setLockScreenWallpaper()V

    goto :goto_16
.end method


# virtual methods
.method public cleanUp()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 111
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWallpaperImage()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    .line 136
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 120
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 90
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public screenTurnedOn()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    const-string v0, "WallpaperWidget"

    const-string v1, "setContextualWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    :cond_10
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 160
    return-void
.end method

.method public setLockScreenWallpaper()V
    .registers 3

    .prologue
    .line 56
    const-string v0, "WallpaperWidget"

    const-string v1, "setLockScreenWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mLockScreenWallpaperImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_16
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 86
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 4
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 107
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectWallpaperWidget;->setLockScreenWallpaper()V

    .line 95
    return-void
.end method
