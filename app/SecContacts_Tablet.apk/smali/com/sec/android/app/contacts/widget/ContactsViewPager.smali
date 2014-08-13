.class public Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.super Landroid/view/ViewGroup;
.source "ContactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field public static mPointerY:I


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

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
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
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

.field private mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

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
    .line 84
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 94
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 95
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 96
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 111
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 94
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 95
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 96
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 111
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 146
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    .line 239
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 971
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 972
    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 974
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 975
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 976
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 977
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 978
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 979
    .local v5, "x":I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 980
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 981
    :cond_0
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 983
    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 985
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 986
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 987
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 988
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 989
    .local v1, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 990
    const/4 v2, 0x1

    .line 991
    iput-boolean v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 987
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 997
    :cond_5
    return-void
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1488
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1489
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    .line 1491
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1495
    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1473
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1474
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 1475
    .local v1, "pointerId":I
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1478
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1479
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1480
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1481
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1485
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1478
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

    .line 888
    add-int v10, p1, p3

    .line 889
    .local v10, "widthWithMargin":I
    if-lez p2, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 891
    .local v7, "oldScrollPos":I
    add-int v8, p2, p4

    .line 892
    .local v8, "oldwwm":I
    div-int v6, v7, v8

    .line 893
    .local v6, "oldScrollItem":I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 894
    .local v9, "scrollOffset":F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 895
    .local v1, "scrollPos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 899
    .local v5, "newDuration":I
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 908
    .end local v5    # "newDuration":I
    .end local v6    # "oldScrollItem":I
    .end local v7    # "oldScrollPos":I
    .end local v8    # "oldwwm":I
    .end local v9    # "scrollOffset":F
    :cond_0
    :goto_0
    return-void

    .line 902
    .end local v1    # "scrollPos":I
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 903
    .restart local v1    # "scrollPos":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 905
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 263
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1499
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    .line 1510
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
    .line 1658
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1660
    .local v2, "focusableCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    .line 1662
    .local v1, "descendantFocusability":I
    const/high16 v5, 0x60000

    if-eq v1, v5, :cond_1

    .line 1663
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1664
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1665
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1666
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1667
    .local v4, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1668
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1663
    .end local v4    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1678
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    const/high16 v5, 0x40000

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1684
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1693
    :cond_3
    :goto_1
    return-void

    .line 1687
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1691
    :cond_5
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 553
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;-><init>()V

    .line 554
    .local v0, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iput p1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 556
    if-gez p2, :cond_0

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

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
    .line 1703
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1704
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1705
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1706
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v2

    .line 1707
    .local v2, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1708
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1703
    .end local v2    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1712
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
    .line 797
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 799
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 811
    :goto_0
    return-void

    .line 801
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

    .line 1599
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1600
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1602
    :cond_0
    const/4 v1, 0x0

    .line 1604
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1606
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1607
    if-ne p1, v4, :cond_4

    .line 1610
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1611
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    .line 1631
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1632
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1634
    :cond_2
    return v1

    .line 1613
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1615
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1618
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1619
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1621
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1624
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1626
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1627
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1629
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public beginFakeDrag()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1365
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 1381
    :goto_0
    return v4

    .line 1368
    :cond_0
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    .line 1369
    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 1370
    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    .line 1371
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 1372
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1376
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, "time":J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 1377
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1378
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1379
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1380
    iput-wide v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragBeginTime:J

    move v4, v9

    .line 1381
    goto :goto_0

    .line 1374
    .end local v0    # "time":J
    .end local v8    # "ev":Landroid/view/MotionEvent;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    .line 1524
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 1525
    check-cast v7, Landroid/view/ViewGroup;

    .line 1526
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 1527
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 1528
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 1530
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1533
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1534
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

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    const/4 v0, 0x1

    .line 1543
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :goto_1
    return v0

    .line 1530
    .restart local v1    # "child":Landroid/view/View;
    .restart local v6    # "count":I
    .restart local v7    # "group":Landroid/view/ViewGroup;
    .restart local v8    # "i":I
    .restart local v9    # "scrollX":I
    .restart local v10    # "scrollY":I
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1543
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
    .line 940
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 941
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 943
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 944
    .local v2, "oldX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 945
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 946
    .local v6, "x":I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 948
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 949
    :cond_0
    invoke-virtual {p0, v6, v7}, Landroid/view/View;->scrollTo(II)V

    .line 952
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 953
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 954
    .local v5, "widthWithMargin":I
    div-int v4, v6, v5

    .line 955
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 956
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 957
    .local v0, "offset":F
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 961
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "widthWithMargin":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 968
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 967
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 566
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 567
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 569
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 570
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 571
    .local v1, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 573
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 569
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    .end local v4    # "newPos":I
    :cond_1
    move v2, v6

    .line 566
    goto :goto_0

    .line 577
    .restart local v0    # "i":I
    .restart local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    .restart local v4    # "newPos":I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 578
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 579
    add-int/lit8 v0, v0, -0x1

    .line 580
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 581
    const/4 v2, 0x1

    .line 583
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 585
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 590
    :cond_3
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 591
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 593
    move v3, v4

    .line 596
    :cond_4
    iput v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 597
    const/4 v2, 0x1

    goto :goto_2

    .line 601
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v4    # "newPos":I
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 603
    if-ltz v3, :cond_6

    .line 605
    invoke-virtual {p0, v3, v6, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 606
    const/4 v2, 0x1

    .line 608
    :cond_6
    if-eqz v2, :cond_7

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 612
    :cond_7
    return-void
.end method

.method directScrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    .line 534
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 536
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 550
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 540
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 541
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 542
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 543
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 544
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 545
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 548
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 549
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 1754
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1755
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1756
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1757
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1758
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v3

    .line 1759
    .local v3, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1761
    const/4 v4, 0x1

    .line 1766
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1755
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1766
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    div-int/lit16 v1, v2, 0xff

    .line 1549
    .local v1, "pointerID":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPointerY:I

    .line 1551
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1554
    :goto_0
    return v2

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Landroid/database/StaleDataException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1554
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    .line 1288
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1289
    const/4 v2, 0x0

    .line 1291
    .local v2, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1292
    .local v3, "overScrollMode":I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1295
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1297
    .local v4, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1299
    .local v0, "height":I
    const/high16 v6, 0x43870000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1300
    neg-int v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1301
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1302
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1303
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1305
    .end local v0    # "height":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1307
    .restart local v4    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1308
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1309
    .restart local v0    # "height":I
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v1

    .line 1311
    .local v1, "itemCount":I
    :cond_2
    const/high16 v6, 0x42b40000

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1312
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1314
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1315
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1316
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1323
    .end local v0    # "height":I
    .end local v1    # "itemCount":I
    .end local v4    # "restoreCount":I
    .end local v5    # "width":I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1325
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1327
    :cond_4
    return-void

    .line 1319
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1320
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 497
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 499
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 502
    :cond_0
    return-void
.end method

.method public endFakeDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1391
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    if-nez v2, :cond_0

    .line 1392
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1396
    .local v1, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1397
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    .line 1399
    .local v0, "initialVelocity":I
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 1400
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 1402
    :cond_1
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1403
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1410
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->endDrag()V

    .line 1412
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    .line 1413
    return-void

    .line 1405
    :cond_2
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 1408
    :cond_3
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    invoke-virtual {p0, v2, v4, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1574
    const/4 v0, 0x0

    return v0
.end method

.method public fakeDragBy(F)V
    .locals 18
    .param p1, "xOffset"    # F

    .prologue
    .line 1423
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    if-nez v1, :cond_0

    .line 1424
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1427
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1428
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    sub-float v15, v1, p1

    .line 1429
    .local v15, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v16

    .line 1430
    .local v16, "width":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int v17, v16, v1

    .line 1432
    .local v17, "widthWithMargin":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v10, v1

    .line 1433
    .local v10, "leftBound":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int v1, v1, v17

    int-to-float v14, v1

    .line 1435
    .local v14, "rightBound":F
    cmpg-float v1, v15, v10

    if-gez v1, :cond_3

    .line 1436
    move v15, v10

    .line 1441
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    float-to-int v2, v15

    int-to-float v2, v2

    sub-float v2, v15, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1442
    float-to-int v1, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v1, :cond_2

    .line 1444
    float-to-int v1, v15

    div-int v11, v1, v17

    .line 1445
    .local v11, "position":I
    float-to-int v1, v15

    rem-int v13, v1, v17

    .line 1446
    .local v13, "positionOffsetPixels":I
    int-to-float v1, v13

    move/from16 v0, v17

    int-to-float v2, v0

    div-float v12, v1, v2

    .line 1447
    .local v12, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v1, v11, v12, v13}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1452
    .end local v11    # "position":I
    .end local v12    # "positionOffset":F
    .end local v13    # "positionOffsetPixels":I
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1453
    .local v3, "time":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragBeginTime:J

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 1455
    .local v9, "ev":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v9}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1456
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1457
    return-void

    .line 1437
    .end local v3    # "time":J
    .end local v9    # "ev":Landroid/view/MotionEvent;
    :cond_3
    cmpl-float v1, v15, v14

    if-lez v1, :cond_1

    .line 1438
    move v15, v14

    goto :goto_0
.end method

.method public getAdapter()Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 825
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 826
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 827
    :cond_0
    const/4 v1, 0x0

    .line 831
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 829
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 831
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 814
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 815
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 816
    .local v1, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 814
    .restart local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

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

    iput-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 248
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    .line 249
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    .line 250
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    .line 251
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 252
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 254
    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPrefs:Landroid/content/SharedPreferences;

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "swipe_to_call_message"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollFragmentEnabled:Z

    .line 257
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 260
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 256
    goto :goto_0
.end method

.method public isFakeDragging()Z
    .locals 1

    .prologue
    .line 1469
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 836
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 838
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1331
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1334
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1335
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 1336
    .local v2, "scrollX":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1337
    .local v3, "width":I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1338
    .local v1, "offset":I
    if-eqz v1, :cond_0

    .line 1340
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1341
    .local v0, "left":I
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1342
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1345
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
    .line 1006
    const-string v1, "feature_scroll_fragment"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_scroll_fragment"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollFragmentEnabled:Z

    if-nez v1, :cond_1

    .line 1009
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1126
    :goto_0
    return v1

    .line 1013
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v7, v1, 0xff

    .line 1016
    .local v7, "action":I
    const/4 v1, 0x3

    if-eq v7, v1, :cond_2

    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    .line 1019
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1020
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    .line 1021
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1022
    const/4 v1, 0x0

    goto :goto_0

    .line 1027
    :cond_3
    if-eqz v7, :cond_5

    .line 1028
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_4

    .line 1030
    const/4 v1, 0x1

    goto :goto_0

    .line 1032
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_5

    .line 1034
    const/4 v1, 0x0

    goto :goto_0

    .line 1038
    :cond_5
    sparse-switch v7, :sswitch_data_0

    .line 1126
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1049
    :sswitch_0
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1050
    .local v8, "activePointerId":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_6

    .line 1055
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 1056
    .local v11, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1057
    .local v13, "x":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    sub-float v10, v13, v1

    .line 1058
    .local v10, "dx":F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v14

    .line 1059
    .local v14, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 1060
    .local v15, "y":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionY:F

    sub-float v1, v15, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1061
    .local v16, "yDiff":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 1062
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

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_9

    :cond_8
    const/4 v9, 0x1

    .line 1066
    .local v9, "atEdge":Z
    :goto_2
    const/4 v3, 0x0

    float-to-int v4, v10

    float-to-int v5, v13

    float-to-int v6, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    .line 1069
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionY:F

    .line 1070
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1062
    .end local v9    # "atEdge":Z
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 1072
    .restart local v9    # "atEdge":Z
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v14, v1

    if-lez v1, :cond_b

    cmpl-float v1, v14, v16

    if-lez v1, :cond_b

    .line 1074
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1075
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 1076
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1077
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 1079
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v16, v1

    if-lez v1, :cond_6

    .line 1085
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1096
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

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionY:F

    .line 1098
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1100
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 1102
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1103
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    .line 1104
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1106
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 1107
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1108
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsUnableToDrag:Z

    goto/16 :goto_1

    .line 1118
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1038
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
    .line 912
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 913
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 914
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 916
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 917
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 919
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 920
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 922
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v5

    .local v5, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 923
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 924
    .local v6, "loff":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 925
    .local v1, "childLeft":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 929
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 919
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v6    # "loff":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 934
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 935
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    .line 847
    invoke-static {v6, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-static {v6, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 851
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    .line 853
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    .line 857
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 858
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 859
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 864
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 865
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 869
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 872
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v1

    .line 873
    .local v1, "e":Landroid/database/StaleDataException;
    const-string v4, "ViewPager"

    const-string v5, "StaleDataException : "

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v1    # "e":Landroid/database/StaleDataException;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1723
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1724
    .local v1, "count":I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1725
    const/4 v6, 0x0

    .line 1726
    .local v6, "index":I
    const/4 v5, 0x1

    .line 1727
    .local v5, "increment":I
    move v2, v1

    .line 1733
    .local v2, "end":I
    :goto_0
    move v3, v6

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1734
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1735
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1736
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1737
    .local v4, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1738
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1739
    const/4 v7, 0x1

    .line 1744
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1729
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "increment":I
    .end local v6    # "index":I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1730
    .restart local v6    # "index":I
    const/4 v5, -0x1

    .line 1731
    .restart local v5    # "increment":I
    const/4 v2, -0x1

    .restart local v2    # "end":I
    goto :goto_0

    .line 1733
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1744
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 777
    instance-of v1, p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    if-nez v1, :cond_0

    .line 778
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 793
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 782
    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    .line 783
    .local v0, "ss":Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 787
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 789
    :cond_1
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 790
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 791
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 766
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 767
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 768
    .local v0, "ss":Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    .line 769
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 772
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
    .line 879
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 882
    if-eq p1, p3, :cond_0

    .line 883
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->recomputeScrollPosition(IIII)V

    .line 885
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1132
    const-string v27, "feature_scroll_fragment"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    const-string v27, "feature_scroll_fragment"

    invoke-static/range {v27 .. v27}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollFragmentEnabled:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 1135
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    .line 1282
    :goto_0
    return v27

    .line 1138
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFakeDragging:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 1142
    const/16 v27, 0x1

    goto :goto_0

    .line 1145
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    if-nez v27, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v27

    if-eqz v27, :cond_3

    .line 1148
    const/16 v27, 0x0

    goto :goto_0

    .line 1151
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v27

    if-nez v27, :cond_5

    .line 1153
    :cond_4
    const/16 v27, 0x0

    goto :goto_0

    .line 1156
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-nez v27, :cond_6

    .line 1157
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1159
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1162
    .local v4, "action":I
    const/4 v11, 0x0

    .line 1164
    .local v11, "needsInvalidate":Z
    and-int/lit16 v0, v4, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 1279
    :cond_7
    :goto_1
    :pswitch_0
    if-eqz v11, :cond_8

    .line 1280
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1282
    :cond_8
    const/16 v27, 0x1

    goto :goto_0

    .line 1170
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1174
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1179
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    .line 1180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 1181
    .local v14, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1182
    .local v23, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    sub-float v27, v23, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v24

    .line 1183
    .local v24, "xDiff":F
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 1184
    .local v25, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionY:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v26

    .line 1186
    .local v26, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v24, v27

    if-lez v27, :cond_9

    cmpl-float v27, v24, v26

    if-lez v27, :cond_9

    .line 1188
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    .line 1189
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1190
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 1191
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 1194
    .end local v14    # "pointerIndex":I
    .end local v23    # "x":F
    .end local v24    # "xDiff":F
    .end local v25    # "y":F
    .end local v26    # "yDiff":F
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1198
    .local v5, "activePointerIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1199
    .restart local v23    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    sub-float v6, v27, v23

    .line 1200
    .local v6, "deltaX":F
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v12, v0

    .line 1202
    .local v12, "oldScrollX":F
    add-float v19, v12, v6

    .line 1203
    .local v19, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 1204
    .local v21, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    move/from16 v27, v0

    add-int v22, v21, v27

    .line 1206
    .local v22, "widthWithMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v27

    add-int/lit8 v9, v27, -0x1

    .line 1207
    .local v9, "lastItemIndex":I
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    mul-int v28, v28, v22

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v10, v0

    .line 1208
    .local v10, "leftBound":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v27

    mul-int v27, v27, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v18, v0

    .line 1210
    .local v18, "rightBound":F
    cmpg-float v27, v19, v10

    if-gez v27, :cond_c

    .line 1211
    const/16 v27, 0x0

    cmpl-float v27, v10, v27

    if-nez v27, :cond_a

    .line 1212
    move/from16 v0, v19

    neg-float v13, v0

    .line 1213
    .local v13, "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v13, v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v11

    .line 1215
    .end local v13    # "over":F
    :cond_a
    move/from16 v19, v10

    .line 1224
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

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

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1225
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1227
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    div-int v15, v27, v22

    .line 1228
    .local v15, "position":I
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v27, v0

    rem-int v17, v27, v22

    .line 1229
    .local v17, "positionOffsetPixels":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v16, v27, v28

    .line 1230
    .local v16, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v15, v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 1216
    .end local v15    # "position":I
    .end local v16    # "positionOffset":F
    .end local v17    # "positionOffsetPixels":I
    :cond_c
    cmpl-float v27, v19, v18

    if-lez v27, :cond_b

    .line 1217
    mul-int v27, v9, v22

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v27, v18, v27

    if-nez v27, :cond_d

    .line 1218
    sub-float v13, v19, v18

    .line 1219
    .restart local v13    # "over":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v28, v13, v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v11

    .line 1221
    .end local v13    # "over":F
    :cond_d
    move/from16 v19, v18

    goto/16 :goto_2

    .line 1236
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

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    .line 1238
    .local v20, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 1241
    .local v8, "initialVelocity":I
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 1242
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_10

    .line 1244
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInitialMotionX:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_f

    .line 1245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1253
    :goto_3
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1254
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->endDrag()V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    or-int v11, v27, v28

    .line 1256
    goto/16 :goto_1

    .line 1247
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_3

    .line 1250
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_3

    .line 1259
    .end local v8    # "initialVelocity":I
    .end local v20    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mIsBeingDragged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    move/from16 v27, v0

    const/16 v28, 0x1

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 1261
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 1262
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->endDrag()V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v28

    or-int v11, v27, v28

    goto/16 :goto_1

    .line 1267
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 1268
    .local v7, "index":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 1269
    .restart local v23    # "x":F
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    .line 1270
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 1274
    .end local v7    # "index":I
    .end local v23    # "x":F
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

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

    iput v0, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1164
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

    .line 1638
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1639
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1642
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

    .line 1646
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1647
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1650
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

    .line 615
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-nez v10, :cond_1

    .line 716
    :cond_0
    return-void

    .line 623
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 631
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 635
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 637
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 638
    .local v8, "pageLimit":I
    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 639
    .local v9, "startPos":I
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v0

    .line 640
    .local v0, "N":I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 645
    .local v4, "endPos":I
    const/4 v7, -0x1

    .line 646
    .local v7, "lastPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 647
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 648
    .local v6, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 650
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 651
    add-int/lit8 v5, v5, -0x1

    .line 652
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 668
    :cond_3
    iget v7, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 646
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 653
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 657
    add-int/lit8 v7, v7, 0x1

    .line 658
    if-ge v7, v9, :cond_5

    .line 659
    move v7, v9

    .line 661
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 663
    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 664
    add-int/lit8 v7, v7, 0x1

    .line 665
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 672
    .end local v6    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 673
    :goto_2
    if-ge v7, v4, :cond_9

    .line 674
    add-int/lit8 v7, v7, 0x1

    .line 675
    if-le v7, v9, :cond_8

    .line 676
    :goto_3
    if-gt v7, v4, :cond_9

    .line 678
    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 679
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 672
    goto :goto_2

    :cond_8
    move v7, v9

    .line 675
    goto :goto_3

    .line 690
    :cond_9
    const/4 v2, 0x0

    .line 691
    .local v2, "curItem":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 692
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 693
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "curItem":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    check-cast v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 697
    .restart local v2    # "curItem":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 699
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 701
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 702
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 703
    .local v3, "currentFocused":Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 704
    .restart local v6    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 705
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 706
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 707
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 708
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 709
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 705
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 691
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "currentFocused":Landroid/view/View;
    .end local v6    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 697
    goto :goto_5

    .restart local v3    # "currentFocused":Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 703
    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 279
    .local v1, "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v1    # "ii":Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 282
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 284
    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 285
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->scrollTo(II)V

    .line 288
    .end local v0    # "i":I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 292
    new-instance v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 295
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 296
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 298
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 299
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 300
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 301
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 306
    :cond_3
    :goto_1
    return-void

    .line 303
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    const/4 v1, 0x0

    .line 320
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 321
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 322
    return-void

    :cond_0
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 332
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 333
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

    .line 340
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 341
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 348
    :cond_3
    if-gez p1, :cond_6

    .line 349
    const/4 p1, 0x0

    .line 353
    :cond_4
    :goto_1
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 354
    .local v3, "pageLimit":I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 358
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 359
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 350
    .end local v2    # "i":I
    .end local v3    # "pageLimit":I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 351
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 362
    .restart local v3    # "pageLimit":I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    .line 363
    .local v1, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 366
    .local v0, "destX":I
    const-string v4, "feature_scroll_fragment"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 367
    if-eqz p2, :cond_9

    .line 368
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->smoothScrollTo(II)V

    .line 369
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0    # "destX":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    move v1, v5

    .line 362
    goto :goto_3

    .line 373
    .restart local v0    # "destX":I
    .restart local v1    # "dispatchSelected":Z
    :cond_9
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->directScrollTo(II)V

    .line 374
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    .line 375
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 377
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 378
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0

    .line 381
    :cond_b
    if-eqz p2, :cond_d

    .line 382
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->directScrollTo(II)V

    .line 383
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_c

    .line 384
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 386
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 387
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0

    .line 389
    :cond_d
    if-eqz v1, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_e

    .line 390
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 392
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 393
    invoke-virtual {p0, v0, v5}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .param p1, "limit"    # I

    .prologue
    const/4 v3, 0x1

    .line 431
    if-ge p1, v3, :cond_0

    .line 432
    const-string v0, "ViewPager"

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

    .line 434
    const/4 p1, 0x1

    .line 436
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 437
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 438
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 440
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    .line 400
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .prologue
    .line 451
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    .line 452
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 455
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->recomputeScrollPosition(IIII)V

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 458
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 487
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 476
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 477
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 479
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollFragment(Z)V
    .locals 1
    .param p1, "swipeTo"    # Z

    .prologue
    .line 1776
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollFragmentEnabled:Z

    .line 1777
    return-void

    .line 1776
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

    .line 511
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 513
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 531
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 517
    .local v2, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 518
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 519
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 520
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 522
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 527
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 528
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 529
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 530
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
