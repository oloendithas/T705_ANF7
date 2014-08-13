.class public abstract Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;
.super Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.source "AbstractHwrKeyboardView.java"


# instance fields
.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mDisambiguateSwipe:Z

.field private final mDrawingPoint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

.field protected final mHwrDownPoint:Landroid/graphics/Point;

.field private mHwrKeyIndex:I

.field private mHwrLongpressPoint:Landroid/graphics/Point;

.field private mHwrPaint:Landroid/graphics/Paint;

.field private mHwrRectArea:Landroid/graphics/Rect;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mIsDrawOutside:Z

.field protected mIsDrawnWordLongPressed:Z

.field private mIsDrewPath:Z

.field private mIsNeedHwrDrawing:Z

.field private mIsRequiredRedrawHWR:Z

.field private mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

.field private mLastEventX:I

.field private mLastEventY:I

.field private final mPath:Landroid/graphics/Path;

.field protected mPossiblePoly:Z

.field protected mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

.field protected mStrokeCount:I

.field private mSwipeThreshold:I

.field private final mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 38
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    .line 39
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mInvalidRect:Landroid/graphics/Rect;

    .line 46
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 47
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    .line 49
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    .line 52
    iput v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    .line 53
    iput v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    .line 55
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 56
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrewPath:Z

    .line 64
    new-instance v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    .line 65
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I

    .line 68
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 69
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    .line 130
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    .line 322
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    .line 497
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    .line 80
    check-cast p1, Landroid/inputmethodservice/InputMethodService;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->init(Landroid/inputmethodservice/InputMethodService;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 38
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    .line 39
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    .line 42
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mInvalidRect:Landroid/graphics/Rect;

    .line 46
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 47
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    .line 49
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    .line 52
    iput v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    .line 53
    iput v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    .line 55
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 56
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrewPath:Z

    .line 64
    new-instance v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    .line 65
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I

    .line 68
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 69
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    .line 130
    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    .line 322
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    .line 497
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    .line 75
    check-cast p1, Landroid/inputmethodservice/InputMethodService;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->init(Landroid/inputmethodservice/InputMethodService;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeTracker:Lcom/diotek/ime/framework/view/AbstractKeyboardView$SwipeTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)I
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeRight()V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeLeft()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeUp()V

    return-void
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->swipeDown()V

    return-void
.end method

.method private changeXposInHwrPanel(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 703
    move v0, p1

    .line 704
    .local v0, "newX":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_1

    .line 705
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 710
    :cond_0
    :goto_0
    return v0

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method private changeYposInHwrPanel(I)I
    .locals 4
    .param p1, "y"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 714
    move v0, p1

    .line 715
    .local v0, "newY":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 721
    :cond_0
    :goto_0
    return v0

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0
.end method

.method private drawRectForSelectedString(Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;)V
    .locals 6
    .param p1, "recognizedString"    # Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .prologue
    const/high16 v5, 0x41200000

    .line 477
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    if-nez v4, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 482
    .local v3, "tempRectF":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 483
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 485
    .local v1, "penPaint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getSelectedTextRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 487
    .local v2, "tempRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    .line 491
    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 493
    invoke-virtual {v0, v3, v5, v5, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getKeyIndexWithCode(I)I
    .locals 6
    .param p1, "code"    # I

    .prologue
    .line 732
    const/4 v1, -0x1

    .line 733
    .local v1, "index":I
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 734
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 735
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    .line 736
    move v1, v0

    .line 740
    :cond_0
    return v1

    .line 734
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/inputmethodservice/InputMethodService;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "service"    # Landroid/inputmethodservice/InputMethodService;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    .line 86
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrPaintOptionsFromSettings()V

    .line 89
    const/high16 v0, 0x43fa0000

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mSwipeThreshold:I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDisambiguateSwipe:Z

    .line 92
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->initGestureDetector()V

    .line 96
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->initVariable()V

    .line 97
    return-void
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;

    invoke-direct {v2, p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView$1;-><init>(Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 224
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 225
    return-void
.end method

.method private initVariable()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 117
    return-void
.end method

.method private pointToPath(Ljava/util/List;Landroid/graphics/Path;)V
    .locals 10
    .param p2, "outPath"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "inPoint":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Point;>;"
    const/high16 v9, 0x40000000

    .line 447
    const/4 v3, 0x0

    .line 448
    .local v3, "tempPoint":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 450
    .local v2, "prevTempPoint":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 453
    .local v0, "inPointSize":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 454
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempPoint":Landroid/graphics/Point;
    check-cast v3, Landroid/graphics/Point;

    .line 456
    .restart local v3    # "tempPoint":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    if-nez v4, :cond_0

    iget v4, v3, Landroid/graphics/Point;->y:I

    if-nez v4, :cond_0

    .line 453
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_0
    if-nez v2, :cond_1

    .line 461
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 466
    :goto_2
    move-object v2, v3

    goto :goto_1

    .line 463
    :cond_1
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    .line 468
    :cond_2
    return-void
.end method

.method private setHwrPaintOptionsFromSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 105
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "colorIndex":I
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getColorIdByIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 109
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 110
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    return-void
.end method

.method private swipeDown()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->swipeDown()V

    .line 243
    return-void
.end method

.method private swipeLeft()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->swipeLeft()V

    .line 235
    return-void
.end method

.method private swipeRight()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->swipeRight()V

    .line 231
    return-void
.end method

.method private swipeUp()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->swipeUp()V

    .line 239
    return-void
.end method


# virtual methods
.method protected abstract drawCurrentInputRange(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public drawRecognizedString(Ljava/util/ArrayList;I)Z
    .locals 13
    .param p2, "stringColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "recognizedStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 362
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v11, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v9

    .line 365
    :cond_1
    if-eqz p1, :cond_0

    .line 369
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v11, v12, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    .line 370
    .local v6, "recogMode":I
    if-ne v6, v10, :cond_2

    .line 371
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v9, v11}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->pointToPath(Ljava/util/List;Landroid/graphics/Path;)V

    .line 372
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->onDrawPath()V

    move v9, v10

    .line 373
    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_0

    .line 380
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-direct {p0, v9, v11}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->pointToPath(Ljava/util/List;Landroid/graphics/Path;)V

    .line 384
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 385
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 387
    .local v3, "lineUpTextPaint":Landroid/graphics/Paint;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v11, "ROSEMARY"

    const/4 v12, 0x0

    invoke-interface {v9, v11, v12}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 390
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 393
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;

    .line 398
    .local v8, "tempRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    invoke-virtual {v8}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v1

    .line 399
    .local v1, "fontSize":I
    invoke-virtual {v8}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getRecognizedString()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontStartPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v4, v9, Landroid/graphics/PointF;->x:F

    .line 401
    .local v4, "pointX":F
    invoke-virtual {v8}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontStartPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;->getFontSize()I

    move-result v11

    int-to-float v11, v11

    add-float v5, v9, v11

    .line 403
    .local v5, "pointY":F
    int-to-float v9, v1

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 404
    invoke-virtual {v0, v7, v4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 406
    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawRectForSelectedString(Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 409
    .end local v1    # "fontSize":I
    .end local v4    # "pointX":F
    .end local v5    # "pointY":F
    .end local v7    # "string":Ljava/lang/String;
    .end local v8    # "tempRecognizedString":Lcom/diotek/ime/framework/engine/dhwr/RecognizedStringWrapper;
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->onDrawPath()V

    move v9, v10

    .line 411
    goto :goto_0
.end method

.method protected abstract getColorIdByIndex(I)I
.end method

.method protected abstract getDisableKeyLabelColor()I
.end method

.method protected abstract getFunctionKeyBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getFunctionKeyLabelColor()I
.end method

.method protected abstract getFunctionKeyShadowColor()I
.end method

.method protected getHwrActionListener()Lcom/diotek/ime/framework/view/event/HwrActionListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    return-object v0
.end method

.method protected getHwrKeyIndex()I
    .locals 2

    .prologue
    .line 725
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 726
    const/16 v0, -0x6b

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getKeyIndexWithCode(I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    .line 728
    :cond_0
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    return v0
.end method

.method protected abstract getHwrPanelGap()I
.end method

.method public getHwrRectArea()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected abstract getInvisibleKeyBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getNormalKeyBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getNormalKeyLabelColor()I
.end method

.method protected abstract getNormalKeyShadowColor()I
.end method

.method protected getOnKeyboardActionListener()Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    return-object v0
.end method

.method protected abstract getPopupLayoutRscId()I
.end method

.method protected abstract getPressedKeyLabelColor()I
.end method

.method protected abstract getPreviewOffset()I
.end method

.method protected abstract getShadowRadius()F
.end method

.method protected abstract getVerticalCorrection()I
.end method

.method public handleHwrTouchCancel(IIJ)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 676
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMultiTouchHandler:Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$UIHandler;->cancelLongPressTimer()V

    .line 677
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    if-eqz v0, :cond_1

    .line 678
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 679
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 699
    :cond_0
    :goto_0
    return v3

    .line 683
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    if-nez v0, :cond_0

    .line 687
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeXposInHwrPanel(I)I

    move-result p1

    .line 688
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeYposInHwrPanel(I)I

    move-result p2

    .line 690
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 695
    :cond_2
    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 696
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 697
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 698
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/event/HwrActionListener;->onTouchCancel(IIJ)Z

    goto :goto_0
.end method

.method public handleHwrTouchDown(IIJ)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const v8, 0x3dcccccd

    .line 520
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateHwrRect()V

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    if-eqz v0, :cond_1

    .line 524
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateDirtyRect(I)V

    .line 526
    :cond_1
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    .line 528
    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    .line 530
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    .line 531
    .local v4, "hwrPenThickness":I
    iput p1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 532
    iput p2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 534
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 535
    .local v7, "tempPoint":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/diotek/ime/framework/util/Utils;->isInsideHwrArea(IIIIILandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeXposInHwrPanel(I)I

    move-result p1

    .line 539
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeYposInHwrPanel(I)I

    move-result p2

    .line 541
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 542
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 543
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p1

    add-float/2addr v3, v8

    int-to-float v5, p2

    add-float/2addr v5, v8

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 545
    move v6, v4

    .line 546
    .local v6, "border":I
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mInvalidRect:Landroid/graphics/Rect;

    sub-int v1, p1, v6

    sub-int v2, p2, v6

    add-int v3, p1, v6

    add-int v5, p2, v6

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 548
    int-to-float v0, p1

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    .line 549
    int-to-float v0, p2

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    .line 551
    iput-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 553
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 555
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    .line 556
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/event/HwrActionListener;->onTouchDown(IIJ)Z

    .line 558
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrDownPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 559
    return v9
.end method

.method public handleHwrTouchMove(IIJ)Z
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 564
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    if-eqz v5, :cond_0

    .line 565
    const/4 v5, 0x1

    .line 642
    :goto_0
    return v5

    .line 568
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mInvalidRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 569
    const/4 v5, 0x0

    goto :goto_0

    .line 572
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mIsKorMode:Z

    if-nez v5, :cond_2

    .line 573
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeXposInHwrPanel(I)I

    move-result p1

    .line 574
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeYposInHwrPanel(I)I

    move-result p2

    .line 577
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    move/from16 v17, v0

    .line 578
    .local v17, "previousX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    move/from16 v18, v0

    .line 580
    .local v18, "previousY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v7, 0x3

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    .line 582
    .local v9, "hwrPenThickness":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 583
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v5 .. v10}, Lcom/diotek/ime/framework/util/Utils;->isInsideHwrArea(IIIIILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 584
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->handleHwrTouchDown(IIJ)Z

    move-result v5

    goto :goto_0

    .line 588
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {v5 .. v10}, Lcom/diotek/ime/framework/util/Utils;->isInsideHwrArea(IIIIILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 589
    const/4 v11, 0x0

    .line 590
    .local v11, "areaToRefresh":Landroid/graphics/Rect;
    sub-int v5, p1, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v15, v5

    .line 591
    .local v15, "dx":F
    sub-int v5, p2, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v16, v0

    .line 593
    .local v16, "dy":F
    const/high16 v5, 0x41200000

    cmpl-float v5, v15, v5

    if-gez v5, :cond_5

    const/high16 v5, 0x41200000

    cmpl-float v5, v16, v5

    if-ltz v5, :cond_8

    .line 594
    :cond_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 595
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 596
    new-instance v19, Landroid/graphics/Point;

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 597
    .local v19, "tempPoint":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    move v12, v9

    .line 601
    .local v12, "border":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mInvalidRect:Landroid/graphics/Rect;

    .line 605
    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    float-to-int v5, v5

    sub-int/2addr v5, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    float-to-int v6, v6

    sub-int/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    float-to-int v7, v7

    add-int/2addr v7, v12

    move-object/from16 v0, p0

    iget v8, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    float-to-int v8, v8

    add-int/2addr v8, v12

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    add-int v5, p1, v17

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float v13, v5, v6

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndX:F

    .line 609
    .local v13, "cX":F
    add-int v5, p2, v18

    int-to-float v5, v5

    const/high16 v6, 0x40000000

    div-float v14, v5, v6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mCurveEndY:F

    .line 611
    .local v14, "cY":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    add-int v8, p1, v17

    int-to-float v8, v8

    const/high16 v10, 0x40000000

    div-float/2addr v8, v10

    add-int v10, p2, v18

    int-to-float v10, v10

    const/high16 v20, 0x40000000

    div-float v10, v10, v20

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 614
    sub-int v5, v17, v12

    sub-int v6, v18, v12

    add-int v7, v17, v12

    add-int v8, v18, v12

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 618
    float-to-int v5, v13

    sub-int/2addr v5, v12

    float-to-int v6, v14

    sub-int/2addr v6, v12

    float-to-int v7, v13

    add-int/2addr v7, v12

    float-to-int v8, v14

    add-int/2addr v8, v12

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 621
    if-eqz v11, :cond_7

    .line 622
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 623
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v5, :cond_6

    .line 624
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 625
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrewPath:Z

    .line 627
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 629
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    move/from16 v0, p1

    move/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/event/HwrActionListener;->onTouchMove(IIJ)Z

    .line 642
    .end local v11    # "areaToRefresh":Landroid/graphics/Rect;
    .end local v12    # "border":I
    .end local v13    # "cX":F
    .end local v14    # "cY":F
    .end local v15    # "dx":F
    .end local v16    # "dy":F
    .end local v19    # "tempPoint":Landroid/graphics/Point;
    :cond_8
    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 633
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-static/range {v5 .. v10}, Lcom/diotek/ime/framework/util/Utils;->isInsideHwrArea(IIIIILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 635
    invoke-virtual/range {p0 .. p4}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->handleHwrTouchUp(IIJ)Z

    .line 636
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    .line 638
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 639
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    goto :goto_1
.end method

.method public handleHwrTouchUp(IIJ)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 647
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    if-eqz v0, :cond_1

    .line 648
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventX:I

    .line 649
    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mLastEventY:I

    .line 671
    :cond_0
    :goto_0
    return v3

    .line 653
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawOutside:Z

    if-nez v0, :cond_0

    .line 657
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeXposInHwrPanel(I)I

    move-result p1

    .line 658
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->changeYposInHwrPanel(I)I

    move-result p2

    .line 660
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 665
    :cond_2
    iput-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 666
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 667
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 670
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/event/HwrActionListener;->onTouchUp(IIJ)Z

    goto :goto_0
.end method

.method public invalidateAll()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 288
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    .line 289
    return-void
.end method

.method public invalidateDirtyRect(I)V
    .locals 0
    .param p1, "keyIndex"    # I

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateDirtyRect(I)V

    .line 300
    return-void
.end method

.method public invalidateHwrBackgound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 275
    iput v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mStrokeCount:I

    .line 276
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 277
    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateKey(I)V

    .line 279
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, "recogMode":I
    if-nez v0, :cond_0

    .line 281
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    .line 283
    :cond_0
    return-void
.end method

.method public invalidateHwrRect()V
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateKey(I)V

    .line 304
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawRecognizedString(Ljava/util/ArrayList;I)Z

    .line 305
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawRecognizedString(Ljava/util/ArrayList;I)Z

    .line 306
    return-void
.end method

.method public invalidateKey(I)V
    .locals 1
    .param p1, "keyIndex"    # I

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 294
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    .line 295
    return-void
.end method

.method protected abstract isNeedDrawCurrentInputRange()Z
.end method

.method protected abstract isVietTone(I)Z
.end method

.method protected abstract isVietValidVowels(Ljava/lang/String;)Z
.end method

.method public onBufferDraw()V
    .locals 2

    .prologue
    .line 326
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "SamsungIME"

    const-string v1, "HwrKeyboardView::onBufferDraw()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->onBufferDraw()V

    .line 331
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getOldRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawRecognizedString(Ljava/util/ArrayList;I)Z

    .line 333
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mRecognizedStringsController:Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/engine/dhwr/RecognizedResultsController;->getNewRecognizedStringArray()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawRecognizedString(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 340
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->isNeedDrawCurrentInputRange()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->drawCurrentInputRange(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 343
    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 310
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 311
    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    if-eqz v0, :cond_1

    .line 312
    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsNeedHwrDrawing:Z

    .line 313
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrewPath:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 317
    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrewPath:Z

    .line 320
    :cond_1
    return-void
.end method

.method public onDrawPath()V
    .locals 13

    .prologue
    .line 418
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 419
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    .line 420
    .local v1, "dioPoint":Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    .line 422
    invoke-static {}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getInstance()Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;

    move-result-object v5

    .line 423
    .local v5, "pathController":Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    invoke-virtual {v5}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getMaxIndex()I

    move-result v4

    .line 425
    .local v4, "maxIndex":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 426
    new-instance v2, Landroid/graphics/Path;

    invoke-virtual {v5, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getPath(I)Landroid/graphics/Path;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 427
    .local v2, "eachPath":Landroid/graphics/Path;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    .line 428
    .local v6, "penThickness":F
    invoke-virtual {v5, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getUnusedLastPoint(I)Landroid/graphics/Point;

    move-result-object v8

    .line 429
    .local v8, "xy":Landroid/graphics/Point;
    invoke-virtual {v5, v3}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;->getDioPoint(I)Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_2

    .line 431
    invoke-virtual {v1}, Lcom/diotek/ime/framework/engine/dhwr/HwrPathController$Diopoint;->getPoint()[[F

    move-result-object v7

    .line 432
    .local v7, "tempP":[[F
    array-length v9, v7

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    .line 433
    iget v9, v8, Landroid/graphics/Point;->x:I

    if-gtz v9, :cond_0

    iget v9, v8, Landroid/graphics/Point;->y:I

    if-lez v9, :cond_1

    .line 434
    :cond_0
    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v8, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    const/high16 v11, 0x40800000

    div-float v11, v6, v11

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 437
    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 425
    .end local v7    # "tempP":[[F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 441
    .end local v2    # "eachPath":Landroid/graphics/Path;
    .end local v3    # "k":I
    .end local v4    # "maxIndex":I
    .end local v5    # "pathController":Lcom/diotek/ime/framework/engine/dhwr/HwrPathController;
    .end local v6    # "penThickness":F
    .end local v8    # "xy":Landroid/graphics/Point;
    :cond_3
    return-void
.end method

.method public onHwrPanelLongPressed(Landroid/graphics/Point;)V
    .locals 5
    .param p1, "longpressedPoint"    # Landroid/graphics/Point;

    .prologue
    const/4 v4, 0x1

    .line 500
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    .line 502
    .local v0, "recognitionType":I
    if-ne v0, v4, :cond_0

    .line 512
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    .line 507
    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsDrawnWordLongPressed:Z

    .line 508
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 509
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mDrawingPoint:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 511
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->invalidateHwrRect()V

    goto :goto_0
.end method

.method protected onLongPress(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Z
    .locals 1
    .param p1, "popupKey"    # Lcom/diotek/ime/framework/view/Keyboard$Key;
    .param p2, "keyIndex"    # I

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->onLongPress(Lcom/diotek/ime/framework/view/Keyboard$Key;I)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->onMeasure(II)V

    .line 127
    return-void
.end method

.method public releaseTraceWithAnimation(JJIIZ)Z
    .locals 1
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "keyIndex"    # I
    .param p6, "keyCode"    # I
    .param p7, "lastDown"    # Z

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/diotek/ime/framework/view/event/HwrActionListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrActionListener:Lcom/diotek/ime/framework/view/event/HwrActionListener;

    .line 163
    return-void
.end method

.method public setHwrLongpressPoint(Landroid/graphics/Point;)V
    .locals 0
    .param p1, "longpressedPoint"    # Landroid/graphics/Point;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrLongpressPoint:Landroid/graphics/Point;

    .line 516
    return-void
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V
    .locals 8
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    .line 135
    const/16 v2, -0x6b

    invoke-direct {p0, v2}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getKeyIndexWithCode(I)I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    .line 136
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 139
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget v3, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrKeyIndex:I

    aget-object v0, v2, v3

    .line 140
    .local v0, "hwrKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrPanelGap()I

    move-result v1

    .line 141
    .local v1, "panelGap":I
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int/2addr v3, v1

    iget v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int/2addr v4, v1

    iget v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iget v7, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    .end local v0    # "hwrKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    .end local v1    # "panelGap":I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mIsRequiredRedrawHWR:Z

    .line 144
    return-void
.end method

.method public setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;

    .prologue
    .line 152
    move-object v0, p1

    check-cast v0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->mKeyboardActionListener:Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    .line 153
    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    .line 154
    return-void
.end method

.method public updateSettingValues()V
    .locals 0

    .prologue
    .line 798
    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    .line 799
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrPaintOptionsFromSettings()V

    .line 800
    return-void
.end method
