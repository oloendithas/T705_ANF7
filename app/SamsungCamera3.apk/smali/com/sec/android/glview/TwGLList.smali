.class public Lcom/sec/android/glview/TwGLList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLList$OnScrollListener;,
        Lcom/sec/android/glview/TwGLList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.1f

.field private static final BOUNCING_VELOCITY_DIP:F = 1.5f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING_DIP:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 100.0f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.1f

.field private static final VELOCITY_REVISE_THRESHOLD_DIP:F = 10.0f


# instance fields
.field private BOUNCE_EDGE_SIZE:F

.field private BOUNCE_IMAGE_SIZE:F

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private final mDragOutDistanceLimit:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastEventX:F

.field private mLastEventY:F

.field private mListHeight:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field private mListWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarAutoHide:Z

.field private mScrollBarOffset:F

.field private mScrollBarPadding:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrolling:Z

.field private mStackOrientation:I

.field private final mVelocityReviseThreshold:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 6
    .param p1, "glContext"    # Lcom/sec/android/glview/TwGLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v5, 0x42c80000

    const/high16 v4, 0x3f800000

    const/high16 v3, 0x41200000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 54
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 69
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 72
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 77
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    .line 80
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    .line 83
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 86
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    .line 95
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 98
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 101
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 104
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 107
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 110
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 133
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 136
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 138
    const/high16 v0, 0x43390000

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    .line 140
    iput v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    .line 153
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 156
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 162
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 165
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 208
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 212
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    .line 222
    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    .line 341
    iput p4, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    .line 342
    iput p5, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    .line 344
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 345
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    .line 346
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    .line 347
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    .line 348
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    .line 349
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    .line 350
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    .line 355
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLList;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLList;

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLList;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLList;
    .param p1, "x1"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLList;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3dcccccd

    const/4 v5, 0x0

    .line 1725
    const/4 v1, 0x0

    .line 1726
    .local v1, "ret":Z
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1727
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1729
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1730
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1731
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1733
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1734
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1735
    .local v0, "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1736
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1737
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1740
    .end local v0    # "originalVelocity":F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1742
    :cond_1
    const/4 v1, 0x1

    .line 1801
    :cond_2
    :goto_0
    return v1

    .line 1743
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1745
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1746
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1747
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1749
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1750
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1751
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1752
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1753
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1756
    .end local v0    # "originalVelocity":F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    .line 1758
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1760
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1761
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1763
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1764
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1766
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1767
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1768
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1770
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1771
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1772
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1773
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1774
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1777
    .end local v0    # "originalVelocity":F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1779
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1780
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1782
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1783
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1784
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1786
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1787
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1788
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mVelocityReviseThreshold:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1789
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1790
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1793
    .end local v0    # "originalVelocity":F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    .line 1795
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1797
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1798
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 597
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 605
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 609
    :goto_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 610
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 623
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 624
    iput-boolean v4, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 611
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v4, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 616
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 620
    :goto_3
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 621
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 618
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 558
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 560
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 563
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 575
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    const/4 v4, 0x0

    .line 864
    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 867
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_4

    .line 868
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 869
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 870
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 879
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 880
    .local v1, "paddings":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 882
    .local v0, "childPaddings":Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 883
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 884
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 888
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 889
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 893
    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 894
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 896
    :cond_2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_3

    .line 897
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7

    .line 898
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 902
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    .line 903
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 907
    :goto_4
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 908
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 911
    :cond_3
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 912
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 913
    return-void

    .line 873
    .end local v0    # "childPaddings":Landroid/graphics/Rect;
    .end local v1    # "paddings":Landroid/graphics/Rect;
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 874
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 875
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_0

    .line 886
    .restart local v0    # "childPaddings":Landroid/graphics/Rect;
    .restart local v1    # "paddings":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 891
    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2

    .line 900
    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 905
    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1889
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1891
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1894
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1895
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1898
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1899
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1901
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1902
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1903
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1905
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1906
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1907
    iput-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1910
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1911
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 528
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getScrollBarAutoHide()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 685
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    goto :goto_0

    .line 697
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 698
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 845
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 848
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 850
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 851
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 852
    iput v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 854
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    .line 855
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 856
    return-void
.end method

.method public isScrollable()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 948
    const/4 v0, 0x0

    .line 950
    .local v0, "misScrollable":Z
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_1

    .line 951
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    .line 956
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v1

    .line 952
    :cond_1
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v2, v1, :cond_0

    .line 953
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    goto :goto_0

    .line 956
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1345
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1350
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1353
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1355
    :cond_2
    return-void
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .prologue
    .line 1369
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1370
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1377
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1362
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 1041
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->scrollToVisible()Z

    .line 1044
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1045
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1049
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1050
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1051
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 1052
    .local v10, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v10, :cond_1

    .line 1056
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1041
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1058
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_3

    .line 1059
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    .line 1062
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    .line 1063
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1070
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 1071
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1072
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 1073
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1079
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 1080
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1081
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 1082
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1288
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    .line 1289
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1291
    :cond_8
    const/4 v2, 0x0

    .line 1292
    .local v2, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v8

    .line 1293
    .local v8, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1296
    .local v3, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1297
    .local v7, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1298
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_34

    .line 1299
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 1301
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1302
    if-nez v5, :cond_33

    .line 1303
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1304
    const/4 v2, 0x1

    .line 1310
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1312
    invoke-virtual {v10, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1298
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1075
    .end local v2    # "checked":Z
    .end local v3    # "clipRect":Landroid/graphics/Rect;
    .end local v5    # "i":I
    .end local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .end local v8    # "matrix":[F
    .end local v9    # "size":I
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1076
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 1077
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 1084
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1085
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 1086
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 1088
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v12, :cond_2c

    .line 1090
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1b

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    .line 1093
    .local v4, "height":F
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    const/high16 v1, 0x3f800000

    .line 1094
    .local v1, "alpha":F
    :goto_6
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 1096
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_15

    .line 1099
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1100
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1101
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 1091
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_5

    .line 1093
    .restart local v4    # "height":F
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_6

    .line 1103
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_10

    .line 1104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1107
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_11

    .line 1108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1114
    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    .line 1115
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1125
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_12

    .line 1127
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1128
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1129
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1251
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v12, :cond_6

    .line 1253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1254
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_29

    .line 1255
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1118
    .restart local v1    # "alpha":F
    .restart local v4    # "height":F
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_14

    .line 1119
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_8

    .line 1121
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_8

    .line 1131
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_15
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_12

    .line 1134
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1135
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    .line 1136
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    sub-float v14, v4, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 1138
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_17

    .line 1139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    sub-float v15, v4, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1142
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_18

    .line 1143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1151
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_19

    .line 1152
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1162
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    sub-float v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    .line 1164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1165
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1166
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    .line 1155
    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1a

    .line 1156
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_c

    .line 1158
    :cond_1a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1169
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_12

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    .line 1172
    .local v11, "width":F
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3dcccccd

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1d

    const/high16 v1, 0x3f800000

    .line 1174
    .restart local v1    # "alpha":F
    :goto_e
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 1176
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_23

    .line 1179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1180
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 1181
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1170
    .end local v1    # "alpha":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v11    # "width":F
    :cond_1c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_d

    .line 1172
    .restart local v11    # "width":F
    :cond_1d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_e

    .line 1183
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1e
    const-string v12, "TwGLList"

    const-string v13, "mScrollSumX -- translateAbolute1 = 0"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_1f

    .line 1185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1188
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_20

    .line 1189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1195
    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_21

    .line 1196
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1206
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_12

    .line 1208
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1209
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1210
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    .line 1199
    :cond_21
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_22

    .line 1200
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_10

    .line 1202
    :cond_22
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_10

    .line 1212
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_12

    .line 1215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1216
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_24

    .line 1217
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 1219
    :cond_24
    const-string v12, "TwGLList"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mScrollSumX -- translateAbolute2= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_25

    .line 1221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    sub-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1224
    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_26

    .line 1225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1232
    :cond_26
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_27

    .line 1233
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1243
    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    sub-float v13, v11, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_12

    .line 1245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1246
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1247
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_9

    .line 1236
    :cond_27
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_28

    .line 1237
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_12

    .line 1239
    :cond_28
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v13, 0x3dcccccd

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1257
    .end local v1    # "alpha":F
    .end local v11    # "width":F
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_2a

    .line 1258
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1260
    :cond_2a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_2b

    .line 1261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1266
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1270
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_30

    .line 1271
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2e

    .line 1272
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1285
    :cond_2d
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1273
    :cond_2e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    .line 1275
    .restart local v4    # "height":F
    :goto_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_13

    .line 1274
    .end local v4    # "height":F
    :cond_2f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_14

    .line 1277
    :cond_30
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_2d

    .line 1278
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_31

    .line 1279
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_13

    .line 1280
    :cond_31
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    .line 1281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    .line 1282
    .restart local v11    # "width":F
    :goto_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    sub-float v12, v11, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_13

    .line 1281
    .end local v11    # "width":F
    :cond_32
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_15

    .line 1305
    .restart local v2    # "checked":Z
    .restart local v3    # "clipRect":Landroid/graphics/Rect;
    .restart local v5    # "i":I
    .restart local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v8    # "matrix":[F
    .restart local v9    # "size":I
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_33
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1306
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLList;->mFirstFullyVisibleViewIndex:I

    .line 1307
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1317
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_35

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v12, :cond_35

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1324
    :cond_35
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_36

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_36

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1332
    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_37

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1340
    :cond_37
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 1709
    if-ne p2, v0, :cond_0

    .line 1710
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 1711
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1713
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1699
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1704
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 1866
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1867
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 1869
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1871
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 1872
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1874
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 1875
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1877
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_4

    .line 1878
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1881
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1882
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1883
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1885
    :cond_5
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1383
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1391
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1392
    .local v3, "et":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    .line 1393
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1395
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    .line 1397
    .local v5, "mBoundary":Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1398
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;

    invoke-direct {v9, p0}, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1401
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1402
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    const/4 v7, 0x1

    .line 1610
    :goto_0
    monitor-exit p0

    return v7

    .line 1405
    :catch_0
    move-exception v7

    .line 1409
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1410
    const-string v7, "TwGLList"

    const-string v8, "ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    .line 1412
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    .line 1413
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1414
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1415
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1416
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1417
    const/4 v7, 0x0

    goto :goto_0

    .line 1419
    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1420
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1421
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1423
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    .line 1424
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1425
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1428
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1429
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1431
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    .line 1432
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1433
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1436
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1437
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1438
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1440
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_26

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_26

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_26

    .line 1441
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 1442
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    sub-float v1, v7, v8

    .line 1443
    .local v1, "delta":F
    move v2, v1

    .line 1445
    .local v2, "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 1446
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 1447
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1448
    const/4 v5, 0x0

    .line 1473
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1474
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1475
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1476
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_c

    .line 1477
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1391
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v3    # "et":Landroid/view/MotionEvent;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v5    # "mBoundary":Z
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1451
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v3    # "et":Landroid/view/MotionEvent;
    .restart local v5    # "mBoundary":Z
    :cond_7
    const/4 v2, 0x0

    .line 1452
    const/4 v7, 0x1

    :try_start_3
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1454
    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    .line 1455
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_9

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_9

    .line 1456
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1457
    const/4 v5, 0x0

    goto :goto_1

    .line 1460
    :cond_9
    const/4 v2, 0x0

    .line 1461
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1463
    :cond_a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    .line 1465
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1466
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_1

    .line 1467
    :cond_b
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    .line 1469
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1470
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_1

    .line 1479
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_c
    const/4 v7, 0x0

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_2

    .line 1483
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_d
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_e

    .line 1484
    if-nez v5, :cond_13

    .line 1485
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1489
    :goto_3
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1492
    :cond_e
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_f

    .line 1494
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1495
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1496
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1500
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    const/high16 v0, 0x3f800000

    .line 1501
    .local v0, "alpha":F
    :goto_4
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1502
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 1503
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1504
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1510
    .end local v0    # "alpha":F
    :cond_f
    :goto_5
    if-nez v5, :cond_16

    .line 1511
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1517
    :cond_10
    :goto_6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    .line 1519
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_11
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_21

    .line 1520
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    sub-float v1, v7, v8

    .line 1521
    .restart local v1    # "delta":F
    move v2, v1

    .line 1523
    .restart local v2    # "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    .line 1524
    const/4 v7, 0x0

    cmpg-float v7, v1, v7

    if-gez v7, :cond_17

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    .line 1525
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1526
    const/4 v5, 0x0

    .line 1552
    :cond_12
    :goto_7
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1553
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1554
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1555
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_1c

    .line 1556
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_8

    .line 1487
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_13
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto/16 :goto_3

    .line 1500
    :cond_14
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_4

    .line 1505
    .restart local v0    # "alpha":F
    :cond_15
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_f

    .line 1506
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1507
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_5

    .line 1513
    .end local v0    # "alpha":F
    :cond_16
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 1514
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto/16 :goto_6

    .line 1529
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_17
    const/4 v2, 0x0

    .line 1530
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_7

    .line 1532
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1a

    .line 1533
    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-lez v7, :cond_19

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_19

    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1535
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 1538
    :cond_19
    const/4 v2, 0x0

    .line 1539
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    .line 1541
    :cond_1a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1b

    .line 1543
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    sub-float v2, v1, v7

    .line 1544
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    .line 1545
    :cond_1b
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_12

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1548
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_7

    .line 1558
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1c
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_8

    .line 1562
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1d
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_1e

    .line 1563
    if-nez v5, :cond_22

    .line 1564
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1568
    :goto_9
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1570
    :cond_1e
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1f

    .line 1572
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1573
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1574
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1577
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_23

    const/high16 v0, 0x3f800000

    .line 1579
    .restart local v0    # "alpha":F
    :goto_a
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1581
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_24

    .line 1582
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1587
    .end local v0    # "alpha":F
    :cond_1f
    :goto_b
    if-nez v5, :cond_25

    .line 1588
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1594
    :cond_20
    :goto_c
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    .line 1596
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_21
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1597
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1566
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_22
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_9

    .line 1577
    :cond_23
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v9, 0x3e4ccccd

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_a

    .line 1583
    .restart local v0    # "alpha":F
    :cond_24
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1f

    .line 1584
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_b

    .line 1590
    .end local v0    # "alpha":F
    :cond_25
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    iget v8, p0, Lcom/sec/android/glview/TwGLList;->mDragOutDistanceLimit:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_20

    .line 1591
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_c

    .line 1599
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_26
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_28

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_27

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_28

    .line 1600
    :cond_27
    const-string v7, "TwGLList"

    const-string v8, "ACTION_UP"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1602
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1603
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1605
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1606
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1607
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1609
    :cond_28
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1610
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public refreshList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 419
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 420
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 421
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLastEventX:F

    .line 422
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mLastEventY:F

    .line 423
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 424
    iput v5, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 426
    const/4 v1, 0x0

    .line 428
    .local v1, "offset":F
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 431
    .local v2, "view":Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 432
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_1

    .line 433
    invoke-virtual {v2, v5, v1, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    .line 434
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 435
    :cond_1
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 436
    invoke-virtual {v2, v1, v5, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FFZ)V

    .line 437
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_0

    .line 440
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_4

    .line 441
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 445
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 446
    return-void

    .line 442
    :cond_4
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v6, :cond_3

    .line 443
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_1
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 922
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 927
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 928
    return-void

    .line 924
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_0
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 677
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 679
    return-void
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 936
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 937
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 960
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v7, :cond_0

    move v7, v8

    .line 1033
    :goto_0
    return v7

    .line 964
    :cond_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 965
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 968
    .local v3, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 969
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 970
    const-string v7, "TwGLList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", visibility = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 971
    goto :goto_0

    .line 973
    :cond_1
    const/4 v5, 0x0

    .line 974
    .local v5, "offsetY":F
    const/4 v4, 0x0

    .line 976
    .local v4, "offsetX":F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v7, :cond_8

    .line 978
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_3

    .line 979
    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 985
    :cond_2
    :goto_1
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_5

    .line 987
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v7, v9

    .line 988
    goto :goto_0

    .line 980
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 982
    .local v0, "height":F
    :goto_2
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1

    .line 981
    .end local v0    # "height":F
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_2

    .line 989
    :cond_5
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_7

    .line 990
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v10

    .line 991
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1018
    :cond_6
    :goto_3
    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1019
    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1022
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1023
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1024
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/glview/TwGLView;

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_4

    .line 992
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_7
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    .line 993
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v10

    .line 994
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_3

    .line 996
    :cond_8
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v7, v9, :cond_6

    .line 998
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_a

    .line 999
    iput v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1005
    :cond_9
    :goto_5
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_c

    .line 1007
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    move v7, v9

    .line 1008
    goto/16 :goto_0

    .line 1000
    :cond_a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_9

    .line 1001
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    .line 1002
    .local v6, "width":F
    :goto_6
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_5

    .line 1001
    .end local v6    # "width":F
    :cond_b
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_6

    .line 1009
    :cond_c
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    .line 1010
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v10

    .line 1011
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_3

    .line 1012
    :cond_d
    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_6

    .line 1013
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v10

    .line 1014
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto/16 :goto_3

    .line 1027
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_e
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_f

    .line 1028
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1030
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1031
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollRequested:Z

    .line 1032
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v7, v9

    .line 1033
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLList$Adapter;

    .prologue
    .line 738
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 739
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .locals 13
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLList$Adapter;
    .param p2, "stackOrientation"    # I

    .prologue
    .line 748
    if-nez p1, :cond_0

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 751
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 752
    iput p2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 754
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 755
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 759
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_3

    .line 760
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    .line 765
    :goto_1
    const/4 v11, 0x0

    .line 766
    .local v11, "offset":I
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v8

    .line 767
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_8

    .line 768
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v9, v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v12

    .line 769
    .local v12, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v12, :cond_4

    .line 838
    .end local v12    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    :goto_3
    return-void

    .line 762
    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v11    # "offset":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_1

    .line 771
    .restart local v8    # "count":I
    .restart local v9    # "i":I
    .restart local v11    # "offset":I
    .restart local v12    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_6

    .line 772
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 773
    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 775
    :cond_5
    const/4 v0, 0x0

    int-to-float v1, v11

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 776
    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    .line 784
    :goto_4
    invoke-virtual {v12, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 785
    invoke-virtual {p0, v12}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 767
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 778
    :cond_6
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 779
    neg-int v0, v11

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 781
    :cond_7
    int-to-float v0, v11

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 782
    int-to-float v0, v11

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v11, v0

    goto :goto_4

    .line 788
    .end local v12    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_c

    .line 789
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 790
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    int-to-float v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 798
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 799
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_d

    .line 800
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020375

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 801
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020373

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 802
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020374

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 803
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f020374

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 810
    :goto_6
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 811
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 812
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 813
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 814
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 817
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 819
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 821
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_e

    .line 822
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_b

    .line 823
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 831
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 832
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 833
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_8

    .line 793
    :cond_c
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 794
    int-to-float v0, v11

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_5

    .line 805
    :cond_d
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020371

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 806
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020372

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 807
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020370

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 808
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020370

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_6

    .line 825
    :cond_e
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 826
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_b

    .line 827
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_7

    .line 835
    :cond_f
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    goto/16 :goto_3
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3
    .param p1, "height"    # F

    .prologue
    const/4 v2, 0x1

    .line 505
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 506
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v1, v2, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 512
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_1

    .line 513
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_1
    monitor-exit p0

    return-void

    .line 515
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 516
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 517
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 505
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .line 364
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 371
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    .line 373
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    .line 374
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    .line 375
    .local v5, "top":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    .line 377
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 378
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 380
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 383
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    sub-float/2addr v7, v3

    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v7

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_2

    .line 384
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 388
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    sub-float v7, v4, v7

    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_3

    .line 389
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 393
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 394
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 396
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 397
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    sub-float/2addr v7, v5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v7

    cmpl-float v7, v7, v5

    if-ltz v7, :cond_4

    .line 398
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 402
    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    sub-float v7, v0, v7

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_5

    .line 403
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 407
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 408
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 410
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 386
    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 391
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 400
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 405
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 412
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 413
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 414
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 416
    :cond_7
    return-void
.end method

.method public setScroll(I)V
    .locals 0
    .param p1, "scroll"    # I

    .prologue
    .line 633
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 634
    return-void
.end method

.method public setScrollBarAutoHide(Z)V
    .locals 0
    .param p1, "showScrollbar"    # Z

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarAutoHide:Z

    .line 941
    return-void
.end method

.method public setScrollBarPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 550
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarPadding:F

    .line 551
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 3
    .param p1, "ninepatchId"    # I

    .prologue
    const/4 v2, 0x0

    .line 539
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 540
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    .line 541
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 542
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 642
    const-string v0, "TwGLList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 645
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 661
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 662
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_0

    .line 663
    if-eqz p1, :cond_2

    .line 664
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    .line 669
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 671
    :cond_1
    return-void

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v5, 0x1

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "widthChanged":Z
    const/4 v0, 0x0

    .line 456
    .local v0, "heightChanged":Z
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    cmpl-float v3, v3, p1

    if-eqz v3, :cond_0

    .line 457
    const/4 v2, 0x1

    .line 459
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    cmpl-float v3, v3, p2

    if-eqz v3, :cond_1

    .line 460
    const/4 v0, 0x1

    .line 462
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 463
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v3, v5, :cond_2

    .line 464
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 465
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 466
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    goto :goto_0

    .line 468
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 471
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->refreshList()V

    .line 473
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 474
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 476
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 477
    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v3, :cond_5

    .line 478
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 480
    :cond_5
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3
    .param p1, "width"    # F

    .prologue
    const/4 v2, 0x1

    .line 484
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 485
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    if-ne v1, v2, :cond_0

    .line 486
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 487
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 484
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 490
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 492
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 496
    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_2

    .line 497
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 500
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->refreshList()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    monitor-exit p0

    return-void
.end method

.method public showScrollBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 715
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    :cond_2
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 726
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 727
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 728
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_0
.end method

.method public translateList(FF)Z
    .locals 9
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1614
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v2

    .line 1615
    .local v2, "mBoundary":Z
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v4, :cond_8

    .line 1616
    move v0, p2

    .line 1617
    .local v0, "deltaForContents":F
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_3

    .line 1618
    cmpg-float v6, p2, v8

    if-gez v6, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 1619
    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1620
    const/4 v2, 0x0

    .line 1642
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1643
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1644
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 1645
    .local v3, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_1

    .line 1646
    invoke-virtual {v3, v8, v0, v5}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_1

    .line 1623
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1625
    :cond_3
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    .line 1626
    cmpl-float v6, p2, v8

    if-lez v6, :cond_4

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, p2, v6

    if-lez v6, :cond_4

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1628
    const/4 v2, 0x0

    goto :goto_0

    .line 1631
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1633
    :cond_5
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, p2

    cmpl-float v6, v6, v8

    if-lez v6, :cond_6

    .line 1635
    const/4 v2, 0x1

    goto :goto_0

    .line 1636
    :cond_6
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, v7

    add-float/2addr v6, p2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 1638
    const/4 v2, 0x1

    goto :goto_0

    .line 1649
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_7
    if-nez v2, :cond_8

    .line 1650
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v6, p2

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1653
    .end local v0    # "deltaForContents":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_8
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    .line 1654
    move v0, p1

    .line 1656
    .restart local v0    # "deltaForContents":F
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_c

    .line 1657
    cmpg-float v6, p1, v8

    if-gez v6, :cond_b

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    .line 1658
    iput v8, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1659
    const/4 v2, 0x0

    .line 1681
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1682
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1683
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 1684
    .restart local v3    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_a

    .line 1685
    invoke-virtual {v3, v0, v8, v5}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_3

    .line 1662
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_b
    const/4 v2, 0x1

    goto :goto_2

    .line 1664
    :cond_c
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e

    .line 1665
    cmpl-float v6, p1, v8

    if-lez v6, :cond_d

    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_d

    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1667
    const/4 v2, 0x0

    goto :goto_2

    .line 1670
    :cond_d
    const/4 v2, 0x1

    goto :goto_2

    .line 1672
    :cond_e
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, p1

    cmpl-float v6, v6, v8

    if-lez v6, :cond_f

    .line 1674
    const/4 v2, 0x1

    goto :goto_2

    .line 1675
    :cond_f
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, v7

    add-float/2addr v6, p1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 1677
    const/4 v2, 0x1

    goto :goto_2

    .line 1689
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_10
    if-nez v2, :cond_11

    .line 1690
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v6, p1

    iput v6, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1694
    .end local v0    # "deltaForContents":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_11
    if-nez v2, :cond_12

    :goto_4
    return v4

    :cond_12
    move v4, v5

    goto :goto_4
.end method
