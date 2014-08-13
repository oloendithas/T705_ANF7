.class public Lcom/diotek/ime/framework/trace/KeyboardTrace;
.super Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;
.source "KeyboardTrace.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x3e8

.field private static final MIN_MOVE_FILTER_DISTANCE:I = 0x14

.field private static MIN_MOVE_FILTER_DISTANCE_FROM_START:I = 0x0

.field private static final TAG_TRACE:Ljava/lang/String; = "KeyboardTrace"

.field private static final TOUCH_MAX_POINTS:I = 0xa

.field private static final TRACE_DISAPPEARING_TIME:J = 0x2bcL

.field public static final TRACE_DISAPPEAR_INVALIDATE_INTERVAL:J = 0x64L

.field public static final TRACE_LINE_STYLE_DEFAULT:I = 0x0

.field public static final TRACE_LINE_STYPE_SHRINK_TRACE:I = 0x1

.field private static final TRACE_TOLERANCE:F = 4.0f

.field private static final TRACE_TOUCH_MOVE:I = 0x1

.field private static final TRACE_TOUCH_PRESS:I = 0x0

.field private static final TRACE_TOUCH_RELEASE:I = 0x2

.field private static mInstance:Lcom/diotek/ime/framework/trace/KeyboardTrace;

.field private static stepsize:F


# instance fields
.field private final DEBUG:Z

.field private final MAX_TRANSPARENT_POINTS:I

.field private mCurrentLineStyle:I

.field private final mDrawingTracePoint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingTracePointCount:S

.field private final mDrawingTracePointTimeStamp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInTraceAnimation:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field public mIsTracing:Z

.field private mKeyIndex:I

.field mKeyboardViewHeight:I

.field mKeyboardViewWidth:I

.field private mMovePoint:Landroid/graphics/PointF;

.field private mStartKeyCode:I

.field private mSymbolAndSpace:Z

.field private mTouchPointCnt:I

.field private mTouchPointInfo:[Landroid/graphics/PointF;

.field private mTraceDistance:D

.field private mTracePointCnt:I

.field private mTracePointCountAtLastDraw:I

.field private mTracePointInfo:[Landroid/graphics/PointF;

.field private mTraceX:J

.field private mTraceY:J

.field private misKeyDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xc8

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    .line 124
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 128
    const v0, 0x3d75c28f

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->stepsize:F

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;-><init>()V

    .line 41
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->DEBUG:Z

    .line 74
    const/16 v1, 0x19

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->MAX_TRANSPARENT_POINTS:I

    .line 82
    const/16 v1, 0x3e8

    new-array v1, v1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    .line 83
    const/16 v1, 0xa

    new-array v1, v1, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    .line 87
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    .line 90
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    .line 103
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    .line 106
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInTraceAnimation:Z

    .line 112
    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    .line 119
    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    .line 129
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    .line 136
    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    .line 137
    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    .line 139
    const/16 v1, -0xff

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 140
    iput-boolean v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    .line 141
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 143
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    .line 145
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 146
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    const/high16 v2, 0x40a00000

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePenThickness:I

    .line 151
    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    .line 154
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->setTraceLineStyle(I)V

    .line 157
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    .line 158
    invoke-virtual {p0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->initTracePaint()V

    .line 159
    return-void
.end method

.method private addTracePoint(JJIJ)Z
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "touchState"    # I
    .param p6, "eventTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 374
    if-nez p5, :cond_0

    .line 375
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    .line 377
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 387
    :goto_0
    return v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    new-instance v2, Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    .line 386
    :goto_1
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    .line 387
    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 384
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method private checkFilteringMoveEvent(JJI)Z
    .locals 10
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "keyIndex"    # I

    .prologue
    .line 391
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    long-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 392
    .local v0, "moveX":F
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    long-to-float v3, p3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 394
    .local v1, "moveY":F
    iget-wide v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    float-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    .line 396
    iget-wide v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    sget v4, Lcom/diotek/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 397
    const/4 v2, 0x1

    .line 409
    :goto_0
    return v2

    .line 399
    :cond_0
    float-to-int v2, v0

    const/16 v3, 0x14

    if-ge v2, v3, :cond_1

    float-to-int v2, v1

    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 401
    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 402
    const/4 v2, 0x0

    goto :goto_0

    .line 404
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    if-eq p5, v2, :cond_3

    .line 405
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 406
    iput p5, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    .line 407
    const/4 v2, 0x0

    goto :goto_0

    .line 409
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private drawBrushTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 619
    invoke-virtual {p2}, Landroid/graphics/Path;->rewind()V

    .line 620
    iget-short v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-lez v6, :cond_0

    .line 622
    const/4 v1, 0x1

    .line 623
    .local v1, "first":Z
    const/4 v2, 0x0

    .line 624
    .local v2, "flag":I
    const/16 v0, 0x1f

    .line 625
    .local v0, "defaultStrokWidth":I
    iget-short v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_0

    .line 626
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 627
    .local v5, "point":Landroid/graphics/PointF;
    if-eqz v1, :cond_1

    .line 628
    const/4 v1, 0x0

    .line 629
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 630
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 631
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 645
    :goto_1
    if-le v2, v0, :cond_3

    .line 652
    .end local v0    # "defaultStrokWidth":I
    .end local v1    # "first":Z
    .end local v2    # "flag":I
    .end local v3    # "i":I
    .end local v5    # "point":Landroid/graphics/PointF;
    :cond_0
    return-void

    .line 632
    .restart local v0    # "defaultStrokWidth":I
    .restart local v1    # "first":Z
    .restart local v2    # "flag":I
    .restart local v3    # "i":I
    .restart local v5    # "point":Landroid/graphics/PointF;
    :cond_1
    iget-short v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 633
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 634
    .local v4, "next":Landroid/graphics/PointF;
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    sub-int v7, v0, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget v11, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 637
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 638
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 639
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 641
    .end local v4    # "next":Landroid/graphics/PointF;
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 642
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 643
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 648
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 625
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0
.end method

.method private drawLinearTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v10, 0x40000000

    .line 655
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    if-eqz v4, :cond_3

    .line 656
    iget-short v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 657
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 659
    const/4 v0, 0x1

    .line 660
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-short v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-ge v1, v4, :cond_2

    .line 661
    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 662
    .local v3, "point":Landroid/graphics/PointF;
    if-eqz v0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 664
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 660
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    :cond_0
    iget-short v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 666
    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 667
    .local v2, "next":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_1

    .line 670
    .end local v2    # "next":Landroid/graphics/PointF;
    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 673
    .end local v3    # "point":Landroid/graphics/PointF;
    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 676
    .end local v0    # "first":Z
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->printDotXY(Landroid/graphics/Canvas;)V

    .line 677
    return-void
.end method

.method private drawPathWithGradient(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getIndexOfFirstVisibleTrace()I

    move-result v4

    .line 683
    .local v4, "startIndex":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-short v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-le v7, v9, :cond_7

    .line 694
    iget v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    iget-short v8, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    if-le v7, v8, :cond_2

    .line 695
    iget-short v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    iput v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    .line 696
    :cond_2
    iget-boolean v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    if-eqz v7, :cond_3

    iget-short v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 697
    .local v1, "endIndex":I
    :goto_1
    move v2, v4

    .local v2, "i":I
    :goto_2
    add-int/lit8 v7, v1, -0x1

    if-ge v2, v7, :cond_7

    .line 698
    iget-short v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v7, v7, -0x3

    if-gt v2, v7, :cond_6

    .line 699
    new-array v5, v10, [F

    .line 700
    .local v5, "xArr":[F
    new-array v6, v10, [F

    .line 701
    .local v6, "yArr":[F
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3
    if-ge v3, v10, :cond_4

    .line 702
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v3

    .line 703
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v3

    .line 701
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 696
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "k":I
    .end local v5    # "xArr":[F
    .end local v6    # "yArr":[F
    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    goto :goto_1

    .line 706
    .restart local v1    # "endIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "k":I
    .restart local v5    # "xArr":[F
    .restart local v6    # "yArr":[F
    :cond_4
    sub-int v7, v2, v4

    const/16 v8, 0x19

    if-ge v7, v8, :cond_5

    sub-int v7, v2, v4

    mul-int/lit8 v0, v7, 0x4

    .line 707
    .local v0, "alpha":I
    :goto_4
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 708
    invoke-direct {p0, v5, v6, p1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->drawQuadraticBeizureCurve([F[FLandroid/graphics/Canvas;)V

    .line 697
    .end local v0    # "alpha":I
    .end local v3    # "k":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 706
    .restart local v3    # "k":I
    :cond_5
    const/16 v0, 0xff

    goto :goto_4

    .line 711
    .end local v3    # "k":I
    .end local v5    # "xArr":[F
    .end local v6    # "yArr":[F
    :cond_6
    new-array v5, v12, [F

    .line 712
    .restart local v5    # "xArr":[F
    new-array v6, v12, [F

    .line 713
    .restart local v6    # "yArr":[F
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v11

    .line 714
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v11

    .line 715
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v9

    .line 716
    iget-object v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v6, v9

    .line 717
    invoke-direct {p0, v5, v6, p1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->drawSimpleLine([F[FLandroid/graphics/Canvas;)V

    goto :goto_5

    .line 723
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v5    # "xArr":[F
    .end local v6    # "yArr":[F
    :cond_7
    iget-boolean v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    if-eqz v7, :cond_0

    .line 724
    iget-short v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    iput v7, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCountAtLastDraw:I

    goto/16 :goto_0
.end method

.method private drawQuadraticBeizureCurve([F[FLandroid/graphics/Canvas;)V
    .locals 15
    .param p1, "xArr"    # [F
    .param p2, "yArr"    # [F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 730
    sget v8, Lcom/diotek/ime/framework/trace/KeyboardTrace;->stepsize:F

    .line 731
    .local v8, "step":F
    const/4 v0, 0x0

    aget v9, p1, v0

    .local v9, "x1":F
    const/4 v0, 0x1

    aget v10, p1, v0

    .local v10, "x2":F
    const/4 v0, 0x2

    aget v11, p1, v0

    .line 732
    .local v11, "x3":F
    const/4 v0, 0x0

    aget v12, p2, v0

    .local v12, "y1":F
    const/4 v0, 0x1

    aget v13, p2, v0

    .local v13, "y2":F
    const/4 v0, 0x2

    aget v14, p2, v0

    .line 733
    .local v14, "y3":F
    move v1, v9

    .local v1, "prevx":F
    move v2, v12

    .line 734
    .local v2, "prevy":F
    move v7, v8

    .local v7, "i":F
    :goto_0
    const/high16 v0, 0x3f800000

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_0

    .line 735
    const/high16 v0, 0x3f800000

    sub-float v6, v0, v7

    .line 736
    .local v6, "c":F
    mul-float v0, v6, v6

    mul-float/2addr v0, v9

    const/high16 v5, 0x40000000

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    mul-float/2addr v5, v10

    add-float/2addr v0, v5

    mul-float v5, v7, v7

    mul-float/2addr v5, v11

    add-float v3, v0, v5

    .line 737
    .local v3, "x":F
    mul-float v0, v6, v6

    mul-float/2addr v0, v12

    const/high16 v5, 0x40000000

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    mul-float/2addr v5, v13

    add-float/2addr v0, v5

    mul-float v5, v7, v7

    mul-float/2addr v5, v14

    add-float v4, v0, v5

    .line 739
    .local v4, "y":F
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 740
    move v1, v3

    .line 741
    move v2, v4

    .line 734
    add-float/2addr v7, v8

    goto :goto_0

    .line 743
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v6    # "c":F
    :cond_0
    return-void
.end method

.method private drawSimpleLine([F[FLandroid/graphics/Canvas;)V
    .locals 6
    .param p1, "xArr"    # [F
    .param p2, "yArr"    # [F
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 746
    aget v1, p1, v0

    aget v2, p2, v0

    aget v3, p1, v4

    aget v4, p2, v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 748
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/trace/KeyboardTrace;
    .locals 2

    .prologue
    .line 162
    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;

    invoke-direct {v1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    .line 166
    :cond_0
    :try_start_0
    const-string v1, "min_move_filter_distance_from_start"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimensionPixelSize(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    sget-object v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardTrace;

    return-object v1

    .line 168
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_0
    move-exception v0

    .line 169
    .restart local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const/16 v1, 0x14

    sput v1, Lcom/diotek/ime/framework/trace/KeyboardTrace;->MIN_MOVE_FILTER_DISTANCE_FROM_START:I

    goto :goto_0
.end method

.method private getTraceDistance(JJJJ)J
    .locals 6
    .param p1, "prevX"    # J
    .param p3, "prevY"    # J
    .param p5, "currX"    # J
    .param p7, "currY"    # J

    .prologue
    .line 590
    sub-long v0, p1, p5

    sub-long v2, p1, p5

    mul-long/2addr v0, v2

    sub-long v2, p3, p7

    sub-long v4, p3, p7

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private setTraceLineStyle(I)V
    .locals 0
    .param p1, "styleMode"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    .line 219
    return-void
.end method


# virtual methods
.method public clearTouchPoint()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 304
    :cond_0
    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    .line 305
    const/16 v1, -0xff

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 306
    iput-boolean v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    .line 307
    const/4 v1, 0x1

    return v1
.end method

.method public clearTraceInfo()V
    .locals 3

    .prologue
    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    if-ge v0, v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    .line 431
    return-void
.end method

.method public endDrawTraceLine()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 575
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 578
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    :cond_0
    iput-short v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 583
    :cond_1
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    .line 586
    :cond_2
    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    .line 587
    return-void
.end method

.method public getInTraceAnimation()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInTraceAnimation:Z

    return v0
.end method

.method public getIndexOfFirstVisibleTrace()I
    .locals 10

    .prologue
    .line 753
    const/4 v3, -0x1

    .line 754
    .local v3, "index":I
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 755
    .local v2, "end":I
    const/4 v5, 0x0

    .line 756
    .local v5, "start":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2bc

    sub-long v0, v6, v8

    .line 757
    .local v0, "elem":J
    :goto_0
    if-le v2, v5, :cond_2

    .line 758
    add-int v6, v5, v2

    div-int/lit8 v4, v6, 0x2

    .line 759
    .local v4, "mid":I
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 771
    .end local v4    # "mid":I
    :goto_1
    return v4

    .line 761
    .restart local v4    # "mid":I
    :cond_0
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    .line 762
    add-int/lit8 v5, v4, 0x1

    goto :goto_0

    .line 764
    :cond_1
    move v2, v4

    goto :goto_0

    .line 768
    .end local v4    # "mid":I
    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 769
    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v2

    .line 771
    goto :goto_1
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    return v0
.end method

.method public getSymbolKeyCode()I
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    if-eqz v0, :cond_0

    .line 439
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 441
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0xff

    goto :goto_0
.end method

.method public getTouchPoint(I)Landroid/graphics/PointF;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 290
    if-ltz p1, :cond_0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-lt v1, p1, :cond_0

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getTracePoint()[Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    return-object v0
.end method

.method public getTracePointCount()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    return v0
.end method

.method public initTracePaint()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    :cond_1
    iput-short v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 186
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 188
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    const/16 v1, 0xa5

    const/16 v2, 0xf3

    invoke-static {v4, v3, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 191
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 192
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePenThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 197
    return-void
.end method

.method public isSymbolAndSpace()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    return v0
.end method

.method public moveDrawTraceLine(JJ)V
    .locals 35
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceX:J

    move-wide/from16 v31, v0

    .line 483
    .local v31, "previousX":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceY:J

    move-wide/from16 v33, v0

    .line 484
    .local v33, "previousY":J
    sub-long v3, p1, v31

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v25

    .line 485
    .local v25, "dx":J
    sub-long v3, p3, v33

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v27

    .line 486
    .local v27, "dy":J
    move-wide/from16 v0, v25

    long-to-float v3, v0

    const/high16 v4, 0x40800000

    cmpl-float v3, v3, v4

    if-gez v3, :cond_2

    move-wide/from16 v0, v27

    long-to-float v3, v0

    const/high16 v4, 0x40800000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 487
    :cond_2
    add-long v3, p1, v31

    const-wide/16 v5, 0x2

    div-long v8, v3, v5

    .line 488
    .local v8, "cX":J
    add-long v3, p3, v33

    const-wide/16 v5, 0x2

    div-long v10, v3, v5

    .line 489
    .local v10, "cY":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v4, 0x1

    if-ge v3, v4, :cond_4

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    long-to-float v5, v8

    long-to-float v6, v10

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 563
    :cond_3
    :goto_1
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceX:J

    .line 564
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceY:J

    .line 565
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    goto/16 :goto_0

    .line 499
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-short v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-short v6, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v6, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTraceDistance(JJJJ)J

    move-result-wide v21

    .line 501
    .local v21, "distance":J
    new-instance v30, Landroid/graphics/PathMeasure;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 502
    .local v30, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    float-to-long v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    long-to-float v5, v8

    long-to-float v6, v10

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    goto/16 :goto_1

    .line 510
    :cond_5
    const-wide/16 v23, 0x0

    .line 511
    .local v23, "distanceBetweenFirstAndSecondPoint":J
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    move/from16 v0, v29

    if-ge v0, v3, :cond_6

    .line 512
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 555
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/PointF;

    long-to-float v5, v8

    long-to-float v6, v10

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    goto/16 :goto_1

    .line 515
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v13, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v0, v3

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v0, v3

    move-wide/from16 v19, v0

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v20}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->getTraceDistance(JJJJ)J

    move-result-wide v23

    .line 519
    const-wide/16 v3, 0x0

    cmp-long v3, v23, v3

    if-eqz v3, :cond_b

    cmp-long v3, v23, v21

    if-lez v3, :cond_b

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_9

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v12, v4

    sub-long v4, v5, v12

    mul-long v4, v4, v21

    div-long v5, v4, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v12, v4

    add-long v4, v5, v12

    long-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 532
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v6, v3

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v12, v4

    sub-long v4, v5, v12

    mul-long v4, v4, v21

    div-long v5, v4, v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v12, v4

    add-long v4, v5, v12

    long-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 526
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    .line 527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-long v14, v4

    sub-long/2addr v12, v14

    mul-long v12, v12, v21

    div-long v12, v12, v23

    sub-long v4, v5, v12

    long-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    goto/16 :goto_4

    .line 537
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_6

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-long v14, v4

    sub-long/2addr v12, v14

    mul-long v12, v12, v21

    div-long v12, v12, v23

    sub-long v4, v5, v12

    long-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_3

    .line 545
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 551
    :cond_c
    move-object/from16 v0, p0

    iget-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    move-object/from16 v0, p0

    iput-short v3, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 552
    sub-long v21, v21, v23

    .line 511
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2
.end method

.method public moveTrace(JJIJ)Z
    .locals 8
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "keyIndex"    # I
    .param p6, "eventTime"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 321
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    if-ge v1, v5, :cond_0

    move v5, v0

    .line 328
    :goto_0
    return v5

    .line 324
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->checkFilteringMoveEvent(JJI)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v6, p6

    .line 325
    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    goto :goto_0

    :cond_1
    move v5, v0

    .line 328
    goto :goto_0
.end method

.method public onDrawTraceLine(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 598
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mCurrentLineStyle:I

    packed-switch v0, :pswitch_data_0

    .line 607
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mTracePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->drawLinearTraceLine(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 614
    :goto_0
    return-void

    .line 603
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->drawPathWithGradient(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pressTouch(JJ)Z
    .locals 5
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    .line 253
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 263
    :goto_0
    return v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    new-instance v2, Landroid/graphics/PointF;

    long-to-float v3, p1

    long-to-float v4, p3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    .line 262
    :goto_1
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 260
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    aget-object v0, v0, v1

    long-to-float v1, p3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

.method public pressTrace(JJIIJ)Z
    .locals 8
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "keyIndex"    # I
    .param p6, "KeyCode"    # I
    .param p7, "eventTime"    # J

    .prologue
    .line 311
    iput p5, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyIndex:I

    .line 312
    iput p6, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    .line 314
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceDistance:D

    .line 316
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mMovePoint:Landroid/graphics/PointF;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public releaseTrace(JJIIZJ)Z
    .locals 16
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "keyIndex"    # I
    .param p6, "keyCode"    # I
    .param p7, "lastDown"    # Z
    .param p8, "eventTime"    # J

    .prologue
    .line 332
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 333
    const/4 v1, 0x0

    .line 370
    :goto_0
    return v1

    .line 335
    :cond_0
    if-eqz p7, :cond_1

    .line 336
    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/diotek/ime/framework/trace/KeyboardTrace;->addTracePoint(JJIJ)Z

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v2, -0x7a

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v2, -0x75

    if-ne v1, v2, :cond_7

    :cond_2
    const/16 v1, 0x20

    move/from16 v0, p6

    if-ne v0, v1, :cond_7

    if-lez p5, :cond_7

    .line 341
    const/4 v12, 0x0

    .line 342
    .local v12, "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v10

    .line 343
    .local v10, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v11

    .line 344
    .local v11, "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v12

    .end local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    check-cast v12, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .line 350
    .restart local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    :goto_1
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v13

    .line 351
    .local v13, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    :goto_2
    if-eqz v13, :cond_7

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p5

    if-le v1, v0, :cond_7

    .line 352
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    move/from16 v0, p5

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    sub-int v14, v2, v1

    .line 353
    .local v14, "limitTopPosition":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointCnt:I

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTracePointInfo:[Landroid/graphics/PointF;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    if-ge v1, v14, :cond_5

    .line 355
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 348
    .end local v9    # "i":I
    .end local v13    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    .end local v14    # "limitTopPosition":I
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v12

    .end local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    check-cast v12, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    .restart local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    goto :goto_1

    .line 350
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 353
    .restart local v9    # "i":I
    .restart local v13    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    .restart local v14    # "limitTopPosition":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 358
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v2, -0x7a

    if-ne v1, v2, :cond_8

    .line 359
    const/16 v1, 0x2e

    move-object/from16 v0, p0

    iput v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 360
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    .line 370
    .end local v9    # "i":I
    .end local v10    # "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    .end local v11    # "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .end local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    .end local v13    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    .end local v14    # "limitTopPosition":I
    :cond_7
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 361
    .restart local v9    # "i":I
    .restart local v10    # "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    .restart local v11    # "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .restart local v12    # "keyboardView":Lcom/diotek/ime/framework/view/AbstractKeyboardView;
    .restart local v13    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    .restart local v14    # "limitTopPosition":I
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    const/16 v2, -0x75

    if-ne v1, v2, :cond_7

    .line 362
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getLastUsedMmKeyCode()I

    move-result v15

    .line 363
    .local v15, "usedMMCode":I
    invoke-static {v15}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 364
    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mStartKeyCode:I

    .line 365
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mSymbolAndSpace:Z

    goto :goto_4
.end method

.method public removeTouchPoint(I)Z
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    if-ltz p1, :cond_0

    if-ge p1, v5, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-lt v3, p1, :cond_0

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    if-ge v3, v2, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v1

    .line 272
    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    .line 276
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 277
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointInfo:[Landroid/graphics/PointF;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 285
    :cond_3
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTouchPointCnt:I

    move v1, v2

    .line 286
    goto :goto_0
.end method

.method public setInTraceAnimation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 211
    return-void
.end method

.method public setIsKeyDown(Z)V
    .locals 0
    .param p1, "misKeyDown"    # Z

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->misKeyDown:Z

    .line 776
    return-void
.end method

.method public setIsTracing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 449
    iput-boolean p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mIsTracing:Z

    .line 450
    return-void
.end method

.method public setKeyboardViewHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewHeight:I

    .line 250
    return-void
.end method

.method public setKeyboardViewWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    .line 246
    return-void
.end method

.method public startDrawTraceLine(JJ)V
    .locals 4
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    .line 454
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 456
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardTraceLine;->mPath:Landroid/graphics/Path;

    long-to-float v1, p1

    long-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 458
    :cond_0
    iput-wide p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceX:J

    .line 459
    iput-wide p3, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mTraceY:J

    .line 460
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePoint:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    long-to-float v2, p1

    long-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointTimeStamp:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mDrawingTracePointCount:S

    .line 475
    :cond_1
    return-void
.end method

.method public updateKeyboardViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    .line 241
    iput p2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewHeight:I

    .line 242
    return-void
.end method

.method public updateKeyboardViewWidth()V
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    .line 223
    .local v1, "isLandscape":Z
    iget-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    .line 224
    .local v0, "inputMethod":I
    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 226
    :try_start_0
    const-string v2, "floating_keyboard_width"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getDimension(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 231
    :cond_0
    if-eqz v1, :cond_1

    .line 232
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/trace/KeyboardTrace;->mKeyboardViewWidth:I

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    goto :goto_0
.end method
