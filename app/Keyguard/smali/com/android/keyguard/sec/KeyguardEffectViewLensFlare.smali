.class public Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewLensFlare.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const v1, 0x7f020101

    const v2, 0x7f020102

    const v3, 0x7f020103

    const v4, 0x7f020104

    const v5, 0x7f020105

    const v6, 0x7f020106

    const v7, 0x7f020107

    const v8, 0x7f020108

    const v9, 0x7f020109

    const v10, 0x7f02010a

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageResourceId(IIIIIIIIII)V

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    const v1, 0x7f050007

    const v2, 0x7f050008

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setSoundResourceId(II)V

    .line 32
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->addView(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUp()V

    .line 48
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getUnlockDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 78
    return-void
.end method

.method public playLockSound()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playLockSound()V

    .line 83
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->reset()V

    .line 43
    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenTurnedOff()V

    .line 63
    return-void
.end method

.method public screenTurnedOn()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenTurnedOn()V

    .line 58
    return-void
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 97
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show()V

    .line 38
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 5
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 68
    return-void
.end method

.method public update()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewLensFlare;->lensFlareEffect:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->update()V

    .line 53
    return-void
.end method
