.class public Lcom/android/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# instance fields
.field private mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mExpandChallengeView:Landroid/widget/ImageButton;

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private final mPauseListener:Landroid/animation/Animator$AnimatorListener;

.field private final mResumeListener:Landroid/animation/Animator$AnimatorListener;

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 6
    .param p1, "hostView"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 40
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 48
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 51
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 52
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 53
    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 55
    iput v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 59
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    .line 65
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    .line 371
    new-instance v0, Lcom/android/keyguard/KeyguardViewStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewStateManager$3;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardWidgetPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardViewStateManager;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I
    .registers 6
    .param p1, "frame"    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p2, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .registers 12
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;
    .param p3, "pt"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 274
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 275
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 277
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 278
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 279
    .local v0, "vX":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 281
    .local v1, "vY":I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 282
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 283
    return-void
.end method

.method private updateEdgeSwiping()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_16

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    .line 96
    :cond_16
    :goto_16
    return-void

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_16
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_e

    .line 287
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->userActivity()V

    .line 290
    :cond_e
    return-void
.end method


# virtual methods
.method public fadeInSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mResumeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 149
    return-void
.end method

.method public fadeOutSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPauseListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 144
    return-void
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    .line 138
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 109
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 102
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAddView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 422
    :cond_9
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .registers 4
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_c

    .line 399
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_b

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 409
    :cond_b
    :goto_b
    return-void

    .line 402
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_15

    .line 403
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 404
    :cond_15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 406
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->resetFocusedMagazineCardState()V

    goto :goto_b
.end method

.method public onPageBeginMoving()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_1e

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 155
    .local v0, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 160
    .end local v0    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_1e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2c

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V

    .line 164
    :cond_2c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_39

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iput-object v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 168
    :cond_39
    return-void
.end method

.method public onPageBeginWarp()V
    .registers 4

    .prologue
    .line 245
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    .line 246
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 247
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public onPageEndMoving()V
    .registers 2

    .prologue
    .line 171
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 172
    return-void
.end method

.method public onPageEndWarp()V
    .registers 4

    .prologue
    .line 251
    const/16 v1, 0xa0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    .line 252
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "frame":Landroid/view/View;
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .end local v0    # "frame":Landroid/view/View;
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 11
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v7, 0x1

    .line 206
    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v5, p2, :cond_6

    .line 242
    :cond_5
    :goto_5
    return-void

    .line 208
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v5, :cond_4a

    .line 209
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    .line 210
    .local v4, "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v4, :cond_2b

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, v6, :cond_2b

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v6

    if-eq v5, v6, :cond_2b

    .line 212
    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 215
    :cond_2b
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 216
    .local v3, "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 217
    .local v0, "challengeOverlapping":Z
    if-eqz v0, :cond_4a

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v5

    if-nez v5, :cond_4a

    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v5, p2, :cond_4a

    instance-of v5, p1, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    if-nez v5, :cond_4a

    .line 219
    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 223
    .end local v0    # "challengeOverlapping":Z
    .end local v3    # "newCurPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v4    # "prevPage":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_4a
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 224
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v5, :cond_55

    .line 225
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 228
    :cond_55
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v5}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v5

    if-nez v5, :cond_5

    .line 231
    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 232
    .local v2, "isCameraPage":Z
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 234
    .local v1, "handleAnim":Landroid/graphics/drawable/AnimationDrawable;
    if-nez v2, :cond_5

    .line 238
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 239
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_5
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 11
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v7, -0x1

    .line 175
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_36

    .line 176
    instance-of v2, p1, Lcom/android/keyguard/CameraWidgetFrame;

    .line 177
    .local v2, "isCameraPage":Z
    if-eqz v2, :cond_1b

    move-object v0, p1

    .line 178
    check-cast v0, Lcom/android/keyguard/CameraWidgetFrame;

    .line 179
    .local v0, "camera":Lcom/android/keyguard/CameraWidgetFrame;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/keyguard/CameraWidgetFrame;->setUseFastTransition(Z)V

    .line 181
    .end local v0    # "camera":Lcom/android/keyguard/CameraWidgetFrame;
    :cond_1b
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 182
    .local v4, "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    if-nez v2, :cond_55

    const/4 v5, 0x1

    :goto_22
    invoke-virtual {v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 183
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 184
    .local v1, "currentFlags":I
    if-eqz v2, :cond_57

    const/high16 v5, 0x2000000

    or-int v3, v1, v5

    .line 186
    .local v3, "newFlags":I
    :goto_31
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 191
    .end local v1    # "currentFlags":I
    .end local v2    # "isCameraPage":Z
    .end local v3    # "newFlags":I
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_36
    iget v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v6, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v6

    if-ne v5, v6, :cond_52

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    instance-of v5, v5, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v5, :cond_52

    .line 193
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    check-cast v4, Lcom/android/keyguard/SlidingChallengeLayout;

    .line 194
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    invoke-virtual {v4}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 195
    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 197
    .end local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_52
    iput v7, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 198
    return-void

    .line 182
    .restart local v2    # "isCameraPage":Z
    .restart local v4    # "scl":Lcom/android/keyguard/SlidingChallengeLayout;
    :cond_55
    const/4 v5, 0x0

    goto :goto_22

    .line 184
    .restart local v1    # "currentFlags":I
    :cond_57
    const v5, -0x2000001

    and-int v3, v1, v5

    goto :goto_31
.end method

.method public onRemoveView(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigation()V

    .line 428
    :cond_9
    return-void
.end method

.method public onScrollPositionChanged(FI)V
    .registers 6
    .param p1, "scrollPosition"    # F
    .param p2, "challengeTop"    # I

    .prologue
    .line 362
    iput p2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v1, :cond_1e

    .line 364
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 365
    .local v0, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_1e

    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1e

    .line 366
    iget v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 369
    .end local v0    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_1e
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 7
    .param p1, "scrollState"    # I

    .prologue
    const/4 v4, 0x3

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-nez v2, :cond_a

    .line 358
    :cond_9
    :goto_9
    return-void

    .line 296
    :cond_a
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 298
    .local v0, "challengeOverlapping":Z
    if-nez p1, :cond_63

    .line 299
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 300
    .local v1, "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 302
    if-nez v0, :cond_2c

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_55

    .line 304
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 305
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 310
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 313
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 315
    :cond_39
    if-eq p1, v4, :cond_3e

    .line 316
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 318
    :cond_3e
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 320
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 321
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 325
    :goto_4f
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 357
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_52
    :goto_52
    iput p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_9

    .line 307
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_55
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_2c

    .line 323
    :cond_5d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_4f

    .line 326
    .end local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_63
    iget v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_52

    .line 330
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 331
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 332
    .restart local v1    # "frame":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 335
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 336
    if-eq p1, v4, :cond_86

    .line 337
    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 342
    :cond_86
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 344
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 345
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 355
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_52

    .line 348
    :cond_9e
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 350
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/keyguard/PagedView;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_98
.end method

.method public setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/android/keyguard/ChallengeLayout;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 85
    return-void
.end method

.method public setExpandChallengeView(Landroid/widget/ImageButton;)V
    .registers 2
    .param p1, "expandChallengeView"    # Landroid/widget/ImageButton;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mExpandChallengeView:Landroid/widget/ImageButton;

    .line 432
    return-void
.end method

.method public setKeyguardWidgetNavigation(Lcom/android/keyguard/sec/KeyguardWidgetNavigation;)V
    .registers 2
    .param p1, "keyguardWidgetNavigation"    # Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetNavigation:Lcom/android/keyguard/sec/KeyguardWidgetNavigation;

    .line 416
    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .registers 2
    .param p1, "pagedView"    # Lcom/android/keyguard/KeyguardWidgetPager;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    .line 79
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 80
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V
    .registers 2
    .param p1, "container"    # Lcom/android/keyguard/KeyguardSecurityView;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;

    .line 114
    return-void
.end method

.method public showBouncer(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_2a

    const v1, 0x7f06007d

    :goto_f
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, "what":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardHostView;->announceCurrentSecurityMethod()V

    .line 122
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/PagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 133
    :cond_29
    :goto_29
    return-void

    .line 117
    .end local v0    # "what":Ljava/lang/CharSequence;
    :cond_2a
    const v1, 0x7f06007e

    goto :goto_f

    .line 126
    .restart local v0    # "what":Ljava/lang/CharSequence;
    :cond_2e
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    if-eqz v1, :cond_29

    .line 127
    if-eqz p1, :cond_3a

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->showBouncer()V

    goto :goto_29

    .line 130
    :cond_3a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/keyguard/ChallengeLayout;->hideBouncer()V

    goto :goto_29
.end method

.method public showUsabilityHints()V
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/KeyguardViewStateManager$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardViewStateManager$4;-><init>(Lcom/android/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    :cond_19
    return-void
.end method
