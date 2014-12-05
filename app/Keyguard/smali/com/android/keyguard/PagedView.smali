.class public abstract Lcom/android/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/keyguard/PagedView$SavedState;,
        Lcom/android/keyguard/PagedView$ScrollInterpolator;,
        Lcom/android/keyguard/PagedView$PageSwitchListener;
    }
.end annotation


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field private mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

.field private mAirGestureMonitorCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnPageBeginWarpCalled:Z

.field private mOnPageEndWarpCalled:Z

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 291
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 117
    iput v5, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 131
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 147
    iput v4, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 148
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 157
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountX:I

    .line 158
    iput v4, p0, Lcom/android/keyguard/PagedView;->mCellCountY:I

    .line 159
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    .line 161
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    .line 170
    iput v8, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    .line 174
    iput v5, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 181
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mContentIsRefreshable:Z

    .line 184
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    .line 188
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    .line 192
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 197
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 212
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    .line 217
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    .line 218
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    .line 219
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 220
    const/16 v2, 0x12c

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    .line 221
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    .line 222
    const-wide/16 v2, 0x96

    iput-wide v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    .line 223
    iput v8, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 227
    iput v5, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 229
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 234
    iput v7, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    .line 239
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 240
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 241
    iput v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 244
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    .line 245
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    .line 246
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 247
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    .line 250
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    .line 251
    const v2, 0x3d0f5c29

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    .line 253
    const/high16 v2, 0x42820000

    iput v2, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    .line 254
    const/16 v2, -0x578

    iput v2, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 256
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 257
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    .line 258
    const/16 v2, 0x15e

    iput v2, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    .line 264
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 267
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 268
    iput v5, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 2066
    new-instance v2, Lcom/android/keyguard/PagedView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$2;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 2774
    new-instance v2, Lcom/android/keyguard/PagedView$13;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$13;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2784
    new-instance v2, Lcom/android/keyguard/PagedView$14;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$14;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 2882
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2889
    new-instance v2, Lcom/android/keyguard/PagedView$15;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$15;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitorCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    .line 292
    sget-object v2, Lcom/android/keyguard/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 294
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 295
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 297
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 302
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0c002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    .line 303
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    .line 306
    invoke-virtual {p0, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->init()V

    .line 308
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/PagedView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/PagedView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PagedView;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/PagedView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/PagedView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/PagedView;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PagedView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/PagedView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/PagedView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/PagedView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1748
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1750
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1751
    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "animate"    # Z

    .prologue
    .line 2829
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2830
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 2831
    iget v2, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2833
    .local v1, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 2834
    .local v0, "interp":Landroid/view/animation/AccelerateInterpolator;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz p2, :cond_33

    const-wide/16 v2, 0x96

    :goto_29
    invoke-virtual {v4, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2841
    .end local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .end local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_32
    return-void

    .line 2834
    .restart local v0    # "interp":Landroid/view/animation/AccelerateInterpolator;
    .restart local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_33
    const-wide/16 v2, 0x0

    goto :goto_29
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 2813
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v2, :cond_3c

    .line 2814
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    .line 2815
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 2816
    iget v2, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2818
    .local v1, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 2819
    .local v0, "interp":Landroid/view/animation/DecelerateInterpolator;
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    .line 2820
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    iget v3, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x96

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2825
    .end local v0    # "interp":Landroid/view/animation/DecelerateInterpolator;
    .end local v1    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_3c
    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 2794
    if-eqz p2, :cond_23

    .line 2797
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2798
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2800
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    .line 2801
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2805
    :goto_22
    return-void

    .line 2803
    :cond_23
    const-string v0, "canceled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    goto :goto_22
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "dragView"    # Landroid/view/View;

    .prologue
    .line 2505
    new-instance v0, Lcom/android/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/PagedView$9;-><init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private dispatchOnPageBeginWarp()V
    .registers 2

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    if-nez v0, :cond_a

    .line 511
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginWarp()V

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 514
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 515
    return-void
.end method

.method private dispatchOnPageEndWarp()V
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    if-nez v0, :cond_a

    .line 519
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndWarp()V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    .line 522
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    .line 523
    return-void
.end method

.method private getPageSnapDuration()I
    .registers 2

    .prologue
    .line 1850
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa0

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x2ee

    goto :goto_8
.end method

.method private isAnimatingWarpPage()Z
    .registers 2

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .registers 6

    .prologue
    .line 2446
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 2447
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2449
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_63

    .line 2451
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2453
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2454
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v1

    mul-float/2addr v1, v3

    div-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2456
    float-to-double v1, v1

    iget v3, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_63

    .line 2460
    :goto_62
    return-object v0

    :cond_63
    const/4 v0, 0x0

    goto :goto_62
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2654
    .line 2656
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v1, :cond_5b

    .line 2657
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2658
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2659
    if-eqz v0, :cond_19

    .line 2660
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2662
    :cond_19
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2663
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2664
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 2666
    int-to-float v0, p1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p1, v0

    .line 2667
    int-to-float v0, p2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 2669
    :cond_55
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 2671
    :cond_5b
    return v0
.end method

.method private isTouchPointInCurrentPage(II)Z
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1101
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1102
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2c

    .line 1103
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1105
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    .line 1107
    :cond_2c
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1096
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2677
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2683
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2684
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2685
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2686
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "scaleY"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2689
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2691
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2692
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2693
    new-array v3, v6, [Landroid/animation/Animator;

    const-string v4, "alpha"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2695
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2697
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006c

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2700
    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v0

    .line 2702
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2703
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2704
    iget v1, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2705
    new-instance v1, Lcom/android/keyguard/PagedView$12;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$12;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2710
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 2712
    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2713
    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .registers 2

    .prologue
    .line 2284
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2285
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_16

    .line 2287
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2290
    :cond_16
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 1761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1763
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1764
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_35

    .line 1768
    if-nez v0, :cond_36

    const/4 v0, 0x1

    .line 1769
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1770
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1771
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1772
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1773
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_35

    .line 1774
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1777
    :cond_35
    return-void

    .line 1768
    :cond_36
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private overScrollInfluenceCurve(F)F
    .registers 4
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 1336
    sub-float/2addr p1, v1

    .line 1337
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 1755
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1756
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1758
    :cond_c
    return-void
.end method

.method private resetPageWarp()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 542
    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 543
    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 544
    return-void
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1708
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    .line 1709
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->endReordering()V

    .line 1710
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1711
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1712
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1713
    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    .line 1246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    .line 1247
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    .line 1248
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    .line 1249
    .local v1, "p":[F
    aget v3, v1, v6

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1250
    aget v3, v1, v7

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1251
    iput v5, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1252
    iput v5, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1253
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1256
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    .line 1257
    .local v0, "leftEdgeBoundary":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    .line 1258
    .local v2, "rightEdgeBoundary":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_57

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_59

    .line 1259
    :cond_57
    iput-boolean v7, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    .line 1261
    :cond_59
    return-void
.end method

.method private setTouchState(I)V
    .registers 3
    .param p1, "touchState"    # I

    .prologue
    .line 1226
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_9

    .line 1228
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchStateChanged(I)V

    .line 1229
    iput p1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    .line 1231
    :cond_9
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1294
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1295
    .local v0, "pointerIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 1305
    :goto_9
    return-void

    .line 1297
    :cond_a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1298
    .local v1, "x":F
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1299
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1300
    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1301
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    .line 1302
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1304
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_9
.end method

.method private updateScrollingIndicator()V
    .registers 3

    .prologue
    .line 2150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 2160
    :cond_7
    :goto_7
    return-void

    .line 2151
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2153
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2154
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 2155
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2157
    :cond_18
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_7

    .line 2158
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_7
.end method

.method private updateScrollingIndicatorPosition()V
    .registers 15

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_7

    .line 2186
    :cond_6
    :goto_6
    return-void

    .line 2164
    :cond_7
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 2165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2166
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v8

    .line 2167
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2168
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2169
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2170
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2173
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2174
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2175
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2176
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_84

    .line 2177
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_7d

    .line 2178
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2179
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    .line 2185
    :cond_7d
    :goto_7d
    iget-object v10, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_6

    .line 2182
    :cond_84
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2183
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_7d
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .registers 8
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1341
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    .line 1345
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1347
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_11

    .line 1363
    :goto_10
    return-void

    .line 1350
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 1351
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1354
    :cond_20
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1355
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_38

    .line 1356
    iput v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1357
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    .line 1362
    :goto_34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_10

    .line 1359
    :cond_38
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1360
    iget v3, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/View;->scrollTo(II)V

    goto :goto_34
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 1037
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1039
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 1040
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_28

    .line 1041
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1048
    :cond_28
    :goto_28
    return-void

    .line 1043
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 1044
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 1045
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_28
.end method

.method animateDragViewToOriginalPosition()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2190
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 2191
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2192
    iget v1, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2193
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2196
    new-instance v1, Lcom/android/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$4;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2202
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2204
    :cond_3f
    return-void
.end method

.method beginCameraEvent()V
    .registers 2

    .prologue
    .line 2767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    .line 2768
    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .registers 3
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    .line 900
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .registers 2

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 2104
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2106
    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScrollHelper()Z

    .line 639
    return-void
.end method

.method protected computeScrollHelper()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 610
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_2d

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_2d

    iget v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 615
    :cond_2d
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 617
    :cond_3c
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 633
    :goto_3f
    return v0

    .line 619
    :cond_40
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_66

    .line 620
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 621
    iput v4, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 622
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 626
    iget v1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v1, :cond_62

    .line 627
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageEndMoving()V

    .line 630
    :cond_62
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_3f

    :cond_66
    move v0, v1

    .line 633
    goto :goto_3f
.end method

.method protected dampedOverScroll(F)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1366
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    .line 1368
    int-to-float v0, v1

    div-float v0, p1, v0

    .line 1370
    cmpl-float v2, v0, v4

    if-nez v2, :cond_d

    .line 1387
    :goto_c
    return-void

    .line 1371
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1374
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2b

    .line 1375
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    .line 1378
    :cond_2b
    const v2, 0x3e0f5c29

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1379
    cmpg-float v1, p1, v4

    if-gez v1, :cond_47

    .line 1380
    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1381
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 1386
    :goto_43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 1383
    :cond_47
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 1384
    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto :goto_43
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1269
    iget v11, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1270
    .local v0, "pointerIndex":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_c

    .line 1289
    :cond_b
    :goto_b
    return v10

    .line 1273
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1274
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1275
    .local v6, "y":F
    float-to-int v11, v2

    float-to-int v12, v6

    invoke-direct {p0, v11, v12}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1279
    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v11, :cond_24

    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-eqz v11, :cond_b

    .line 1281
    :cond_24
    iget v11, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v3, v11

    .line 1282
    .local v3, "xDiff":I
    iget v11, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    .line 1284
    .local v7, "yDiff":I
    const/high16 v11, 0x3f800000

    iget v12, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1285
    .local v1, "touchSlop":I
    iget v11, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-le v3, v11, :cond_59

    move v5, v9

    .line 1286
    .local v5, "xPaged":Z
    :goto_45
    if-le v3, v1, :cond_5b

    move v4, v9

    .line 1287
    .local v4, "xMoved":Z
    :goto_48
    if-le v7, v1, :cond_5d

    move v8, v9

    .line 1289
    .local v8, "yMoved":Z
    :goto_4b
    if-nez v4, :cond_51

    if-nez v5, :cond_51

    if-eqz v8, :cond_61

    :cond_51
    iget-boolean v11, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_5f

    if-eqz v5, :cond_61

    :cond_57
    :goto_57
    move v10, v9

    goto :goto_b

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_59
    move v5, v10

    .line 1285
    goto :goto_45

    .restart local v5    # "xPaged":Z
    :cond_5b
    move v4, v10

    .line 1286
    goto :goto_48

    .restart local v4    # "xMoved":Z
    :cond_5d
    move v8, v10

    .line 1287
    goto :goto_4b

    .line 1289
    .restart local v8    # "yMoved":Z
    :cond_5f
    if-nez v4, :cond_57

    :cond_61
    move v9, v10

    goto :goto_57
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 950
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 952
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_12

    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1a

    .line 955
    :cond_12
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 956
    invoke-virtual {p0, v7}, Lcom/android/keyguard/PagedView;->screenScrolled(I)V

    .line 957
    iput v7, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    .line 961
    :cond_1a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 962
    .local v5, "pageCount":I
    if-lez v5, :cond_93

    .line 963
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 964
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 965
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 966
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_93

    const/4 v9, -0x1

    if-eq v6, v9, :cond_93

    .line 967
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    .line 969
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 970
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 974
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_65
    if-ltz v3, :cond_84

    .line 975
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 976
    .local v8, "v":Landroid/view/View;
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_72

    .line 974
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, -0x1

    goto :goto_65

    .line 977
    :cond_72
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_80

    if-gt v4, v3, :cond_6f

    if-gt v3, v6, :cond_6f

    invoke-virtual {p0, v8}, Lcom/android/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 979
    :cond_80
    invoke-virtual {p0, p1, v8, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_6f

    .line 983
    .end local v8    # "v":Landroid/view/View;
    :cond_84
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_8d

    .line 984
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 987
    :cond_8d
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 991
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_93
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1020
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 1021
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_2f

    .line 1022
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1031
    :goto_14
    return v0

    .line 1025
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 1026
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 1027
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_14

    .line 1031
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .prologue
    .line 1878
    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v0

    .line 1879
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1880
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endCameraEvent()V
    .registers 2

    .prologue
    .line 2771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    .line 2772
    return-void
.end method

.method endReordering()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2362
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_6

    .line 2392
    :cond_5
    :goto_5
    return-void

    .line 2363
    :cond_6
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2367
    new-instance v0, Lcom/android/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$6;-><init>(Lcom/android/keyguard/PagedView;)V

    .line 2373
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_5

    .line 2374
    new-instance v1, Lcom/android/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$7;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    .line 2380
    iget v1, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    .line 2383
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 2386
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 2388
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_5
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1059
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1060
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1062
    .local v2, "v":Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 1063
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1073
    :cond_c
    return-void

    .line 1066
    :cond_d
    if-eq v2, p0, :cond_c

    .line 1069
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1070
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 1071
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_7
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .registers 6
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1312
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 1314
    .local v0, "halfScreenSize":I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1315
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1317
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildOffset(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 847
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_c

    .line 869
    :cond_b
    :goto_b
    return v2

    .line 849
    :cond_c
    iget v3, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_27

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 852
    .local v0, "childOffsets":[I
    :goto_18
    if-eqz v0, :cond_1d

    array-length v3, v0

    if-le v3, p1, :cond_b

    .line 856
    :cond_1d
    if-eqz v0, :cond_2a

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2a

    .line 857
    aget v2, v0, p1

    goto :goto_b

    .line 849
    .end local v0    # "childOffsets":[I
    :cond_27
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_18

    .line 859
    .restart local v0    # "childOffsets":[I
    :cond_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_b

    .line 862
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 863
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_35
    if-ge v1, p1, :cond_46

    .line 864
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 866
    :cond_46
    if-eqz v0, :cond_b

    .line 867
    aput v2, v0, p1

    goto :goto_b
.end method

.method protected getChildWidth(I)I
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 1805
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1806
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 1807
    .local v1, "minWidth":I
    if-le v1, v0, :cond_d

    .end local v1    # "minWidth":I
    :goto_c
    return v1

    .restart local v1    # "minWidth":I
    :cond_d
    move v1, v0

    goto :goto_c
.end method

.method public getCurrentPage()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .registers 2

    .prologue
    .line 1308
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public getNextPage()I
    .registers 3

    .prologue
    .line 428
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    goto :goto_7
.end method

.method public getPageAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .registers 2

    .prologue
    .line 432
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .registers 9

    .prologue
    .line 1823
    const v3, 0x7fffffff

    .line 1824
    const/4 v0, -0x1

    .line 1825
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 1826
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 1827
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v5, :cond_3c

    .line 1828
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1829
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1830
    div-int/lit8 v2, v2, 0x2

    .line 1831
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 1832
    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1833
    if-ge v2, v3, :cond_3d

    move v0, v1

    .line 1827
    :goto_38
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1a

    .line 1838
    :cond_3c
    return v0

    :cond_3d
    move v2, v3

    goto :goto_38
.end method

.method protected getPageWarpIndex()I
    .registers 2

    .prologue
    .line 2865
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 874
    if-ltz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 885
    :cond_b
    :goto_b
    return v0

    .line 876
    :cond_c
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 877
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_b

    .line 879
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 880
    .local v1, "padding":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 882
    .local v0, "offset":I
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_b

    .line 883
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_b
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 893
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    .line 894
    .local v2, "minWidth":I
    if-le v2, v1, :cond_12

    move v0, v2

    .line 895
    .local v0, "maxWidth":I
    :goto_9
    int-to-float v3, v0

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_12
    move v0, v1

    .line 894
    goto :goto_9
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .registers 11
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1323
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1324
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1327
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1328
    .local v2, "scrollProgress":F
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1329
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1330
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .registers 2

    .prologue
    .line 2059
    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .registers 3

    .prologue
    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .registers 3

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .registers 4
    .param p1, "range"    # [I

    .prologue
    const/4 v0, 0x0

    .line 904
    aput v0, p1, v0

    .line 905
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    .line 939
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .registers 2

    .prologue
    .line 2146
    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2109
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_9

    .line 2139
    :cond_8
    :goto_8
    return-void

    .line 2110
    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2112
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2113
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 2115
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2116
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2117
    if-eqz p1, :cond_2a

    .line 2118
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2119
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_8

    .line 2121
    :cond_2a
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2122
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2123
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$3;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2136
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method public indexToPage(I)I
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 440
    return p1
.end method

.method protected init()V
    .registers 6

    .prologue
    const v4, 0x44bb8000

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 315
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 316
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 317
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 320
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    .line 321
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    .line 322
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    .line 324
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    .line 327
    iget v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    .line 329
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    .line 330
    const/high16 v1, 0x43fa0000

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    .line 331
    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    .line 332
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 333
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 828
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 829
    .local v0, "count":I
    if-nez v0, :cond_f

    .line 830
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 831
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 832
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 844
    :cond_e
    return-void

    .line 836
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    .line 837
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    .line 838
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 839
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_e

    .line 840
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 841
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 842
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method protected isPageMoving()Z
    .registers 2

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .registers 5
    .param p1, "testTouchState"    # Z

    .prologue
    .line 2353
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2354
    .local v0, "state":Z
    if-eqz p1, :cond_b

    .line 2355
    iget v1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    :goto_a
    and-int/2addr v0, v1

    .line 2357
    :cond_b
    return v0

    .line 2355
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected isScrollingIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 2063
    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .registers 3

    .prologue
    .line 1995
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    .line 343
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method public moveByAirMove(Z)V
    .registers 9
    .param p1, "isLeft"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2897
    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5a

    invoke-virtual {p0, v5}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2898
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 2900
    .local v2, "touchedViewIndex":I
    const/4 v0, -0x1

    .line 2902
    .local v0, "pageIndexToSnapTo":I
    if-eqz p1, :cond_5b

    if-lez v2, :cond_5b

    .line 2903
    add-int/lit8 v0, v2, -0x1

    .line 2907
    :cond_1a
    :goto_1a
    move v1, v0

    .line 2908
    .local v1, "pageUnderPointIndex":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_5a

    .line 2909
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v5, v3, v5

    .line 2910
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v6

    .line 2911
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v6, v3}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2912
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v5

    if-gt v3, v1, :cond_5a

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v6

    if-gt v1, v3, :cond_5a

    iget v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    if-eq v1, v3, :cond_5a

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 2915
    iput v1, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 2916
    new-instance v3, Lcom/android/keyguard/PagedView$16;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/keyguard/PagedView$16;-><init>(Lcom/android/keyguard/PagedView;II)V

    iput-object v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

    .line 2965
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverByAirRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2969
    .end local v0    # "pageIndexToSnapTo":I
    .end local v1    # "pageUnderPointIndex":I
    .end local v2    # "touchedViewIndex":I
    :cond_5a
    return-void

    .line 2904
    .restart local v0    # "pageIndexToSnapTo":I
    .restart local v2    # "touchedViewIndex":I
    :cond_5b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1a

    .line 2905
    add-int/lit8 v0, v2, 0x1

    goto :goto_1a
.end method

.method protected notifyPageSwitched()V
    .registers 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_11

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 493
    :cond_11
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .registers 4
    .param p1, "whichPage"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_d

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    .line 487
    :cond_d
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 816
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 817
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 818
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 823
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 824
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 825
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    if-eqz v0, :cond_e

    .line 1857
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AirGestureMonitor;->removeCallback()V

    .line 1858
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AirGestureMonitor;->unbindFromService()V

    .line 1860
    :cond_e
    return-void
.end method

.method protected onEndReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2295
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AirGestureMonitor;->removeCallback()V

    .line 2296
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AirGestureMonitor;->unbindFromService()V

    .line 2300
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_31

    .line 2301
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2302
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 2303
    :goto_23
    if-ge v0, v2, :cond_31

    .line 2304
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2303
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 2307
    :cond_31
    iput-object v5, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2310
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2311
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 2312
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2313
    iput-object v5, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2319
    :cond_4a
    :goto_4a
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2322
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2323
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    move v0, v1

    .line 2324
    :goto_57
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_82

    .line 2325
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_69

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-le v0, v2, :cond_72

    .line 2326
    :cond_69
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2324
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 2315
    :cond_75
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f06006b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_4a

    .line 2329
    :cond_82
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    .line 2597
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 2604
    new-instance v7, Lcom/android/keyguard/PagedView$10;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/keyguard/PagedView$10;-><init>(Lcom/android/keyguard/PagedView;J)V

    .line 2625
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2626
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2627
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 2628
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 2629
    new-instance v0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    .line 2632
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06006c

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    .line 2635
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v1

    .line 2638
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2639
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2640
    iget v3, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2641
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_70

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2642
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2643
    new-instance v0, Lcom/android/keyguard/PagedView$11;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PagedView$11;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2648
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2649
    iput-boolean v8, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    .line 2650
    return-void

    .line 2641
    nop

    :array_70
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 1720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 1743
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_16
    return v2

    .line 1725
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    .line 1726
    const/4 v1, 0x0

    .line 1727
    .local v1, "vscroll":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1732
    .local v0, "hscroll":F
    :goto_24
    cmpl-float v2, v0, v3

    if-nez v2, :cond_2c

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_12

    .line 1733
    :cond_2c
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_34

    cmpl-float v2, v1, v3

    if-lez v2, :cond_45

    .line 1734
    :cond_34
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    .line 1738
    :goto_37
    const/4 v2, 0x1

    goto :goto_16

    .line 1729
    .end local v0    # "hscroll":F
    .end local v1    # "vscroll":F
    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1730
    .restart local v1    # "vscroll":F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0    # "hscroll":F
    goto :goto_24

    .line 1736
    :cond_45
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_37

    .line 1720
    nop

    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_17
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2763
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2730
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2731
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2732
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_20

    .line 2733
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 2734
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 2735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 2737
    :cond_20
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v0, 0x1

    .line 2718
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2719
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2a

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2720
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    .line 2721
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2723
    :cond_1e
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_29

    .line 2724
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2726
    :cond_29
    return-void

    .line 2719
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1121
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1124
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_10

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1222
    :cond_f
    :goto_f
    return v0

    .line 1131
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1132
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v3, v0, :cond_f

    .line 1137
    :cond_1b
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_a0

    .line 1222
    :cond_20
    :goto_20
    :pswitch_20
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_f

    .line 1143
    :pswitch_26
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 1144
    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v2, :cond_35

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1145
    :cond_35
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_20

    .line 1159
    :pswitch_39
    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v2, :cond_42

    .line 1160
    const-string v2, "interceptTouch(): DOWN"

    invoke-direct {p0, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    .line 1163
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1170
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1171
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_62

    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    if-ge v2, v3, :cond_6e

    :cond_62
    move v2, v0

    .line 1172
    :goto_63
    if-eqz v2, :cond_70

    .line 1173
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 1174
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_20

    :cond_6e
    move v2, v1

    .line 1171
    goto :goto_63

    .line 1176
    :cond_70
    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v2, :cond_80

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 1178
    :cond_80
    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_20

    .line 1180
    :cond_84
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_20

    .line 1205
    :pswitch_88
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    .line 1207
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_f

    .line 1213
    :pswitch_99
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1214
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    goto :goto_20

    .line 1137
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_39
        :pswitch_88
        :pswitch_26
        :pswitch_88
        :pswitch_20
        :pswitch_20
        :pswitch_99
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 767
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-nez v9, :cond_b

    .line 806
    :cond_a
    :goto_a
    return-void

    .line 772
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 774
    .local v1, "childCount":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v7

    .line 775
    .local v7, "offsetX":I
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetY()I

    move-result v8

    .line 778
    .local v8, "offsetY":I
    iget-object v9, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 780
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    .line 781
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    if-ge v6, v1, :cond_51

    .line 782
    invoke-virtual {p0, v6}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 783
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    .line 784
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_4e

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 786
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 789
    .local v2, "childHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 791
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 781
    .end local v2    # "childHeight":I
    .end local v5    # "childWidth":I
    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    .line 795
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "childTop":I
    :cond_51
    iget-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_6f

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_6f

    iget v9, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_6f

    .line 796
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 798
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 799
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    .line 802
    :cond_6f
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 804
    iget v9, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v10, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 33
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    if-nez v27, :cond_12

    .line 648
    :cond_e
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    .line 758
    :goto_11
    return-void

    .line 654
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 655
    .local v18, "parent":Landroid/view/View;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 656
    .local v25, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v26

    .line 657
    .local v26, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 658
    .local v11, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 661
    .local v12, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 662
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 663
    .local v16, "maxSize":I
    const/high16 v27, 0x3fc00000

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v20, v0

    .line 664
    .local v20, "parentWidthSize":I
    move/from16 v19, v16

    .line 665
    .local v19, "parentHeightSize":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v22, v0

    .line 666
    .local v22, "scaledWidthSize":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mMinScale:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 667
    .local v21, "scaledHeightSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 669
    if-eqz v25, :cond_89

    if-nez v11, :cond_8d

    .line 670
    :cond_89
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_11

    .line 675
    :cond_8d
    if-lez v26, :cond_91

    if-gtz v12, :cond_96

    .line 676
    :cond_91
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    goto/16 :goto_11

    .line 685
    :cond_96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    add-int v24, v27, v28

    .line 686
    .local v24, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v28

    add-int v13, v27, v28

    .line 695
    .local v13, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 696
    .local v5, "childCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_af
    if-ge v14, v5, :cond_f3

    .line 698
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 699
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 702
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_ed

    .line 703
    const/high16 v9, -0x80000000

    .line 709
    .local v9, "childWidthMode":I
    :goto_c9
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v27, v0

    const/16 v28, -0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f0

    .line 710
    const/high16 v7, -0x80000000

    .line 715
    .local v7, "childHeightMode":I
    :goto_d7
    sub-int v27, v26, v13

    move/from16 v0, v27

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 717
    .local v8, "childWidthMeasureSpec":I
    sub-int v27, v12, v24

    move/from16 v0, v27

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 720
    .local v6, "childHeightMeasureSpec":I
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    .line 696
    add-int/lit8 v14, v14, 0x1

    goto :goto_af

    .line 705
    .end local v6    # "childHeightMeasureSpec":I
    .end local v7    # "childHeightMode":I
    .end local v8    # "childWidthMeasureSpec":I
    .end local v9    # "childWidthMode":I
    :cond_ed
    const/high16 v9, 0x40000000

    .restart local v9    # "childWidthMode":I
    goto :goto_c9

    .line 712
    :cond_f0
    const/high16 v7, 0x40000000

    .restart local v7    # "childHeightMode":I
    goto :goto_d7

    .line 722
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "childHeightMode":I
    .end local v9    # "childWidthMode":I
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_f3
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_124

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    move/from16 v27, v0

    if-nez v27, :cond_124

    .line 730
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    .line 732
    :cond_124
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    .line 734
    if-lez v5, :cond_169

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_169

    .line 744
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    .line 745
    .local v17, "offset":I
    sub-int v27, v26, v17

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v17

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 747
    .local v23, "spacing":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    .line 751
    .end local v17    # "offset":I
    .end local v23    # "spacing":I
    :cond_169
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 753
    if-lez v5, :cond_18c

    .line 754
    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v27

    add-int/lit8 v28, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11

    .line 756
    :cond_18c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_11
.end method

.method protected onPageBeginMoving()V
    .registers 1

    .prologue
    .line 552
    return-void
.end method

.method public onPageBeginWarp()V
    .registers 1

    .prologue
    .line 2875
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 1

    .prologue
    .line 556
    return-void
.end method

.method public onPageEndWarp()V
    .registers 1

    .prologue
    .line 2879
    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1006
    iget v2, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 1007
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 1011
    .local v0, "focusablePage":I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1012
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_15

    .line 1013
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1015
    :goto_11
    return v2

    .line 1009
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_7

    .line 1015
    .restart local v1    # "v":Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method protected onStartReordering()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2244
    new-instance v0, Lcom/android/keyguard/sec/AirGestureMonitor;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/keyguard/sec/AirGestureMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    .line 2245
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitor:Lcom/android/keyguard/sec/AirGestureMonitor;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAirGestureMonitorCallbacks:Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/AirGestureMonitor;->registerCallback(Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;)V

    .line 2249
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2250
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 2251
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsReordering(Z)V

    .line 2252
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 2253
    :goto_31
    if-ge v0, v2, :cond_3f

    .line 2254
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mReorderFocusView:Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2253
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 2259
    :cond_3f
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2260
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x7f06006a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2265
    :cond_57
    invoke-direct {p0, v5}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    .line 2266
    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    .line 2269
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    .line 2270
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    move v0, v1

    .line 2271
    :goto_67
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_84

    .line 2272
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-lt v0, v2, :cond_79

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-le v0, v2, :cond_81

    .line 2273
    :cond_79
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2271
    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 2279
    :cond_84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2280
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_10

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1699
    :cond_f
    :goto_f
    return v1

    .line 1410
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1414
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_2f4

    :pswitch_1c
    goto :goto_f

    .line 1420
    :pswitch_1d
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1421
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1425
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    .line 1427
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_3e

    .line 1428
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1433
    :goto_34
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v0, :cond_f

    .line 1434
    const-string v0, "onTouch(): DOWN"

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_f

    .line 1430
    :cond_3e
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_34

    .line 1439
    :pswitch_43
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_af

    .line 1441
    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1443
    if-eq v0, v3, :cond_f

    .line 1445
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1446
    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v4

    sub-float v4, v0, v3

    .line 1448
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1453
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x3f800000

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_aa

    .line 1454
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 1455
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v0, v5

    const v5, 0x4e6e6b28

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 1456
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1457
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    .line 1458
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1465
    :goto_93
    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1466
    float-to-int v0, v4

    int-to-float v0, v0

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_f

    .line 1459
    :cond_9d
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    if-nez v0, :cond_a6

    .line 1460
    float-to-int v0, v4

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    goto :goto_93

    .line 1463
    :cond_a6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_93

    .line 1468
    :cond_aa
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    goto/16 :goto_f

    .line 1470
    :cond_af
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v4, :cond_176

    .line 1472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1477
    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v0, v4}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1478
    aget v4, v0, v2

    iput v4, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1479
    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1480
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1483
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1484
    iget v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 1486
    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {p0, p0, v5, v7}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v5

    aget v5, v5, v2

    int-to-float v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1488
    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {p0, p0, v6, v7}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v6

    aget v6, v6, v2

    int-to-float v0, v0

    sub-float v0, v6, v0

    float-to-int v0, v0

    .line 1492
    iget v6, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    float-to-int v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v6

    .line 1494
    iget-object v7, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setPressed(Z)V

    .line 1495
    invoke-virtual {p0, v4, v6}, Lcom/android/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    .line 1504
    iget v7, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1506
    int-to-float v5, v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_15d

    if-lez v4, :cond_15d

    .line 1507
    add-int/lit8 v0, v4, -0x1

    .line 1513
    :goto_11b
    if-le v0, v3, :cond_16d

    if-nez v6, :cond_16d

    .line 1514
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 1515
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v1

    .line 1516
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 1517
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v3, v2

    if-gt v2, v0, :cond_f

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_f

    iget v2, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    if-eq v0, v2, :cond_f

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1520
    iput v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    .line 1521
    new-instance v2, Lcom/android/keyguard/PagedView$1;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/keyguard/PagedView$1;-><init>(Lcom/android/keyguard/PagedView;II)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    .line 1571
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 1508
    :cond_15d
    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2f1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2f1

    .line 1509
    add-int/lit8 v0, v4, 0x1

    goto :goto_11b

    .line 1574
    :cond_16d
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1575
    iput v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_f

    .line 1577
    :cond_176
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v0, :cond_180

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1578
    :cond_180
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    .line 1583
    :pswitch_185
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_254

    .line 1584
    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    .line 1585
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1587
    if-eq v4, v3, :cond_f

    .line 1589
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1590
    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1591
    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1592
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    .line 1593
    iget v0, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float v0, v3, v0

    float-to-int v5, v0

    .line 1594
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    .line 1595
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v7, v6

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    cmpl-float v0, v0, v7

    if-lez v0, :cond_226

    move v0, v1

    .line 1598
    :goto_1c1
    iget v7, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v8, v9

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v7

    iput v3, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    .line 1600
    iget v3, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    const/high16 v7, 0x41c80000

    cmpl-float v3, v3, v7

    if-lez v3, :cond_228

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    if-le v3, v7, :cond_228

    move v3, v1

    .line 1607
    :goto_1e2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    const v8, 0x3ea8f5c3

    mul-float/2addr v6, v8

    cmpl-float v6, v7, v6

    if-lez v6, :cond_201

    int-to-float v6, v4

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v7, v5

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_201

    if-eqz v3, :cond_201

    move v2, v1

    .line 1616
    :cond_201
    if-eqz v0, :cond_207

    if-lez v5, :cond_207

    if-eqz v3, :cond_20b

    :cond_207
    if-eqz v3, :cond_22f

    if-lez v4, :cond_22f

    :cond_20b
    iget v6, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v6, :cond_22f

    .line 1618
    if-nez v2, :cond_217

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_22a

    :cond_217
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1620
    :goto_219
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    .line 1682
    :cond_21c
    :goto_21c
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1684
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_f

    :cond_226
    move v0, v2

    .line 1595
    goto :goto_1c1

    :cond_228
    move v3, v2

    .line 1600
    goto :goto_1e2

    .line 1618
    :cond_22a
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_219

    .line 1621
    :cond_22f
    if-eqz v0, :cond_235

    if-gez v5, :cond_235

    if-eqz v3, :cond_239

    :cond_235
    if-eqz v3, :cond_250

    if-gez v4, :cond_250

    :cond_239
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_250

    .line 1624
    if-eqz v2, :cond_24b

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 1625
    :goto_247
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_21c

    .line 1624
    :cond_24b
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_247

    .line 1627
    :cond_250
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_21c

    .line 1629
    :cond_254
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_26d

    .line 1633
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1634
    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v0, v2, :cond_269

    .line 1635
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_21c

    .line 1637
    :cond_269
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_21c

    .line 1639
    :cond_26d
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_28c

    .line 1643
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1644
    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v0, v2, :cond_288

    .line 1645
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_21c

    .line 1647
    :cond_288
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_21c

    .line 1649
    :cond_28c
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v4, :cond_2cc

    .line 1651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 1652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 1656
    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v0, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    .line 1657
    aget v3, v0, v2

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    .line 1658
    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    .line 1659
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 1663
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v0

    .line 1664
    if-eqz v0, :cond_2b9

    .line 1665
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    move v2, v1

    .line 1669
    :cond_2b9
    if-nez v2, :cond_21c

    iget v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    float-to-int v0, v0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 1671
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_21c

    .line 1675
    :cond_2cc
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-eqz v0, :cond_2db

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->isAnimatingWarpPage()Z

    move-result v0

    if-nez v0, :cond_2db

    .line 1676
    const-string v0, "unhandled tap"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    .line 1678
    :cond_2db
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_21c

    .line 1688
    :pswitch_2e0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_2e7

    .line 1689
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    .line 1691
    :cond_2e7
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_f

    .line 1695
    :pswitch_2ec
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_f

    :cond_2f1
    move v0, v3

    goto/16 :goto_11b

    .line 1414
    :pswitch_data_2f4
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_185
        :pswitch_43
        :pswitch_2e0
        :pswitch_1c
        :pswitch_1c
        :pswitch_2ec
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .registers 2
    .param p1, "newTouchState"    # I

    .prologue
    .line 1237
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1715
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .param p1, "amount"    # F

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->dampedOverScroll(F)V

    .line 1391
    return-void
.end method

.method protected pageBeginMoving()V
    .registers 3

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1f

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 499
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 500
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    .line 501
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 502
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    .line 505
    :cond_1c
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginMoving()V

    .line 507
    :cond_1f
    return-void
.end method

.method protected pageEndMoving()V
    .registers 3

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_22

    .line 528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 530
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 531
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->swapPages(II)V

    .line 533
    :cond_19
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 534
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetPageWarp()V

    .line 536
    :cond_1f
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndMoving()V

    .line 538
    :cond_22
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 2741
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2758
    :goto_7
    return v0

    .line 2744
    :cond_8
    sparse-switch p1, :sswitch_data_28

    .line 2758
    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 2746
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_b

    .line 2747
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    goto :goto_7

    .line 2752
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_b

    .line 2753
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_7

    .line 2744
    nop

    :sswitch_data_28
    .sparse-switch
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1781
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1782
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 1783
    .local v0, "page":I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1784
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 1786
    :cond_1c
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 995
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    .line 996
    .local v0, "page":I
    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 997
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 998
    const/4 v1, 0x1

    .line 1000
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method protected screenScrolled(I)V
    .registers 2
    .param p1, "screenCenter"    # I

    .prologue
    .line 809
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 574
    iget v0, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 575
    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2000
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 2004
    :cond_13
    :goto_13
    return-void

    .line 2002
    :cond_14
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_13
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2008
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    .line 2012
    :cond_19
    :goto_19
    return-void

    .line 2010
    :cond_1a
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_19
.end method

.method public scrollTo(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 579
    iput p1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 581
    if-gez p1, :cond_39

    .line 582
    invoke-super {p0, v3, p2}, Landroid/view/View;->scrollTo(II)V

    .line 583
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 584
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    .line 596
    :cond_11
    :goto_11
    int-to-float v1, p1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    .line 597
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    .line 600
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 601
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 602
    .local v0, "p":[F
    aget v1, v0, v3

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 603
    aget v1, v0, v4

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 604
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 606
    .end local v0    # "p":[F
    :cond_38
    return-void

    .line 586
    :cond_39
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_4f

    .line 587
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 588
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_11

    .line 589
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    goto :goto_11

    .line 592
    :cond_4f
    iput p1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    .line 593
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_11
.end method

.method setCurrentPage(I)V
    .registers 4
    .param p1, "currentPage"    # I

    .prologue
    .line 461
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 462
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_10

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 467
    :cond_10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_17

    .line 477
    :goto_16
    return-void

    .line 471
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    .line 473
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    .line 474
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicator()V

    .line 475
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 476
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_16
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    .line 337
    return-void
.end method

.method public setMinScale(F)V
    .registers 2
    .param p1, "f"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 368
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 566
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    .line 567
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 568
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 570
    :cond_13
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    .line 481
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 3
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 2674
    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2
    .param p1, "pageSpacing"    # I

    .prologue
    .line 761
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    .line 762
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    .line 763
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V
    .registers 5
    .param p1, "pageSwitchListener"    # Lcom/android/keyguard/PagedView$PageSwitchListener;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    .line 401
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-eqz v0, :cond_13

    .line 402
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    .line 404
    :cond_13
    return-void
.end method

.method public setScaleX(F)V
    .registers 6
    .param p1, "scaleX"    # F

    .prologue
    const/4 v3, 0x1

    .line 372
    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 373
    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 374
    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    .line 375
    .local v0, "p":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    .line 376
    aget v1, v0, v3

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    .line 377
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    .line 379
    .end local v0    # "p":[F
    :cond_1e
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 942
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .registers 7

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2080
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2081
    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2082
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_f

    .line 2100
    :cond_e
    :goto_e
    return-void

    .line 2083
    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2085
    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    .line 2086
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2087
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 2089
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    .line 2090
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 2092
    if-eqz p1, :cond_31

    .line 2093
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_e

    .line 2095
    :cond_31
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2096
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2097
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e
.end method

.method protected snapToDestination()V
    .registers 4

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    .line 1843
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1844
    const-string v2, "snapToDestination"

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    :goto_11
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1846
    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1847
    return-void

    .line 1844
    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected snapToPage(I)V
    .registers 3
    .param p1, "whichPage"    # I

    .prologue
    .line 1925
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1926
    return-void
.end method

.method protected snapToPage(II)V
    .registers 4
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1932
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1933
    return-void
.end method

.method protected snapToPage(III)V
    .registers 5
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1947
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1948
    return-void
.end method

.method protected snapToPage(IIIZ)V
    .registers 12
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I
    .param p4, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1951
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_61

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    if-ne p1, v0, :cond_61

    .line 1952
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    iput v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    .line 1958
    :goto_e
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1959
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    .line 1960
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    .line 1961
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetPageWarp()V

    .line 1966
    :goto_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1967
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_32

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_32

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_32

    .line 1969
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1972
    :cond_32
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    .line 1973
    invoke-virtual {p0, p3}, Landroid/view/View;->awakenScrollBars(I)Z

    .line 1974
    if-eqz p4, :cond_68

    .line 1975
    const/4 p3, 0x0

    .line 1980
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    :cond_48
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    .line 1986
    if-eqz p4, :cond_5a

    .line 1987
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScroll()V

    .line 1990
    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    .line 1991
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1992
    return-void

    .line 1955
    .end local v6    # "focusedChild":Landroid/view/View;
    :cond_61
    iput p1, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_e

    .line 1963
    :cond_64
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    goto :goto_1d

    .line 1976
    .restart local v6    # "focusedChild":Landroid/view/View;
    :cond_68
    if-nez p3, :cond_3b

    .line 1977
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_3b
.end method

.method protected snapToPage(IIZ)V
    .registers 9
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I
    .param p3, "immediate"    # Z

    .prologue
    .line 1935
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1940
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1941
    .local v1, "newX":I
    iget v2, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    .line 1942
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1943
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    .line 1944
    return-void
.end method

.method protected snapToPageImmediately(I)V
    .registers 4
    .param p1, "whichPage"    # I

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    .line 1929
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f800000

    .line 1884
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1885
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1887
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1888
    const-string v3, "snapToPageWithVelocity"

    iget v4, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v4, v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    .line 1894
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 1895
    iget v3, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v0, v3

    .line 1898
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_43

    .line 1901
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    .line 1922
    :goto_42
    return-void

    .line 1909
    :cond_43
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1910
    int-to-float v4, v2

    int-to-float v2, v2

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    .line 1913
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1914
    iget v4, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1919
    const/high16 v4, 0x447a0000

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .line 1921
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/keyguard/PagedView;->snapToPage(III)V

    goto :goto_42
.end method

.method public startPageWarp(I)V
    .registers 3
    .param p1, "pageIndex"    # I

    .prologue
    .line 2858
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_c

    .line 2859
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    .line 2861
    :cond_c
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    .line 2862
    return-void
.end method

.method public startReordering()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2332
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 2333
    .local v0, "dragViewIndex":I
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    .line 2334
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 2335
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    .line 2338
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_37

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_37

    .line 2340
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    .line 2341
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2343
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    .line 2345
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    .line 2349
    :cond_36
    :goto_36
    return v1

    :cond_37
    move v1, v2

    goto :goto_36
.end method

.method public stopPageWarp()V
    .registers 1

    .prologue
    .line 2871
    return-void
.end method

.method swapPages(II)V
    .registers 8
    .param p1, "indexA"    # I
    .param p2, "indexB"    # I

    .prologue
    .line 2847
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 2848
    .local v1, "viewA":Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 2849
    .local v2, "viewB":Landroid/view/View;
    if-eq v1, v2, :cond_1f

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    .line 2850
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    .line 2851
    .local v0, "deltaX":I
    neg-int v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2852
    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2854
    .end local v0    # "deltaX":I
    :cond_1f
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .registers 6

    .prologue
    .line 449
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    .line 450
    .local v1, "offset":I
    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 451
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 452
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    .line 453
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 454
    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 455
    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .registers 5

    .prologue
    .line 357
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    .line 358
    .local v0, "x":F
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    .line 359
    .local v1, "y":F
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 360
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 363
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000

    .line 2396
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2397
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2399
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_65

    .line 2400
    :cond_25
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2401
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2402
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2405
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/PagedView$8;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2432
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    .line 2439
    :cond_64
    :goto_64
    return v0

    .line 2435
    :cond_65
    if-eqz p1, :cond_64

    .line 2436
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_64
.end method

.method protected zoomOut()Z
    .registers 8

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2208
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2209
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2212
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_68

    .line 2213
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 2214
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2215
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2218
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$5;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2235
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2238
    :goto_67
    return v0

    :cond_68
    move v0, v1

    goto :goto_67
.end method
