.class public Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewRecentApplication.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLockScreenRecentImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "KeyguardEffectViewRecentApplication"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mLockScreenRecentImage:Landroid/widget/ImageView;

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mLockScreenRecentImage:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mLockScreenRecentImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mLockScreenRecentImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 42
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 46
    const-string v0, "KeyguardEffectViewRecentApplication"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRecentApplication;->mLockScreenRecentImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 120
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 124
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 107
    return-void
.end method

.method public screenTurnedOn()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 4
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 111
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method
