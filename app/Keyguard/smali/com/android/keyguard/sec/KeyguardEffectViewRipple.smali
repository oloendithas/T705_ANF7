.class public Lcom/android/keyguard/sec/KeyguardEffectViewRipple;
.super Landroid/opengl/GLSurfaceView;
.source "KeyguardEffectViewRipple.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardEffectViewBase;


# instance fields
.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 49
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->DBG:Z

    .line 38
    const-string v0, "CircleUnlockRipple"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->TAG:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mPowerManager:Landroid/os/PowerManager;

    .line 57
    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {v0, p1, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .line 58
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    const v2, 0x7f050005

    const v3, 0x7f050010

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSoundRID(II)V

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 62
    const/16 v5, 0x10

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 63
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 64
    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 65
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 71
    :goto_50
    return-void

    .line 69
    :cond_51
    const-string v0, "WaterEffect"

    const-string v1, "this machine does not support OpenGL ES2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method private detectOpenGLES20()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 85
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 86
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    if-eqz v1, :cond_18

    .line 87
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_18

    const/4 v2, 0x1

    .line 89
    :cond_18
    return v2
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 116
    const-string v0, "CircleUnlockRipple"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V

    .line 118
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 168
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    const-string v1, "CircleUnlockRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 105
    .local v0, "result":Z
    if-eqz v0, :cond_24

    .line 107
    :cond_24
    const/4 v1, 0x1

    return v1
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 140
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .param p1, "visibility"    # I

    .prologue
    .line 131
    if-nez p1, :cond_5

    .line 132
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowVisibilityChanged(I)V

    .line 134
    :cond_5
    return-void
.end method

.method public playLockSound()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 154
    const-string v0, "CircleUnlockRipple"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reset()V

    .line 156
    const-string v0, "CircleUnlockRipple"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 158
    return-void
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 162
    const-string v0, "CircleUnlockRipple"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->screenTurnedOn()V

    .line 164
    return-void
.end method

.method setBackground()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleBackground()V

    .line 96
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 98
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    if-nez v0, :cond_7

    .line 203
    :cond_6
    :goto_6
    return-void

    .line 201
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setContextualWallpaper(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_6
.end method

.method public setHidden(Z)V
    .registers 2
    .param p1, "isHidden"    # Z

    .prologue
    .line 208
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 144
    const-string v0, "CircleUnlockRipple"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->show()V

    .line 148
    const-string v0, "CircleUnlockRipple"

    const-string v1, "requestRender()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 150
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 173
    const-string v0, "CircleUnlockRipple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->mRenderer:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->showUnlockAffordance(JLandroid/graphics/Rect;)V

    .line 175
    return-void
.end method

.method public update()V
    .registers 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardEffectViewRipple;->setBackground()V

    .line 189
    return-void
.end method
