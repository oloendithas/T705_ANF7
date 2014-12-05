.class Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewManagerHost"
.end annotation


# instance fields
.field private final NO_CONFIGURATION_CHANGED:I

.field private final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomBackground:Landroid/graphics/drawable/Drawable;

.field private mOldConfiguration:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardViewManager;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    .line 268
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 233
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->NO_CONFIGURATION_CHANGED:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    .line 237
    new-instance v0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;-><init>(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 273
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    .line 274
    :cond_2c
    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private computeCustomBackgroundBounds()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 287
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 303
    :cond_5
    :goto_5
    return-void

    .line 288
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 290
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 291
    .local v2, "bgWidth":I
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 292
    .local v1, "bgHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 293
    .local v5, "vWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 295
    .local v4, "vHeight":I
    int-to-float v6, v2

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 296
    .local v0, "bgAspect":F
    int-to-float v6, v5

    int-to-float v7, v4

    div-float v3, v6, v7

    .line 298
    .local v3, "vAspect":F
    cmpl-float v6, v0, v3

    if-lez v6, :cond_35

    .line 299
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v4

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v7, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5

    .line 301
    :cond_35
    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v7, v5

    div-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v8, v8, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_5
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 342
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 344
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_33

    .line 345
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 346
    .local v0, "keyCode":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_23

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleBackKey()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 359
    .end local v0    # "keyCode":I
    :cond_22
    :goto_22
    return v1

    .line 348
    .restart local v0    # "keyCode":I
    :cond_23
    const/16 v2, 0x52

    if-ne v0, v2, :cond_33

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardHostView;->handleMenuKey()Z

    move-result v2

    if-nez v2, :cond_22

    .line 357
    .end local v0    # "keyCode":I
    :cond_33
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$800(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardHostView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardHostView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_22

    .line 359
    :cond_3e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_22
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$500(Lcom/android/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_44

    .line 317
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_27

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    .line 319
    .local v0, "configurationDiff":I
    if-nez v0, :cond_27

    .line 320
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 338
    .end local v0    # "configurationDiff":I
    :cond_26
    :goto_26
    return-void

    .line 326
    :cond_27
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # invokes: Lcom/android/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z
    invoke-static {v2}, Lcom/android/keyguard/KeyguardViewManager;->access$600(Lcom/android/keyguard/KeyguardViewManager;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardViewManager;->access$700(Lcom/android/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V

    .line 332
    :goto_34
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmPerformancePatchEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_4e

    .line 334
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    goto :goto_26

    .line 328
    :cond_44
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onConfigurationChanged: view not visible"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 336
    :cond_4e
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mOldConfiguration:Landroid/content/res/Configuration;

    goto :goto_26
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 307
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    .line 309
    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;

    .line 278
    if-eqz p1, :cond_17

    .line 279
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_17

    .line 280
    const/high16 v0, 0x70000000

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 282
    :cond_17
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->computeCustomBackgroundBounds()V

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 284
    return-void
.end method
