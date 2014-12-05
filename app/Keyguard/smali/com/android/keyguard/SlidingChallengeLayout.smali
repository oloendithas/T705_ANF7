.class public Lcom/android/keyguard/SlidingChallengeLayout;
.super Landroid/view/ViewGroup;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;,
        Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
    }
.end annotation


# static fields
.field static final HANDLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/keyguard/SlidingChallengeLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sMotionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private isIgnoreTouch:Z

.field private mActivePointerId:I

.field private mBlockDrag:Z

.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mChallengeBottomBound:I

.field private mChallengeInteractiveExternal:Z

.field private mChallengeInteractiveInternal:Z

.field private mChallengeOffset:F

.field private mChallengeShowing:Z

.field private mChallengeShowingTargetState:Z

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mContextualWidgetsString:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistance:D

.field private mDragHandleClosedAbove:I

.field private mDragHandleClosedBelow:I

.field private mDragHandleEdgeSlop:I

.field private mDragHandleOpenAbove:I

.field private mDragHandleOpenBelow:I

.field private mDragging:Z

.field private mEdgeCaptured:Z

.field private mEnableChallengeDragging:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private final mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

.field private mExpandChallengeHandleCaptured:Z

.field private final mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

.field private mExpandChallengeView:Landroid/view/View;

.field private mFader:Landroid/animation/ObjectAnimator;

.field private mFinishBouncing:Z

.field private mFirstBorder:I

.field mFrameAnimationTarget:F

.field private mGestureStartChallengeBottom:I

.field private mGestureStartX:F

.field private mGestureStartY:F

.field mHandleAlpha:F

.field private mHandleAnimation:Landroid/animation/ObjectAnimator;

.field private mHasGlowpad:Z

.field private mHasLayout:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field private mIsFirst:Z

.field private mIsMultipleLockOn:Z

.field private mIsMusicWidgetAdded:Z

.field private mIsSecured:Z

.field private mIsWidgetEnabled:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private mNavigationView:Landroid/view/View;

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mSecondBorder:I

.field private mSecurityLockMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mStartX:F

.field private mStartY:F

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mUnlockEffect:I

.field private mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasChallengeShowing:Z

.field private mWidgetsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 161
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$1;

    const-string v1, "handleAlpha"

    invoke-direct {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    .line 178
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$2;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    .line 185
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$3;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$3;-><init>()V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v9, 0x41000000

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    const/high16 v5, 0x3f800000

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 86
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 89
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 109
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 137
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFrameAnimationTarget:F

    .line 142
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    .line 144
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsMusicWidgetAdded:Z

    .line 146
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsWidgetEnabled:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 191
    new-instance v5, Lcom/android/keyguard/SlidingChallengeLayout$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/SlidingChallengeLayout$4;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v5, Lcom/android/keyguard/SlidingChallengeLayout$5;

    invoke-direct {v5, p0}, Lcom/android/keyguard/SlidingChallengeLayout$5;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v5, Lcom/android/keyguard/SlidingChallengeLayout$6;

    invoke-direct {v5, p0}, Lcom/android/keyguard/SlidingChallengeLayout$6;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    .line 1487
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    .line 1492
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D

    .line 1493
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    .line 1494
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    .line 1499
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 1502
    new-instance v5, Lcom/android/keyguard/SlidingChallengeLayout$10;

    invoke-direct {v5, p0}, Lcom/android/keyguard/SlidingChallengeLayout$10;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

    .line 1610
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    .line 264
    new-instance v5, Landroid/widget/Scroller;

    sget-object v6, Lcom/android/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v5, p1, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    .line 266
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 267
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    .line 268
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 271
    .local v1, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c002a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    .line 273
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    .line 274
    iget v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlopSquare:I

    .line 276
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 277
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 280
    .local v0, "density":F
    mul-float v5, v9, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    .line 281
    mul-float v5, v8, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    .line 282
    mul-float v5, v9, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    .line 283
    mul-float v5, v8, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    .line 286
    const v5, 0x7f0c001c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    .line 288
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 289
    const/16 v5, 0x300

    invoke-virtual {p0, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kg_multiple_lockscreen"

    const/4 v7, -0x2

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_125

    :goto_cc
    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsMultipleLockOn:Z

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0033

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFirstBorder:I

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0034

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I

    .line 297
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    .line 298
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lockscreen_ripple_effect"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockEffect:I

    .line 301
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v3, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 302
    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecurityLockMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 304
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getContextualWidgetsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContextualWidgetsString:Ljava/lang/String;

    .line 306
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 308
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isWidgetEnabled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsWidgetEnabled:Z

    .line 309
    return-void

    :cond_125
    move v3, v4

    .line 291
    goto :goto_cc
.end method

.method static synthetic access$000(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/SlidingChallengeLayout;)Lcom/android/keyguard/sec/KeyguardEffectViewBase;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockView:Lcom/android/keyguard/sec/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/SlidingChallengeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mUnlockEffect:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/SlidingChallengeLayout;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/SlidingChallengeLayout;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/SlidingChallengeLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/SlidingChallengeLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/keyguard/SlidingChallengeLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->isIgnoreTouch:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/SlidingChallengeLayout;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/SlidingChallengeLayout;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mStartX:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/SlidingChallengeLayout;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/SlidingChallengeLayout;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # F

    .prologue
    .line 57
    iput p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mStartY:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/SlidingChallengeLayout;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/SlidingChallengeLayout;D)D
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1, "x1"    # D

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDistance:D

    return-wide p1
.end method

.method private cancelTransitionsInProgress()V
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1229
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1230
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    .line 1232
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_19

    .line 1233
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1235
    :cond_19
    return-void
.end method

.method private crossedDragHandle(FFF)Z
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "initialY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 891
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v5, :cond_7

    .line 906
    :goto_6
    return v4

    .line 895
    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    .line 896
    .local v0, "challengeTop":I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3c

    move v1, v3

    .line 899
    .local v1, "horizOk":Z
    :goto_1c
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_40

    .line 900
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3e

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_3e

    move v2, v3

    .line 906
    .local v2, "vertOk":Z
    :goto_36
    if-eqz v1, :cond_59

    if-eqz v2, :cond_59

    :goto_3a
    move v4, v3

    goto :goto_6

    .end local v1    # "horizOk":Z
    .end local v2    # "vertOk":Z
    :cond_3c
    move v1, v4

    .line 896
    goto :goto_1c

    .restart local v1    # "horizOk":Z
    :cond_3e
    move v2, v4

    .line 900
    goto :goto_36

    .line 903
    :cond_40
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_57

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_57

    move v2, v3

    .restart local v2    # "vertOk":Z
    :goto_56
    goto :goto_36

    .end local v2    # "vertOk":Z
    :cond_57
    move v2, v4

    goto :goto_56

    .restart local v2    # "vertOk":Z
    :cond_59
    move v3, v4

    .line 906
    goto :goto_3a
.end method

.method private enableHardwareLayerForChallengeView()V
    .registers 4

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1293
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1295
    :cond_f
    return-void
.end method

.method private getChallengeAlpha()F
    .registers 4

    .prologue
    const/high16 v2, 0x3f800000

    .line 605
    iget v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    sub-float v0, v1, v2

    .line 606
    .local v0, "x":F
    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getChallengeBottom()I
    .registers 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1375
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_5
.end method

.method private getChallengeMargin(Z)I
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 601
    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    goto :goto_7
.end method

.method private getContextualWidgetsString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 618
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_contextual_widget_ids"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "appWidgetIdString":Ljava/lang/String;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    .line 623
    .end local v0    # "appWidgetIdString":Ljava/lang/String;
    :goto_15
    return-object v0

    .restart local v0    # "appWidgetIdString":Ljava/lang/String;
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getDragHandleSizeAbove()I
    .registers 2

    .prologue
    .line 868
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    goto :goto_8
.end method

.method private getDragHandleSizeBelow()I
    .registers 2

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    goto :goto_8
.end method

.method private getLayoutBottom()I
    .registers 5

    .prologue
    .line 1361
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_16

    const/4 v0, 0x0

    .line 1364
    .local v0, "bottomMargin":I
    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 1366
    .local v1, "layoutBottom":I
    return v1

    .line 1361
    .end local v0    # "bottomMargin":I
    .end local v1    # "layoutBottom":I
    :cond_16
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_5
.end method

.method private getMaxChallengeBottom()I
    .registers 5

    .prologue
    .line 1268
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 1272
    :goto_5
    return v2

    .line 1269
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1270
    .local v1, "layoutBottom":I
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1272
    .local v0, "challengeHeight":I
    add-int v2, v1, v0

    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v2, v3

    goto :goto_5
.end method

.method private getMinChallengeBottom()I
    .registers 2

    .prologue
    .line 1276
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    return v0
.end method

.method private isChallengeInteractionBlocked()Z
    .registers 2

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_8

    .line 860
    :cond_7
    :goto_7
    return v1

    .line 859
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 860
    .local v0, "x":F
    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_1f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_7

    :cond_1f
    const/4 v1, 0x1

    goto :goto_7
.end method

.method private isExpandChallengeViewBeginEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 845
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_8

    .line 846
    const/4 v2, 0x0

    .line 851
    :goto_7
    return v2

    .line 849
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 850
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 851
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v2

    goto :goto_7
.end method

.method private isInChallengeView(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isInDragHandle(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPointInView(FFLandroid/view/View;)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 883
    if-nez p3, :cond_4

    .line 886
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private isWidgetEnabled()Z
    .registers 2

    .prologue
    .line 1619
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1620
    const/4 v0, 0x1

    .line 1624
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v0

    goto :goto_7
.end method

.method private makeChildMeasureSpec(II)I
    .registers 6
    .param p1, "maxSize"    # I
    .param p2, "childDimen"    # I

    .prologue
    .line 912
    packed-switch p2, :pswitch_data_16

    .line 922
    const/high16 v0, 0x40000000

    .line 923
    .local v0, "mode":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 926
    .local v1, "size":I
    :goto_9
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 914
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_e
    const/high16 v0, -0x80000000

    .line 915
    .restart local v0    # "mode":I
    move v1, p1

    .line 916
    .restart local v1    # "size":I
    goto :goto_9

    .line 918
    .end local v0    # "mode":I
    .end local v1    # "size":I
    :pswitch_12
    const/high16 v0, 0x40000000

    .line 919
    .restart local v0    # "mode":I
    move v1, p1

    .line 920
    .restart local v1    # "size":I
    goto :goto_9

    .line 912
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method private moveChallengeTo(I)Z
    .registers 10
    .param p1, "bottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 1328
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v4, :cond_b

    .line 1329
    :cond_9
    const/4 v3, 0x0

    .line 1353
    :goto_a
    return v3

    .line 1332
    :cond_b
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1333
    .local v1, "layoutBottom":I
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1335
    .local v0, "challengeHeight":I
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1338
    const/high16 v4, 0x3f800000

    sub-int v5, p1, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1340
    .local v2, "offset":F
    iput v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 1341
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_40

    iget-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v4, :cond_40

    .line 1342
    invoke-direct {p0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1345
    :cond_40
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1348
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1349
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v4, :cond_71

    .line 1350
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 1352
    :cond_71
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_a
.end method

.method private onFadeEnd(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1301
    if-nez p1, :cond_11

    .line 1302
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1305
    :cond_11
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1306
    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1307
    invoke-virtual {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1308
    return-void
.end method

.method private onFadeStart(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 1282
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    .line 1284
    if-eqz p1, :cond_f

    .line 1285
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1288
    :cond_f
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 1289
    return-void
.end method

.method private resetTouch()V
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 696
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 698
    return-void
.end method

.method private sendInitialListenerUpdates()V
    .registers 4

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_20

    .line 353
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 354
    .local v0, "challengeTop":I
    :goto_12
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-interface {v1, v2, v0}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    .line 355
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    invoke-interface {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 357
    .end local v0    # "challengeTop":I
    :cond_20
    return-void

    .line 353
    :cond_21
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private setChallengeShowing(Z)V
    .registers 5
    .param p1, "showChallenge"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 482
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-ne v0, p1, :cond_7

    .line 515
    :cond_6
    :goto_6
    return-void

    .line 485
    :cond_7
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 494
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_48

    .line 495
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 505
    :cond_48
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private shouldEnableChallengeDragging()Z
    .registers 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEnableChallengeDragging:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private showChallenge(I)V
    .registers 7
    .param p1, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1392
    const/4 v0, 0x0

    .line 1393
    .local v0, "show":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    if-le v3, v4, :cond_14

    .line 1394
    if-gez p1, :cond_12

    move v0, v1

    .line 1398
    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1399
    return-void

    :cond_12
    move v0, v2

    .line 1394
    goto :goto_e

    .line 1396
    :cond_14
    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/high16 v4, 0x3f000000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1e

    move v0, v1

    :goto_1d
    goto :goto_e

    :cond_1e
    move v0, v2

    goto :goto_1d
.end method

.method private showChallenge(ZI)V
    .registers 6
    .param p1, "show"    # Z
    .param p2, "velocity"    # I

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_9

    .line 1403
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 1413
    :cond_8
    :goto_8
    return-void

    .line 1407
    :cond_9
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v1, :cond_8

    .line 1408
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    .line 1409
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    .line 1410
    .local v0, "layoutBottom":I
    if-eqz p1, :cond_19

    .end local v0    # "layoutBottom":I
    :goto_15
    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/SlidingChallengeLayout;->animateChallengeTo(II)V

    goto :goto_8

    .restart local v0    # "layoutBottom":I
    :cond_19
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v0, v1, v2

    goto :goto_15
.end method


# virtual methods
.method animateChallengeTo(II)V
    .registers 16
    .param p1, "y"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v12, 0x3f800000

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_8

    .line 479
    :goto_7
    return-void

    .line 448
    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 450
    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 451
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    .line 452
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 453
    .local v2, "sy":I
    sub-int v4, p1, v2

    .line 454
    .local v4, "dy":I
    if-nez v4, :cond_1e

    .line 455
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    goto :goto_7

    .line 459
    :cond_1e
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 462
    .local v7, "childHeight":I
    div-int/lit8 v10, v7, 0x2

    .line 463
    .local v10, "halfHeight":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 464
    .local v9, "distanceRatio":F
    int-to-float v0, v10

    int-to-float v3, v10

    invoke-virtual {p0, v9}, Lcom/android/keyguard/SlidingChallengeLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v8, v0, v3

    .line 467
    .local v8, "distance":F
    const/4 v5, 0x0

    .line 468
    .local v5, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 469
    if-lez p2, :cond_66

    .line 470
    const/high16 v0, 0x447a0000

    int-to-float v3, p2

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    .line 475
    :goto_56
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 472
    :cond_66
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v7

    div-float v6, v0, v3

    .line 473
    .local v6, "childDelta":F
    add-float v0, v6, v12

    const/high16 v3, 0x42c80000

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_56
.end method

.method animateHandle(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_c

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 341
    :cond_c
    if-eqz p1, :cond_17

    const/high16 v0, 0x3f800000

    .line 342
    .local v0, "targetAlpha":F
    :goto_10
    iget v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_19

    .line 349
    :goto_16
    return-void

    .line 341
    .end local v0    # "targetAlpha":F
    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 345
    .restart local v0    # "targetAlpha":F
    :cond_19
    sget-object v1, Lcom/android/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    .line 346
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 348
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_16
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1434
    instance-of v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    return v0
.end method

.method completeChallengeScroll()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    .line 418
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_1b

    const/high16 v0, 0x3f800000

    :goto_c
    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    .line 419
    invoke-virtual {p0, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    .line 421
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 422
    return-void

    .line 418
    :cond_1b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 1208
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 1210
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1211
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_1c

    .line 1213
    const-string v0, "SlidingChallengeLayout"

    const-string v1, "Challenge view missing in computeScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1225
    :cond_1b
    :goto_1b
    return-void

    .line 1218
    :cond_1c
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1219
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    .line 1221
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1222
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 797
    .local v0, "action":I
    const/4 v1, 0x0

    .line 805
    .local v1, "handled":Z
    if-nez v0, :cond_c

    .line 807
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 808
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 811
    :cond_c
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    if-nez v2, :cond_26

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->isExpandChallengeViewBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 813
    :cond_26
    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 816
    :cond_32
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_52

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_52

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v2

    if-eqz v2, :cond_52

    if-nez v1, :cond_52

    .line 818
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 821
    :cond_52
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    if-eqz v2, :cond_72

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v2, :cond_72

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_64

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_64
    if-nez v1, :cond_72

    .line 829
    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 832
    :cond_72
    if-nez v1, :cond_80

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_80

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    if-nez v2, :cond_80

    .line 833
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 836
    :cond_80
    const/4 v2, 0x1

    if-eq v0, v2, :cond_86

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8a

    .line 837
    :cond_86
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    .line 838
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeHandleCaptured:Z

    .line 841
    :cond_8a
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 400
    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v0

    .line 401
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 402
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1184
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1195
    return-void
.end method

.method public fadeChallenge(Z)V
    .registers 8
    .param p1, "show"    # Z

    .prologue
    .line 1246
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_34

    .line 1248
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    .line 1249
    if-eqz p1, :cond_35

    const/high16 v0, 0x3f800000

    .line 1250
    .local v0, "alpha":F
    :goto_b
    if-eqz p1, :cond_37

    const/16 v1, 0xa0

    .line 1251
    .local v1, "duration":I
    :goto_f
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    .line 1252
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/keyguard/SlidingChallengeLayout$9;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$9;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1262
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1263
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1265
    .end local v0    # "alpha":F
    .end local v1    # "duration":I
    :cond_34
    return-void

    .line 1249
    :cond_35
    const/4 v0, 0x0

    goto :goto_b

    .line 1250
    .restart local v0    # "alpha":F
    :cond_37
    const/16 v1, 0x64

    goto :goto_f
.end method

.method public fadeInChallenge()V
    .registers 2

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1239
    return-void
.end method

.method public fadeOutChallenge()V
    .registers 2

    .prologue
    .line 1242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    .line 1243
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1429
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1417
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1422
    instance-of v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;)V

    :goto_b
    return-object v0

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getBouncerAnimationDuration()I
    .registers 2

    .prologue
    .line 536
    const/16 v0, 0xfa

    return v0
.end method

.method public getMaxChallengeTop()I
    .registers 5

    .prologue
    .line 1311
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    .line 1315
    :goto_5
    return v2

    .line 1313
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    .line 1314
    .local v1, "layoutBottom":I
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1315
    .local v0, "challengeHeight":I
    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    goto :goto_5
.end method

.method public hideBouncer()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 569
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_6

    .line 598
    :goto_5
    return-void

    .line 570
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x2000001

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 571
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    if-nez v1, :cond_18

    invoke-virtual {p0, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 572
    :cond_18
    iput-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 574
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3c

    .line 575
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 576
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 577
    new-instance v1, Lcom/android/keyguard/SlidingChallengeLayout$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SlidingChallengeLayout$8;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 588
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 590
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_3c
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_47

    .line 591
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    .line 593
    :cond_47
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_50

    .line 594
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    .line 597
    :cond_50
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->hideBouncer()V

    goto :goto_5
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isMusicWidgetAdded()Z
    .registers 2

    .prologue
    .line 1633
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsMusicWidgetAdded:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 375
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 379
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 381
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 383
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 629
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v6

    if-nez v6, :cond_10

    .line 682
    :cond_f
    :goto_f
    return v5

    .line 632
    :cond_10
    iget-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecurityLockMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v6, v7, :cond_24

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContextualWidgetsString:Ljava/lang/String;

    if-nez v6, :cond_24

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isMusicWidgetAdded()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 635
    :cond_24
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_2e

    .line 636
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 638
    :cond_2e
    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 641
    .local v0, "action":I
    packed-switch v0, :pswitch_data_ba

    .line 677
    :cond_3a
    :goto_3a
    iget-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v6, :cond_44

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 678
    :cond_44
    iput v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 679
    iput-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 682
    :cond_48
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    goto :goto_f

    .line 643
    :pswitch_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 645
    iput-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_3a

    .line 650
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_3a

    .line 654
    :pswitch_5e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 655
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_63
    if-ge v2, v1, :cond_3a

    .line 656
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 657
    .local v3, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 658
    .local v4, "y":F
    iget-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v6, :cond_a6

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    if-ne v6, v8, :cond_a6

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v3, v4, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->shouldEnableChallengeDragging()Z

    move-result v6

    if-nez v6, :cond_8e

    :cond_83
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v6

    if-eqz v6, :cond_a6

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a6

    .line 663
    :cond_8e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 664
    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 665
    iput v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 666
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 667
    iput-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 668
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    .line 655
    :cond_a3
    :goto_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 669
    :cond_a6
    iget-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v6, :cond_a3

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v6

    if-eqz v6, :cond_a3

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->shouldEnableChallengeDragging()Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 671
    iput-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_a3

    .line 641
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_5a
        :pswitch_5e
        :pswitch_5a
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    .prologue
    .line 1108
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 1109
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 1110
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 1111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 1112
    sub-int v8, p4, p2

    .line 1113
    sub-int v9, p5, p3

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 1116
    const/4 v1, 0x0

    move v3, v1

    :goto_1a
    if-ge v3, v10, :cond_185

    .line 1117
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1119
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 1116
    :goto_2a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    .line 1121
    :cond_2e
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1123
    iget v2, v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v12, 0x2

    if-ne v2, v12, :cond_78

    .line 1126
    add-int v2, v4, v8

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    .line 1127
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 1128
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 1129
    div-int/lit8 v14, v12, 0x2

    sub-int/2addr v2, v14

    .line 1130
    sub-int v14, v9, v7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v14, v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v14

    .line 1133
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v14, v13, v14

    int-to-float v14, v14

    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v1, v14

    .line 1135
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v14

    invoke-virtual {v11, v14}, Landroid/view/View;->setAlpha(F)V

    .line 1136
    sub-int v13, v1, v13

    add-int/2addr v12, v2

    invoke-virtual {v11, v2, v13, v12, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2a

    .line 1137
    :cond_78
    iget v2, v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v12, 0x6

    if-ne v2, v12, :cond_a5

    .line 1138
    add-int v2, v4, v8

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    .line 1139
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v2, v12

    .line 1140
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v2

    .line 1141
    sub-int v13, v9, v7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v13, v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v13

    .line 1142
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v1, v13

    .line 1143
    invoke-virtual {v11, v2, v13, v12, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_2a

    .line 1144
    :cond_a5
    iget v2, v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v12, 0x4

    if-ne v2, v12, :cond_b9

    .line 1146
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v11, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2a

    .line 1147
    :cond_b9
    iget v2, v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v12, 0x8

    if-ne v2, v12, :cond_e1

    .line 1148
    add-int v2, v4, v8

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    .line 1149
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v2, v12

    .line 1150
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v2

    .line 1151
    sub-int v13, v9, v7

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v13, v1

    .line 1152
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int v13, v1, v13

    .line 1153
    invoke-virtual {v11, v2, v13, v12, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2a

    .line 1154
    :cond_e1
    iget v2, v1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v12, 0x9

    if-ne v2, v12, :cond_162

    .line 1155
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-nez v1, :cond_fb

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1156
    :cond_fb
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    invoke-virtual {v11, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2a

    .line 1158
    :cond_111
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1160
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_154

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v12, 0x7f0c00bc

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1165
    :goto_12d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00bb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1166
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/keyguard/sec/ContextualEventManager;->isClockTop()Z

    move-result v13

    if-eqz v13, :cond_160

    :goto_146
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v11, v12, v1, v2, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2a

    .line 1163
    :cond_154
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v12, 0x7f0c00ba

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_12d

    :cond_160
    move v1, v2

    .line 1166
    goto :goto_146

    .line 1170
    :cond_162
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v14

    invoke-virtual {v11, v2, v1, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2a

    .line 1177
    :cond_185
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v1, :cond_190

    .line 1178
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    .line 1180
    :cond_190
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .prologue
    .line 931
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000

    if-ne v0, v1, :cond_10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000

    if-eq v0, v1, :cond_18

    .line 933
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SlidingChallengeLayout must be measured with an exact size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_18
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 937
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 938
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 940
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v1

    .line 941
    const/high16 v0, 0x40000000

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 944
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 945
    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    .line 950
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 954
    const/4 v0, 0x0

    move v3, v0

    :goto_4b
    if-ge v3, v8, :cond_1a0

    .line 955
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 956
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 957
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v9, 0x2

    if-ne v1, v9, :cond_c9

    .line 958
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_68

    .line 959
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_68
    instance-of v1, v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_74

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    move-object v1, v2

    .line 966
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 967
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq v1, v5, :cond_87

    .line 968
    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v1, :cond_c5

    const/4 v1, 0x0

    :goto_84
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :cond_87
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v1, :cond_c1

    .line 973
    const v1, 0x7f0b00bd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c7

    const/4 v1, 0x1

    :goto_95
    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 974
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    .line 975
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeMargin(Z)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 977
    const v0, 0x7f0b00e8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 979
    :cond_b8
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v1, 0x0

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 954
    :cond_c1
    :goto_c1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4b

    .line 968
    :cond_c5
    const/4 v1, 0x4

    goto :goto_84

    .line 973
    :cond_c7
    const/4 v1, 0x0

    goto :goto_95

    .line 982
    :cond_c9
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v9, 0x6

    if-ne v1, v9, :cond_10b

    .line 983
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_da

    .line 984
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There may only be one child with layout_childType=\"expandChallengeHandle\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_da
    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    .line 989
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eq v0, v7, :cond_c1

    .line 990
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_101

    const/4 v0, 0x4

    :goto_e7
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_f5

    .line 992
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 994
    :cond_f5
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v0, :cond_103

    .line 995
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c1

    .line 990
    :cond_101
    const/4 v0, 0x0

    goto :goto_e7

    .line 997
    :cond_103
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_c1

    .line 1000
    :cond_10b
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v9, 0x8

    if-ne v1, v9, :cond_12c

    .line 1001
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_11d

    .line 1002
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There may only be one child with layout_childType=\"navigation\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_11d
    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    .line 1007
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_12a

    const/4 v0, 0x4

    :goto_126
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    :cond_12a
    const/4 v0, 0x0

    goto :goto_126

    .line 1008
    :cond_12c
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v9, 0x4

    if-eq v1, v9, :cond_137

    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v9, 0xa

    if-ne v1, v9, :cond_13b

    .line 1009
    :cond_137
    invoke-virtual {p0, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrimView(Landroid/view/View;)V

    goto :goto_c1

    .line 1010
    :cond_13b
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v9, 0x5

    if-ne v1, v9, :cond_144

    .line 1011
    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    goto/16 :goto_c1

    .line 1012
    :cond_144
    iget v1, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/16 v9, 0x9

    if-ne v1, v9, :cond_c1

    .line 1014
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_156

    .line 1015
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_156
    instance-of v1, v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_162

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_162
    move-object v1, v2

    .line 1020
    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 1021
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq v1, v5, :cond_175

    .line 1022
    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v1, :cond_19e

    const/4 v1, 0x0

    :goto_172
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    :cond_175
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v1, :cond_c1

    .line 1027
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1028
    const v0, 0x7f0b00e8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_193

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1030
    :cond_193
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v1, 0x0

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v1, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c1

    .line 1022
    :cond_19e
    const/4 v1, 0x4

    goto :goto_172

    .line 1039
    :cond_1a0
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1ed

    .line 1047
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1048
    if-eqz v1, :cond_289

    .line 1049
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1050
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v1, v2, v1

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1052
    sub-int/2addr v1, v4

    .line 1054
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-nez v2, :cond_1d8

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v2

    if-eqz v2, :cond_201

    .line 1055
    :cond_1d8
    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v1, v2, v1

    .line 1063
    :goto_1dc
    if-lez v1, :cond_289

    .line 1064
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->makeChildMeasureSpec(II)I

    move-result v4

    .line 1067
    :goto_1e4
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1071
    :cond_1ed
    const/4 v0, 0x0

    move v7, v0

    :goto_1ef
    if-ge v7, v8, :cond_282

    .line 1072
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1073
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_23e

    .line 1071
    :cond_1fd
    :goto_1fd
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1ef

    .line 1057
    :cond_201
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const v3, 0x7f0b00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21c

    .line 1058
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v1, v2, v1

    goto :goto_1dc

    .line 1060
    :cond_21c
    if-lez v1, :cond_22f

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v4, v2

    iget v3, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1dc

    :cond_22f
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v4, v1

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1dc

    .line 1077
    :cond_23e
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq v1, v0, :cond_1fd

    .line 1082
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    .line 1083
    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_27a

    .line 1084
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_286

    .line 1089
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1090
    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int v0, v3, v0

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    .line 1092
    const/high16 v3, 0x40000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1094
    const/high16 v3, 0x40000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_272
    move v4, v0

    .line 1102
    :goto_273
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1fd

    .line 1097
    :cond_27a
    iget v0, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_283

    move v4, p2

    move v2, p1

    .line 1100
    goto :goto_273

    .line 1104
    :cond_282
    return-void

    :cond_283
    move v4, v6

    move v2, p1

    goto :goto_273

    :cond_286
    move v0, v6

    move v2, p1

    goto :goto_272

    :cond_289
    move v4, v6

    goto/16 :goto_1e4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1202
    const/4 v0, 0x1

    .line 1204
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 702
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v9

    if-nez v9, :cond_f

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v9

    if-nez v9, :cond_f

    .line 784
    :cond_e
    :goto_e
    return v7

    .line 706
    :cond_f
    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mSecurityLockMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v9, v10, :cond_23

    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContextualWidgetsString:Ljava/lang/String;

    if-nez v9, :cond_23

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isMusicWidgetAdded()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 709
    :cond_23
    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_2d

    .line 710
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 712
    :cond_2d
    iget-object v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 715
    .local v0, "action":I
    packed-switch v0, :pswitch_data_11c

    :cond_39
    :goto_39
    :pswitch_39
    move v7, v8

    .line 784
    goto :goto_e

    .line 717
    :pswitch_3b
    iput-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    goto :goto_39

    .line 723
    :pswitch_4a
    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v9, :cond_57

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v9

    if-nez v9, :cond_57

    .line 724
    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 726
    :cond_57
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_39

    .line 730
    :pswitch_5b
    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v7, v9, :cond_39

    .line 734
    :pswitch_67
    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_87

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_87

    .line 735
    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget v10, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 736
    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {v7, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    .line 738
    :cond_87
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_39

    .line 742
    :pswitch_8b
    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-nez v9, :cond_e3

    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v9, :cond_e3

    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v9, :cond_e3

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 744
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9c
    if-ge v2, v1, :cond_e3

    .line 745
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 746
    .local v5, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 748
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v9

    if-eqz v9, :cond_b0

    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsMultipleLockOn:Z

    if-nez v9, :cond_c3

    :cond_b0
    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v5, v6, v9}, Lcom/android/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v9

    if-nez v9, :cond_c3

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v9

    if-eqz v9, :cond_fb

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_fb

    :cond_c3
    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_fb

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v9

    if-nez v9, :cond_fb

    .line 752
    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    .line 753
    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    .line 754
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    .line 755
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v9

    iput v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    .line 756
    iput-boolean v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    .line 763
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_e3
    iget-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v9, :cond_39

    .line 766
    invoke-virtual {p0, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    .line 768
    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 769
    .local v3, "index":I
    if-gez v3, :cond_fe

    .line 772
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    .line 773
    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    move v7, v8

    .line 774
    goto/16 :goto_e

    .line 744
    .end local v3    # "index":I
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_fb
    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    .line 776
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .restart local v3    # "index":I
    :cond_fe
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 777
    .restart local v6    # "y":F
    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    sub-float v7, v6, v7

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v9

    iget v10, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 780
    .local v4, "pos":F
    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    float-to-int v9, v4

    add-int/2addr v7, v9

    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    goto/16 :goto_39

    .line 715
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_67
        :pswitch_8b
        :pswitch_4a
        :pswitch_39
        :pswitch_39
        :pswitch_5b
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_b

    .line 390
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->hideBouncer()V

    .line 392
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 393
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "allowIntercept"    # Z

    .prologue
    .line 614
    return-void
.end method

.method public setChallengeInteractive(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 334
    :cond_b
    return-void
.end method

.method public setEnableChallengeDragging(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEnableChallengeDragging:Z

    .line 313
    return-void
.end method

.method public setHandleAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 325
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mNavigationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 327
    :cond_12
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 317
    return-void
.end method

.method public setIsSecured(Z)V
    .registers 2
    .param p1, "secured"    # Z

    .prologue
    .line 1613
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsSecured:Z

    .line 1614
    return-void
.end method

.method public setMusicWidgetAdded(Z)V
    .registers 2
    .param p1, "added"    # Z

    .prologue
    .line 1629
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsMusicWidgetAdded:Z

    .line 1630
    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    .line 368
    return-void
.end method

.method public setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    .line 361
    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v0, :cond_9

    .line 362
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->sendInitialListenerUpdates()V

    .line 364
    :cond_9
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .registers 4
    .param p1, "scrim"    # Landroid/view/View;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :cond_a
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_27

    .line 430
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    :cond_27
    return-void

    .line 430
    :cond_28
    const/16 v0, 0x8

    goto :goto_17
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-eq v0, p1, :cond_19

    .line 407
    iput p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    .line 409
    if-nez p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->animateHandle(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v0, :cond_19

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    .line 414
    :cond_19
    return-void

    .line 409
    :cond_1a
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 1608
    return-void
.end method

.method public showBouncer()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 541
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFinishBouncing:Z

    if-nez v1, :cond_6

    .line 565
    :cond_5
    :goto_5
    return-void

    .line 542
    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_5

    .line 543
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 544
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    .line 545
    iput-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    .line 546
    invoke-virtual {p0, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    .line 547
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_40

    .line 548
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 549
    .local v0, "anim":Landroid/animation/Animator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 550
    new-instance v1, Lcom/android/keyguard/SlidingChallengeLayout$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SlidingChallengeLayout$7;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 558
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_40
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_4b

    .line 559
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    .line 562
    :cond_4b
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_5

    .line 563
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_5
.end method

.method public showChallenge(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 1383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    .line 1384
    if-nez p1, :cond_9

    .line 1387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    .line 1389
    :cond_9
    return-void
.end method
