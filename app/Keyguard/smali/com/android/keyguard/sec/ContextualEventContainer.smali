.class public Lcom/android/keyguard/sec/ContextualEventContainer;
.super Landroid/widget/LinearLayout;
.source "ContextualEventContainer.java"


# instance fields
.field private mContextualEventArea:Landroid/view/ViewGroup;

.field private mIsSecure:Z

.field private mUnlockMessageArea:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/android/keyguard/sec/ContextualEventContainer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/ContextualEventContainer$1;-><init>(Lcom/android/keyguard/sec/ContextualEventContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualEventContainer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventContainer;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventContainer;->handleUpdate()V

    return-void
.end method

.method private handleUpdate()V
    .registers 4

    .prologue
    .line 38
    const-string v1, "ContextualEventContainer"

    const-string v2, "handleUpdate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventView()Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "topView":Landroid/view/View;
    if-nez v0, :cond_1b

    .line 41
    const-string v1, "ContextualEventContainer"

    const-string v2, "topView == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_1a
    return-void

    .line 44
    :cond_1b
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v1

    if-nez v1, :cond_3c

    const/4 v1, 0x1

    :goto_33
    invoke-virtual {v2, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->showGradation(Z)V

    .line 46
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1a

    .line 45
    :cond_3c
    const/4 v1, 0x0

    goto :goto_33
.end method


# virtual methods
.method public getAppWidgetId()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    const/16 v0, 0x8

    .line 73
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    if-eqz v1, :cond_18

    .line 75
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 76
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mIsSecure:Z

    if-eqz v2, :cond_19

    :goto_15
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_18
    :goto_18
    return-void

    .line 76
    :cond_19
    const/4 v0, 0x0

    goto :goto_15

    .line 78
    :cond_1b
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 64
    const-string v0, "ContextualEventContainer"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mContextualEventArea:Landroid/view/ViewGroup;

    .line 66
    const v0, 0x7f0b0111

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUnlockMessageArea:Landroid/view/View;

    .line 67
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/ContextualEventManager;->setContextualEventContainer(Lcom/android/keyguard/sec/ContextualEventContainer;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventContainer;->update()V

    .line 69
    return-void
.end method

.method public setIsSecured(Z)V
    .registers 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mIsSecure:Z

    .line 96
    return-void
.end method

.method protected update()V
    .registers 4

    .prologue
    const/16 v2, 0x132f

    .line 83
    const-string v0, "ContextualEventContainer"

    const-string v1, "update()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventContainer;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    return-void
.end method
