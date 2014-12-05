.class public Lcom/android/keyguard/sec/AdaptiveEventContainerBig;
.super Landroid/widget/LinearLayout;
.source "AdaptiveEventContainerBig.java"


# instance fields
.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerBig;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerBig;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/AdaptiveEventContainerBig$1;-><init>(Lcom/android/keyguard/sec/AdaptiveEventContainerBig;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/AdaptiveEventContainerBig;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/AdaptiveEventContainerBig;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->handleUpdate()V

    return-void
.end method

.method private handleUpdate()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 77
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 79
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_additional_info"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1d

    .line 80
    .local v0, "isAdditionalInfoEnabled":Z
    :goto_14
    if-eqz v0, :cond_1f

    .line 81
    invoke-virtual {p0}, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->updateContainer()V

    .line 82
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :goto_1c
    return-void

    .end local v0    # "isAdditionalInfoEnabled":Z
    :cond_1d
    move v0, v1

    .line 79
    goto :goto_14

    .line 84
    .restart local v0    # "isAdditionalInfoEnabled":Z
    :cond_1f
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 91
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 73
    return-void
.end method

.method protected updateContainer()V
    .registers 4

    .prologue
    const/16 v2, 0x132f

    .line 94
    const-string v0, "AdaptiveEventContainerBig"

    const-string v1, "updateContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventContainerBig;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    return-void
.end method
