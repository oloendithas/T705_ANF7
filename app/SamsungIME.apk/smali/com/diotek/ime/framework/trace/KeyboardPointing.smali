.class public Lcom/diotek/ime/framework/trace/KeyboardPointing;
.super Ljava/lang/Object;
.source "KeyboardPointing.java"


# static fields
.field private static final DBG:Z = false

.field private static IS_WQXGA:Z = false

.field public static final LONGPRESS_X:I = 0x78

.field public static final LONGPRESS_Y:I = 0xfa

.field public static final MOVE_AXIS_X:I = 0x1

.field public static final MOVE_AXIS_Y:I = 0x2

.field public static MOVE_BOUNDARY:I

.field public static final MOVE_NONE:I

.field public static MOVE_THRESHOLD:I

.field private static final TAG:Ljava/lang/String;

.field public static THRESHOLD_X:I

.field public static THRESHOLD_Y:I

.field private static mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

.field public static sHeight:I

.field public static sWidth:I


# instance fields
.field private mBeforeX:F

.field private mBeforeY:F

.field protected mBidiFormatter:Landroid/text/BidiFormatter;

.field mContext:Landroid/content/Context;

.field private mCurrentInputMethod:I

.field private mCurrentX:F

.field private mCurrentY:F

.field mDensity:I

.field private mFirstDownX:F

.field private mFirstDownY:F

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPointingAction:Z

.field private mPointingMode:Z

.field mPointingMotion:Landroid/view/MotionEvent;

.field private mPointingMultiTabAction:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    .line 40
    const/16 v0, 0x3e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    .line 43
    const/16 v0, 0x5a

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    .line 46
    const/16 v0, 0x1e

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    .line 49
    const/16 v0, 0x32

    sput v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    .line 57
    sput v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    .line 58
    sput v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    .line 78
    sput-boolean v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 63
    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 65
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    .line 66
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    .line 68
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    .line 69
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    .line 71
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    .line 72
    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    .line 74
    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    .line 75
    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    .line 76
    iput-boolean v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    .line 80
    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    .line 82
    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    .line 90
    iput-object v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 94
    const/16 v0, 0xa0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    .line 98
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 99
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    .line 101
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    .line 104
    :cond_0
    return-void
.end method

.method private checkNarrowChar()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 622
    iget-object v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 623
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    const-string v1, ""

    .line 624
    .local v1, "beforeChar":Ljava/lang/CharSequence;
    const-string v0, ""

    .line 625
    .local v0, "afterChar":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 626
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 627
    invoke-interface {v2, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 630
    :cond_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isNarrowChar(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isNarrowChar(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    .line 633
    :cond_2
    return v3
.end method

.method private getAdjectFactorForDensity(I)F
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 179
    const/high16 v0, 0x3f800000

    .line 181
    .local v0, "factor":F
    sparse-switch p1, :sswitch_data_0

    .line 205
    :goto_0
    return v0

    .line 183
    :sswitch_0
    const/high16 v0, 0x3f800000

    .line 184
    goto :goto_0

    .line 186
    :sswitch_1
    const/high16 v0, 0x3f800000

    .line 187
    goto :goto_0

    .line 189
    :sswitch_2
    const v0, 0x3f99999a

    .line 190
    goto :goto_0

    .line 192
    :sswitch_3
    const v0, 0x3f5eb852

    .line 193
    goto :goto_0

    .line 195
    :sswitch_4
    const/high16 v0, 0x40000000

    .line 196
    goto :goto_0

    .line 198
    :sswitch_5
    const v0, 0x3f99999a

    goto :goto_0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDistance(FFFF)I
    .locals 6
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "endX"    # F
    .param p4, "endY"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L

    .line 617
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getInstance()Lcom/diotek/ime/framework/trace/KeyboardPointing;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;

    invoke-direct {v0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    .line 213
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInstance:Lcom/diotek/ime/framework/trace/KeyboardPointing;

    return-object v0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 163
    :cond_0
    return-void
.end method

.method private isNarrowChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "c"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "Char":C
    if-nez p1, :cond_1

    .line 648
    :cond_0
    :goto_0
    return v1

    .line 642
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 643
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 645
    :cond_2
    const/16 v2, 0x69

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x66

    if-eq v0, v2, :cond_3

    const/16 v2, 0x74

    if-eq v0, v2, :cond_3

    const/16 v2, 0x49

    if-ne v0, v2, :cond_0

    .line 646
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isPointMovementGesture(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 550
    const/4 v3, 0x0

    .line 552
    .local v3, "isMovingGesture":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 554
    .local v7, "pointerCount":I
    const/4 v9, 0x2

    if-lt v7, v9, :cond_0

    .line 555
    iput-boolean v8, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    .line 603
    :goto_0
    return v8

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 563
    .local v0, "currentDistance":I
    const/4 v6, 0x0

    .line 564
    .local v6, "modifyThreshold":F
    sget v8, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    int-to-float v5, v8

    .line 565
    .local v5, "modifyBoundary":F
    iget-object v8, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    .line 567
    .local v4, "mInputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    .line 568
    .local v1, "inputMethod":I
    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    .line 570
    .local v2, "inputRange":I
    iget v8, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iget v9, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iget v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getDistance(FFFF)I

    move-result v0

    .line 577
    sget v8, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    int-to-float v6, v8

    .line 580
    invoke-direct {p0}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->checkNarrowChar()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 581
    const/high16 v8, 0x40000000

    div-float/2addr v6, v8

    .line 588
    :cond_1
    int-to-float v8, v0

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_2

    int-to-float v8, v0

    cmpg-float v8, v8, v5

    if-gez v8, :cond_2

    .line 593
    const/4 v3, 0x1

    :goto_1
    move v8, v3

    .line 603
    goto :goto_0

    .line 599
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 170
    :cond_0
    return-void
.end method

.method private resetVelocityTracker()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;)I
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const-wide v6, 0x3fe999999999999aL

    const/4 v5, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    .line 433
    const/4 v2, 0x0

    .line 434
    .local v2, "moveDirection":I
    sget v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    .line 435
    .local v0, "modifyThreshold_X":I
    sget v1, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    .line 436
    .local v1, "modifyThreshold_Y":I
    iput-object p1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    .line 438
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->isPointMovementGesture(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 439
    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    .line 443
    :cond_0
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    :cond_1
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v0, v3

    .line 445
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    int-to-double v3, v3

    mul-double/2addr v3, v6

    double-to-int v1, v3

    .line 448
    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    if-eqz v3, :cond_5

    .line 450
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 455
    const/4 v2, 0x1

    .line 456
    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    .line 473
    :goto_0
    return v2

    .line 458
    :cond_3
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iget v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 462
    const/4 v2, 0x2

    .line 463
    iput-boolean v5, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    goto :goto_0

    .line 466
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 469
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    .line 470
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishPointing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMode:Z

    .line 653
    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    .line 654
    iput-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    .line 655
    return-void
.end method

.method public getDirectionX(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 393
    .local v0, "directionX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    .line 395
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 396
    const/16 v0, 0x16

    .line 401
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentX:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    .line 403
    return v0

    .line 398
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method public getDirectionY(Landroid/view/MotionEvent;)I
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, "directionY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    .line 410
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iget v2, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 411
    const/16 v0, 0x14

    .line 416
    :goto_0
    iget v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentY:F

    iput v1, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    .line 418
    return v0

    .line 413
    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public getMultiDirection()I
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 483
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v9}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    .line 484
    .local v4, "keyboardView":Landroid/view/View;
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    .line 486
    .local v5, "popupkeyboardView":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 487
    check-cast v5, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    .end local v5    # "popupkeyboardView":Landroid/view/View;
    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v5

    .line 490
    .restart local v5    # "popupkeyboardView":Landroid/view/View;
    :cond_0
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    .line 492
    .local v3, "inputModeManager":Lcom/diotek/ime/framework/inputmode/InputModeManager;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 493
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 495
    .local v2, "height":I
    const/16 v0, 0x56

    .line 496
    .local v0, "addHeight":I
    const/4 v1, 0x0

    .line 498
    .local v1, "addWidth":I
    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mCurrentInputMethod:I

    .line 501
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090033

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    .line 513
    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 514
    check-cast v4, Lcom/diotek/ime/implement/view/KeyboardView;

    .end local v4    # "keyboardView":Landroid/view/View;
    invoke-virtual {v4, v9}, Lcom/diotek/ime/implement/view/KeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v1

    .line 518
    :cond_1
    div-int/lit8 v6, v8, 0xa

    .line 520
    .local v6, "validRangeX":I
    div-int/lit8 v7, v2, 0x7

    .line 529
    .local v7, "validRangeY":I
    add-int/lit8 v10, v1, 0x0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_3

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-int v11, v6, v1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 530
    const/16 v9, 0x15

    .line 538
    :cond_2
    :goto_0
    return v9

    .line 531
    :cond_3
    sub-int v10, v8, v6

    add-int/2addr v10, v1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-int v11, v8, v1

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 532
    const/16 v9, 0x16

    goto :goto_0

    .line 533
    :cond_4
    add-int/lit8 v10, v0, 0x0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_5

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    add-int v11, v7, v0

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 534
    const/16 v9, 0x13

    goto :goto_0

    .line 535
    :cond_5
    sub-int v10, v2, v7

    add-int/2addr v10, v0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    add-int v11, v2, v0

    int-to-float v11, v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 536
    const/16 v9, 0x14

    goto :goto_0
.end method

.method public init()V
    .locals 7

    .prologue
    const/16 v6, 0xa00

    const/16 v5, 0x640

    const/4 v3, 0x0

    .line 107
    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, "keyboardView":Landroid/view/View;
    iget-object v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 111
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v4, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    .line 113
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v6, :cond_0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_1

    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v4, v6, :cond_2

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    sput-boolean v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    .line 116
    iget v3, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mDensity:I

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/trace/KeyboardPointing;->getAdjectFactorForDensity(I)F

    move-result v0

    .line 118
    .local v0, "adjFactor":F
    if-eqz v2, :cond_3

    .line 119
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    .line 120
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    .line 127
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_THRESHOLD:I

    .line 128
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40800000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->MOVE_BOUNDARY:I

    .line 130
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x41c00000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    .line 131
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->sHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x41200000

    mul-float/2addr v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_Y:I

    .line 134
    sget-boolean v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->IS_WQXGA:Z

    if-eqz v3, :cond_3

    .line 135
    sget v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/diotek/ime/framework/trace/KeyboardPointing;->THRESHOLD_X:I

    .line 141
    :cond_3
    return-void
.end method

.method public isPointingAction()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingAction:Z

    return v0
.end method

.method public isPointingMultiTabAction()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mPointingMultiTabAction:Z

    return v0
.end method

.method public onDownKeyEvent(I)V
    .locals 23
    .param p1, "keyEventCode"    # I

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v19

    .line 218
    .local v19, "ic":Landroid/view/inputmethod/InputConnection;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v17

    .line 220
    .local v17, "action":I
    const/16 v21, 0x0

    .line 221
    .local v21, "leadingChar":Ljava/lang/CharSequence;
    const/16 v16, 0x0

    .line 222
    .local v16, "PrevLeadingChar":Ljava/lang/CharSequence;
    const/16 v22, 0x0

    .line 224
    .local v22, "textOnEditor":Ljava/lang/CharSequence;
    const/16 v5, 0x13

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x14

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_1

    .line 228
    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "keyEventCode is not DPAD direction"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-eqz v19, :cond_2

    .line 233
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v21

    .line 234
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 236
    :try_start_0
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    iget-object v0, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_2
    :goto_1
    if-eqz v21, :cond_8

    if-eqz v16, :cond_8

    if-eqz v22, :cond_8

    .line 243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    .line 246
    .local v20, "isRtlString":Z
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    .line 249
    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has ENTER, leadingChar, isRtlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    :cond_3
    :goto_2
    const/4 v5, 0x3

    move/from16 v0, v17

    if-ne v0, v5, :cond_a

    .line 260
    if-nez v20, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_5
    if-eqz v20, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_7
    const/16 v5, 0x14

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    const/16 v5, 0x13

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 280
    .end local v20    # "isRtlString":Z
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 282
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 286
    .local v1, "downKeyEvent":Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide v7, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 290
    .local v4, "upKeyEvent":Landroid/view/KeyEvent;
    if-eqz v19, :cond_0

    .line 291
    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 292
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_0

    .line 237
    .end local v1    # "downKeyEvent":Landroid/view/KeyEvent;
    .end local v2    # "eventTime":J
    .end local v4    # "upKeyEvent":Landroid/view/KeyEvent;
    :catch_0
    move-exception v18

    .line 238
    .local v18, "e":Ljava/lang/NullPointerException;
    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "NullPointerException in onDownKeyEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 250
    .end local v18    # "e":Ljava/lang/NullPointerException;
    .restart local v20    # "isRtlString":Z
    :cond_9
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    .line 252
    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "has ENTER, PrevLeadingChar, isRtlString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 255
    :catch_1
    move-exception v18

    .line 256
    .restart local v18    # "e":Ljava/lang/NullPointerException;
    sget-object v5, Lcom/diotek/ime/framework/trace/KeyboardPointing;->TAG:Ljava/lang/String;

    const-string v6, "NullPointerException, isRtlString checking in onDownKeyEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 268
    .end local v18    # "e":Ljava/lang/NullPointerException;
    :cond_a
    if-nez v20, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_b

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_c

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    .line 272
    :cond_c
    if-eqz v20, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_d

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_0

    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_8

    const/16 v5, 0x16

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    goto/16 :goto_0
.end method

.method public setDownPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    .line 376
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    .line 377
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    .line 379
    :cond_0
    return-void
.end method

.method public setDownPosition(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    .line 385
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    .line 386
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownX:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeX:F

    .line 387
    iget v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mFirstDownY:F

    iput v0, p0, Lcom/diotek/ime/framework/trace/KeyboardPointing;->mBeforeY:F

    .line 389
    :cond_0
    return-void
.end method
