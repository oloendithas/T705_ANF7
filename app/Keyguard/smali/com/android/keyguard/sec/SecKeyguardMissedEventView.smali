.class public Lcom/android/keyguard/sec/SecKeyguardMissedEventView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardMissedEventView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;
    }
.end annotation


# instance fields
.field private mAlpha0Animation:Landroid/view/animation/Animation;

.field private mAlpha80Animation:Landroid/view/animation/Animation;

.field private mCallExist:Z

.field private mCallFrame:Landroid/widget/FrameLayout;

.field private mCallRemoteViews:Landroid/widget/RemoteViews;

.field private mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

.field private mChatOnFrame:Landroid/widget/FrameLayout;

.field private mClearButton:Landroid/widget/Button;

.field private mIsClicked:Z

.field private mMsgExist:Z

.field private mMsgFrame:Landroid/widget/FrameLayout;

.field private mMsgRemoteViews:Landroid/widget/RemoteViews;

.field private mRoamingExist:Z

.field private mRoamingFrame:Landroid/widget/FrameLayout;

.field private mRoamingRemoteViews:Landroid/widget/RemoteViews;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mSelectedAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildScaleAnimation()V
    .registers 12

    .prologue
    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const-wide/16 v9, 0x14d

    const/high16 v1, 0x3f800000

    const/4 v5, 0x1

    .line 193
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 195
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 199
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 204
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mScaleDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha80Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 210
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 214
    return-void
.end method


# virtual methods
.method clearMissedEventView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 176
    iput-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    return-void
.end method

.method public hideBouncer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-nez v0, :cond_6

    .line 281
    :goto_5
    return-void

    .line 266
    :cond_6
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_11

    .line 269
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 271
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1a

    .line 272
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 274
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_23

    .line 275
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 277
    :cond_23
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v0, :cond_2c

    .line 278
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->refreshDefaultHelpTextView()V

    .line 280
    :cond_2c
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .prologue
    const/4 v6, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 291
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 292
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_48

    move v0, v2

    .line 293
    .local v0, "isEasyUxOn":Z
    :goto_15
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_4a

    move v1, v3

    .line 295
    .local v1, "isEmergencyOn":Z
    :goto_24
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    if-eqz v3, :cond_47

    .line 296
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    const v4, 0x7f0600d7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 297
    if-nez v0, :cond_34

    if-eqz v1, :cond_4c

    .line 298
    :cond_34
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 303
    :cond_47
    :goto_47
    return-void

    .end local v0    # "isEasyUxOn":Z
    .end local v1    # "isEmergencyOn":Z
    :cond_48
    move v0, v3

    .line 292
    goto :goto_15

    .restart local v0    # "isEasyUxOn":Z
    :cond_4a
    move v1, v2

    .line 293
    goto :goto_24

    .line 300
    .restart local v1    # "isEmergencyOn":Z
    :cond_4c
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_47
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 286
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->hideBouncer()V

    .line 287
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 88
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 89
    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    .line 90
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    .line 91
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    .line 92
    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3a

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_3a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_43

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_43
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4c

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mChatOnFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_4c
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_55

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_55
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardMissedEventView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->buildScaleAnimation()V

    .line 115
    return-void
.end method

.method public registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V
    .registers 2
    .param p1, "contextualEventManagerCallback"    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    .line 307
    return-void
.end method

.method public removeContextualEventManagerCallback()V
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    .line 311
    return-void
.end method

.method removeMissedEventView(Ljava/lang/String;)V
    .registers 6
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 148
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 151
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    .line 152
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 164
    :cond_1a
    :goto_1a
    const-string v0, "ContextualEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMissedEventView rq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cFlag, mFlag]=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    if-nez v0, :cond_65

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    if-nez v0, :cond_65

    .line 166
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventManager;->clearMissedEvent()V

    .line 168
    :cond_65
    return-void

    .line 153
    :cond_66
    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 156
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    .line 157
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    goto :goto_1a

    .line 158
    :cond_7d
    const-string v0, "com.android.roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 161
    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    .line 162
    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    goto :goto_1a
.end method

.method setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 10
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/RemoteViews;
    .param p3, "onClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    const-string v2, "ContextualEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMissedEventView() requestClass="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mOnClickHandler="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_57

    const-string v1, "null"

    :goto_1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v1, "com.android.phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    .line 123
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "myView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallExist:Z

    .line 142
    .end local v0    # "myView":Landroid/view/View;
    :cond_4d
    :goto_4d
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-nez v1, :cond_56

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_56
    return-void

    .line 118
    :cond_57
    const-string v1, "not null"

    goto :goto_1d

    .line 127
    :cond_5a
    const-string v1, "com.android.mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 131
    .restart local v0    # "myView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgExist:Z

    goto :goto_4d

    .line 134
    .end local v0    # "myView":Landroid/view/View;
    :cond_80
    const-string v1, "com.android.roaming"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 136
    iput-object p2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3, p3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    .line 138
    .restart local v0    # "myView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iput-boolean v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingExist:Z

    goto :goto_4d
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 5
    .param p1, "onClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_d

    .line 182
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 184
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1a

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 187
    :cond_1a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_27

    .line 188
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingRemoteViews:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 190
    :cond_27
    return-void
.end method

.method public showBouncer(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 217
    if-eqz p1, :cond_8

    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    if-eqz v6, :cond_9

    .line 260
    :cond_8
    :goto_8
    return-void

    .line 220
    :cond_9
    iput-boolean v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mIsClicked:Z

    .line 222
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_90

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    move v0, v4

    .line 223
    .local v0, "isCallClicked":Z
    :goto_20
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    move v1, v4

    .line 224
    .local v1, "isMsgClicked":Z
    :goto_35
    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_94

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    move v2, v4

    .line 226
    .local v2, "isRoamingClicked":Z
    :goto_4a
    if-eqz v0, :cond_96

    .line 227
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5b

    .line 228
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    :cond_5b
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_6a

    .line 231
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    :cond_6a
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v4, :cond_87

    .line 236
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->setHelpText(Ljava/lang/String;)V

    .line 259
    .end local v3    # "message":Ljava/lang/String;
    :cond_87
    :goto_87
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mClearButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .end local v0    # "isCallClicked":Z
    .end local v1    # "isMsgClicked":Z
    .end local v2    # "isRoamingClicked":Z
    :cond_90
    move v0, v5

    .line 222
    goto :goto_20

    .restart local v0    # "isCallClicked":Z
    :cond_92
    move v1, v5

    .line 223
    goto :goto_35

    .restart local v1    # "isMsgClicked":Z
    :cond_94
    move v2, v5

    .line 224
    goto :goto_4a

    .line 238
    .restart local v2    # "isRoamingClicked":Z
    :cond_96
    if-eqz v1, :cond_d4

    .line 239
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_a7

    .line 240
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    :cond_a7
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b6

    .line 243
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    :cond_b6
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060130

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 247
    .restart local v3    # "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    if-eqz v4, :cond_87

    .line 248
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallbacks:Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;->setHelpText(Ljava/lang/String;)V

    goto :goto_87

    .line 250
    .end local v3    # "message":Ljava/lang/String;
    :cond_d4
    if-eqz v2, :cond_87

    .line 251
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e5

    .line 252
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mMsgFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :cond_e5
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_f4

    .line 255
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mCallFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mAlpha0Animation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    :cond_f4
    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mRoamingFrame:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->mSelectedAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_87
.end method
