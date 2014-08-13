.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "PhoneStatusBarTransitions.java"


# static fields
.field private static final ICON_ALPHA_WHEN_LIGHTS_OUT_BATTERY_CLOCK:F = 0.5f

.field private static final ICON_ALPHA_WHEN_LIGHTS_OUT_NON_BATTERY_CLOCK:F = 0.0f

.field private static final ICON_ALPHA_WHEN_NOT_OPAQUE:F = 1.0f


# instance fields
.field private mBattery:Landroid/view/View;

.field private mBatteyText:Landroid/widget/TextView;

.field private mClock:Landroid/view/View;

.field private mCurrentAnimation:Landroid/animation/Animator;

.field private final mIconAlphaWhenOpaque:F

.field private mLeftSide:Landroid/view/View;

.field private mSignalCluster:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;

.field private final mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    const/4 v2, 0x1

    .line 41
    const v1, 0x7f02016a

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d002a

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    .line 46
    return-void
.end method

.method private applyMode(IZ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x3

    .line 94
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    if-nez v3, :cond_0

    .line 123
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v1

    .line 96
    .local v1, "newAlpha":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getBatteryClockAlpha(I)F

    move-result v2

    .line 97
    .local v2, "newAlphaBC":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 100
    :cond_1
    if-eqz p2, :cond_3

    .line 101
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 102
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const/4 v3, 0x6

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBatteyText:Landroid/widget/TextView;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {p0, v5, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 110
    if-ne p1, v6, :cond_2

    .line 111
    const-wide/16 v3, 0x2ee

    invoke-virtual {v0, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 113
    :cond_2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 114
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mCurrentAnimation:Landroid/animation/Animator;

    goto :goto_0

    .line 116
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBatteyText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 121
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private getBatteryClockAlpha(I)F
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 79
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f000000

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->getNonBatteryClockAlphaFor(I)F

    move-result v0

    goto :goto_0
.end method

.method private getNonBatteryClockAlphaFor(I)F
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 74
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    goto :goto_0
.end method

.method private isOpaque(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 84
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateTransitionTo(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "toAlpha"    # F

    .prologue
    .line 70
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBatteyText:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mLeftSide:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mStatusIcons:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mSignalCluster:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBattery:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mBatteyText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mClock:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->mIconAlphaWhenOpaque:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 65
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    .line 67
    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 90
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;->applyMode(IZ)V

    .line 91
    return-void
.end method
