.class public Lcom/android/keyguard/sec/SecKeyguardStatusView;
.super Landroid/widget/RelativeLayout;
.source "SecKeyguardStatusView.java"


# instance fields
.field private mClock:Landroid/view/View;

.field private mProfile:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private updateStatusType()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "my_profile_enabled"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_54

    move v1, v2

    .line 55
    .local v1, "isProfileOn":Z
    :goto_14
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_56

    move v0, v3

    .line 56
    .local v0, "isEasyUxOn":Z
    :goto_23
    const-string v2, "SecKeyguardStatusView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatusType(): isProfileOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEasyUxOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v1, :cond_58

    if-nez v0, :cond_58

    .line 58
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClock:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfile:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_53
    return-void

    .end local v0    # "isEasyUxOn":Z
    .end local v1    # "isProfileOn":Z
    :cond_54
    move v1, v3

    .line 54
    goto :goto_14

    .restart local v1    # "isProfileOn":Z
    :cond_56
    move v0, v2

    .line 55
    goto :goto_23

    .line 61
    .restart local v0    # "isEasyUxOn":Z
    :cond_58
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClock:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfile:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 45
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusType()V

    .line 46
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 51
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 35
    const-string v0, "SecKeyguardStatusView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const v0, 0x7f0b00b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mClock:Landroid/view/View;

    .line 37
    const v0, 0x7f0b012f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardStatusView;->mProfile:Landroid/view/View;

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateStatusType()V

    .line 40
    return-void
.end method
