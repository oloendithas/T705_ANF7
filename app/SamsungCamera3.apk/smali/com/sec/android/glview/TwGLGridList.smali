.class public Lcom/sec/android/glview/TwGLGridList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGridList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;,
        Lcom/sec/android/glview/TwGLGridList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLGridList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_DECELERATION_POSITION_DIVIDE_FACTOR:F = 2.0f

.field private static final BOUNCE_EDGE_SIZE:F = 1.0f

.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.0f

.field private static final BOUNCE_IMAGE_FULLY_VISIBLE_THRESHOLD_DIP:F = 100.0f

.field private static final BOUNCE_IMAGE_SIZE:F = 185.0f

.field private static final BOUNCE_SEVERAL_TIMES:Z = false

.field private static final BOUNCE_SMOOTH_LANDING_FACTOR:F = 0.3f

.field private static final BOUNCING_VELOCITY_DIP:F = 3.0f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x1

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.2f

.field private static final DRAG_OUT_DISTANCE_LIMIT_DIP:F = 100.0f

.field private static final FLING_VELOCITY_DIP:F = 0.6f

.field private static final GRID_MENU_SCALE_RATIO:F

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final LANDSCAPE_CONTENT_BOTTOM_MARGIN:I

.field private static final LANDSCAPE_CONTENT_COLUMN_GAP:I

.field private static final LANDSCAPE_CONTENT_LEFT_MARGIN:I

.field private static final LANDSCAPE_CONTENT_RIGHT_MARGIN:I

.field private static final LANDSCAPE_CONTENT_ROW_GAP:I

.field private static final LANDSCAPE_CONTENT_TOP_MARGIN:I

.field private static final LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

.field private static final PORTRAIT_CONTENT_BOTTOM_MARGIN:I

.field private static final PORTRAIT_CONTENT_COLUMN_GAP:I

.field private static final PORTRAIT_CONTENT_LEFT_MARGIN:I

.field private static final PORTRAIT_CONTENT_RIGHT_MARGIN:I

.field private static final PORTRAIT_CONTENT_ROW_GAP:I

.field private static final PORTRAIT_CONTENT_TOP_MARGIN:I

.field private static final PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_NOT_MOVE:I = 0x0

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLGridList"

.field public static final TYPE_NONE:I = -0x1

.field private static final VELOCITY_MODERATION_RATIO:F = 0.3f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private final mBounceImageMaxAlphaThreshold:F

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private final mBouncingVelocity:F

.field private mColumns:I

.field private mContentHeight:F

.field private mContentWidth:F

.field private final mDragOutDistanceLimit:F

.field private mFirstFullyVisibleViewIndex:I

.field private final mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mFocusedView:Lcom/sec/android/glview/TwGLView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceMaxOffset:F

.field private mLandscapeBounceOffset:F

.field private mLastOrientation:I

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

.field private mPortraitBounceMaxOffset:F

.field private mPortraitBounceOffset:F

.field private mRows:I

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

.field private mScrollBarOffset:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollPadding:I

.field private mScrollRequested:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollThreshold:F

.field private mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mSelectedIndex:I

.field private mStackOrientation:I

.field private mType:I

.field private final mVelocityLimit:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 221
    const/high16 v0, 0x7f0a0000

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    .line 223
    const v0, 0x7f090039

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    .line 224
    const v0, 0x7f09003a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_TOP_MARGIN:I

    .line 225
    const v0, 0x7f09003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    .line 226
    const v0, 0x7f09003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_BOTTOM_MARGIN:I

    .line 228
    const v0, 0x7f090045

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    .line 230
    const v0, 0x7f090041

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    .line 231
    const v0, 0x7f090042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    .line 233
    const v0, 0x7f09003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    .line 234
    const v0, 0x7f09003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_TOP_MARGIN:I

    .line 235
    const v0, 0x7f09003f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    .line 236
    const v0, 0x7f090040

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_BOTTOM_MARGIN:I

    .line 238
    const v0, 0x7f090046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    .line 240
    const v0, 0x7f090043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    .line 241
    const v0, 0x7f090044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFF)V
    .locals 10
    .param p1, "activitycontext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/high16 v9, 0x42c80000

    const/high16 v8, 0x41200000

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 55
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    .line 57
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    .line 75
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    .line 78
    iput v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 83
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 86
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 89
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 92
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 95
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 98
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 101
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 104
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 107
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 110
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 130
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    .line 133
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 136
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 156
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 159
    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 171
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 204
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollPadding:I

    .line 206
    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 210
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    .line 217
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    .line 243
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 244
    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 247
    new-instance v0, Lcom/sec/android/glview/TwGLGridList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLGridList$1;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    .line 1886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 347
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v8

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x40400000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f00000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mDragOutDistanceLimit:F

    .line 359
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLGridList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLGridList;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLGridList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLGridList;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;
    .param p1, "x1"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLGridList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/glview/TwGLGridList;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    return v0
.end method

.method private checkBoundary()Z
    .locals 7

    .prologue
    const v6, 0x3e99999a

    const/4 v5, 0x0

    .line 1566
    const/4 v1, 0x0

    .line 1567
    .local v1, "ret":Z
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1568
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 1570
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1571
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 1572
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    .line 1574
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 1575
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1576
    .local v0, "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1577
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1578
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1581
    .end local v0    # "originalVelocity":F
    :cond_0
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 1583
    :cond_1
    const/4 v1, 0x1

    .line 1642
    :cond_2
    :goto_0
    return v1

    .line 1584
    :cond_3
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    .line 1586
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1587
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 1588
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4

    .line 1590
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1591
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1592
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1593
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1594
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1597
    .end local v0    # "originalVelocity":F
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    .line 1599
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 1601
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    .line 1602
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceMaxOffset:F

    goto :goto_0

    .line 1604
    :cond_7
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1605
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_a

    .line 1607
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1608
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 1609
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_8

    .line 1611
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 1612
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1613
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1614
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1615
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1618
    .end local v0    # "originalVelocity":F
    :cond_8
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 1620
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1621
    :cond_a
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 1623
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1624
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_c

    .line 1625
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_b

    .line 1627
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1628
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1629
    .restart local v0    # "originalVelocity":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mVelocityLimit:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    neg-float v2, v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1630
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1631
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    sub-float v3, v0, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1634
    .end local v0    # "originalVelocity":F
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    .line 1636
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1638
    :cond_d
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    .line 1639
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceMaxOffset:F

    goto/16 :goto_0
.end method

.method private setScrollBarLayout()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000

    .line 529
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_4

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 541
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 542
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 555
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 556
    iput-boolean v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    goto :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 543
    :cond_4
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-ne v0, v5, :cond_2

    .line 544
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLUtil;->floatEquals(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_5

    .line 548
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 552
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v0

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    .line 553
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    goto/16 :goto_2

    .line 550
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

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

    sub-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_3
.end method

.method private setVisibleArea()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/high16 v2, 0x43390000

    .line 492
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 495
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 496
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 497
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    sub-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 782
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 783
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1795
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->clear()V

    .line 1797
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1800
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1801
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_2

    .line 1804
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1805
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 1807
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_3

    .line 1808
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1809
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1811
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_4

    .line 1812
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 1813
    iput-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 1816
    :cond_4
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 1817
    return-void
.end method

.method public contains(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
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

.method public estimateContentArea()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 826
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    if-nez v2, :cond_2

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 828
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 849
    :cond_1
    :goto_0
    return-void

    .line 832
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v1, v2, v3

    .line 833
    .local v1, "viewWidth":F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v0, v2, v3

    .line 835
    .local v0, "viewHeight":F
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 836
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 837
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 838
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 839
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 847
    :cond_3
    :goto_1
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_0

    .line 841
    :cond_4
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    .line 842
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    .line 843
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 844
    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_1
.end method

.method public estimateRowColumn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 801
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 802
    :cond_0
    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 803
    iput v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 804
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateContentArea()V

    .line 823
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float v0, v1, v2

    .line 810
    .local v0, "viewWidth":F
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 812
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sget v2, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 813
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 820
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int/2addr v1, v2

    :goto_2
    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mRows:I

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateContentArea()V

    goto :goto_0

    .line 815
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v1

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    .line 816
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sget v2, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v2

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_RIGHT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 817
    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    goto :goto_1

    .line 820
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;
    .locals 2
    .param p1, "focusedView"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "direction"    # I

    .prologue
    .line 1707
    const/4 v0, 0x0

    .line 1711
    .local v0, "newDirection":I
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCenterPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1712
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1763
    move v0, p2

    .line 1767
    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->findNextFocusFromView(Lcom/sec/android/glview/TwGLView;I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    return-object v1

    .line 1714
    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1716
    :sswitch_0
    const/16 v0, 0x82

    .line 1717
    goto :goto_0

    .line 1719
    :sswitch_1
    const/16 v0, 0x21

    .line 1720
    goto :goto_0

    .line 1722
    :sswitch_2
    const/16 v0, 0x11

    .line 1723
    goto :goto_0

    .line 1725
    :sswitch_3
    const/16 v0, 0x42

    goto :goto_0

    .line 1730
    :pswitch_1
    sparse-switch p2, :sswitch_data_1

    goto :goto_0

    .line 1732
    :sswitch_4
    const/16 v0, 0x42

    .line 1733
    goto :goto_0

    .line 1735
    :sswitch_5
    const/16 v0, 0x11

    .line 1736
    goto :goto_0

    .line 1738
    :sswitch_6
    const/16 v0, 0x82

    .line 1739
    goto :goto_0

    .line 1741
    :sswitch_7
    const/16 v0, 0x21

    goto :goto_0

    .line 1746
    :pswitch_2
    sparse-switch p2, :sswitch_data_2

    goto :goto_0

    .line 1748
    :sswitch_8
    const/16 v0, 0x21

    .line 1749
    goto :goto_0

    .line 1751
    :sswitch_9
    const/16 v0, 0x82

    .line 1752
    goto :goto_0

    .line 1754
    :sswitch_a
    const/16 v0, 0x42

    .line 1755
    goto :goto_0

    .line 1757
    :sswitch_b
    const/16 v0, 0x11

    goto :goto_0

    .line 1712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1714
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch

    .line 1730
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_4
        0x21 -> :sswitch_6
        0x42 -> :sswitch_5
        0x82 -> :sswitch_7
    .end sparse-switch

    .line 1746
    :sswitch_data_2
    .sparse-switch
        0x11 -> :sswitch_8
        0x21 -> :sswitch_a
        0x42 -> :sswitch_9
        0x82 -> :sswitch_b
    .end sparse-switch
.end method

.method public get(I)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getContentHeight()F
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    return v0
.end method

.method public getContentWidth()F
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    return v0
.end method

.method public getFirstFullyVisibleViewIndex()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    return v0
.end method

.method public getLastOrientation()I
    .locals 1

    .prologue
    .line 1990
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    return v0
.end method

.method public getScrollThreshold()F
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 622
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->restartScrollBarTimer()V

    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-nez v0, :cond_4

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    goto :goto_0

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLGridList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLGridList$2;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 641
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    iget v1, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLGridList;->setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V

    .line 774
    return-void
.end method

.method public declared-synchronized moveItem(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1342
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1343
    .local v3, "et":Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    .line 1344
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1346
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v5

    .line 1348
    .local v5, "mBoundary":Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 1349
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;

    invoke-direct {v9, p0}, Lcom/sec/android/glview/TwGLGridList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLGridList;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1353
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    const/4 v7, 0x1

    .line 1545
    :goto_0
    monitor-exit p0

    return v7

    .line 1356
    :catch_0
    move-exception v7

    .line 1360
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    .line 1361
    const-string v7, "TwGLGridList"

    const-string v8, "ACTION_DOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 1364
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 1365
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1366
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1367
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1368
    const/4 v7, 0x0

    goto :goto_0

    .line 1371
    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 1372
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1373
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 1375
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1376
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1379
    :cond_3
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 1380
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 1382
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1383
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1386
    :cond_4
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1387
    const/4 v7, 0x0

    goto :goto_0

    .line 1390
    :cond_5
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eqz v7, :cond_24

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_24

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_24

    .line 1391
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 1392
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    sub-float v1, v7, v8

    .line 1393
    .local v1, "delta":F
    move v2, v1

    .line 1395
    .local v2, "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gez v7, :cond_6

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_8

    .line 1397
    :cond_6
    const/4 v2, 0x0

    .line 1408
    :cond_7
    :goto_1
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1409
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1411
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_a

    .line 1412
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v2, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1342
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

    .line 1398
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v3    # "et":Landroid/view/MotionEvent;
    .restart local v5    # "mBoundary":Z
    :cond_8
    :try_start_3
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 1400
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1401
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto :goto_1

    .line 1402
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1404
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1405
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto :goto_1

    .line 1414
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_a
    const/4 v7, 0x0

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2

    .line 1418
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v7, :cond_c

    .line 1419
    if-nez v5, :cond_12

    .line 1420
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v8, v2, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1427
    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_d

    .line 1428
    if-nez v5, :cond_13

    .line 1429
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 1433
    :goto_4
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    neg-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1437
    :cond_d
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_e

    .line 1439
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1440
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1441
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1445
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    const/high16 v0, 0x3f800000

    .line 1446
    .local v0, "alpha":F
    :goto_5
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1447
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 1448
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1449
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1455
    .end local v0    # "alpha":F
    :cond_e
    :goto_6
    if-nez v5, :cond_16

    .line 1456
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1460
    :goto_7
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollY:F

    .line 1462
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_f
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    .line 1463
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    sub-float v1, v7, v8

    .line 1464
    .restart local v1    # "delta":F
    move v2, v1

    .line 1466
    .restart local v2    # "deltaForContents":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-gez v7, :cond_10

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_17

    .line 1468
    :cond_10
    const/4 v2, 0x0

    .line 1480
    :cond_11
    :goto_8
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1481
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1482
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1483
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_19

    .line 1484
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v2, v7, v8}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_9

    .line 1422
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_12
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const v9, 0x3e4ccccd

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    goto/16 :goto_3

    .line 1431
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    goto/16 :goto_4

    .line 1445
    :cond_14
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto/16 :goto_5

    .line 1450
    .restart local v0    # "alpha":F
    :cond_15
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

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

    if-gez v7, :cond_e

    .line 1451
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1452
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_6

    .line 1458
    .end local v0    # "alpha":F
    :cond_16
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto/16 :goto_7

    .line 1469
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_17
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v1

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    .line 1471
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    sub-float v2, v1, v7

    .line 1472
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_8

    .line 1473
    :cond_18
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_11

    .line 1475
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v8

    sub-float v2, v1, v7

    .line 1476
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_8

    .line 1486
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_19
    const v7, 0x3e4ccccd

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto/16 :goto_9

    .line 1490
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1a
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v7, :cond_1b

    .line 1491
    if-nez v5, :cond_1f

    .line 1492
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v7, v2, v8, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1499
    :cond_1b
    :goto_a
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_1c

    .line 1500
    if-nez v5, :cond_20

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    .line 1505
    :goto_b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1507
    :cond_1c
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_1d

    .line 1509
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1510
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1511
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    iget v9, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1514
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    const v9, 0x3dcccccd

    mul-float/2addr v8, v9

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_21

    const/high16 v0, 0x3f800000

    .line 1516
    .restart local v0    # "alpha":F
    :goto_c
    const/high16 v7, 0x3f800000

    mul-float/2addr v7, v0

    const/4 v8, 0x0

    add-float v0, v7, v8

    .line 1518
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_22

    .line 1519
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1524
    .end local v0    # "alpha":F
    :cond_1d
    :goto_d
    if-nez v5, :cond_23

    .line 1525
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1529
    :goto_e
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollX:F

    .line 1531
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1e
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1532
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1494
    .restart local v1    # "delta":F
    .restart local v2    # "deltaForContents":F
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1f
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    goto/16 :goto_a

    .line 1503
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarOffset:F

    goto/16 :goto_b

    .line 1514
    :cond_21
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v8

    const v9, 0x3e4ccccd

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    div-float v0, v7, v8

    goto :goto_c

    .line 1520
    .restart local v0    # "alpha":F
    :cond_22
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

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

    if-gez v7, :cond_1d

    .line 1521
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_d

    .line 1527
    .end local v0    # "alpha":F
    :cond_23
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const v8, 0x3e4ccccd

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_e

    .line 1535
    .end local v1    # "delta":F
    .end local v2    # "deltaForContents":F
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_24
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eqz v7, :cond_26

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_25

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_26

    .line 1536
    :cond_25
    const-string v7, "TwGLGridList"

    const-string v8, "ACTION_UP"

    invoke-static {v7, v8}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLGridList;->setScrolling(Z)V

    .line 1538
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 1539
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1540
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1541
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1542
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1544
    :cond_26
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1545
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 1282
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onAlphaUpdated()V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 1290
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatch;->onAlphaUpdated()V

    .line 1292
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
    .line 1306
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 1307
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1314
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1299
    return-void
.end method

.method protected declared-synchronized onDraw()V
    .locals 17

    .prologue
    .line 941
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    if-eqz v12, :cond_0

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->scrollToVisible()Z

    .line 944
    :cond_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 945
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 947
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v12

    if-nez v12, :cond_c

    .line 949
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 950
    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 951
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 952
    .local v10, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v10, :cond_1

    .line 956
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v14, 0x0

    invoke-virtual {v10, v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 941
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 959
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_3

    .line 960
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    .line 963
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v12, :cond_4

    .line 964
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 965
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 967
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 971
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a

    .line 972
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 973
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 974
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 980
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b

    .line 981
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 982
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    .line 983
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1241
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_8

    .line 1242
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1244
    :cond_8
    const/4 v2, 0x0

    .line 1245
    .local v2, "checked":Z
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v8

    .line 1246
    .local v8, "matrix":[F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1249
    .local v3, "clipRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1250
    .local v7, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 1251
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_2f

    .line 1252
    invoke-virtual {v7, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/glview/TwGLView;

    .line 1254
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1255
    if-nez v5, :cond_2e

    .line 1256
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 1257
    const/4 v2, 0x1

    .line 1263
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1265
    invoke-virtual {v10, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1251
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 976
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

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 977
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 978
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto/16 :goto_1

    .line 985
    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 986
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6

    .line 987
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto/16 :goto_2

    .line 989
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-eqz v12, :cond_27

    .line 991
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_19

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    .line 994
    .local v4, "height":F
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e

    const/high16 v1, 0x3f800000

    .line 995
    .local v1, "alpha":F
    :goto_6
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 997
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_14

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1001
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1002
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_7

    .line 992
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_5

    .line 994
    .restart local v4    # "height":F
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_6

    .line 1009
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_10

    .line 1010
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1013
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1019
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_12

    .line 1020
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1033
    :goto_8
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_11

    .line 1040
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1041
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1042
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 1201
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    if-nez v12, :cond_6

    .line 1203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1204
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    .line 1205
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_a

    .line 1023
    .restart local v1    # "alpha":F
    .restart local v4    # "height":F
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_13

    .line 1024
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_8

    .line 1026
    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_8

    .line 1045
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_14
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    .line 1048
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1049
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1050
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

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_b

    .line 1057
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_16

    .line 1058
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

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

    iget v0, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1061
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1069
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_17

    .line 1070
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1083
    :goto_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

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

    if-ltz v12, :cond_11

    .line 1090
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

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1091
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 1092
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1073
    :cond_17
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_18

    .line 1074
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mPortraitBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto :goto_c

    .line 1076
    :cond_18
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    const v13, 0x3e99999a

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    goto/16 :goto_c

    .line 1096
    .end local v1    # "alpha":F
    .end local v4    # "height":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_19
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_11

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    .line 1099
    .local v11, "width":F
    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    const v14, 0x3dcccccd

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1b

    const/high16 v1, 0x3f800000

    .line 1101
    .restart local v1    # "alpha":F
    :goto_e
    const/high16 v12, 0x3f800000

    mul-float/2addr v12, v1

    const/4 v13, 0x0

    add-float v1, v12, v13

    .line 1103
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_20

    .line 1106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1107
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 1108
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_f

    .line 1097
    .end local v1    # "alpha":F
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v11    # "width":F
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_d

    .line 1099
    .restart local v11    # "width":F
    :cond_1b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    const v14, 0x3e4ccccd

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    div-float v1, v12, v13

    goto :goto_e

    .line 1110
    .restart local v1    # "alpha":F
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_1c
    const-string v12, "TwGLGridList"

    const-string v13, "mScrollSumX -- translateAbolute1 = 0"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_1d

    .line 1115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1118
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1119
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1124
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1e

    .line 1125
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1138
    :goto_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    add-float/2addr v12, v13

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_11

    .line 1145
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1146
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1147
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1128
    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1f

    .line 1129
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_10

    .line 1131
    :cond_1f
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_10

    .line 1150
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_20
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_11

    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1154
    .restart local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    .line 1155
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

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_11

    .line 1161
    :cond_21
    const-string v12, "TwGLGridList"

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

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_22

    .line 1163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

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

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v14, v15

    mul-float/2addr v13, v14

    neg-float v13, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1166
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v12, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v14}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1173
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_23

    .line 1174
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1187
    :goto_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

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

    if-ltz v12, :cond_11

    .line 1194
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

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1195
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 1196
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    goto/16 :goto_9

    .line 1177
    :cond_23
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_24

    .line 1178
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mLandscapeBounceOffset:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageMaxAlphaThreshold:F

    div-float/2addr v14, v15

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto :goto_12

    .line 1180
    :cond_24
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    const v13, 0x3e99999a

    mul-float/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mBouncingVelocity:F

    add-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    goto/16 :goto_12

    .line 1212
    .end local v1    # "alpha":F
    .end local v11    # "width":F
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_26

    .line 1213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v13, v14

    neg-float v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v14, v15

    neg-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 1215
    :cond_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1223
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_27
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2b

    .line 1224
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_29

    .line 1225
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1238
    :cond_28
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_2

    .line 1226
    :cond_29
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_28

    .line 1227
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v4

    .line 1228
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

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_13

    .line 1227
    .end local v4    # "height":F
    :cond_2a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_14

    .line 1230
    :cond_2b
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_28

    .line 1231
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2c

    .line 1232
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_13

    .line 1233
    :cond_2c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v13

    cmpg-float v12, v12, v13

    if-gez v12, :cond_28

    .line 1234
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v11

    .line 1235
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

    iget v13, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_13

    .line 1234
    .end local v11    # "width":F
    :cond_2d
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_15

    .line 1258
    .restart local v2    # "checked":Z
    .restart local v3    # "clipRect":Landroid/graphics/Rect;
    .restart local v5    # "i":I
    .restart local v7    # "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/sec/android/glview/TwGLView;>;"
    .restart local v8    # "matrix":[F
    .restart local v9    # "size":I
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2e
    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v7, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->isClipped()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1259
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/glview/TwGLGridList;->mFirstFullyVisibleViewIndex:I

    .line 1260
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 1270
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v12, :cond_30

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v12, :cond_30

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clip()V

    .line 1273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v12, v8, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 1275
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->clearClip()V

    .line 1277
    :cond_30
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/glview/TwGLView;->mDrawFirstTime:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    monitor-exit p0

    return-void
.end method

.method public onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "focusStatus"    # I

    .prologue
    const/4 v0, 0x1

    .line 1550
    if-ne p2, v0, :cond_0

    .line 1551
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1552
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 1554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 2

    .prologue
    .line 1772
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1774
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1777
    :cond_1
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 1778
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1780
    :cond_2
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 1781
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1783
    :cond_3
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_4

    .line 1784
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 1787
    :cond_4
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1788
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_0

    .line 1791
    :cond_5
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1320
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v1, :cond_0

    .line 1321
    const-string v1, "TwGLGridList"

    const-string v2, "onTouch return false mActivityContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_0
    return v0

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLGridList;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1326
    const-string v1, "TwGLGridList"

    const-string v2, "onTouch return false getCameraSettings() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1330
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLGridList;->moveItem(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1338
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLGridList;->moveItem(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshItem(ILcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 798
    return-void
.end method

.method public refreshItemPosition()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000

    .line 1829
    const-string v4, "TwGLGridList"

    const-string v5, "refreshItemPosition - Draw grid menu items E"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1834
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 1836
    const/4 v1, 0x0

    .line 1837
    .local v1, "left":F
    const/4 v2, 0x0

    .line 1839
    .local v2, "top":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1840
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    .line 1842
    .local v3, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v3, :cond_0

    .line 1852
    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 1854
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_3

    .line 1855
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_COLUMN_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_LEFT_MARGIN:I

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 1856
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1857
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 1868
    :goto_2
    invoke-virtual {v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 1869
    sget v4, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    sget v5, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 1870
    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 1871
    invoke-virtual {v3, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 1872
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 1839
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1859
    :cond_2
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->LANDSCAPE_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto :goto_2

    .line 1861
    :cond_3
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    rem-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_COLUMN_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sget v5, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_LEFT_MARGIN:I

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 1862
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 1863
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_TOP_MARGIN_FOR_OVERSIZE_CONTENT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto :goto_2

    .line 1865
    :cond_4
    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v5

    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mColumns:I

    div-int v5, v0, v5

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v6

    sget v7, Lcom/sec/android/glview/TwGLGridList;->GRID_MENU_SCALE_RATIO:F

    mul-float/2addr v6, v7

    sget v7, Lcom/sec/android/glview/TwGLGridList;->PORTRAIT_CONTENT_ROW_GAP:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    goto/16 :goto_2

    .line 1875
    .end local v3    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    packed-switch v4, :pswitch_data_0

    .line 1882
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    .line 1883
    const-string v4, "TwGLGridList"

    const-string v5, "refreshItemPosition - Draw grid menu items X"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1877
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->getContentHeight()F

    move-result v4

    iput v4, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1878
    iget-object v4, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    iget v5, p0, Lcom/sec/android/glview/TwGLGridList;->mSelectedIndex:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLGridList;->setScrollToFocusedView(Lcom/sec/android/glview/TwGLView;)V

    .line 1879
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->rotationFocusView()V

    goto :goto_3

    .line 1875
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 790
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 791
    return-void
.end method

.method protected restartScrollBarTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 610
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 612
    return-void
.end method

.method public scrollToFocusedView()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1894
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    if-nez v6, :cond_1

    .line 1895
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1899
    :cond_1
    const/4 v3, 0x1

    .line 1901
    .local v3, "mNeedMove":Z
    const/4 v4, 0x0

    .line 1902
    .local v4, "mScrollX":F
    const/4 v5, 0x0

    .line 1904
    .local v5, "mScrollY":F
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getArea()Landroid/graphics/RectF;

    move-result-object v0

    .line 1905
    .local v0, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getArea()Landroid/graphics/RectF;

    move-result-object v2

    .line 1907
    .local v2, "listCurrentRect":Landroid/graphics/RectF;
    iget v6, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1908
    iput v7, v0, Landroid/graphics/RectF;->top:F

    .line 1910
    :cond_2
    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1911
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 1912
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v6, v5

    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1920
    :goto_1
    if-eqz v3, :cond_0

    .line 1923
    iget-object v6, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1924
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1925
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_2

    .line 1913
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v7

    add-float/2addr v6, v7

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 1914
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v8, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v8

    add-float/2addr v7, v8

    sub-float v5, v6, v7

    .line 1915
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v6, v5

    iput v6, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 1917
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1928
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_5
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v6, :cond_6

    .line 1929
    iget-object v6, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v6, v4, v5, v9}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScroll(FFI)V

    .line 1932
    :cond_6
    iput-boolean v9, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    goto/16 :goto_0
.end method

.method public scrollToVisible(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 857
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    .line 858
    return-void
.end method

.method public scrollToVisible()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 861
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    if-nez v7, :cond_0

    move v7, v8

    .line 933
    :goto_0
    return v7

    .line 865
    :cond_0
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v1

    .line 866
    .local v1, "itemCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getCurrentContentArea()Landroid/graphics/RectF;

    move-result-object v3

    .line 869
    .local v3, "listCurrentRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 870
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 871
    const-string v7, "TwGLGridList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "scrollToVisible : do nothing, view = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", visibility = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollToVisibleView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 872
    goto :goto_0

    .line 874
    :cond_1
    const/4 v5, 0x0

    .line 875
    .local v5, "offsetY":F
    const/4 v4, 0x0

    .line 877
    .local v4, "offsetX":F
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v7, :cond_6

    .line 878
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_2

    .line 880
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    move v7, v9

    .line 881
    goto :goto_0

    .line 882
    :cond_2
    iget v7, v1, Landroid/graphics/RectF;->top:F

    iget v10, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_5

    .line 883
    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    sub-float v5, v7, v10

    .line 884
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 903
    :cond_3
    :goto_1
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    if-ne v7, v9, :cond_b

    .line 904
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_9

    .line 905
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 918
    :cond_4
    :goto_2
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityX:F

    .line 919
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mFlingVelocityY:F

    .line 922
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 923
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 924
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/glview/TwGLView;

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_3

    .line 885
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_5
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    iget v10, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    .line 886
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v7, v10

    .line 887
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v5

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 889
    :cond_6
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-ne v7, v9, :cond_3

    .line 890
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_7

    .line 892
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    move v7, v9

    .line 893
    goto/16 :goto_0

    .line 894
    :cond_7
    iget v7, v1, Landroid/graphics/RectF;->left:F

    iget v10, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_8

    .line 895
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    sub-float v4, v7, v10

    .line 896
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_1

    .line 897
    :cond_8
    iget v7, v1, Landroid/graphics/RectF;->right:F

    iget v10, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_3

    .line 898
    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget v10, v1, Landroid/graphics/RectF;->right:F

    sub-float v4, v7, v10

    .line 899
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v4

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto :goto_1

    .line 906
    :cond_9
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 908
    .local v0, "height":F
    :goto_4
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto/16 :goto_2

    .line 907
    .end local v0    # "height":F
    :cond_a
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_4

    .line 910
    :cond_b
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    .line 911
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_c

    .line 912
    iput v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_2

    .line 913
    :cond_c
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v7, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v10

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 914
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v6

    .line 915
    .local v6, "width":F
    :goto_5
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v7, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    sub-float/2addr v7, v10

    iput v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    goto/16 :goto_2

    .line 914
    .end local v6    # "width":F
    :cond_d
    iget v6, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    goto :goto_5

    .line 927
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_e
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBarVisible:Z

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_f

    .line 928
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaWidth()F

    move-result v10

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mContentWidth:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContentAreaHeight()F

    move-result v11

    iget v12, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    div-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    mul-float/2addr v11, v12

    neg-float v11, v11

    invoke-virtual {v7, v10, v11, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 930
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->showScrollBar()V

    .line 931
    iput-boolean v8, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    move v7, v9

    .line 933
    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLGridList$Adapter;

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLGridList;->setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V

    .line 679
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLGridList$Adapter;I)V
    .locals 11
    .param p1, "adapter"    # Lcom/sec/android/glview/TwGLGridList$Adapter;
    .param p2, "stackOrientation"    # I

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 691
    :cond_0
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    .line 692
    iput p2, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    .line 694
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 695
    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 699
    :cond_1
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_3

    .line 700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLGridList;->setScroll(I)V

    .line 705
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 706
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mAdapter:Lcom/sec/android/glview/TwGLGridList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/sec/android/glview/TwGLGridList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v10

    .line 707
    .local v10, "view":Lcom/sec/android/glview/TwGLView;
    if-nez v10, :cond_4

    .line 767
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_2
    :goto_3
    return-void

    .line 702
    .end local v8    # "i":I
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLGridList;->setScroll(I)V

    goto :goto_1

    .line 728
    .restart local v8    # "i":I
    .restart local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_4
    invoke-virtual {v10, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 729
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/sec/android/glview/TwGLView;->setClipping(Z)V

    .line 731
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLGridList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 705
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 734
    .end local v10    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-nez v0, :cond_6

    .line 735
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    const/high16 v5, 0x43390000

    const/4 v6, 0x1

    const v7, 0x7f020375

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 736
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    const/high16 v5, 0x43390000

    const/4 v6, 0x1

    const v7, 0x7f020373

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 737
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const v7, 0x7f020374

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 738
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    const/high16 v5, 0x3f800000

    const/4 v6, 0x1

    const v7, 0x7f020374

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 745
    :goto_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 746
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 747
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 748
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 749
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 750
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 751
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 752
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 754
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 755
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 757
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_2

    .line 758
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    goto/16 :goto_3

    .line 740
    :cond_6
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    const/high16 v4, 0x43390000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020371

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 741
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43390000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020372

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 742
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020370

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 743
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f020370

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_4
.end method

.method public setContentType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1824
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mType:I

    .line 1825
    return-void
.end method

.method public declared-synchronized setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 453
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 458
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 459
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_1
    monitor-exit p0

    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLastOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 1984
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mLastOrientation:I

    .line 1986
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 1987
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    .line 368
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "paddings"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 375
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    .line 377
    .local v3, "left":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    .line 378
    .local v4, "right":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    .line 379
    .local v5, "top":F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v0

    .line 381
    .local v0, "bottom":F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 383
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 384
    .local v6, "view":Lcom/sec/android/glview/TwGLView;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 386
    .local v1, "childPaddings":Landroid/graphics/Rect;
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 387
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

    .line 388
    iget v7, p1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v8

    sub-float/2addr v8, v3

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 392
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

    .line 393
    iget v7, p1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v8

    sub-float v8, v4, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 397
    :goto_2
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 398
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 400
    :cond_0
    iget v7, p0, Lcom/sec/android/glview/TwGLGridList;->mStackOrientation:I

    if-eqz v7, :cond_1

    .line 401
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

    .line 402
    iget v7, p1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v8

    sub-float/2addr v8, v5

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 406
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

    .line 407
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v8

    sub-float v8, v0, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 411
    :goto_4
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 412
    iget-object v7, v6, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 414
    :cond_1
    invoke-virtual {v6, v1}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 390
    :cond_2
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iput v7, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    .line 395
    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_2

    .line 404
    :cond_4
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 409
    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 417
    .end local v1    # "childPaddings":Landroid/graphics/Rect;
    .end local v6    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 418
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 420
    iget-object v7, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v7, :cond_7

    .line 421
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    .line 423
    :cond_7
    return-void
.end method

.method public setPosition(FFI)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1936
    if-nez p3, :cond_3

    .line 1937
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1938
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1939
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1940
    .local v2, "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_0

    .line 1944
    invoke-virtual {v2, p1, p2, v6}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_0

    .line 1947
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_1
    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    add-float/2addr v3, p1

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1948
    iget v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    add-float/2addr v3, p2

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1981
    :cond_2
    :goto_1
    return-void

    .line 1951
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_3
    cmpl-float v3, p1, v5

    if-nez v3, :cond_7

    cmpl-float v3, p2, v5

    if-nez v3, :cond_7

    .line 1952
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 1954
    .local v0, "height":F
    :goto_2
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1955
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1956
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1957
    .restart local v2    # "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_4

    .line 1961
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v5, v3, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_3

    .line 1952
    .end local v0    # "height":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    .end local v2    # "view":Lcom/sec/android/glview/TwGLView;
    :cond_5
    iget v0, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    goto :goto_2

    .line 1964
    .restart local v0    # "height":F
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_6
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1965
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLGridList;->mContentHeight:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    goto :goto_1

    .line 1967
    .end local v0    # "height":F
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_7
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumX:F

    .line 1968
    iput v5, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollSumY:F

    .line 1970
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1971
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1972
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 1973
    .restart local v2    # "view":Lcom/sec/android/glview/TwGLView;
    if-eqz v2, :cond_8

    .line 1977
    invoke-virtual {v2, v5, v5, v6}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_4
.end method

.method public setScroll(I)V
    .locals 0
    .param p1, "scroll"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScroll:I

    .line 566
    return-void
.end method

.method public setScrollBarResource(I)V
    .locals 1
    .param p1, "ninepatchId"    # I

    .prologue
    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    .line 486
    return-void
.end method

.method public setScrollPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 1820
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollPadding:I

    .line 1821
    return-void
.end method

.method public setScrollThreshold(F)V
    .locals 3
    .param p1, "scrollThresholdDIP"    # F

    .prologue
    .line 574
    const-string v0, "TwGLGridList"

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

    .line 576
    iput p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollThreshold:F

    .line 577
    return-void
.end method

.method public setScrollToFocusedView(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 1889
    iput-object p1, p0, Lcom/sec/android/glview/TwGLGridList;->mFocusedView:Lcom/sec/android/glview/TwGLView;

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollRequested:Z

    .line 1891
    return-void
.end method

.method public setScrolling(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    if-eq v0, p1, :cond_0

    .line 593
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLGridList;->mScrolling:Z

    .line 594
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    if-eqz v0, :cond_0

    .line 595
    if-eqz p1, :cond_2

    .line 596
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScrollStart()V

    .line 602
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->resetDrag()V

    .line 604
    :cond_1
    return-void

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mOnScrollListener:Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLGridList$OnGridScrollListener;->onGridScrollEnd()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 430
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 431
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V

    .line 433
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLGridList;->mBouncing:Z

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setVisibleArea()V

    .line 437
    iget-object v0, p0, Lcom/sec/android/glview/TwGLGridList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v0, :cond_1

    .line 438
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLGridList;->setScrollBarLayout()V

    .line 440
    :cond_1
    return-void
.end method

.method public declared-synchronized setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLGridList;->estimateRowColumn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showScrollBar()V
    .locals 2

    .prologue
    .line 649
    const-string v0, "TwGLGridList"

    const-string v1, "Scroll bar is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method
