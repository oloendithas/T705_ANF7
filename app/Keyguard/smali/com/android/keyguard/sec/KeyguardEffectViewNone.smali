.class public Lcom/android/keyguard/sec/KeyguardEffectViewNone;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewNone.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->DBG:Z

    .line 23
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 27
    .local v7, "dm":Landroid/util/DisplayMetrics;
    iget v10, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .local v10, "screenWidth":I
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 30
    .local v9, "screenHeight":I
    if-ge v10, v9, :cond_a4

    move v11, v10

    .line 31
    .local v11, "smallestWidth":I
    :goto_26
    int-to-float v0, v11

    const/high16 v1, 0x44870000

    div-float v8, v0, v1

    .line 33
    .local v8, "ratio":F
    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v2, v0, 0x2

    .line 46
    .local v2, "circleUnlockMaxWidth":I
    const/high16 v0, 0x40800000

    mul-float/2addr v0, v8

    float-to-int v3, v0

    .line 47
    .local v3, "outerStrokeWidth":I
    const/high16 v0, 0x40c00000

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 48
    .local v4, "innerStrokeWidth":I
    const/16 v0, 0x1e

    new-array v5, v0, [I

    fill-array-data v5, :array_a6

    .line 66
    .local v5, "lockSequenceImageId":[I
    new-instance v0, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->mContext:Landroid/content/Context;

    const v6, 0x7f020135

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;-><init>(Landroid/content/Context;III[II)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->addView(Landroid/view/View;)V

    .line 68
    return-void

    .end local v2    # "circleUnlockMaxWidth":I
    .end local v3    # "outerStrokeWidth":I
    .end local v4    # "innerStrokeWidth":I
    .end local v5    # "lockSequenceImageId":[I
    .end local v8    # "ratio":F
    .end local v11    # "smallestWidth":I
    :cond_a4
    move v11, v9

    .line 30
    goto :goto_26

    .line 48
    :array_a6
    .array-data 4
        0x7f020136
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f02014c
        0x7f02014d
        0x7f02014e
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 101
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_11

    .line 77
    if-eqz p1, :cond_18

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->changeModeForShorcutButton(I)V

    .line 83
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 84
    const/4 v0, 0x1

    return v0

    .line 80
    :cond_18
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->changeModeForCircleUnlock()V

    goto :goto_11
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 132
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->unlock()V

    .line 134
    :cond_10
    return-void
.end method

.method public playLockSound()V
    .registers 3

    .prologue
    .line 138
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : playLockSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 95
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    .line 97
    :cond_10
    return-void
.end method

.method public screenTurnedOff()V
    .registers 3

    .prologue
    .line 116
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 111
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public setHidden(Z)V
    .registers 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    .line 150
    :cond_9
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->clearEffect()V

    .line 91
    :cond_10
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 6
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 121
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewNone;->circleEffect:Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/visualeffect/circleunlock/CircleUnlockEffect;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 123
    :cond_10
    return-void
.end method

.method public update()V
    .registers 3

    .prologue
    .line 106
    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "KeyguardEffectViewNone : update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
