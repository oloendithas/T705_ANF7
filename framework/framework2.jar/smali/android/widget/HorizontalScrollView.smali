.class public Landroid/widget/HorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HorizontalScrollView$1;,
        Landroid/widget/HorizontalScrollView$HoverScrollHandler;,
        Landroid/widget/HorizontalScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "HorizontalScrollView"

.field private static final THRESHOLD_RATIO_X:I = 0x30


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mHapticNewScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverAreaWidth_DP:I

.field private mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastHapticScrollX:I

.field private mLastMotionX:I

.field private mLastScroll:J

.field private mLastScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mPixelThresholdX:I

.field private mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 256
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0xf

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 93
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 104
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 118
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 135
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 149
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    .line 160
    iput v4, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 207
    const/16 v1, 0x19

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth_DP:I

    .line 209
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 214
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    .line 215
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    .line 216
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 217
    const/16 v1, 0x12c

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:I

    .line 218
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 219
    iput v4, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 224
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 229
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 234
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 239
    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 244
    iput v5, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 249
    iput-boolean v2, p0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    .line 2176
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    .line 261
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initScrollView()V

    .line 263
    sget-object v1, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 266
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    .line 270
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 271
    return-void
.end method

.method static synthetic access$100(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView$HoverScrollHandler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/HorizontalScrollView;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/widget/HorizontalScrollView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/HorizontalScrollView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/HorizontalScrollView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Landroid/widget/HorizontalScrollView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Landroid/widget/HorizontalScrollView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HorizontalScrollView;

    .prologue
    .line 79
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_18

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 396
    .local v1, "childWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 398
    .end local v1    # "childWidth":I
    :cond_18
    return v2
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    .line 2093
    if-ge p1, p2, :cond_4

    if-gez p0, :cond_6

    .line 2094
    :cond_4
    const/4 p0, 0x0

    .line 2099
    .end local p0    # "n":I
    :cond_5
    :goto_5
    return p0

    .line 2096
    .restart local p0    # "n":I
    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_5

    .line 2097
    sub-int p0, p2, p1

    goto :goto_5
.end method

.method private doScrollX(I)V
    .registers 4
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1565
    if-eqz p1, :cond_a

    .line 1566
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1567
    invoke-virtual {p0, p1, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1572
    :cond_a
    :goto_a
    return-void

    .line 1569
    :cond_b
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_a
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1311
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1312
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1321
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1323
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1324
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 1325
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1326
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1327
    .local v8, "viewLeft":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1329
    .local v9, "viewRight":I
    if-ge p2, v9, :cond_29

    if-ge v8, p3, :cond_29

    .line 1335
    if-ge p2, v8, :cond_2c

    if-ge v9, p3, :cond_2c

    const/4 v7, 0x1

    .line 1338
    .local v7, "viewIsFullyContained":Z
    :goto_25
    if-nez v1, :cond_2e

    .line 1340
    move-object v1, v5

    .line 1341
    move v3, v7

    .line 1324
    .end local v7    # "viewIsFullyContained":Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1335
    :cond_2c
    const/4 v7, 0x0

    goto :goto_25

    .line 1343
    .restart local v7    # "viewIsFullyContained":Z
    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_47

    :cond_3e
    const/4 v6, 0x1

    .line 1347
    .local v6, "viewIsCloserToBoundary":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 1348
    if-eqz v7, :cond_29

    if-eqz v6, :cond_29

    .line 1354
    move-object v1, v5

    goto :goto_29

    .line 1343
    .end local v6    # "viewIsCloserToBoundary":Z
    :cond_47
    const/4 v6, 0x0

    goto :goto_3f

    .line 1357
    .restart local v6    # "viewIsCloserToBoundary":Z
    :cond_49
    if-eqz v7, :cond_4e

    .line 1359
    move-object v1, v5

    .line 1360
    const/4 v3, 0x1

    goto :goto_29

    .line 1361
    :cond_4e
    if-eqz v6, :cond_29

    .line 1366
    move-object v1, v5

    goto :goto_29

    .line 1373
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewIsCloserToBoundary":Z
    .end local v7    # "viewIsFullyContained":Z
    .end local v8    # "viewLeft":I
    .end local v9    # "viewRight":I
    :cond_52
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .param p1, "leftFocus"    # Z
    .param p2, "left"    # I
    .param p3, "preferredFocusable"    # Landroid/view/View;

    .prologue
    .line 1280
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1281
    .local v0, "fadingEdgeLength":I
    add-int v1, p2, v0

    .line 1282
    .local v1, "leftWithoutFadingEdge":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1284
    .local v2, "rightWithoutFadingEdge":I
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_1e

    .line 1290
    .end local p3    # "preferredFocusable":Landroid/view/View;
    :goto_1d
    return-object p3

    .restart local p3    # "preferredFocusable":Landroid/view/View;
    :cond_1e
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_1d
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1248
    const/4 v1, 0x0

    .line 1249
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 1250
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1251
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1254
    .end local v0    # "child":Landroid/view/View;
    :cond_1f
    return v1
.end method

.method private hapticScrollTo(I)V
    .registers 4
    .param p1, "x"    # I

    .prologue
    .line 2030
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/widget/HorizontalScrollView;->mPixelThresholdX:I

    if-le v0, v1, :cond_28

    iget v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, v1, :cond_28

    .line 2032
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_22

    .line 2033
    const/16 v0, 0x5208

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 2034
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    .line 2036
    :cond_22
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 2037
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastScrollX:I

    .line 2039
    :cond_28
    return-void
.end method

.method private inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 537
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 538
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 539
    .local v1, "scrollX":I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_28

    const/4 v2, 0x1

    .line 545
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollX":I
    :cond_28
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 550
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 554
    :goto_a
    return-void

    .line 552
    :cond_b
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 313
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 314
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 315
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 316
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 318
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_3c

    .line 319
    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 321
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v1, p0, v2}, Landroid/widget/OverScroller;->setHapticView(Landroid/view/View;Landroid/view/HapticPreDrawListener;)V

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x30

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mPixelThresholdX:I

    .line 327
    :cond_3c
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 328
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 329
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    .line 330
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    .line 331
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    .line 332
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    .line 333
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 558
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 560
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1544
    invoke-direct {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1963
    if-ne p0, p1, :cond_4

    .line 1968
    :cond_3
    :goto_3
    return v1

    .line 1967
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1968
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .registers 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I

    .prologue
    .line 1552
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1553
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1555
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1114
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1115
    .local v1, "pointerId":I
    iget v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2b

    .line 1119
    if-nez v2, :cond_2c

    const/4 v0, 0x1

    .line 1120
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 1121
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1122
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2b

    .line 1123
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1126
    .end local v0    # "newPointerIndex":I
    :cond_2b
    return-void

    .line 1119
    :cond_2c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 564
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 1456
    const/4 v4, 0x1

    .line 1458
    .local v4, "handled":Z
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1459
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 1460
    .local v0, "containerLeft":I
    add-int v1, v0, v6

    .line 1461
    .local v1, "containerRight":I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_26

    const/4 v3, 0x1

    .line 1463
    .local v3, "goLeft":Z
    :goto_10
    invoke-direct {p0, v3, p2, p3}, Landroid/widget/HorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1464
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_17

    .line 1465
    move-object v5, p0

    .line 1468
    :cond_17
    if-lt p2, v0, :cond_28

    if-gt p3, v1, :cond_28

    .line 1469
    const/4 v4, 0x0

    .line 1475
    :goto_1c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1477
    :cond_25
    return v4

    .line 1461
    .end local v3    # "goLeft":Z
    .end local v5    # "newFocused":Landroid/view/View;
    :cond_26
    const/4 v3, 0x0

    goto :goto_10

    .line 1471
    .restart local v3    # "goLeft":Z
    .restart local v5    # "newFocused":Landroid/view/View;
    :cond_28
    if-eqz v3, :cond_30

    sub-int v2, p2, v0

    .line 1472
    .local v2, "delta":I
    :goto_2c
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_1c

    .line 1471
    .end local v2    # "delta":I
    :cond_30
    sub-int v2, p3, v1

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1727
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1730
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1732
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1734
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_16

    .line 1735
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 1737
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1748
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1749
    .local v0, "delta":I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1750
    .local v1, "scroll":Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1751
    if-eqz p2, :cond_12

    .line 1752
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->scrollBy(II)V

    .line 1757
    :cond_f
    :goto_f
    return v1

    .end local v1    # "scroll":Z
    :cond_10
    move v1, v2

    .line 1749
    goto :goto_8

    .line 1754
    .restart local v1    # "scroll":Z
    :cond_12
    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 360
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 369
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 387
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1490
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1492
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1494
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1496
    .local v3, "maxJump":I
    if-eqz v4, :cond_53

    invoke-direct {p0, v4, v3}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1497
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1498
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1499
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1500
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    .line 1501
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1524
    :goto_34
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1531
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    .line 1532
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1533
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1534
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1536
    .end local v2    # "descendantFocusability":I
    :cond_51
    const/4 v7, 0x1

    :cond_52
    return v7

    .line 1504
    .end local v6    # "scrollDelta":I
    :cond_53
    move v6, v3

    .line 1506
    .restart local v6    # "scrollDelta":I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6b

    .line 1507
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 1518
    :cond_62
    :goto_62
    if-eqz v6, :cond_52

    .line 1521
    if-ne p1, v10, :cond_8c

    move v7, v6

    :goto_67
    invoke-direct {p0, v7}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_34

    .line 1508
    :cond_6b
    if-ne p1, v10, :cond_62

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_62

    .line 1510
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1512
    .local v1, "daRight":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1514
    .local v5, "screenRight":I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_62

    .line 1515
    sub-int v6, v1, v5

    goto :goto_62

    .line 1521
    .end local v1    # "daRight":I
    .end local v5    # "screenRight":I
    :cond_8c
    neg-int v7, v6

    goto :goto_67
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    .line 1640
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1620
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1621
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1622
    .local v0, "contentWidth":I
    if-nez v1, :cond_13

    .line 1635
    .end local v0    # "contentWidth":I
    :goto_12
    return v0

    .line 1626
    .restart local v0    # "contentWidth":I
    :cond_13
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1627
    .local v3, "scrollRange":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1628
    .local v4, "scrollX":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1629
    .local v2, "overscrollRight":I
    if-gez v4, :cond_28

    .line 1630
    sub-int/2addr v3, v4

    :cond_26
    :goto_26
    move v0, v3

    .line 1635
    goto :goto_12

    .line 1631
    :cond_28
    if-le v4, v2, :cond_26

    .line 1632
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_26
.end method

.method public computeScroll()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 1674
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1691
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1692
    .local v3, "oldX":I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 1693
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v12

    .line 1694
    .local v12, "x":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1696
    .local v13, "y":I
    if-ne v3, v12, :cond_1e

    if-eq v4, v13, :cond_51

    .line 1697
    :cond_1e
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    .line 1698
    .local v5, "range":I
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v11

    .line 1699
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_2c

    if-ne v11, v10, :cond_5b

    if-lez v5, :cond_5b

    .line 1702
    .local v10, "canOverscroll":Z
    :cond_2c
    :goto_2c
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v7, p0, Landroid/widget/HorizontalScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v8, v6

    move v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 1704
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1706
    if-eqz v10, :cond_51

    .line 1707
    if-gez v12, :cond_5d

    if-ltz v3, :cond_5d

    .line 1708
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1715
    .end local v5    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    :cond_51
    :goto_51
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1716
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1719
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_5a
    return-void

    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v5    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_5b
    move v10, v6

    .line 1699
    goto :goto_2c

    .line 1709
    .restart local v10    # "canOverscroll":Z
    :cond_5d
    if-le v12, v5, :cond_51

    if-gt v3, v5, :cond_51

    .line 1710
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_51
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    .line 1769
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v5, v7

    .line 1823
    :cond_8
    :goto_8
    return v5

    .line 1771
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1772
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 1773
    .local v3, "screenLeft":I
    add-int v4, v3, v6

    .line 1775
    .local v4, "screenRight":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1778
    .local v1, "fadingEdge":I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_1c

    .line 1779
    add-int/2addr v3, v1

    .line 1783
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1784
    sub-int/2addr v4, v1

    .line 1787
    :cond_29
    const/4 v5, 0x0

    .line 1789
    .local v5, "scrollXDelta":I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_50

    .line 1794
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4b

    .line 1796
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1803
    :goto_3c
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1804
    .local v2, "right":I
    sub-int v0, v2, v4

    .line 1805
    .local v0, "distanceToRight":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1807
    goto :goto_8

    .line 1799
    .end local v0    # "distanceToRight":I
    .end local v2    # "right":I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_3c

    .line 1807
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_8

    .line 1812
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6d

    .line 1814
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1821
    :goto_63
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_8

    .line 1817
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_63
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 757
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_hovering"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_91

    const/4 v5, 0x1

    .line 758
    .local v5, "isHoveringOn":Z
    :goto_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "pen_hovering_list_scroll"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_93

    const/4 v4, 0x1

    .line 761
    .local v4, "isHoverListScrollOn":Z
    :goto_28
    const/4 v7, 0x0

    .line 762
    .local v7, "isMouseHoveringOn":Z
    const/4 v6, 0x0

    .line 765
    .local v6, "isMouseHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mouse_hovering"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_95

    const/4 v7, 0x1

    .line 766
    :goto_3e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mouse_hovering_list_scroll"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_97

    const/4 v6, 0x1

    .line 770
    :goto_52
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    if-nez v13, :cond_64

    .line 771
    new-instance v13, Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    .line 774
    :cond_64
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->isHoveringUIEnabled:Z

    if-eqz v13, :cond_8c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    if-eqz v13, :cond_8c

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_7e

    if-eqz v5, :cond_8c

    if-eqz v4, :cond_8c

    :cond_7e
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_99

    if-eqz v7, :cond_8c

    if-nez v6, :cond_99

    .line 777
    :cond_8c
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 937
    :goto_90
    return v13

    .line 757
    .end local v4    # "isHoverListScrollOn":Z
    .end local v5    # "isHoveringOn":Z
    .end local v6    # "isMouseHoverListScrollOn":Z
    .end local v7    # "isMouseHoveringOn":Z
    :cond_91
    const/4 v5, 0x0

    goto :goto_14

    .line 758
    .restart local v5    # "isHoveringOn":Z
    :cond_93
    const/4 v4, 0x0

    goto :goto_28

    .line 765
    .restart local v4    # "isHoverListScrollOn":Z
    .restart local v6    # "isMouseHoverListScrollOn":Z
    .restart local v7    # "isMouseHoveringOn":Z
    :cond_95
    const/4 v7, 0x0

    goto :goto_3e

    .line 766
    :cond_97
    const/4 v6, 0x0

    goto :goto_52

    .line 780
    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 781
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 782
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 783
    .local v1, "childCount":I
    const/4 v2, 0x0

    .line 784
    .local v2, "contentRightSide":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v10

    .line 786
    .local v10, "range":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gtz v13, :cond_d0

    .line 787
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth_DP:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    .line 792
    :cond_d0
    if-eqz v1, :cond_dc

    .line 793
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v2, v13, v14

    .line 796
    :cond_dc
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_159

    const/4 v8, 0x1

    .line 800
    .local v8, "isPossibleTooltype":Z
    :goto_e7
    if-nez v8, :cond_f3

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_15b

    :cond_f3
    const/4 v8, 0x1

    .line 804
    :goto_f4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-le v11, v13, :cond_102

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v2, v13

    if-lt v11, v13, :cond_115

    :cond_102
    if-lez v10, :cond_115

    if-eqz v8, :cond_10d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_115

    :cond_10d
    if-eqz v8, :cond_115

    invoke-virtual/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->isLockScreenMode()Z

    move-result v13

    if-eqz v13, :cond_16f

    .line 807
    :cond_115
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_12d

    .line 808
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_12a
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_12d} :catch_15d

    .line 816
    :cond_12d
    :goto_12d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_13a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    if-eqz v13, :cond_144

    .line 817
    :cond_13a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 819
    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_141
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_144
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_144} :catch_166

    .line 825
    :cond_144
    :goto_144
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 826
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 827
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 829
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_90

    .line 796
    .end local v8    # "isPossibleTooltype":Z
    :cond_159
    const/4 v8, 0x0

    goto :goto_e7

    .line 800
    .restart local v8    # "isPossibleTooltype":Z
    :cond_15b
    const/4 v8, 0x0

    goto :goto_f4

    .line 811
    :catch_15d
    move-exception v3

    .line 812
    .local v3, "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 820
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_166
    move-exception v3

    .line 821
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_144

    .line 832
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_16f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_17e

    .line 833
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 835
    :cond_17e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_2fc

    .line 937
    :cond_185
    :goto_185
    :pswitch_185
    const/4 v13, 0x1

    goto/16 :goto_90

    .line 837
    :pswitch_188
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 839
    if-ltz v11, :cond_1cc

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v11, v13, :cond_1cc

    .line 841
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_185

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 844
    const/16 v13, 0x11

    const/4 v14, -0x1

    :try_start_1ac
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1af
    .catch Landroid/os/RemoteException; {:try_start_1ac .. :try_end_1af} :catch_1c3

    .line 848
    :goto_1af
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 849
    .local v9, "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    .line 850
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_185

    .line 845
    .end local v9    # "msg":Landroid/os/Message;
    :catch_1c3
    move-exception v3

    .line 846
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1af

    .line 853
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1cc
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v2, v13

    if-lt v11, v13, :cond_185

    if-gt v11, v2, :cond_185

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_185

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 858
    const/16 v13, 0xd

    const/4 v14, -0x1

    :try_start_1ed
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1ed .. :try_end_1f0} :catch_204

    .line 862
    :goto_1f0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 863
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    .line 864
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_185

    .line 859
    .end local v9    # "msg":Landroid/os/Message;
    :catch_204
    move-exception v3

    .line 860
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f0

    .line 872
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_20d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_225

    .line 873
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 874
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setAction(I)V

    .line 875
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_90

    .line 878
    :cond_225
    if-ltz v11, :cond_272

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    if-gt v11, v13, :cond_272

    .line 880
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_185

    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 883
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v13, :cond_24e

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_254

    .line 885
    :cond_24e
    const/16 v13, 0x11

    const/4 v14, -0x1

    :try_start_251
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_254
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_254} :catch_269

    .line 891
    :cond_254
    :goto_254
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 892
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    .line 893
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_185

    .line 886
    .end local v9    # "msg":Landroid/os/Message;
    :catch_269
    move-exception v3

    .line 887
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_254

    .line 896
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_272
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaWidth:I

    sub-int v13, v2, v13

    if-lt v11, v13, :cond_185

    if-gt v11, v2, :cond_185

    .line 898
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_185

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 901
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    if-eqz v13, :cond_29d

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2a3

    .line 903
    :cond_29d
    const/16 v13, 0xd

    const/4 v14, -0x1

    :try_start_2a0
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2a3
    .catch Landroid/os/RemoteException; {:try_start_2a0 .. :try_end_2a3} :catch_2b8

    .line 909
    :cond_2a3
    :goto_2a3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 910
    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    .line 911
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I

    .line 912
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_185

    .line 904
    .end local v9    # "msg":Landroid/os/Message;
    :catch_2b8
    move-exception v3

    .line 905
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a3

    .line 918
    .end local v3    # "e":Landroid/os/RemoteException;
    :pswitch_2c1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_2d4

    .line 919
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 923
    :cond_2d4
    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_2d6
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2d9
    .catch Landroid/os/RemoteException; {:try_start_2d6 .. :try_end_2d9} :catch_2f3

    .line 928
    :goto_2d9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I

    .line 929
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I

    .line 930
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z

    .line 931
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/HorizontalScrollView;->mHoverAreaEnter:Z

    .line 932
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_90

    .line 924
    :catch_2f3
    move-exception v3

    .line 925
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v13, "HorizontalScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d9

    .line 835
    :pswitch_data_2fc
    .packed-switch 0x7
        :pswitch_20d
        :pswitch_185
        :pswitch_188
        :pswitch_2c1
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2060
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2061
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_8f

    .line 2062
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 2063
    .local v2, "scrollX":I
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 2064
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2065
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2067
    .local v0, "height":I
    const/high16 v4, 0x43870000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2068
    neg-int v4, v0

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2069
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2070
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2071
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2073
    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2075
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_4a
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 2076
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2077
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2078
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 2080
    .restart local v0    # "height":I
    const/high16 v4, 0x42b40000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2081
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2083
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v0, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2084
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2087
    :cond_8c
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2090
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollX":I
    .end local v3    # "width":I
    :cond_8f
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x11

    const/16 v6, 0x42

    .line 489
    iget-object v7, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    .line 491
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_31

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_1d

    const/4 v0, 0x0

    .line 495
    :cond_1d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v5

    invoke-virtual {v5, p0, v0, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 497
    .local v3, "nextFocused":Landroid/view/View;
    if-eqz v3, :cond_30

    if-eq v3, p0, :cond_30

    invoke-virtual {v3, v6}, Landroid/view/View;->requestFocus(I)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v4, 0x1

    .line 533
    .end local v0    # "currentFocused":Landroid/view/View;
    .end local v3    # "nextFocused":Landroid/view/View;
    :cond_30
    :goto_30
    return v4

    .line 503
    :cond_31
    const/4 v2, 0x0

    .line 504
    .local v2, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_49

    .line 506
    const/4 v1, 0x0

    .line 507
    .local v1, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7c

    .line 528
    :goto_40
    if-eqz v2, :cond_49

    .line 529
    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    .end local v1    # "direction":I
    :cond_49
    move v4, v2

    .line 533
    goto :goto_30

    .line 509
    .restart local v1    # "direction":I
    :sswitch_4b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_58

    .line 510
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 514
    :goto_55
    const/16 v1, 0x11

    .line 515
    goto :goto_40

    .line 512
    :cond_58
    invoke-virtual {p0, v5}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_55

    .line 517
    :sswitch_5d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 518
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->arrowScroll(I)Z

    move-result v2

    .line 522
    :goto_67
    const/16 v1, 0x42

    .line 523
    goto :goto_40

    .line 520
    :cond_6a
    invoke-virtual {p0, v6}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result v2

    goto :goto_67

    .line 525
    :sswitch_6f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_7a

    move v4, v5

    :goto_76
    invoke-virtual {p0, v4}, Landroid/widget/HorizontalScrollView;->pageScroll(I)Z

    goto :goto_40

    :cond_7a
    move v4, v6

    goto :goto_76

    .line 507
    :sswitch_data_7c
    .sparse-switch
        0x15 -> :sswitch_4b
        0x16 -> :sswitch_5d
        0x3e -> :sswitch_6f
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 19
    .param p1, "velocityX"    # I

    .prologue
    .line 1979
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_64

    .line 1980
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1981
    .local v16, "width":I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1983
    .local v15, "right":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1986
    if-lez p1, :cond_65

    const/4 v13, 0x1

    .line 1988
    .local v13, "movingRight":Z
    :goto_42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1989
    .local v12, "currentFocused":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Landroid/widget/HorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1992
    .local v14, "newFocused":Landroid/view/View;
    if-nez v14, :cond_58

    .line 1993
    move-object/from16 v14, p0

    .line 1996
    :cond_58
    if-eq v14, v12, :cond_61

    .line 1997
    if-eqz v13, :cond_67

    const/16 v1, 0x42

    :goto_5e
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 2000
    :cond_61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2002
    .end local v12    # "currentFocused":Landroid/view/View;
    .end local v13    # "movingRight":Z
    .end local v14    # "newFocused":Landroid/view/View;
    .end local v15    # "right":I
    .end local v16    # "width":I
    :cond_64
    return-void

    .line 1986
    .restart local v15    # "right":I
    .restart local v16    # "width":I
    :cond_65
    const/4 v13, 0x0

    goto :goto_42

    .line 1997
    .restart local v12    # "currentFocused":Landroid/view/View;
    .restart local v13    # "movingRight":Z
    .restart local v14    # "newFocused":Landroid/view/View;
    :cond_67
    const/16 v1, 0x11

    goto :goto_5e
.end method

.method public fullScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1425
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3c

    const/4 v1, 0x1

    .line 1426
    .local v1, "right":Z
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1428
    .local v3, "width":I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1429
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1431
    if-eqz v1, :cond_2f

    .line 1432
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1433
    .local v0, "count":I
    if-lez v0, :cond_2f

    .line 1434
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1435
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1436
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1440
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_2f
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_3c
    move v1, v4

    .line 1425
    goto :goto_6
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 276
    const/4 v1, 0x0

    .line 284
    :goto_7
    return v1

    .line 279
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 280
    .local v0, "length":I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_16

    .line 281
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 284
    :cond_16
    const/high16 v1, 0x3f800000

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 308
    const/high16 v0, 0x3f000000

    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 289
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 290
    const/4 v3, 0x0

    .line 300
    :goto_7
    return v3

    .line 293
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 294
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 295
    .local v1, "rightEdge":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 296
    .local v2, "span":I
    if-ge v2, v0, :cond_28

    .line 297
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_7

    .line 300
    :cond_28
    const/high16 v3, 0x3f800000

    goto :goto_7
.end method

.method public getTouchSlop()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .registers 9

    .prologue
    .line 705
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 706
    .local v4, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v3, 0x0

    .line 707
    .local v3, "isLockState":Z
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    .line 709
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 710
    .local v5, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 711
    .local v1, "isCoverOpen":Z
    if-eqz v5, :cond_25

    .line 713
    :try_start_21
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_2c

    move-result v1

    .line 719
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 720
    .local v2, "isLockScreenAndCoverOpen":Z
    if-eqz v3, :cond_35

    if-eqz v1, :cond_35

    const/4 v2, 0x1

    .line 722
    :goto_2b
    return v2

    .line 714
    .end local v2    # "isLockScreenAndCoverOpen":Z
    :catch_2c
    move-exception v0

    .line 715
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "HorizontalScrollView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "isLockScreenAndCoverOpen":Z
    :cond_35
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1645
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1650
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1653
    .local v0, "childHeightMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1655
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1656
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1663
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1666
    .local v0, "childHeightMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1669
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1670
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_d

    .line 339
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 341
    :cond_d
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 342
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 346
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_d

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 349
    :cond_d
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 350
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 1131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_52

    .line 1159
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 1133
    :pswitch_14
    iget-boolean v5, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 1135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_46

    .line 1136
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 1140
    .local v1, "hscroll":F
    :goto_27
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_f

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1142
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 1143
    .local v4, "range":I
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 1144
    .local v3, "oldScrollX":I
    add-int v2, v3, v0

    .line 1145
    .local v2, "newScrollX":I
    if-gez v2, :cond_4d

    .line 1146
    const/4 v2, 0x0

    .line 1150
    :cond_3d
    :goto_3d
    if-eq v2, v3, :cond_f

    .line 1151
    iget v5, p0, Landroid/view/View;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/view/View;->scrollTo(II)V

    .line 1152
    const/4 v5, 0x1

    goto :goto_13

    .line 1138
    .end local v0    # "delta":I
    .end local v1    # "hscroll":F
    .end local v2    # "newScrollX":I
    .end local v3    # "oldScrollX":I
    .end local v4    # "range":I
    :cond_46
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1    # "hscroll":F
    goto :goto_27

    .line 1147
    .restart local v0    # "delta":I
    .restart local v2    # "newScrollX":I
    .restart local v3    # "oldScrollX":I
    .restart local v4    # "range":I
    :cond_4d
    if-le v2, v4, :cond_3d

    .line 1148
    move v2, v4

    goto :goto_3d

    .line 1131
    nop

    :pswitch_data_52
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1238
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1239
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1241
    iget v0, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 1242
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 1243
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 1244
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 1245
    return-void

    .line 1240
    :cond_2d
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1223
    const-class v1, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1224
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v0

    .line 1225
    .local v0, "scrollRange":I
    if-lez v0, :cond_34

    .line 1226
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1227
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-lez v1, :cond_25

    .line 1228
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1230
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ge v1, v0, :cond_34

    .line 1231
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1234
    :cond_34
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 591
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_f

    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 695
    :cond_e
    :goto_e
    return v0

    .line 595
    :cond_f
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_e8

    .line 695
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_e

    .line 606
    :pswitch_17
    iget v8, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 607
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_14

    .line 612
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 613
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_40

    .line 614
    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 619
    :cond_40
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v11, v1

    .line 620
    .local v11, "x":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 621
    .local v12, "xDiff":I
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_14

    .line 622
    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 623
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 624
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 625
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 626
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 632
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "x":I
    .end local v12    # "xDiff":I
    :pswitch_67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v11, v1

    .line 633
    .restart local v11    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v11, v1}, Landroid/widget/HorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 634
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 635
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_14

    .line 643
    :cond_7d
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 645
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_85

    .line 646
    iput v11, p0, Landroid/widget/HorizontalScrollView;->mLastHapticScrollX:I

    .line 649
    :cond_85
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 651
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->initOrResetVelocityTracker()V

    .line 652
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 659
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->canScroll()Z

    move-result v1

    if-eqz v1, :cond_a2

    move v3, v0

    :cond_a2
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    goto/16 :goto_14

    .line 666
    .end local v11    # "x":I
    :pswitch_a6
    iput-boolean v3, p0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 667
    iput v2, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 668
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_14

    .line 673
    :pswitch_c1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 674
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 675
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_14

    .line 679
    .end local v9    # "index":I
    :pswitch_d4
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 683
    iget v1, p0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 684
    .restart local v10    # "pointerIndex":I
    if-ltz v10, :cond_e

    .line 687
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    goto/16 :goto_14

    .line 595
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_67
        :pswitch_a6
        :pswitch_17
        :pswitch_a6
        :pswitch_14
        :pswitch_c1
        :pswitch_d4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1891
    const/4 v9, 0x0

    .line 1892
    .local v9, "childWidth":I
    const/4 v7, 0x0

    .line 1894
    .local v7, "childMargins":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_22

    .line 1895
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1897
    .local v8, "childParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v7, v0, v1

    .line 1900
    .end local v8    # "childParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_22
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v6, v0, v7

    .line 1903
    .local v6, "available":I
    if-le v9, v6, :cond_8d

    const/4 v5, 0x1

    .local v5, "forceLeftGravity":Z
    :goto_33
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    .line 1905
    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 1907
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1909
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/widget/HorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1910
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1912
    :cond_50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1914
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_85

    .line 1915
    const/4 v0, 0x0

    sub-int v1, p4, p2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    sub-int v1, v9, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1917
    .local v10, "scrollRange":I
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    if-eqz v0, :cond_98

    .line 1918
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget-boolean v1, v1, Landroid/widget/HorizontalScrollView$SavedState;->isLayoutRtl:Z

    if-ne v0, v1, :cond_8f

    .line 1919
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollPosition:I

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 1923
    :goto_7c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 1930
    :cond_7f
    :goto_7f
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-le v0, v10, :cond_a5

    .line 1931
    iput v10, p0, Landroid/view/View;->mScrollX:I

    .line 1938
    .end local v10    # "scrollRange":I
    :cond_85
    :goto_85
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 1939
    return-void

    .line 1903
    .end local v5    # "forceLeftGravity":Z
    :cond_8d
    const/4 v5, 0x0

    goto :goto_33

    .line 1921
    .restart local v5    # "forceLeftGravity":Z
    .restart local v10    # "scrollRange":I
    :cond_8f
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    iget v0, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollPosition:I

    sub-int v0, v10, v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    goto :goto_7c

    .line 1925
    :cond_98
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1926
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v10, v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    goto :goto_7f

    .line 1932
    :cond_a5
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-gez v0, :cond_85

    .line 1933
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    goto :goto_85
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 446
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 448
    iget-boolean v6, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 472
    :cond_7
    :goto_7
    return-void

    .line 452
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 453
    .local v5, "widthMode":I
    if-eqz v5, :cond_7

    .line 457
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 458
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 459
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 460
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_7

    .line 461
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 463
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    iget v7, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 465
    .local v1, "childHeightMeasureSpec":I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 466
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 467
    const/high16 v6, 0x40000000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 469
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 14
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1171
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1172
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 1173
    .local v7, "oldX":I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 1174
    .local v8, "oldY":I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 1175
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 1176
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 1177
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v0, v1, v7, v8}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1178
    if-eqz p3, :cond_2c

    .line 1179
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1185
    .end local v7    # "oldX":I
    .end local v8    # "oldY":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 1186
    return-void

    .line 1182
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    goto :goto_2c
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1851
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 1852
    const/16 p1, 0x42

    .line 1857
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1862
    .local v0, "nextFocus":Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1870
    :cond_13
    :goto_13
    return v1

    .line 1853
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1854
    const/16 p1, 0x11

    goto :goto_6

    .line 1857
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1866
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Landroid/widget/HorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1870
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_13
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2104
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_10

    instance-of v1, p1, Landroid/widget/HorizontalScrollView$SavedState;

    if-nez v1, :cond_14

    .line 2107
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2114
    :goto_13
    return-void

    :cond_14
    move-object v0, p1

    .line 2110
    check-cast v0, Landroid/widget/HorizontalScrollView$SavedState;

    .line 2111
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2112
    iput-object v0, p0, Landroid/widget/HorizontalScrollView;->mSavedState:Landroid/widget/HorizontalScrollView$SavedState;

    .line 2113
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    goto :goto_13
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 2118
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-gt v2, v3, :cond_11

    .line 2121
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2127
    :goto_10
    return-object v0

    .line 2123
    :cond_11
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2124
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/HorizontalScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2125
    .local v0, "ss":Landroid/widget/HorizontalScrollView$SavedState;
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iput v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->scrollPosition:I

    .line 2126
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView$SavedState;->isLayoutRtl:Z

    goto :goto_10
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1943
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1945
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1946
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1957
    :cond_b
    :goto_b
    return-void

    .line 1949
    :cond_c
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int v1, v3, v4

    .line 1951
    .local v1, "maxJump":I
    invoke-direct {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1952
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1953
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1954
    iget-object v3, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1955
    .local v2, "scrollDelta":I
    invoke-direct {p0, v2}, Landroid/widget/HorizontalScrollView;->doScrollX(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 942
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 945
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    .line 947
    .local v15, "action":I
    and-int/lit16 v2, v15, 0xff

    packed-switch v2, :pswitch_data_2ae

    .line 1108
    :cond_15
    :goto_15
    :pswitch_15
    const/4 v2, 0x1

    :goto_16
    return v2

    .line 949
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1f

    .line 950
    const/4 v2, 0x0

    goto :goto_16

    .line 952
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_62

    const/4 v2, 0x1

    :goto_2a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_3c

    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 954
    .local v22, "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_3c

    .line 955
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 963
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 968
    :cond_4d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 969
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    goto :goto_15

    .line 952
    :cond_62
    const/4 v2, 0x0

    goto :goto_2a

    .line 973
    :pswitch_64
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 974
    .local v16, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_a5

    .line 975
    const/16 v16, 0x0

    .line 976
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 977
    const-string v2, "HorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid pointerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in onTouchEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 981
    :cond_a5
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 982
    .local v25, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    sub-int v3, v2, v25

    .line 983
    .local v3, "deltaX":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_de

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    if-le v2, v4, :cond_de

    .line 984
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .line 985
    .restart local v22    # "parent":Landroid/view/ViewParent;
    if-eqz v22, :cond_d2

    .line 986
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 988
    :cond_d2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 989
    if-lez v3, :cond_181

    .line 990
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    sub-int/2addr v3, v2

    .line 995
    .end local v22    # "parent":Landroid/view/ViewParent;
    :cond_de
    :goto_de
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_15

    .line 997
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HorizontalScrollView;->mLastMotionX:I

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    .line 1000
    .local v19, "oldX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v20, v0

    .line 1001
    .local v20, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v7

    .line 1002
    .local v7, "range":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v21

    .line 1003
    .local v21, "overscrollMode":I
    if-eqz v21, :cond_107

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_188

    if-lez v7, :cond_188

    :cond_107
    const/16 v17, 0x1

    .line 1008
    .local v17, "canOverscroll":Z
    :goto_109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/View;->mScrollX:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/HorizontalScrollView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 1021
    :cond_125
    :goto_125
    if-eqz v17, :cond_15

    .line 1022
    add-int v23, v19, v3

    .line 1023
    .local v23, "pulledToX":I
    if-gez v23, :cond_19a

    .line 1025
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_143

    .line 1026
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    if-nez v2, :cond_143

    .line 1027
    const/16 v2, 0x5223

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1028
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    .line 1032
    :cond_143
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_162

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1050
    :cond_162
    :goto_162
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_17c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1052
    :cond_17c
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto/16 :goto_15

    .line 992
    .end local v7    # "range":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .restart local v22    # "parent":Landroid/view/ViewParent;
    :cond_181
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    add-int/2addr v3, v2

    goto/16 :goto_de

    .line 1003
    .end local v22    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "range":I
    .restart local v19    # "oldX":I
    .restart local v20    # "oldY":I
    .restart local v21    # "overscrollMode":I
    :cond_188
    const/16 v17, 0x0

    goto/16 :goto_109

    .line 1015
    .restart local v17    # "canOverscroll":Z
    :cond_18c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_125

    .line 1016
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    goto :goto_125

    .line 1036
    .restart local v23    # "pulledToX":I
    :cond_19a
    move/from16 v0, v23

    if-le v0, v7, :cond_162

    .line 1038
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1b6

    .line 1039
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    if-nez v2, :cond_1b6

    .line 1040
    const/16 v2, 0x5223

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1041
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    .line 1045
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_162

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_162

    .line 1058
    .end local v3    # "deltaX":I
    .end local v7    # "range":I
    .end local v16    # "activePointerIndex":I
    .end local v17    # "canOverscroll":Z
    .end local v19    # "oldX":I
    .end local v20    # "oldY":I
    .end local v21    # "overscrollMode":I
    .end local v23    # "pulledToX":I
    .end local v25    # "x":I
    :pswitch_1d6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_15

    .line 1060
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_1e7

    .line 1061
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mHapticNewScroll:Z

    .line 1064
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1065
    .local v24, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1066
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1068
    .local v18, "initialVelocity":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_21e

    .line 1069
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HorizontalScrollView;->mMinimumVelocity:I

    if-le v2, v4, :cond_241

    .line 1070
    move/from16 v0, v18

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->fling(I)V

    .line 1079
    :cond_21e
    :goto_21e
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1080
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1081
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_15

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_15

    .line 1072
    :cond_241
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_21e

    .line 1074
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_21e

    .line 1090
    .end local v18    # "initialVelocity":I
    .end local v24    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_25e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_15

    .line 1091
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mScrollY:I

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_286

    .line 1092
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1094
    :cond_286
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/HorizontalScrollView;->mActivePointerId:I

    .line 1095
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z

    .line 1096
    invoke-direct/range {p0 .. p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 1098
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_15

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1100
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_15

    .line 1105
    :pswitch_2a9
    invoke-direct/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    .line 947
    :pswitch_data_2ae
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1d6
        :pswitch_64
        :pswitch_25e
        :pswitch_15
        :pswitch_15
        :pswitch_2a9
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x0

    .line 1389
    const/16 v5, 0x42

    if-ne p1, v5, :cond_49

    const/4 v1, 0x1

    .line 1390
    .local v1, "right":Z
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1392
    .local v3, "width":I
    if-eqz v1, :cond_4b

    .line 1393
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1395
    .local v0, "count":I
    if-lez v0, :cond_33

    .line 1396
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1397
    .local v2, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_33

    .line 1398
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1407
    .end local v0    # "count":I
    .end local v2    # "view":Landroid/view/View;
    :cond_33
    :goto_33
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1409
    iget-object v4, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Landroid/widget/HorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1    # "right":Z
    .end local v3    # "width":I
    :cond_49
    move v1, v4

    .line 1389
    goto :goto_6

    .line 1402
    .restart local v1    # "right":Z
    .restart local v3    # "width":I
    :cond_4b
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1403
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_33

    .line 1404
    iget-object v5, p0, Landroid/widget/HorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_33
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 9
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1190
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1217
    :goto_8
    return v2

    .line 1193
    :cond_9
    sparse-switch p1, :sswitch_data_5a

    move v2, v3

    .line 1217
    goto :goto_8

    .line 1195
    :sswitch_e
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_16

    move v2, v3

    .line 1196
    goto :goto_8

    .line 1198
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1199
    .local v1, "viewportWidth":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1200
    .local v0, "targetScrollX":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, v4, :cond_34

    .line 1201
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_8

    :cond_34
    move v2, v3

    .line 1204
    goto :goto_8

    .line 1206
    .end local v0    # "targetScrollX":I
    .end local v1    # "viewportWidth":I
    :sswitch_36
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_3e

    move v2, v3

    .line 1207
    goto :goto_8

    .line 1209
    :cond_3e
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v4, v5

    .line 1210
    .restart local v1    # "viewportWidth":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1211
    .restart local v0    # "targetScrollX":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, v4, :cond_58

    .line 1212
    invoke-virtual {p0, v0, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_8

    :cond_58
    move v2, v3

    .line 1215
    goto :goto_8

    .line 1193
    :sswitch_data_5a
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_36
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1828
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1829
    invoke-direct {p0, p2}, Landroid/widget/HorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1834
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1835
    return-void

    .line 1832
    :cond_b
    iput-object p2, p0, Landroid/widget/HorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1877
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1880
    invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 571
    if-eqz p1, :cond_5

    .line 572
    invoke-direct {p0}, Landroid/widget/HorizontalScrollView;->recycleVelocityTracker()V

    .line 574
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 575
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1885
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mIsLayoutDirty:Z

    .line 1886
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 1887
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2012
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_41

    .line 2013
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2014
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p1

    .line 2015
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/widget/HorizontalScrollView;->clamp(III)I

    move-result p2

    .line 2016
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eq p2, v1, :cond_41

    .line 2018
    :cond_37
    iget-boolean v1, p0, Landroid/widget/HorizontalScrollView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_3e

    .line 2019
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;->hapticScrollTo(I)V

    .line 2022
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 2025
    .end local v0    # "child":Landroid/view/View;
    :cond_41
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .prologue
    .line 423
    iget-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 424
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mFillViewport:Z

    .line 425
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    .line 427
    :cond_9
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .registers 2
    .param p1, "hoverdelay"    # I

    .prologue
    .line 750
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I

    .line 751
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .registers 3
    .param p1, "flag"    # Z

    .prologue
    .line 730
    if-eqz p1, :cond_6

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    .line 735
    :goto_5
    return-void

    .line 733
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HorizontalScrollView;->mHoverScrollEnable:Z

    goto :goto_5
.end method

.method public setHoverScrollSpeed(I)V
    .registers 2
    .param p1, "hoverspeed"    # I

    .prologue
    .line 742
    iput p1, p0, Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I

    .line 743
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2044
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1e

    .line 2045
    iget-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1a

    .line 2046
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2047
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2048
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 2054
    .end local v0    # "context":Landroid/content/Context;
    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 2055
    return-void

    .line 2051
    :cond_1e
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 2052
    iput-object v2, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_1a
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Landroid/widget/HorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 442
    return-void
.end method

.method public setTouchSlop(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 196
    iput p1, p0, Landroid/widget/HorizontalScrollView;->mTouchSlop:I

    .line 197
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 1164
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1581
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1602
    :goto_7
    return-void

    .line 1585
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1586
    .local v0, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_4e

    .line 1587
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1588
    .local v5, "width":I
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1589
    .local v3, "right":I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1590
    .local v2, "maxX":I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 1591
    .local v4, "scrollX":I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1593
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1594
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 1601
    .end local v2    # "maxX":I
    .end local v3    # "right":I
    .end local v4    # "scrollX":I
    .end local v5    # "width":I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/HorizontalScrollView;->mLastScroll:J

    goto :goto_7

    .line 1596
    :cond_4e
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 1597
    iget-object v6, p0, Landroid/widget/HorizontalScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1599
    :cond_5b
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1611
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 1612
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 175
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    .line 176
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    :cond_e
    return-void
.end method
