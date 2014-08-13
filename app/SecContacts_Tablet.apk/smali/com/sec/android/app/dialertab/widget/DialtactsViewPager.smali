.class public Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;
.super Landroid/view/ViewGroup;
.source "DialtactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DEFAULT_OFFSCREEN_PAGES_ONLY_ONE:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DialtactsViewPager"

.field private static final USE_CACHE:Z

.field public static mKeyCode:I

.field public static mPointerY:I


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollFragmentEnabled:Z

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 232
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 95
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 96
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 97
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 112
    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 127
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->initViewPager()V

    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 237
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 95
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 96
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 97
    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 112
    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 127
    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 147
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->initViewPager()V

    .line 239
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 978
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 979
    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 981
    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 982
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 983
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 984
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 985
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 986
    .local v5, "x":I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 987
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 988
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 990
    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 992
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 993
    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 995
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 996
    .local v1, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 997
    const/4 v2, 0x1

    .line 998
    iput-boolean v8, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    .line 994
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 1002
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 1004
    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1498
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1499
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1505
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1483
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1484
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1485
    .local v1, "pointerId":I
    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1488
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1489
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1490
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1491
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1492
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1495
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1488
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .prologue
    const/4 v2, 0x0

    .line 895
    add-int v10, p1, p3

    .line 896
    .local v10, "widthWithMargin":I
    if-lez p2, :cond_1

    .line 897
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 898
    .local v7, "oldScrollPos":I
    add-int v8, p2, p4

    .line 899
    .local v8, "oldwwm":I
    div-int v6, v7, v8

    .line 900
    .local v6, "oldScrollItem":I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 901
    .local v9, "scrollOffset":F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 902
    .local v1, "scrollPos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 906
    .local v5, "newDuration":I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 915
    .end local v5    # "newDuration":I
    .end local v6    # "oldScrollItem":I
    .end local v7    # "oldScrollPos":I
    .end local v8    # "oldwwm":I
    .end local v9    # "scrollOffset":F
    :cond_0
    :goto_0
    return-void

    .line 909
    .end local v1    # "scrollPos":I
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 910
    .restart local v1    # "scrollPos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1509
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollingCacheEnabled:Z

    .line 1520
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
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
    .line 1665
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1670
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1672
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_3

    .line 1673
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1674
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1675
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1676
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v4

    .line 1677
    .local v4, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v4, :cond_2

    iget v5, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2

    .line 1678
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1673
    .end local v4    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1688
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_3
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 1694
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1697
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1701
    :cond_5
    if-eqz p1, :cond_0

    .line 1702
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addNewItem(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 564
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;-><init>()V

    .line 565
    .local v0, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iput p1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 567
    if-gez p2, :cond_0

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1715
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1716
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1717
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1718
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v2

    .line 1719
    .local v2, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1720
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1715
    .end local v2    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1724
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 810
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 822
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1606
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1607
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1609
    :cond_0
    const/4 v1, 0x0

    .line 1611
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1613
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1614
    if-ne p1, v4, :cond_4

    .line 1617
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1618
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageLeft()Z

    move-result v1

    .line 1638
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1639
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1641
    :cond_2
    return v1

    .line 1620
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1622
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1625
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1626
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1628
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1631
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1633
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1634
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1636
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1375
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1391
    :goto_0
    return v4

    .line 1378
    :cond_0
    iput-boolean v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    .line 1379
    invoke-direct {p0, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 1380
    iput v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    .line 1381
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1382
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1386
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1387
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1388
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1389
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1390
    iput-wide v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1391
    goto :goto_0

    .line 1384
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 1534
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1535
    check-cast v7, Landroid/view/ViewGroup;

    .line 1536
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1537
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1538
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1540
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1543
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1544
    .local v1, "child":Landroid/view/View;
    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt v0, v2, :cond_0

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    add-int v0, p4, v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    const/4 v0, 0x1

    .line 1553
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1540
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1553
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 947
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 948
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 950
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 951
    .local v2, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 952
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 953
    .local v6, "x":I
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 955
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 956
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->scrollTo(II)V

    .line 959
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 960
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 961
    .local v5, "widthWithMargin":I
    div-int v4, v6, v5

    .line 962
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 963
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 964
    .local v0, "offset":F
    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 968
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "widthWithMargin":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 975
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 974
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 577
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 578
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 580
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 581
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 582
    .local v1, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v8, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 584
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 580
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "newPos":I
    :cond_1
    move v2, v6

    .line 577
    goto :goto_0

    .line 588
    .restart local v0    # "i":I
    .restart local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "newPos":I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 589
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    add-int/lit8 v0, v0, -0x1

    .line 591
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v8, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 592
    const/4 v2, 0x1

    .line 594
    iget v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iget v8, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 596
    iget v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 601
    :cond_3
    iget v7, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 602
    iget v7, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 604
    move v3, v4

    .line 607
    :cond_4
    iput v4, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 608
    const/4 v2, 0x1

    goto :goto_2

    .line 612
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .end local v4    # "newPos":I
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 614
    if-ltz v3, :cond_6

    .line 616
    invoke-virtual {p0, v3, v6, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 617
    const/4 v2, 0x1

    .line 619
    :cond_6
    if-eqz v2, :cond_7

    .line 620
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 621
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 623
    :cond_7
    return-void
.end method

.method directScrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 547
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 561
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 551
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 552
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 553
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 554
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 556
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 559
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 560
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1567
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mKeyCode:I

    .line 1570
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1766
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1767
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1768
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1769
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1770
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v3

    .line 1771
    .local v3, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1773
    const/4 v4, 0x1

    .line 1778
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1767
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1778
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    div-int/lit16 v0, v1, 0xff

    .line 1559
    .local v0, "pointerID":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPointerY:I

    .line 1560
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mKeyCode:I

    .line 1561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 1298
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1299
    const/4 v2, 0x0

    .line 1301
    .local v2, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1302
    .local v3, "overScrollMode":I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1305
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1307
    .local v4, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1309
    .local v0, "height":I
    const/high16 v6, 0x43870000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1310
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1311
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1312
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1313
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1315
    .end local v0    # "height":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1317
    .restart local v4    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1318
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1319
    .restart local v0    # "height":I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v1

    .line 1321
    .local v1, "itemCount":I
    :cond_2
    const/high16 v6, 0x42b40000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1322
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1324
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1325
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1326
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1333
    .end local v0    # "height":I
    .end local v1    # "itemCount":I
    .end local v4    # "restoreCount":I
    .end local v5    # "width":I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1337
    :cond_4
    return-void

    .line 1329
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1330
    iget-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 507
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 510
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1401
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 1402
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1405
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1406
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1407
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    .line 1409
    .local v0, "initialVelocity":I
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 1410
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMinimumVelocity:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1412
    :cond_1
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1413
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1420
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->endDrag()V

    .line 1422
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    .line 1423
    return-void

    .line 1415
    :cond_2
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1418
    :cond_3
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1582
    const/4 v0, 0x0

    .line 1583
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1584
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1602
    :cond_0
    :goto_0
    return v0

    .line 1594
    :pswitch_0
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1595
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1596
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 1433
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 1434
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1437
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1438
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float v15, v1, p1

    .line 1439
    .local v15, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 1440
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int v17, v16, v1

    .line 1442
    .local v17, "widthWithMargin":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v10, v1

    .line 1443
    .local v10, "leftBound":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v17

    int-to-float v14, v1

    .line 1445
    .local v14, "rightBound":F
    cmpg-float v1, v15, v10

    if-gez v1, :cond_3

    .line 1446
    move v15, v10

    .line 1451
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1452
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2

    .line 1454
    float-to-int v1, v15

    div-int v11, v1, v17

    .line 1455
    .local v11, "position":I
    float-to-int v1, v15

    rem-int v13, v1, v17

    .line 1456
    .local v13, "positionOffsetPixels":I
    int-to-float v1, v13

    move/from16 v0, v17

    int-to-float v2, v0

    div-float v12, v1, v2

    .line 1457
    .local v12, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v1, v11, v12, v13}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1462
    .end local v11    # "position":I
    .end local v12    # "positionOffset":F
    .end local v13    # "positionOffsetPixels":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1463
    .local v3, "time":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1465
    .local v9, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1466
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1467
    return-void

    .line 1447
    .end local v3    # "time":J
    .end local v9    # "ev":Landroid/view/MotionEvent;
    :cond_3
    cmpl-float v1, v15, v14

    if-lez v1, :cond_1

    .line 1448
    move v15, v14

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 836
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 837
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 838
    :cond_0
    const/4 v1, 0x0

    .line 842
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 840
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 842
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 826
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 827
    .local v1, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 825
    .restart local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 242
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 243
    const/high16 v4, 0x40000

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 244
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 246
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/widget/Scroller;

    invoke-direct {v4, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 248
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mTouchSlop:I

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMinimumVelocity:I

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMaximumVelocity:I

    .line 251
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 252
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 254
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "feature_is_note_h"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 259
    :cond_0
    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPrefs:Landroid/content/SharedPreferences;

    .line 261
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "swipe_to_call_message"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollFragmentEnabled:Z

    .line 262
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 265
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 261
    goto :goto_0
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 847
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 849
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1341
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1344
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1345
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1346
    .local v2, "scrollX":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1347
    .local v3, "width":I
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1348
    .local v1, "offset":I
    if-eqz v1, :cond_0

    .line 1350
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1351
    .local v0, "left":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1352
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1355
    .end local v0    # "left":I
    .end local v1    # "offset":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1013
    const-string v1, "feature_scroll_fragment"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_scroll_fragment"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollFragmentEnabled:Z

    if-nez v1, :cond_1

    .line 1016
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1133
    :goto_0
    return v1

    .line 1020
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1023
    .local v7, "action":I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_2

    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    .line 1026
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1027
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    .line 1028
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1029
    const/4 v1, 0x0

    goto :goto_0

    .line 1034
    :cond_3
    if-eqz v7, :cond_5

    .line 1035
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_4

    .line 1037
    const/4 v1, 0x1

    goto :goto_0

    .line 1039
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_5

    .line 1041
    const/4 v1, 0x0

    goto :goto_0

    .line 1045
    :cond_5
    sparse-switch v7, :sswitch_data_0

    .line 1133
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1056
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1057
    .local v8, "activePointerId":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    .line 1062
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1063
    .local v11, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1064
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    sub-float v10, v13, v1

    .line 1065
    .local v10, "dx":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1066
    .local v14, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 1067
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionY:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1068
    .local v16, "yDiff":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 1069
    .local v12, "scrollX":I
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_7

    if-eqz v12, :cond_8

    :cond_7
    const/4 v1, 0x0

    cmpg-float v1, v10, v1

    if-gez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_9

    :cond_8
    const/4 v9, 0x1

    .line 1073
    .local v9, "atEdge":Z
    :goto_2
    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v13

    float-to-int v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1075
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    .line 1076
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionY:F

    .line 1077
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1069
    .end local v9    # "atEdge":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 1079
    .restart local v9    # "atEdge":Z
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_b

    cmpl-float v1, v14, v16

    if-lez v1, :cond_b

    .line 1081
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1082
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 1083
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1084
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 1086
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_6

    .line 1092
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1103
    .end local v8    # "activePointerId":I
    .end local v9    # "atEdge":Z
    .end local v10    # "dx":F
    .end local v11    # "pointerIndex":I
    .end local v12    # "scrollX":I
    .end local v13    # "x":F
    .end local v14    # "xDiff":F
    .end local v15    # "y":F
    .end local v16    # "yDiff":F
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1104
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionY:F

    .line 1105
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1107
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 1109
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1110
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    .line 1111
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1113
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 1114
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1115
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1125
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1045
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 919
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 920
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 921
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 923
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 924
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 926
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 927
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 929
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v5

    .local v5, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 930
    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 931
    .local v6, "loff":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 932
    .local v1, "childLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 936
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 926
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    .end local v6    # "loff":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 941
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    .line 942
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000

    const/4 v5, 0x0

    .line 858
    invoke-static {v5, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 862
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    .line 864
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    .line 868
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 869
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 870
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInLayout:Z

    .line 873
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 874
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 875
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 876
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 879
    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 874
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1736
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1737
    const/4 v6, 0x0

    .line 1738
    .local v6, "index":I
    const/4 v5, 0x1

    .line 1739
    .local v5, "increment":I
    move v2, v1

    .line 1745
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1746
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1747
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1748
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v4

    .line 1749
    .local v4, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1750
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1751
    const/4 v7, 0x1

    .line 1756
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1741
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1742
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 1743
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 1745
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1756
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 788
    instance-of v1, p1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    if-nez v1, :cond_0

    .line 789
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 804
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 793
    check-cast v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    .line 794
    .local v0, "ss":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 798
    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 800
    :cond_1
    iget v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 801
    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 802
    iget-object v1, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 777
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 778
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 779
    .local v0, "ss":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->position:I

    .line 780
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 783
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 886
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 889
    if-eq p1, p3, :cond_0

    .line 890
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->recomputeScrollPosition(IIII)V

    .line 892
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1139
    const-string v27, "feature_scroll_fragment"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "feature_scroll_fragment"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollFragmentEnabled:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 1142
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    .line 1290
    :goto_0
    return v27

    .line 1146
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFakeDragging:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1150
    const/16 v27, 0x1

    goto :goto_0

    .line 1153
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v27

    if-eqz v27, :cond_3

    .line 1156
    const/16 v27, 0x0

    goto :goto_0

    .line 1159
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v27

    if-nez v27, :cond_5

    .line 1161
    :cond_4
    const/16 v27, 0x0

    goto :goto_0

    .line 1164
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 1165
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1167
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1169
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1170
    .local v4, "action":I
    const/4 v11, 0x0

    .line 1172
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 1287
    :cond_7
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_8

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1290
    :cond_8
    const/16 v27, 0x1

    goto :goto_0

    .line 1178
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1182
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1187
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 1188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1189
    .local v14, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1190
    .local v23, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    sub-float v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 1191
    .local v24, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1192
    .local v25, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionY:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 1194
    .local v26, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v24, v27

    if-lez v27, :cond_9

    cmpl-float v27, v24, v26

    if-lez v27, :cond_9

    .line 1196
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    .line 1197
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1198
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 1199
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 1202
    .end local v14    # "pointerIndex":I
    .end local v23    # "x":F
    .end local v24    # "xDiff":F
    .end local v25    # "y":F
    .end local v26    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1206
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1207
    .restart local v23    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    sub-float v6, v27, v23

    .line 1208
    .local v6, "deltaX":F
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1209
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 1210
    .local v12, "oldScrollX":F
    add-float v19, v12, v6

    .line 1211
    .local v19, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 1212
    .local v21, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    move/from16 v27, v0

    add-int v22, v21, v27

    .line 1214
    .local v22, "widthWithMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v27

    add-int/lit8 v9, v27, -0x1

    .line 1215
    .local v9, "lastItemIndex":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    mul-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v10, v0

    .line 1216
    .local v10, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v27

    mul-int v27, v27, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1218
    .local v18, "rightBound":F
    cmpg-float v27, v19, v10

    if-gez v27, :cond_c

    .line 1219
    const/16 v27, 0x0

    cmpl-float v27, v10, v27

    if-nez v27, :cond_a

    .line 1220
    move/from16 v0, v19

    neg-float v13, v0

    .line 1221
    .local v13, "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v13, v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v11

    .line 1223
    .end local v13    # "over":F
    :cond_a
    move/from16 v19, v10

    .line 1232
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v19, v28

    add-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1233
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1235
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    div-int v15, v27, v22

    .line 1236
    .local v15, "position":I
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    rem-int v17, v27, v22

    .line 1237
    .local v17, "positionOffsetPixels":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v16, v27, v28

    .line 1238
    .local v16, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v15, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 1224
    .end local v15    # "position":I
    .end local v16    # "positionOffset":F
    .end local v17    # "positionOffsetPixels":I
    :cond_c
    cmpl-float v27, v19, v18

    if-lez v27, :cond_b

    .line 1225
    mul-int v27, v9, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v18, v27

    if-nez v27, :cond_d

    .line 1226
    sub-float v13, v19, v18

    .line 1227
    .restart local v13    # "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v13, v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v11

    .line 1229
    .end local v13    # "over":F
    :cond_d
    move/from16 v19, v18

    goto/16 :goto_2

    .line 1244
    .end local v5    # "activePointerIndex":I
    .end local v6    # "deltaX":F
    .end local v9    # "lastItemIndex":I
    .end local v10    # "leftBound":F
    .end local v12    # "oldScrollX":F
    .end local v18    # "rightBound":F
    .end local v19    # "scrollX":F
    .end local v21    # "width":I
    .end local v22    # "widthWithMargin":I
    .end local v23    # "x":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    .line 1246
    .local v20, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMaximumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 1249
    .local v8, "initialVelocity":I
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 1250
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMinimumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v29, v0

    const-wide/high16 v31, 0x4008000000000000L

    div-double v29, v29, v31

    cmpl-double v27, v27, v29

    if-ltz v27, :cond_10

    .line 1252
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mInitialMotionX:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_f

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1261
    :goto_3
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->endDrag()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    or-int v11, v27, v28

    .line 1264
    goto/16 :goto_1

    .line 1255
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_3

    .line 1258
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_3

    .line 1267
    .end local v8    # "initialVelocity":I
    .end local v20    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1269
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->endDrag()V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    or-int v11, v27, v28

    goto/16 :goto_1

    .line 1275
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 1276
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1277
    .restart local v23    # "x":F
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    .line 1278
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1282
    .end local v7    # "index":I
    .end local v23    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1645
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1646
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 1649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1653
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1654
    iget v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItem(IZ)V

    .line 1657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 626
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-nez v10, :cond_1

    .line 727
    :cond_0
    return-void

    .line 634
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 646
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 648
    iget v8, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 649
    .local v8, "pageLimit":I
    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 650
    .local v9, "startPos":I
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v0

    .line 651
    .local v0, "N":I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 656
    .local v4, "endPos":I
    const/4 v7, -0x1

    .line 657
    .local v7, "lastPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 658
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 659
    .local v6, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 661
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 662
    add-int/lit8 v5, v5, -0x1

    .line 663
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 679
    :cond_3
    iget v7, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 657
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 664
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 668
    add-int/lit8 v7, v7, 0x1

    .line 669
    if-ge v7, v9, :cond_5

    .line 670
    move v7, v9

    .line 672
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 674
    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->addNewItem(II)V

    .line 675
    add-int/lit8 v7, v7, 0x1

    .line 676
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 683
    .end local v6    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    .line 684
    :goto_2
    if-ge v7, v4, :cond_9

    .line 685
    add-int/lit8 v7, v7, 0x1

    .line 686
    if-le v7, v9, :cond_8

    .line 687
    :goto_3
    if-gt v7, v4, :cond_9

    .line 689
    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->addNewItem(II)V

    .line 690
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 683
    goto :goto_2

    :cond_8
    move v7, v9

    .line 686
    goto :goto_3

    .line 701
    :cond_9
    const/4 v2, 0x0

    .line 702
    .local v2, "curItem":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 703
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 704
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "curItem":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    check-cast v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 708
    .restart local v2    # "curItem":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 710
    iget-object v10, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 712
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 713
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 714
    .local v3, "currentFocused":Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v6

    .line 715
    .restart local v6    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 716
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 717
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 718
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    move-result-object v6

    .line 719
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 720
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 716
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 702
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "currentFocused":Landroid/view/View;
    .end local v6    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 708
    goto :goto_5

    .restart local v3    # "currentFocused":Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 714
    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;)V

    .line 281
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    .line 284
    .local v1, "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "ii":Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 288
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 289
    iput v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    .line 290
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 293
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 297
    new-instance v2, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    .line 299
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mObserver:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter$DataSetObserver;)V

    .line 300
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 301
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 303
    iget v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 304
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredCurItem:I

    .line 305
    iput-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 306
    iput-object v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 311
    :cond_3
    :goto_1
    return-void

    .line 308
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 325
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 326
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 327
    return-void

    :cond_0
    move v0, v1

    .line 326
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 337
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 340
    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPopulatePending:Z

    .line 341
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 342
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 7
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 350
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 353
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_3
    if-gez p1, :cond_6

    .line 358
    const/4 p1, 0x0

    .line 362
    :cond_4
    :goto_1
    iget v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 363
    .local v3, "pageLimit":I
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 367
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 368
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$ItemInfo;->scrolling:Z

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 359
    .end local v2    # "i":I
    .end local v3    # "pageLimit":I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 360
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mAdapter:Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 371
    .restart local v3    # "pageLimit":I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_9

    .line 372
    .local v1, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mCurItem:I

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 375
    .local v0, "destX":I
    if-eqz p2, :cond_a

    .line 376
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->smoothScrollTo(II)V

    .line 377
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_8

    .line 378
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 380
    :cond_8
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 382
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_9
    move v1, v5

    .line 371
    goto :goto_3

    .line 385
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_a
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->directScrollTo(II)V

    .line 386
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_b

    .line 387
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 389
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 390
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 428
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "feature_is_note_h"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    if-gez p1, :cond_0

    .line 431
    const-string v0, "DialtactsViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 p1, 0x0

    .line 444
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 445
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOffscreenPageLimit:I

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->populate()V

    .line 448
    :cond_1
    return-void

    .line 436
    :cond_2
    if-ge p1, v3, :cond_0

    .line 437
    const-string v0, "DialtactsViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 p1, 0x1

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/dialertab/widget/DialtactsViewPager$OnPageChangeListener;

    .line 396
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 459
    iget v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    .line 460
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mPageMargin:I

    .line 462
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 463
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->recomputeScrollPosition(IIII)V

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 466
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 485
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 487
    return-void

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollFragment(Z)V
    .locals 1
    .param p1, "swipeTo"    # Z

    .prologue
    .line 1789
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrollFragmentEnabled:Z

    .line 1790
    return-void

    .line 1789
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method smoothScrollTo(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 519
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 521
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 525
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 526
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 527
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 528
    .local v1, "dy":I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->completeScroll()V

    .line 530
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 533
    :cond_2
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 534
    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 536
    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScrolling:Z

    .line 537
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->setScrollState(I)V

    .line 538
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 539
    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
